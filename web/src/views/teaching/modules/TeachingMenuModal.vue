<template>
  <a-drawer
    :title="title"
    :width="drawerWidth"
    @close="handleCancel"
    :visible="visible"
    :confirmLoading="confirmLoading"
  >
    <div :style="{ width: '100%', border: '1px solid #e9e9e9', padding: '10px 16px', background: '#fff' }">
      <a-spin :spinning="confirmLoading">
        <a-form :form="form">
          <a-form-item label="菜单类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-radio-group @change="onChangeMenuType" v-decorator="['menuType', { initialValue: localMenuType }]">
              <a-radio :value="0">一级菜单</a-radio>
              <a-radio :value="1">子菜单</a-radio>
            </a-radio-group>
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="菜单名称" hasFeedback>
            <a-input
              placeholder="请输入菜单名称"
              v-decorator="['name', validatorRules.name]"
              :readOnly="disableSubmit"
            />
          </a-form-item>

          <a-form-item
            v-show="localMenuType != 0"
            label="上级菜单"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            :validate-status="validateStatus"
            :hasFeedback="true"
            :required="true"
          >
            <span slot="help">{{ validateStatus == 'error' ? '请选择上级菜单' : '&nbsp;&nbsp;' }}</span>
            <a-tree-select
              style="width: 100%"
              :dropdownStyle="{ maxHeight: '200px', overflow: 'auto' }"
              :treeData="treeData"
              v-model="model.parentId"
              placeholder="请选择父级菜单"
              :disabled="disableSubmit"
              @change="handleParentIdChange"
            >
            </a-tree-select>
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="菜单路径">
            <a-input placeholder="请输入菜单路径" v-decorator="['url', validatorRules.url]" :readOnly="disableSubmit" />
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="菜单图标">
            <a-input placeholder="点击选择图标" v-model="model.icon" :readOnly="disableSubmit">
              <a-icon slot="addonAfter" type="setting" @click="selectIcons" />
            </a-input>
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="排序">
            <a-input-number
              placeholder="请输入菜单排序"
              style="width: 200px"
              v-decorator="['sortNo', validatorRules.sortNo]"
              :readOnly="disableSubmit"
            />
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="隐藏">
            <a-switch checkedChildren="是" unCheckedChildren="否" v-model="menuHidden" />
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="是否路由">
            <a-tooltip placement="top" title="采用路由方式，页面将无刷新跳转。前提是该路径是系统内存在的路径。">
              <a-switch checkedChildren="是" unCheckedChildren="否" v-model="routeSwitch" />
            </a-tooltip>
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="登录显示">
            <a-tooltip placement="top" title="用户登录后显示该菜单。">
              <a-switch checkedChildren="是" unCheckedChildren="否" v-model="needLogin" />
            </a-tooltip>
          </a-form-item>

          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="打开方式">
            <a-tooltip placement="top" title="是否弹出新窗口来打开页面。">
              <a-switch checkedChildren="外部" unCheckedChildren="内部" v-model="internalOrExternal" />
            </a-tooltip>
          </a-form-item>
        </a-form>

        <!-- 选择图标 -->
        <icons @choose="handleIconChoose" @close="handleIconCancel" :iconChooseVisible="iconChooseVisible"></icons>
      </a-spin>
      <a-row :style="{ textAlign: 'right' }">
        <a-button :style="{ marginRight: '8px' }" @click="handleCancel"> 关闭 </a-button>
        <a-button :disabled="disableSubmit" @click="handleOk" type="primary">确定</a-button>
      </a-row>
    </div>
  </a-drawer>
</template>

<script>
import { getAction, deleteAction, putAction, postAction } from '@/api/manage'
import Icons from '../../system/modules/icon/Icons'
import pick from 'lodash.pick'

export default {
  name: 'TeachingMenuModal',
  components: { Icons },
  data() {
    return {
      drawerWidth: 700,
      treeData: [],
      treeValue: '0-0-4',
      title: '操作',
      visible: false,
      disableSubmit: false,
      model: {},
      localMenuType: 0,
      menuHidden: false, //表单元素-隐藏路由
      internalOrExternal: false, //菜单打开方式
      routeSwitch: true, //是否路由菜单
      needLogin: false,
      labelCol: {
        xs: { span: 24 },
        sm: { span: 5 },
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 16 },
      },

      confirmLoading: false,
      form: this.$form.createForm(this),

      iconChooseVisible: false,
      validateStatus: '',
    }
  },
  computed: {
    validatorRules: function () {
      return {
        name: { rules: [{ required: true, message: '请输入菜单标题!' }] },
        // url: { rules: [{ required: true, message: '请输入菜单路径!' }] },
        sortNo: { initialValue: 1.0 },
      }
    },
  },
  created() {
    this.initDictConfig()
  },
  methods: {
    loadTree() {
      var that = this
      getAction('/teaching/menu/queryTreeList').then((res) => {
        if (res.success) {
          console.log('----queryTreeList---')
          console.log(res)
          that.treeData = []
          let treeList = res.result.treeList
          for (let a = 0; a < treeList.length; a++) {
            let temp = treeList[a]
            temp.isLeaf = temp.leaf
            that.treeData.push(temp)
          }
        }
      })
    },
    add() {
      // 默认值
      this.edit({ status: '1', route: true })
    },
    edit(record) {
      this.resetScreenSize() // 调用此方法,根据屏幕宽度自适应调整抽屉的宽度
      this.form.resetFields()
      this.model = Object.assign({}, record)

      this.menuHidden = !record.hidden ? false : true
      if (record.internalOrExternal != null) {
        this.internalOrExternal = record.internalOrExternal ? true : false
      } else {
        this.internalOrExternal = false
      }
      if (record.route != null) {
        this.routeSwitch = record.route ? true : false
      }
      this.needLogin = record.needLogin == 1? true : false
      if (this.model.parentId) {
        this.localMenuType = 1
      } else {
        this.localMenuType = 0
      }
      //----------------------------------------------------------------------------------------------

      this.visible = true
      this.loadTree()
      let fieldsVal = pick(this.model, 'name', 'url', 'sortNo', 'menuType', 'needLogin')
      this.$nextTick(() => {
        this.form.setFieldsValue(fieldsVal)
      })
    },
    close() {
      this.$emit('close')
      this.disableSubmit = false
      this.visible = false
    },
    handleOk() {
      const that = this
      // 触发表单验证
      this.form.validateFields((err, values) => {
        if (!err) {
          this.model.internalOrExternal = this.internalOrExternal
          this.model.hidden = this.menuHidden
          this.model.route = this.routeSwitch
          this.model.needLogin = this.needLogin ? 1 : 0
          let formData = Object.assign(this.model, values)
          if ((formData.menuType == 1 || formData.menuType == 2) && !formData.parentId) {
            that.validateStatus = 'error'
            that.$message.error('请检查你填的类型以及信息是否正确！')
            return
          } else {
            that.validateStatus = 'success'
          }
          that.confirmLoading = true
          let obj
          if (!this.model.id) {
            obj = postAction('/teaching/menu/add', formData)
          } else {
            obj = putAction('/teaching/menu/edit', formData)
          }
          obj
            .then((res) => {
              if (res.success) {
                that.$message.success(res.message)
                that.$emit('ok')
              } else {
                that.$message.warning(res.message)
              }
            })
            .finally(() => {
              that.confirmLoading = false
              that.close()
            })
        }
      })
    },
    handleCancel() {
      this.close()
    },
    validateNumber(rule, value, callback) {
      if (!value || new RegExp(/^[0-9]*[1-9][0-9]*$/).test(value)) {
        callback()
      } else {
        callback('请输入正整数!')
      }
    },
    onChangeMenuType(e) {
      this.localMenuType = e.target.value
      this.$nextTick(() => {
        this.form.validateFields(['url', 'component'], { force: true })
      })
    },
    selectIcons() {
      this.iconChooseVisible = true
    },
    handleIconCancel() {
      this.iconChooseVisible = false
    },
    handleIconChoose(value) {
      console.log(value)
      this.model.icon = value
      this.form.icon = value
      this.iconChooseVisible = false
    },
    // 根据屏幕变化,设置抽屉尺寸
    resetScreenSize() {
      let screenWidth = document.body.clientWidth
      if (screenWidth < 500) {
        this.drawerWidth = screenWidth
      } else {
        this.drawerWidth = 700
      }
    },
    initDictConfig() {},
    handleParentIdChange(value) {
      if (!value) {
        this.validateStatus = 'error'
      } else {
        this.validateStatus = 'success'
      }
    },
  },
}
</script>

<style scoped>
</style>
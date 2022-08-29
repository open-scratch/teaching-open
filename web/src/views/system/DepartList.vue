<template xmlns:background-color="http://www.w3.org/1999/xhtml">
  <a-row :gutter="10">
    <a-col :md="10" :sm="24">
      <a-card :bordered="false">
        <!-- 按钮操作区域 -->
        <a-row style="margin-left: 14px">
          <a-button @click="handleAdd(1)" type="primary">添加机构/学校</a-button>
          <a-button @click="handleAdd(2)" type="primary">添加下级部门/班级</a-button>
          <a-button type="primary" icon="download" @click="handleExportXls('部门信息')">导出</a-button>
          <a-upload
            name="file"
            :showUploadList="false"
            :multiple="false"
            :headers="tokenHeader"
            :action="importExcelUrl"
            @change="handleImportExcel"
          >
            <a-button type="primary" icon="import">导入</a-button>
          </a-upload>
          <a-button title="删除多条数据" v-if="checkedKeys.length > 0" @click="batchDel" type="default"
            >批量删除</a-button
          >
          <!--<a-button @click="refresh" type="default" icon="reload" :loading="loading">刷新</a-button>-->
        </a-row>
        <div style="background: #fff; padding-left: 16px; height: 100%; margin-top: 5px">
          <a-alert type="info" :showIcon="true">
            <div slot="message">
              当前选择：<span v-if="this.currSelected.title">{{ getCurrSelectedTitle() }}</span>
              <a v-if="this.currSelected.title" style="margin-left: 10px" @click="onClearSelected">取消选择</a>
            </div>
          </a-alert>
          <a-input-search @search="onSearch" style="width: 100%; margin-top: 10px" placeholder="请输入部门名称" />
          <!-- 树-->
          <a-col :md="10" :sm="24">
            <template>
              <a-dropdown :trigger="[this.dropTrigger]" @visibleChange="dropStatus">
                <span style="user-select: none">
                  <a-tree
                    checkable
                    multiple
                    @select="onSelect"
                    @check="onCheck"
                    @rightClick="rightHandle"
                    :selectedKeys="selectedKeys"
                    :checkedKeys="checkedKeys"
                    :treeData="departTree"
                    :checkStrictly="checkStrictly"
                    :expandedKeys="iExpandedKeys"
                    :autoExpandParent="autoExpandParent"
                    @expand="onExpand"
                  />
                </span>
                <!--新增右键点击事件,和增加添加和删除功能-->
                <a-menu slot="overlay">
                  <a-menu-item @click="handleAdd(3)" key="1">添加部门/班级</a-menu-item>
                  <a-menu-item @click="handleDelete" key="2">删除</a-menu-item>
                  <a-menu-item @click="closeDrop" key="3">取消</a-menu-item>
                </a-menu>
              </a-dropdown>
            </template>
          </a-col>
        </div>
      </a-card>
      <!---- author:os_chengtgen -- date:20190827 --  for:切换父子勾选模式 =======------>
      <div class="drawer-bootom-button">
        <a-dropdown :trigger="['click']" placement="topCenter">
          <a-menu slot="overlay">
            <a-menu-item key="1" @click="switchCheckStrictly(1)">父子关联</a-menu-item>
            <a-menu-item key="2" @click="switchCheckStrictly(2)">取消关联</a-menu-item>
            <a-menu-item key="3" @click="checkALL">全部勾选</a-menu-item>
            <a-menu-item key="4" @click="cancelCheckALL">取消全选</a-menu-item>
            <a-menu-item key="5" @click="expandAll">展开所有</a-menu-item>
            <a-menu-item key="6" @click="closeAll">合并所有</a-menu-item>
          </a-menu>
          <a-button> 树操作 <a-icon type="up" /> </a-button>
        </a-dropdown>
      </div>
      <!---- author:os_chengtgen -- date:20190827 --  for:切换父子勾选模式 =======------>
    </a-col>
    <a-col :md="14" :sm="24">
      <a-card :bordered="false" v-if="selectedKeys.length > 0">
        <span v-if="selectedKeys.length > 0"
          >正在操作的
          <span style="color: red">{{
            currSelected.orgCategory == 1 ? '机构' : currSelected.orgCategory == 2 ? '部门' : '班级'
          }}</span
          >： <a-tag color="blue">{{ currSelected.departName }}</a-tag></span
        >
        <a-tabs :activeKey="showTab" @change="onTabChange" defaultActiveKey="1">
          <a-tab-pane tab="基本信息" key="1">
            <a-form :form="form">
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="部门ID">
                <a-input style="border: 0px" placeholder="" v-decorator="['id']" :readOnly="true" />
              </a-form-item>
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="名称">
                <a-input placeholder="请输入机构/部门名称" v-decorator="['departName', validatorRules.departName]" />
              </a-form-item>
              <a-form-item
                v-if="currSelected.orgCategory != 1"
                :labelCol="labelCol"
                :wrapperCol="wrapperCol"
                label="上级部门"
              >
                <a-tree-select
                  style="width: 100%"
                  :dropdownStyle="{ maxHeight: '200px', overflow: 'auto' }"
                  :treeData="treeData"
                  :readOnly="disable"
                  v-model="model.parentId"
                  placeholder="无"
                >
                </a-tree-select>
              </a-form-item>
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="编码">
                <a-input disabled placeholder="请输入机构编码" v-decorator="['orgCode', validatorRules.orgCode]" />
              </a-form-item>
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="类型">
                <template v-if="orgCategoryDisabled">
                  <a-radio-group v-decorator="['orgCategory', validatorRules.orgCategory]" placeholder="请选择机构类型">
                    <a-radio value="1"> 机构 </a-radio>
                  </a-radio-group>
                </template>
                <template v-else>
                  <a-radio-group v-decorator="['orgCategory', validatorRules.orgCategory]" placeholder="请选择机构类型">
                    <a-radio value="2"> 部门 </a-radio>
                    <a-radio value="3"> 班级 </a-radio>
                  </a-radio-group>
                </template>
              </a-form-item>

              <a-form-item
                v-if="currSelected.orgCategory == 1"
                :labelCol="labelCol"
                :wrapperCol="wrapperCol"
                label="是否公开"
              >
                <a-radio-group v-decorator="['isPublic', validatorRules.isPublic]" placeholder="请选择是否公开">
                  <a-radio value="0"> 不公开 </a-radio>
                  <a-radio value="1"> 公开 </a-radio>
                </a-radio-group>
              </a-form-item>
              <a-form-item
                v-if="currSelected.orgCategory == 1"
                :labelCol="labelCol"
                :wrapperCol="wrapperCol"
                label="封面"
              >
                <j-upload
                  v-decorator="['departCover']"
                  :uploadTarget="'qiniu'"
                  :fileType="'image'"
                  :number="1"
                  :trigger-change="true"
                ></j-upload>
              </a-form-item>
              <a-form-item
                v-if="currSelected.orgCategory == 1"
                :labelCol="labelCol"
                :wrapperCol="wrapperCol"
                label="简介"
              >
                <a-textarea placeholder="请输入简介" v-decorator="['departDesc', { initialValue: '' }]" />
              </a-form-item>
              <a-form-item v-if="currSelected.orgCategory == 1" :labelCol="labelCol" :wrapperCol="wrapperCol" label="外链">
                <a-input placeholder="请输入外链" v-decorator="['departLink', {}]" />
              </a-form-item>
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="地址">
                <a-input placeholder="请输入地址" v-decorator="['address', { initialValue: '' }]" />
              </a-form-item>
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="手机号">
                <a-input placeholder="请输入手机号" v-decorator="['mobile', { initialValue: '' }]" />
              </a-form-item>
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="排序">
                <a-input-number v-decorator="['departOrder', { initialValue: 0 }]" />
              </a-form-item>
              <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="备注">
                <a-textarea placeholder="请输入备注" v-decorator="['memo', { initialValue: '' }]" />
              </a-form-item>
            </a-form>
            <div class="anty-form-btn">
              <a-button @click="emptyCurrForm" type="default" htmlType="button" icon="sync">重置</a-button>
              <a-button @click="submitCurrForm" type="primary" htmlType="button" icon="form">保存</a-button>
            </div>
          </a-tab-pane>
          <a-tab-pane tab="老师/学生" key="2" forceRender>
            <Dept-User-Info ref="DeptUserInfo"></Dept-User-Info>
          </a-tab-pane>
          <!-- <a-tab-pane tab="部门角色" key="3" forceRen        der>
            <dept-role-info ref="DeptRoleInfo"/>
          </a-tab-pane> -->
          <a-tab-pane tab="课程" key="4" forceRender>
            <Dept-Course-Info ref="DeptCourseInfo"></Dept-Course-Info>
          </a-tab-pane>
          <a-tab-pane v-if="false" tab="部门权限" key="6" forceRender>
            <depart-auth-modal ref="departAuth" />
          </a-tab-pane>
        </a-tabs>
      </a-card>
      <a-card v-else>
        <a-empty>
          <span slot="description"> 请先选择一个机构/部门/班级! </span>
        </a-empty>
      </a-card>
    </a-col>
    <depart-modal ref="departModal" @ok="loadTree"></depart-modal>
  </a-row>
</template>
<script>
import DepartModal from './modules/DepartModal'
import pick from 'lodash.pick'
import { queryMyDepartTreeList, searchByKeywords, deleteByDepartId } from '@/api/api'
import { httpAction, deleteAction } from '@/api/manage'
import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import JUpload from '@/components/jeecg/JUpload'
import DepartAuthModal from './modules/DepartAuthModal'
import DeptUserInfo from './modules/DeptUserInfo'
import DeptCourseInfo from './modules/DeptCourseInfo'

// 表头
const columns = [
  {
    title: '机构名称',
    dataIndex: 'departName',
  },
  {
    title: '机构类型',
    align: 'center',
    dataIndex: 'orgType',
  },
  {
    title: '机构编码',
    dataIndex: 'orgCode',
  },
  {
    title: '手机号',
    dataIndex: 'mobile',
  },
  {
    title: '传真',
    dataIndex: 'fax',
  },
  {
    title: '地址',
    dataIndex: 'address',
  },
  {
    title: '排序',
    align: 'center',
    dataIndex: 'departOrder',
  },
  {
    title: '操作',
    align: 'center',
    dataIndex: 'action',
    scopedSlots: { customRender: 'action' },
  },
]
export default {
  name: 'DepartList',
  mixins: [JeecgListMixin],
  components: {
    JUpload,
    DepartAuthModal,
    DepartModal,
    DeptUserInfo,
    DeptCourseInfo,
  },
  data() {
    return {
      iExpandedKeys: [],
      loading: false,
      autoExpandParent: true,
      currFlowId: '',
      currFlowName: '',
      disable: true,
      treeData: [],
      visible: false,
      departTree: [],
      rightClickSelectedKey: '',
      rightClickSelectedOrgCode: '',
      hiding: true,
      model: {},
      dropTrigger: '',
      depart: {},
      columns: columns,
      disableSubmit: false,
      checkedKeys: [],
      selectedKeys: [],
      autoIncr: 1,
      currSelected: {},

      allTreeKeys: [],
      checkStrictly: true,

      form: this.$form.createForm(this),
      labelCol: {
        xs: { span: 24 },
        sm: { span: 5 },
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 16 },
      },
      graphDatasource: {
        nodes: [],
        edges: [],
      },
      validatorRules: {
        departName: { rules: [{ required: true, message: '请输入机构/部门名称!' }] },
        orgCode: { rules: [{ required: true, message: '请输入机构编码!' }] },
        orgCategory: { rules: [{ required: true, message: '请输入机构类型!' }] },
        isPublic: { rules: [{ required: true, message: '请选择是否公开!' }] },
        mobile: { rules: [{ validator: this.validateMobile }] },
      },
      url: {
        delete: '/sys/sysDepart/delete',
        edit: '/sys/sysDepart/edit',
        deleteBatch: '/sys/sysDepart/deleteBatch',
        exportXlsUrl: 'sys/sysDepart/exportXls',
        importExcelUrl: 'sys/sysDepart/importExcel',
      },
      orgCategoryDisabled: false,
      showTab: '1',
    }
  },
  computed: {
    importExcelUrl: function () {
      return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`
    },
  },
  watch: {
    $route(to, from) {
      console.log(to)
      this.showTab = to.path.split('tab=')[1]
      console.log('tab:' + this.showTab)
    },
  },
  created() {
    this.currFlowId = this.$route.params.id
    this.currFlowName = this.$route.params.name
    if (location.href.includes('tab=')) {
      this.showTab = location.href.split('tab=')[1]
    }
  },
  methods: {
    loadData() {
      this.refresh()
    },
    loadTree() {
      var that = this
      that.treeData = []
      that.departTree = []
      queryMyDepartTreeList().then((res) => {
        if (res.success) {
          //部门全选后，再添加部门，选中数量增多
          this.allTreeKeys = []
          for (let i = 0; i < res.result.length; i++) {
            let temp = res.result[i]
            that.treeData.push(temp)
            that.departTree.push(temp)
            that.setThisExpandedKeys(temp)
            that.getAllKeys(temp)
            // console.log(temp.id)
          }
          this.loading = false
        }
      })
    },
    setThisExpandedKeys(node) {
      if (node.children && node.children.length > 0) {
        this.iExpandedKeys.push(node.key)
        for (let a = 0; a < node.children.length; a++) {
          this.setThisExpandedKeys(node.children[a])
        }
      }
    },
    refresh() {
      this.loading = true
      this.loadTree()
    },
    // 右键操作方法
    rightHandle(node) {
      this.dropTrigger = 'contextmenu'
      console.log(node.node.eventKey)
      this.rightClickSelectedKey = node.node.eventKey
      this.rightClickSelectedOrgCode = node.node.dataRef.orgCode
    },
    onExpand(expandedKeys) {
      console.log('onExpand', expandedKeys)
      // if not set autoExpandParent to false, if children expanded, parent can not collapse.
      // or, you can remove all expanded children keys.
      this.iExpandedKeys = expandedKeys
      this.autoExpandParent = false
    },
    backFlowList() {
      this.$router.back(-1)
    },
    // 右键点击下拉框改变事件
    dropStatus(visible) {
      if (visible == false) {
        this.dropTrigger = ''
      }
    },
    // 右键店家下拉关闭下拉框
    closeDrop() {
      this.dropTrigger = ''
    },
    addRootNode() {
      this.$refs.nodeModal.add(this.currFlowId, '')
    },
    //批量删除
    batchDel: function () {
      console.log(this.checkedKeys)
      if (this.checkedKeys.length <= 0) {
        this.$message.warning('请选择一条记录！')
      } else {
        var ids = ''
        for (var a = 0; a < this.checkedKeys.length; a++) {
          ids += this.checkedKeys[a] + ','
        }
        var that = this
        this.$confirm({
          title: '确认删除',
          content: '确定要删除所选中的 ' + this.checkedKeys.length + ' 条数据，以及子节点数据吗?',
          onOk: function () {
            deleteAction(that.url.deleteBatch, { ids: ids }).then((res) => {
              if (res.success) {
                that.$message.success(res.message)
                that.loadTree()
                that.onClearSelected()
              } else {
                that.$message.warning(res.message)
              }
            })
          },
        })
      }
    },
    //搜索部门
    onSearch(value) {
      let that = this
      if (value) {
        searchByKeywords({ keyWord: value }).then((res) => {
          if (res.success) {
            that.departTree = []
            for (let i = 0; i < res.result.length; i++) {
              let temp = res.result[i]
              that.departTree.push(temp)
            }
          } else {
            that.$message.warning(res.message)
          }
        })
      } else {
        that.loadTree()
      }
    },
    nodeModalOk() {
      this.loadTree()
    },
    nodeModalClose() {},
    hide() {
      console.log(111)
      this.visible = false
    },
    onCheck(checkedKeys, info) {
      console.log('onCheck', checkedKeys, info)
      this.hiding = false
      //this.checkedKeys = checkedKeys.checked
      // <!---- author:os_chengtgen -- date:20190827 --  for:切换父子勾选模式 =======------>
      if (this.checkStrictly) {
        this.checkedKeys = checkedKeys.checked
      } else {
        this.checkedKeys = checkedKeys
      }
      // <!---- author:os_chengtgen -- date:20190827 --  for:切换父子勾选模式 =======------>
    },
    //当选择一个部门
    onSelect(selectedKeys, e) {
      console.log('selected', selectedKeys, e)
      this.hiding = false
      let record = e.node.dataRef
      console.log('onSelect-record', record)
      this.currSelected = Object.assign({}, record)
      this.model = this.currSelected
      this.selectedKeys = [record.key]
      this.model.parentId = record.parentId
      this.setValuesToForm(record)
      this.$nextTick(() => {
        if (this.$refs.departAuth) {
          //加载部门权限
          this.$refs.departAuth.show(record.id)
        }
        if (this.$refs.DeptUserInfo) {
          //加载用户
          this.$refs.DeptUserInfo.open(record)
        }
        if (this.$refs.DeptCourseInfo) {
          //加载课程
          this.$refs.DeptCourseInfo.open(record)
        }
      })
    },
    // 触发onSelect事件时,为部门树右侧的form表单赋值
    setValuesToForm(record) {
      if (record.orgCategory == '1') {
        this.orgCategoryDisabled = true
      } else {
        this.orgCategoryDisabled = false
      }
      this.$nextTick(() => {
        this.form.getFieldDecorator('fax', { initialValue: '' })
        this.form.setFieldsValue(
          pick(
            record,
            'id',
            'departName',
            'departDesc',
            'departCover',
            'departLink',
            'isPublic',
            'orgCategory',
            'orgCode',
            'departOrder',
            'mobile',
            'fax',
            'address',
            'memo'
          )
        )
      })
    },
    getCurrSelectedTitle() {
      return !this.currSelected.title ? '' : this.currSelected.title
    },
    onClearSelected() {
      this.hiding = true
      this.checkedKeys = []
      this.currSelected = {}
      this.form.resetFields()
      this.selectedKeys = []
      this.$refs.departAuth.departId = ''
    },
    handleNodeTypeChange(val) {
      this.currSelected.nodeType = val
    },
    notifyTriggerTypeChange(value) {
      this.currSelected.notifyTriggerType = value
    },
    receiptTriggerTypeChange(value) {
      this.currSelected.receiptTriggerType = value
    },
    submitCurrForm() {
      this.form.validateFields((err, values) => {
        if (!err) {
          if (!this.currSelected.id) {
            this.$message.warning('请点击选择要修改部门!')
            return
          }

          let formData = Object.assign(this.currSelected, values)
          console.log('Received values of form: ', formData)
          httpAction(this.url.edit, formData, 'put').then((res) => {
            if (res.success) {
              this.$message.success('保存成功!')
              this.loadTree()
            } else {
              this.$message.error(res.message)
            }
          })
        }
      })
    },
    emptyCurrForm() {
      this.form.resetFields()
    },
    nodeSettingFormSubmit() {
      this.form.validateFields((err, values) => {
        if (!err) {
          console.log('Received values of form: ', values)
        }
      })
    },
    openSelect() {
      this.$refs.sysDirectiveModal.show()
    },
    handleAdd(num) {
      if (num == 1) {
        this.$refs.departModal.add()
        this.$refs.departModal.title = '新增'
      } else if (num == 2) {
        let key = this.currSelected.key
        if (!key) {
          this.$message.warning('请先点击选中上级部门！')
          return false
        }
        this.$refs.departModal.add(this.selectedKeys)
        this.$refs.departModal.title = '新增'
      } else {
        this.$refs.departModal.add(this.rightClickSelectedKey)
        this.$refs.departModal.title = '新增'
      }
    },
    handleDelete() {
      var that = this
      this.$confirm({
        title: '确认删除',
        content: '确定要删除此部门以及子节点数据吗?',
        onOk: function () {
          deleteByDepartId({ id: that.rightClickSelectedKey }).then((resp) => {
            if (resp.success) {
              //删除成功后，去除已选中中的数据
              that.checkedKeys.splice(
                that.checkedKeys.findIndex((key) => key === that.rightClickSelectedKey),
                1
              )
              that.$message.success('删除成功!')
              that.loadTree()
              //删除后同步清空右侧基本信息内容
              let orgCode = that.form.getFieldValue('orgCode')
              if (orgCode && orgCode === that.rightClickSelectedOrgCode) {
                that.onClearSelected()
              }
            } else {
              that.$message.warning('删除失败!')
            }
          })
        },
      })
    },
    selectDirectiveOk(record) {
      console.log('选中指令数据', record)
      this.nodeSettingForm.setFieldsValue({ directiveCode: record.directiveCode })
      this.currSelected.sysCode = record.sysCode
    },
    getFlowGraphData(node) {
      this.graphDatasource.nodes.push({
        id: node.id,
        text: node.flowNodeName,
      })
      if (node.children.length > 0) {
        for (let a = 0; a < node.children.length; a++) {
          let temp = node.children[a]
          this.graphDatasource.edges.push({
            source: node.id,
            target: temp.id,
          })
          this.getFlowGraphData(temp)
        }
      }
    },
    // <!---- author:os_chengtgen -- date:20190827 --  for:切换父子勾选模式 =======------>
    expandAll() {
      this.iExpandedKeys = this.allTreeKeys
    },
    closeAll() {
      this.iExpandedKeys = []
    },
    checkALL() {
      this.checkStriccheckStrictlytly = false
      this.checkedKeys = this.allTreeKeys
    },
    cancelCheckALL() {
      //this.checkedKeys = this.defaultCheckedKeys
      this.checkedKeys = []
    },
    switchCheckStrictly(v) {
      if (v == 1) {
        this.checkStrictly = false
      } else if (v == 2) {
        this.checkStrictly = true
      }
    },
    getAllKeys(node) {
      // console.log('node',node);
      this.allTreeKeys.push(node.key)
      if (node.children && node.children.length > 0) {
        for (let a = 0; a < node.children.length; a++) {
          this.getAllKeys(node.children[a])
        }
      }
    },
    // <!---- author:os_chengtgen -- date:20190827 --  for:切换父子勾选模式 =======------>
    changeURLStatic(name, value) {
      var url = location.href
      var reg = eval('/([?|&]' + name + '=)[^&]*/gi')
      value = value.toString().replace(/(^\s*)|(\s*$)/g, '') //移除首尾空格
      if (!value) {
        var url2 = url.replace(reg, '') //正则替换
      } else {
        if (url.match(reg)) {
          var url2 = url.replace(reg, '$1' + value) //正则替换
        } else {
          var url2 = url + (url.indexOf('?') > -1 ? '&' : '?') + name + '=' + value //没有参数添加参数
        }
      }
      history.replaceState(null, null, url2) //替换地址栏
    },
    onTabChange(key) {
      this.showTab = key
      this.changeURLStatic('tab', key)
    },
  },
}
</script>
<style scoped>
.ant-card-body .table-operator {
  margin: 15px;
}

.anty-form-btn {
  width: 100%;
  text-align: center;
}

.anty-form-btn button {
  margin: 0 5px;
}

.anty-node-layout .ant-layout-header {
  padding-right: 0;
}

.header {
  padding: 0 8px;
}

.header button {
  margin: 0 3px;
}

.ant-modal-cust-warp {
  height: 100%;
}

.ant-modal-cust-warp .ant-modal-body {
  height: calc(100% - 110px) !important;
  overflow-y: auto;
}

.ant-modal-cust-warp .ant-modal-content {
  height: 90% !important;
  overflow-y: hidden;
}

#app .desktop {
  height: auto !important;
}

/** Button按钮间距 */
.ant-btn {
  margin-left: 3px;
}

.drawer-bootom-button {
  /*position: absolute;*/
  bottom: 0;
  width: 100%;
  border-top: 1px solid #e8e8e8;
  padding: 10px 16px;
  text-align: left;
  left: 0;
  background: #fff;
  border-radius: 0 0 2px 2px;
}
</style>
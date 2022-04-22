<template>
  <div class="tenant-config-pannel">
    <!-- 主表单区域 -->
    <a-form :form="form" slot="detail">
      <a-tabs>
        <a-button type="primary" slot="tabBarExtraContent" @click="saveCurrentConfig">保存</a-button>
        <a-tab-pane key="concat" tab="基本信息" forceRender>
          <a-row>
            <a-col :span="24">
              <a-form-item label="联系人" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <a-input v-decorator="['_linkman']" placeholder="请输联系人"></a-input>
              </a-form-item>
            </a-col>
            <a-col :span="24">
              <a-form-item label="联系手机" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <a-input v-decorator="['_phone']" placeholder="请输入手机号"></a-input>
              </a-form-item>
            </a-col>
            <a-col :span="24">
              <a-form-item label="地址" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <a-input v-decorator="['_address']" placeholder="请输入地址"></a-input>
              </a-form-item>
            </a-col>
          </a-row>
        </a-tab-pane>
        <a-tab-pane key="base" tab="网站配置" forceRender>
          <a-row type="flex" justify="space-between">
            <a-col :span="24">
              <a-form-item label="品牌名" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <a-input v-decorator="['brandName', validatorRules.brandName]" placeholder="请输入品牌名称"></a-input>
              </a-form-item>
            </a-col>
            <a-col :span="24">
              <a-form-item label="品牌简介" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <a-textarea v-decorator="['brandDesc', validatorRules.brandDesc]" placeholder="请输入品牌简介"></a-textarea>
              </a-form-item>
            </a-col>
            <a-col :span="24">
              <a-form-item label="LOGO" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <j-upload
                  v-decorator="['logo', validatorRules.logo]"
                  :fileType="'image'"
                  :number="1"
                  :trigger-change="true"
                ></j-upload>
              </a-form-item>
            </a-col>
            <!-- <a-col :span="24">
              <a-form-item label="轮播图" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <j-upload
                  v-decorator="['banner']"
                  :fileType="'image'"
                  :number="10"
                  :multiple="true"
                  :trigger-change="true"
                ></j-upload>
                <p>轮播图链接</p>
                <a-tooltip>
                  <span slot="title">对应轮播图按顺序，一行一个</span>
                  <a-textarea :auto-size="{ minRows: 2, maxRows: 10 }" v-decorator="['bannerLinks']"/>
                </a-tooltip>
              </a-form-item>
            </a-col> -->
            <a-col :span="24">
              <a-form-item label="底部文字" :labelCol="labelCol2" :wrapperCol="wrapperCol2">
                <j-editor v-decorator="['footer']" :triggerChange="true" />
              </a-form-item>
            </a-col>
          </a-row>
        </a-tab-pane>

        <a-tab-pane key="func" tab="功能配置" style="min-height: 200px;" forceRender>
          <a-row>
            <a-col :span="6">
              <a-form-item label="开放注册" :labelCol="{xs: { span: 12 },sm: { span: 10 }}" :wrapperCol="{xs: { span: 12 },sm: { span: 14 }}">
                <j-dict-select-tag
                    type="radioButton"
                    v-decorator="['allowReg', { initialValue: '0' }]"
                    :trigger-change="true"
                    @change="v=>model.allowReg = v.target.value"
                    dictCode="yn"
                    placeholder="请选择是否开放注册"
                  />
              </a-form-item>
            </a-col>
            <a-col :span="8">
              <a-form-item label="默认注册角色" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <j-dict-select-tag :disabled="model.allowReg!='1'" :triggerChange="true" dictCode="sys_role,role_name,id" v-decorator="[ '_defaultRole']" placeholder="请选择角色"/>
              </a-form-item>
            </a-col>
            <a-col :span="10">
              <a-form-item label="默认注册班级" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <j-select-depart :disabled="model.allowReg!='1'" v-model="model._defaultDepart" :multi="false"></j-select-depart>
              </a-form-item>
            </a-col>
          </a-row>
        </a-tab-pane>
      </a-tabs>
    </a-form>
  </div>
</template>

<script>
import pick from 'lodash.pick'
import { getAction, postAction } from '@/api/manage'
import JUpload from '@/components/jeecg/JUpload'
import JSearchSelectTag from '@/components/dict/JSearchSelectTag'
import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
import JEditor from '@/components/jeecg/JEditor'

export default {
  name: 'TenantConfig',
  components: { JUpload, JSearchSelectTag,JSelectDepart,JEditor },
  data() {
    return {
      labelCol: {
        xs: { span: 24 },
        sm: { span: 6 },
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 16 },
      },
      labelCol2: {
        xs: { span: 24 },
        sm: { span: 3 },
      },
      wrapperCol2: {
        xs: { span: 24 },
        sm: { span: 20 },
      },
      form: this.$form.createForm(this),
      validatorRules: {
        theme:{
          rules: [{ required: true, message: '请选择主题!' }],
        },
        brandName: {
          rules: [{ required: true, message: '请输入品牌名!' }],
        },
        logo: {
          rules: [{ required: false, message: '请上传LOGO!' }],
        },
      },
      tenantInfo: {},
      model: {},
    }
  },
  created() {
    this.getCurrentConfig()
  },
  methods: {
    getCurrentConfig(){
      getAction('/sys/config/getAllConfigList').then((res) => {
        if (res.success) {
          res.result.map((v) => {
            this.model[v.configKey] = v.configValue
          })
          console.log(this.model)
          this.$nextTick(() => {
            this.form.setFieldsValue(this.model)
          })
        } else {
          this.$message.warning(res.message)
        }
      })
    },
    saveCurrentConfig() {
      const that = this
      // 触发表单验证
      this.form.validateFields((err, values) => {
        if (!err) {
          let formData = Object.assign(this.model, values)
          for (let k in formData) {
            if (formData[k] === undefined) {
              formData[k] = ''
            }
          }
          console.log(formData)
          postAction('/sys/config/saveTenantConfig', formData).then((res) => {
            if (res.success) {
              this.$message.success(res.message)
              this.$emit('ok')
              this.visible = false
            } else {
              this.$message.warning(res.message)
            }
          })
        }
      })
    },
  },
}
</script>

<style lang="less" scoped>
.tenant-config-pannel{
  background: #fff;
}
</style>
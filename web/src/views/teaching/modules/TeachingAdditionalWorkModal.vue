<template>
  <j-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    switchFullscreen
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item label="状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="radio" v-decorator="['status',{rules: [{required: true, message: '请选择状态!'}]}]" :trigger-change="true" dictCode="additional_work_status" placeholder="请选择状态"/>
        </a-form-item>
        <a-form-item label="作业类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['codeType']" :trigger-change="true" dictCode="work_type" placeholder="请选择作业类型"/>
        </a-form-item>
        <a-form-item label="作业名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="['workName',{rules: [{required: true, message: '请输入作业名!'}]}]" placeholder="请输入作业名"></a-input>
        </a-form-item>
        <a-form-item label="作业描述" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['workDesc']" rows="4" placeholder="请输入作业描述"/>
        </a-form-item>
        <a-form-item label="作业封面" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['workCover']" :number="1" :fileType="'image'" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="作业资料" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['workDocumentUrl']" :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="作业文件" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['workUrl']" :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="分配班级" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-depart :onlyLeaf="true" :onlyCategory="3" :rootOpened="true" :multi="true" v-decorator="['workDept',{rules: [{required: true, message: '请选择班级!'}]}]"/>
        </a-form-item>
        
      </a-form>
    </a-spin>
  </j-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JUpload from '@/components/jeecg/JUpload'
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'


  export default {
    name: "TeachingAdditionalWorkModal",
    components: { 
      JUpload,
      JSelectDepart,
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:800,
        visible: false,
        model: {},
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
        confirmLoading: false,
        validatorRules: {
        },
        url: {
          add: "/teaching/teachingAdditionalWork/add",
          edit: "/teaching/teachingAdditionalWork/edit",
        }
      }
    },
    created () {
    },
    methods: {
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'codeType','createTime','workName','workDesc','workCover','workDocumentUrl', 'workUrl','workDept','status'))
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let httpurl = '';
            let method = '';
            if(!this.model.id){
              httpurl+=this.url.add;
              method = 'post';
            }else{
              httpurl+=this.url.edit;
               method = 'put';
            }
            let formData = Object.assign(this.model, values);
            console.log("表单提交数据",formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.close();
            })
          }
         
        })
      },
      handleCancel () {
        this.close()
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'codeType', 'createTime','workName','workDesc','workCover','workDocumentUrl','workUrl','workDept','workIntegral','status'))
      },

      
    }
  }
</script>
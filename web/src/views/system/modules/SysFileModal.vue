<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="文件类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['fileType', validatorRules.fileType]" :trigger-change="true" dictCode="file_type" placeholder="请选择文件类型"/>
        </a-form-item>
        <a-form-item label="文件名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'fileName', validatorRules.fileName]" placeholder="请输入文件名"></a-input>
        </a-form-item>
        <a-form-item label="文件路径" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-if="false" v-decorator="[ 'filePath', validatorRules.filePath]" placeholder="请输入文件路径"></a-input>
          <j-upload v-decorator="[ 'filePath', validatorRules.filePath]" :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="存储位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag :disabled="true" type="list" v-decorator="['fileLocation', validatorRules.fileLocation]" :trigger-change="true" dictCode="file_location" placeholder="请选择存储位置"/>
        </a-form-item>
        <a-form-item label="文件标签" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'fileTag', validatorRules.fileTag]" placeholder="请输入文件标签"></a-input>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  import JUpload from '@/components/jeecg/JUpload'
  import JEllipsis from '@/components/jeecg/JEllipsis'
  export default {
    name: "SysFileModal",
    components: { 
      JDictSelectTag,JUpload,JEllipsis
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:800,
        visible: false,
        model: {fileLocation:2},
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
          fileType: {rules: [
            {required: true, message: '请输入文件类型!'},
          ]},
          fileName: {rules: [
            {required: true, message: '请输入文件名!'},
          ]},
          filePath: {rules: [
            {required: true, message: '请输入文件路径!'},
          ]},
          fileLocation: {rules: [
            {required: true, message: '请输入存储位置!'},
          ]},
          fileTag: {rules: [
          ]},
        },
        url: {
          add: "/system/sysFile/add",
          edit: "/system/sysFile/edit",
        }
      }
    },
    created () {
    },
    methods: {
      add () {
        this.edit(this.model);
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'fileType','fileName','filePath','fileLocation','fileTag'))
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
        this.form.setFieldsValue(pick(row,'fileType','fileName','filePath','fileLocation','fileTag'))
      },

      
    }
  }
</script>
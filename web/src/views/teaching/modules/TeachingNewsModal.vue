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
          <j-dict-select-tag type="radio" v-decorator="['newsStatus', validatorRules.newsStatus]" :trigger-change="true" dictCode="news_status" placeholder="请选择状态"/>
        </a-form-item>
        <a-form-item label="标题" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="['newsTitle', validatorRules.newsTitle]" placeholder="请输入标题"></a-input>
        </a-form-item>
        <a-form-item label="内容" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-editor v-decorator="['newsContent',{trigger:'input'}]"/>
        </a-form-item>
      </a-form>
    </a-spin>
  </j-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  import JEditor from '@/components/jeecg/JEditor'


  export default {
    name: "TeachingNewsModal",
    components: { 
      JDictSelectTag,
      JEditor,
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:1200,
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
          newsTitle: {
            rules: [
              { required: true, message: '请输入标题!'},
            ]
          },
          newsContent: {
            rules: [
              { required: true, message: '请输入内容!'},
            ]
          },
          newsStatus: {
            rules: [
              { required: true, message: '请输入状态!'},
            ]
          },
        },
        url: {
          add: "/teaching/teachingNews/add",
          edit: "/teaching/teachingNews/edit",
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
          this.form.setFieldsValue(pick(this.model,'newsTitle','newsContent','newsStatus','createBy','createTime','updateBy','updateTime'))
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
        this.form.setFieldsValue(pick(row,'newsTitle','newsContent','newsStatus','createBy','createTime','updateBy','updateTime'))
      },

      
    }
  }
</script>
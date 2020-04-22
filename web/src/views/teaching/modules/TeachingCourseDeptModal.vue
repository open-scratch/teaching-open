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

        <a-form-item v-if="false" label="班级" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'deptId', validatorRules.deptId]" placeholder="请输入班级"></a-input>
        </a-form-item>
        <a-form-item v-if="false" label="课程" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'courseId', validatorRules.courseId]" placeholder="请输入课程"></a-input>
        </a-form-item>
        <a-form-item label="课程开课时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择课程开课时间" v-decorator="[ 'openTime', validatorRules.openTime]" :dateFormat="'YYYY-MM-DD HH:mm:ss'" :showTime="true" :trigger-change="true" style="width: 100%"/>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'  

  export default {
    name: "TeachingCourseDeptModal",
    components: { 
      JDate,
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
          deptId: {rules: [
            {required: true, message: '请输入班级!'},
          ]},
          courseId: {rules: [
            {required: true, message: '请输入课程!'},
          ]},
          openTime: {rules: [
          ]},
        },
        url: {
          add: "/teaching/teachingCourseDept/add",
          edit: "/teaching/teachingCourseDept/edit",
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
          this.form.setFieldsValue(pick(this.model,'deptId','courseId','openTime'))
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
        this.form.setFieldsValue(pick(row,'deptId','courseId','openTime'))
      },

      
    }
  }
</script>
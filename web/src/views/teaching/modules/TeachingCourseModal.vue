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
        <a-form-item label="展示排序" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'orderNum']" placeholder="请输入排序"></a-input-number>
        </a-form-item>
        <a-form-item label="课程名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'courseName', validatorRules.courseName]" placeholder="请输入课程名"></a-input>
        </a-form-item>
        <a-form-item label="课程介绍" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['courseDesc', validatorRules.courseDesc]" rows="4" placeholder="请输入课程介绍"/>
        </a-form-item>
        <a-form-item label="课程图标" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="[ 'courseIcon', validatorRules.courseIcon]"  :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="展示形式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-select placeholder="请选择展示形式" v-decorator="['showType', validatorRules.showType, {initialValue:'1'}]" @change="onShowTypeSelected">
            <a-select-option :value="1">地图</a-select-option>
            <a-select-option :value="2">卡片</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item label="是否共享" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-tooltip placement="top" title="共享后所有学生都可以上本课程">
          <a-switch v-model="model.isShared" checkedChildren="是" unCheckedChildren="否"/>
          </a-tooltip>
        </a-form-item>
        <a-form-item label="课程封面" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['courseCover', validatorRules.courseCover]"  :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item v-show="model.showType == 1" label="课程地图" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['courseMap', validatorRules.courseMap]"  :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JUpload from '@/components/jeecg/JUpload'

  export default {
    name: "TeachingCourseModal",
    components: { 
      JUpload,
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
          courseName: {rules: [
            {required: true, message: '请输入课程名!'},
          ]},
          courseDesc: {rules: [
          ]},
          courseIcon: {rules: [
          ]},
          courseCover: {rules: [
          ]},
          courseMap: {rules: [
          ]},
          showType:{rules: [
          ]},
        },
        url: {
          add: "/teaching/teachingCourse/add",
          edit: "/teaching/teachingCourse/edit",
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
          this.form.setFieldsValue(pick(this.model,'createBy','createTime','courseName','courseDesc','courseIcon','courseCover','showType','isShared', 'courseMap', 'orderNum'))
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
        this.form.setFieldsValue(pick(row,'createBy','createTime','courseName','courseDesc','courseIcon','courseCover','showType', 'courseMap'))
      },
      onShowTypeSelected(value){
        this.model.showType = value
      }
      
    }
  }
</script>
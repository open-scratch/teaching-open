<template>
  <a-drawer
    :title="title"
    :width="width"
    placement="right"
    :closable="false"
    @close="close"
    :visible="visible">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item label="所属课程" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-select v-decorator="['courseId', validatorRules.courseId]" rows="4">
            <a-select-option v-for="(course,index) in courseList" :key="index.toString()" :value="course.id">{{course.courseName}}</a-select-option>
          </a-select>
        </a-form-item>
        <a-form-item label="单元名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'unitName', validatorRules.unitName]" placeholder="请输入单元名称"></a-input>
        </a-form-item>
        <a-form-item label="单元简介" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="[ 'unitIntro', validatorRules.unitIntro]" placeholder="请输入单元简介"></a-textarea>
        </a-form-item>
        <a-form-item label="课程封面" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['unitCover', validatorRules.unitCover]" :uploadTarget="'qiniu'" :maxFile="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="课程视频" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['courseVideo', validatorRules.courseVideo]" :uploadTarget="'qiniu'" :maxFile="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="课件PPT" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['coursePpt', validatorRules.coursePpt]" :uploadTarget="'qiniu'" :maxFile="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="作业类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['courseWorkType', {initialValue: 2}, validatorRules.courseWorkType]" :trigger-change="true" dictCode="work_type" placeholder="请选择作业类型"/>
        </a-form-item>
        <a-form-item label="课程作业" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['courseWork', validatorRules.courseWork]" :uploadTarget="'qiniu'" :maxFile="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="地图X坐标" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'mapX', validatorRules.mapX]" placeholder="请输入地图X坐标" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="地图Y坐标" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'mapY', validatorRules.mapY]" placeholder="请输入地图Y坐标" style="width: 100%"/>
        </a-form-item>
      </a-form>
    </a-spin>
    <a-button type="primary" @click="handleOk">确定</a-button>
  </a-drawer>
</template>

<script>

  import { httpAction, getAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JUpload from '@/components/jeecg/JUpload'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: "TeachingCourseUnitModal",
    components: { 
      JUpload,
      JDictSelectTag,
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
          unitName: {rules: [
            {required: true, message: '请输入单元名称!'},
          ]},
          unitIntro: {rules: [
          ]},
          unitCover: {},
          courseId: {rules: [
            {required: true, message: '请选择所属课程!'},
          ]},
          courseVideo: {rules: [
          ]},
          coursePpt: {rules: [
          ]},
          courseWorkType: {rules: [
            // {required: true, message: '请选择作业类型'}
          ]},
          courseWork: {rules: [
          ]},
          courseWorkAnswer: {rules: [
          ]},
          coursePlan: {rules: [
          ]},
          mapX: {rules: [
            {pattern:/^-?\d+$/, message: '请输入整数!'},
          ]},
          mapY: {rules: [
            {pattern:/^-?\d+$/, message: '请输入整数!'},
          ]},
        },
        courseList: [],
        url: {
          add: "/teaching/teachingCourseUnit/add",
          edit: "/teaching/teachingCourseUnit/edit",
          courseList: "/teaching/teachingCourse/list",
        }
      }
    },
    created () {
      this.initCourseList();
    },
    methods: {
      initCourseList(){
        const that = this;
        getAction(this.url.courseList,{"pageNo": 1, "pageSize": 999}).then((res)=>{
          if(res.success){
            that.courseList = res.result.records;
          }else{
            that.$message.warning("课程列表获取失败："+res.message);
          }
        })
      },
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'createBy','createTime','unitName','unitIntro','courseId','courseVideo','coursePpt','courseWorkType','courseWork','courseWorkAnswer','coursePlan','mapX','mapY'))
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
        this.form.setFieldsValue(pick(row,'createBy','createTime','unitName','unitIntro','courseId','courseVideo','coursePpt','courseWorkType','courseWork','courseWorkAnswer','coursePlan','mapX','mapY'))
      },

      
    }
  }
</script>
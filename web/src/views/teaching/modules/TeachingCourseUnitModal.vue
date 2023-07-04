<template>
  <j-modal
    :title="title"
    :width="width"
    :confirmLoading="confirmLoading"
    switchFullscreen
    @ok="handleOk"
    @cancel="handleCancel"
    :visible="visible">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item label="展示排序" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'orderNum']" placeholder="请输入排序"></a-input-number>
        </a-form-item>
        <a-form-item label="所属课程包" :labelCol="labelCol" :wrapperCol="wrapperCol">
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
          <j-upload v-decorator="['unitCover', validatorRules.unitCover]"  :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="课程视频" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-card>
            <a-radio-group name="courseVideoSource" :defaultValue='1' v-model="model.courseVideoSource" @change="onCourseVideoSourceChange">
              <a-radio :value='1'>上传</a-radio>
              <a-radio :value='2'>链接</a-radio>
              <a-radio :value='3'>外部</a-radio>
            </a-radio-group>
            <a-divider></a-divider>
            <j-upload v-if="model.courseVideoSource==1" v-decorator="['courseVideo', validatorRules.courseVideo]" :number="1" :trigger-change="true"></j-upload>
            <a-input v-if="model.courseVideoSource==2" v-decorator="[ 'courseVideo', validatorRules.courseVideo]" placeholder="请输入视频地址"></a-input>
            <a-textarea v-if="model.courseVideoSource==3" v-decorator="['courseVideo']" placeholder="请输入外部播放器代码"></a-textarea>
          </a-card>
          <a-switch checkedChildren="对学生显示" unCheckedChildren="对学生隐藏" v-model="model.showCourseVideo" defaultChecked/>
        </a-form-item>
        <a-form-item label="课程案例" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['courseCase', validatorRules.courseCase]"  :number="1" :trigger-change="true"></j-upload>
          <a-switch checkedChildren="对学生显示" unCheckedChildren="对学生隐藏" v-model="model.showCourseCase" defaultChecked/>
        </a-form-item>
        <a-form-item label="课程资料" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['coursePpt', validatorRules.coursePpt]" :trigger-change="true"></j-upload>
          <a-switch checkedChildren="对学生显示" unCheckedChildren="对学生隐藏" v-model="model.showCoursePpt" />
        </a-form-item>
        <a-form-item label="课程教案" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['coursePlan', validatorRules.coursePlan]" :trigger-change="true"></j-upload>
          <a-switch checkedChildren="对学生显示" unCheckedChildren="对学生隐藏" v-model="model.showCoursePlan" />
        </a-form-item>
        <a-form-item label="作业类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['courseWorkType', {initialValue: 2}, validatorRules.courseWorkType]" :trigger-change="true" dictCode="work_type" placeholder="请选择作业类型"/>
        </a-form-item>
        <a-form-item label="预设作业" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['courseWork', validatorRules.courseWork]"  :number="1" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="课程内容" :labelCol="labelCol" :wrapperCol="wrapperCol" >
          <j-editor v-decorator="['mediaContent', { trigger: 'input' }]" />
        </a-form-item>
        <a-form-item label="地图坐标" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-row>
            <a-col :span="8">
              <a-form-item label="X" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <a-input-number v-decorator="['mapX', validatorRules.mapX]" placeholder="请输入地图X坐标" />
              </a-form-item>
            </a-col>
            <a-col :span="8">
              <a-form-item label="Y" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <a-input-number v-decorator="['mapY', validatorRules.mapY]" placeholder="请输入地图Y坐标" />
              </a-form-item>
            </a-col>
            <a-col :span="8">
              <a-button type="primary" @click="showMapEdit">地图编辑器</a-button>
            </a-col>
          </a-row>
        </a-form-item>
      </a-form>
    </a-spin>
    <!-- <div class="drawer-footer">
      <a-button type="primary" @click="handleOk">确定</a-button>
      <a-button type="default" @click="handleCancel">取消</a-button>
    </div> -->
    <TeachingMapEditor ref="mapEditor" />
  </j-modal>
</template>

<script>

  import { httpAction, getAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JUpload from '@/components/jeecg/JUpload'
  import JEditor from '@/components/jeecg/JEditor'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  import TeachingMapEditor from './TeachingMapEditor'
  export default {
    name: "TeachingCourseUnitModal",
    components: { 
      JUpload,
      JEditor,
      JDictSelectTag,
      TeachingMapEditor
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:1000,
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
          courseCase: {rules: [
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
        },
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
        this.edit({
          showCourseVideo: true,
          showCourseCase: true,
          showCoursePpt: false,
          showCoursePlan: false
        });
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,
          'createBy','createTime','unitName','unitIntro','courseId','unitCover',
          'courseVideo','showCourseVideo','courseVideoSource','coursePpt','showCoursePpt',
          'courseWorkType','courseWork','courseWorkAnswer','coursePlan','showCoursePlan',
          'courseCase','showCourseCase','mapX','mapY','mediaContent', 'orderNum'))
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
      onCourseVideoSourceChange(v){
        this.form.setFieldsValue({courseVideo:'', courseVideoExtern: ''})
        this.model.courseVideoExtern = ''
        this.model.courseVideo = ''
        this.model.courseVideoSource = v.target.value
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,
        'createBy','createTime','unitName','unitIntro','courseId',
        'courseVideo','showCourseVideo','coursePpt','showCoursePpt',
        'courseWorkType','courseWork','courseWorkAnswer', 'orderNum',
        'coursePlan','showCoursePlan','courseCase','showCourseCase','mapX','mapY'))
      },
      //显示地图编辑器
      showMapEdit() {
        this.$refs.mapEditor.openById(this.model.courseId, this.model.id)
      },
    }
  }
</script>

<style lang="less" scoped>
.drawer-footer {
  // position: absolute;
  bottom: -8px;
  width: 100%;
  border-top: 1px solid #e8e8e8;
  padding: 10px 16px;
  text-align: right;
  left: 0;
  background: #fff;
  border-radius: 0 0 2px 2px;
  .ant-btn {
    margin-left: 30px;
    margin-bottom: 30px;
    float: right;
  }
}
</style>
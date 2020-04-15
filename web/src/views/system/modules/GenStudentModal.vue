<template>
  <a-modal
    title="批量生成学生"
    :width="800"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleSubmit"
    @cancel="handleCancel"
    cancelText="关闭"
    style="top:20px;"
  >
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

       <!--部门分配-->
        <a-form-item label="班级分配" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-search
            placeholder="点击右侧按钮选择部门"
            v-model="checkedDepartNameString"
            disabled
            @search="onSearch">
            <a-button slot="enterButton" icon="search">选择</a-button>
          </a-input-search>
        </a-form-item>

        <a-form-item label="账号前缀" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input placeholder="请输入前缀" v-decorator="[ 'username', {}]"/>
        </a-form-item>

        <a-form-item label="登陆密码" :labelCol="labelCol" :wrapperCol="wrapperCol" hasFeedback >
          <a-input type="password" placeholder="请输入登陆密码" v-decorator="[ 'password', validatorRules.password]" />
        </a-form-item>

        <a-form-item label="确认密码" :labelCol="labelCol" :wrapperCol="wrapperCol" hasFeedback >
          <a-input type="password" @blur="handleConfirmBlur" placeholder="请重新输入登陆密码" v-decorator="[ 'confirmpassword', validatorRules.confirmpassword]"/>
        </a-form-item>

        <a-form-item label="生成数量" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number :min="1" :max="100" placeholder="最大100个" v-decorator="[ 'count', {}]"/>
        </a-form-item>

      </a-form>
    </a-spin>

    <depart-window ref="departWindow" @ok="modalFormOk"></depart-window>
  </a-modal>
</template>

<script>
  import {changePassword} from '@/api/api'
  import departWindow from './DepartWindow'
  export default {
    name: "GenStudentModal",
    components: {
      departWindow
    },
    data () {
      return {
        visible: false,
        confirmLoading: false,
        confirmDirty: false,
        validatorRules:{
          password:{
            rules: [{
              required: true,
              pattern:/^[\w]{6,}$/,
              message: '密码由6位以上数字、大小写字母和特殊符号组成!'
            }, {
              validator: this.validateToNextPassword,
            }],
          },
          confirmpassword:{
            rules: [{
              required: true, message: '请重新输入登陆密码!',
            }, {
              validator: this.compareToFirstPassword,
            }],
          },
          count:{
            rules: [{
              required: true, message: '请输入正确的数量!',
            }],
          },
        },

        selectedDepartKeys:[], //保存用户选择部门id
        checkedDepartKeys:[],
        checkedDepartNames:[], // 保存部门的名称 =>title
        checkedDepartNameString:"", // 保存部门的名称 =>title
        departIds:[],
        model: {},

        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
        form:this.$form.createForm(this)
      }
    },
    created () {
      console.log("created");
    },

    methods: {
      show (username) {
        this.form.resetFields();
        this.visible = true;
        this.model.username = username;
        this.$nextTick(() => {
          this.form.setFieldsValue({username:username});
        });
      },
      close () {
        this.$emit('close');
        this.visible = false;
        this.disableSubmit = false;
        this.selectedRole = [];
      },
      handleSubmit () {
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            this.confirmLoading = true;
            let formData = Object.assign(this.model, values);
            this.$message.warning("演示模式无法使用")
            // changePassword(formData).then((res)=>{
            //   if(res.success){
            //     this.$message.success(res.message);
            //     this.$emit('ok');
            //   }else{
            //     this.$message.warning(res.message);
            //   }
            // }).finally(() => {
            //   this.confirmLoading = false;
            //   this.close();
            // });
          }
        })
      },
      handleCancel () {
        this.close()
      },
      validateToNextPassword  (rule, value, callback) {
        const form = this.form;
        const confirmpassword=form.getFieldValue('confirmpassword');
        console.log("confirmpassword==>",confirmpassword);
        if (value && confirmpassword && value !== confirmpassword) {
          callback('两次输入的密码不一样！');
        }
        if (value && this.confirmDirty) {
          form.validateFields(['confirm'], { force: true })
        }
        callback();
      },
      compareToFirstPassword  (rule, value, callback) {
        const form = this.form;
        if (value && value !== form.getFieldValue('password')) {
          callback('两次输入的密码不一样！');
        } else {
          callback()
        }
      },
      handleConfirmBlur  (e) {
        const value = e.target.value
        this.confirmDirty = this.confirmDirty || !!value
      },
      // 搜索用户对应的部门API
      onSearch(){
        this.$refs.departWindow.add(this.checkedDepartKeys,this.userId);
      },
      // 获取用户对应部门弹出框提交给返回的数据
      modalFormOk (formData) {
        console.log(formData);
        
        this.checkedDepartNames = [];
        this.selectedDepartKeys = [];
        this.checkedDepartNameString = '';
        // this.userId = formData.userId;
        // this.userDepartModel.userId = formData.userId;
        this.departIds=[];
        this.resultDepartOptions=[];
        var depart=[];
        for (let i = 0; i < formData.departIdList.length; i++) {
          this.selectedDepartKeys.push(formData.departIdList[i].key);
          this.checkedDepartNames.push(formData.departIdList[i].title);
          this.checkedDepartNameString = this.checkedDepartNames.join(",");
          //新增部门选择，如果上面部门选择后不为空直接付给负责部门
          depart.push({
              key:formData.departIdList[i].key,
              title:formData.departIdList[i].title
          })
          this.departIds.push(formData.departIdList[i].key)
        }
        this.resultDepartOptions=depart;
        this.checkedDepartKeys = this.selectedDepartKeys  //更新当前的选择keys
       },
    }
  }
</script>
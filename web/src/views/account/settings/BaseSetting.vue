<template>
  <div class="account-settings-info-view">
    <a-row :gutter="16">
      <a-col :md="24" :lg="16">
        <a-form layout="vertical" :form="form">
          <a-form-item label="真实姓名" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input placeholder="请输入真实姓名" v-decorator="[ 'realname', validatorRules.realname]" />
          </a-form-item>
          <a-form-item v-if="false" label="头像" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-upload
              listType="picture-card"
              class="avatar-uploader"
              :showUploadList="false"
              :action="uploadAction"
              :data="{'isup':1}"
              :headers="headers"
              :beforeUpload="beforeUpload"
              @change="handleChange"
            >
              <img
                v-if="picUrl"
                :src="getAvatarView()"
                alt="头像"
                style="height:104px;max-width:300px"
              />
              <div v-else>
                <a-icon :type="uploadLoading ? 'loading' : 'plus'" />
                <div class="ant-upload-text">上传</div>
              </div>
            </a-upload>
          </a-form-item>

          <a-form-item label="生日" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-date-picker
              style="width: 100%"
              placeholder="请选择生日"
              v-decorator="['birthday', {initialValue:!userInfo.birthday?null:moment(userInfo.birthday,dateFormat)}]"
            />
          </a-form-item>

          <a-form-item label="性别" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-select v-decorator="[ 'sex', {}]" placeholder="请选择性别">
              <a-select-option :value="1">男</a-select-option>
              <a-select-option :value="2">女</a-select-option>
            </a-select>
          </a-form-item>

          <a-form-item label="邮箱" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input placeholder="请输入邮箱" v-decorator="[ 'email', validatorRules.email]" />
          </a-form-item>

          <a-form-item label="手机号码" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input placeholder="请输入手机号码" v-decorator="[ 'phone', validatorRules.phone]" />
          </a-form-item>
          <a-form-item>
            <a-button type="primary" @click="handleSubmit">提交</a-button>
          </a-form-item>
        </a-form>
      </a-col>
      <a-col v-if="false" :md="24" :lg="8" :style="{ minHeight: '180px' }">
        <div class="ant-upload-preview" @click="$refs.modal.edit(1)">
          <a-icon type="cloud-upload-o" class="upload-icon" />
          <div class="mask">
            <a-icon type="plus" />
          </div>
          <img :src="option.img" />
        </div>
      </a-col>
    </a-row>

    <avatar-modal ref="modal"></avatar-modal>
  </div>
</template>

<script>
import AvatarModal from './AvatarModal'
import moment from 'moment'
import pick from 'lodash.pick'
import { getAction,putAction } from '@/api/manage'

export default {
  components: {
    AvatarModal
  },
  data() {
    return {
      // cropper
      preview: {},
      option: {
        img: '/avatar2.jpg',
        info: true,
        size: 1,
        outputType: 'jpeg',
        canScale: false,
        autoCrop: true,
        // 只有自动截图开启 宽度高度才生效
        autoCropWidth: 180,
        autoCropHeight: 180,
        fixedBox: true,
        // 开启宽度和高度比例
        fixed: true,
        fixedNumber: [1, 1]
      },
      dateFormat:"YYYY-MM-DD",
      labelCol: {
        xs: { span: 24 },
        sm: { span: 5 }
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 16 }
      },
      uploadLoading: false,
      confirmLoading: false,
      headers:{},
      form:this.$form.createForm(this),
      picUrl: "",
      validatorRules: {
        realname: { rules: [{ required: true, message: '请输入用户名称!' }] },
        phone: { rules: [{ validator: this.validatePhone }] },
        email: {
          rules: [
            {
              validator: this.validateEmail
            }
          ]
        }
      },
      userInfo: {},
      url: {
        fileUpload: window._CONFIG['domianURL'] + '/sys/common/upload',
        userInfo: "/teaching/user/info",
        userHonor: "/teaching/teachingUserHonor/userHonor",
        editUser: "/teaching/user/edit"
      }
    }
  },
  computed:{
      uploadAction:function () {
        return this.url.fileUpload;
      }
    },
    
  created() {
    this.getUserInfo()
  },
  methods: {
    moment,
    getUserInfo() {
      var that = this
      getAction(this.url.userInfo).then(res => {
        if (res.success) {
          that.userInfo = res.result
          that.$nextTick(() => {
            that.form.setFieldsValue(pick(that.userInfo, 'username', 'sex', 'realname', 'email', 'phone'))
          })
          //that.loadUserHonor(that.userInfo.id)
        }
      })
    },
    loadUserHonor(userId) {
      getAction(this.url.userHonor, { userId: userId }).then(res => {
        console.log(res)
        if (res.success) {
          this.selectedHonor = res.result
        } else {
          console.log(res.message)
        }
      })
    },
    handleSubmit() {
      const that = this
      // that.form.validateFields((err, values) => {
      //   console.log(err) 
      //   if (!err) {
          var values = that.form.getFieldsValue();
          console.log(values)
          that.confirmLoading = true
          let avatar = that.userInfo.avatar
          if (!values.birthday) {
            values.birthday = ''
          } else {
            values.birthday = values.birthday.format(this.dateFormat)
          }
          let formData = Object.assign(this.userInfo, values)
          formData.avatar = avatar
          // that.addDepartsToUser(that,formData); // 调用根据当前用户添加部门信息的方法
          let obj = putAction(that.url.editUser, formData).then(res => {
              if (res.success) {
                that.$message.success(res.message)
                that.$emit('ok')
              } else {
                that.$message.warning(res.message)
              }
            })
            .finally(() => {
              that.confirmLoading = false
            })
      //   }
      // })
    },
    validatePhone(rule, value, callback) {
      if (!value) {
        callback()
      } else {
        if (new RegExp(/^1[3|4|5|7|8][0-9]\d{8}$/).test(value)) {
          var params = {
            tableName: 'sys_user',
            fieldName: 'phone',
            fieldVal: value,
            dataId: this.userId
          }
          duplicateCheck(params).then(res => {
            if (res.success) {
              callback()
            } else {
              callback('手机号已存在!')
            }
          })
        } else {
          callback('请输入正确格式的手机号码!')
        }
      }
    },
    validateEmail(rule, value, callback) {
      if (!value) {
        callback()
      } else {
        if (
          new RegExp(
            /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
          ).test(value)
        ) {
          var params = {
            tableName: 'sys_user',
            fieldName: 'email',
            fieldVal: value,
            dataId: this.userId
          }
          duplicateCheck(params).then(res => {
            console.log(res)
            if (res.success) {
              callback()
            } else {
              callback('邮箱已存在!')
            }
          })
        } else {
          callback('请输入正确格式的邮箱!')
        }
      }
    },
    normFile(e) {
      console.log('Upload event:', e)
      if (Array.isArray(e)) {
        return e
      }
      return e && e.fileList
    },
    beforeUpload: function(file) {
      var fileType = file.type
      if (fileType.indexOf('image') < 0) {
        this.$message.warning('请上传图片')
        return false
      }
      //TODO 验证文件大小
    },
    handleChange(info) {
      this.picUrl = ''
      if (info.file.status === 'uploading') {
        this.uploadLoading = true
        return
      }
      if (info.file.status === 'done') {
        var response = info.file.response
        this.uploadLoading = false
        console.log(response)
        if (response.success) {
          this.model.avatar = response.message
          this.picUrl = 'Has no pic url yet'
        } else {
          this.$message.warning(response.message)
        }
      }
    },
    getAvatarView() {
      return this.url.imgerver + '/' + this.model.avatar
    }
  }
}
</script>

<style lang="less" scoped>

.avatar-upload-wrapper {
  height: 200px;
  width: 100%;
}

.ant-upload-preview {
  position: relative;
  margin: 0 auto;
  width: 100%;
  max-width: 180px;
  border-radius: 50%;
  box-shadow: 0 0 4px #ccc;

  .upload-icon {
    position: absolute;
    top: 0;
    right: 10px;
    font-size: 1.4rem;
    padding: 0.5rem;
    background: rgba(222, 221, 221, 0.7);
    border-radius: 50%;
    border: 1px solid rgba(0, 0, 0, 0.2);
  }
  .mask {
    opacity: 0;
    position: absolute;
    background: rgba(0, 0, 0, 0.4);
    cursor: pointer;
    transition: opacity 0.4s;

    &:hover {
      opacity: 1;
    }

    i {
      font-size: 2rem;
      position: absolute;
      top: 50%;
      left: 50%;
      margin-left: -1rem;
      margin-top: -1rem;
      color: #d6d6d6;
    }
  }

  img,
  .mask {
    width: 100%;
    max-width: 180px;
    height: 100%;
    border-radius: 50%;
    overflow: hidden;
  }
}
</style>
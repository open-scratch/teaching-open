<template>
  <div class="tinymce-editor">
    <editor v-if="!reloading" v-model="myValue" :init="init" :disabled="disabled" @onClick="onClick"> </editor>
  </div>
</template>

<script>
import Vue from 'vue'
import { ACCESS_TOKEN } from '@/store/mutation-types'
import tinymce from 'tinymce/tinymce'
import Editor from '@tinymce/tinymce-vue'
import Prism from 'prismjs'
import 'tinymce/themes/silver/theme'
import 'tinymce/plugins/image'
import 'tinymce/plugins/link'
import 'tinymce/plugins/media'
import 'tinymce/plugins/table'
import 'tinymce/plugins/lists'
import 'tinymce/plugins/contextmenu'
import 'tinymce/plugins/wordcount'
import 'tinymce/plugins/colorpicker'
import 'tinymce/plugins/textcolor'
import 'tinymce/plugins/fullscreen'
import 'tinymce/plugins/codesample'
import 'tinymce/plugins/code'
import 'tinymce/plugins/preview'
import 'tinymce/plugins/hr'
import 'tinymce/icons/default'
import { uploadAction, getFileAccessHttpUrl } from '@/api/manage'
import { getVmParentByName } from '@/utils/util'
import { axios } from '@/utils/request'
import { getAction, postAction } from '@/api/manage'

const UPLOAD_TARGET_LOCAL = 'local'
const UPLOAD_TARGET_DATABASE = 'database'
const UPLOAD_TARGET_QINIU = 'qiniu'
const UPLOAD_TARGET_OSS = 'oss'
const UPLOAD_TARGET_COS = 'cos'
const uuidGenerator = () => {
  var s = []
  var hexDigits = '0123456789abcdef'
  for (var i = 0; i < 36; i++) {
    s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1)
  }
  s[14] = '4' // bits 12-15 of the time_hi_and_version field to 0010
  s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1) // bits 6-7 of the clock_seq_hi_and_reserved to 01
  s[8] = s[13] = s[18] = s[23] = '-'
  var uuid = s.join('')
  return uuid
}
export default {
  components: {
    Editor,
  },
  props: {
    value: {
      type: String,
      required: false,
    },
    triggerChange: {
      type: Boolean,
      default: false,
      required: false,
    },
    disabled: {
      type: Boolean,
      default: false,
    },
    plugins: {
      type: [String, Array],
      default: 'lists image link media table textcolor wordcount contextmenu fullscreen code codesample hr preview',
    },
    toolbar: {
      type: [String, Array],
      default:
        'undo redo | formatselect | forecolor backcolor bold italic | alignleft aligncenter alignright alignjustify hr | bullist numlist outdent indent | lists link unlink image media table codesample | removeformat code | preview fullscreen',
      branding: false,
    },
    uploadTarget: {
      type: String,
      default: UPLOAD_TARGET_QINIU,
      required: false,
    },
  },
  data() {
    let that = this
    return {
      editor: null,
      //初始化配置
      init: {
        language_url: '/tinymce/langs/zh_CN.js',
        language: 'zh_CN',
        skin_url: '/tinymce/skins/lightgray',
        height: 300,
        plugins: this.plugins,
        toolbar: this.toolbar,
        branding: false,
        menubar: false,
        inline: false, //内联模式
        toolbar_drawer: false,
        codesample_languages: [
              { text: 'HTML/XML', value: 'markup' },
              { text: 'JavaScript', value: 'javascript' },
              { text: 'CSS', value: 'css' },
              { text: 'PHP', value: 'php' },
              { text: 'Ruby', value: 'ruby' },
              { text: 'Python', value: 'python' },
              { text: 'Java', value: 'java' },
              { text: 'C', value: 'c' },
              { text: 'C#', value: 'csharp' },
              { text: 'C++', value: 'cpp' }
        ],
        file_picker_types: 'media',
        init_instance_callback : function(editor){
          that.editor = editor
        },
        file_picker_callback: function (cb, value, meta) {
          if (meta.filetype == 'media') {
            let input = document.createElement('input') //创建一个隐藏的input
            input.setAttribute('type', 'file')
            input.onchange = function () {
              let file = this.files[0] //选取第一个文件
              let formData = new FormData()
              switch (that.uploadTarget) {
                case UPLOAD_TARGET_QINIU:
                  getAction(that.tokenAction.qiniu, {}).then((token_res) => {
                    if (token_res.success) {
                      formData.append('file', file, uuidGenerator() + file.name)
                      formData.append('token', token_res.result)
                      formData.append('key', uuidGenerator() + file.name)
                      uploadAction(that.uploadAction.qiniu, formData, function (progressEvent) {
                        let complete = (((progressEvent.loaded / progressEvent.total) * 100) | 0)

                        // var aaa = that.editor.notificationManager.open({
                        //   text: '正在上传中',
                        //   type: 'info',
                        //   progressBar: true,
                        // })
                        //用此设置进度条显示的数字0-100。
                        // aaa.progressBar.value(complete)
                        // console.log('上传 ' + complete)
                        // that.$message.info("已上传 " + complete)
                        if (complete < 100) {
                          that.editor.setProgressState(true) //是否显示loading状态：1（显示）0（隐藏）
                        } else {
                          that.editor.setProgressState(false)
                        }
                      })
                        .then((res) => {
                          let url = that.getDownloadUrl(res.key)
                          cb(url, { title: file.name }) //将url显示在弹框输入框中
                        })
                        .catch(() => {
                          tinymce.activeEditor.setProgressState(false)
                        })
                    } else {
                      that.$message.error(token_res.message)
                    }
                  })
                  break
                case UPLOAD_TARGET_LOCAL:
                  formData.append('file', file, uuidGenerator() + file.name)
                  formData.append('biz', 'jeditor')
                  formData.append('jeditor', '1')
                  uploadAction(that.uploadAction.local, formData).then((res) => {
                    if (res.success) {
                      if (res.message == 'local') {
                        that.$message.error('视频文件不支持上传至数据库')
                      } else {
                        let url = getFileAccessHttpUrl(res.message)
                        cb(url, { title: uuidGenerator() + file.name })
                      }
                    }
                  })
                  break
                case UPLOAD_TARGET_DATABASE:
                  that.$message.error('视频文件不支持上传至数据库')
                  break
                default:
              }
            }
            //触发点击
            input.click()
          }
        },
        images_upload_handler: (blobInfo, success) => {
          let formData = new FormData()
          switch (this.uploadTarget) {
            case UPLOAD_TARGET_QINIU:
              getAction(this.tokenAction.qiniu, {}).then((token_res) => {
                if (token_res.success) {
                  formData.append('file', blobInfo.blob(), uuidGenerator() + blobInfo.filename())
                  formData.append('token', token_res.result)
                  formData.append('key', uuidGenerator() + blobInfo.filename())
                  uploadAction(this.uploadAction.qiniu, formData).then((res) => {
                    let img = this.getDownloadUrl(res.key)
                    success(img)
                  })
                } else {
                  this.$message.error(token_res.message)
                }
              })
              break
            case UPLOAD_TARGET_LOCAL:
              formData.append('file', blobInfo.blob(), blobInfo.filename())
              formData.append('biz', 'jeditor')
              formData.append('jeditor', '1')
              uploadAction(this.uploadAction.local, formData).then((res) => {
                if (res.success) {
                  if (res.message == 'local') {
                    const img = 'data:image/jpeg;base64,' + blobInfo.base64()
                    success(img)
                  } else {
                    let img = getFileAccessHttpUrl(res.message)
                    success(img)
                  }
                }
              })
              break
            case UPLOAD_TARGET_DATABASE:
              const img = 'data:image/jpeg;base64,' + blobInfo.base64()
              success(img)
              break
            default:
          }
        },
      },
      downloadUrl: {
        local: window._CONFIG['domianURL'] + '/sys/common/download/',
        qiniu: window._CONFIG['qn_base'],
      },
      uploadAction: {
        local: window._CONFIG['domianURL'] + '/sys/common/upload',
        qiniu: '//upload-' + window._CONFIG['qn_area'] + '.qiniup.com',
        oss: '',
        cos: '',
      },
      tokenAction: {
        qiniu: '/common/qiniu/getToken',
      },
      uploadToken: '',
      myValue: this.value,
      reloading: false,
    }
  },
  mounted() {
    this.initATabsChangeAutoReload()
    const token = Vue.ls.get(ACCESS_TOKEN)
    this.headers = { 'X-Access-Token': token }
    tinymce.init(this.init)
    // switch (this.uploadTarget) {
    //   case UPLOAD_TARGET_QINIU:
    //     this.getQiniuToken()
    //     break
    //   default:
    // }
  },
  methods: {
    //获取下载链接
    getDownloadUrl(key) {
      switch (this.uploadTarget) {
        case UPLOAD_TARGET_LOCAL:
          return this.downloadUrl.local + key
        case UPLOAD_TARGET_QINIU:
          return this.downloadUrl.qiniu + key
        case UPLOAD_TARGET_OSS:
          return this.downloadUrl.oss + key
        case UPLOAD_TARGET_COS:
          return this.downloadUrl.cos + key
        default:
          return this.uploadAction.local + key
      }
    },
    //获取上传目标地址
    getUploadAction() {
      switch (this.uploadTarget) {
        case UPLOAD_TARGET_LOCAL:
          return this.uploadAction.local
        case UPLOAD_TARGET_QINIU:
          return this.uploadAction.qiniu
        case UPLOAD_TARGET_OSS:
          return this.uploadAction.oss
        case UPLOAD_TARGET_COS:
          return this.uploadAction.cos
        default:
          return this.uploadAction.local
      }
    },
    //获取要上传数据
    // getUploadData(file){
    //   console.log(file)
    //   var suffix = file.name.split(".").pop()
    //   switch(this.uploadTarget){
    //     case UPLOAD_TARGET_LOCAL:
    //       return {'isup':1,'bizPath':this.bizPath};
    //     case UPLOAD_TARGET_QINIU:
    //       return {'token': this.uploadToken, 'key': uuidGenerator() + '.' + suffix};
    //     case UPLOAD_TARGET_OSS:
    //       return {};
    //     case UPLOAD_TARGET_COS:
    //       return {};
    //     default:
    //       return {'isup':1,'bizPath':this.bizPath};
    //   }
    // },
    //获取七牛TOKEN
    // getQiniuToken() {
    //   getAction(this.tokenAction.qiniu, {}).then((res) => {
    //     if (res.success) {
    //       this.uploadToken = res.result
    //     } else {
    //       this.$message.error(res.message)
    //     }
    //   })
    // },
    saveToDB: function (fileName, filePath, fileLocation, fileTag) {
      return postAction('/system/sysFile/add', {
        fileName: fileName,
        filePath: filePath,
        fileLocation: fileLocation,
        fileTag: fileTag,
      })
    },
    delFromBD(filePath) {
      return getAction('/system/sysFile/deleteByPath', {
        filePath: filePath,
      })
    },
    reload() {
      this.reloading = true
      this.$nextTick(() => (this.reloading = false))
    },

    onClick(e) {
      this.$emit('onClick', e, tinymce)
    },
    //可以添加一些自己的自定义事件，如清空内容
    clear() {
      this.myValue = ''
    },

    /**
     * 自动判断父级是否是 <a-tabs/> 组件，然后添加事件监听，自动触发reload()
     *
     * 由于 tabs 组件切换会导致 tinymce 无法输入，
     * 只有重新加载才能使用（无论是vue版的还是jQuery版tinymce都有这个通病）
     */
    initATabsChangeAutoReload() {
      // 获取父级
      let tabs = getVmParentByName(this, 'ATabs')
      let tabPane = getVmParentByName(this, 'ATabPane')
      if (tabs && tabPane) {
        // 用户自定义的 key
        let currentKey = tabPane.$vnode.key
        // 添加事件监听
        tabs.$on('change', (key) => {
          // 切换到自己时执行reload
          if (currentKey === key) {
            this.reload()
          }
        })
      } else {
        //update--begin--autor:wangshuai-----date:20200724------for：富文本编辑器切换tab无法修改------
        let tabLayout = getVmParentByName(this, 'TabLayout')
        tabLayout.excuteCallback(() => {
          this.reload()
        })
        //update--begin--autor:wangshuai-----date:20200724------for：文本编辑器切换tab无法修改------
      }
    },
  },
  watch: {
    value(newValue) {
      this.myValue = newValue == null ? '' : newValue
    },
    myValue(newValue) {
      if (this.triggerChange) {
        this.$emit('change', newValue)
      } else {
        this.$emit('input', newValue)
      }
    },
  },
}
</script>
<style scoped>
</style>
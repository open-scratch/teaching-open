<template>
  <a-upload
    name="file"
    :multiple="multiple"
    :action="getUploadAction()"
    :headers="headers"
    :data="getUploadData"
    :fileList="fileList"
    :beforeUpload="beforeUpload"
    @change="handleChange">
    <a-button v-if="showButton">
      <a-icon type="upload" />{{ text }}
    </a-button>
  </a-upload>
</template>

<script>

  import Vue from 'vue'
  import { ACCESS_TOKEN } from "@/store/mutation-types"
  import {getAction , postAction} from "@/api/manage"

  const FILE_TYPE_ALL = "all"
  const FILE_TYPE_IMG = "image"
  const FILE_TYPE_TXT = "file"

  const UPLOAD_TARGET_LOCAL = "local"
  const UPLOAD_TARGET_QINIU = "qiniu"
  const UPLOAD_TARGET_OSS = "oss"
  const UPLOAD_TARGET_COS = "cos"

  const uidGenerator=()=>{
    return '-'+parseInt(Math.random()*10000+1,10);
  }
  const uuidGenerator=()=>{
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
  const getFileName=(path)=>{
    if(path.lastIndexOf("\\")>=0){
      let reg=new RegExp("\\\\","g");
      path = path.replace(reg,"/");
    }
    return path.substring(path.lastIndexOf("/")+1);
  }
  export default {
    name: 'JUpload',
    data(){
      return {
        urlDownload: "",
        downloadUrl:{
          local: window._CONFIG['domianURL'] + "/sys/common/download/",
          qiniu: window._CONFIG['qn_base']
        },
        uploadAction:{
          local:window._CONFIG['domianURL']+"/sys/common/upload",
          qiniu: "//upload-z0.qiniup.com",
          oss: "",
          cos: ""
        },
        tokenAction: {
          qiniu: "/common/qiniu/getToken"
        },
        headers:{},
        fileList: [],
        uploadToken: ''
      }
    },
    props:{
      text:{
        type:String,
        required:false,
        default:"点击上传"
      },
      fileType:{
        type:String,
        required:false,
        default:FILE_TYPE_ALL
      },
      //显示上传按钮
      showButton:{
        type: Boolean,
        default: true
      },
      //最大文件数量
      maxFile:{
        type: Number,
        required: false,
        default: 1
      },
      maxFileSize:{
        type: Number,
        required: false,
        default: 1000
      },
      // 文件上传目标， 默认本地
      uploadTarget:{
        type: String,
        required: false,
        default:UPLOAD_TARGET_LOCAL
      },
      /*这个属性用于控制文件上传的业务路径*/
      bizPath:{
        type:String,
        required:false,
        default:"temp"
      },
      value:{
        type:String,
        required:false
      },
      //此属性被废弃了
      triggerChange:{
        type: Boolean,
        required: false,
        default: false
      },
      //是否支持文件多选
      multiple:{
        type: Boolean,
        required: false,
        default: false
      }
    },
    watch:{
      value(val){
        this.initFileList(val)
      }
    },
    created(){
      const token = Vue.ls.get(ACCESS_TOKEN);
      this.headers = {"X-Access-Token":token}
      switch(this.uploadTarget){
          case UPLOAD_TARGET_QINIU:
            this.getQiniuToken();
            break;
          default:
        }
    },

    methods:{
      //获取上传目标地址
      getUploadAction(){
        switch(this.uploadTarget){
          case UPLOAD_TARGET_LOCAL:
            return this.uploadAction.local;
          case UPLOAD_TARGET_QINIU:
            return this.uploadAction.qiniu;
          case UPLOAD_TARGET_OSS:
            return this.uploadAction.oss;
          case UPLOAD_TARGET_COS:
            return this.uploadAction.cos;
          default:
              return this.uploadAction.local
        }
      },
      //获取下载链接
      getDownloadUrl(key){
        switch(this.uploadTarget){
          case UPLOAD_TARGET_LOCAL:
            return this.downloadUrl.local + key;
          case UPLOAD_TARGET_QINIU:
            return this.downloadUrl.qiniu + key;
          case UPLOAD_TARGET_OSS:
            return this.downloadUrl.oss + key;
          case UPLOAD_TARGET_COS:
            return this.downloadUrl.cos + key;
          default:
              return this.uploadAction.local + key;
        }
      },
      //获取要上传数据
      getUploadData(file){
        console.log(file)
        var suffix = file.name.split(".").pop()
        switch(this.uploadTarget){
          case UPLOAD_TARGET_LOCAL:
            return {'isup':1,'bizPath':this.bizPath};
          case UPLOAD_TARGET_QINIU:
            return {'token': this.uploadToken, 'key': uuidGenerator() + '.' + suffix};
          case UPLOAD_TARGET_OSS:
            return {};
          case UPLOAD_TARGET_COS:
            return {};
          default:
              return {'isup':1,'bizPath':this.bizPath};
        } 
      },
      //获取七牛TOKEN
      getQiniuToken(){
        getAction(this.tokenAction.qiniu, {}).then(res => {
          if(res.success){
            this.uploadToken = res.result
          }else{
            this.$message.error(res.message)
          }
        })
      },
      //从value生成文件列表
      initFileList(paths){
        if(!paths || paths.length==0){
          //return [];
          // update-begin- --- author:os_chengtgen ------ date:20190729 ---- for:issues:326,Jupload组件初始化bug
          this.fileList = [];
          return;
          // update-end- --- author:os_chengtgen ------ date:20190729 ---- for:issues:326,Jupload组件初始化bug
        }
        let fileList = [];
        let arr = paths.split(",")
        for(var a=0;a<arr.length;a++){
          fileList.push({
            uid:uidGenerator(),
            name:getFileName(arr[a]),
            status: 'done',
            url: this.getDownloadUrl(arr[a]),
            response:{
              status:"history",
              message:arr[a]
            }
          })
        }
        console.log("initFileList")
        console.log(fileList)
        this.fileList = fileList
      },
      handlePathChange(){
        let uploadFiles = this.fileList
        let path = ''
        if(!uploadFiles || uploadFiles.length==0){
          path = ''
        }
        let arr = [];

        for(var a=0;a<uploadFiles.length;a++){
          arr.push(uploadFiles[a].response.message)
        }
        if(arr.length>0){
          path = arr.join(",")
        }
        this.$emit('change', path);
      },
      //上传之前
      beforeUpload(file){
        var fileType = file.type;
        if(fileType===FILE_TYPE_IMG){
          if(fileType.indexOf('image')<0){
            this.$message.warning('请上传图片');
            return false;
          }
        }else if(fileType===FILE_TYPE_TXT){
          if(fileType.indexOf('image')>=0){
            this.$message.warning('请上传文件');
            return false;
          }
        }
        if(file.size > this.maxFileSize * 1024 * 1024){
          this.$message.warning("文件超过"+this.maxFileSize+"MB")
          return false
        }
        
        return true
      },
      saveToDB: function(fileName, filePath, fileLocation, fileTag){
          return postAction("/system/sysFile/add", {
            fileName: fileName,
            filePath: filePath,
            fileLocation: fileLocation,
            fileTag: fileTag
          })
      },
      delFromBD(filePath){
          return getAction("/system/sysFile/deleteByPath", {
            filePath: filePath
          })
      },
      //上传完毕后文件列表发送变化
      handleChange(info) {
        
        let fileList = info.fileList
        console.log("--文件列表改变--")
        console.log(fileList)
        fileList = fileList.slice(-this.maxFile);

        if(info.file.status==='done'){
          switch(this.uploadTarget){
            case UPLOAD_TARGET_LOCAL:
              if(info.file.response.success){
                fileList = fileList.map((file) => {
                  if (file.response) {
                    file.url = this.getDownloadUrl(file.response.message)
                    this.saveToDB(file.name,file.response.key,1,"后台上传")
                  }
                  return file;
                });
              }
            case UPLOAD_TARGET_QINIU:
              if(info.file.response.key){
                fileList = fileList.map((file) => {
                  if (file.response) {
                    file.response.message = file.response.key
                    file.url = this.getDownloadUrl(file.response.key)
                    this.saveToDB(file.name,file.response.key,2,"后台上传")
                  }
                  return file;
                });
              }
          }

          this.$message.success(`${info.file.name} 上传成功!`);
        }else if (info.file.status === 'error') {
          this.$message.error(`${info.file.name} 上传失败.`);
        }else if(info.file.status === 'removed'){
          this.handleDelete(info.file)
        }
        this.fileList = fileList
        if(info.file.status==='done' || info.file.status === 'removed'){
          this.handlePathChange()
        }
        
        console.log(fileList)
        console.log("--文件列表改变结束--")
      },
      handleDelete(file){
        this.delFromBD(file.response.message)
        console.log(file)
      },
    },
    model: {
      prop: 'value',
      event: 'change'
    }
  }
</script>

<style scoped>

</style>
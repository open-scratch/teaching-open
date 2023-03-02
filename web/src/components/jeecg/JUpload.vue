<template>
  <div :id="containerId" style="position: relative">

    <!--  ---------------------------- begin 图片左右换位置 ------------------------------------- -->
    <div class="movety-container" :style="{top:top+'px',left:left+'px',display:moveDisplay}" style="padding:0 8px;position: absolute;z-index: 91;height: 32px;width: 104px;text-align: center;">
      <div :id="containerId+'-mover'" :class="showMoverTask?'uploadty-mover-mask':'movety-opt'" style="margin-top: 12px">
        <a @click="moveLast" style="margin: 0 5px;"><a-icon type="arrow-left" style="color: #fff;font-size: 16px"/></a>
        <a @click="moveNext" style="margin: 0 5px;"><a-icon type="arrow-right" style="color: #fff;font-size: 16px"/></a>
      </div>
    </div>
    <!--  ---------------------------- end 图片左右换位置 ------------------------------------- -->

    <a-upload
      name="file"
      :multiple="multiple"
      :action="getUploadAction()"
      :headers="headers"
      :data="getUploadData"
      :fileList="fileList"
      :beforeUpload="beforeUpload"
      @change="handleChange"
      :disabled="disabled"
      :returnUrl="returnUrl"
      :listType="complistType"
      @preview="handlePreview"
      :class="{'uploadty-disabled':disabled}">
      <template>
        <div v-if="isImageComp">
          <a-icon type="plus" />
          <div class="ant-upload-text">{{ text }}</div>
        </div>
        <a-button v-else-if="fileList.length==0 || buttonVisible">
         <a-icon type="upload" />{{ text }}
        </a-button>
      </template>
    </a-upload>
    <a-modal :visible="previewVisible" :footer="null" @cancel="handleCancel">
      <img alt="example" style="width: 100%" :src="previewImage" />
    </a-modal>
  </div>
</template>

<script>

  import Vue from 'vue'
  import { ACCESS_TOKEN,SYS_CONFIG } from "@/store/mutation-types"
  import {getAction , postAction, deleteAction} from "@/api/manage"
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
    uuid = uuid.replace(/-/g,"")
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
          local: this.$store.getters.sysConfig.staticDomain + '/',
          qiniu: this.$store.getters.sysConfig.qiniuDomain + '/'
        },
        uploadAction:{
          local: window._CONFIG['domianURL'] + "/sys/common/upload",
          qiniu: "//upload-" + this.$store.getters.sysConfig.qiniuArea + ".qiniup.com",
          oss: "",
          cos: ""
        },
        tokenAction: {
          qiniu: "/common/qiniu/getToken"
        },
        headers:{},
        fileList: [],
        uploadToken: '',
        uploadKey: {},
        newFileList: [],
        uploadGoOn:true,
        previewVisible: false,
        //---------------------------- begin 图片左右换位置 -------------------------------------
        previewImage: '',
        containerId:'',
        top:'',
        left:'',
        moveDisplay:'none',
        showMoverTask:false,
        moverHold:false,
        currentImg:''
        //---------------------------- end 图片左右换位置 -------------------------------------
      }
    },
    props:{
      //按钮文本
      text:{
        type:String,
        required:false,
        default:"点击上传"
      },
      //文件类型
      fileType:{
        type:String,
        required:false,
        default:FILE_TYPE_ALL
      },
      //上传到的路径
      uploadPath: {
        type: String,
        require: false,
        default: ""
      },
      //文件名，不填则自动生成uuid作为文件名
      fileName: {
        type: String,
        require: false
      },
      //最大文件尺寸（MB）
      maxFileSize:{
        type: Number,
        required: false,
        default: 1000
      },
      // 文件上传目标， 默认本地
      uploadTarget:{
        type: String,
        required: false,
        default: Vue.ls.get(SYS_CONFIG).uploadType
      },
      /*这个属性用于控制文件上传的业务路径*/
      bizPath:{
        type:String,
        required:false,
        default:"temp"
      },
      //上传后的文件key
      value:{
        type:String,
        required:false
      },
      // update-begin- --- author:wangshuai ------ date:20190929 ---- for:Jupload组件增加是否能够点击
      disabled:{
        type:Boolean,
        required:false,
        default: false
      },
      //是否支持文件多选
      multiple:{
        type: Boolean,
        required: false,
        default: false
      },
      /**
       * update -- author:lvdandan -- date:20190219 -- for:Jupload组件增加是否返回url，
       * true：仅返回url
       * false：返回fileName filePath fileSize
       */
      returnUrl:{
        type:Boolean,
        required:false,
        default: true
      },
      //最大文件数量，0不限
      number:{
        type:Number,
        required:false,
        default: 0
      },
      //是否自动删除文件
      autoDelete:{
        type:Boolean,
        required:false,
        default: true
      },
      //上传按钮是否显示
      buttonVisible:{
        type:Boolean,
        required:false,
        default: true
      },
    },
    watch:{
      value:{
        immediate: true,
        handler() {
          let val = this.value
          if (val instanceof Array) {
            if(this.returnUrl){
              this.initFileList(val.join(','))
            }else{
              this.initFileListArr(val);
            }
          } else {
            this.initFileList(val)
          }
        }
      }
    },
    computed:{
      isImageComp(){
        return this.fileType === FILE_TYPE_IMG
      },
      complistType(){
        return this.fileType === FILE_TYPE_IMG?'picture-card':'text'
      }
    },
    created(){
      const token = Vue.ls.get(ACCESS_TOKEN);
      this.headers = {"X-Access-Token":token}
      //---------------------------- begin 图片左右换位置 -------------------------------------
      this.containerId = 'container-ty-'+new Date().getTime();
      //---------------------------- end 图片左右换位置 -------------------------------------
    },

    methods:{
      //获取上传目标地址
      getUploadAction(){
        switch(this.uploadTarget){
          case UPLOAD_TARGET_LOCAL:
            console.log(this.uploadAction.local);
            return this.uploadAction.local;
          case UPLOAD_TARGET_QINIU:
            console.log(this.uploadAction.qiniu);
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
        console.log(key);
        console.log(this.uploadTarget);
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
        switch(this.uploadTarget){
          case UPLOAD_TARGET_LOCAL:
            return {'isup':1,'bizPath':this.bizPath};
          case UPLOAD_TARGET_QINIU:
            return {'token': this.uploadToken, 'key': this.uploadKey[file.uid]};
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
        return new Promise((resolve, reject) => {
          getAction(this.tokenAction.qiniu, {}).then(res => {
            if(res.success){
              this.uploadToken = res.result
              resolve()
              return;
            }else{
              this.$message.error(res.message)
              reject()
            }
          })
        });
      },
      //获取文件key
      getFileFullName(suffix){
        return this.uploadPath + 
        (this.fileName ? this.fileName : uuidGenerator()) + '.' + suffix
      },
      //保存文件记录
      saveToDB: function(fileName, filePath, fileLocation, fileTag){
          return postAction("/system/sysFile/add", {
            fileName: fileName,
            filePath: filePath,
            fileLocation: fileLocation,
            fileTag: fileTag
          }).then(res=>{
            if(res.success){
              this.$emit("saved", res.result)
            }
          })
      },
      //删除文件记录
      delFromBD(filePath){
          return deleteAction("/system/sysFile/deleteByPath", {
            filePath: filePath
          })
      },
      initFileListArr(val){
        if(!val || val.length==0){
          this.fileList = [];
          return;
        }
        let fileList = [];
        for(var a=0;a<val.length;a++){
          let url = getDownloadUrl(val[a].filePath);
          fileList.push({
            uid:uidGenerator(),
            name:val[a].fileName,
            status: 'done',
            url: url,
            response:{
              status:"history",
              message:val[a].filePath
            }
          })
        }
        this.fileList = fileList
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
          // let url = getFileAccessHttpUrl(arr[a]);
          let url = this.getDownloadUrl(arr[a]);
          console.log(url);
          fileList.push({
            uid:uidGenerator(),
            name:getFileName(arr[a]),
            status: 'done',
            url: url,
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
          // update-begin-author:lvdandan date:20200603 for:【TESTA-514】【开源issue】多个文件同时上传时，控制台报错
          if(uploadFiles[a].status === 'done' ) {
            arr.push(uploadFiles[a].response.message)
          }else{
            return;
          }
          // update-end-author:lvdandan date:20200603 for:【TESTA-514】【开源issue】多个文件同时上传时，控制台报错
        }
        if(arr.length>0){
          path = arr.join(",")
        }
        this.$emit('change', path);
      },
      //上传之前
      beforeUpload(file){
        this.uploadGoOn=true
        var fileType = file.type;
        
        if(this.fileType===FILE_TYPE_IMG){
          if(fileType.indexOf('image')<0){
            this.$message.warning('请上传图片');
            this.uploadGoOn=false
            return false;
          }
        }
        if(file.size > this.maxFileSize * 1024 * 1024){
          this.$message.warning("文件超过"+this.maxFileSize+"MB")
          return false
        }
        //获取文件key
        let suffix = file.name.split(".")
        if(suffix.length>1){suffix = suffix.pop()}else{suffix = ""}
        this.uploadKey[file.uid] = this.getFileFullName(suffix)
        this.$emit("selected", this.uploadKey[file.uid], file);
        //获取上传token
        switch(this.uploadTarget){
          case UPLOAD_TARGET_QINIU:
            return this.getQiniuToken();
          default:
            return true
        }
      },
      //上传完毕后文件列表发送变化
      handleChange(info) {
        if(!info.file.status && this.uploadGoOn === false){
          info.fileList.pop();
        }
        let fileList = info.fileList
        console.log("--文件列表改变--")
        console.log(info)
        if(this.number>0 && fileList.length>this.number){
          //删除超出部分文件
          this.handleDelete(fileList[0])
          fileList = fileList.slice(-this.number);
        }
        if(info.file.status==='done'){
          switch(this.uploadTarget){
            case UPLOAD_TARGET_LOCAL:
              if(info.file.response.success){
                fileList = fileList.map((file) => {
                  if (file.response && file.response.message) {
                    file.url = this.getDownloadUrl(file.response.message)
                    this.saveToDB(file.name,file.response.message,1,"后台上传")
                  }
                  return file;
                });
              }
            case UPLOAD_TARGET_QINIU:
              if(info.file.response.key){ //当上传成功后才会有key
                fileList = fileList.map((file) => {
                  if (file.response && file.response.key) {
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
          //returnUrl为true时仅返回文件路径
          if(this.returnUrl){
            this.handlePathChange()
          }else{
            //returnUrl为false时返回文件名称、文件路径及文件大小
            this.newFileList = [];
            for(var a=0;a<fileList.length;a++){
              // update-begin-author:lvdandan date:20200603 for:【TESTA-514】【开源issue】多个文件同时上传时，控制台报错
              if(fileList[a].status === 'done' ) {
                var fileJson = {
                  fileName:fileList[a].name,
                  filePath:fileList[a].response.message,
                  fileSize:fileList[a].size
                };
                this.newFileList.push(fileJson);
              }else{
                return;
              }
              // update-end-author:lvdandan date:20200603 for:【TESTA-514】【开源issue】多个文件同时上传时，控制台报错
            }
            this.$emit('change', this.newFileList);
          }
        }
        
        console.log(fileList)
        console.log("--文件列表改变结束--")
      },
      handleDelete(file){
        console.log("删除文件");
        if(this.autoDelete){
          this.delFromBD(file.response.message)
        }
        this.$emit('delete', file.response.message)
        console.log(file)
      },
      handlePreview(file){
        if(this.fileType === FILE_TYPE_IMG){
          this.previewImage = file.url || file.thumbUrl;
          this.previewVisible = true;
        }else{
          location.href=file.url
        }
      },
      handleCancel(){
        this.previewVisible = false;
      },
      //---------------------------- begin 图片左右换位置 -------------------------------------
      moveLast(){
        //console.log(ev)
        //console.log(this.fileList)
        //console.log(this.currentImg)
        let index = this.getIndexByUrl();
        if(index==0){
          this.$message.warn('未知的操作')
        }else{
          let curr = this.fileList[index].url;
          let last = this.fileList[index-1].url;
          let arr =[]
          for(let i=0;i<this.fileList.length;i++){
            if(i==index-1){
              arr.push(curr)
            }else if(i==index){
              arr.push(last)
            }else{
              arr.push(this.fileList[i].url)
            }
          }
          this.currentImg = last
          this.$emit('change',arr.join(','))
        }
      },
      moveNext(){
        let index = this.getIndexByUrl();
        if(index==this.fileList.length-1){
          this.$message.warn('已到最后~')
        }else{
          let curr = this.fileList[index].url;
          let next = this.fileList[index+1].url;
          let arr =[]
          for(let i=0;i<this.fileList.length;i++){
            if(i==index+1){
              arr.push(curr)
            }else if(i==index){
              arr.push(next)
            }else{
              arr.push(this.fileList[i].url)
            }
          }
          this.currentImg = next
          this.$emit('change',arr.join(','))
        }
      },
      getIndexByUrl(){
        for(let i=0;i<this.fileList.length;i++){
          if(this.fileList[i].url === this.currentImg || encodeURI(this.fileList[i].url) === this.currentImg){
            return i;
          }
        }
        return -1;
      }
    },
    mounted(){
      const moverObj = document.getElementById(this.containerId+'-mover');
      moverObj.addEventListener('mouseover',()=>{
        this.moverHold = true
        this.moveDisplay = 'block';
      });
      moverObj.addEventListener('mouseout',()=>{
        this.moverHold = false
        this.moveDisplay = 'none';
      });
      let picList = document.getElementById(this.containerId)?document.getElementById(this.containerId).getElementsByClassName('ant-upload-list-picture-card'):[];
      if(picList && picList.length>0){
        picList[0].addEventListener('mouseover',(ev)=>{
          ev = ev || window.event;
          let target = ev.target || ev.srcElement;
          if('ant-upload-list-item-info' == target.className){
            this.showMoverTask=false
            let item = target.parentElement
            this.left = item.offsetLeft
            this.top=item.offsetTop+item.offsetHeight-50;
            this.moveDisplay = 'block';
            this.currentImg = target.getElementsByTagName('img')[0].src
          }

        });

        picList[0].addEventListener('mouseout',(ev)=>{
          ev = ev || window.event;
          let target = ev.target || ev.srcElement;
          //console.log('移除',target)
          if('ant-upload-list-item-info' == target.className){
            this.showMoverTask=true
            setTimeout(()=>{
              if(this.moverHold === false)
                this.moveDisplay = 'none';
            },100)
          }
          if('ant-upload-list-item ant-upload-list-item-done' == target.className || 'ant-upload-list ant-upload-list-picture-card'== target.className){
            this.moveDisplay = 'none';
          }
        })
        //---------------------------- end 图片左右换位置 -------------------------------------
      }
    },
    model: {
      prop: 'value',
      event: 'change'
    }
  }
</script>

<style lang="less">
.uploadty-disabled{
  .ant-upload-list-item {
    .anticon-close{
      display: none;
    }
    .anticon-delete{
      display: none;
    }
  }
}
  //---------------------------- begin 图片左右换位置 -------------------------------------
  .uploadty-mover-mask{
    background-color: rgba(0, 0, 0, 0.5);
    opacity: .8;
    color: #fff;
    height: 28px;
    line-height: 28px;
  }
  //---------------------------- end 图片左右换位置 -------------------------------------
</style>
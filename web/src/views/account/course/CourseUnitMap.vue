<template>
  <div class="account-settings-info-view">
      <div :style="{background: 'url(' + getQiniuFile(courseInfo.courseMap) + ') no-repeat', backgroundSize:'auto', height: '1000px'}">
        <div v-for="unit in unitList" :key="unit.id" class="unit" 
          :style="{left: unit.mapX-25+'px', top: unit.mapY-25+'px'}"
          @click="viewUnit(unit)">
            <i class="flag"></i>
            <div class="unit-title">{{unit.unitName}}</div>
        </div>
        <unitView-modal ref="unitViewModal"/>
      </div>
  </div>
</template>

<script>

 import { getAction } from '@/api/manage'
 import UnitViewModal from './modules/UnitViewModal'

  export default {
    components: {
        UnitViewModal
    },
    data () {
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
        courseInfo: {},
        unitList:[],
        url:{
            courseInfo: "/teaching/teachingCourse/queryById",
            unitList: "/teaching/teachingCourseUnit/list"
        },
        visible : false,
        unit: {}
      }
    },
    created(){
        let courseId = this.$route.query.id
        console.log("courseId"+courseId)
        if(courseId){
            this.getCourseInfo(courseId)
            this.getUnitList(courseId)
        }
    },
    methods: {
        getCourseInfo(courseId){
            getAction(this.url.courseInfo, {id: courseId}).then(res=>{
                console.log(res)
                if(res.success){
                    this.courseInfo = res.result
                    this.$route.meta.title = "我的课程-" + this.courseInfo.courseName
                    this.courseInfo.map = this.getQiniuFile(this.courseInfo.map)
                }else{

                }
            })
        },
        getUnitList(courseId){
            getAction(this.url.unitList, {courseId: courseId, pageNo: 1, pageSize:99}).then(res=>{
                console.log(res)
                if(res.success){
                    this.unitList = res.result.records
                }else{

                }
            })
        },
        viewUnit(unit){
          console.log(unit);
          
          this.$refs.unitViewModal.visible = true;
          this.$refs.unitViewModal.unit = unit
        },
        getQiniuFile(text){
          if(!text){
            // this.$message.warning("未知的文件")
            return;
          }
          if(text.indexOf(",")>0){
            text = text.substring(0,text.indexOf(","))
          }
          return window._CONFIG['qn_base'] +text;
        },
    }
  }
</script>

<style lang="less" scoped>

  .avatar-upload-wrapper {
    height: 200px;
    width: 100%;
  }

  .unit{
    width: 50px;
    height: 0;
    position: relative;
    display: block;
    .flag{
        display: block;
        width: 64px;
        height: 64px;
        background: url("/img/position.png") no-repeat;
        background-size: 64px 64px;
        // margin: 10px 0;
        // border-radius: 0px 18px 31px 18px;
        // transform: rotate(225deg);
        // background: radial-gradient(#aedbe6, #57b0f3d4, #128fec);;
        // -webkit-box-shadow:rgba(66,140,240,0.5) 0px 10px 16px;
    }
    .unit-title{
        background-color: #52c41ab3;
        display: block; 
        width: 64px;
        padding: .4em .6em .3em;
        font-size: 75%;
        font-weight: 700;
        line-height: 1;
        color: #fff;
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: .25em;
    }
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
      background: rgba(0,0,0,0.4);
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

    img, .mask {
      width: 100%;
      max-width: 180px;
      height: 100%;
      border-radius: 50%;
      overflow: hidden;
    }
  }
</style>
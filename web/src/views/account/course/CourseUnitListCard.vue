<template>
  <div class="app-list">
    <a-card v-for="item in dataSource" :key="item.id" @click="viewUnit(item)">
      <a-card-meta>
          <div style="margin-bottom: 3px" slot="title">
            <a-icon type="right-circle"/>&nbsp;&nbsp;
            {{ item.unitName }}
          </div>
          <div class="meta-cardInfo" slot="description">
            <img :src="getFileAccessHttpUrl(item.unitCover)" height="25px" style="width:100%;height:100%;"/>
          </div>
      </a-card-meta>
    </a-card>
    <unitView-modal ref="unitViewModal"/>
  </div>
</template>
<script>
import { getAction,getFileAccessHttpUrl } from '@/api/manage'
 import UnitViewModal from './modules/UnitViewModal'
export default {
  name: 'MineCourseList',
  components: {
    UnitViewModal
  },
  data() {
    return {
      dataSource: [],
      courseInfo: {},
      url:{
        courseInfo: "/teaching/teachingCourse/queryById",
        unitList: "/teaching/teachingCourseUnit/mineUnit"
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
  mounted() {
  },
  methods: {
    getFileAccessHttpUrl,
    getCourseInfo(courseId){
        getAction(this.url.courseInfo, {id: courseId}).then(res=>{
            console.log(res)
            if(res.success){
              this.courseInfo = res.result
              this.$route.meta.title = "我的课程-" + this.courseInfo.courseName
              this.courseInfo.map = this.getFileAccessHttpUrl(this.courseInfo.map)
            }else{
              this.$message.error(res.message)
            }
        })
    },
    getUnitList(courseId){
        getAction(this.url.unitList, {courseId: courseId, pageNo: 1, pageSize:99}).then(res=>{
            console.log(res)
            if(res.success){
              this.dataSource = res.result.records
            }else{
              this.$message.error(res.message)
            }
        })
    },
    viewUnit(unit){
      console.log(unit);
      this.$refs.unitViewModal.visible = true;
      this.$refs.unitViewModal.unit = unit
    },
  }
}
</script>

<style lang="less" scoped>
.app-list {
  .ant-card {
    min-height: 200px;
    max-height: 400px;
    width: 300px;
    display: inline-block;
    margin: 20px;
  }
  .meta-cardInfo {
    zoom: 1;
    margin-top: 16px;
    .title{
        margin-right:20px;
    }
    img {
      width: 100%;
      max-height: 200px;
    }
    > div {
      position: relative;
      text-align: left;
      float: left;
      width: 50%;

      p {
        line-height: 32px;
        font-size: 24px;
        margin: 0;

        &:first-child {
          color: rgba(0, 0, 0, 0.45);
          font-size: 12px;
          line-height: 20px;
          margin-bottom: 4px;
        }
      }
    }
  }
}
</style>
<template>
  <div class="app-list">
    <a-list :grid="{ gutter: 24, lg: 4, md: 3, sm: 2, xs: 1 }" :dataSource="dataSource">
      <a-list-item slot="renderItem" slot-scope="item, index">
        <a-card @click="viewUnit(item)">
          <!-- <template class="ant-card-extra" slot="extra">
            <span class="create-time">{{item.createTime}}</span>
          </template> -->
          <a-card-meta>
              <div style="margin-bottom: 3px" slot="title">
                <a-icon type="right-circle"/>&nbsp;&nbsp;
                {{ item.unitName }}
              </div>
              <div class="meta-cardInfo" slot="description">
                <img :src="getQiniuFile(item.unitCover)" height="25px" alt="图片不存在" style="width:100%;height:100%;"/>
              </div>
          </a-card-meta>
        </a-card>
      </a-list-item>
    </a-list>
    <unitView-modal ref="unitViewModal"/>
  </div>
</template>
<script>
import { getAction } from '@/api/manage'
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
  mounted() {
    // this.getWorkList()
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
                this.dataSource = res.result.records
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
          return window._CONFIG['qn_base'] + text;
      }
  }
}
</script>

<style lang="less" scoped>
.app-list {
  .meta-cardInfo {
    zoom: 1;
    margin-top: 16px;
    .title{
        margin-right:20px;
    }
    img {
      width: 100%;
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
<template>
  <div class="app-list">
    <a-card v-for="item in dataSource" :key="item.id" :hoverable="true">
      <!-- <template class="ant-card-extra" slot="extra">
        <span class="create-time">{{item.createTime}}</span>
      </template> -->
      <a-card-meta>
        <div style="margin-bottom: 3px" slot="title">
          <a-icon type="info-circle" @click="toDetail(item)"/>
          <a-divider type="vertical"></a-divider>
          <span @click="toCourse(item.showType, item.id)">{{ item.courseName }}</span>
        </div>
        <div @click="toCourse(item.showType, item.id)" class="meta-cardInfo" slot="description">
            <img
              :src="getFileAccessHttpUrl(item.courseCover)"
              height="25px"
              style="width: 100%; height: 100%"
            />
        </div>
      </a-card-meta>
    </a-card>
    <j-modal 
      :visible="showCourseDetail" 
      :title="currentCourse.courseName"
      :width="800"
      :footer="null"
      @cancel="showCourseDetail=false"
      >
        <div v-html="currentCourse.courseDesc"></div>
      </j-modal>
  </div>
</template>
<script>
import { getAction,getFileAccessHttpUrl } from '@/api/manage'
import {JeecgListMixin} from '@/mixins/JeecgListMixin'
export default {
  name: 'MineCourseList',
  components: {},
  data() {
    return {
      dataSource: [],
      showCourseDetail: false,
      currentCourse: {}
    }
  },
  mounted() {
    this.getCourseList()
  },
  methods: {
    getFileAccessHttpUrl,
    getCourseList: function () {
      getAction('/teaching/teachingCourse/mineCourse', {}).then((res) => {
        if (res.success) {
          this.dataSource = res.result
        }
        if (res.code === 510) {
          this.$message.warning(res.message)
        }
        this.loading = false
      })
    },
    toCourse(showType, id){
      if(showType == 1){
        this.$router.push("/teaching/mineCourse/courseUnitMap?id="+id)
      }else{
        this.$router.push("/teaching/mineCourse/courseUnitCard?id="+id)
      }
    },
    toDetail(item) {
      this.showCourseDetail = true
      this.currentCourse = item
    },
  },
}
</script>

<style lang="less" scoped>
.app-list {
  .ant-card {
    min-height: 200px;
    max-height: 400px;
    width: 400px;
    display: inline-block;
    margin: 20px;
  }
  .meta-cardInfo {
    zoom: 1;
    margin-top: 16px;
    .title {
      margin-right: 20px;
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
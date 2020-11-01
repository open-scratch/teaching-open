<template>
  <div class="app-list">
    <a-list :grid="{ gutter: 24, lg: 3, md: 1, sm: 1, xs: 1 }" :dataSource="dataSource">
      <a-list-item slot="renderItem" slot-scope="item, index">
        <a-card :hoverable="true">

          <!-- <template class="ant-card-extra" slot="extra">
            <span class="create-time">{{item.createTime}}</span>
          </template> -->

          <a-card-meta>
            <div style="margin-bottom: 3px" slot="title">{{ item.courseName }}</div>
            <div class="meta-cardInfo" slot="description">
               <router-link v-if="item.showType==1" :to="{ name: 'teaching-mineCourse-courseUnitMap',  query: {id:item.id}}">
                 <img :src="getQiniuFile(item.courseCover)" height="25px" alt="图片不存在" style="width:100%;height:100%;"/>
              </router-link>
               <router-link v-if="item.showType==2" :to="{ name: 'teaching-mineCourse-courseUnitCard',  query: {id:item.id}}">
                 <img :src="getQiniuFile(item.courseCover)" height="25px" alt="图片不存在" style="width:100%;height:100%;"/>
              </router-link>
            </div>
          </a-card-meta>
          <br>
          <span v-html="item.courseDesc" class="article-content"></span>

        </a-card>
      </a-list-item>
    </a-list>
  </div>
</template>
<script>
import { getAction } from '@/api/manage'
export default {
  name: 'MineCourseList',
  components: {},
  data() {
    return {
      dataSource: []
    }
  },
  mounted() {
    this.getCourseList()
  },
  methods: {
    getCourseList: function() {
      getAction('/teaching/teachingCourse/mineCourse', {}).then(res => {
        if (res.success) {
          this.dataSource = res.result
        }
        if (res.code === 510) {
          this.$message.warning(res.message)
        }
        this.loading = false
      })
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
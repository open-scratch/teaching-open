<template>
  <div class="cms">
    <div class="cms-header">
      <h1>{{ cmsInfo.cmsTitle }}</h1>
      <div class="cms-info">
        <span class="gap">本文发布于：{{ cmsInfo.createTime }}</span>
      </div>
    </div>

    <a-divider></a-divider>

    <div class="article-content" v-html="cmsInfo.newsContent"></div>
  </div>
</template>

<script>
import { getAction } from "@/api/manage";

export default {
  data() {
    return {
      cmsInfo: {},
    };
  },
  watch: {
    $route(to, from) {
      this.getCmsDetail()
    },
  },
  created() {
    this.getCmsDetail()
  },
  methods:{
    getCmsDetail(){
      getAction("/teaching/teachingNews/newsDetail?id=" + this.$route.query.id).then((res) => {
        if (res.success) {
          this.cmsInfo = res.result;
        }
      });
    }
  }
};
</script>

<style scoped lang="less">
.cms{
  border-radius: 10px;
  background: white;
  padding: 20px 0;
  margin: 20px 0;
  box-shadow:#c5c0c0 0px 0px 10px;
  min-height: 80vh;
}
.cms-header {
  margin-top: 20px;
  text-align: center;
  h1{
    margin: 0 50px;
  }
  .cms-info {
    color: gray;
  }
}

.gap {
  margin-left: 5px;
  margin-right: 20px;
  font-size: 14px;
}
.article-content {
  overflow: auto;
  padding: 20px 100px;
  /deep/img {
    max-width: 100%;
    height: auto;
  }
}
.extra-file{
  padding: 20px 100px;
}
</style>
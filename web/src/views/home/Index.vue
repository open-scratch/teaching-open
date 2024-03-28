<template>
  <!-- <div id="IndexPage" :style="{ background: sysConfig.homeBgColor }"> -->
    <!-- <div :style="{ 'background-image': 'url(' + getFileAccessHttpUrl(sysConfig.file_homeBg) + ')', 'background-repeat': sysConfig.homeBgRepeat }"> -->
      <div class="boxBackground">
        <div class="boxContent" v-html="sysConfig._homeHtml"></div>
      </div>
    <!-- </div> -->
  <!-- </div> -->
</template>
<script>
import { getFileAccessHttpUrl } from '@/api/manage'
export default {
  components: {},
  data() {
    return {
      sysConfig: {},
    }
  },
  watch: {},
  methods: {},
  created() {
    this.sysConfig = this.$store.getters.sysConfig
  },
  mounted() {},
  methods:{
    getFileAccessHttpUrl
  }
}
</script>
<style lang='less' scoped>
.slick-arrow {
  border-radius: 50%;
  text-align: center;
  height: 40px;
  line-height: 40px;
  width: 40px;
  background: #364e799a;
  overflow: hidden;
  color: #fff;
  opacity: 0.5;
  img {
    width: 100%;
    height: 100%;
  }
}
.slick-arrow:hover {
  background: #364e79;
  color: #fff;
  opacity: 1;
}
#IndexPage {
  width: 100%;
  height: auto;
  margin-top: 28px;
  .banner {
    width: 100%;
    height: 100%;
    background: #ccc;
  }
  .boxBackground {
    width: 100%;
    // background: #030149;
    .boxContent {
      width: 1200px;
      margin: 0 auto;
      height: 100%;
      overflow: hidden;
      // max-height: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;

      /deep/img {
        max-width: 100%;
      }
    }
  }
}
</style>
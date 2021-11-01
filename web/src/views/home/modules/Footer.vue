<template>
    <div class="copyright">
          <a href="https://github.com/open-scratch/teaching" target="_blank">
            <a-icon type="github" />
          </a>
          <a-divider type="vertical" />
          Copyright
          <a-icon type="copyright" />
          2020 <span>{{ brandName }}</span>
          <a-divider type="vertical" />
          <a href="http://beian.miit.gov.cn/"
            ><span
              style="
                background-color: #fdfdfd;
                color: #666666;
                font-family: 'Microsoft Yahei', simsun, arial, sans-serif;
                font-size: 14px;
              "
              >{{ beian }}</span
            ></a
          >
        </div>
</template>
<script>
export default {
    data() {
        return {
            brandName: window._CONFIG['brandName'],
            beian: window._CONFIG['beian'],
        }
    },
}
</script>
<style scoped>
  .copyright {
    text-align: center;
  }
</style>
<template>
  <div class="footer">
    <div class="links">
      <a href="http://teaching.vip" target="_blank">Teaching 首页</a>
      <a href="https://github.com/open-scratch/teaching" target="_blank">
        <a-icon type="github"/>
      </a>
      <a href="https://github.com/open-scratch/scratch3">Scratch3.0</a>
      <a href="https://github.com/open-scratch/scratch2">Scratch2.0</a>
    </div>
    <div class="copyright">
      Copyright
      <a-icon type="copyright"/>
      2020 <span>OpenScratch开源社区 出品</span>
    </div>
  </div>
</template>

<script>
  export default {
    name: "LayoutFooter"
  }
</script>

<style lang="less" scoped>
  .footer {
    padding: 0 16px;
    margin: 48px 0 24px;
    text-align: center;

    .links {
      margin-bottom: 8px;

      a {
        color: rgba(0, 0, 0, .45);

        &:hover {
          color: rgba(0, 0, 0, .65);
        }

        &:not(:last-child) {
          margin-right: 40px;
        }
      }
    }
    .copyright {
      color: rgba(0, 0, 0, .45);
      font-size: 14px;
    }
  }
</style>
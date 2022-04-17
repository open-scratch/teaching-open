<template>
  <div class="logo">
    <router-link :to="{path:'/home'}">
      <img src="/logo.png" alt="logo">
      <h1 v-if="showTitle">{{ brandName }}</h1>
    </router-link>
  </div>
</template>

<script>
  import { mixin } from '@/utils/mixin.js'

  export default {
    name: 'Logo',
    mixins: [mixin],
    props: {
      showTitle: {
        type: Boolean,
        default: true,
        required: false
      }
    },
     data () {
      return {
         brandName: this.$store.getters.sysConfig.brandName
      }
    },
  }
</script>
<style lang="less" scoped>
  /*缩小首页布 局顶部的高度*/
  @height: 59px;

  .sider {
    box-shadow: none !important;
    .logo {
      height: @height !important;
      line-height: @height !important;
      box-shadow: none !important;
      transition: background 300ms;

      a {
        color: white;
        &:hover {
          color: rgba(255, 255, 255, 0.8);
        }
      }
    }

    &.light .logo {
      background-color: @primary-color;
    }
  }
</style>
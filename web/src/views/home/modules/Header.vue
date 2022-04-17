<template>
  <div class="header">
    <router-link :to="{path:'/home'}">
      <img class="logo" :src="logo" alt="" />
    </router-link>
    <t-menu class="menu" mode="horizontal" :menu="menus"></t-menu>
  </div>
</template>
<script>
import TMenu from "@/components/menu/tmenu"
export default {
  components: {
    TMenu
  },
  data() {
    return {
      menus: [],
      logo: '/logo.png'
    }
  },
  created(){
    this.menus = this.$store.getters.menuList
    if(this.$store.getters.sysConfig.logo && this.$store.getters.sysConfig.qiniuDomain){
      this.logo = this.$store.getters.sysConfig.qiniuDomain + "/" + this.$store.getters.sysConfig.logo
    }
  }
}
</script>

<style scoped lang="less">
.header{
    margin-top: 25px;
    line-height: 30px;
}
.logo {
  height: 100px;
  width: auto;
  margin-right: 20px;
  display: inline-block;
}
.brand{
    display: inline-block;
    vertical-align: middle;
}
.brand-title {
  color: white;
  font-size: 30px;
  text-shadow: 0 0 5px #282828;
  margin-bottom: 10px;
}
.brand-desc {
  color: white;
  font-size: 18px;
  font-style: italic;
}

.menu {
  display: inline-block;
  background: transparent;
  max-width: 1200px;
  margin: auto;
  .ant-menu-submenu,
  /deep/.ant-menu-item > a, /deep/.ant-menu-submenu-title > a {
    font-family: "微软雅黑 Bold", "微软雅黑 Regular", "微软雅黑", sans-serif;
    font-weight: 600;
    font-size: 16px;
    color: white;
  }
  .ant-menu-submenu-active,
  .ant-menu-item-active {
    background: rgba(0, 0, 0, 0.2);
    border-radius: 15px;
    border-bottom: none !important;
  }
}
.ant-menu-horizontal {
  border-bottom:none;
}
</style>
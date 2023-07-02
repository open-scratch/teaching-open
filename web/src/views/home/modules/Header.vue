<template>
  <div class="header">
    <router-link :to="{ path: '/home' }">
      <img class="logo" :src="logo" alt="" />
    </router-link>
    <t-menu class="menu" mode="horizontal" :menu="menus"></t-menu>
    <div class="header-avatar">
      <!-- <a-avatar @click="toCenter" icon="user" :src="avatarUrl" /> -->
      <img class="avatar" :src="avatarUrl" @click="enter" alt="" />
      <span v-if="$store.state.user.info">
        <span @click="enter">{{ $store.state.user.info.realname }}</span>
        <a-divider type="vertical" />
        <span @click="handleLogout">退出</span>
      </span>
      <span v-else>
        <span @click="enter">登录</span>
        <a-divider type="vertical" />
        <span @click="enter">注册</span>
      </span>
    </div>
  </div>
</template>
<script>
import { mapActions, mapGetters } from 'vuex'
import TMenu from '@/components/menu/tmenu'
import { getFileAccessHttpUrl } from "@/api/manage"
export default {
  components: {
    TMenu,
  },
  data() {
    return {
      menus: [],
      logo: '/logo.png',
      avatarUrl: '/logo.png',
    }
  },
  created() {
    this.menus = this.$store.getters.menuList
    if (this.$store.getters.sysConfig.logo && this.$store.getters.sysConfig.qiniuDomain) {
      this.logo = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.logo
    }
    if(this.getFileAccessHttpUrl(this.avatar())){
      this.avatarUrl = this.getFileAccessHttpUrl(this.avatar())
    } 
  },
  methods:{
    ...mapActions(["Logout"]),
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    getFileAccessHttpUrl,
    enter() {
      this.$router.push('/account/center')
    },
    handleLogout() {
      const that = this;
      this.$confirm({
        title: "提示",
        content: "真的要注销登录吗 ?",
        onOk() {
          return that
            .Logout({})
            .then(() => {
              Vue.ls.remove("cysccToken")
              window.location.reload()
            })
            .catch((err) => {
              that.$message.error({
                title: "错误",
                description: err.message,
              });
            });
        },
        onCancel() {},
      });
    },
  }
}
</script>

<style scoped lang="less">
.header {
  margin: 15px 0;
  line-height: 30px;
}
.logo {
  max-height: 50px;
  width: auto;
  margin-right: 20px;
  display: inline-block;
}
.brand {
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
  /deep/.ant-menu-item > a,
  /deep/.ant-menu-submenu-title > a {
    font-family: '微软雅黑 Bold', '微软雅黑 Regular', '微软雅黑', sans-serif;
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
  border-bottom: none;
}

.header-avatar{
  padding: 5px 20px;
  float: right;
  cursor: pointer;
  .ant-avatar {
    margin-right: 5px;
  }
  .avatar{
    margin-right: 5px;
    margin-bottom: 5px;
    max-height: 30px;
  }
  span {
    color: #fff;
    font-weight: 700;
  }
}
</style>
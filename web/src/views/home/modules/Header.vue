<template>
  <div :class="['header', menuFixed?'menu-fixed':'']">
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
      logo2: '/logo.png',
      avatarUrl: '/logo.png',
      menuFixed: false
    }
  },
  created() {
    this.menus = this.$store.getters.menuList
    if (this.$store.getters.sysConfig.logo && this.$store.getters.sysConfig.qiniuDomain) {
      this.logo = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.logo
      this.avatarUrl = this.logo
    }
    if (this.$store.getters.sysConfig.logo2 && this.$store.getters.sysConfig.qiniuDomain) {
      this.logo2 = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.logo2
    }
    if (this.$store.getters.sysConfig.avatar && this.$store.getters.sysConfig.qiniuDomain) {
       this.avatarUrl = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.avatar
    }
    if(this.getFileAccessHttpUrl(this.avatar())){
      this.avatarUrl = this.getFileAccessHttpUrl(this.avatar())
    } 
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll)
  },
  beforeDestroy() {
    window.removeEventListener('scroll', this.handleScroll)
  },
  methods:{
    ...mapActions(["Logout"]),
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    getFileAccessHttpUrl,
    handleScroll(){
      let scrollTop = document.documentElement.scrollTop
      if (scrollTop >= 105) {
        this.menuFixed = true
      } else {
        this.menuFixed = false
      }
    },
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
  padding: 15px;
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
.menu-fixed{
    position: fixed;
    top: 0px;
    z-index: 99;
    padding-bottom: 10px;
    width: 100%;
    background: radial-gradient(ellipse at top left, #005dff 10%, #23aeffd9 67%);
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
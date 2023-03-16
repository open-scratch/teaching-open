<template>
  <div class="user-enter">
    <div v-if="token">
      <a-avatar shape="square" class="avatar" :size="100" :src="getFileAccessHttpUrl(avatar())" />
      <h3>欢迎您，{{ nickname() }}</h3>
      <a-button type="primary" @click="enter">进入系统</a-button>
      <a-button type="dashed" @click="changeAccount">切换账号</a-button>
    </div>
    <div v-else>
      <a-avatar shape="square" class="avatar" :size="100" :src="logo" />
      <h3 class="welcome">欢迎来到{{ brandName }}</h3>
      <a-button type="dashed" @click="enter">登录/注册</a-button>
    </div>
  </div>
</template>
<script>
import Vue from 'vue'
import { mapActions, mapGetters } from 'vuex'
import { ACCESS_TOKEN } from '@/store/mutation-types'
import { getFileAccessHttpUrl } from "@/api/manage"
export default {
  data() {
    return {
      brandName: this.$store.getters.sysConfig.brandName,
      token: '',
      logo: '/logo.png'
    }
  },
  created() {
    this.token = Vue.ls.get(ACCESS_TOKEN)
    if(this.$store.getters.sysConfig.logo && this.$store.getters.sysConfig.qiniuDomain){
      this.logo = this.$store.getters.sysConfig.qiniuDomain + "/" + this.$store.getters.sysConfig.logo
    }
  },
  methods: {
    ...mapActions(["Logout"]),
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    getFileAccessHttpUrl,
    enter() {
      this.$router.push('/account/center')
    },
    changeAccount(){
      const that = this
      this.$confirm({
        title: '提示',
        content: '确定要退出当前账号并登录新的账号吗 ?',
        onOk() {
          return that.Logout({}).then(() => {
            window.location.href="/user/login";
          }).catch(err => {
            that.$message.error({
              title: '错误',
              description: err.message
            })
          })
        },
        onCancel() {
        },
      });
    }
  },
}
</script>
<style scoped>
.user-enter {
  background: url(/img/login-bg.png) no-repeat;
  background-size: 100% 100%;
  border-radius: 10px;
  width: 250px;
  min-height: 360px;
  text-align: center;
  padding-top: 110px;
  padding-bottom: 20px;
  line-height: 50px;
}
.ant-btn {
  width: 80%;
}
.welcome{
  padding: 0 20px;
  line-height: 30px;
}
</style>
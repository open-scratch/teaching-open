<template>
  <div class="user-enter">
    <div v-if="token">
      <a-avatar shape="square" class="avatar" :size="100" :src="getFileAccessHttpUrl(avatar())" />
      <h3>欢迎您，{{ nickname() }}</h3>
      <a-button type="dashed" @click="enter">进入系统</a-button>
    </div>
    <div v-else>
      <a-avatar shape="square" class="avatar" :size="100" :src="logo" />
      <h3>欢迎来到{{ brandName }}</h3>
      <a-button type="dashed" @click="enter">登录/注册</a-button>
    </div>
  </div>
</template>
<script>
import Vue from 'vue'

import { mapGetters } from 'vuex'
import { ACCESS_TOKEN } from '@/store/mutation-types'
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
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    getFileAccessHttpUrl,
    enter() {
      this.$router.push('/account/center')
    },
  },
}
</script>
<style scoped>
.user-enter {
  background: url(/img/login-bg.png) no-repeat;
  background-size: 100% 100%;
  border-radius: 10px;
  width: 250px;
  height: 360px;
  text-align: center;
  padding-top: 110px;
  line-height: 50px;
}
.ant-btn {
  width: 80%;
}
</style>
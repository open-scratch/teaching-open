<template>
  <div
    class="container"
    :style="{
      backgroundColor: sysConfig.homeBgColor,
      backgroundImage: sysConfig.file_homeBg ? 'url(' + getFileAccessHttpUrl(sysConfig.file_homeBg) + ')' : '',
      backgroundRepeat: sysConfig.homeBgRepeat ? sysConfig.homeBgRepeat : '',
    }"
  >
    <a-layout>
      <a-layout-header>
        <Header />
      </a-layout-header>
      <a-layout>
        <a-layout-content>
          <a-row type="flex" justify="space-between">
            <a-col :xs="24" :sm="16" :md="16" :lg="16" :xl="18">
              <Banner />
            </a-col>
            <a-col :xs="24" :sm="8" :md="8" :lg="8" :xl="6">
              <div class="user-enter">
                <div v-if="token">
                  <a-avatar shape="square" class="avatar" :size="100" :src="avatarUrl" />
                  <h3>欢迎您，{{ nickname() }}</h3>
                  <a-button type="primary" class="btn-my-work" @click="enter(1)">我的作品</a-button>
                  <a-divider type="vertical"></a-divider>
                  <a-button type="primary" class="btn-my-course" @click="enter(2)">我的课程</a-button>
                </div>
                <div v-else>
                  <a-avatar shape="square" class="avatar" :size="100" :src="logo2" />
                  <h3 class="welcome">欢迎来到{{ brandName }}</h3>
                  <a-button type="dashed" @click="enter(0)">登录/注册</a-button>
                </div>
              </div>
            </a-col>
          </a-row>
          <router-view />
        </a-layout-content>
      </a-layout>
      <a-layout-footer>
        <Footer />
      </a-layout-footer>
    </a-layout>
  </div>
</template>

<script>
import Vue from 'vue'
import { getAction, getFileAccessHttpUrl } from '@/api/manage'
import { ACCESS_TOKEN } from '@/store/mutation-types'
import { mapActions, mapGetters } from 'vuex'
import Header from './modules/Header'
import Banner from './modules/Banner'
import Footer from './modules/Footer'
import UserEnter from './modules/UserEnter'

export default {
  name: 'HomeLayout',
  components: {
    Header,
    Footer,
    UserEnter,
    Banner,
  },
  data() {
    return {
      brandName: this.$store.getters.sysConfig.brandName,
      logo: '/logo.png',
      logo2: '/logo.png',
      avatarUrl: '/logo.png',
      token: '',
      sysConfig: {},
    }
  },
  created() {
    this.token = Vue.ls.get(ACCESS_TOKEN)
    this.sysConfig = this.$store.getters.sysConfig
    if (this.$store.getters.sysConfig.logo && this.$store.getters.sysConfig.qiniuDomain) {
      this.logo = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.logo
    }
    if (this.$store.getters.sysConfig.logo2 && this.$store.getters.sysConfig.qiniuDomain) {
      this.logo2 = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.logo2
      this.avatarUrl = this.logo
    }
    if (this.$store.getters.sysConfig.avatar && this.$store.getters.sysConfig.qiniuDomain) {
      this.avatarUrl = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.avatar
    }
    if (this.getFileAccessHttpUrl(this.avatar())) {
      this.avatarUrl = this.getFileAccessHttpUrl(this.avatar())
    }
  },
  methods: {
    getFileAccessHttpUrl,
    ...mapActions(['Logout']),
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    enter(type) {
      switch (type) {
        case 0:
          this.$router.push('/user/login')
          break
        case 1:
          this.$router.push('/account/center')
          break
        case 2:
          this.$router.push('/teaching/mineCourse/cardList')
          break
        default:
          this.$router.push('/account/center')
          break
      }
    },
    changeAccount() {
      const that = this
      this.$confirm({
        title: '提示',
        content: '确定要退出当前账号并登录新的账号吗 ?',
        onOk() {
          return that
            .Logout({})
            .then(() => {
              window.location.href = '/user/login'
            })
            .catch((err) => {
              that.$message.error({
                title: '错误',
                description: err.message,
              })
            })
        },
        onCancel() {},
      })
    },
    toEditor(type) {
      switch (type) {
        case 1:
          window.open('/scratch3/index.html?scene=create')
          break
        case 2:
          window.open('/scratchjr/home.html')
          break
        case 3:
          window.open('/python/index.html')
          break
      }
    },
    _isMobile() {
      return (
        navigator.userAgent.match(
          /(phone|pad|pod|iPhone|iPod|ios|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i
        ) != null
      )
    },
  },
}
</script>

<style lang="less" scoped>
.container {
  background: url(/img/bg_blue.png) no-repeat;
  background-color: #f6f6f6;
  background-size: 100% auto;
}
.ant-layout-header,
.ant-layout-content,
.ant-layout-sider,
.ant-layout-sider-children,
.ant-layout-footer {
  background: transparent;
}
.ant-layout {
  background: transparent;
  min-height: calc(100vh - 200px);
}
.ant-layout-header {
  height: auto;
  min-height: 50px;
  width: 100%;
  margin-bottom: 10px;
  padding: 0;
  /deep/.banner {
    border-radius: 10px;
    overflow: hidden;
  }
}

.ant-layout-has-sider {
  max-width: 1600px;
  min-width: 800px;
  margin: -100px auto 0;
}
.ant-layout-sider {
  z-index: 99;
}
.ant-layout-content {
  padding: 20px 20px 0 20px;
  max-width: 1300px;
  width: 100%;
  margin: 0 auto;
  .user-enter {
    background: #fff;
    border: 1px solid #eee;
    border-radius: 20px;
    width: 250px;
    min-height: 300px;
    text-align: center;
    line-height: 50px;
    float: right;
    padding: 30px 20px;
  }
}
.ant-layout-sider {
  margin-left: 30px;
  max-width: 300px !important;
  width: 300px !important;
}
</style>
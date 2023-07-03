<template>
  <div class="container">
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
                  <a-button size="large" type="primary" @click="enter">我的作品</a-button>
                  <a-divider type="vertical"></a-divider>
                  <a-button size="large" type="primary" @click="enter(2)">我的课程</a-button>
                </div>
                <div v-else>
                  <a-avatar shape="square" class="avatar" :size="100" :src="logo" />
                  <h3 class="welcome">欢迎来到{{ brandName }}</h3>
                  <a-button type="dashed" @click="enter">登录/注册</a-button>
                </div>
              </div>
            </a-col>
          </a-row>
          <a-row :gutter="[24,24]">
            <a-col :xs="24" :sm="24" :md="8" :lg="8" :xl="8">
              <div class="editor-card" style="background: linear-gradient(-60deg,#ffaa30,#ffbf35);">
                <a-row type="flex" justify="space-around" align="middle">
                  <a-col :span="10">
                    <img src="@assets/scratch.png" alt="">
                  </a-col>
                  <a-col :span="14">
                    <h2>Scratch编辑器</h2>
                    <a-button size="large" @click="toEditor(1)">开始创作</a-button>
                  </a-col>
                </a-row>
              </div>
            </a-col>
            <a-col :xs="24" :sm="24" :md="8" :lg="8" :xl="8">
              <div class="editor-card" style="background: linear-gradient(-30deg,#4fb5ff,#60bcff);">
                <a-row type="flex" justify="space-around" align="middle">
                  <a-col :span="10">
                    <img src="@assets/sjr.png" alt="">
                  </a-col>
                  <a-col :span="14">
                    <h2>ScratchJr编辑器</h2>
                    <a-button size="large" @click="toEditor(2)">开始创作</a-button>
                  </a-col>
                </a-row>
              </div>
            </a-col>
            <a-col :xs="24" :sm="24" :md="8" :lg="8" :xl="8">
              <div class="editor-card" style="background: linear-gradient(-30deg,#f35981,#fb7397);">
                <a-row type="flex" justify="space-around" align="middle">
                  <a-col :span="10">
                    <img src="@assets/python.png" alt="">
                  </a-col>
                  <a-col :span="14">
                    <h2>Python编辑器</h2>
                    <a-button size="large" @click="toEditor(3)">开始创作</a-button>
                  </a-col>
                </a-row>
              </div>
            </a-col>
          </a-row>
          <div class="panel-works">
            <h1 class="panel-title">
              <a-icon type="star" theme="twoTone" two-tone-color="#ffd81b" />
              精选作品
            </h1>
            <a-row type="flex" justify="start" :gutter="[24, 24]">
              <a-col v-for="(item, index) in greatLeaderboard" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="6">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey_url" :src="item.coverFileKey_url" />
                    <img v-if="item.workType == 4 || item.workType == 10" src="@/assets/code.png" alt="" />
                  </a>
                  <div class="work-info">
                    <a-row type="flex" justify="space-between">
                      <a-col :span="10"> 
                        <a-icon type="eye" /> {{ item.viewNum }} 
                        <a-divider type="vertical"></a-divider>
                        <a-icon type="like" /> {{ item.starNum }}
                      </a-col>
                      <a-col :span="10"> <a-tag color="orange">{{ item.workType_dictText }}</a-tag> </a-col>
                    </a-row>
                    <p>{{ item.workName }}</p>
                    <a-row class="work-author">
                      <a-col :span="6">
                        <a-avatar shape="square" class="avatar" :size="40" :src="item.avatar_url" />
                      </a-col>
                      <a-col :span="18">
                        <span>{{ item.realname || item.username }}</span>
                      </a-col>
                    </a-row>
                  </div>
                </a-card>
              </a-col>
            </a-row>
            <a-button class="load-more" type="link" @click="getGreatLeaderboard">加载更多……</a-button>
          </div>

          <div class="panel-works">
            <h1 class="panel-title">
              <a-icon type="like" theme="twoTone" two-tone-color="#52c41a" />
              最赞作品
            </h1>
            <a-row type="flex" justify="start" :gutter="[24, 24]">
              <a-col v-for="(item, index) in starLeaderboard" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="6">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey_url" :src="item.coverFileKey_url" />
                    <img v-if="item.workType == 4 || item.workType == 10" src="@/assets/code.png" alt="" />
                  </a>
                  <div class="work-info">
                    <a-row type="flex" justify="space-between">
                      <a-col :span="10"> 
                        <a-icon type="eye" /> {{ item.viewNum }} 
                        <a-divider type="vertical"></a-divider>
                        <a-icon type="like" /> {{ item.starNum }}
                      </a-col>
                      <a-col :span="10"> <a-tag color="orange">{{ item.workType_dictText }}</a-tag> </a-col>
                    </a-row>
                    <p>{{ item.workName }}</p>
                    <a-row class="work-author">
                      <a-col :span="6">
                        <a-avatar shape="square" class="avatar" :size="40" :src="item.avatar_url" />
                      </a-col>
                      <a-col :span="18">
                        <span>{{ item.realname || item.username }}</span>
                      </a-col>
                    </a-row>
                  </div>
                </a-card>
              </a-col>
            </a-row>
            <a-button class="load-more" type="link" @click="getStarLeaderboard">加载更多……</a-button>
          </div>

          <div class="panel-works">
            <h1 class="panel-title">
              <a-icon type="fire" theme="twoTone" two-tone-color="#eb2f96" />
              最火作品
            </h1>
            <a-row type="flex" justify="start" :gutter="[24, 24]">
              <a-col v-for="(item, index) in viewLeaderboard" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="6">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey_url" :src="item.coverFileKey_url" />
                    <img v-if="item.workType == 4 || item.workType == 10" src="@/assets/code.png" alt="" />
                  </a>
                  <div class="work-info">
                    <a-row type="flex" justify="space-between">
                      <a-col :span="10"> 
                        <a-icon type="eye" /> {{ item.viewNum }} 
                        <a-divider type="vertical"></a-divider>
                        <a-icon type="like" /> {{ item.starNum }}
                      </a-col>
                      <a-col :span="10"> <a-tag color="orange">{{ item.workType_dictText }}</a-tag> </a-col>
                    </a-row>
                    <p>{{ item.workName }}</p>
                    <a-row class="work-author">
                      <a-col :span="6">
                        <a-avatar shape="square" class="avatar" :size="40" :src="item.avatar_url" />
                      </a-col>
                      <a-col :span="18">
                        <span>{{ item.realname || item.username }}</span>
                      </a-col>
                    </a-row>
                  </div>
                </a-card>
              </a-col>
            </a-row>
            <a-button class="load-more" type="link" @click="getViewLeaderboard">加载更多……</a-button>
          </div>
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
import QrCode from '@/components/tools/QrCode'

export default {
  name: 'PublicWorkList',
  components: {
    qrcode: QrCode,
    Header,
    Footer,
    UserEnter,
    Banner,
  },
  data() {
    return {
      brandName: this.$store.getters.sysConfig.brandName,
      logo: '/logo.png',
      avatarUrl: '/logo.png',
      token: '',
      greatLeaderboard: [],
      starLeaderboard: [],
      viewLeaderboard: [],
      page: {
        starLeaderboard: 0,
        viewLeaderboard: 0,
        greatLeaderboard: 0,
      },
    }
  },
  created() {
    this.token = Vue.ls.get(ACCESS_TOKEN)
    if (this.$store.getters.sysConfig.logo && this.$store.getters.sysConfig.qiniuDomain) {
      this.logo = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.logo
    }
    if (this.getFileAccessHttpUrl(this.avatar())) {
      this.avatarUrl = this.getFileAccessHttpUrl(this.avatar())
    }
    this.getGreatLeaderboard()
    this.getStarLeaderboard()
    this.getViewLeaderboard()
  },
  methods: {
    getFileAccessHttpUrl,
    ...mapActions(['Logout']),
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    enter(type) {
      switch(type){
        case 1:this.$router.push('/account/center');break;
        case 2:this.$router.push('/teaching/mineCourse/cardList');break;
        default:this.$router.push('/account/center');break;
      }
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
    },
    getGreatLeaderboard() {
      this.page.greatLeaderboard += 1
      getAction('/teaching/teachingWork/leaderboard', {
        orderBy: 'create_time',
        workStatus: 4,
        pageSize: 4,
        pageNo: this.page.greatLeaderboard,
      }).then((res) => {
        if (res.success) {
          this.greatLeaderboard = this.greatLeaderboard.concat(res.result.records)
          if (res.result.records.length == 0 && this.page.greatLeaderboard > 1) {
            this.$message.info('已加载完啦！')
          }
        }
      })
    },
    getStarLeaderboard() {
      this.page.starLeaderboard += 1
      getAction('/teaching/teachingWork/leaderboard', {
        orderBy: 'star',
        pageSize: this._isMobile() ? 4 : 8,
        pageNo: this.page.starLeaderboard,
      }).then((res) => {
        if (res.success) {
          this.starLeaderboard = this.starLeaderboard.concat(res.result.records)
          if (res.result.records.length == 0 && this.page.starLeaderboard > 1) {
            this.$message.info('已加载完啦！')
          }
        }
      })
    },
    getViewLeaderboard() {
      this.page.viewLeaderboard += 1
      getAction('/teaching/teachingWork/leaderboard', {
        orderBy: 'view',
        pageSize: this._isMobile() ? 4 : 8,
        pageNo: this.page.viewLeaderboard,
      }).then((res) => {
        if (res.success) {
          this.viewLeaderboard = this.viewLeaderboard.concat(res.result.records)
          if (res.result.records.length == 0 && this.page.viewLeaderboard > 1) {
            this.$message.info('已加载完啦！')
          }
        }
      })
    },
    toDetail(id) {
      this.$router.push('/work-detail?id=' + id)
    },
    toEditor(type){
      switch(type){
        case 1:
          window.open("/scratch3/index.html?scene=create")
          break;
        case 2:
          window.open("/scratchjr/home.html")
          break;
        case 3:
          window.open("/python/index.html")
          break;
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
  background-size: 100% 350px;
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
  padding: 20px;
  max-width: 1300px;
  width: 100%;
  margin: 0 auto;
  .user-enter {
    background: #fff;
    border: 1px solid #eee;
    border-radius: 20px;
    width: 250px;
    height: 300px;
    text-align: center;
    line-height: 50px;
    float: right;
    padding-top: 30px;
  }
  .editor-card{
    width: 100%;
    height: 200px;
    margin: 30px auto;
    padding: 20px;
    background: linear-gradient(-30deg,#4fb5ff,#60bcff);
    border-radius: 20px;
    .ant-row-flex{
      height: 100%;
    }
    img{
      width: auto;
      height: 100px;
    }
    h2{
      color: white;
      text-align: center;
    }
    .ant-btn{
      border-radius: 50px;
      display: block;
      margin: 10px auto;
    }
  }
  .panel-works {
    margin-bottom: 30px;
  }
  .panel-title {
    font-size: 26px;
    color: #333;
  }
  .work-card {
    border-radius: 10px;
    overflow: hidden;
    box-shadow: rgb(218, 218, 218) 2px 2px 5px;
    max-height: 300px;
    min-width: 200px;
    /deep/.ant-card-body {
      padding: 0px;
    }
    .work-cover {
      width: 100%;
      max-height: 150px;
    }
    .work-info{
      padding: 10px;
    }
    .work-author {
      span {
        line-height: 40px;
      }
    }
    .ant-tag {
      float: right;
      // position: absolute;
      // margin: 5px;
    }
    > div {
      padding: 10px;
      margin: 10px;
    }
  }
  .load-more {
    margin: 10px auto;
    text-align: center;
  }
}
.ant-layout-sider {
  margin-left: 30px;
  max-width: 300px !important;
  width: 300px !important;
}
</style>
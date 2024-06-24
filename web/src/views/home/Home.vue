<template>
  <div>
    <a-row :gutter="[24,24]" class="editor-nav">
      <a-col :xs="24" :sm="24" :md="8" :lg="8" :xl="8">
        <div class="editor-card editor-sjr" style="background: linear-gradient(-30deg,#4fb5ff,#60bcff);">
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
        <div class="editor-card editor-sc" style="background: linear-gradient(-60deg,#ffaa30,#ffbf35);">
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
        <div class="editor-card editor-py" style="background: linear-gradient(-30deg,#f35981,#fb7397);">
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
    <div class="panel-works" v-if="greatLeaderboard.length>0">
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
      <router-link v-if="page.greatLeaderboard>-1"  class="load-more" :to="{path:'/workList?type=3'}" >查看更多...</router-link>
    </div>

    <div class="panel-works" v-if="courseLeaderboard.length>0">
      <h1 class="panel-title">
        <a-icon type="calculator" theme="twoTone" two-tone-color="#eb2f96" />
        推荐课程
      </h1>
      <a-row type="flex" justify="start" :gutter="[24, 24]">
        <a-col v-for="(item, index) in courseLeaderboard" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="6">
          <a-card class="work-card">
              <a @click="toCourseDetail(item.id)" target="_blank">
                <img class="work-cover" :src="item.courseCover_url" />
              </a>
              <div class="work-info">
                <p>{{ item.courseName }}</p>
              </div>
            </a-card>
        </a-col>
      </a-row>
      <router-link v-if="page.courseLeaderboard>-1" class="load-more" :to="{path:'/courseList'}" >查看更多...</router-link>
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
      <router-link v-if="page.starLeaderboard>-1" class="load-more" :to="{path:'/workList?type=2'}" >查看更多...</router-link>
    </div>
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
      courseLeaderboard: [],
      page: {
        starLeaderboard: 0,
        courseLeaderboard: 0,
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
    // this.getCourseLeaderboard()
  },
  methods: {
    getFileAccessHttpUrl,
    ...mapActions(['Logout']),
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    enter(type) {
      switch(type){
        case 0:this.$router.push('/user/login');break;
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
    //获取精选作品
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
          if(this.greatLeaderboard.length >= res.result.total){
            this.page.greatLeaderboard = -1
          }
        }
      })
    },
    //获取点赞排行
    getStarLeaderboard() {
      this.page.starLeaderboard += 1
      getAction('/teaching/teachingWork/leaderboard', {
        orderBy: 'star',
        pageSize: 8,
        pageNo: this.page.starLeaderboard,
      }).then((res) => {
        if (res.success) {
          this.starLeaderboard = this.starLeaderboard.concat(res.result.records)
          if(this.starLeaderboard.length >= res.result.total){
            this.page.starLeaderboard = -1
          }
        }
      })
    },
    //获取推荐课程
    getCourseLeaderboard() {
      this.page.courseLeaderboard += 1
      getAction('/teaching/teachingCourse/getHomeCourse', {
        pageSize: 4,
        pageNo: this.page.courseLeaderboard,
      }).then((res) => {
        if (res.success) {
          this.courseLeaderboard = this.courseLeaderboard.concat(res.result.records)
          if(this.courseLeaderboard.length >= res.result.total){
            this.page.courseLeaderboard = -1
          }
        }
      })
    },
    toDetail(id) {
      let route = this.$router.resolve({
        path: "/work-detail",
        query: {
          id: id,
        },
      });
      window.open(route.href, '_blank');
    },
    toCourseDetail(id){
      this.$router.push('/teaching/mineCourse/courseUnitCard?id=' + id)
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
    }
    > div {
      padding: 10px;
      margin: 10px;
    }
  }
  .load-more {
    display: block;
    margin: 10px auto;
    text-align: left;
  }

</style>
<template>
  <div class="container">
    <a-layout>
      <a-layout-header>
        <Header/>
        <Banner/>
      </a-layout-header>
      <a-layout>
        <a-layout-content>
          <div class="user-enter" v-if="_isMobile()">
            <UserEnter />
          </div>
          <div class="panel-works">
            <h1 class="panel-title">
              <a-icon type="clock-circle" theme="twoTone" />
              最新作品
            </h1>
            <a-row type="flex" justify="space-between" :gutter="[24, 24]">
              <a-col v-for="(item, index) in newWork" :key="index" :xs="24" :sm="12" :md="12" :lg="7" :xl="7">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey" :src="item.coverFileKey_url" />
                    <img v-if="item.workType == 4" src="@/assets/code.png" alt="" />
                  </a>
                  <a-row type="flex" justify="end">
                    <a-col :span="5"> <a-icon type="eye" /> {{ item.viewNum }} </a-col>
                    <a-col :span="5"> <a-icon type="like" /> {{ item.starNum }} </a-col>
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
                </a-card>
              </a-col>
            </a-row>
            <a-button class="load-more" type="link" @click="getNewWork">加载更多……</a-button>
          </div>
        </a-layout-content>
        <a-layout-sider v-if="!_isMobile()">
          <UserEnter />
        </a-layout-sider>
      </a-layout>
      <a-layout-footer>
        <Footer />
      </a-layout-footer>
    </a-layout>
  </div>
</template>

<script>
import { getAction, getFileAccessHttpUrl } from '@/api/manage'
import Header from './modules/Header'
import Banner from './modules/Banner'
import Footer from './modules/Footer'
import UserEnter from './modules/UserEnter'
import QrCode from '@/components/tools/QrCode'
export default {
  name: 'NewWorkList',
    components: {
    qrcode: QrCode,
    Header,
    Footer,
    UserEnter,
    Banner
  },
  data() {
    return {
      newWork: [],
      greatLeaderboard: [],
      starWork: [],
      hotWork: [],
      page: {
        newWork: 0,
        starLeaderboard: 0,
        viewLeaderboard: 0,
        greatLeaderboard: 0,
      },
    }
  },
  created() {
    this.getNewWork()
  },
   methods: {
    getFileAccessHttpUrl,
    getNewWork() {
      this.page.newWork += 1
      getAction('/teaching/teachingWork/leaderboard', {
        orderBy: 'time',
        pageSize: this._isMobile() ? 12 : 24,
        pageNo: this.page.newWork,
      }).then((res) => {
        if (res.success) {
          this.newWork = this.newWork.concat(res.result.records)
          console.log(this.newWork)
          if (res.result.records.length == 0 && this.page.newWork > 1) {
            this.$message.info('已加载完啦！')
          }
        }
      })
    },
    toDetail(id) {
      this.$router.push('/work-detail?id=' + id)
    },
    _isMobile() {
      return (
        navigator.userAgent.match(
          /(phone|pad|pod|iPhone|iPod|ios|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i
        ) != null
      )
    },
   }
}
</script>

<style lang="less" scoped>
.container {
  background: url(/img/bg_blue.png) no-repeat;
  background-color: #f6f6f6;
  background-size: 100% 250px;
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
  min-height: 250px;
  width: 100%;
  margin-bottom: 80px;
  /deep/.banner{
    border-radius: 10px;
    overflow: hidden;
  }
}

.ant-layout-has-sider {
  max-width: 1100px;
  margin: -100px auto 0;
}
.ant-layout-sider{
  z-index: 99;
}
.ant-layout-content {
  padding: 40px;
  .user-enter{
    margin-top: 80px;
    margin-bottom: 30px;
    z-index: 9;
  }
  .panel-works {
    margin-bottom: 30px;
  }
  .panel-title {
    font-size: 28px;
    text-shadow: 0 0 3px #000000d1;
  }
  .work-card {
    border-radius: 10px;
    box-shadow: grey 2px 2px 5px;
    width: 250px;
    height: 300px;
    .work-cover {
      width: 100%;
      max-height: 150px;
    }
    .work-author {
      span {
        line-height: 40px;
      }
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
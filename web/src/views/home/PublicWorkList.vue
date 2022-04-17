<template>
  <div class="container">
    <a-layout>
      <a-layout-header>
        <Header/>
      </a-layout-header>
      <a-layout>
        <a-layout-content>
          <div class="panel-works">
            <h1 class="panel-title">
              <a-icon type="like" theme="twoTone" two-tone-color="#52c41a"/>
              最赞作品
            </h1>
            <a-row type="flex" :gutter="[24, 24]">
              <a-col v-for="(item, index) in greatWork" :key="index" :span="7">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey" :src="item.coverFileKey_url" />
                    <img v-if="item.workType == 4" src="@/assets/python.png" alt="" />
                  </a>
                  <a-row type="flex" justify="end">
                    <a-col :span='5'>
                      <a-icon type="eye" /> {{item.viewNum}}
                    </a-col>
                    <a-col :span='5'>
                      <a-icon type="like" /> {{item.starNum}}
                    </a-col>
                  </a-row>
                  <p>{{ item.workName }}</p>
                  <a-row class="work-author">
                    <a-col :span='6'>
                      <a-avatar shape="square" class="avatar" :size="40" :src="item.avatar_url"/>
                    </a-col>
                    <a-col :span='18'>
                      <span>{{item.realname || item.username}}</span>
                    </a-col>
                  </a-row>
                </a-card>
              </a-col>
            </a-row>
            <a-button class="load-more" type="link" @click="getGreatWork">加载更多……</a-button>
          </div>

          <div class="panel-works">
            <h1 class="panel-title">
              <a-icon type="fire" theme="twoTone" two-tone-color="#eb2f96"/>
              最火作品
            </h1>
            <a-row type="flex" :gutter="[24, 24]">
              <a-col v-for="(item, index) in hotWork" :key="index" :span="7">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey" :src="item.coverFileKey_url" />
                    <img v-if="item.workType == 4" src="@/assets/python.png" alt="" />
                  </a>
                  <a-row type="flex" justify="end">
                    <a-col :span='5'>
                      <a-icon type="eye" /> {{item.viewNum}}
                    </a-col>
                    <a-col :span='5'>
                      <a-icon type="like" /> {{item.starNum}}
                    </a-col>
                  </a-row>
                  <p>{{ item.workName }}</p>
                  <a-row class="work-author">
                    <a-col :span='6'>
                      <a-avatar shape="square" class="avatar" :size="40" :src="item.avatar_url"/>
                    </a-col>
                    <a-col :span='18'>
                      <span>{{item.realname || item.username}}</span>
                    </a-col>
                  </a-row>
                </a-card>
              </a-col>
            </a-row>
            <a-button class="load-more" type="link" @click="getHotWork">加载更多……</a-button>
          </div>

          <div class="panel-works">
            <h1 class="panel-title">
              <a-icon type="clock-circle" theme="twoTone" />
              最新作品
            </h1>
            <a-row type="flex" :gutter="[24, 24]">
              <a-col v-for="(item, index) in newWork" :key="index" :span="7">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey" :src="item.coverFileKey_url" />
                    <img v-if="item.workType == 4" src="@/assets/python.png" alt="" />
                  </a>
                  <a-row type="flex" justify="end">
                    <a-col :span='5'>
                      <a-icon type="eye" /> {{item.viewNum}}
                    </a-col>
                    <a-col :span='5'>
                      <a-icon type="like" /> {{item.starNum}}
                    </a-col>
                  </a-row>
                  <p>{{ item.workName }}</p>
                  <a-row class="work-author">
                    <a-col :span='6'>
                      <a-avatar shape="square" class="avatar" :size="40" :src="item.avatar_url"/>
                    </a-col>
                    <a-col :span='18'>
                      <span>{{item.realname || item.username}}</span>
                    </a-col>
                  </a-row>
                </a-card>
              </a-col>
            </a-row>
            <a-button class="load-more" type="link" @click="getNewWork">加载更多……</a-button>
          </div>
        </a-layout-content>
        <a-layout-sider>
          <UserEnter/>
        </a-layout-sider>
      </a-layout>
      <a-layout-footer>
        <Footer/>
      </a-layout-footer>
    </a-layout>
  </div>
</template>

<script>
import { getAction, getFileAccessHttpUrl } from '@/api/manage'
import Header from './modules/Header'
import Footer from './modules/Footer'
import UserEnter from './modules/UserEnter'
import QrCode from '@/components/tools/QrCode'

export default {
  name: "PublicWorkList",
  components: {
    qrcode: QrCode,
    Header,
    Footer,
    UserEnter
  },
  data() {
    return {
      newWork: [],
      greatWork: [],
      hotWork: [],
      page: {
        newWork: 0,
        greatWork: 0,
        hotWork: 0,
      },
      
    }
  },
  created() {
    this.getNewWork()
    this.getGreatWork()
    this.getHotWork()
  },
  methods: {
    getFileAccessHttpUrl,
    getNewWork() {
      this.page.newWork += 1
      getAction('/teaching/teachingWork/leaderboard', { orderBy: 'time', pageSize:3, pageNo: this.page.newWork }).then((res) => {
        if (res.success) {
          this.newWork = this.newWork.concat(res.result.records)
          console.log(this.newWork);
          if(res.result.records.length==0 && this.page.newWork>1){
              this.$message.info("已加载完啦！")
          }
        }
      })
    },
    getGreatWork(){
      this.page.greatWork += 1
      getAction('/teaching/teachingWork/leaderboard', { orderBy: 'star', pageSize:3, pageNo: this.page.greatWork }).then((res) => {
        if (res.success) {
          this.greatWork = this.greatWork.concat(res.result.records)
          if(res.result.records.length==0 && this.page.greatWork>1){
              this.$message.info("已加载完啦！")
          }
        }
      })
    },
    getHotWork(){
      this.page.hotWork += 1
      getAction('/teaching/teachingWork/leaderboard', { orderBy: 'view', pageSize:3, pageNo: this.page.hotWork }).then((res) => {
        if (res.success) {
          this.hotWork = this.hotWork.concat(res.result.records)
          if(res.result.records.length==0 && this.page.hotWork>1){
              this.$message.info("已加载完啦！")
          }
        }
      })
    },
    toDetail(id) {
      this.$router.push('/work-detail?id='+id)
    },
  },
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
  height: 250px;
  width: 100%;
}

.ant-layout-has-sider {
  width: 1100px;
  margin: -100px auto 0;
}

.ant-layout-content {
  .panel-works{
    margin-bottom: 30px;
  }
  .panel-title{
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
    .work-author{
      span{
        line-height: 40px;
      }
    }
  }
  .load-more{
    margin: 10px auto;
    text-align: center;
  }
}
.ant-layout-sider {
  max-width: 300px !important;
  width: 300px !important;
}
</style>
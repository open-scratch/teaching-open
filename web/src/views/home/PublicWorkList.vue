<template>
  <div class="container">
    <a-layout>
      <a-layout-header>
        <a-row>
          <a-col span="4" class="logo">
            <img src="/logo.png" alt="" />
          </a-col>
        </a-row>
      </a-layout-header>
      <a-layout>
        <a-layout-content>
          <div>
            <h1>
              <a-icon type="heart" theme="twoTone" />
              最新作品
            </h1>
            <a-row type="flex" :gutter="[24, 24]">
              <a-col v-for="(item, index) in newWork" :key="index" :span="7">
                <a-card class="work-card">
                  <a @click="toDetail(item.id)" target="_blank">
                    <img class="work-cover" v-if="item.coverFileKey" :src="getFileAccessHttpUrl(item.coverFileKey)" />
                    <img v-if="item.workType == 4" src="@/assets/python.png" alt="" />
                  </a>

                  <p>{{ item.workName }}</p>
                </a-card>
              </a-col>
            </a-row>
            <a-button type="link" @click="getNewWork">加载更多……</a-button>
          </div>
        </a-layout-content>
        <a-layout-sider>
          <a-card class="user-info">
            <img src="/logo.png" alt="" />
            <p>欢迎来到{{ brandName }}</p>
            <a-button @click="enter">进入系统</a-button>
          </a-card>
        </a-layout-sider>
      </a-layout>
      <a-layout-footer>
        <div class="copyright">
          <a href="https://github.com/open-scratch/teaching" target="_blank">
            <a-icon type="github" />
          </a>
          <a-divider type="vertical" />
          Copyright
          <a-icon type="copyright" />
          2020 <span>{{ brandName }}</span>
          <a-divider type="vertical" />
          <a href="http://beian.miit.gov.cn/"
            ><span
              style="
                background-color: #fdfdfd;
                color: #666666;
                font-family: 'Microsoft Yahei', simsun, arial, sans-serif;
                font-size: 14px;
              "
              >{{ beian }}</span
            ></a
          >
        </div>
      </a-layout-footer>
    </a-layout>
  </div>
</template>

<script>
import { getAction, getFileAccessHttpUrl } from '@/api/manage'
import QrCode from '@/components/tools/QrCode'

export default {
  components: {
    qrcode: QrCode,
  },
  data() {
    return {
      newWork: [],
      starWork: [],
      viewWork: [],
      page: {
        newWork: 0,
        starWork: 0,
        viewWork: 0,
      },
      brandName: window._CONFIG['brandName'],
      beian: window._CONFIG['beian'],
    }
  },
  created() {
    this.getNewWork()
  },
  methods: {
    getFileAccessHttpUrl,
    getNewWork() {
      this.page.newWork += 1
      getAction('/teaching/teachingWork/leaderboard', { orderBy: 'time', pageSize:3, pageNo: this.page.newWork }).then((res) => {
        if (res.success) {
          this.newWork = this.newWork.concat(res.result.records)
          if(res.result.records.length==0){
              this.$message.info("已加载完啦！")
          }
        }
      })
    },
    getUserInfo() {},
    enter() {
      this.$router.push('/account/center')
    },
    toDetail(id) {
      this.$router.push('/home/workDetail', { id: id })
    },
  },
}
</script>

<style lang="less" scope>
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
.ant-layout-has-sider {
  width: 1100px;
  margin: auto;
}
.ant-layout-header {
  height: 250px;
  width: 100%;
  .logo {
    margin-top: 20px;
    img {
      height: 100px;
    }
  }
}
.ant-layout-content {
  .work-card {
    border-radius: 10px;
    box-shadow: grey 2px 2px 5px;
    width: 250px;
    height: 280px;
    .work-cover {
      width: 100%;
      max-height: 150px;
    }
  }
}
.ant-layout-sider {
  max-width: 300px !important;
  width: 300px !important;
  .user-info {
    border-radius: 10px;
    width: 250px;
    height: 300px;
  }
}
.ant-layout-footer {
  //   position: absolute;
  height: 50px;
  bottom: 0;
  width: 100%;
  .copyright {
    text-align: center;
  }
}
</style>
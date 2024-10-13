<template>
  <div class="friends">
    <div class="top-content">
      <a-card class="user">
        <a-row>
          <a-col :span="6">
            <div class="circle">
              <img shape="square" class="avatar" :size="100" v-if="userInfo && userInfo.avatar_url" :src="userInfo.avatar_url" />
              <img shape="square" class="avatar" :size="100" v-else :src="avatarUrl" />
            </div>
          </a-col>
          <a-col :span="18">
            <p class="name">{{ userInfo.realname || userInfo.realname }}</p>
            <j-ellipsis class="tip" :value="userInfo.sign" :length="50" />
          </a-col>
        </a-row>
      </a-card>
    </div>
    <div class="select">
      <a href="javascript:void(0)" @click="getUserWork()" :class="tab == 'work' ? 'selected' : ''">作品</a>
    </div>
    <a-card :bordered="false" v-if="tab == 'work'">
      <a-row type="flex" :gutter="[24, 24]">
        <a-col v-for="(item, index) in userWorkList" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
          <a-card class="work-card">
            <div class="work-cover">
              <a @click="toDetail(item.id)" target="_blank" class="img-zoom">
                <img class="work-cover" v-if="item.coverFileKey_url" :src="item.coverFileKey_url" />
                <img v-if="item.workType == 4 || item.workType == 10" src="@/assets/code.png" alt="" />
              </a>
            </div>
            <a-divider></a-divider>
            <div class="work-op">
              <a @click="toDetail(item.id)">{{ item.workName }}</a>
              <a-row type="flex" justify="end">
                <a-col :span="6"> <a-icon type="eye" /> {{ item.viewNum }} </a-col>
                <a-col :span="6"> <a-icon type="like" /> {{ item.starNum }} </a-col>
              </a-row>
            </div>
          </a-card>
        </a-col>
      </a-row>
      <a-divider></a-divider>
      <a-pagination
      @change="pageChange"
      :current="ipagination.current"
      :pageSize="ipagination.pageSize"
      :pageSizeOptions="ipagination.pageSizeOptions"
      :showTotal="ipagination.showTotal"
      :total="ipagination.total"
      showQuickJumper
    />
    </a-card>

  </div>
</template>
  
  <script>
import { getAction, postAction } from '@/api/manage'
import JEllipsis from '@/components/jeecg/JEllipsis'
import Vue from 'vue'
import { TENANT_CONFIG, ACCESS_TOKEN } from '@/store/mutation-types'

export default {
  components: {
    JEllipsis,
  },
  data() {
    return {
      userId: '',
      avatarUrl: '/logo.png',
      userInfo: {},
      isAttention: false,
      userWorkList: [],
      tab: 'work',
      token: '',
      queryParam: {},
      ipagination: {
        current: 1,
        pageSize: 12,
        showTotal: (total, range) => {
          return range[0] + '-' + range[1] + ' 共' + total + '条'
        },
        showQuickJumper: true,
        total: 0,
      },
    }
  },
  created() {
    this.token = Vue.ls.get(ACCESS_TOKEN)
    this.userId = this.$route.query.id
    if (this.$store.getters.sysConfig.avatar && this.$store.getters.sysConfig.qiniuDomain) {
       this.avatarUrl = this.$store.getters.sysConfig.qiniuDomain + '/' + this.$store.getters.sysConfig.avatar
    }
    this.getUserInfo()
    this.pageChange(1, 12)
  },
  methods: {
    getUserInfo() {
      getAction('/teaching/teachingWork/userInfo?userId=' + this.userId).then((res) => {
        if (res.success) {
          this.userInfo = res.result
        }
      })
    },
    pageChange(page, pageSize) {
      this.userWorkList = []
      this.ipagination.current = page
      this.queryParam.pageNo = this.ipagination.current
      this.queryParam.pageSize = pageSize
      this.ipagination.pageSize = pageSize
      this.getUserWorkList()
    },
    getUserWorkList() {
      getAction('/teaching/teachingWork/leaderboard', {
        userId: this.userId,
        orderBy: 'time',
        pageNo: this.queryParam.pageNo,
        pageSize: this.queryParam.pageSize,
      }).then((res) => {
        if (res.success) {
          this.userWorkList = res.result.records
          this.ipagination.total = res.result.total
        }
      })
    },
    toDetail(id) {
      let route = this.$router.resolve({
        path: '/work-detail',
        query: {
          id: id,
        },
      })
      window.open(route.href, '_blank')
    },
  },
}
</script>
  
<style lang="less" scoped>
.friends {
  .top-content {
    .user {
      width: 100%;
      padding-top: 20px;
      border-radius: 10px;
      box-shadow: 0px 3px 6px #00000039;
      .circle {
        width: 80px;
        height: 80px;
        border-radius: 50%;
        border: 3px solid #fff;
        margin: 0 auto;
        // padding-top: 10px;
        background-color: rgba(2, 167, 240, 1);
        img {
          border-radius: 50%;
          width: 100%;
          height: 100%;
        }
      }
      .name {
        line-height: 45px;
        font-size: 20px;
        font-weight: 700;
      }
      .tip {
        font-size: 13px;
        font-weight: 400;
        margin-bottom: 10px;
        word-break: break-word;
      }
    }
  }
}

.select {
  font-size: 13px;
  margin: 66px 0 50px 0px;
  a {
    color: black !important;
    font: normal normal normal 27px/17px HappyZcool-2016;
    font-weight: 500;
    font-size: 17px;
    line-height: 45px;
    display: inline-block;
    border-radius: 40px;
    padding: 0 35px;
    box-shadow: 0px 3px 6px #00000029;
    min-width: 110px;
    height: 46px;
    margin-right: 20px;
    &.selected {
      color: #fff !important;
      background-color: rgba(57, 165, 239, 1);
    }
  }

  &:hover {
    color: #333;
  }
}

.work-card {
  border: none;
  /deep/.ant-card-body {
    width: 250px;
    height: 280px;
    padding: 0;
    overflow: hidden;
    border-radius: 10px;
    box-shadow: 0px 3px 6px #00000039;
  }
  .ant-divider-horizontal {
    margin: 12px 0;
  }
  .work-cover {
    width: 100%;
    height: 187px;
    overflow: hidden;
    img {
      display: block;
      max-width: 100%;
      max-height: 100%;
      margin: auto;
    }
  }
  .work-author {
    padding: 10px 10px 0;
    span {
      line-height: 40px;
    }
  }
  .work-op {
    a {
      color: black;
    }
    a:hover {
      color: #1890ff;
    }
    padding: 0 10px;
  }
}
</style>
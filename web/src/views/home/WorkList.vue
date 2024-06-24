<template>
  <div>
      <div class="panel-works">
        <h1 v-if="type==0" class="panel-title">
          <a-icon type="fire" theme="twoTone" two-tone-color="#eb2f96" />
          最火作品
        </h1>
        <h1 v-if="type==1" class="panel-title">
          <a-icon type="clock-circle" theme="twoTone" />
          最新作品
        </h1>
        <h1 v-if="type==2" class="panel-title">
          <a-icon type="like" theme="twoTone" two-tone-color="#52c41a" />
          最赞作品
        </h1>
        <h1 v-if="type==3" class="panel-title">
          <a-icon type="star" theme="twoTone" two-tone-color="#ffd81b" />
          精选作品
        </h1>
        <a-row type="flex" justify="start" :gutter="[24, 24]">
          <a-col v-for="(item, index) in datasource" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="6">
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
        <a-spin style="margin:50px auto;" v-if="loading"/>
        <a-empty v-if="!loading && datasource.length==0"/>
        <a-button v-if="!loading && datasource.length>0" class="load-more" type="dash" @click="getData">加载更多……</a-button>
      </div>
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
      loading: false,
      datasource: [],
      page: 0,
      type: 1
    }
  },
  created() {
    if(this.$route.query.type){
      this.type = this.$route.query.type
    }
    this.getData()
  },
   methods: {
    getFileAccessHttpUrl,
    getData() {
      this.loading = true
      this.page += 1
      let queryParam = {
        pageSize: this._isMobile() ? 12 : 24,
        pageNo: this.page,
        orderBy: 'time'
      }
      if(this.type == 0){
        queryParam.orderBy = 'view'
      }else if(this.type == 1){
        queryParam.orderBy = 'time'
      }else if(this.type == 2){
        queryParam.orderBy = 'star'
      }else if(this.type == 3){
        queryParam['workStatus'] = 4
        queryParam.orderBy = 'create_time'
      }

      getAction('/teaching/teachingWork/leaderboard', queryParam).then((res) => {
        this.loading = false
        if (res.success) {
          this.datasource = this.datasource.concat(res.result.records)
          console.log(this.datasource)
          if (res.result.records.length == 0 && this.page > 1) {
            this.$message.info('已加载完啦！')
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

  .panel-works {
    margin: 30px 0;
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
    text-align: center;
  }
</style>
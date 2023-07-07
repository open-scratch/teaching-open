<template>
  <div>
      <div class="panel-works">
        <h1 class="panel-title">
          <a-icon type="calculator" theme="twoTone" />
          推荐课程
        </h1>
        <a-row type="flex" justify="start" :gutter="[24, 24]">
          <a-col v-for="(item, index) in datasource" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="6">
            <a-card class="work-card">
              <a @click="toDetail(item.id)" target="_blank">
                <img class="work-cover" :src="item.courseCover_url" />
              </a>
              <div class="work-info">
                <p>{{ item.courseName }}</p>
              </div>
            </a-card>
          </a-col>
        </a-row>
        <a-button class="load-more" type="dash" @click="getData">加载更多……</a-button>
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
      datasource: [],
      page: 0,
    }
  },
  created() {
    this.getData()
  },
   methods: {
    getFileAccessHttpUrl,
    getData() {
      this.page += 1
      getAction('/teaching/teachingCourse/getHomeCourse', {
        orderBy: 'time',
        pageSize: this._isMobile() ? 12 : 24,
        pageNo: this.page,
      }).then((res) => {
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
      this.$router.push('/teaching/mineCourse/courseUnitCard?id=' + id)
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
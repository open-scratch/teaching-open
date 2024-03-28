<template>
  <div>
      <div class="panel-works">
        <a-card class="search-card" :bordered="false">
          <j-dict-select-tag
            style="width: 200px;"
            :defaultShowAll="true"
            @change="handleChangeCategory"
            v-model="courseCategory"
            :trigger-change="true"
            dictCode="course_category"
            plcaeholder="请选择课程分类"
          />
          <a-divider type="vertical"></a-divider>
          <j-dict-select-tag
            style="width: 200px;"
            :defaultShowAll="true"
            @change="handleChangeType"
            v-model="courseType"
            :trigger-change="true"
            dictCode="course_type"
             plcaeholder="请选择课程性质"
          />
          <a-divider type="vertical"></a-divider>
          <a-input-search @search="onSearch" style="width: 200px;" placeholder="请输入课程名称"></a-input-search>
        </a-card>
        <h1 class="panel-title">
          <a-icon type="calculator" theme="twoTone" />
          推荐课程
        </h1>
        <a-row type="flex" justify="start" :gutter="[24, 24]">
          <a-col v-for="(item, index) in datasource" :key="index" :xs="24" :sm="12" :md="12" :lg="8" :xl="6">
            <a-card class="work-card">
              <a @click="toDetail(item)" target="_blank">
                <img class="work-cover" :src="item.courseCover_url" />
              </a>
              <div class="work-info">
                <p>{{ item.courseName }}</p>
              </div>
            </a-card>
          </a-col>
        </a-row>
        <a-spin style="margin:50px auto;" v-if="loading"/>
        <a-empty v-if="!loading && datasource.length==0"/>
        <a-button v-if="!loading && datasource.length>0 && page>-1" class="load-more" type="dash" @click="getData">加载更多……</a-button>
      </div>

      <j-modal 
      :visible="showCourseDetail" 
      :title="currentCourse.courseName"
      :width="500"
      @cancel="showCourseDetail=false"
      @ok="toCourse"
      okText="去上课"
      cancelText="关闭"
      >
        <div v-html="currentCourse.courseDesc"></div>
      </j-modal>
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
  name: 'CoursekList',
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
      courseType: '',
      courseCategory: '',
      courseName: '',
      showCourseDetail: false,
      currentCourse: {}
    }
  },
  created() {
    this.getData()
  },
   methods: {
    getFileAccessHttpUrl,
    onSearch(v){
      this.courseName = v
      this.page = 0
      this.datasource = []
      this.getData()
    },
    handleChangeCategory(v){
      this.courseCategory = v
      this.page = 0
      this.datasource = []
      this.getData()
    },
    handleChangeType(v){
      this.courseType = v
      this.page = 0
      this.datasource = []
      this.getData()
    },
    getData() {
      this.loading = true
      this.page += 1
      getAction('/teaching/teachingCourse/getHomeCourse', {
        courseType:this.courseType,
        courseCategory:this.courseCategory,
        courseName:this.courseName,
        orderBy: 'time',
        pageSize: this._isMobile() ? 12 : 24,
        pageNo: this.page,
      }).then((res) => {
        this.loading = false
        if (res.success) {
          this.datasource = this.datasource.concat(res.result.records)
           if(this.datasource.length >= res.result.total){
            this.page = -1
          }
        }
      })
    },
    toDetail(item) {
      console.log(item);
      this.showCourseDetail = true
      this.currentCourse = item
      
    },
    toCourse(){
      this.$router.push('/teaching/mineCourse/courseUnitCard?id=' + this.currentCourse.id)
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
    margin-top: 24px;
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
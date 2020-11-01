<template>
  <div class="page-header-index-wide">
    <a-card :bordered="false" :bodyStyle="{ padding: '16px 0', height: '100%' }" :style="{ height: '100%' }">
      <div class="account-settings-info-main" :class="device" :style=" 'min-height:'+ mainInfoHeight ">
        <div class="account-settings-info-left">
          <a-menu
            :mode="device == 'mobile' ? 'horizontal' : 'inline'"
            :style="{ border: '0', width: device == 'mobile' ? '560px' : 'auto'}"
            :defaultSelectedKeys="defaultSelectedKeys"
            type="inner"
            @openChange="onOpenChange"
          >
            <a-menu-item v-for="(course,index) in courseList" :key="'/teaching/mineCourse/course?id='+course.id">
              <router-link :to="{ name: 'teaching-mineCourse-course',  query: {id:course.id}}" :meta="{keepAlive:false}">
                {{course.courseName}}
              </router-link>
            </a-menu-item>
          </a-menu>
        </div>
        <div class="account-settings-info-right">
          <route-view></route-view>
        </div>
      </div>
    </a-card>
  </div>
</template>

<script>
  import PageLayout from '@/components/page/PageLayout'
  import RouteView from "@/components/layouts/RouteView"
  import { getAction } from '@/api/manage'
  import { mixinDevice } from '@/utils/mixin.js'

  export default {
    components: {
      RouteView,
      PageLayout
    },
    mixins: [mixinDevice],
    data () {
      return {
        // horizontal  inline
        mode: 'inline',
        mainInfoHeight:"100%",
        openKeys: [],
        defaultSelectedKeys: [],

        // cropper
        preview: {},
        option: {
          img: '/avatar2.jpg',
          info: true,
          size: 1,
          outputType: 'jpeg',
          canScale: false,
          autoCrop: true,
          // 只有自动截图开启 宽度高度才生效
          autoCropWidth: 180,
          autoCropHeight: 180,
          fixedBox: true,
          // 开启宽度和高度比例
          fixed: true,
          fixedNumber: [1, 1]
        },
        courseList: [],
        url: {
          mineCourseList: '/teaching/teachingCourse/mineCourse'
        },
        pageTitle: ''
      }
    },
    created () {
      this.initMineCourse()
      this.updateMenu()
    },
    mounted(){
      this.mainInfoHeight = (window.innerHeight-285)+"px";
    },
    methods: {
      onOpenChange (openKeys) {
        this.openKeys = openKeys
      },
      updateMenu () {
        let routes = this.$route.matched.concat()
        this.defaultSelectedKeys = [ routes.pop().path ]
      },
      initMineCourse(){
        getAction(this.url.mineCourseList, {}).then(res => {
          if(res.success){
            this.courseList = res.result
          }else{
            console.log(res)
          }
        })
      }
    },
  }
</script>

<style lang="less" scoped>
  .account-settings-info-main {
    width: 100%;
    display: flex;
    height: 100%;
    overflow: auto;

    &.mobile {
      display: block;

      .account-settings-info-left {
        border-right: unset;
        border-bottom: 1px solid #e8e8e8;
        width: 100%;
        height: 50px;
        overflow-x: auto;
        overflow-y: scroll;
      }
      .account-settings-info-right {
        padding: 20px 40px;
      }
    }

    .account-settings-info-left {
      border-right: 1px solid #e8e8e8;
      width: 224px;
    }

    .account-settings-info-right {
      flex: 1 1;
      padding: 8px 40px;
      .account-settings-info-view {
        padding-top: 12px;
      }
    }
  }

</style>
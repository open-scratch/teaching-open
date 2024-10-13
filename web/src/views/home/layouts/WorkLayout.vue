<template>
    <div class="container"
      :style="{
        backgroundColor: sysConfig.homeBgColor,
        backgroundImage: sysConfig.file_homeBg ? 'url(' + getFileAccessHttpUrl(sysConfig.file_homeBg) + ')' : '',
        backgroundRepeat: sysConfig.homeBgRepeat ? sysConfig.homeBgRepeat : '',
      }"
    >
      <a-layout>
        <a-layout-header>
          <Header/>
        </a-layout-header>
        <a-layout>
          <a-layout-content>
            <div class="content">
              <router-view />
            </div>
          </a-layout-content>
          <a-layout-sider v-if="!_isMobile()">
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
  import Vue from 'vue'
  import { getFileAccessHttpUrl } from '@/api/manage'
  import { ACCESS_TOKEN } from '@/store/mutation-types'
  import QrCode from '@/components/tools/QrCode'
  import Keyboard from '@/components/tools/Keyboard'
  import Header from '../modules/Header'
  import Footer from '../modules/Footer'
  import UserEnter from '../modules/UserEnter'

  export default {
    name:"WorkDetail",
    components: {
      qrcode: QrCode,
      Keyboard,
      Header,
      Footer,
      UserEnter
    },
    data() {
      return {
        token: '',
        sysConfig: {},
      }
    },
    created() {
      this.token = Vue.ls.get(ACCESS_TOKEN)
      this.sysConfig = this.$store.getters.sysConfig
    },
    mounted() {
    },
    methods: {
      getFileAccessHttpUrl,
      enter() {
        this.$router.push('/account/center')
      },
      _isMobile() {
        return navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i) != null
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
    padding: 0;
  }
  
  .ant-layout-has-sider {
    max-width: 1100px;
    width: 100%;
    margin: -100px auto 0;
  }

  .ant-layout-content{
    overflow-x: unset;
    padding-right: 16px;
  }
  
  .ant-layout-sider {
    max-width: 300px !important;
    width: 300px !important;
  }
  
  </style>
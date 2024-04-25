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
          <div class="project-detail">
            <!-- 播放器 -->
            <div class="scratch-player">
              <iframe
                :src="frameHref"
                id="player"
                frameborder="0"
                width="100%"
                height="100%"
                :scrolling="workInfo.workType==4||workInfo.workType==10?'auto':'no'"
              ></iframe>
            </div>
            <keyboard v-if="_isMobile() && workInfo.workType==2" @event="keyEvent"/>
            <!-- 作品信息 -->
            <div class="project-info">
              <a-row type="flex" justify="space-around">
                <a-col :span="4">
                  <a-avatar shape="square" class="avatar" :size="60" :src="workInfo.avatar_url" />
                  <p>{{ workInfo.realname || workInfo.username }}</p>
                </a-col>
                <a-col :span="14" v-if="!_isMobile()">
                  <div class="project-meta">
                    <h2 class="title">{{ workInfo.workName }}</h2>
                    <p class="time">{{ workInfo.createTime }}</p>
                  </div>
                </a-col>
                <a-col :span="_isMobile()?12:6">
                  <div class="project-op">
                    <a-icon type="eye" theme="twoTone" />
                    <span class="gap">{{ workInfo.viewNum }}</span>

                    <a-icon type="like" theme="twoTone" @click="starWork" />
                    <span class="gap">{{ workInfo.starNum }}</span>

                    <a-popover v-if="!_isMobile()" title="微信扫一扫手机体验和分享">
                      <template slot="content">
                        <qrcode :value="getShareUrl()" :size="200" level="H"></qrcode>
                      </template>
                      <a-icon type="mobile" theme="twoTone" />
                    </a-popover>
                  </div>
                </a-col>
                <a-col :span="24" v-if="_isMobile()">
                  <div class="project-meta">
                    <h2 class="title">{{ workInfo.workName }}</h2>
                    <p class="time">{{ workInfo.createTime }}</p>
                  </div>
                </a-col>
              </a-row>
            </div>

            <!-- 评论区 -->
            <div class="project-comment">
              <div class="publish">
                <a-row type="flex" justify="space-between">
                  <a-col :span="3" class="comment-user"  v-if="!_isMobile()">
                    <a-avatar shape="square" :size="60" icon="user" :src="getFileAccessHttpUrl(avatar())" />
                    <p>
                      {{ token ? nickname() : '未登录' }}
                    </p>
                  </a-col>
                  <a-col :span="16">
                    <a-textarea
                      v-model="commentContent"
                      :rows="5"
                      :maxLength="500"
                      placeholder="说说这个作品怎么样吧"
                    ></a-textarea>
                  </a-col>
                  <a-col :span="_isMobile()?6:4">
                    <div class="comment-btn">
                      <a-button :disabled="!token" type="dashed" @click="comment">发表评论</a-button>
                    </div>
                  </a-col>
                </a-row>
              </div>
              <a-divider />
              <a-list
                class="comment-list"
                item-layout="horizontal"
                :locale="{ emptyText: '暂无评论' }"
                :data-source="comments"
              >
                <a-list-item slot="renderItem" slot-scope="item">
                  <a-comment :author="item.realname || item.username">
                    <a-avatar shape="square" :size="40" slot="avatar" icon="user" :src="item.avatar_url" />
                    <p class="comment-content" slot="content">
                      {{ item.comment }}
                    </p>
                    <a-tooltip slot="datetime" :title="moment(item.createTime).format('YYYY-MM-DD HH:mm:ss')">
                      <span>{{ moment(item.createTime).fromNow() }}</span>
                    </a-tooltip>
                  </a-comment>
                </a-list-item>
                <div
                  v-if="showLoadingMore"
                  slot="loadMore"
                  :style="{
                    textAlign: 'center',
                    marginTop: '12px',
                    height: '32px',
                    lineHeight: '32px',
                  }"
                >
                  <a-spin v-if="loadingMore" />
                  <a-button type="link" v-else @click="workComments"> 加载更多 </a-button>
                </div>
              </a-list>
            </div>
          </div>
          <div v-if="shareHtml" class="work-share-html">
            <a-divider></a-divider>
            <div v-html="shareHtml"></div>
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
import { getAction, getFileAccessHttpUrl } from '@/api/manage'
import { mapGetters } from 'vuex'
import { ACCESS_TOKEN } from '@/store/mutation-types'
import QrCode from '@/components/tools/QrCode'
import Keyboard from '@/components/tools/Keyboard'
import Header from './modules/Header'
import Footer from './modules/Footer'
import UserEnter from './modules/UserEnter'

import moment from 'moment'
import { postAction } from '../../api/manage'
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
      workId: '',
      workInfo: {},
      frameHref: '',
      token: '',
      commentContent: '',
      showLoadingMore: true,
      loadingMore: false,
      commentsPage: 0,
      comments: [],
      shareHtml: '',
      sysConfig: {},
    }
  },
  created() {
    this.workId = this.$route.query.id
    this.token = Vue.ls.get(ACCESS_TOKEN)
    this.sysConfig = this.$store.getters.sysConfig
    this.getWorkInfo(this.workId)
    this.getWorkShareHtml()
  },
  mounted() {
    var that = this
    //scratch全屏
    document.addEventListener('scratchFullScreen', function (e) {
      window.launchIntoFullscreen(document.getElementById('player'))
    })
    //scratch退出全屏
    document.addEventListener('scratchUnFullScreen', function (e) {
      window.exitFullscreen()
    })
    document.addEventListener('scratchInit', function (e) {
      var p = document.getElementById('player')
      var s = p.contentDocument.getElementById('scratch')
      s.addEventListener('click', () => {
        p.focus()
      })
    })
    //计算播放器高度
    let playerDom = document.getElementById("player");
    playerDom.style.height = playerDom.clientWidth * 0.9 + "px";
  },
  methods: {
    ...mapGetters(['nickname', 'avatar', 'userInfo']),
    moment,
    getFileAccessHttpUrl,
    keyEvent(key, keyCode, isDown){
      let player = document.getElementById("player");
      player.contentWindow.vm.postIOData("keyboard", {
        keyCode: keyCode,
        key: key,
        isDown: isDown,
      });
    },
    getWorkInfo(workId) {
      getAction('/teaching/teachingWork/studentWorkInfo?workId=' + workId).then((res) => {
        if (res.success) {
          this.workInfo = res.result
          this.previewCode(this.workInfo)
          this.workComments()
        } else {
          this.$message.error('作品获取失败')
        }
      })
    },
    previewCode(record) {
      this.visible = true
      // this.frameHref = '/scratch3/player.html?workId=' + record.id
      this.frameHref = ''
      switch (record.workType) {
        case '1':
          this.frameHref = '/scratch3/player.html?workId=' + record.id
          return
        case '2':
          this.frameHref = '/scratch3/player.html?workId=' + record.id
          return
        case '3':
          this.frameHref = '/scratchjr/editor.html?mode=look&workFile=' + record.workFileKey_url
          return
        case '4':
          this.frameHref = '/python/player.html?lang=turtle&url=' + record.workFileKey_url
          return
        case '10':
          this.frameHref = '/blockly/index.html?lang=zh-hans&workId=' + record.id
          return
      }
    },
    starWork() {
      getAction('/teaching/teachingWork/starWork?workId=' + this.workId).then((res) => {
        if (res.success) {
          if (res.message == '点赞成功') {
            this.workInfo.starNum += 1
          }
          this.$message.success(res.message)
        }
      })
    },
    workComments() {
      this.commentsPage += 1
      this.loadingMore = true
      getAction('/teaching/teachingWork/getWorkComments', { workId: this.workId, page: this.commentsPage }).then(
        (res) => {
          this.loadingMore = false
          if (res.result.length == 0 && this.commentsPage>1) {
              this.$message.info('已加载完啦！')
          } else {
            this.comments = this.comments.concat(res.result)
          }
        }
      )
    },
    comment() {
      if (this.commentContent != '') {
        postAction('/teaching/teachingWork/saveComment', { workId: this.workId, comment: this.commentContent }).then(
          (res) => {
            if (res.success) {
              this.comments.unshift({
                  comment: this.commentContent,
                  realname: this.nickname(),
                  avatar_url: this.getFileAccessHttpUrl(this.avatar()),
                  createTime: new Date()
              })
              this.commentContent = ''
              this.$message.success(res.message)
            }
          }
        )
      }
    },
    getWorkShareHtml(){
      getAction("/sys/config/getConfig?key=_workShareHtml").then(res=>{
        if(res.success){
          this.shareHtml = res.result
        }
      })
    },
    getShareUrl() {
      return window.location.protocol + '//' + window.location.host + '/work-detail?id=' + this.workId
    },
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

.project-detail {
  max-width: 780px;
  background: #fff;
  border-radius: 10px;
  padding: 20px;
  .scratch-player {
    margin: auto;
    iframe {
      max-width: 720px;
      max-height: 600px;
    }
  }
  .project-info {
    padding: 10px;
    text-align: center;
    .project-meta {
      text-align: left;
    }
    .project-op {
      color: #797979;
      .anticon {
        font-size: 28px;
      }
      .gap {
        margin-right: 20px;
        font-size: 24px;
      }
    }
  }
  .project-comment {
    border: #e0e0e0 solid 1px;
    padding: 10px;
    .publish {
      .comment-user {
        padding-top: 20px;
      }
      .comment-btn {
        padding-top: 10px;
        button {
          height: 80px;
        }
      }
    }
    .comment-list {
      color: #999;
      border: 1px solid #e9e9e9;
      border-top: none;
      padding: 0 20px;
      .comment-content {
        width: 600px;
      }
      .item {
        padding: 20px;
        font-size: 13px;
        border-bottom: 1px solid #e9e9e9;

        .people {
          font-size: 30px;
        }
        .user {
          color: #666;
          font-size: 14px;
          margin-right: 5px;
        }
        .time {
          font-size: 12px;
        }
        span {
          margin-right: 30px;
        }
        p {
          margin: 10px 0;
        }
      }
      .more {
        font-size: 13px;
        text-align: center;
        padding-top: 40px;
        padding-bottom: 20px;
        > span {
          border: 1px solid #e9e9e9;
          line-height: 47px;
          width: 140px;
          height: 47px;
          display: inline-block;
          color: #999;
        }
      }
    }
  }
}

.work-share-html{
  max-width: 780px;
}

.ant-layout-sider {
  max-width: 300px !important;
  width: 300px !important;
}

</style>
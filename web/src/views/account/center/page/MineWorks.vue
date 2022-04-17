<template>
  <div class="app-list">
    <a-list :grid="{ gutter: 24, xxl:4, xl:4, lg: 3, md: 2, sm: 1, xs: 1 }" :dataSource="dataSource">
      <a-list-item slot="renderItem" slot-scope="item">
        <a-card :hoverable="true">
          <template class="ant-card-extra" slot="extra">
            <span class="create-time">{{item.createTime}}</span>
            <span style="margin-left: 6px">{{ item.workType_dictText }}</span>
          </template>
          <a-card-meta>
            <div class="meta-cardInfo" slot="description">
              <a :href="getEditorHref(item)" target="_blank">
                <p>{{item.workName}}</p>
                <img v-if="item.coverFileKey" :src="getFileAccessHttpUrl(item.coverFileKey)" />
                <img v-else src="@/assets/python.png" alt="">
              </a>
            </div>
          </a-card-meta>
          
          <template class="ant-card-actions" slot="actions">
            <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(item.id)">
              <a><a-icon type="delete" /></a>
            </a-popconfirm>
            <a :href="getEditorHref(item)" target="_blank">
              <a-icon type="edit"/>
            </a>
            <a-popover trigger="click" v-if="item.workType==1||item.workType==2">
              <template slot="content">
                <qrcode :value="url.shareUrl + item.id" :size="250"></qrcode>
              </template>
              <a><a-icon type="share-alt"/></a>
            </a-popover>
          </template>
        </a-card>
      </a-list-item>
    </a-list>
  </div>
</template>

<script>
import { deleteAction, getAction, downFile,getFileAccessHttpUrl } from '@/api/manage'
import QrCode from '@/components/tools/QrCode'

export default {
  name: 'MineWorksCard',
  components: {
    qrcode: QrCode,
  },
  data() {
    return {
      dataSource: [],
      qn_base: window._CONFIG['qn_base'],
      url: {
        list: '/teaching/teachingWork/mine',
        delete: '/teaching/teachingWork/delete',
        shareUrl: window._CONFIG['webURL'] + "/scratch3/scratch-mobile.html?workId=",
      }
    }
  },
  mounted() {
    this.getWorkList()
  },
  methods: {
    getFileAccessHttpUrl,
    getWorkList: function() {
      var that = this;
      getAction(that.url.list, null).then(res => {
        if (res.success) {
          that.dataSource = res.result.records
          // that.ipagination.total = res.result.total
        }
        if (res.code === 510) {
          that.$message.warning(res.message)
        }
        that.loading = false
      })
    },
    handleDelete: function(id){
      var that = this;
      deleteAction(that.url.delete, {id: id}).then((res) => {
        if (res.success) {
          that.$message.success(res.message);
          that.getWorkList();
        } else {
          that.$message.warning(res.message);
        }
      });
    },
    getEditorHref(item){
      switch(item.workType){
        case '1':
          return '/scratch3/index.html?workId='+item.id
        case '2':
          return '/scratch3/index.html?workId='+item.id
        case '3':
          return '/scratchjr/editor.html?mode=edit&filepath=' + item.workFileKey_url
        case '4':
          return '/python/index.html?workId=' + item.id
        case '10':
          return '/blockly/index.html?workId=' + item.id
        default:
          return item.workFileKey_url
      }
    }
  }
}
</script>

<style lang="less" scoped>
.app-list {
  /deep/.ant-card-extra{
    margin-left:0!important;
    height: 55px;
  }
  .meta-cardInfo {
    zoom: 1;
    margin-top: 16px;
    height: 200px;
    img {
      width: 100%;
    }
    > div {
      position: relative;
      text-align: left;
      float: left;
      width: 50%;

      p {
        line-height: 32px;
        font-size: 24px;
        margin: 0;

        &:first-child {
          color: rgba(0, 0, 0, 0.45);
          font-size: 12px;
          line-height: 20px;
          margin-bottom: 4px;
        }
      }
    }
    .create-time {
      margin:0 20px;
    }
  }
}
</style>
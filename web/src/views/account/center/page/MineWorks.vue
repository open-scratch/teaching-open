<template>
  <div class="app-list">
    <a-card hoverable  v-for="item in dataSource" :key="item.id">
      <div slot="cover" class="meta-cardInfo">
        <a-tag color="blue">{{item.workType_dictText}}</a-tag>
        <a :href="getEditorHref(item)" target="_blank">
          <img v-if="item.coverFileKey_url" :src="item.coverFileKey_url" />
          <img v-else src="@/assets/code.png" alt="">
        </a>
        </div>
      <a-card-meta>
        <a slot="description" :href="getEditorHref(item)" target="_blank">
          <h3><j-ellipsis :value="item.workName" :length="35" /></h3>
        </a>
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
  </div>
</template>

<script>
import { deleteAction, getAction, downFile,getFileAccessHttpUrl } from '@/api/manage'
import QrCode from '@/components/tools/QrCode'
import JEllipsis from '@/components/jeecg/JEllipsis'
export default {
  name: 'MineWorksCard',
  components: {
    qrcode: QrCode,
    JEllipsis
  },
  data() {
    return {
      pagination: {
        onChange: page => {
          console.log(page);
        },
        pageSize: 12,
      },
      dataSource: [],
      loading: false,
      url: {
        list: '/teaching/teachingWork/mine',
        delete: '/teaching/teachingWork/delete',
        shareUrl: window._CONFIG['webURL'] + "/work-detail?id=",
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
      that.loading = true
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
          return '/scratchjr/editor.html?mode=edit&workFile=' + item.workFileKey_url
        case '4':
          return '/python/index.html?workId=' + item.id
        case '10':
          return '/blockly/index.html?lang=zh-hans&workId=' + item.id
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
  /deep/.ant-card{
    width: 300px;
    display: inline-block;
    margin: 20px;
  }
  /deep/.ant-card-body{
    padding: 5px;
  }
  .meta-cardInfo {
    zoom: 1;
    border-bottom: solid #e9e9e9 1px;
    .ant-tag{
      position: absolute;
      margin: 5px;
    }
    img {
      width: 100%;
      max-height: 100%;
      min-height: 100px;
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
  }
  /deep/.ant-card-actions li{
    margin: 5px 0;
  }
}
</style>
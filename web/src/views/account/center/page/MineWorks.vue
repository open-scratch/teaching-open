<template>
  <div class="app-list">
    <a-list :grid="{ gutter: 24, lg: 4, md: 3, sm: 2, xs: 1 }" :dataSource="dataSource">
      <a-list-item slot="renderItem" slot-scope="item">
        <a-card :hoverable="true">
          <template class="ant-card-extra" slot="extra">
            <span style="margin-bottom: 3px">{{ item.workType_dictText }}</span>
            <a-divider type="vertical"/>
            <span class="create-time">{{item.createTime}}</span>
            <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(item.id)">
              <a><a-icon type="delete" /></a>
            </a-popconfirm>
          </template>
          <a-card-meta>
            
            <!-- <a-avatar class="card-avatar" slot="avatar" :src="item.avatar" size="small" /> -->
            <div class="meta-cardInfo" slot="description">
              <div slot="title">{{item.workName}}</div>
              <a :href="getEditorHref(item)" target="_blank">
                <img :src="item.coverFileUrl" />
              </a>
            </div>
          </a-card-meta>
          
          <template class="ant-card-actions" slot="actions">
            <!-- <a>
              <a-icon type="download"/>
            </a>
            <a>
              <a-icon type="edit"/>
            </a>
            <a>
              <a-icon type="share-alt"/>
            </a>-->
            <!-- <a>
              <a-dropdown>
                <a class="ant-dropdown-link" href="javascript:;">
                  <a-icon type="ellipsis"/>
                </a>
                <a-menu slot="overlay">
                  <a-menu-item>
                    <a href="javascript:;">1st menu item</a>
                  </a-menu-item>
                  <a-menu-item>
                    <a href="javascript:;">2nd menu item</a>
                  </a-menu-item>
                  <a-menu-item>
                    <a href="javascript:;">3rd menu item</a>
                  </a-menu-item>
                </a-menu>
              </a-dropdown>
            </a>-->
          </template>
        </a-card>
      </a-list-item>
    </a-list>
  </div>
</template>

<script>
import { deleteAction, getAction, downFile } from '@/api/manage'

export default {
  name: 'MineWorksCard',
  components: {},
  data() {
    return {
      dataSource: [],
      qn_base: window._CONFIG['qn_base'],
      url: {
        list: '/teaching/teachingWork/mine',
        delete: '/teaching/teachingWork/delete'
      }
    }
  },
  mounted() {
    this.getWorkList()
  },
  methods: {
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
          break;
        case '2':
          return '/scratch3/index.html?workId='+item.id
          break;
        case '3':
          return '/scratchjr/editor.html?mode=edit&filepath=' + item.workFileUrl
          break;
        default:
          return item.workFileUrl
      }
    }
  }
}
</script>

<style lang="less" scoped>
.app-list {
  .ant-card-extra{
    margin-left:0!important;
  }
  .meta-cardInfo {
    zoom: 1;
    margin-top: 16px;
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
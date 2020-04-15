<template>
  <div class="app-list">
    <a-list :grid="{ gutter: 24, lg: 3, md: 1, sm: 1, xs: 1 }" :dataSource="dataSource">
      <a-list-item slot="renderItem" slot-scope="item, index">
        <a-card :hoverable="true">

          <template class="ant-card-extra" slot="extra">
            <span class="create-time">{{item.createTime}}</span>
          </template>

          <a-card-meta>
            <div style="margin-bottom: 3px" slot="title">{{ item.workName }}</div>
            <!-- <a-avatar class="card-avatar" slot="avatar" :src="item.avatar" size="small" /> -->

            <div class="meta-cardInfo" slot="description">
              <a :href="'/scratch3/index.html?projectUrl='+item.workKey+'&projectName='+item.workName" target="_blank">
                <img :src="'//qn.wyxai.com/'+item.coverKey" />
              </a>
            </div>
          </a-card-meta>
          <!-- <template class="ant-card-actions" slot="actions">
            <a>
              <a-icon type="download"/>
            </a>
            <a>
              <a-icon type="edit"/>
            </a>
            <a>
              <a-icon type="share-alt"/>
            </a>
            <a>
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
            </a>
          </template>-->
        </a-card>
      </a-list-item>
    </a-list>
  </div>
</template>

<script>
import { deleteAction, getAction, downFile } from '@/api/manage'
// const dataSource = []
// for (let i = 0; i < 11; i++) {
//   dataSource.push({
//     title: 'Alipay',
//     avatar: 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png',
//     activeUser: 17,
//     newUser: 1700
//   })
// }

export default {
  name: 'GreateWorkCard',
  components: {},
  data() {
    return {
      dataSource: []
    }
  },
  mounted() {
    this.getWorkList()
  },
  methods: {
    getWorkList: function() {
      getAction('/teaching/teachingWork/list', { workStatus: 3 }).then(res => {
        if (res.success) {
          this.dataSource = res.result.records
          this.ipagination.total = res.result.total
        }
        if (res.code === 510) {
          this.$message.warning(res.message)
        }
        this.loading = false
      })

      // this.$http.get('/api/workplace/teams').then(res => {
      //   this.teams = res.result
      //   this.teamSpinning = false
      // })
    }
  }
}
</script>

<style lang="scss" scoped>
.app-list {
  .meta-cardInfo {
    zoom: 1;
    margin-top: 16px;
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
}
</style>
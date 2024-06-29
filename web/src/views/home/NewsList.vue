<template>
  <div>
    <h1 class="panel-title">
      <a-icon type="profile" theme="twoTone" />
      资讯
    </h1>
    <a-card :bordered="false">
      <a-list :dataSource="cmsDataSource">
        <a-list item-layout="vertical" size="large" :pagination="pagination" :data-source="cmsDataSource">
          <div slot="footer">共{{ info.total }}篇</div>
          <a-list-item slot="renderItem" key="item.title" slot-scope="item">
            <a-list-item-meta :description="item.description">
              <a slot="title" @click="toDetail(item)"
                ><h3 class="title">{{ item.newsTitle }}</h3></a
              >
            </a-list-item-meta>
            <div class="cms-info">
              <a-icon type="clock-circle" />
              <span class="gap">{{ item.createTime }}</span>
            </div>
          </a-list-item>
        </a-list>
      </a-list>
    </a-card>
  </div>
</template>

<script>
import { getAction } from '@/api/manage'

export default {
  components: {},
  data() {
    return {
      info: {},
      cmsDataSource: [],
      pagination: {
        onChange: (page) => {
          console.log(page)
        },
        pageSize: 10,
      },
      queryParam: {
        cmsType: '',
      },
    }
  },
  created() {
    let type = ''
    if (this.$route.query.type) {
      type = this.$route.query.type
    }
    this.getCmsList(type)
  },
  watch: {
    $route(v) {
      this.getCmsList(this.$route.query.type)
    },
  },
  methods: {
    getCmsList(type) {
      this.cmsDataSource = []
      getAction('/teaching/teachingNews/newsList', {
        cmsStatus: 1,
        cmsType: type,
        pageSize: 999,
      }).then((res) => {
        if (res.success) {
          this.info = res.result
          this.cmsDataSource = res.result.records
        }
      })
    },
    toDetail(item) {
      let route = this.$router.resolve({
        path: '/news-detail',
        query: {
          id: item.id,
        },
      })
      window.open(route.href, '_blank')
    },
    handleChangeType(v) {},
  },
}
</script>

<style lang="less" scoped>
.panel-title {
    margin-top: 24px;
    font-size: 26px;
    color: #333;
}
.gap {
  margin-left: 5px;
  margin-right: 20px;
  font-size: 14px;
}
.title {
  font-weight: 700;
}
/deep/.title:hover {
  color: #1890ff;
}
</style>
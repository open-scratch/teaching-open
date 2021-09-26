<template>
  <div class="app-list">
    <a-list :grid="{ gutter: 24, lg: 4, md: 3, sm: 2, xs: 1 }" :dataSource="dataSource">
      <a-list-item slot="renderItem" slot-scope="item, index">
        <a-card :hoverable="true">
          <!-- <template class="ant-card-extra" slot="extra">
            <span class="create-time">{{item.createTime}}</span>
          </template> -->
          <a-card-meta>
            <div style="margin-bottom: 3px" slot="title">{{ item.courseName }}</div>
            <div class="meta-cardInfo" slot="description">
              <router-link
                v-if="item.showType == 1"
                :to="{ name: 'teaching-mineCourse-courseUnitMap', query: { id: item.id } }"
              >
                <img
                  :src="getFileAccessHttpUrl(item.courseCover)"
                  height="25px"
                  alt="封面不存在"
                  style="width: 100%; height: 100%"
                />
              </router-link>
              <router-link
                v-if="item.showType == 2"
                :to="{ name: 'teaching-mineCourse-courseUnitCard', query: { id: item.id } }"
              >
                <img
                  :src="getFileAccessHttpUrl(item.courseCover)"
                  height="25px"
                  alt="封面不存在"
                  style="width: 100%; height: 100%"
                />
              </router-link>
            </div>
          </a-card-meta>
          <br />
          <span v-html="item.courseDesc" class="article-content"></span>
        </a-card>
      </a-list-item>
    </a-list>
  </div>
</template>
<script>
import { getAction,getFileAccessHttpUrl } from '@/api/manage'
import {JeecgListMixin} from '@/mixins/JeecgListMixin'
export default {
  name: 'MineCourseList',
  components: {},
  data() {
    return {
      dataSource: [],
    }
  },
  mounted() {
    this.getCourseList()
  },
  methods: {
    getFileAccessHttpUrl,
    getCourseList: function () {
      getAction('/teaching/teachingCourse/mineCourse', {}).then((res) => {
        if (res.success) {
          this.dataSource = res.result
        }
        if (res.code === 510) {
          this.$message.warning(res.message)
        }
        this.loading = false
      })
    },
  },
}
</script>

<style lang="less" scoped>
.app-list {
  .ant-card {
    height: 350px;
  }
  .meta-cardInfo {
    zoom: 1;
    margin-top: 16px;
    .title {
      margin-right: 20px;
    }
    img {
      width: 100%;
      max-height: 200px;
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
}
</style>
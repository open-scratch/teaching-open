<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline">
        <a-row :gutter="24">
          <a-col :md="6" :sm="8">
            <a-form-item label="作品名">
              <a-input placeholder="请输入作品名" v-model="queryParam.workName"></a-input>
            </a-form-item>
          </a-col>
          <a-col :md="6" :sm="8">
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button
                type="primary"
                @click="searchReset"
                icon="reload"
                style="margin-left: 8px"
              >重置</a-button>
            </span>
          </a-col>
        </a-row>
      </a-form>
    </div>

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1" @click="batchDel">
            <a-icon type="delete" />删除
          </a-menu-item>
        </a-menu>
        <a-button style="margin-left: 8px">
          批量操作
          <a-icon type="down" />
        </a-button>
      </a-dropdown>
    </div>

    <!-- table区域-begin -->
    <div>
      <div class="ant-alert ant-alert-info" style="margin-bottom: 16px;">
        <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择
        <a style="font-weight: 600">{{ selectedRowKeys.length }}</a>项
        <a style="margin-left: 24px" @click="onClearSelected">清空</a>
      </div>

      <a-table
        ref="table"
        size="middle"
        bordered
        rowKey="id"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="ipagination"
        :loading="loading"
        :rowSelection="{selectedRowKeys: selectedRowKeys, onChange: onSelectChange}"
        @change="handleTableChange"
      >
        <template slot="imgSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px;font-style: italic;">无此图片</span>
          <img
            v-else
            :src="text"
            height="25px"
            alt="图片不存在"
            style="max-width:80px;font-size: 12px;font-style: italic;"
          />
        </template>
        
        <a-tooltip slot="scoreInfo" slot-scope="text, row" :title="row.teacherComment">
          <a-rate v-model="row.score" disabled />
        </a-tooltip>

        <span slot="action" slot-scope="text, record">
          <a @click="handleView(record)">查看</a>
          <a-divider type="vertical"/>
          <a @click="handlePreview(record)">预览</a>
          <a-divider type="vertical" v-if="record.workType==1||record.workType==2"/>
          <a-popover trigger="click" v-if="record.workType==1||record.workType==2">
            <template slot="content">
              <qrcode :value="url.shareUrl + record.id" :size="250"></qrcode>
            </template>
            <a>二维码</a>
          </a-popover>
          <a-divider type="vertical" />
          <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">
            <a>删除</a>
          </a-popconfirm>
        </span>
      </a-table>
    </div>
    <!-- table区域-end -->

    <teachingWorkPreview-modal ref="previewModal"></teachingWorkPreview-modal>

    <!-- 表单区域 -->
    <!-- <teachingWork-modal ref="modalForm" @ok="modalFormOk"></teachingWork-modal> -->
  </a-card>
</template>

<script>
// import TeachingWorkModal from './modules/TeachingWorkModal'
import { postAction, getAction } from '@/api/manage'
import QrCode from '@/components/tools/QrCode'
import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import TeachingWorkPreviewModal from '@/views/teaching/modules/TeachingWorkPreviewModal'

export default {
  name: 'MineWorkList',
  mixins: [JeecgListMixin],
  components: {
    qrcode: QrCode,
    TeachingWorkPreviewModal
  },
  data() {
    return {
      description: '我的作品管理页面',
      sendWorkId: null,
      // 表头
      columns: [
        {
          title: '#',
          dataIndex: '',
          key: 'rowIndex',
          width: 60,
          align: 'center',
          customRender: function(t, r, index) {
            return parseInt(index) + 1
          }
        },
        {
          title: '作品名',
          align: 'center',
          dataIndex: 'workName'
        },
        {
          title: '截图',
          align: 'center',
          dataIndex: 'coverFileKey_url',
          scopedSlots: { customRender: 'imgSlot' }
        },
        {
          title: '观看数量',
          align: 'center',
          dataIndex: 'viewNum'
        },
        {
          title: '点赞数量',
          align: 'center',
          dataIndex: 'starNum'
        },
        {
          title: '作品状态',
          align: 'center',
          dataIndex: 'workStatus_dictText'
        },
        {
          title: '得分/评语',
          align: 'center',
          dataIndex: 'score',
          scopedSlots: { customRender: 'scoreInfo' }
        },
        {
          title: '作品类型',
          align: 'center',
          dataIndex: 'workType_dictText'
        },
        {
          title: '创作时间',
          align: 'center',
          dataIndex: 'createTime'
        },
        {
          title: '操作',
          dataIndex: 'action',
          align: 'center',
          scopedSlots: { customRender: 'action' }
        }
      ],
      url: {
        list: '/teaching/teachingWork/mine',
        delete: '/teaching/teachingWork/delete',
        deleteBatch: '/teaching/teachingWork/deleteBatch',
        shareUrl: window._CONFIG['webURL'] + "/scratch3/scratch-mobile.html?workId=",
      }
    }
  },
  computed: {},
  methods: {
    handlePreview(record){
      this.$refs.previewModal.previewCode(record)
    },
    handleView: function(record) {
      switch(record.workType){
        case '1':
          return window.open( '/scratch3/index.html?workId='+record.id)
        case '2':
          return window.open('/scratch3/index.html?workId='+record.id)
        case '3':
          return window.open('/scratchjr/editor.html?mode=edit&filepath=' + record.workFileKey_url)
        case '4':
          return window.open('/python/index.html?workId=' + record.id)
        case '10':
          return window.open('/blockly/index.html?workId=' + record.id)
        default:
          return window.open(record.workFileKey_url)
      }
    }
  }
}
</script>
<style scoped>
@import '~@assets/less/common.less';
</style>
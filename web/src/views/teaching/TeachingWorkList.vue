<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline" @keyup.enter.native="searchQuery">
        <a-row :gutter="24">
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
              <a-form-item label="作业名">
                <a-input placeholder="请输入作业名" v-model="queryParam.workName"></a-input>
              </a-form-item>
            </a-col>
            <a-col :xl="6" :lg="7" :md="8" :sm="24">
              <a-form-item label="作业类型">
                <j-dict-select-tag placeholder="请选择作业类型" v-model="queryParam.workType" dictCode="work_type" />
              </a-form-item>
            </a-col>
          <template v-if="toggleSearchStatus">
            <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="用户ID">
              <a-input placeholder="请输入用户ID" v-model="queryParam.userId"></a-input>
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="课程ID">
              <a-input placeholder="请输入课程ID" v-model="queryParam.courseId"></a-input>
            </a-form-item>
          </a-col>
          <!-- <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="班级作业ID">
              <a-input placeholder="请输入班级作业ID" v-model="queryParam.additionalId"></a-input>
            </a-form-item>
          </a-col> -->
          </template>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <span style="float: left; overflow: hidden" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
              <a @click="handleToggleSearch" style="margin-left: 8px">
                {{ toggleSearchStatus ? '收起' : '展开' }}
                <a-icon :type="toggleSearchStatus ? 'up' : 'down'" />
              </a>
            </span>
          </a-col>
        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button v-if="false" @click="handleAdd" type="primary" icon="plus">新增</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('作业列表')">导出</a-button>
      <a-upload
        v-if="false"
        name="file"
        :showUploadList="false"
        :multiple="false"
        :headers="tokenHeader"
        :action="importExcelUrl"
        @change="handleImportExcel"
      >
        <a-button type="primary" icon="import">导入</a-button>
      </a-upload>
      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1" @click="batchDel"><a-icon type="delete" />删除</a-menu-item>
        </a-menu>
        <a-button style="margin-left: 8px"> 批量操作 <a-icon type="down" /></a-button>
      </a-dropdown>
    </div>

    <!-- table区域-begin -->
    <div>
      <div class="ant-alert ant-alert-info" style="margin-bottom: 16px">
        <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择
        <a style="font-weight: 600">{{ selectedRowKeys.length }}</a
        >项
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
        :rowSelection="{ selectedRowKeys: selectedRowKeys, onChange: onSelectChange }"
        @change="handleTableChange"
      >
        <template slot="htmlSlot" slot-scope="text">
          <div v-html="text"></div>
        </template>
        <template slot="imgSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px; font-style: italic">无此图片</span>
          <img
            v-else
            :src="getImgView(text)"
            height="25px"
            alt="图片不存在"
            style="max-width: 80px; font-size: 12px; font-style: italic"
          />
        </template>
        <template slot="fileSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px; font-style: italic">无此文件</span>
          <a-button v-else :ghost="true" type="primary" icon="download" size="small" @click="uploadFile(text)">
            下载
          </a-button>
        </template>

        <span slot="action" slot-scope="text, record">
          <a @click="handleEdit(record)">批改</a>
          <a-divider type="vertical" />
          <a @click="handlePreview(record)">预览</a>
          <a-divider type="vertical" />
          <a @click="handleView(record)">查看</a>
          <a-divider type="vertical" />
          <a-dropdown>
            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>
            <a-menu slot="overlay">
              <a-menu-item v-if="record.workType == 1 || record.workType == 2">
                <a-popover trigger="click">
                  <template slot="content">
                    <qrcode :value="url.shareUrl + record.id" :size="250"></qrcode>
                  </template>
                  <a>二维码</a>
                </a-popover>
              </a-menu-item>
              <a-menu-item>
                <a @click="handleSend(record.id)">克隆至其他账号</a>
              </a-menu-item>
              <a-menu-item>
                <a @click="download(record.workFileKey_url)">下载作业文件</a>
              </a-menu-item>
              <a-menu-item>
                <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">
                  <a>删除</a>
                </a-popconfirm>
              </a-menu-item>
            </a-menu>
          </a-dropdown>
        </span>
      </a-table>
    </div>

    <teachingWork-modal ref="modalForm" @ok="modalFormOk"></teachingWork-modal>
    <teachingWorkPreview-modal ref="previewModal"></teachingWorkPreview-modal>
    <Select-User-Modal ref="selectUserModal" @selectFinished="selectStudentOK"></Select-User-Modal>
  </a-card>
</template>

<script>
import QrCode from '@/components/tools/QrCode'
import { postAction, getAction } from '@/api/manage'
import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import TeachingWorkModal from './modules/TeachingWorkModal'
import TeachingWorkPreviewModal from './modules/TeachingWorkPreviewModal'
import SelectUserModal from '../system/modules/SelectUserModal'
import JDictSelectTag from '@/components/dict/JDictSelectTag.vue'
import { filterMultiDictText } from '@/components/dict/JDictSelectUtil'

export default {
  name: 'TeachingWorkList',
  mixins: [JeecgListMixin],
  components: {
    JDictSelectTag,
    TeachingWorkModal,
    TeachingWorkPreviewModal,
    SelectUserModal,
    qrcode: QrCode,
  },
  data() {
    return {
      description: '作业列表管理页面',
      // 表头
      columns: [
        {
          title: '#',
          dataIndex: '',
          key: 'rowIndex',
          width: 60,
          align: 'center',
          customRender: function (t, r, index) {
            return parseInt(index) + 1
          },
        },
        {
          title: '用户',
          align: 'center',
          dataIndex: 'username',
        },
        {
          title: '课程单元',
          align: 'center',
          dataIndex: 'courseId_dictText',
        },
        {
          title: '班级作业',
          align: 'center',
          dataIndex: 'additionalId_dictText',

        },
        {
          title: '作业名',
          align: 'center',
          dataIndex: 'workName',
        },
        {
          title: '作业类型',
          align: 'center',
          dataIndex: 'workType_dictText',
        },
        {
          title: '作业状态',
          align: 'center',
          dataIndex: 'workStatus_dictText',
        },
        {
          title: '查看次数',
          align: 'center',
          dataIndex: 'viewNum',
        },
        {
          title: '点赞次数',
          align: 'center',
          dataIndex: 'starNum',
        },
        {
          title: '提交时间',
          align: 'center',
          dataIndex: 'createTime',
        },
        {
          title: '操作',
          dataIndex: 'action',
          align: 'center',
          scopedSlots: { customRender: 'action' },
        },
      ],
      url: {
        list: '/teaching/teachingWork/list',
        delete: '/teaching/teachingWork/delete',
        deleteBatch: '/teaching/teachingWork/deleteBatch',
        exportXlsUrl: '/teaching/teachingWork/exportXls',
        importExcelUrl: 'teaching/teachingWork/importExcel',
        sendWorkUrl: '/teaching/teachingWork/sendWork',
        shareUrl: window._CONFIG['webURL'] + '/scratch3/scratch-mobile.html?workId=',
      },
      dictOptions: {},
    }
  },
  computed: {
    importExcelUrl: function () {
      return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`
    },
  },
  methods: {
    initDictConfig() {},
    handlePreview(record) {
      this.$refs.previewModal.previewCode(record)
    },
    handleSend(id) {
      this.sendWorkId = id
      this.$refs.selectUserModal.visible = true
    },
    selectStudentOK(data) {
      let params = {}
      params.sendWorkId = this.sendWorkId
      params.userIdList = []
      for (var a = 0; a < data.length; a++) {
        params.userIdList.push(data[a])
      }
      console.log(params)
      postAction(this.url.sendWorkUrl, params).then((res) => {
        if (res.success) {
          this.$message.success(res.message)
        } else {
          this.$message.warning(res.message)
        }
      })
    },
    download(url) {
      window.open(url)
    },
    handleView: function (record) {
      switch (record.workType) {
        case '1':
          return window.open('/scratch3/index.html?workId=' + record.id)
        case '2':
          return window.open('/scratch3/index.html?workId=' + record.id)
        case '3':
          return window.open('/scratchjr/editor.html?mode=edit&filepath=' + record.workFileKey_url)
        case '4':
          return window.open('/python/index.html?workId=' + record.id)
         case '10':
            return window.open('/blockly/index.html?workId=' + record.id)
        default:
          return window.open(record.workFileKey_url)
      }
    },
  },
}
</script>
<style scoped>
@import '~@assets/less/common.less';
</style>
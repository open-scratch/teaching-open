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
            <a-form-item label="分配班级">
              <j-select-depart placeholder="请选择分配班级" :onlyLeaf="true" :onlyCategory="3" :rootOpened="true" v-model="queryParam.workDept" />
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <span style="float: left; overflow: hidden" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
              <!-- <a @click="handleToggleSearch" style="margin-left: 8px">
                {{ toggleSearchStatus ? '收起' : '展开' }}
                <a-icon :type="toggleSearchStatus ? 'up' : 'down'" />
              </a> -->
            </span>
          </a-col>
        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleAdd" type="primary" icon="plus">布置作业</a-button>
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
        class="j-table-force-nowrap"
        @change="handleTableChange"
      >
        <template slot="htmlSlot" slot-scope="text">
          <div v-html="text"></div>
        </template>
        <template slot="imgSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px; font-style: italic">无图片</span>
          <img
            v-else
            :src="getQiniuUrl(text)"
            height="25px"
            alt=""
            style="max-width: 80px; font-size: 12px; font-style: italic"
          />
        </template>
        <template slot="fileSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px; font-style: italic">无文件</span>
          <a-button v-else :ghost="true" type="primary" icon="download" size="small" @click="getQiniuFile(text)">
            下载
          </a-button>
        </template>

        <span slot="action" slot-scope="text, record">
          <a @click="handleEdit(record)">编辑</a>

          <a-divider type="vertical" />
          <a-dropdown>
            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>
            <a-menu slot="overlay">
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

    <teachingAdditionalWork-modal ref="modalForm" @ok="modalFormOk"></teachingAdditionalWork-modal>
  </a-card>
</template>

<script>
import '@/assets/less/TableExpand.less'
import { mixinDevice } from '@/utils/mixin'
import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import TeachingAdditionalWorkModal from './modules/TeachingAdditionalWorkModal'
import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'

export default {
  name: 'TeachingAdditionalWorkList',
  mixins: [JeecgListMixin, mixinDevice],
  components: {
    JSelectDepart,
    TeachingAdditionalWorkModal,
  },
  data() {
    return {
      description: '附加作业管理页面',
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
          title: 'ID',
          align: 'center',
          dataIndex: 'id',
        },
        {
          title: '代码类型',
          align: 'center',
          dataIndex: 'codeType_dictText',
        },
        {
          title: '作业名',
          align: 'center',
          dataIndex: 'workName',
        },
        {
          title: '作业描述',
          align: 'center',
          dataIndex: 'workDesc',
        },
        {
          title: '作业封面',
          align: 'center',
          dataIndex: 'workCover',
          scopedSlots: { customRender: 'imgSlot' },
        },
        {
          title: '作业文件',
          align: 'center',
          dataIndex: 'workUrl',
          scopedSlots: { customRender: 'fileSlot' },
        },
        {
          title: '分配班级',
          align: 'center',
          dataIndex: 'workDept_dictText',
        },
        {
          title: '状态',
          dataIndex: 'status_dictText'
        },
        {
          title: '创建日期',
          align: 'center',
          dataIndex: 'createTime',
        },
        {
          title: '操作',
          dataIndex: 'action',
          align: 'center',
          // fixed:"right",
          width: 147,
          scopedSlots: { customRender: 'action' },
        },
      ],
      url: {
        list: '/teaching/teachingAdditionalWork/list',
        delete: '/teaching/teachingAdditionalWork/delete',
        deleteBatch: '/teaching/teachingAdditionalWork/deleteBatch',
        exportXlsUrl: '/teaching/teachingAdditionalWork/exportXls',
        importExcelUrl: 'teaching/teachingAdditionalWork/importExcel',
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
    searchQuery() {
      if (this.queryParam.workDept) {
        this.queryParam.workDept = '*' + this.queryParam.workDept + '*'
      }
      this.loadData(1)
    },
  },
}
</script>
<style scoped>
@import '~@assets/less/common.less';
</style>
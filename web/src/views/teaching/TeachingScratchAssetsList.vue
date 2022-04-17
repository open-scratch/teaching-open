<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline" @keyup.enter.native="searchQuery">
        <a-row :gutter="24">
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="素材类型">
              <j-dict-select-tag placeholder="请选择素材类型" v-model="queryParam.assetType" dictCode="scratch_asset_type"/>
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="素材名">
              <a-input placeholder="素材名" v-model="queryParam.assetName"></a-input>
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
            </span>
          </a-col>
        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleAdd" type="primary" icon="plus">新增</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('Scratch素材库')">导出</a-button>
      <a-upload name="file" :showUploadList="false" :multiple="false" :headers="tokenHeader" :action="importExcelUrl" @change="handleImportExcel">
        <a-button type="primary" icon="import">导入</a-button>
      </a-upload>
      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1" @click="batchDel"><a-icon type="delete"/>删除</a-menu-item>
        </a-menu>
        <a-button style="margin-left: 8px"> 批量操作 <a-icon type="down" /></a-button>
      </a-dropdown>
    </div>

    <!-- table区域-begin -->
    <div>
      <div class="ant-alert ant-alert-info" style="margin-bottom: 16px;">
        <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择 <a style="font-weight: 600">{{ selectedRowKeys.length }}</a>项
        <a style="margin-left: 24px" @click="onClearSelected">清空</a>
      </div>

      <a-table
        ref="table"
        size="middle"
        :scroll="{x:true}"
        bordered
        rowKey="id"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="ipagination"
        :loading="loading"
        :rowSelection="{selectedRowKeys: selectedRowKeys, onChange: onSelectChange}"
        class="j-table-force-nowrap"
        @change="handleTableChange">

        <template slot="assetSlot" slot-scope="text,record">
          <span v-if="record.assetType==2" style="font-size: 12px;font-style: italic;">
            <audio :src="getFileAccessHttpUrl(text)" controls="controls">不支持audio标签</audio>
          </span>
          <img v-if="record.assetType==1 || record.assetType==3" :src="getFileAccessHttpUrl(text)" height="25px" alt="" style="max-width:80px;font-size: 12px;font-style: italic;"/>
          <span v-if="record.assetType==4" style="font-size: 12px;font-style: italic;">
              <img v-for="(v,i) in text.split(',')" :key="i" :src="getFileAccessHttpUrl(v)" height="25px" alt="" style="display:inline-block;max-width:80px;font-size: 12px;font-style: italic;margin-right:5px;"/>
          </span>
        </template>
        <template slot="fileSlot" slot-scope="text">
          <span v-if="!text" style="font-size: 12px;font-style: italic;">无文件</span>
          <a-button
            v-else
            :ghost="true"
            type="primary"
            icon="download"
            size="small"
            @click="downloadFile(text)">
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
                <a @click="handleDetail(record)">详情</a>
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

    <teaching-scratch-assets-modal ref="modalForm" @ok="modalFormOk"></teaching-scratch-assets-modal>
  </a-card>
</template>

<script>

  import '@/assets/less/TableExpand.less'
  import { mixinDevice } from '@/utils/mixin'
  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import TeachingScratchAssetsModal from './modules/TeachingScratchAssetsModal'
  import JDictSelectTag from '@/components/dict/JDictSelectTag.vue'
  import {filterMultiDictText} from '@/components/dict/JDictSelectUtil'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JMultiSelectTag from '@/components/dict/JMultiSelectTag'

  export default {
    name: 'TeachingScratchAssetsList',
    mixins:[JeecgListMixin, mixinDevice],
    components: {
      JDictSelectTag,
      JSelectUserByDep,
      JSelectDepart,
      JMultiSelectTag,
      TeachingScratchAssetsModal
    },
    data () {
      return {
        description: 'Scratch素材库管理页面',
        // 表头
        columns: [
          {
            title: '#',
            dataIndex: '',
            key:'rowIndex',
            width:60,
            align:"center",
            customRender:function (t,r,index) {
              return parseInt(index)+1;
            }
          },
          {
            title:'素材类型',
            align:"center",
            dataIndex: 'assetType',
            customRender(v){
              switch(v){
                case 1: return "背景";
                case 2: return "声音";
                case 3: return "造型";
                case 4: return "角色";
              }
            }
          },
          {
            title:'素材名',
            align:"center",
            dataIndex: 'assetName'
          },
          {
            title:'素材',
            align:"center",
            dataIndex: 'md5Ext',
            scopedSlots: { customRender: 'assetSlot' }
          },
          {
            title:'标签',
            align:"center",
            dataIndex: 'tags'
          },
          {
            title:'创建人',
            align:"center",
            dataIndex: 'createBy'
          },
          {
            title:'创建时间',
            align:"center",
            dataIndex: 'createTime',
          },
          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            fixed:"right",
            width:147,
            scopedSlots: { customRender: 'action' }
          }
        ],
        url: {
          list: "/teaching/teachingScratchAssets/list",
          delete: "/teaching/teachingScratchAssets/delete",
          deleteBatch: "/teaching/teachingScratchAssets/deleteBatch",
          exportXlsUrl: "/teaching/teachingScratchAssets/exportXls",
          importExcelUrl: "teaching/teachingScratchAssets/importExcel",
          
        },
        dictOptions:{},
        scratchTagCode: 'A03'
      }
    },
    created() {
    },
    watch:{
      'queryParam.assetType': {
      handler(newVal, oldVal) {
        switch (newVal) {
          case 1:
            this.scratchTagCode = 'A03A01'
            break
          case 2:
            this.scratchTagCode = 'A03A02'
            break
          case 3:
            this.scratchTagCode = 'A03A03'
            break
          case 4:
            this.scratchTagCode = 'A03A03'
            break
        }
      }
    }
    },
    computed: {
      importExcelUrl: function(){
        return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`;
      },
    },
    methods: {
      initDictConfig(){
      }
    }
  }
</script>
<style scoped>
  @import '~@assets/less/common.less';
</style>
<template>
  <a-card :bordered="false">
    <!-- 操作按钮区域 -->
    <div class="table-operator" :md="24" :sm="24" style="margin: 0 0px 10px 2px">
      <a-button :disabled="currentDept.orgCategory!=3" @click="handleAddCourse" type="primary" icon="plus">添加已有课程</a-button>

      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1" @click="batchDel">
            <a-icon type="delete" />删除关系
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
        <a style="font-weight: 600">
          {{
          selectedRowKeys.length }}
        </a>项
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
        <span slot="action" slot-scope="text, record">
          <a @click="handleEditCourse(record)">设置开课时间</a>

          <!-- <a @click="setOpenTime(record)">开课时间</a> -->

          <a-divider type="vertical" />

          <a-popconfirm title="确定要删除吗?" @confirm="() => handleDelete(record.id)">
            <a>删除</a>
          </a-popconfirm>

          <a-divider type="vertical" />
        </span>
      </a-table>
    </div>
    <!-- table区域-end -->

    <!-- 表单区域 -->
    <teachingCourseDept-modal ref="editCourse" @ok="modalFormOk"></teachingCourseDept-modal>

    <Select-Course-Modal ref="selectCourseModal" @selectFinished="selectOK"></Select-Course-Modal>
  </a-card>
</template>

<script>
import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import { getAction, postAction, deleteAction } from '@/api/manage'
import SelectCourseModal from '@/views/teaching/modules/SelectCourseModal'
import TeachingCourseDeptModal from '@/views/teaching/modules/TeachingCourseDeptModal'

export default {
  name: 'DeptCourseInfo',
  mixins: [JeecgListMixin],
  components: {
    SelectCourseModal,
    TeachingCourseDeptModal
  },
  data() {
    return {
      description: '课程信息',
      currentDeptId: '',
      currentDept: {},
      // 表头
      columns: [
        // {
        //   title: '课程ID',
        //   align: 'center',
        //   dataIndex: 'courseId'
        // },
        {
          title: '课程名',
          align: 'center',
          dataIndex: 'courseName'
        },
        {
          title: '开课时间',
          align: 'center',
          dataIndex: 'openTime'
        },
        {
          title: '操作',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' },
          align: 'center',
          width: 170
        }
      ],
      isorter: {
        column: 'teachingCourseDept.createTime',
        order: 'desc'
      },
      url: {
        list: '/teaching/teachingCourseDept/list',
        add: '/teaching/teachingCourseDept/add',
        addOrUpdate: '/teaching/teachingCourseDept/addOrUpdate',
        edit: '/teaching/teachingCourseDept/edit',
        delete: '/teaching/teachingCourseDept/delete',
        deleteBatch: '/teaching/teachingCourseDept/deleteBatch'
      }
    }
  },
  created() {},

  methods: {
    loadData(arg) {
      if (!this.url.list) {
        this.$message.error('请设置url.list属性!')
        return
      }
      //加载数据 若传入参数1则加载第一页的内容
      if (arg === 1) {
        this.ipagination.current = 1
      }
      if (this.currentDeptId === '') return
      var params = this.getQueryParams() //查询条件
      params.deptId = this.currentDeptId
      getAction(this.url.list, params).then(res => {
        if (res.success) {
          this.dataSource = res.result.records
          this.ipagination.total = res.result.total
        }
      })
    },
    batchDel: function() {
      if (!this.url.deleteBatch) {
        this.$message.error('请设置url.deleteBatch属性!')
        return
      }
      if (this.selectedRowKeys.length <= 0) {
        this.$message.warning('请选择一条记录！')
        return
      } else {
        var ids = ''
        for (var a = 0; a < this.selectedRowKeys.length; a++) {
          ids += this.selectedRowKeys[a] + ','
        }
        var that = this
        console.log(this.currentDeptId)
        this.$confirm({
          title: '确认删除',
          content: '是否删除选中数据?',
          onOk: function() {
            deleteAction(that.url.deleteBatch, { ids: ids }).then(res => {
              if (res.success) {
                that.$message.success(res.message)
                that.loadData()
                that.onClearSelected()
              } else {
                that.$message.warning(res.message)
              }
            })
          }
        })
      }
    },
    handleDelete: function(id) {
      if (!this.url.delete) {
        this.$message.error('请设置url.delete属性!')
        return
      }
      var that = this
      deleteAction(that.url.delete, { id: id }).then(res => {
        if (res.success) {
          that.$message.success(res.message)
          if (this.selectedRowKeys.length > 0) {
            for (let i = 0; i < this.selectedRowKeys.length; i++) {
              if (this.selectedRowKeys[i] == id) {
                this.selectedRowKeys.splice(i, 1)
                break
              }
            }
          }
          that.loadData()
        } else {
          that.$message.warning(res.message)
        }
      })
    },
    open(record) {
      console.log(record)
      this.currentDept = record
      this.currentDeptId = record.id
      this.loadData(1)
    },
    clearList() {
      this.currentDeptId = ''
      this.dataSource = []
    },
    hasSelectDept() {
      if (this.currentDeptId == null) {
        this.$message.error('请选择一个部门!')
        return false
      }
      return true
    },
    handleAddCourse() {
      if (this.currentDeptId == '') {
        this.$message.error('请选择一个部门!')
      } else {
        this.$refs.selectCourseModal.visible = true
      }
    },
    handleEditCourse(record) {
      this.$refs.editCourse.edit(record)
      this.$refs.editCourse.title = '编辑'
      this.$refs.editCourse.disableSubmit = false
    },
    selectOK(data) {
      let params = {}
      params.deptId = this.currentDeptId
      params.courseIdList = []
      for (var a = 0; a < data.length; a++) {
        params.courseIdList.push(data[a])
      }
      console.log(params)
      postAction(this.url.addOrUpdate, params).then(res => {
        if (res.success) {
          this.$message.success(res.message)
          this.loadData()
        } else {
          this.$message.warning(res.message)
        }
      })
    }
  }
}
</script>
<style scoped>
/** Button按钮间距 */
.ant-btn {
  margin-left: 3px;
}

.ant-card {
  margin-left: -30px;
  margin-right: -30px;
}

.table-page-search-wrapper {
  margin-top: -16px;
  margin-bottom: 16px;
}
</style>
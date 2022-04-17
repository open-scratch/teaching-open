<template>
  <a-modal
    :title="title"
    :width="1200"
    :visible="visible"
    :maskClosable="false"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel">
    <a-spin :spinning="confirmLoading">
      <!-- 主表单区域 -->
      <a-form :form="form">
        <a-row>

          <a-col :span="12" v-show="false">
            <a-form-item label="用户ID" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-user-by-dep v-decorator="['userId', validatorRules.userId]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="12" v-show="false">
            <a-form-item label="课程ID" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-user-by-dep v-decorator="['courseId', validatorRules.courseId]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="作业名" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'workName', validatorRules.workName]" placeholder="请输入作业名"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="作业类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag disabled type="list" v-decorator="['workType', validatorRules.workType]" :trigger-change="true" dictCode="work_type" placeholder="请选择作业类型"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="作业状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="radioButton" v-decorator="['workStatus', validatorRules.workStatus]" :trigger-change="true" dictCode="work_status" placeholder="请选择作业状态"/>
            </a-form-item>
          </a-col>
          <a-col :span="12" v-show="false">
            <a-form-item label="作文文件" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'workFile', validatorRules.workFile]" placeholder="请输入作文文件"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12" v-show="false">
            <a-form-item label="作业封面" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'workCover', validatorRules.workCover]" placeholder="请输入作业封面"></a-input>
            </a-form-item>
          </a-col>


        </a-row>
      </a-form>

      <!-- 子表单区域 -->
      <a-tabs v-model="activeKey" @change="handleChangeTabs">
        <a-tab-pane tab="作业批改" :key="refKeys[0]" :forceRender="true">
          <teaching-work-correct-form ref="teachingWorkCorrectForm" @validateError="validateError"></teaching-work-correct-form>
        </a-tab-pane>
      
        <a-tab-pane tab="作品评论" :key="refKeys[1]" :forceRender="true">
          <j-editable-table
            :ref="refKeys[1]"
            :loading="teachingWorkCommentTable.loading"
            :columns="teachingWorkCommentTable.columns"
            :dataSource="teachingWorkCommentTable.dataSource"
            :maxHeight="300"
            :rowNumber="true"
            :rowSelection="true"
            :disabled="false"
            :actionButton="true"/>
        </a-tab-pane>
        
      </a-tabs>

    </a-spin>
  </a-modal>
</template>

<script>

  import pick from 'lodash.pick'
  import { FormTypes,getRefPromise } from '@/utils/JEditableTableUtil'
  import { JEditableTableMixin } from '@/mixins/JEditableTableMixin'
  import { validateDuplicateValue } from '@/utils/util'
  import TeachingWorkCorrectForm from './TeachingWorkCorrectForm.vue'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: 'TeachingWorkModal',
    mixins: [JEditableTableMixin],
    components: {
    TeachingWorkCorrectForm,
      JSelectUserByDep,
      JDictSelectTag,
    },
    data() {
      return {
        labelCol: {
          span: 6
        },
        wrapperCol: {
          span: 16
        },
        labelCol2: {
          span: 3
        },
        wrapperCol2: {
          span: 20
        },
        // 新增时子表默认添加几行空数据
        addDefaultRowNum: 1,
        validatorRules: {
          userId: {rules: [
            {required: true, message: '请输入用户ID!'},
          ]},
          courseId: {rules: [
          ]},
          workName: {rules: [
            {required: true, message: '请输入作业名!'},
          ]},
          workType: {rules: [
            {required: true, message: '请输入作业类型!'},
          ]},
          workStatus: {rules: [
            {required: true, message: '请输入作业状态!'},
          ]},
          workFile: {rules: [
            {required: true, message: '请输入作文文件!'},
          ]},
          workCover: {rules: [
          ]},
          viewNum: {rules: [
            {required: true, message: '请输入查看次数!'},
          ]},
          starNum: {rules: [
            {required: true, message: '请输入点赞次数!'},
          ]},
          collectNum: {rules: [
            {required: true, message: '请输入收藏次数!'},
          ]},
        },
        refKeys: ['teachingWorkCorrect', 'teachingWorkComment', ],
        tableKeys:['teachingWorkComment', ],
        activeKey: 'teachingWorkCorrect',
        // 作业批改
        teachingWorkCorrectTable: {
          loading: false,
          dataSource: [],
          columns: [
          ]
        },
        // 作品评论
        teachingWorkCommentTable: {
          loading: false,
          dataSource: [],
          columns: [
            {
              title: '创建人',
              key: 'createBy',
              type: FormTypes.input,
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
            {
              title: '创建日期',
              key: 'createTime',
              type: FormTypes.datetime,
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
            {
              title: '用户昵称',
              key: 'nickname',
              type: FormTypes.input,
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
            },
            {
              title: '评论内容',
              key: 'comment',
              type: FormTypes.input,
              width:"200px",
              placeholder: '请输入${title}',
              defaultValue: '',
              validateRules: [{ required: true, message: '${title}不能为空' }],
            },
          ]
        },
        url: {
          add: "/teaching/teachingWork/add",
          edit: "/teaching/teachingWork/edit",
          teachingWorkCorrect: {
            list: '/teaching/teachingWork/queryTeachingWorkCorrectByMainId'
          },
          teachingWorkComment: {
            list: '/teaching/teachingWork/queryTeachingWorkCommentByMainId'
          },
        }
      }
    },
    methods: {
      getAllTable() {
        let values = this.tableKeys.map(key => getRefPromise(this, key))
        return Promise.all(values)
      },
      /** 调用完edit()方法之后会自动调用此方法 */
      editAfter() {
        let fieldval = pick(this.model,'userId','courseId','workName','workStatus','workType','workFile','workCover','viewNum','starNum','collectNum')
        this.$nextTick(() => {
          this.form.setFieldsValue(fieldval)
          this.$refs.teachingWorkCorrectForm.initFormData(this.url.teachingWorkCorrect.list,this.model.id)
        })
        // 加载子表数据
        if (this.model.id) {
          let params = { id: this.model.id }
          this.requestSubTableData(this.url.teachingWorkComment.list, params, this.teachingWorkCommentTable)
        }
      },
      /** 整理成formData */
      classifyIntoFormData(allValues) {
        let main = Object.assign(this.model, allValues.formValue)

        return {
          ...main, // 展开
          teachingWorkCorrectList: this.$refs.teachingWorkCorrectForm.getFormData(),
          // teachingWorkCommentList: allValues.tablesValue[1].values,
        }
      },
      validateError(msg){
        this.$message.error(msg)
      },
     popupCallback(row){
       this.form.setFieldsValue(pick(row,'userId','courseId','workName','workStatus','workType','workFile','workCover','viewNum','starNum','collectNum'))
     },

    }
  }
</script>

<style scoped>
</style>
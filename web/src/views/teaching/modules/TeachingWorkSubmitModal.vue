<template>
  <a-modal
    centered
    title="提交作业"
    :width="500"
    :visible="visible"
    @ok="handleOk"
    @cancel="handleCancel"
    okText="提交"
    cancelText="关闭"
  >
    <a-form>
      <a-form-item label="作业名" :labelCol="labelCol" :wrapperCol="wrapperCol">
        <a-input v-model="workInfo.workName" placeholder="请输入作业名"></a-input>
      </a-form-item>
      <a-form-item label="作业文件" :labelCol="labelCol" :wrapperCol="wrapperCol">
        <j-upload v-model="workInfo.workUrl" :number="1" :maxFileSize="10" :trigger-change="true" @saved="saved"></j-upload>
      </a-form-item>
    </a-form>
  </a-modal>
</template>

<script>
import { postAction } from '@/api/manage'
import JUpload from '@/components/jeecg/JUpload'
export default {
  data() {
    return {
      visible: false,
      labelCol: {
        xs: { span: 24 },
        sm: { span: 5 },
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 16 },
      },
      workInfo: {
        id: '',
        workName: '',
        workFile: '',
        departId: '',
        additionalId: '',
      },
    }
  },
  components: {
    JUpload,
  },
  props: {},
  created() {},
  methods: {
    open(workInfo) {
      Object.assign(this.workInfo, workInfo)
      this.visible = true
    },
    handleOk() {
      if (this.workInfo.workFile) {
        postAction('/teaching/teachingWork/submit', this.workInfo).then((res) => {
          if (res.success) {
            this.$message.success('上传成功')
            this.visible = false
            this.workInfo = {}
            this.$emit('ok')
          }
        })
      } else {
        this.$message.error('请上传作业文件')
      }
    },
    saved(fileInfo){
        this.workInfo.workFile = fileInfo.id
    },
    handleCancel() {
      this.visible = false
    },
  },
}
</script>

<style>
</style>
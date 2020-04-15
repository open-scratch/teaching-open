<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="创建日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择创建日期" v-decorator="[ 'createTime', validatorRules.createTime]" :trigger-change="true" :show-time="true" date-format="YYYY-MM-DD HH:mm:ss" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="用户ID" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'userId', validatorRules.userId]" placeholder="请输入用户ID"></a-input>
        </a-form-item>
        <a-form-item label="订单编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'orderNo', validatorRules.orderNo]" placeholder="请输入订单编号"></a-input>
        </a-form-item>
        <a-form-item label="订单金额" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'price', validatorRules.price]" placeholder="请输入订单金额" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="实付金额" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'payPrice', validatorRules.payPrice]" placeholder="请输入实付金额" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="订单状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="radio" v-decorator="['status', validatorRules.status]" :trigger-change="true" dictCode="order_status" placeholder="请选择订单状态"/>
        </a-form-item>
        <a-form-item label="活动ID" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'actionId', validatorRules.actionId]" placeholder="请输入活动ID"></a-input>
        </a-form-item>
        <a-form-item label="支付方式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="radio" v-decorator="['method', validatorRules.method]" :trigger-change="true" dictCode="pay_method" placeholder="请选择支付方式"/>
        </a-form-item>
        <a-form-item label="备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['comment', validatorRules.comment]" rows="4" placeholder="请输入备注"/>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'  
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: "TeachingOrderModal",
    components: { 
      JDate,
      JDictSelectTag,
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:800,
        visible: false,
        model: {},
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
        confirmLoading: false,
        validatorRules: {
          createTime: {rules: [
          ]},
          userId: {rules: [
            {required: true, message: '请输入用户ID!'},
          ]},
          orderNo: {rules: [
            {required: true, message: '请输入订单编号!'},
          ]},
          price: {rules: [
          ]},
          payPrice: {rules: [
          ]},
          status: {rules: [
            {required: true, message: '请输入订单状态!'},
          ]},
          actionId: {rules: [
          ]},
          method: {rules: [
            {required: true, message: '请输入支付方式!'},
          ]},
          comment: {rules: [
          ]},
        },
        url: {
          add: "/teaching/teachingOrder/add",
          edit: "/teaching/teachingOrder/edit",
        }
      }
    },
    created () {
    },
    methods: {
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'createTime','userId','orderNo','price','payPrice','status','actionId','method','comment'))
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let httpurl = '';
            let method = '';
            if(!this.model.id){
              httpurl+=this.url.add;
              method = 'post';
            }else{
              httpurl+=this.url.edit;
               method = 'put';
            }
            let formData = Object.assign(this.model, values);
            console.log("表单提交数据",formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.close();
            })
          }
         
        })
      },
      handleCancel () {
        this.close()
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'createTime','userId','orderNo','price','payPrice','status','actionId','method','comment'))
      },

      
    }
  }
</script>
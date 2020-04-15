<template>
  <div>
    <a-form :form="form">
      <a-row>

        <a-col :span="12">
          <a-form-item label="评分" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <!-- <a-input-number v-decorator="[ 'score', validatorRules.score]" placeholder="请输入评分" style="width: 100%"/> -->
            <a-rate v-decorator="[ 'score', validatorRules.score]"/>
          </a-form-item>
        </a-col>
        <a-col :span="12">
          <a-form-item label="评语" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-textarea v-decorator="[ 'comment', validatorRules.comment]" placeholder="请输入评语"></a-textarea>
          </a-form-item>
        </a-col>
      </a-row>
    </a-form>
  </div>
</template>
<script>
  import pick from 'lodash.pick'
  import { getAction } from '@/api/manage'

  export default {
    name: 'TeachingWorkCorrectForm',
    components: { 
    },
    data () {
      return {
        form: this.$form.createForm(this),
        model: {},
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
        confirmLoading: false,
        validatorRules:{
          score:{initialValue:4},
          comment:{},
        },
        
      }
    },
    methods:{
      initFormData(url,id){
        this.clearFormData()
        if(!id){
          this.edit({})
        }else{
          getAction(url,{id:id}).then(res=>{
            if(res.success){
              let records = res.result
              if(records && records.length>0){
                this.edit(records[0])
              }
            }
          })
        }
      },
      edit(record){
        this.model = Object.assign({}, record)
        console.log("TeachingWorkCorrectForm-edit",this.model);
        let fieldval = pick(this.model,'score','comment')
        this.$nextTick(() => {
          this.form.setFieldsValue(fieldval)
        })
      },
      getFormData(){
        let formdata_arr = []
        this.form.validateFields((err, values) => {
          if (!err) {
            let formdata = Object.assign(this.model, values)
            let isNullObj = true
            Object.keys(formdata).forEach(key=>{
              if(formdata[key]){
                isNullObj = false
              }
            })
            if(!isNullObj){
              formdata_arr.push(formdata)
            }
          }else{
            this.$emit("validateError","作业批改表单校验未通过");
          }
        })
        console.log("作业批改表单数据集",formdata_arr);
        return formdata_arr;
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'score','comment'))
      },
      clearFormData(){
        this.form.resetFields()
        this.model={}
      }
    
    }
  }
</script>

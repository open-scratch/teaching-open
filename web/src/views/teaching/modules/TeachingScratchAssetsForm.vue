<template>
  <a-spin :spinning="confirmLoading">
    <j-form-container :disabled="formDisabled">
      <a-form :form="form" slot="detail">
        <a-row>
          <a-col :span="24">
            <a-form-item label="素材类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-select v-decorator="['assetType', validatorRules.assetType]" @change="assetTypeChange">
                <a-select-option :value="1">背景</a-select-option>
                <a-select-option :value="2">声音</a-select-option>
                <a-select-option :value="3">造型</a-select-option>
                <a-select-option :value="4">角色</a-select-option>
              </a-select>
            </a-form-item>
          </a-col>
          <div v-if="model.assetType !== undefined">
            <a-col :span="24">
              <a-form-item label="素材名" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <a-input v-decorator="['assetName', validatorRules.assetName]" @change="generateJsonData" placeholder="请输入素材名"></a-input>
              </a-form-item>
            </a-col>
            <a-col :span="24">
              <a-form-item label="素材文件" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <j-upload
                  v-if="model.assetType != 4"
                  v-decorator="['md5Ext', validatorRules.md5Ext]"
                  @selected="selectedAsset"
                  
                  :uploadPath="assetPrefix"
                  :fileType="fileType"
                  :number="1"
                  :trigger-change="true"
                ></j-upload>
                <a-collapse v-if="model.assetType == 4" :activeKey="['1','2']">
                  <a-collapse-panel key="1" header="造型">
                    <j-upload
                      v-model="costumFile"
                      @selected="selectedCostume"
                      @delete="onCostumeDelete"
                      
                      :uploadPath="assetPrefix"
                      fileType="image"
                      :number="99"
                      :trigger-change="true"
                    ></j-upload>
                  </a-collapse-panel>
                  <a-collapse-panel key="2" header="声音">
                    <j-upload
                      v-model="soundFile"
                      @selected="selectedSound"
                      @delete="onSoundDelete"
                      
                      :uploadPath="assetPrefix"
                      :number="99"
                      :trigger-change="true"
                    ></j-upload>
                  </a-collapse-panel>
                </a-collapse>
              </a-form-item>
            </a-col>
            <a-col :span="24">
              <a-form-item label="标签" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <j-category-select
                  v-model="model.tags"
                  :pcode="scratchTagCode"
                  returnValue
                  multiple
                  placeholder="请选择标签"
                />
              </a-form-item>
            </a-col>
            <a-col :span="24">
              <a-form-item label="素材json数据" :labelCol="labelCol" :wrapperCol="wrapperCol">
                <j-code-editor
                  ref="codeEditor"
                  language="json"
                  placeholder="自动生成索引数据"
                  v-model="model.assetData"
                  :fullScreen="false"
                  style="min-height: 100px"
                />
              </a-form-item>
            </a-col>
          </div>
          <a-col v-if="showFlowSubmitButton" :span="24" style="text-align: center">
            <a-button @click="submitForm">提 交</a-button>
          </a-col>
        </a-row>
      </a-form>
    </j-form-container>
  </a-spin>
</template>

<script>
import { httpAction, getAction } from '@/api/manage'
import pick from 'lodash.pick'
import { validateDuplicateValue } from '@/utils/util'
import JFormContainer from '@/components/jeecg/JFormContainer'
import JDate from '@/components/jeecg/JDate'
import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
import JDictSelectTag from '@/components/dict/JDictSelectTag'
import JCodeEditor from '@/components/jeecg/JCodeEditor'
import JUpload from '@/components/jeecg/JUpload'
import JCategorySelect from '@/components/jeecg/JCategorySelect'

export default {
  name: 'TeachingScratchAssetsForm',
  components: {
    JFormContainer,
    JDate,
    JSelectDepart,
    JSelectUserByDep,
    JDictSelectTag,
    JCodeEditor,
    JUpload,
    JCategorySelect
  },
  props: {
    //流程表单data
    formData: {
      type: Object,
      default: () => {},
      required: false
    },
    //表单模式：true流程表单 false普通表单
    formBpm: {
      type: Boolean,
      default: false,
      required: false
    },
    //表单禁用
    disabled: {
      type: Boolean,
      default: false,
      required: false
    }
  },
  data() {
    return {
      form: this.$form.createForm(this),
      model: {},
      labelCol: {
        xs: { span: 24 },
        sm: { span: 5 }
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 16 }
      },
      confirmLoading: false,
      validatorRules: {
        md5Ext: {
          rules: [{ required: true, message: '请上传素材文件!' }]
        },
        assetName: {
          rules: [{ required: true, message: '请输入素材名!' }]
        },
        assetType: {
          rules: [{ required: true, message: '请输入素材类型!' }]
        },
        assetRole: {
          rules: [{ required: true, message: '请输入权限分类!' }]
        }
      },
      url: {
        add: '/teaching/teachingScratchAssets/add',
        edit: '/teaching/teachingScratchAssets/edit',
        queryById: '/teaching/teachingScratchAssets/queryById'
      },
      scratchTagCode: '',
      assetPrefix: 'internalapi/asset/',

      costumFile: '',
      soundFile: '',

      fileType: 'file', // 上传文件类型 file image
      assetData: {
        name: '',
        tags: []
      } //素材库结构
    }
  },
  computed: {
    formDisabled() {
      if (this.formBpm === true) {
        if (this.formData.disabled === false) {
          return false
        }
        return true
      }
      return this.disabled
    },
    showFlowSubmitButton() {
      if (this.formBpm === true) {
        if (this.formData.disabled === false) {
          return true
        }
      }
      return false
    }
  },
  created() {},
  watch: {
    'model.tags': {
      handler(newVal, oldVal) {
        if (newVal) {
          this.assetData['tags'] = this.model.tags.split(',')
        } else {
          this.assetData['tags'] = []
        }
        this.generateJsonData()
      }
    },
    'model.assetType': {
      handler(newVal, oldVal) {
        newVal == '1' || newVal == '3' ? (this.fileType = 'image') : (this.fileType = 'file')
        console.log('model.assetType');
        console.log(newVal);
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
  methods: {
    add() {
      this.edit({})
    },
    edit(record) {
      this.form.resetFields()
      this.model = Object.assign({}, record)
      this.visible = true
      if(this.model.assetData){
        this.parseJsonData(this.model.assetType, this.model.assetData)
        this.generateJsonData()
      }
      this.$nextTick(() => {
        this.form.setFieldsValue(
          pick(
            this.model,
            'assetType',
            'assetName',
            'assetData',
            'md5Ext',
            'tags',
            'createBy',
            'createTime',
          )
        )
      })
    },
    assetTypeChange(v) {
      this.model = {}
      this.model.assetType = parseInt(v)
      this.clearAssetInfo()
      this.form.resetFields()
      this.generateJsonData()
    },
    onSoundDelete(key) {
      for (let i = 0; i < this.assetData.sounds.length; i++) {
        if (key.includes(this.assetData.sounds[i].assetId)) {
          this.assetData.sounds.splice(i, 1)
          this.generateJsonData()
        }
      }
    },
    onCostumeDelete(key) {
      console.log(key);
      for (let i = 0; i < this.assetData.costumes.length; i++) {
        console.log(this.assetData.costumes[i]);
        if (key.includes(this.assetData.costumes[i].assetId)) {
          this.assetData.costumes.splice(i, 1)
          this.generateJsonData()
        }
      }
    },
    //当选择文件
    selectedAsset(key, file) {
      let fileInfo = {}
      fileInfo['name'] = file.name.split('.')[0]
      fileInfo['md5ext'] = key.replace(this.assetPrefix, '')
      fileInfo['assetId'] = fileInfo['md5ext'].split('.')[0]
      fileInfo['dataFormat'] = fileInfo['md5ext'].split('.')[1]
      let type = file.type
      if (type.startsWith('image')) {
        this.getImageInfo(file).then(info => {
          this.assetData = Object.assign(this.assetData, fileInfo, info)
          this.generateJsonData()
        })
      } else if (type.startsWith('audio')) {
        this.getSoundInfo(file).then(info => {
          this.assetData = Object.assign(this.assetData, fileInfo, info)
          this.generateJsonData()
        })
      } else {
        this.$message.info('不支持的文件类型')
        return
      }
      //如果还未起名，自动命名为文件名
      if (!this.model.assetName) {
        this.model.assetName = file.name.split('.')[0]
        this.$nextTick(() => {
          this.form.setFieldsValue({ assetName: this.model.assetName })
        })
        this.generateJsonData()
      }
    },
    selectedCostume(key, file) {
      let fileInfo = {}
      fileInfo['name'] = file.name.split('.')[0]
      fileInfo['md5ext'] = key.replace(this.assetPrefix, '')
      fileInfo['assetId'] = fileInfo['md5ext'].split('.')[0]
      fileInfo['dataFormat'] = fileInfo['md5ext'].split('.')[1]
      this.getImageInfo(file).then(info => {
        let costumeInfo = Object.assign(fileInfo, info)
        this.assetData['costumes'] = this.assetData['costumes'] || []
        this.assetData['costumes'].push(costumeInfo)
        this.generateJsonData()
      })
    },
    selectedSound(key, file) {
      let fileInfo = {}
      fileInfo['name'] = file.name.split('.')[0]
      fileInfo['md5ext'] = key.replace(this.assetPrefix, '')
      fileInfo['assetId'] = fileInfo['md5ext'].split('.')[0]
      fileInfo['dataFormat'] = fileInfo['md5ext'].split('.')[1]
      this.getSoundInfo(file).then(info => {
        let soundInfo = Object.assign(fileInfo, info)
        this.assetData['sounds'] = this.assetData['sounds'] || []
        this.assetData['sounds'].push(soundInfo)
        this.generateJsonData()
      })
    },
    getSoundInfo(file) {
      let that = this
      this.fileType = 'file'
      return new Promise((resolve, reject) => {
        let reader = new FileReader()
        reader.readAsArrayBuffer(file)
        reader.onload = () => {
          let audioCtx = new AudioContext()
          audioCtx.decodeAudioData(reader.result, audioBuffer => {
            resolve({
              sampleCount: audioBuffer.length,
              rate: audioBuffer.sampleRate
            })
          })
        }
      })
    },
    getImageInfo(file) {
      let that = this
      this.fileType = 'image'
      let suffix = file.name.split('.').pop()
      return new Promise((resolve, reject) => {
        let reader = new FileReader()
        reader.readAsDataURL(file)
        reader.onload = function() {
          var image = new Image()
          image.src = reader.result
          image.onload = function() {
            resolve({
              rotationCenterY: parseInt(image.height / 2),
              rotationCenterX: parseInt(image.width / 2),
              bitmapResolution: suffix == 'svg' ? 1 : 2
            })
          }
        }
      })
    },
    parseJsonData(type, assetData) {
      this.assetData = JSON.parse(assetData)
      if (type == 4) {
        this.soundFile = this.assetData.sounds.map(s => this.assetPrefix + s.md5ext).join(',')
        this.costumFile = this.assetData.costumes.map(s => this.assetPrefix + s.md5ext).join(',')
      }
    },
    generateJsonData() {
      var that = this
      this.$nextTick(() => {
        this.assetData['name'] = this.form.getFieldValue('assetName') || this.model.assetName
        if (this.model.assetType == 4) {
          this.assetData['isStage'] = false
          this.assetData['variables'] = {}
          this.assetData['blocks'] = {}
          this.assetData['sounds'] = this.assetData['sounds'] || []
          this.assetData['costumes'] = this.assetData['costumes'] || []
          if(this.assetData['costumes']){
            let md5Exts = []
            this.assetData['costumes'].forEach(c=>{
               md5Exts.push(that.assetPrefix+c.md5ext)
            })
            this.model.md5Ext = md5Exts.join(",")
          }
        }
        console.log(this.assetData);
        
        let data = JSON.stringify(this.assetData)
        this.model.assetData = data
        this.$refs.codeEditor.setCodeContent(data)
      })
    },
    clearAssetInfo() {
      this.costumFile = ''
      this.soundFile = ''
      this.fileType = 'file'
      this.assetData = {
        name: '',
        tags: []
      }
    },
    submitForm() {
      const that = this
      if(this.model.assetType==4 && this.assetData['costumes']===undefined){
        that.$message.warning("角色必须上传一个造型")
        return
      }
      // 触发表单验证
      this.form.validateFields((err, values) => {
        if (!err) {
          that.confirmLoading = true
          let httpurl = ''
          let method = ''
          if (!this.model.id) {
            httpurl += this.url.add
            method = 'post'
          } else {
            httpurl += this.url.edit
            method = 'put'
          }
          let formData = Object.assign(this.model, values)
          console.log('表单提交数据', formData)
          httpAction(httpurl, formData, method)
            .then(res => {
              if (res.success) {
                that.clearAssetInfo()
                that.$message.success(res.message)
                that.$emit('ok')
              } else {
                that.$message.warning(res.message)
              }
            })
            .finally(() => {
              that.confirmLoading = false
            })
        }
      })
    }
  }
}
</script>
<template>
  <a-radio-group v-if="tagType=='radio'" @change="handleInput" :value="getValueSting" :disabled="disabled">
    <a-radio v-for="(item, key) in dictOptions" :key="key" :value="item.value">{{ item.text }}</a-radio>
  </a-radio-group>

  <a-radio-group v-else-if="tagType=='radioButton'"  buttonStyle="solid" @change="handleInput" :value="getValueSting" :disabled="disabled">
    <a-radio-button v-for="(item, key) in dictOptions" :key="key" :value="item.value">{{ item.text }}</a-radio-button>
  </a-radio-group>

  <a-select v-else-if="tagType=='select'" :getPopupContainer = "getPopupContainer" :placeholder="placeholder" :disabled="disabled" :value="getValueSting" @change="handleInput">
    <a-select-option :value="undefined">请选择</a-select-option>
    <a-select-option v-for="(item, key) in dictOptions" :key="key" :value="item.value">
      <span style="display: inline-block;width: 100%" :title=" item.text || item.label ">
        <a-icon v-if="canDeleteItem" type="delete" @click="deleteDictItem($event,item)"/>
        {{ item.text || item.label }}
      </span>
    </a-select-option>
  </a-select>
</template>

<script>
  import {ajaxGetDictItems,getDictItemsFromCache,addDictItemsCache,deleteDictItems,deleteDictItemsCache} from '@/api/api'

  export default {
    name: "JDictSelectTag",
    props: {
      dictCode: String,
      placeholder: String,
      triggerChange: Boolean,
      disabled: Boolean,
      value: [String, Number],
      type: String,
      canDeleteItem: { //是否可以删除字典项
        type: Boolean,
        default: false
      },
      getPopupContainer:{
        type: Function,
        default: (node) => node.parentNode
      },
      defaultShowAll: { //是否显示全部选项
        type: Boolean,
        default: false
      },
      //默认选项
      defaultDictOptions:{
        type: Array,
        default: ()=>[]
      } 
    },
    data() {
      return {
        dictOptions: [],
        tagType:""
      }
    },
    watch:{
      dictCode:{
        immediate:true,
        handler() {
          this.initDictData()
        },
      }
    },
    created() {
      // console.log(this.dictCode);
      if(!this.type || this.type==="list"){
        this.tagType = "select"
      }else{
        this.tagType = this.type
      }
      //获取字典数据
      // this.initDictData();
    },
    computed: {
      getValueSting(){
        // update-begin author:wangshuai date:20200601 for: 不显示placeholder的文字 ------
        // 当有null或“” placeholder不显示
        return this.value != null ? this.value.toString() : undefined;
        // update-end author:wangshuai date:20200601 for: 不显示placeholder的文字 ------
      },
    },
    methods: {
      initDictData() {
        if(this.defaultShowAll){
          this.dictOptions = [{title: "全部", text: "全部", description:'', value: ''}]
        }else{
          this.dictOptions = []
        }

        if(this.defaultDictOptions != null && this.defaultDictOptions.length > 0){
          this.dictOptions = this.defaultDictOptions
        }
        
        if(this.dictCode){
          if(getDictItemsFromCache(this.dictCode)){
            this.dictOptions = this.dictOptions.concat(getDictItemsFromCache(this.dictCode))
          }else{
            //根据字典Code, 初始化字典数组
            ajaxGetDictItems(this.dictCode, null).then((res) => {
              if (res.success) {
                this.dictOptions = this.dictOptions.concat(res.result);
              }
            })
          }
        }
        console.log(this.dictOptions);
      },
      //添加字典项缓存
      addDictItems(dictValue, dictText, dictTitle, dictDesc){
        addDictItemsCache(this.dictCode, dictValue, dictText, dictTitle, dictDesc)
        this.initDictData()
      },
      //删除字典项
      deleteDictItem(e,v){
        e.stopPropagation()
        if(confirm("是否确定删除 " + v.text + "?")){
          deleteDictItems(this.dictCode, v.text).then(res=>{
            if(res.success){
              deleteDictItemsCache(this.dictCode, v.text)
              this.initDictData()
            }
          })
        }
      },
      handleInput(e) {
        let val;
        if(this.tagType=="radio"){
          val = e.target.value
        }else{
          val = e
        }
        console.log(val);
        if(this.triggerChange){
          this.$emit('change', val);
        }else{
          this.$emit('input', val);
        }
      },
      setCurrentDictOptions(dictOptions){
        this.dictOptions = dictOptions
      },
      getCurrentDictOptions(){
        return this.dictOptions
      }
    }
  }
</script>

<style scoped>
</style>
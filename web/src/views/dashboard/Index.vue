<template>
  <a-card :bordered="null">
    <div v-if="html" v-html="html"></div>
    <h1 v-else>欢迎使用{{brandName}}</h1>
  </a-card>
</template>

<script>
import {getAction} from '@/api/manage'

  export default {
    name: "Analysis",
    components: {

    },
    data() {
      return {
         brandName: this.$store.getters.sysConfig.brandName,
         html: ''
      }
    },
    created() {
      getAction("/sys/config/getConfig?key=_indexHtml").then(res=>{
        if(res.success){
          this.html = res.result
        }
      })
    },
    methods: {

    }
  }
</script>
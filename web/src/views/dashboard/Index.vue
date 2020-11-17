<template>
  <div>
    <h1>欢迎使用{{brandName}}教学系统</h1>
  </div>
</template>

<script>


  export default {
    name: "Analysis",
    components: {

    },
    data() {
      return {
         brandName: window._CONFIG['brandName']
      }
    },
    created() {

    },
    methods: {

    }
  }
</script>
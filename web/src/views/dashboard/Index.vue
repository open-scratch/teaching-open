<template>
  <div>
    <h1>欢迎使用{{brandName}}</h1>
  </div>
</template>

<script>


  export default {
    name: "Analysis",
    components: {

    },
    data() {
      return {
         brandName: this.$store.getters.sysConfig.brandName
      }
    },
    created() {

    },
    methods: {

    }
  }
</script>
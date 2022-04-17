<template>
    <div class="footer" v-html="$store.getters.sysConfig.footer"></div>
</template>
<script>
</script>
<style scoped>
.footer {
  width: 100%;
  height: 90px;
  bottom:0;
  padding-top: 20px;
  padding-bottom: 15px;
  text-align: center;
}
</style>
<template>
  <div class="header">
    <router-link :to="{path:'/home'}">
      <img class="logo" src="/logo.png" alt="" />
    </router-link>
    <div class="brand">
      <p class="brand-title">{{ brandName }}</p>
      <p class="brand-desc">{{ brandDesc }}</p>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      brandName: window._CONFIG['brandName'],
      brandDesc: window._CONFIG['brandDesc'],
    }
  },
}
</script>

<style scoped>
.header{
    margin-top: 25px;
    line-height: 30px;
}
.logo {
  height: 100px;
  width: auto;
  margin-right: 20px;
  display: inline-block;
}
.brand{
    display: inline-block;
    vertical-align: middle;
}
.brand-title {
  color: white;
  font-size: 30px;
  text-shadow: 0 0 5px #282828;
  margin-bottom: 10px;
}
.brand-desc {
  color: white;
  font-size: 18px;
  font-style: italic;
}
</style>
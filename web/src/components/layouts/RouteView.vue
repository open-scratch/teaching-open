<template>
  <div class="main">
  <keep-alive>
    <router-view v-if="keepAlive" :key="$route.name+($route.params.id||'')"/>
  </keep-alive>
  <router-view v-if="!keepAlive" :key="$route.name+($route.params.id||'')"/>
  </div>
</template>

<script>
  export default {
    name: "RouteView",
    computed: {
      keepAlive () {
        return this.$route.meta.keepAlive
      }
    },
  }
</script>
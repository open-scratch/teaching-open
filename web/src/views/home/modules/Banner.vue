<template>
  <div class="banner">
    <div v-if="banner.length > 0">
      <swiper ref="mySwiper" :options="swiperOptions" class="swiper-wrappe carousel">
        <swiper-slide class="swiper-slide" v-for="(b, i) in banner" :key="i">
          <a v-if="b.href" :href="b.href" target="_blank">
            <img :src="b.img" alt="" />
          </a>
          <img v-else :src="b.img" alt="" />
        </swiper-slide>

        <!-- 分页器 -->
        <div
          class="swiper-pagination swiper-pagination-white"
          slot="pagination"
        ></div>
        <!-- 左右箭头 -->
        <div
          class="swiper-button-prev swiper-button-white"
          slot="button-prev"
        ></div>
        <div
          class="swiper-button-next swiper-button-white"
          slot="button-next"
        ></div>
      </swiper>
    </div>
  </div>
</template>

<script>
import { getFileAccessHttpUrl } from '@/api/manage'
export default {
  name: 'Banner',
  components: {},
  data() {
    return {
      swiperOptions: {
        speed: 800,
        effect: 'coverflow', //"fade"（淡入）、"cube"（方块）、"coverflow"（3d流）、"flip"（3d翻转）
        //显示分页
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        //设置点击箭头
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        //自动轮播
        autoplay: {
          delay: 5000,
          //当用户滑动图片后继续自动轮播
          disableOnInteraction: false,
        },
        //开启循环模式
        loop: true,
      },
      banner: [],
      sysConfig: {},
      loading: true,
    }
  },
  created() {
    //获取banner数据
    this.sysConfig = this.$store.getters.sysConfig

    if (this.sysConfig.banner) {
      var banners = this.sysConfig.banner.split(',')
      if (this.sysConfig.bannerLinks) {
        var bannerLinks = this.sysConfig.bannerLinks.split('\n')
      } else {
        var bannerLinks = []
      }
      for (var i in banners) {
        var b = {}
        b.img = getFileAccessHttpUrl(banners[i])
        if (bannerLinks.length > i) {
          b.href = bannerLinks[i]
        }
        this.banner.push(b)
      }
    }
  },
  methods: {},
}
</script>

<style lang="less" scoped>
.carousel {
  height: 300px;
  border-radius: 20px;
  img {
    width: 100%;
    height: 300px;
  }
  .swiper-slide {
    background-position: center;
    background-size: cover;
  }
}
</style>
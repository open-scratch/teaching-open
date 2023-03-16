<template>
  <div class="keyboard">
    <a-row class="control_A flex" v-if="type == 1">
      <a-col :span="12" class="control_direct">
        <div>
          <p
            @touchstart="keydown($event, 'ArrowUp', 38)"
            @touchend="keyup($event, 'ArrowUp', 38)"
            class="key button_up"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
        </div>
        <div>
          <p
            @touchstart="keydown($event, 'ArrowLeft', 37)"
            @touchend="keyup($event, 'ArrowLeft', 37)"
            class="key rotate_left button_left"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
          <p
            @touchstart="keydown($event, 'ArrowRight', 39)"
            @touchend="keyup($event, 'ArrowRight', 39)"
            class="key rotate_right button_right"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
        </div>
        <div>
          <p
            @touchstart="keydown($event, 'ArrowDown', 40)"
            @touchend="keyup($event, 'ArrowDown', 40)"
            class="key rotate_down button_down"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
        </div>
      </a-col>
      <a-col :span="12" class="control_space">
        <p
          @touchstart="keydown($event, ' ', 32)"
          @touchend="keyup($event, ' ', 32)"
          class="space button_space"
          id=""
        ></p>
      </a-col>
    </a-row>
    <a-row class="control_B flex" v-if="type == 2">
      <a-col :span="12" class="control_direct">
        <div>
          <p
            @touchstart="keydown($event, 'w', 87)"
            @touchend="keyup($event, 'w', 87)"
            class="key button_w"
            id=""
            style="background: url('/scratch3/image/w.png') no-repeat left top"
          ></p>
        </div>
        <div>
          <p
            @touchstart="keydown($event, 'a', 65)"
            @touchend="keyup($event, 'a', 65)"
            class="key button_a"
            id=""
            style="background: url('/scratch3/image/a.png') no-repeat left top"
          ></p>
          <p
            @touchstart="keydown($event, 'd', 68)"
            @touchend="keyup($event, 'd', 68)"
            class="key button_d"
            id=""
            style="background: url('/scratch3/image/d.png') no-repeat left top"
          ></p>
        </div>
        <div>
          <p
            @touchstart="keydown($event, 's', 83)"
            @touchend="keyup($event, 's', 83)"
            class="key button_s"
            id=""
            style="background: url('/scratch3/image/s.png') no-repeat left top"
          ></p>
        </div>
      </a-col>
      <a-col :span="12" class="control_direct">
        <div>
          <p
            @touchstart="keydown($event, 'ArrowUp', 38)"
            @touchend="keyup($event, 'ArrowUp', 38)"
            class="key button_up"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
        </div>
        <div>
          <p
            @touchstart="keydown($event, 'ArrowLeft', 37)"
            @touchend="keyup($event, 'ArrowLeft', 37)"
            class="key rotate_left button_left"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
          <p
            @touchstart="keydown($event, 'ArrowRight', 39)"
            @touchend="keyup($event, 'ArrowRight', 39)"
            class="key rotate_right button_right"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
        </div>
        <div>
          <p
            @touchstart="keydown($event, 'ArrowDown', 40)"
            @touchend="keyup($event, 'ArrowDown', 40)"
            class="key rotate_down button_down"
            id=""
            style="
              background: url('/scratch3/image/arrow.png') no-repeat left top;
            "
          ></p>
        </div>
      </a-col>
    </a-row>
  </div>
</template>

<script>
export default {
  name: "Keyboard",
  props: {
    type: {
      type: Number,
      default: 1,
    },
  },
  methods: {
    keydown(e, key, keyCode) {
      this.$emit('event', key, keyCode, true)
      e.preventDefault();
    },
    keyup(e, key, keyCode) {
      this.$emit('event', key, keyCode, false)
      e.preventDefault();
    },
  },
};
</script>

<style scoped>
/* 游戏键盘 */
.keyboard {
  /* display: flex; */
  /* height: 5rem; */
  margin: 0 0.6rem;
  border-radius: 5px;
}

.control_direct {
  -webkit-box-flex: 1.5;
  /* OLD - iOS 6-, Safari 3.1-6 */
  -moz-box-flex: 1.5;
  /* OLD - Firefox 19- */
  -webkit-flex: 1.5;
  /* Chrome */
  -ms-flex: 1.5;
  flex: 1.5;
}

.control_space {
  -webkit-box-flex: 1;
  /* OLD - iOS 6-, Safari 3.1-6 */
  -moz-box-flex: 1;
  /* OLD - Firefox 19- */
  -webkit-flex: 1;
  /* Chrome */
  -ms-flex: 1;
  flex: 1;
  text-align: center;
  vertical-align: middle;
}

.control_direct div {
  text-align: center;
  height: 2.25rem;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

.key {
  width: 2.25rem;
  height: 2.25rem;
  display: inline-block;
  background-size: 100% 100% !important;
}

.control_direct div:nth-of-type(1) {
  margin-top: 0.18rem;
}

.control_direct div:nth-of-type(3) {
  margin-bottom: 1rem;
}

.control_direct div:nth-of-type(2) p:nth-of-type(1) {
  margin-right: 2rem;
}

.rotate_left {
  transform: rotate(-90deg);
  -webkit-transform: rotate(-90deg);
  /* for Chrome || Safari */
  -moz-transform: rotate(-90deg);
  /* for Firefox */
  -ms-transform: rotate(-90deg);
  /* for IE */
  -o-transform: rotate(-90deg);
  /* for Opera */
}

.rotate_right {
  transform: rotate(90deg);
  -webkit-transform: rotate(90deg);
  /* for Chrome || Safari */
  -moz-transform: rotate(90deg);
  /* for Firefox */
  -ms-transform: rotate(90deg);
  /* for IE */
  -o-transform: rotate(90deg);
  /* for Opera */
}

.rotate_down {
  transform: rotate(180deg);
  -webkit-transform: rotate(180deg);
  /* for Chrome || Safari */
  -moz-transform: rotate(180deg);
  /* for Firefox */
  -ms-transform: rotate(180deg);
  /* for IE */
  -o-transform: rotate(180deg);
  /* for Opera */
}

.control_space {
  text-align: center;
}

.control_space p {
  display: inline-block;
  background: url("/scratch3/image/space.png") no-repeat center center;
  background-size: contain;
  width: 5.67rem;
  height: 5.67rem;
  margin-top: 1.3rem;
}
</style>
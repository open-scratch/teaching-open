<template>
  <j-modal
    :visible="visible"
    :title="record.workName"
    switchFullscreen
    :width="width"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭"
  >
    <iframe id="player" scrolling="auto" :src="frameHref" :width="width-70" :height="height"></iframe>
  </j-modal>
</template>
<script>
export default {
  name: 'TeachingWorkPreviewModal',
  components: {},
  data() {
    return {
      visible: false,
      record: {},
      frameHref: '',
      width: 620,
      height: 500
    }
  },
  created() {},
  methods: {
    previewCode(record) {
      this.visible = true
      // this.frameHref = '/scratch3/player.html?workId=' + record.id
      this.frameHref = ''
      switch (record.workType) {
        case '1':
          this.frameHref = '/scratch3/player.html?workId=' + record.id
          this.width = 620
          this.height = 500
          return
        case '2':
          this.frameHref = '/scratch3/player.html?workId=' + record.id
          this.width = 620
          this.height = 500
          return
        case '3':
          this.frameHref = '/scratchjr/editor.html?mode=look&workFile=' + record.workFileKey_url
          this.width = 1500
          this.height = 700
          return
        case '4':
          this.frameHref = '/python/player.html?lang=turtle&url=' + record.workFileKey_url
          this.width = 620
          this.height = 600
          return
        case '10':
          this.frameHref = '/blockly/index.html?lang=zh-hans&workId=' + record.id
          this.width = 1500
          this.height = 700
          return
      }
    },
    close() {
      this.$emit('close')
      this.visible = false
      window.player.contentWindow.vm.stopAll()
      this.frameHref = ""
    },

    handleOk() {
      this.close()
    },
    handleCancel() {
      this.close()
    },
  },
}
</script>
<style scoped>
iframe {
  overflow: hidden;
  border: none;
  /* width: 550px; */
  /* height: 500px; */
}
</style>
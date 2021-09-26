<template>
  <a-modal
    :visible="visible"
    :title="record.workName"
    :width="600"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭"
  >
    <iframe id="player" scrolling="no" :src="frameHref"></iframe>
  </a-modal>
</template>
<script>
import { getAction,getFileAccessHttpUrl } from '@/api/manage'
export default {
  name: 'TeachingWorkPreviewModal',
  components: {},
  data() {
    return {
      visible: false,
      record: {},
      frameHref: '',
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
          return
        case '2':
          this.frameHref = '/scratch3/player.html?workId=' + record.id
          return
        case '3':
          this.frameHref = '/scratchjr/editor.html?mode=edit&filepath=' + record.workFileUrl
          return
        case '4':
          this.frameHref = '/python/player.html?lang=turtle&url=' + record.workFileUrl
          return
      }
    },
    close() {
      this.$emit('close')
      this.visible = false
      window.player.contentWindow.vm.stopAll()
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
  width: 520px;
  height: 500px;
}
</style>
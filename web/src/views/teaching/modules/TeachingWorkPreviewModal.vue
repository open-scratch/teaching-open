<template>
  <a-modal
    :visible="visible"
    :title="record.workName"
    :width="600"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭"
  >
    <iframe id="player" :src="scratchFrameHref"></iframe>
  </a-modal>
</template>
<script>
import { getAction } from '@/api/manage'
export default {
  name: 'TeachingWorkPreviewModal',
  components: {},
  data() {
    return {
      visible: false,
      record: {},
      scratchFrameHref: ''
    }
  },
  created() {},
  methods: {
    previewScratch(record) {
      this.visible = true
      this.scratchFrameHref = '/scratch3/player.html?workId=' + record.id
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
    }
  }
}
</script>
<style scoped>
iframe {
    border: none;
    width: 520px;
    height: 500px;
}
</style>
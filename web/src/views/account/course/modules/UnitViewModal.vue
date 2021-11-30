<template>
  <div>
    <j-modal
      :visible="visible"
      :title="unit.unitName"
      @cancel="handleCancel"
      switchFullscreen
      :footer="null"
      :maskClosable="false"
      :width="800"
    >
      <div class="video-area">
        <a-tabs v-if="unit.courseVideo&&unit.courseCase">
          <a-tab-pane key="video" tab="视频" v-if="unit.courseVideo">
            <video v-if="unit.courseVideoSource==1" :src="getQiniuFile(unit.courseVideo)" controls="true"></video>
            <video v-if="unit.courseVideoSource==2" :src="unit.courseVideo" controls="true"></video>
            <div v-if="unit.courseVideoSource==3" v-html="unit.courseVideo"></div>
          </a-tab-pane>
          <a-tab-pane key="scratch" tab="案例" v-if="unit.courseCase">
            <iframe id="player" :src="previewCourseCase(unit)"></iframe>
          </a-tab-pane>
        </a-tabs>
      </div>
      <a-divider>本节课资料</a-divider>
      <div>
        <a-row :gutter="24">
          <a-col :span="16">
            <a-card size="small" title="课程说明">
              <div v-html="unit.unitIntro ? unit.unitIntro.replace(/\n/g, '<br>') : ''"></div>
            </a-card>
          </a-col>
          <a-col :span="8">
            <a-collapse defaultActiveKey="0" :bordered="false">
              <template v-slot:expandIcon="props">
                <a-icon type="caret-right" :rotate="props.isActive ? 90 : 0" />
              </template>
              <a-collapse-panel :header="'课后作业'" :style="customStyle">
                <a
                  target="_blank"
                  @click="handleViewCode(unit)"
                  ><a-icon type="edit" />{{ unit.unitName }} 去做作业</a
                >
              </a-collapse-panel>
              <a-collapse-panel v-if="unit.coursePpt" :header="'课程资料'" :style="customStyle">
                <a target="_blank" :href="getFileAccessHttpUrl(unit.coursePpt)"
                  ><a-icon type="edit" />{{ unit.unitName }} 查看资料</a
                >
              </a-collapse-panel>
            </a-collapse>
          </a-col>
        </a-row>
      </div>
    </j-modal>
  </div>
</template>
<script>

import { getFileAccessHttpUrl } from '@/api/manage'
export default {
  name: 'UnitViewModal',
  data() {
    return {
      customStyle: 'background: #f7f7f7;border-radius: 4px;margin-bottom: 24px;border: 0;overflow: hidden',
      visible: false,
      unit: {},
      scratchFrameHref: '',
    }
  },
  methods: {
    getFileAccessHttpUrl,
    handleCancel(e) {
      this.unit = {}
      this.visible = false
    },
    previewCourseCase(unit) {
      let url = this.getFileAccessHttpUrl(unit.courseCase)
      switch(unit.courseWorkType){
        case 1:
          return '/scratch3/player.html?workUrl=' + url
        case 2:
          return '/scratch3/player.html?workUrl=' + url
        case 3:
          return '/scratchjr/editor.html?mode=edit&filepath=' + url
        case 4:
          return '/python/player.html?lang=turtle&url='+ url
      }
    },
    handleViewCode (unit) {
      switch (unit.courseWorkType) {
        case 1:
          window.open('/scratch3/index.html?scene=course&unitId='+unit.id)
          break
        case 2:
          window.open('/scratch3/index.html?scene=course&unitId='+unit.id)
          break
        case 3:
          window.open('/scratchjr/editor.html?mode=edit&filepath=' + this.getFileAccessHttpUrl(unit.courseWork))
          break
        case 4:
          window.open('/python/index.html?lang=turtle&unitId='+unit.id + "&url=" + this.getFileAccessHttpUrl(unit.courseWork))
          break
        default:
          window.open(this.getFileAccessHttpUrl(unit.mediaPath))
      }
  },
  },
}
</script>
<style lang="less" scoped>
.video-area {
  video {
    width: 100%;
    max-height: 500px;
  }
}
#player {
  border: none;
  width: 520px;
  height: 400px;
  margin: auto;
  display: block;
}
</style>

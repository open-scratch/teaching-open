<template>
  <div>
    <a-modal v-model="visible" :title="unit.unitName" onOk="handleOk" :footer="null" :maskClosable="false" :width="800">
      <template slot="footer">
        <a-button key="back" @click="handleCancel">关闭</a-button>
      </template>

      <div class="video-area">
        <video :src="getQiniuFile(unit.courseVideo)" controls="true"></video>
      </div>
      <a-divider>本节课作业</a-divider>
      <div>
        <a-row :gutter="24">
          <a-col :span="16">
            <a-card size="small" title="课程说明">
              <div v-html="unit.unitIntro ? unit.unitIntro.replace(/\n/g,'<br>') : ''"></div>
            </a-card>
          </a-col>
          <a-col :span="8">
            <a-collapse defaultActiveKey="0" :bordered="false">
              <template v-slot:expandIcon="props">
                <a-icon type="caret-right" :rotate="props.isActive ? 90 : 0" />
              </template>
              <a-collapse-panel :header="'课后作业'"  :style="customStyle">
                <a target="_blank" :href="'/scratch'+(unit.courseWorkType===1?'2':'3')+'/index.html?unitId='+unit.id"><a-icon type="edit" />{{unit.unitName}} 去做作业</a>
              </a-collapse-panel>
              <a-collapse-panel :header="'课程资料'"  :style="customStyle">
                <a target="_blank" :href="getQiniuFile(unit.coursePpt)"><a-icon type="edit" />{{unit.unitName}} 查看PPT</a>
              </a-collapse-panel>
            </a-collapse>
          </a-col>
        </a-row>
      </div>
    </a-modal>
  </div>
</template>
<script>
export default {
  name: 'UnitViewModal',
  data() {
    return {
      customStyle:
          'background: #f7f7f7;border-radius: 4px;margin-bottom: 24px;border: 0;overflow: hidden',
      visible: false,
      unit: {}
    }
  },
  methods: {
    handleCancel(e) {
      this.visible = false
    },
    getQiniuFile(text){
          if(!text){
            // this.$message.warning("未知的文件")
            return;
          }
          if(text.indexOf(",")>0){
            text = text.substring(0,text.indexOf(","))
          }
          return window._CONFIG['qn_base'] + text;
      }
  }
}
</script>
<style lang="less" scoped>
.video-area{
  video{
    width: 100%;
    max-height: 500px;
  }
}
</style>

<template>
  <j-modal
    :visible="visible"
    :width="1200"
    title="地图编辑器"
    :fullscreen="true"
    :switchFullscreen="true"
    @ok="handleOk"
    @cancel="handleCancel"
  >
    <div class="map-config">
      <a-row>
        <a-col :span="8">
          <a-select v-model="currentUnitId" style="width: 200px">
            <a-select-option v-for="unit in unitList" :key="unit.id">
              {{ unit.unitName }}
            </a-select-option>
          </a-select>
        </a-col>
        <a-col :span="8">
          <div class="position">
            <a-input prefix="X:" v-model="currentUnit.mapX" placeholder="x坐标" />
            <a-input prefix="Y:" v-model="currentUnit.mapY" placeholder="y坐标" />
          </div>
        </a-col>
        <a-col :span="8"> <a-tag color="red">双击图标开始拖动/结束拖动</a-tag> </a-col>
      </a-row>
    </div>
    <div
      class="map-wrapper"
      id="map-wrapper"
      :style="{ background: 'url(' + mapUrl + ') no-repeat', backgroundSize: 'auto', height: '1000px' }"
    >
      <div
        v-for="unit in unitList"
        :key="unit.id"
        class="unit"
        :style="{ left: unit.mapX + 'px', top: unit.mapY + 'px' }"
        @click="selectUnit(unit.id)"
        @dblclick="drag(unit.id)"
      >
        <i :class="currentUnitId==unit.id?'flag active':'flag'" :style="mapIconUrl?'background-image:url('+mapIconUrl+')':''"></i>
        <!-- <div class="unit-title">{{ unit.unitName }}</div> -->
        <a-tag>{{ unit.unitName }}</a-tag>
      </div>
    </div>
  </j-modal>
</template>

<script>
import { getAction, putAction } from '@/api/manage'
export default {
  name: 'TeachingMapEditor',
  props: {},
  data() {
    return {
      visible: false,
      courseInfo: {},
      mapUrl: '',
      mapIconUrl: '',
      unitList: [],
      currentUnitId: '',
      currentUnit: {},
      flags: false,
      saved: true
    }
  },
  watch: {
    currentUnitId(newValue) {
      this.currentUnit = this.unitList.filter((x) => {
        return x.id == newValue
      })[0]
    },
  },
  created() {},
  methods: {
    open(courseInfo) {
      this.visible = true
      this.courseInfo = courseInfo
      this.mapUrl = this.courseInfo.courseMap_url
      this.mapIconUrl = this.courseInfo.courseMapIcon_url
      this.getUnitInfo(this.courseInfo.id,null)
    },
    openById(courseId, unitId){
      this.visible = true
      getAction('/teaching/teachingCourse/queryById', {id:courseId}).then(res=>{
        this.courseInfo = res.result
        this.mapUrl = this.courseInfo.courseMap_url
        this.mapIconUrl = this.courseInfo.courseMapIcon_url
      })
      this.getUnitInfo(courseId,unitId)
    },
    handleOk() {
      putAction('/teaching/teachingCourseUnit/editBatch', this.unitList).then((res) => {
        this.$message.success(res.message)
        this.saved = true
      })
    },
    handleCancel() {
      var that = this
      if(this.saved){
        this.visible = false
      }else{
        
        this.$confirm({
          title: '提示',
          content: '地图已修改，确定要关闭吗 ?',
          onOk() {
            that.visible = false
          },
          onCancel() {
          },
        });
      }
    },
    getUnitInfo(courseId, selectUnitId) {
      getAction('/teaching/teachingCourseUnit/list', { courseId: courseId, pageSize:999 }).then((res) => {
        if (res.success && res.result.total > 0) {
          this.unitList = res.result.records
          this.currentUnitId = selectUnitId==null?this.unitList[0].id:selectUnitId
          console.log("----"+this.currentUnitId);
        } else {
          this.$message.error('没有课程单元')
        }
      })
    },

    selectUnit(unitId) {
      this.currentUnitId = unitId
    },
    drag(unitId) {
      this.currentUnitId = unitId
      this.flags = !this.flags
      if (this.flags) {
        window.addEventListener('mousemove', this.mouseMove)
      } else {
        window.removeEventListener('mousemove', this.mouseMove)
        this.unitList.forEach((u) => {
          if (u.id == unitId) {
            u = this.currentUnit
          }
        })
      }
    },
    mouseMove(e) {
      this.saved = false
      this.currentUnit.mapY = e.clientY - document.getElementById('map-wrapper').offsetTop - 25
      this.currentUnit.mapX = e.clientX - document.getElementById('map-wrapper').offsetLeft - 25
    },
  },
}
</script>

<style lang="less" scoped>
.map-config {
  padding-bottom: 10px;
  .position {
    .ant-input-affix-wrapper {
      width: 80px;
      display: inline-block;
      margin-right: 10px;
    }
  }
}
.map-editor {
  width: 1000px;
  height: 700px;
}
.map-wrapper {
  .map {
    position: absolute;
  }
  .unit {
    width: 50px;
    height: 0;
    position: relative;
    display: block;
    .flag {
      display: block;
      width: 64px;
      height: 64px;
      background-image: url('/img/position.png');
      background-repeat: no;
      background-size: 64px 64px;
      opacity: .5;
      // margin: 10px 0;
      // border-radius: 0px 18px 31px 18px;
      // transform: rotate(225deg);
      // background: radial-gradient(#aedbe6, #57b0f3d4, #128fec);;
      // -webkit-box-shadow:rgba(66,140,240,0.5) 0px 10px 16px;
    }
    .active{
      opacity: 1;
    }
    .unit-title {
      background-color: #52c41ab3;
      display: block;
      width: fit-content;
      padding: 0.4em 0.6em 0.3em;
      font-size: 75%;
      font-weight: 700;
      line-height: 1;
      color: #fff;
      text-align: center;
      white-space: nowrap;
      vertical-align: baseline;
      border-radius: 0.25em;
    }
  }
}
</style>
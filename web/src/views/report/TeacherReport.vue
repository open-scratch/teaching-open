<template>
  <div style="background:white; padding:10px;">
    <div>
      <!-- 查询区域 -->
      <a-radio-group
        default-value="day60"
        button-style="solid"
        @change="radioDateChange"
      >
        <a-radio-button value="day30"> 最新30天 </a-radio-button>
        <a-radio-button value="day60"> 最新60天 </a-radio-button>
        <a-radio-button value="day90"> 最新90天 </a-radio-button>
      </a-radio-group>
      <a-divider type="vertical"></a-divider>
      <a-range-picker @change="dataChange" v-model="queryDate">
        <template slot="dateRender" slot-scope="current">
          <div class="ant-calendar-date" :style="getCurrentStyle(current)">
            {{ current.date() }}
          </div>
        </template>
      </a-range-picker>
    </div>
    <div class="main">
      <br />
      <div class="title">
        <h2>
          教学数据概览
          <a-tooltip placement="top">
            <template slot="title">
              <span>统计数据实时更新（会存在分钟级的误差)</span>
            </template>
            <a-icon type="question-circle" style="color: gray" />
          </a-tooltip>
        </h2>
      </div>
      <br />
      <a-row justify="space-around" type="flex">
        <a-col :span="4">
          <div class="data-tag" style="">
            <h3>
              开课节数
              <a-tooltip placement="top">
                <template slot="title">
                  <span>教师的上课次数</span>
                </template>
                <a-icon type="question-circle" style="color: gray" />
              </a-tooltip>
            </h3>
            <h2>{{ courseUnitOpenCount }}</h2>
          </div>
        </a-col>
        <a-col :span="4">
          <div class="data-tag" style="">
            <h3>
              作业布置次数
              <a-tooltip placement="top">
                <template slot="title">
                  <span>教师布置作业的次数</span>
                </template>
                <a-icon type="question-circle" style="color: gray" />
              </a-tooltip>
            </h3>
            <h2>{{ workAssignCount }}</h2>
          </div>
        </a-col>
        <a-col :span="4">
          <div class="data-tag" style="">
            <h3>
              作业上交数量

              <a-tooltip placement="top">
                <template slot="title">
                  <span>学生完成作业的份数</span>
                </template>
                <a-icon type="question-circle" style="color: gray" />
              </a-tooltip>
            </h3>
            <h2>{{ workSubmitCount }}</h2>
          </div>
        </a-col>
        <a-col :span="4">
          <div class="data-tag" style="">
            <h3>
              作业批改数量

              <a-tooltip placement="top">
                <template slot="title">
                  <span>教师批改作业的份数</span>
                </template>
                <a-icon type="question-circle" style="color: gray" />
              </a-tooltip>
            </h3>
            <h2>{{ workReviewCount }}</h2>
          </div>
        </a-col>
        <a-col :span="4"></a-col>
      </a-row>
      <br />
      <a-row>
        <a-col :span="8">
          <h3>布置作业类型分布</h3>
          <pie
            title="布置作业类型分布"
            :height="250"
            :dataSource="pieDataSource"
          />
        </a-col>
        <a-col :span="14">
          <h3 style="padding-left: 97px">开课节数/作业布置次数</h3>
          <line-chart-multid :height="250" :dataSource="lingChartDataSource" :fields="['unitOpenCount', 'workAssignCount']" :aliases="[{field:'unitOpenCount',alias:'开课节数'}, {field:'workAssignCount',alias:'作业布置次数'}]"/>
        </a-col>
      </a-row>
      <br />
      <div>
        <h2>班级教学数据统计</h2>
        <a-table
          :pagination="ipagination"
          :columns="columns"
          :data-source="departDataSource"
          :row-key="(record) => record.departId"
        >
        </a-table>
      </div>
    </div>
  </div>
</template>

<script>
import moment from "moment";
import Pie from "@/components/chart/Pie";
import LineChartMultid from "@/components/chart/LineChartMultid";
import { getAction } from "@/api/manage";
export default {
  name: "TeacherReport",
  components: {
    Pie,
    LineChartMultid,
  },
  data() {
    return {
      queryDate: [moment(new Date()).subtract(2, "months"), moment(new Date())],
      courseUnitOpenCount: 0,
      workAssignCount: 0,
      workSubmitCount: 0,
      workReviewCount: 0,
      pieDataSource: [
        { item: "随堂作业", count: 0 },
        { item: "自定义作业", count: 0 },
      ],
      lingChartDataSource: [],
      departDataSource: [],
      ipagination: {
        current: 1,
        pageSize: 100,
        pageSizeOptions: ["100"],
        showTotal: (total, range) => {
          return range[0] + "-" + range[1] + " 共" + total + "条";
        },
        showQuickJumper: true,
        showSizeChanger: true,
        total: 0,
      },
      columns: [
        {
          title: "班级",
          dataIndex: "departName",
        },
        {
          title: "开课节数",
          dataIndex: "unitOpenCount",
        },
        {
          title: "作业布置次数",
          dataIndex: "totalWorkAssignCount",
          customRender(v, r) {
            return r.courseWorkAssignCount + r.additionalWorkAssignCount;
          },
        },
        {
          title: "作业上交次数",
          dataIndex: "totalWorkSubmitCount",
          customRender(v, r) {
            return r.courseWorkSubmitCount + r.additionalWorkSubmitCount;
          },
        },
        {
          title: "作业批改数量",
          dataIndex: "workReviewCount",
          customRender(v, r) {
            return r.additionalWorkCorrectCount + r.courseWorkCorrectCount;
          },
        },
      ],
    };
  },
  created() {
    this.loadReport();
  },
  methods: {
    getCurrentStyle(current, today) {
      const style = {};
      if (current.date() === 1) {
        style.border = "1px solid #1890ff";
        style.borderRadius = "50%";
      }
      return style;
    },
    radioDateChange(v) {
      switch (v.target.value) {
        case "day30":
          this.queryDate = [
            moment(new Date()).subtract(1, "months"),
            moment(new Date()),
          ];
          break;
        case "day60":
          this.queryDate = [
            moment(new Date()).subtract(2, "months"),
            moment(new Date()),
          ];
          break;
        case "day90":
          this.queryDate = [
            moment(new Date()).subtract(3, "months"),
            moment(new Date()),
          ];
          break;
        default:
      }
      this.loadReport();
    },
    dataChange(date, dateString) {
      this.loadReport();
    },
    loadReport() {
      let queryParam = {
        startTime: this.queryDate[0].format("YYYY-MM-DD"),
        endTime: this.queryDate[1].format("YYYY-MM-DD"),
      };

      console.log(queryParam);
      getAction("/teaching/teachingDepartDayLog/getReport", queryParam).then(
        (res) => {
          if (res.success && res.result) {
            let report = res.result;
            this.courseUnitOpenCount = report.unitOpenCount;
            this.workAssignCount =
              report.courseWorkAssignCount + report.additionalWorkAssignCount;
            this.workSubmitCount =
              report.courseWorkSubmitCount + report.additionalWorkSubmitCount;
            this.workReviewCount =
              report.additionalWorkCorrectCount + report.courseWorkCorrectCount;
            this.pieDataSource = [
              { item: "随堂作业", count: report.courseWorkAssignCount },
              { item: "自定义作业", count: report.additionalWorkAssignCount },
            ];
          }else{
            this.$message.error("没有数据");
          }
        }
      );
      getAction("/teaching/teachingDepartDayLog/getReportGroupByDepart",queryParam ).then((res) => {
        if (res.success && res.result) {
          this.departDataSource = res.result;
        }
      });
      
      getAction("/teaching/teachingDepartDayLog/getReportGroupByMonth", queryParam).then(res=>{
        if (res.success && res.result) {
          this.lingChartDataSource = res.result.map(v=>{
            return {
              type: v.createTime.split("-")[0] + "-" + v.createTime.split("-")[1],
              unitOpenCount: v.unitOpenCount,
              workAssignCount: v.courseWorkAssignCount + v.additionalWorkAssignCount
            }
          })
          console.log(this.lingChartDataSource);
        }
      })
    },
  },
};
</script>

<style lang="less" scoped>
.main {
  .data-tag {
    padding: 15px;
    width: 100%;
    text-align: center;
    background-color: #f2fbf7;
    border-radius: 5px;
  }
}
</style>
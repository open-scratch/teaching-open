Teaching 在线教学平台
===============



## 项目介绍

Teaching针对机构、学校提供STEAM在线教育解决方案， 提供一个低成本试错的机会。

平台集成CRM系统、教务系统、作业系统、题库系统、赛事系统、社区系统。并封装了常用的工具，如各种工具类、微信生态对接、支付对接等等。

## 开源版功能

```
├─首页
├─创作
│  ├─Scratch3.0
│  ├─Scratch2.0
├─个人中心
│  ├─个人中心
│  ├─个人设置
├─作业管理
├─系统管理
│  ├─用户学员管理
|  ├─角色管理
│  ├─菜单管理
│  ├─权限设置
│  ├─部门管理
│  └─字典管理
│  └─我的组织机构
│  └─职务管理
│  └─通讯录
├─在线开发
│  ├─在线表单
│  ├─在线代码生成器
│  ├─在线报表
├─系统监控
│  ├─ ……
```
## 教学工具对接

- [Scratch2.0](https://github.com/open-scratch/scratch2)
- [Scratch3.0](https://github.com/open-scratch/scratch3)
- 其他正在开发中

  
## 技术架构

后端技术： SpringBoot_2.1.3.RELEASE + Mybatis-plus_3.1.2 + Shiro_1.4.0 + Jwt_3.7.0 + Swagger-ui + Redis 
前端技术： Ant-design-vue + Vue + Webpack
其他技术： Druid（数据库连接池）、Logback（日志工具） 、poi（Excel工具）、Quartz（定时任务）、lombok（简化代码）、七牛云存储、Scratch二次开发
项目构建： Maven、Jdk8、npm或yarn

## 快速开始（本地启动）

本项目基于jeecg框架开发，采用前后端分离架构，如果您了解jeecg将更容易上手本项目[jeecg-boot](https://github.com/zhangdaiscott/jeecg-boot)

### 环境准备
- mysql 5.6以上
- redis
- nodejs 最新版
- jdk1.8
- maven

### 后端

- 修改配置
application-dev.yml
修改数据库、redis、七牛云存储等

- 导入数据库

导入db文件夹的sql文件

- 编译项目，在api目录执行
`mvn clean package`

- 启动项目
  `java -jar jeecg-boot-module-system\target\jeecg-boot-module-system-2.1.4.jar`

- Linux放入后台运行

  `nohup java -jar jeecg-boot-module-system\target\jeecg-boot-module-system-2.1.4.jar &`

### 前端

- 修改七牛云存储的域名

  public/index.html  >  `window._CONFIG['qn_base']`

- 修改七牛云存储区域，默认z0（华东区）

  public/scratch3/index.html >  `region: qiniu.region.z0`

- 安装依赖
  `npm install` 或 `yarn install`

- 启动服务
  `npm run serve` 或 `yarn run serve`

- 部署

  将nginx代理到编译后的build目录

## 技术文档

- QQ交流群 ：  191723983

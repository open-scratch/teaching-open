# Teaching 在线教学平台
===============

## 项目介绍

Teaching针对机构、学校提供STEAM在线教育解决方案， 提供一个低成本试错的机会。

平台集成CRM系统、教务系统、作业系统、题库系统、赛事系统、社区系统。并封装了常用的工具，如各种工具类、微信生态对接、支付对接等等。

[前往官网](http://teaching.vip)

[查看本开源版DEMO](http://open.teaching.vip)
## 开源版功能

```
├─首页
├─创作
│  ├─Scratch
│  ├─Python
│  ├─ScratchJr
├─个人中心
│  ├─我的作业
│  ├─个人设置
├─我的课程
│  ├─卡片形式
│  ├─地图形式
├─作业管理
├─课程管理
│  ├─课程管理
│  ├─课程单元管理
├─系统管理
│  ├─用户管理
|  ├─角色管理
│  ├─菜单管理
│  ├─权限设置
│  ├─班级管理
│  └─字典管理
│  └─我的班级
│  └─通讯录
├─系统监控
│  ├─ ……
```
## 教学工具对接

- [Scratch2.0](https://github.com/open-scratch/scratch2) (已淘汰)
- [Scratch3.0](https://github.com/open-scratch/scratch3)
- [ScratchJr](https://github.com/open-scratch/scratchjr)

  
## 技术架构

后端技术： SpringBoot_2.1.3.RELEASE + Mybatis-plus_3.1.2 + Shiro_1.4.0 + Jwt_3.7.0 + Swagger-ui + Redis 

前端技术： Ant-design-vue + Vue + Webpack

其他技术： Druid（数据库连接池）、Logback（日志工具） 、poi（Excel工具）、Quartz（定时任务）、lombok（简化代码）、七牛云存储、Scratch二次开发

项目构建： Maven、Jdk8、npm或yarn

## 部署教程

### 环境准备
以CentOS服务器为例
#### 安装mysql5.6
- 设置数据库表名忽略大小写
lower_case_table_names=1
- 导入api/db文件夹的sql文件

#### 安装 redis 6.0
略

#### 安装Java
yum install -y java-1.8.0-openjdk

#### 安装Nginx
略

#### 注册配置七牛云

- qiniu.com 注册后实名认证
- 新建对象存储Kodo，访问控制设为：开放
- 绑定域名（免费分配的测试域名一个月后过期）
- 获取accessKey，secretKey以备后续配置

### 后端

#### 修改配置

修改application-prod.yml或application-dev.yml配置

修改application.yml切换测试和线上环境

参考：
```
domain: 您的站点域名

# 数据库连接配置
datasource:
        master:
          url: jdbc:mysql://127.0.0.1:3306/teachingopen?characterEncoding=UTF-8&useUnicode=true&useSSL=false&tinyInt1isBit=false
          username: teachingopen
          password: teachingopen

#Redis连接配置
redis:  
    database: 1
    host: 127.0.0.1
    password: ''
    port: 6379

  qiniu:
    accessKey: 您的七牛accessKey
    secretKey: 您的七牛secretKey
    bucketName: 您的七牛bucketName
    staticDomain: 您的七牛域名//qn.sgs.pub
```

- 编译项目

在api目录执行
  
`mvn clean package`

编译成功后得到jar文件：\target\teaching-open-xxx.jar &

- 上传到服务器

- 启动后端api

  `nohup java -jar teaching-open-xxx.jar &`

### 前端

- 安装nodejs版本v12

- 修改配置

  public/index.html

  ```js
    <!-- 全局配置 -->
  <script>
    window._CONFIG['qn_base'] = "//qn.open.teaching.vip/" //七牛域名
    window._CONFIG['qn_area'] = 'z0' //七牛存储区域 z0华东 z1华北 z2华南 na0北美 as0东南亚
    window._CONFIG['brandName'] = "Teaching" //品牌名
  </script>
  ```

- 安装依赖
  `npm install` 或 `yarn install`

- 编译
  `npm run build` 或 `yarn run build`

- 部署
  
将编译后的dist文件夹上传至服务器网站根目录

- 配置Nginx

配置实例:
```
server
{
    listen 80;
    server_name open.teaching.vip;
    location / {
      index index.html index.htm;
     root /www/wwwroot/teaching;
      if (!-e $request_filename) {
          rewrite ^(.*)$ /index.html?s=$1 last;
          break;
      }
      gzip on;
      gzip_min_length 1k;
      gzip_comp_level 9;
      gzip_types text/plain application/javascript application/x-javascript text/css application/xml text/javascript application/x-httpd-php image/jpeg image/gif image/png;
      gzip_vary on;
      gzip_disable "MSIE [1-6]\.";
    }
    
    location ^~ /api
    {
        expires 12h;
        if ($request_uri ~* "(php|jsp|cgi|asp|aspx)")
        {
            expires 0;
        }
        proxy_pass              http://127.0.0.1:8080/api/;
        proxy_set_header        Host 127.0.0.1;
        proxy_set_header        X-Real-IP $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
        add_header X-Cache $upstream_cache_status;
      #Set Nginx Cache
      add_header Cache-Control no-cache;
    }
}
```


### 测试账号

默认密码均为123456

- admin —— 超级管理员
- teacher —— 老师
- student —— 学生

## QQ交流群 ：  191723983

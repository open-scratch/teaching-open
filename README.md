# Teaching 在线教学平台
===============

## 项目介绍

Teaching针对机构、学校提供STEAM在线教育解决方案， 提供一个低成本试错的机会。

平台集成CRM系统、教务系统、作业系统、题库系统、赛事系统、社区系统。并封装了常用的工具，如各种工具类、微信生态对接、支付对接等等。

[前往官网](http://teaching.vip)

[查看本开源版DEMO](http://open.teaching.vip)

## QQ交流群 ：  191723983

## 开源版功能

```
├─社区
├─创作
│  ├─Scratch
│  ├─Python
│  ├─ScratchJr
├─个人中心
│  ├─我的作品
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

## 编译和部署教程

### 环境准备
以CentOS服务器为例
#### 安装mysql5.6
- 设置数据库表名忽略大小写
lower_case_table_names=1
- 导入api/db文件夹的sql文件。如果是升级，需要以此按版本号执行升级sql。

#### 安装 redis 6.0
略，（可使用宝塔面板一键安装）

#### 安装Java
centos可执行命令一键安装
`yum install -y java-1.8.0-openjdk`

#### 安装Nginx
略，（可使用宝塔面板一键安装）

#### 注册配置七牛云

- 登录 www.qiniu.com 注册后实名认证
- 新建对象存储Kodo，访问控制设为：开放，记录bucket名字和存储区域
- 绑定域名（免费分配的测试域名一个月后过期）
- 获取accessKey，secretKey以备后续配置

### 后端编译和部署

#### 修改配置

修改application.yml切换测试环境和线上环境，默认为线上环境，即使用application-prod.yml。

修改application-prod.yml

需要修改的地方：
```yml
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
#七牛配置
qiniu:
  accessKey: 您的七牛accessKey
  secretKey: 您的七牛secretKey
  bucketName: 您的七牛bucketName
  staticDomain: 您的七牛域名
```
配置文件可以编译后修改，进入jar包编辑或者将yml文件放到jar包同级目录也是可以的。

- 编译项目

配置maven源

```xml
<mirrors>
       <mirror>
            <id>nexus-aliyun</id>
            <mirrorOf>*,!jeecg,!jeecg-snapshots,!getui-nexus</mirrorOf>
            <name>Nexus aliyun</name>
            <url>http://maven.aliyun.com/nexus/content/groups/public</url>
        </mirror> 
 </mirrors>
```

在api目录执行
  
`mvn clean package`

编译成功后得到jar文件：\target\teaching-open-xxx.jar
(xxx为版本号)

- 上传到服务器

- 启动后端api并放入后台执行

  `nohup java -jar teaching-open-xxx.jar &`


### 前端编译和部署

- 安装nodejs版本v12

- 修改配置

  public/index.html

  ```js
    window._CONFIG['qn_base'] = "//qn.open.teaching.vip/" //七牛域名
    window._CONFIG['qn_area'] = 'z0' //七牛存储区域 z0华东 z1华北 z2华南 na0北美 as0东南亚
    window._CONFIG['brandName'] = "Teaching" //品牌名
  ```

- 安装依赖
  `npm install` 或 `yarn install`

- 编译
  `npm run build` 或 `yarn run build`

- 部署
  
将编译后的dist文件夹上传至服务器网站根目录

- 配置Nginx

重点是要配置反向代理
参考配置:
```
server
{
    listen 80;
    server_name open.teaching.vip;
    location / {
      index index.html index.htm;
     root /www/wwwroot/teaching-open;
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
        add_header Cache-Control no-cache;
    }
}
```


### 测试账号

默认密码均为123456

- admin —— 超级管理员
- teacher —— 老师
- student —— 学生


## 常见问题

### 验证码出不来的问题
只有两种可能：
1. api未启动，尝试访问http://ip地址:8080看是否有内容输出
2. 反向代理配置错误，特征是接口报502或504错误

### Scratch素材库不显示
素材库默认是使用的你配置的文件上传地址（七牛云）

方案1：将素材库上传至七牛云，素材库位置在scratch3/static/internalapi，需要原来的保持目录结构，选择internalapi目录上传。
方案2：将素材库地址改为本地
```
assets:{
  assetHost: "./static",
}
```

### Scratch提交作品卡住
1.七牛云配置错误，此时系统内其他上传也会失败
2.页面停留时间过长导致登录失效，可以将Scratch文件保存到本地，刷新页面后再次提交
3.网络问题

### 切换为本地存储
建议是使用云存储的，极大减少服务器的宽带压力。但是有些朋友不想用七牛云存储，或者局域网部署，则可以使用本地存储模式。

1.修改public/index.html
```js
window._CONFIG['defaultUploadType'] = 'local'
window._CONFIG['qn_base'] = '/api/sys/common/static/'
```

2.修改application-prod.yml
```yml
jeecg:
  uploadType: local
  path :
  #文件上传根目录 设置
  upload: D://opt//upFiles
  # 文件访问地址
  staticDomain: /api/sys/common/static
```

切换云存储后，之前上传的文件请自行迁移。


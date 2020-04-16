## 后端技术架构

- 基础框架：Spring Boot 2.1.3.RELEASE
- 持久层框架：Mybatis-plus_3.1.2
- 安全框架：Apache Shiro 1.4.0，Jwt_3.7.0
- 数据库连接池：阿里巴巴Druid 1.1.10
- 缓存框架：redis
- 日志打印：logback
- 其他：fastjson，poi，Swagger-ui，quartz, lombok（简化代码）等。

## 开发环境

- 语言：Java 8
- IDE(JAVA)： Eclipse安装lombok插件 或者 IDEA
- 依赖管理：Maven
- 数据库：MySQL5.0  或  Oracle 11g
- 缓存：Redis

## 项目运行

#### 使用IDEA运行

IDEA导入api/pom.xml自动会导入整个项目，等待maven依赖下载完，点击绿色三角号或运行org.jeecg.JeecgApplication的main方法

#### 直接编译运行

- 修改配置
  application-dev.yml
  修改数据库、redis、七牛云存储等

- 导入数据库

- 导入db文件夹的sql文件

- 编译项目，在api目录执行
  `mvn clean package`

- 启动项目
  `java -jar jeecg-boot-module-system\target\jeecg-boot-module-system-2.1.4.jar`

- Linux放入后台运行

  `nohup java -jar jeecg-boot-module-system\target\jeecg-boot-module-system-2.1.4.jar &`
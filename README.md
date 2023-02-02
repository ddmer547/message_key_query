# message_key_query
🏆 **[InterSystems 开发者工具竞赛](https://openexchange.intersystems.com/contest/30)**🏆

消息关键查询仓库：基于Intersystems IRIS平台整合医院信息查询，快速定位相关患者在一家医院进行的业务

## 此版本中的功能

新增就诊相关模型

## 概要
  随着新冠病毒肆虐，医院经常需要对患者信息进行流调操作，例如输入患者ID找到其挂号的门诊或者住院的科室以及时间，传统的去数据库中查询需要专业的程序人员去处理，但是使用了此方案可以直接同接口的角度快速定位患者在该院的挂号、就诊相关的信息和时间。

关键应用：IRIS、REST API、ObjectScript、Globals 、SQL、DATA LOOKUP TABLES、JDBC、BPL、Model

### 演示效果：
  我们知道进入IRIS的production的实例化对象会以xml的形式存在，而xPath可以直接从字符串的角度直接取到我们需要的值，如果我们把每个服务的每个关键字的xPath路径单独保存，在消息发送的时候通过xPath把 [关键字:关键值:服务名:时间:sessionID] 单独存储起来，当我们需要通过关键字段查询某个患者经历的服务或者消息时候，可以直接得到其列表展示。如图所示：

![](.\img\home1.png)

加载出来的列表还可以点击跳转到指定的可视化路径中去：

![](.\img\home2.png)

代码的程序设计思路：https://cn.community.intersystems.com/node/525986

## 技术细则

1、SQL访问：IRIS支持通过cos语言组织sql取到数据

https://docs.intersystems.com/healthconnect20223/csp/documatic/%25CSP.Documatic.cls?LIBRARY=%25SYS&PRIVATE=1&CLASSNAME=%25CSP.REST

2、Global：持久化的多维数组，例如查找表本身

https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GGBL_MANAGING

3、Rest API：IRIS支持封装restful接口供别处调用

https://docs.intersystems.com/healthconnect20223/csp/documatic/%25CSP.Documatic.cls?LIBRARY=%25SYS&PRIVATE=1&CLASSNAME=%25CSP.REST

## 安装

`https://github.com/ddmer547/message_key_query.git`






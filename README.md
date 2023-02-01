# message_key_query
🏆 **[InterSystems 开发者工具竞赛](https://openexchange.intersystems.com/contest/30)**🏆

消息关键查询仓库：基于Intersystems IRIS平台整合医院信息查询，快速定位相关患者在一家医院进行的业务

## 此版本中的功能

新增就诊相关模型

## 概要
  随着新冠病毒肆虐，医院经常需要对患者信息进行流调操作，例如输入患者ID找到其挂号的门诊或者住院的科室以及时间，传统的去数据库中查询需要专业的程序人员去处理，但是使用了此方案可以直接同接口的角度快速定位患者在该院的挂号、就诊相关的信息和时间。

关键应用：IRIS、REST API、ObjectScript、Globals 、SQL、DATA LOOKUP TABLES、JDBC、BPL、Model

### 技术细节：
  新建一个索引表 字段为 SessionID、服务名、属性名、属性值、创建时间，如图所示：

  
  






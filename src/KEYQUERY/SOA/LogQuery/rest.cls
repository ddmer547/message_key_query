Class KEYQUERY.SOA.LogQuery.rest Extends %CSP.REST
{

Parameter SpecificationClass = "petstore.spec";

/// 此应用程序的默认内容类型。
Parameter CONTENTTYPE = "application/json";

/// 默认情况下，将输入流转换为Unicode
Parameter CONVERTINPUTSTREAM = 1;

/// 默认响应字符集是utf-8
Parameter CHARSET = "utf-8";

/*
{
  "page": 1,
  "rows": 10,
  "keyWord": "PatientID",
  "keyValue": "1231",
  "undefined": "",
  "serviceNameEN": "",
  "startTime": "2023-01-30 00:00:00",
  "endTime": "2023-01-30 23:59:59"
}
*/
/// 关键字查询
ClassMethod GetKeyLogInfo() As %Status
{

  Set data = %request.Content
  Set obj = ##class(%DynamicObject).%FromJSON(data)
  Set serviceNameEN = obj.serviceNameEN
  Set keyWord = obj.keyWord
  Set keyValue = obj.keyValue
  Set startTime = obj.startTime
  Set endTime = obj.endTime
  Set p = obj.page 
  Set r = obj.rows

  Set serviceNameEN = ##class(%String).LogicalToDisplay(serviceNameEN)
  Set startTime = ##class(%String).LogicalToDisplay(startTime)
  Set endTime = ##class(%String).LogicalToDisplay(endTime)
  Set n = (p-1)*r+1
  Set m = p*r	
  
  Set strSql1 =" ( SELECT "
            _" Top 1000 head.ID As ID,"
            _" b.ServiceName AS serviceNameEN,"
            _" head.TargetConfigName AS serviceNameCN,"
            _" {fn RIGHT(%EXTERNAL(head.TimeCreated),"
            _" 999 )} As startTime,"
            _" {fn RIGHT(%EXTERNAL(head.TimeProcessed),"
            _" 999 )} As endTime,"
            _" head.Status As otherStatus,"
            _" head.SessionId As Session,"
            _" CASE"
            _" head.IsError WHEN 1 THEN '错误'"
            _" ELSE '确定'"
            _" END As ESBStatus"
            _" FROM"
            _" Ens.MessageHeader head,"
            _"(SELECT t.SessionID,t.ServiceName from KEYQUERY_MSG.SearchIndexMSG t where 1=1 "
            _" and t.AttributeName = '"_keyWord_"'"
            _" and t.AttributeValue = '"_keyValue_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} > '"_startTime_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} < '"_endTime_"') b" 
            _" WHERE"
            _" head.SessionId = head.%ID"
            _" and head.SessionId = b.SessionID"
            _" ORDER BY"
            _" head.SessionId Desc"
            _" )"
            
       Set strSql2 =strSql1_ " where"
            _" %VID between "_n_" AND "_m_""
  
  Set totalSql = "SELECT count(*) as total from  "_strSql1
  Set dataSql = "select *,%VID from"_strSql2
  #;w !,dataSql
  Set Response = {}
  Set Response.total = 0
  Set total = ##class(%SQL.Statement).%ExecDirect(,totalSql)
  If total.%Next(){
	 Set Response.total = total.%Get("total")
  }
  #;涉及服务数量
  Set strSqlFW = "SELECT  count(distinct t.ServiceName) as fwnum from KEYQUERY_MSG.SearchIndexMSG t where 1=1 "
  			_" and t.AttributeName = '"_keyWord_"'"
            _" and t.AttributeValue = '"_keyValue_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} > '"_startTime_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} < '"_endTime_"'"
  Set rsFW = ##class(%SQL.Statement).%ExecDirect(,strSqlFW)
  If rsFW.%Next(){
      Set Response.fwnum= rsFW.%Get("fwnum")
      }
  #;当前患者状态
  Set strSqlZT = "SELECT TOP 1 t.ServiceName from KEYQUERY_MSG.SearchIndexMSG t where 1=1 "
  			_" and t.AttributeName = '"_keyWord_"'"
            _" and t.AttributeValue = '"_keyValue_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} > '"_startTime_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} < '"_endTime_"' order by t.SessionID Desc"
  Set rsZT = ##class(%SQL.Statement).%ExecDirect(,strSqlZT)
  If rsZT.%Next(){
	  If ((rsZT.%Get("ServiceName")="就诊卡信息新增服务")||(rsZT.%Get("ServiceName")="就诊卡信息新增服务")){Set patientzt = "登记"}
      If ((rsZT.%Get("ServiceName")="门诊挂号信息新增服务")||(rsZT.%Get("ServiceName")="门诊挂号信息更新服务")){Set patientzt = "门诊"}
      If ((rsZT.%Get("ServiceName")="住院就诊信息新增服务")||(rsZT.%Get("ServiceName")="住院就诊信息更新服务")){Set patientzt = "住院"}
      If ((rsZT.%Get("ServiceName")="住院转科信息新增服务")||(rsZT.%Get("ServiceName")="住院转科信息更新服务")){Set patientzt = "登记"}
      If ((rsZT.%Get("ServiceName")="出院登记信息新增服务")||(rsZT.%Get("ServiceName")="出院登记信息更新服务")){Set patientzt = "出院"}
      
      Set Response.zt= patientzt
      }
  #;Set ^ASql = strSql
  #; w strSql
  Set rs = ##class(%SQL.Statement).%ExecDirect(,dataSql)
  If rs.%SQLCODE<0 {
      Do ##class(KEYQUERY.SOA.utils.baseresp).failResp("sql出错")
	    Return $$$OK
  }Else{
      Set Response.status = 200
      Set Response.msg = "success"
      Set data = []
      While rs.%Next(){
        Do data.%Push({
          "ID":             (rs.%Get("ID")),
          "serviceNameEN":  (rs.%Get("serviceNameEN")),
          "serviceNameCN":  (rs.%Get("serviceNameCN")),
          "startTime" :     (rs.%Get("startTime")),
          "endTime":        (rs.%Get("endTime")),
          "Session":      (rs.%Get("Session")),
          "ESBStatus":     (rs.%Get("ESBStatus")),
          "otherStatus":    (rs.%Get("otherStatus"))
        })
      }
      If rs.%ROWCOUNT =0{
        Do ##class(KEYQUERY.SOA.utils.baseresp).failResp("没有数据")
      }Else{
        Set Response.data = data
        Write Response.%ToJSON()
      }
  }
  Return $$$OK
}

/*
{
  "startTime": "2023-01-30 00:00:00",
  "endTime": "2023-01-30 23:59:59"
}
*/
/// 关键字查询-今日门诊数量、住院数量
ClassMethod GetKeyLogInfoNum() As %Status
{

  Set data = %request.Content
  Set obj = ##class(%DynamicObject).%FromJSON(data)
  Set startTime = obj.startTime
  Set endTime = obj.endTime

  Set startTime = ##class(%String).LogicalToDisplay(startTime)
  Set endTime = ##class(%String).LogicalToDisplay(endTime)
  
  Set strSqlMZ = "SELECT count(distinct t.SessionID) as mznum from KEYQUERY_MSG.SearchIndexMSG t where 1=1 "
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} > '"_startTime_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} < '"_endTime_"' and t.ServiceName = '门诊挂号信息新增服务'" 
  Set strSqlZY = "SELECT count(distinct t.SessionID) as zynum from KEYQUERY_MSG.SearchIndexMSG t where 1=1 "
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} > '"_startTime_"'"
            _" and {fn RIGHT(%EXTERNAL(t.CreateTime),999)} < '"_endTime_"' and t.ServiceName = '住院就诊信息新增服务'"
  
  Set Response = {}
  Set Response.mznum = 0
  Set Response.zynum = 0
  #;w strSql
  Set rs = ##class(%SQL.Statement).%ExecDirect(,strSqlMZ)
  Set rs2 = ##class(%SQL.Statement).%ExecDirect(,strSqlZY)
  If (rs.%SQLCODE<0)||(rs2.%SQLCODE<0) {
      Do ##class(KEYQUERY.SOA.utils.baseresp).failResp("sql出错")
	    Return $$$OK
  }Else{
	   Set Response.status = 200
       Set Response.msg = "success"
       If rs.%Next(){
       Set Response.mznum= rs.%Get("mznum")
      }
      If rs2.%Next(){
       Set Response.zynum= rs2.%Get("zynum")
      }
      Write Response.%ToJSON()

  }
  Return $$$OK
}

}

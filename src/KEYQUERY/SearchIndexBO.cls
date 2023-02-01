Class KEYQUERY.SearchIndexBO Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Property Adapter As EnsLib.SOAP.OutboundAdapter;

Parameter INVOCATION = "Queue";

/// 结点插入
ClassMethod insertNode(AttributeName As %String, AttributeValue As %String, ServiceName As %String, SessionID As %String, Output pOutput As %String) As %Status
{
	s sqlstr="INSERT INTO KEYQUERY_MSG.SearchIndexMSG (AttributeName, AttributeValue, CreateTime, ServiceName, SessionID) VALUES "
	s sqlstr=sqlstr_"('"_AttributeName_"','"_AttributeValue_"','"_$zdt($h,3)_"','"_ServiceName_"','"_SessionID_"')"
	$$$TRACE(sqlstr)
	#Dim ex As %Exception.AbstractException
	Try {
	    Set rs = ##class(%SQL.Statement).%ExecDirect(,sqlstr)
		If (rs.%SQLCODE=0){
			set pOutput = "插入成功"
	}
	} Catch ex {
		set pOutput = "插入失败"
	} 	
	Return $$$OK
}

Method InsertIndexTable(pRequest As Ens.Request, Output pResponse As Ens.StringResponse) As %Status
{
	s pResponse =  ##class(Ens.StringResponse).%New()
	s ServiceName = "未知服务名"
	s reqClassName = $CLASSNAME(pRequest)
	&sql(select DataValue into :ServiceName From Ens_Util.LookupTable where KeyName = :reqClassName and TableName='KEYQUERY.LT.RequsetMSGService')
	$$$TRACE("服务名: "_ServiceName)
	s SessionID = ..%RequestHeader.SessionId

	#;$$$LOGINFO(ServiceName_","_SessionID)
	#; 通过xpath读取字段
	Set xmlUtil=##class(VisitInfo.Util.ClassAndXML).%New()
	Set tSC=xmlUtil.Object2Xml(pRequest,"Request",.xmlstr) $$$ThrowOnError(tSC)
	s Out = ##class(EnsLib.EDI.XML.Document).%New()
	s Out = Out.ImportFromString(xmlstr)
	Try {
	    #; 单一节点处理
	    For value = "OrderID","PatientID","PatientName","IDCardNO","PatientNOID","OutPatientNO","InPatientNO","PatientIdCardNO","InPatientNO","ApplyFormNO","OutPatientID","PatientIDCard" {
		    If Out.GetValueAt("/Request/Body/"_value)'= "" {
			    set AttributeName = value
			    if value = "PatientNOID"{
				    set AttributeName = "PatientID"
			    } elseif value ="PatientIdCardNO"  {
					set AttributeName = "IDCardNO"
				}
			    set AttributeValue = Out.GetValueAt("/Request/Body/"_value)
				$$$TRACE("存入的属性："_AttributeName_", 存入的值："_AttributeValue)
			    do ..insertNode(AttributeName,AttributeValue,ServiceName,SessionID,.OUT)
				set pResponse.StringValue = OUT
		    }
		
	    }
	    #; 循环节点处理
	    For nodes = "OrderMessageRoot","InspectNode","CheckStateInfo" {
		    For node = "OrderID","ApplyFormNO" {
			    Set tSC=##class(%XML.XPATH.Document).CreateFromStream(xmlstr,.tDocument) If $$$ISERR(tSC) Quit
			    Set tSC=tDocument.EvaluateExpression("//"_nodes,node,.tResults)
			    For tI=1:1:tResults.Count() {
				    Set tResult=tResults.GetAt(tI)
				    While tResult.Read() {   
					    If (tResult.Value '= "") {
						    #;$$$LOGINFO(tResult.Value)
						    do ..insertNode(node,tResult.Value,ServiceName,SessionID,.OUT)
							set pResponse.StringValue = OUT
					    }	
				    }
			    }
		    }	
	    }
	} Catch ex {
	    set pResponse.StringValue = "失败:"_ex.AsStatus()
	} 
	quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Ens.Request"> 
		<Method>InsertIndexTable</Method>
	</MapItem>
</MapItems>
}

}

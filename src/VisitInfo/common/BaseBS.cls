Class VisitInfo.common.BaseBS Extends EnsLib.SOAP.Service
{

Parameter ADAPTER;

Parameter SERVICENAME = "BS";

Parameter NAMESPACE = "http://bkgtsoft.com";

/// 异步处理
Method AsyncHandle(pInput As %String, RootNode As %String, ClassName As %String) As %String
{
	Try{		
		$$$TRACE($g(%request.CgiEnvs("REMOTE_ADDR")))
 		Set response=##class(VisitInfo.Util.MSG.Response).%New() 	
 		Set xmlUtil=##class(VisitInfo.Util.ClassAndXML).%New()
 	 	Set tSC=xmlUtil.Xml2Object(pInput,RootNode,ClassName,.obj) $$$ThrowOnError(tSC)			
		Set tSC=..ProcessInput(obj,.temp,"Async") $$$ThrowOnError(tSC)
		Set response.MessageID=##class(%SYSTEM.Util).CreateGUID()
		Set response.CreationTime=$TRANSLATE($TRANSLATE($TRANSLATE($ZDATETIME($HOROLOG,3),"-"),":")," ")
		Set response.SenderID = obj.Head.SenderID
		Set response.ReceiverID = obj.Head.ReceiverID
		Set response.ResultCode="AA"
		Set response.RequestMessageID=obj.Head.MessageID
		Set response.Result="OK"	
   } Catch errobj{
		$$$LOGERROR(errobj.DisplayString())
		Set response.MessageID=##class(%SYSTEM.Util).CreateGUID()
		Set response.CreationTime=$TRANSLATE($TRANSLATE($TRANSLATE($ZDATETIME($HOROLOG,3),"-"),":")," ")
		Set response.SenderID = obj.Head.SenderID
		Set response.ReceiverID = obj.Head.ReceiverID
		Set response.ResultCode="AE"
		Set response.RequestMessageID=obj.Head.MessageID
		Set response.Result=errobj.DisplayString()
	}
	Do response.XMLExportToString(.xmlString,"Response")
	Quit xmlString
}

/// 同步处理
Method SyncHandle(pInput As %String, RootNode As %String, ClassName As %String) As %String
{
	Try{		
 		Set xmlUtil=##class(VisitInfo.Util.ClassAndXML).%New()
 	 	Set tSC=xmlUtil.Xml2Object(pInput,RootNode,ClassName,.obj) $$$ThrowOnError(tSC)			
		Set tSC=..ProcessInput(obj,.pOutput,"Sync") $$$ThrowOnError(tSC)
   } Catch errobj{
	   $$$LOGERROR("响应错误："_errobj.DisplayString())
	   #Dim pOutput as VisitInfo.Util.MSG.QueryFail = ##class(VisitInfo.Util.MSG.QueryFail).%New()
	   Set pOutput.Head.MessageID=##class(%SYSTEM.Util).CreateGUID()
	   Set pOutput.Head.CreationTime=$TRANSLATE($TRANSLATE($TRANSLATE($ZDATETIME($HOROLOG,3),"-"),":")," ")
	   Set pOutput.Head.SenderID = obj.Head.SenderID
	   Set pOutput.Head.ReceiverID = obj.Head.SenderID
	   Set pOutput.Head.ResultCode="AE"
	   Set pOutput.Head.RequestMessageID=obj.Head.MessageID
	   Set pOutput.Head.Result= "入参错误"_errobj.DisplayString() 
	   Set pOutput.Body.QueryID = pOutput.Head.MessageID
	   Set pOutput.Body.QueryResponseCode  = "error"
	}
	Do pOutput.XMLExportToString(.xmlString,"Response")
	Quit xmlString
}

}

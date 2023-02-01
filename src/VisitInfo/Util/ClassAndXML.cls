/// Classname VisitInfo.Util.ClassAndXML
/// Summary   将XML转换为对象的工具类
/// Version   1.0
/// Date      2013年10月28日 10:00
/// Author    
/// Copyright 武汉博科国泰信息技术有限公司
Class VisitInfo.Util.ClassAndXML Extends %RegisteredObject
{

/// MethodName：Xml2ObjectNoIP<br>
/// Summary:    把XML串转换成对应的message object<br>
/// Parameter： pInput需要转换的源字符串数据   pRootNode要转换的源字符根节点名称  pOutput转换好的类实例
/// Return：    返回转换的结果是否成功<br>
/// Date：      2022年11月5日 10:00 <br>
/// Author：    <br>
ClassMethod Xml2ObjectNoIP(pInput As %String, pRootNode As %String, pObjectName As %String, Output pOutput As %RegisteredObject) As %Status
{
	set tSC = $$$OK
	try{
	
		set reader=##class(%XML.Reader).%New()
    	set status=reader.OpenString(pInput)	$$$ThrowOnError(status)
    	do reader.Correlate(pRootNode,pObjectName)
    	if reader.Next(.pOutput,.status){
   			set status = pOutput.%Save()		$$$ThrowOnError(status)
    	}
   		else{
	   		$$$ThrowOnError(status)
   		}
    	do reader.Close()
	}
	catch errobj{
		If pRootNode = "Response"{
			Set errStr="集成平台Error：XML解析失败，错误信息："_errobj.DisplayString()
		}else{
			Set errStr="集成平台Error：XML解析失败，错误信息："_errobj.DisplayString()
		}
		do ..Log(errStr)
		Set tSC=$$$ERROR(5001,errStr)
		do ..Log(pInput,"ERROR")
	}		
	Quit tSC
}

/// MethodName：Xml2Object<br>
/// Summary:    把XML串转换成对应的message object<br>
/// Parameter： pInput需要转换的源字符串数据   pRootNode要转换的源字符根节点名称  pOutput转换好的类实例
/// Return：    返回转换的结果是否成功<br>
/// Date：      2013年11月5日 10:00 <br>
/// Author：    <br>
ClassMethod Xml2Object(pInput As %String, pRootNode As %String, pObjectName As %String, Output pOutput As %RegisteredObject) As %Status
{
	set tSC = $$$OK
	try{
	
		set reader=##class(%XML.Reader).%New()
    	set status=reader.OpenString(pInput)	$$$ThrowOnError(status)
    	do reader.Correlate(pRootNode,pObjectName)
    	if reader.Next(.pOutput,.status){
   			set status = pOutput.%Save()		$$$ThrowOnError(status)
    	}
   		else{
	   		$$$ThrowOnError(status)
   		}
    	do reader.Close()
	}
	catch errobj{
		If pRootNode = "Response"{
			Set errStr="集成平台Error：XML解析失败，错误信息："_errobj.DisplayString()
		}else{
			Set errStr="集成平台Error：XML解析失败，错误信息："_errobj.DisplayString()_"IP为:"_$g(%request.CgiEnvs("REMOTE_ADDR"))
		}
		do ..Log(errStr)
		Set tSC=$$$ERROR(5001,errStr)
		do ..Log(pInput,"ERROR")
	}		
	Quit tSC
}

/// MethodName：Stream2Object<br>
/// Summary:    把Stream转换成对应的message object<br>
/// Parameter： pInput需要转换的源字符串数据   pRootNode要转换的源字符根节点名称  pOutput转换好的类实例
/// Return：    返回转换的结果是否成功<br>
/// Date：      2013年11月5日 10:00 <br>
/// Author：    <br>
ClassMethod Stream2Object(pInput As %GlobalCharacterStream, pRootNode As %String, pObjectName As %String, Output pOutput As %RegisteredObject) As %Status
{
	set tSC = $$$OK
	try{
		set reader=##class(%XML.Reader).%New()
		set status=reader.OpenStream(pInput)    $$$ThrowOnError(status)
    	do reader.Correlate(pRootNode,pObjectName)
    	if reader.Next(.pOutput,.status){
   			set status = pOutput.%Save()		$$$ThrowOnError(status)
    	}
   		else{
	   		$$$ThrowOnError(status)
   		}
    	do reader.Close()
	}
	catch errobj{
		Set errStr="集成平台Error：XML解析失败，请检查内容是否符合标准，错误信息："_errobj.DisplayString()
		Set tSC=$$$ERROR(5001,errStr)
		do ##class(VisitInfo.Util.ClassAndXML).Log(pInput,"ERROR")
	}		
	Quit tSC
}

/// MethodName：Xml2Object<br>
/// Summary:    把相应的message object转换成XML串<br>
/// Parameter：	pInput需要转换的源对象类   pRootNode要转换成XML的目标字符根节点名称  pOutput转换好的字符串
/// Return：    返回转换的结果是否成功<br>
/// Date：      2013年11月5日 10:00 <br>
/// Author：    <br>
ClassMethod Object2Xml(pInput As %RegisteredObject, pRootNode As %String, Output pOutput As %String) As %Status
{
	set tSC = $$$OK
	try{
		set writer=##class(%XML.Writer).%New()
		set status=writer.OutputToString() $$$ThrowOnError(status)
		Set status=writer.RootObject(pInput,pRootNode) $$$ThrowOnError(status)
		set pOutput=writer.GetXMLString()
	}
	catch errobj{
		Do ##class(Ens.Util.Log).LogError("JH.Util.ClassAndXML","Object2Xml",errobj.DisplayString())
		Set tTSC=$$$ERROR(5001,errobj.DisplayString())
	}		
	Quit tSC
}

Method writeLogStr(str As %String) As %Status
{
	If ##class(%File).Exists("D:\file.txt") Write "It exists",!
	Set file=##class(%File).%New("D:\file.txt")
	do file.MoveToEnd()
	Write file.Size
	Do file.Open("WSN")
	Do file.WriteLine("This is a line of text")
	Do file.WriteLine(str)
	q $$$OK
}

ClassMethod Log(logStr As %String, logType As %String = "info") As %Status
{
	
	set fileName=$TRanslate($ZDate($H,3),"-")
	set fileName="C:\BKIP-Log\BKIPXmlLog"_fileName_".log"
	Set stream=##class(%FileCharacterStream).%New()
	Set stream.Filename=fileName
	do stream.MoveToEnd()
	do stream.WriteLine("["_$ZDateTime($zts,3)_"] 日志级别:【"_logType_"】日志信息如下：")
	do stream.WriteLine(logStr)
	do stream.WriteLine()
	do stream.SaveStream()
	q $$$OK
}

/// 对象转Json
ClassMethod GetJson(obj As %RegisteredObject) As %String
{
	s json=""
	s tt=##class(%ZEN.Auxiliary.jsonProvider).%WriteJSONStreamFromObject(.stream,obj,,,,"i")
	Set newstream=##class(%GlobalCharacterStream).%New()
	Do newstream.CopyFrom(stream)
	While 'newstream.AtEnd{
		s json=json_newstream.Read(1024,.sc)
		if $$$ISERR(sc){
			s json = "转换错误"
			Quit
		}  
	}
	Quit json
}

ClassMethod GetClasses()
{
    set stmt=##class(%SQL.Statement).%New()
    set status = stmt.%PrepareClassQuery("%Dictionary.ClassDefinition","Summary")
    if $$$ISERR(status) { 
        do $System.Status.DisplayError(status)
        quit
    }
    
    set rset=stmt.%Execute()
    While (rset.%Next()) {
        Write rset.%Get("Name")_":"_rset.%Get("System"),!
    }
}

ClassMethod GetMethods(className As %String) As %String
{
    set stmt=##class(%SQL.Statement).%New()
    set status = stmt.%PrepareClassQuery("%Dictionary.ClassDefinition","MemberSummary")
    if $$$ISERR(status) { 
        do $System.Status.DisplayError(status)
        quit
    }
    set str=""
    set rset=stmt.%Execute(className,"m")
    While (rset.%Next()) {
        ;Write rset.%Get("Name"),!
        set str=str_","_rset.%Get("Name")
    }
    quit str
}

}

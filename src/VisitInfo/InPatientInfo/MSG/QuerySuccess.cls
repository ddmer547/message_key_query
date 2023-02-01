Class VisitInfo.InPatientInfo.MSG.QuerySuccess Extends Ens.Response
{

Parameter XMLNAME = "Response";

// 头文件位置

Property Head As VisitInfo.Util.MSG.ResponseHead(XMLNAME = "Head");

// 主体文件设置

Property Body As VisitInfo.InPatientInfo.MSG.QueryResponse.InPatientInfoQuerySucc;

Storage Default
{
<Data name="QuerySuccessDefaultData">
<Subscript>"QuerySuccess"</Subscript>
<Value name="1">
<Value>Head</Value>
</Value>
<Value name="2">
<Value>Body</Value>
</Value>
</Data>
<DefaultData>QuerySuccessDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

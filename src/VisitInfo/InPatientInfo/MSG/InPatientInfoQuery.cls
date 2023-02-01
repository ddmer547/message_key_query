Class VisitInfo.InPatientInfo.MSG.InPatientInfoQuery Extends Ens.Request
{

Parameter XMLNAME = "Request";

// 头文件设置

Property Head As VisitInfo.Util.MSG.Head;

// 主文件设置

Property Body As VisitInfo.InPatientInfo.MSG.Body.InPatientInfoQuery;

Storage Default
{
<Data name="InPatientInfoQueryDefaultData">
<Subscript>"InPatientInfoQuery"</Subscript>
<Value name="1">
<Value>Head</Value>
</Value>
<Value name="2">
<Value>Body</Value>
</Value>
</Data>
<DefaultData>InPatientInfoQueryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

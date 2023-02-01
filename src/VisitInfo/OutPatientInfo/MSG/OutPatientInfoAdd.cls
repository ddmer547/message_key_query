Class VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd Extends Ens.Request
{

Parameter XMLNAME = "Request";

// 头文件设置

Property Head As VisitInfo.Util.MSG.Head;

// 主文件设置

Property Body As VisitInfo.OutPatientInfo.MSG.Body.OutPatientInfoAdd;

Storage Default
{
<Data name="OutPatientInfoAddDefaultData">
<Subscript>"OutPatientInfoAdd"</Subscript>
<Value name="1">
<Value>Head</Value>
</Value>
<Value name="2">
<Value>Body</Value>
</Value>
</Data>
<DefaultData>OutPatientInfoAddDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

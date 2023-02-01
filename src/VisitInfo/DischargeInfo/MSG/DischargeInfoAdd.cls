Class VisitInfo.DischargeInfo.MSG.DischargeInfoAdd Extends Ens.Request
{

Parameter XMLNAME = "Request";

// 头文件设置

Property Head As VisitInfo.Util.MSG.Head;

// 主文件设置

Property Body As VisitInfo.DischargeInfo.MSG.Body.DischargeInfoAdd;

Storage Default
{
<Data name="DischargeInfoAddDefaultData">
<Subscript>"DischargeInfoAdd"</Subscript>
<Value name="1">
<Value>Head</Value>
</Value>
<Value name="2">
<Value>Body</Value>
</Value>
</Data>
<DefaultData>DischargeInfoAddDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

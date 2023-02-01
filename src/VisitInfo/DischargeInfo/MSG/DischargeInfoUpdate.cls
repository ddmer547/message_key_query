Class VisitInfo.DischargeInfo.MSG.DischargeInfoUpdate Extends Ens.Request
{

Parameter XMLNAME = "Request";

// 头文件设置

Property Head As VisitInfo.Util.MSG.Head;

// 主文件设置

Property Body As VisitInfo.DischargeInfo.MSG.Body.DischargeInfoUpdate;

Storage Default
{
<Data name="DischargeInfoUpdateDefaultData">
<Subscript>"DischargeInfoUpdate"</Subscript>
<Value name="1">
<Value>Head</Value>
</Value>
<Value name="2">
<Value>Body</Value>
</Value>
</Data>
<DefaultData>DischargeInfoUpdateDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

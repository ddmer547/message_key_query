Class VisitInfo.Encounter.MSG.EncounterCardInfoQuery Extends Ens.Request
{

Parameter XMLNAME = "Request";

// 头文件设置

Property Head As VisitInfo.Util.MSG.Head;

// 主文件设置

Property Body As VisitInfo.Encounter.MSG.Body.EncounterCardInfoQuery;

Storage Default
{
<Data name="EncounterCardInfoQueryDefaultData">
<Subscript>"EncounterCardInfoQuery"</Subscript>
<Value name="1">
<Value>Head</Value>
</Value>
<Value name="2">
<Value>Body</Value>
</Value>
</Data>
<DefaultData>EncounterCardInfoQueryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

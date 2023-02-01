Class VisitInfo.Encounter.MSG.EncounterCardInfoAdd Extends Ens.Request
{

Parameter XMLNAME = "Request";

// 头文件设置

Property Head As VisitInfo.Util.MSG.Head;

// 主文件设置

Property Body As VisitInfo.Encounter.MSG.Body.EncounterCardInfoAdd;

Storage Default
{
<Data name="EncounterCardInfoAddDefaultData">
<Subscript>"EncounterCardInfoAdd"</Subscript>
<Value name="1">
<Value>Head</Value>
</Value>
<Value name="2">
<Value>Body</Value>
</Value>
</Data>
<DefaultData>EncounterCardInfoAddDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

Class VisitInfo.DischargeInfo.MSG.QueryResponse.MessageRoot.WesternDias Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "WesternDia";

// 西医诊断代码

Property WesternIllnessDiaCode As %String [ Required ];

// 西医诊断名称

Property WesternIllnessDiaName As %String [ Required ];

// 西医诊断人工号

Property WesternDiaLaborNO As %String(MAXLEN = 50) [ Required ];

Storage Default
{
<Data name="WesternDiasState">
<Value name="1">
<Value>WesternIllnessDiaCode</Value>
</Value>
<Value name="2">
<Value>WesternIllnessDiaName</Value>
</Value>
<Value name="3">
<Value>WesternDiaLaborNO</Value>
</Value>
</Data>
<State>WesternDiasState</State>
<StreamLocation>^VisitInfo84B3.WesternDiasS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

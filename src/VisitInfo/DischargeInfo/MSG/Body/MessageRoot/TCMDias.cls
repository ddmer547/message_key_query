Class VisitInfo.DischargeInfo.MSG.Body.MessageRoot.TCMDias Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "TCMDia";

// 中医诊断代码

Property TCMIllnessDiaCode As %String;

// 中医诊断名称

Property TCMIllnessDiaName As %String;

// 中医诊断人工号

Property TCMDiaLaborNO As %String(MAXLEN = 50);

Storage Default
{
<Data name="TCMDiasState">
<Value name="1">
<Value>TCMIllnessDiaCode</Value>
</Value>
<Value name="2">
<Value>TCMIllnessDiaName</Value>
</Value>
<Value name="3">
<Value>TCMDiaLaborNO</Value>
</Value>
</Data>
<State>TCMDiasState</State>
<StreamLocation>^VisitInfo.DisEABD.TCMDiasS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

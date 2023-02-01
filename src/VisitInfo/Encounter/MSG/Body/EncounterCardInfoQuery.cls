Class VisitInfo.Encounter.MSG.Body.EncounterCardInfoQuery Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 查询标识符

Property QueryID As %String(MAXLEN = 50);

// 就诊卡号

Property VisitCardNO As %String(MAXLEN = 50);

// 患者性别代码

Property SexCode As %String;

// 患者性别描述

Property SexName As %String;

// 身份证号

Property IDCardNO As %String;

// 患者姓名

Property PatientName As %String;

Storage Default
{
<Data name="EncounterCardInfoQueryState">
<Value name="1">
<Value>QueryID</Value>
</Value>
<Value name="2">
<Value>VisitCardNO</Value>
</Value>
<Value name="3">
<Value>SexCode</Value>
</Value>
<Value name="4">
<Value>SexName</Value>
</Value>
<Value name="5">
<Value>IDCardNO</Value>
</Value>
<Value name="6">
<Value>PatientName</Value>
</Value>
</Data>
<State>EncounterCardInfoQueryState</State>
<StreamLocation>^Visit9883.EncounterCaB141S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

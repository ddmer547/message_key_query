Class VisitInfo.InPatientInfo.MSG.Body.InPatientInfoQuery Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 查询标识符

Property QueryID As %String(MAXLEN = 50) [ Required ];

// 住院号

Property InPatientNO As %String(MAXLEN = 50) [ Required ];

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 入院日期时间（上限）

Property AdmissionUpDate As %String;

// 入院时间日期（下限）

Property AdmissionLowDate As %String;

// PatientID

Property PatientID As %String(MAXLEN = 50);

// 患者身份证号

Property IDCardNO As %String;

// 科室标识符

Property DeptID As %String;

// 病区标识符

Property WardID As %String(MAXLEN = 50);

// 组织机构标识符

Property MedicalOrgCode As %String;

// 就诊类型代码

Property VisitTypeCode As %String;

// 就诊类型描述

Property VisitTypeName As %String;

Storage Default
{
<Data name="InPatientInfoQueryState">
<Value name="1">
<Value>QueryID</Value>
</Value>
<Value name="2">
<Value>InPatientNO</Value>
</Value>
<Value name="3">
<Value>VisitNum</Value>
</Value>
<Value name="4">
<Value>VisitSerialNum</Value>
</Value>
<Value name="5">
<Value>AdmissionUpDate</Value>
</Value>
<Value name="6">
<Value>AdmissionLowDate</Value>
</Value>
<Value name="7">
<Value>PatientID</Value>
</Value>
<Value name="8">
<Value>IDCardNO</Value>
</Value>
<Value name="9">
<Value>DeptID</Value>
</Value>
<Value name="10">
<Value>WardID</Value>
</Value>
<Value name="11">
<Value>MedicalOrgCode</Value>
</Value>
<Value name="12">
<Value>VisitTypeCode</Value>
</Value>
<Value name="13">
<Value>VisitTypeName</Value>
</Value>
</Data>
<State>InPatientInfoQueryState</State>
<StreamLocation>^VisitIB0D.InPatientIn563BS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

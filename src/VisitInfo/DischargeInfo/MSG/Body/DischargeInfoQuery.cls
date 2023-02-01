Class VisitInfo.DischargeInfo.MSG.Body.DischargeInfoQuery Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 查询标识符

Property QueryID As %String(MAXLEN = 50) [ Required ];

// 住院号

Property InPatientNO As %String [ Required ];

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 出院操作者工号

Property OutHospitalOperatorID As %String(MAXLEN = 50);

// 出院日期时间（上限）

Property OutHospitalUpDate As %String;

// 出院日期时间（下限）

Property OutHospitalLowDate As %String;

// PatientID

Property PatientID As %String(MAXLEN = 50);

// 患者身份证号

Property IDCardNO As %String;

// 出院科室标识符

Property OutHospitalDeptID As %String;

// 出院病区标识符

Property OutHospitalWardID As %String(MAXLEN = 50);

// 组织机构标识符

Property MedicalOrgID As %String;

// 就诊类型代码

Property VisitTypeCode As %String;

// 就诊类型描述

Property VisitTypeName As %String;

Storage Default
{
<Data name="DischargeInfoQueryState">
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
<Value>OutHospitalOperatorID</Value>
</Value>
<Value name="6">
<Value>OutHospitalUpDate</Value>
</Value>
<Value name="7">
<Value>OutHospitalLowDate</Value>
</Value>
<Value name="8">
<Value>PatientID</Value>
</Value>
<Value name="9">
<Value>IDCardNO</Value>
</Value>
<Value name="10">
<Value>OutHospitalDeptID</Value>
</Value>
<Value name="11">
<Value>OutHospitalWardID</Value>
</Value>
<Value name="12">
<Value>MedicalOrgID</Value>
</Value>
<Value name="13">
<Value>VisitTypeCode</Value>
</Value>
<Value name="14">
<Value>VisitTypeName</Value>
</Value>
</Data>
<State>DischargeInfoQueryState</State>
<StreamLocation>^Visit740A.DischargeIn8C88S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

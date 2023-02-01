Class VisitInfo.TransferInfo.MSG.Body.TransferInfoQuery Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 查询标识符

Property QueryID As %String(MAXLEN = 50);

// 住院号

Property InPatientNO As %String;

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 转科日期时间（上限）

Property TransferDeptUpDate As %String;

// 转科日期时间（下限）

Property TransferDeptLowDate As %String;

// PatientID

Property PatientID As %String(MAXLEN = 50);

// 患者身份证号

Property IDCardNO As %String;

// 组织机构标识符

Property MedicalOrgID As %String;

// 就诊类型代码

Property VisitTypeCode As %String;

// 就诊类型描述

Property VisitTypeName As %String;

Storage Default
{
<Data name="TransferInfoQueryState">
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
<Value>TransferDeptUpDate</Value>
</Value>
<Value name="6">
<Value>TransferDeptLowDate</Value>
</Value>
<Value name="7">
<Value>PatientID</Value>
</Value>
<Value name="8">
<Value>IDCardNO</Value>
</Value>
<Value name="9">
<Value>MedicalOrgID</Value>
</Value>
<Value name="10">
<Value>VisitTypeCode</Value>
</Value>
<Value name="11">
<Value>VisitTypeName</Value>
</Value>
</Data>
<State>TransferInfoQueryState</State>
<StreamLocation>^VisitFD98.TransferInf77ABS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

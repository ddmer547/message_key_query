Class VisitInfo.OutPatientInfo.MSG.Body.OutPatientInfoQuery Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 查询标识

Property QueryID As %String(MAXLEN = 50) [ Required ];

// 就诊号

Property VisitNO As %String;

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 门急诊号

Property OutPatientNO As %String(MAXLEN = 50) [ Required ];

// 就诊时间上限

Property VisitUpDateTime As %String;

// 就诊时间下限

Property VisitLowDateTime As %String;

// PatientID

Property PatientID As %String(MAXLEN = 50);

// 患者身份证号

Property IDCardNO As %String;

// 科室标识符

Property DeptID As %String;

// 组织机构标识

Property MedicalOrgID As %String;

// 就诊类型代码

Property VisitTypeCode As %String;

// 就诊类型描述

Property VisitTypeName As %String;

Storage Default
{
<Data name="OutPatientInfoQueryState">
<Value name="1">
<Value>QueryID</Value>
</Value>
<Value name="2">
<Value>VisitNO</Value>
</Value>
<Value name="3">
<Value>VisitNum</Value>
</Value>
<Value name="4">
<Value>VisitSerialNum</Value>
</Value>
<Value name="5">
<Value>OutPatientNO</Value>
</Value>
<Value name="6">
<Value>VisitUpDateTime</Value>
</Value>
<Value name="7">
<Value>VisitLowDateTime</Value>
</Value>
<Value name="8">
<Value>PatientID</Value>
</Value>
<Value name="9">
<Value>IDCardNO</Value>
</Value>
<Value name="10">
<Value>DeptID</Value>
</Value>
<Value name="11">
<Value>MedicalOrgID</Value>
</Value>
<Value name="12">
<Value>VisitTypeCode</Value>
</Value>
<Value name="13">
<Value>VisitTypeName</Value>
</Value>
</Data>
<State>OutPatientInfoQueryState</State>
<StreamLocation>^VisitBF83.OutPatientIB79ES</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

Class VisitInfo.OutPatientInfo.MSG.QueryResponse.OutPatientInfoQuerySucc Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Response";

// 门急诊号

Property OutPatientNO As %String [ Required ];

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 就诊类型代码

Property VisitTypeCode As %String [ Required ];

// 就诊类别描述

Property VisitTypeName As %String [ Required ];

// 就诊日期时间

Property VisitDateTime As %String [ Required ];

Property VisitReasonName As %String;

// PatientID

Property PatientID As %String(MAXLEN = 50);

// 患者身份证号

Property IDCardNO As %String;

// 患者姓名

Property PatientName As %String [ Required ];

// 责任医师工号

Property DutyDoctorID As %String(MAXLEN = 50) [ Required ];

// 责任医师姓名

Property DutyDoctorName As %String [ Required ];

// 科室标识

Property DeptID As %String [ Required ];

// 科室名称

Property DeptName As %String [ Required ];

// 服务机构的标识

Property ServiceOrgID As %String [ Required ];

// 查询标识

Property QueryID As %String(MAXLEN = 50);

// 查询响应代码

Property QueryResponseCode As %String(MAXLEN = 50);

// 查询结果数量

Property QueryResultNum As %String;

Storage Default
{
<Data name="OutPatientInfoQuerySuccState">
<Value name="1">
<Value>OutPatientNO</Value>
</Value>
<Value name="2">
<Value>VisitNum</Value>
</Value>
<Value name="3">
<Value>VisitSerialNum</Value>
</Value>
<Value name="4">
<Value>VisitTypeCode</Value>
</Value>
<Value name="5">
<Value>VisitTypeName</Value>
</Value>
<Value name="6">
<Value>VisitDateTime</Value>
</Value>
<Value name="7">
<Value>VisitReasonName</Value>
</Value>
<Value name="8">
<Value>PatientID</Value>
</Value>
<Value name="9">
<Value>IDCardNO</Value>
</Value>
<Value name="10">
<Value>PatientName</Value>
</Value>
<Value name="11">
<Value>DutyDoctorID</Value>
</Value>
<Value name="12">
<Value>DutyDoctorName</Value>
</Value>
<Value name="13">
<Value>DeptID</Value>
</Value>
<Value name="14">
<Value>DeptName</Value>
</Value>
<Value name="15">
<Value>ServiceOrgID</Value>
</Value>
<Value name="16">
<Value>QueryID</Value>
</Value>
<Value name="17">
<Value>QueryResponseCode</Value>
</Value>
<Value name="18">
<Value>QueryResultNum</Value>
</Value>
</Data>
<State>OutPatientInfoQuerySuccState</State>
<StreamLocation>^VisitC4C4.OutPatientI89F7S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

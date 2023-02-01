Class VisitInfo.DischargeInfo.MSG.QueryResponse.DischargeInfoQuerySucc Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Response";

Property WesternDias As list Of VisitInfo.DischargeInfo.MSG.QueryResponse.MessageRoot.WesternDias(XMLNAME = "WesternDias");

Property TCMDias As list Of VisitInfo.DischargeInfo.MSG.QueryResponse.MessageRoot.TCMDias(XMLNAME = "TCMDias");

// 住院号

Property InPatientNO As %String [ Required ];

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 就诊类别代码

Property VisitTypeCode As %String [ Required ];

// 就诊类别描述

Property VisitTypeName As %String [ Required ];

// 出院日期时间

Property DischargeDateTime As %String [ Required ];

// PatientID

Property PatientID As %String(MAXLEN = 50) [ Required ];

// 患者姓名

Property PatientName As %String [ Required ];

// 患者身份证号

Property IDCardNO As %String [ Required ];

// 医院编码

Property HospitalCode As %String [ Required ];

// 责任医师工号

Property DutyDoctorID As %String(MAXLEN = 50) [ Required ];

// 责任医师姓名

Property DutyDoctorName As %String [ Required ];

// 登记人职工号

Property RegistrantID As %String(MAXLEN = 50) [ Required ];

// 登记人姓名

Property RegistrantName As %String [ Required ];

// 科室标识

Property DeptID As %String;

// 科室描述

Property DeptName As %String;

// 病区标识符

Property WardID As %String(MAXLEN = 50);

// 病区名称

Property WardName As %String;

// 查询标识

Property QueryID As %String(MAXLEN = 50);

// 查询响应代码

Property QueryResponseCode As %String(MAXLEN = 50);

// 查询结果数量

Property QueryResultNum As %String;

Storage Default
{
<Data name="DischargeInfoQuerySuccState">
<Value name="1">
<Value>WesternDias</Value>
</Value>
<Value name="2">
<Value>TCMDias</Value>
</Value>
<Value name="3">
<Value>InPatientNO</Value>
</Value>
<Value name="4">
<Value>VisitNum</Value>
</Value>
<Value name="5">
<Value>VisitSerialNum</Value>
</Value>
<Value name="6">
<Value>VisitTypeCode</Value>
</Value>
<Value name="7">
<Value>VisitTypeName</Value>
</Value>
<Value name="8">
<Value>DischargeDateTime</Value>
</Value>
<Value name="9">
<Value>PatientID</Value>
</Value>
<Value name="10">
<Value>PatientName</Value>
</Value>
<Value name="11">
<Value>IDCardNO</Value>
</Value>
<Value name="12">
<Value>HospitalCode</Value>
</Value>
<Value name="13">
<Value>DutyDoctorID</Value>
</Value>
<Value name="14">
<Value>DutyDoctorName</Value>
</Value>
<Value name="15">
<Value>RegistrantID</Value>
</Value>
<Value name="16">
<Value>RegistrantName</Value>
</Value>
<Value name="17">
<Value>DeptID</Value>
</Value>
<Value name="18">
<Value>DeptName</Value>
</Value>
<Value name="19">
<Value>WardID</Value>
</Value>
<Value name="20">
<Value>WardName</Value>
</Value>
<Value name="21">
<Value>QueryID</Value>
</Value>
<Value name="22">
<Value>QueryResponseCode</Value>
</Value>
<Value name="23">
<Value>QueryResultNum</Value>
</Value>
</Data>
<State>DischargeInfoQuerySuccState</State>
<StreamLocation>^VisitB182.DischargeInfC82S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

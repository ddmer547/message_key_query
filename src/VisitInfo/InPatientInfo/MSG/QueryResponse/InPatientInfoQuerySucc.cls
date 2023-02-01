Class VisitInfo.InPatientInfo.MSG.QueryResponse.InPatientInfoQuerySucc Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 西医诊断根结点

Property WesternDias As list Of VisitInfo.InPatientInfo.MSG.Body.MessageRoot.WesternDias(XMLNAME = "WesternDias");

// 中医诊断根结点

Property TCMDias As list Of VisitInfo.InPatientInfo.MSG.Body.MessageRoot.TCMDias(XMLNAME = "TCMDias");

// 住院号

Property InPatientNO As %String [ Required ];

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 就诊类别代码

Property VisitTypeCode As %String [ Required ];

// 患者就诊类别描述

Property VisitTypeName As %String [ Required ];

// 入院日期

Property AdmissionDate As %String [ Required ];

// PatientID

Property PatientID As %String(MAXLEN = 50) [ Required ];

// 患者身份证号

Property IDCardNO As %String;

// 患者姓名

Property PatientName As %String [ Required ];

// 医生职工号

Property DoctorEmployID As %String(MAXLEN = 50);

// 责任医生姓名

Property DutyDoctorName As %String [ Required ];

// 科室标识

Property DeptID As %String [ Required ];

// 科室名称

Property DeptName As %String [ Required ];

// 病区号

Property WardID As %String(MAXLEN = 50);

// 病区名称

Property WardName As %String;

// 病房号标识

Property WardHouseNO As %String(MAXLEN = 50);

// 病房名称

Property WardHouseName As %String;

// 病床号标识

Property WardBedID As %String(MAXLEN = 50);

// 病床名称

Property WardBedName As %String;

// 服务机构代码

Property ServiceOrgID As %String [ Required ];

// 查询标识

Property QueryID As %String(MAXLEN = 50);

// 查询响应代码

Property QueryResponseCode As %String(MAXLEN = 50);

// 查询结果数量

Property QueryResultNum As %String;

Storage Default
{
<Data name="InPatientInfoQuerySuccState">
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
<Value>AdmissionDate</Value>
</Value>
<Value name="9">
<Value>PatientID</Value>
</Value>
<Value name="10">
<Value>IDCardNO</Value>
</Value>
<Value name="11">
<Value>PatientName</Value>
</Value>
<Value name="12">
<Value>DoctorEmployID</Value>
</Value>
<Value name="13">
<Value>DutyDoctorName</Value>
</Value>
<Value name="14">
<Value>DeptID</Value>
</Value>
<Value name="15">
<Value>DeptName</Value>
</Value>
<Value name="16">
<Value>WardID</Value>
</Value>
<Value name="17">
<Value>WardName</Value>
</Value>
<Value name="18">
<Value>WardHouseNO</Value>
</Value>
<Value name="19">
<Value>WardHouseName</Value>
</Value>
<Value name="20">
<Value>WardBedID</Value>
</Value>
<Value name="21">
<Value>WardBedName</Value>
</Value>
<Value name="22">
<Value>ServiceOrgID</Value>
</Value>
<Value name="23">
<Value>QueryID</Value>
</Value>
<Value name="24">
<Value>QueryResponseCode</Value>
</Value>
<Value name="25">
<Value>QueryResultNum</Value>
</Value>
</Data>
<State>InPatientInfoQuerySuccState</State>
<StreamLocation>^VisitInfo.ICC2.InPatientIn7385S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

Class VisitInfo.InPatientInfo.MSG.Body.InPatientInfoAdd Extends (%SerialObject, %XML.Adaptor)
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

// 就诊原因描述

Property VisitReasonName As %String;

// 医疗保险类别代码

Property MedicalInsureTypeCode As %String;

// 医疗保险类别描述

Property MedicalInsureTypeName As %String;

// 住院次数

Property InPatientTimes As %String;

// PatientID

Property PatientID As %String(MAXLEN = 50) [ Required ];

// 患者身份证号

Property IDCardNO As %String;

// 患者姓名

Property PatientName As %String [ Required ];

// 医生的职工号

Property DoctorEmployID As %String(MAXLEN = 50);

// 责任医生姓名

Property DutyDoctorName As %String [ Required ];

// 科室标识

Property DeptID As %String [ Required ];

// 科室名称

Property DeptName As %String [ Required ];

// 病区号标识

Property WardID As %String(MAXLEN = 50);

// 病区名称

Property WardName As %String;

// 病房号标识

Property WardHouseCode As %String(MAXLEN = 50);

// 病房名称

Property WardHouseName As %String;

// 病床号标识

Property WardBedCode As %String(MAXLEN = 50);

// 病床名称

Property WardBedName As %String;

// 服务机构代码

Property ServiceOrgID As %String [ Required ];

Storage Default
{
<Data name="InPatientInfoAddState">
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
<Value>VisitReasonName</Value>
</Value>
<Value name="10">
<Value>MedicalInsureTypeCode</Value>
</Value>
<Value name="11">
<Value>MedicalInsureTypeName</Value>
</Value>
<Value name="12">
<Value>InPatientTimes</Value>
</Value>
<Value name="13">
<Value>PatientID</Value>
</Value>
<Value name="14">
<Value>IDCardNO</Value>
</Value>
<Value name="15">
<Value>PatientName</Value>
</Value>
<Value name="16">
<Value>DoctorEmployID</Value>
</Value>
<Value name="17">
<Value>DutyDoctorName</Value>
</Value>
<Value name="18">
<Value>DeptID</Value>
</Value>
<Value name="19">
<Value>DeptName</Value>
</Value>
<Value name="20">
<Value>WardID</Value>
</Value>
<Value name="21">
<Value>WardName</Value>
</Value>
<Value name="22">
<Value>WardHouseCode</Value>
</Value>
<Value name="23">
<Value>WardHouseName</Value>
</Value>
<Value name="24">
<Value>WardBedCode</Value>
</Value>
<Value name="25">
<Value>WardBedName</Value>
</Value>
<Value name="26">
<Value>ServiceOrgID</Value>
</Value>
</Data>
<State>InPatientInfoAddState</State>
<StreamLocation>^VisitIB0D.InPatientInA4E5S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

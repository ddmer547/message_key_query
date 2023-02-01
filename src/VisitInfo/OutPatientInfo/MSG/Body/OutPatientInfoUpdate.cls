Class VisitInfo.OutPatientInfo.MSG.Body.OutPatientInfoUpdate Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 门急诊号

Property OutPatientNO As %String [ Required ];

// 更新状态

Property StatusCode As %String(MAXLEN = 50) [ Required ];

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 就诊类型代码

Property VisitTypeCode As %String;

// 就诊类型描述

Property VisitTypeName As %String;

// 就诊日期时间

Property VisitDateTime As %String [ Required ];

// 就诊原因描述

Property VisitReasonName As %String;

// 医疗保险类别代码

Property MedicalInsureTypeCode As %String;

// 医疗保险类别描述

Property MedicalInsureTypeName As %String;

// PatientID

Property PatientID As %String;

// IDCardNO

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

/// 病情等级
Property DiseaseGrade As %String;

/// 急诊分诊标识
Property DiseaseGradeID As %String;

// 挂号序号

Property OrderNum As %String(MAXLEN = 50);

/// 挂号诊室标识
Property RoomID As %String(MAXLEN = 50);

/// 挂号诊室名称
Property RoomName As %String(MAXLEN = 50);

/// 资源时段开始日期时间
Property ResourceStartTime As %String(MAXLEN = 50);

/// 资源时段结束日期时间
Property ResourceEndTime As %String(MAXLEN = 50);

/// 证件类别代码
Property IDCardNOTypeCode As %String;

/// 证件类别描述
Property IDCardNOTypeName As %String;

Storage Default
{
<Data name="OutPatientInfoUpdateState">
<Value name="1">
<Value>OutPatientNO</Value>
</Value>
<Value name="2">
<Value>StatusCode</Value>
</Value>
<Value name="3">
<Value>VisitNum</Value>
</Value>
<Value name="4">
<Value>VisitSerialNum</Value>
</Value>
<Value name="5">
<Value>VisitTypeCode</Value>
</Value>
<Value name="6">
<Value>VisitTypeName</Value>
</Value>
<Value name="7">
<Value>VisitDateTime</Value>
</Value>
<Value name="8">
<Value>VisitReasonName</Value>
</Value>
<Value name="9">
<Value>MedicalInsureTypeCode</Value>
</Value>
<Value name="10">
<Value>MedicalInsureTypeName</Value>
</Value>
<Value name="11">
<Value>PatientID</Value>
</Value>
<Value name="12">
<Value>IDCardNO</Value>
</Value>
<Value name="13">
<Value>PatientName</Value>
</Value>
<Value name="14">
<Value>DutyDoctorID</Value>
</Value>
<Value name="15">
<Value>DutyDoctorName</Value>
</Value>
<Value name="16">
<Value>DeptID</Value>
</Value>
<Value name="17">
<Value>DeptName</Value>
</Value>
<Value name="18">
<Value>ServiceOrgID</Value>
</Value>
<Value name="19">
<Value>DiseaseGrade</Value>
</Value>
<Value name="20">
<Value>DiseaseGradeID</Value>
</Value>
<Value name="21">
<Value>OrderNum</Value>
</Value>
<Value name="22">
<Value>RoomID</Value>
</Value>
<Value name="23">
<Value>RoomName</Value>
</Value>
<Value name="24">
<Value>ResourceStartTime</Value>
</Value>
<Value name="25">
<Value>ResourceEndTime</Value>
</Value>
<Value name="26">
<Value>IDCardNOTypeCode</Value>
</Value>
<Value name="27">
<Value>IDCardNOTypeName</Value>
</Value>
</Data>
<State>OutPatientInfoUpdateState</State>
<StreamLocation>^VisitBF83.OutPatientIAECFS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

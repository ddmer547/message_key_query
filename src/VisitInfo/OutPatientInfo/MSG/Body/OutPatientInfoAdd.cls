Class VisitInfo.OutPatientInfo.MSG.Body.OutPatientInfoAdd Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

/// 门急诊号
Property OutPatientNO As %String(MAXLEN = 50) [ Required ];

/// 就诊次数
Property VisitNum As %String [ InitialExpression = "1" ];

/// 就诊流水号
Property VisitSerialNum As %String(MAXLEN = 50);

/// 就诊类别代码
Property VisitTypeCode As %String [ Required ];

/// 就诊类别描述
Property VisitTypeName As %String [ Required ];

/// 就诊日期时间
Property VisitDateTime As %String [ Required ];

/// 就诊原因描述
Property VisitReasonName As %String;

/// 医疗保险类别代码
Property MedicalInsureTypeCode As %String;

/// 医疗保险类别描述
Property MedicalInsureTypeName As %String;

/// PatientID
Property PatientID As %String(MAXLEN = 50);

/// 患者身份证号
Property IDCardNO As %String;

/// 患者姓名
Property PatientName As %String [ Required ];

/// 责任医师工号
Property DutyDoctorID As %String(MAXLEN = 50) [ Required ];

/// 责任医师姓名
Property DutyDoctorName As %String [ Required ];

/// 科室标识
Property DeptID As %String [ Required ];

/// 科室姓名
Property DeptName As %String [ Required ];

/// 服务机构标识
Property ServiceOrgID As %String [ Required ];

/// 病情等级
Property DiseaseGrade As %String;

/// 急诊分诊标识
Property DiseaseGradeID As %String;

/// 挂号序号
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
<Data name="OutPatientInfoAddState">
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
<Value>MedicalInsureTypeCode</Value>
</Value>
<Value name="9">
<Value>MedicalInsureTypeName</Value>
</Value>
<Value name="10">
<Value>PatientID</Value>
</Value>
<Value name="11">
<Value>IDCardNO</Value>
</Value>
<Value name="12">
<Value>PatientName</Value>
</Value>
<Value name="13">
<Value>DutyDoctorID</Value>
</Value>
<Value name="14">
<Value>DutyDoctorName</Value>
</Value>
<Value name="15">
<Value>DeptID</Value>
</Value>
<Value name="16">
<Value>DeptName</Value>
</Value>
<Value name="17">
<Value>ServiceOrgID</Value>
</Value>
<Value name="18">
<Value>DiseaseGrade</Value>
</Value>
<Value name="19">
<Value>DiseaseGradeID</Value>
</Value>
<Value name="20">
<Value>OrderNum</Value>
</Value>
<Value name="21">
<Value>RoomID</Value>
</Value>
<Value name="22">
<Value>RoomName</Value>
</Value>
<Value name="23">
<Value>ResourceStartTime</Value>
</Value>
<Value name="24">
<Value>ResourceEndTime</Value>
</Value>
<Value name="25">
<Value>IDCardNOTypeCode</Value>
</Value>
<Value name="26">
<Value>IDCardNOTypeName</Value>
</Value>
</Data>
<State>OutPatientInfoAddState</State>
<StreamLocation>^VisitBF83.OutPatientI996AS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

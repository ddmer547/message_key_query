Class VisitInfo.DischargeInfo.MSG.Body.DischargeInfoUpdate Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

Property WesternDias As list Of VisitInfo.DischargeInfo.MSG.Body.MessageRoot.WesternDias(XMLNAME = "WesternDias");

Property TCMDias As list Of VisitInfo.DischargeInfo.MSG.Body.MessageRoot.TCMDias(XMLNAME = "TCMDias");

// 住院号

Property InPatientNO As %String [ Required ];

// 更新状态

Property StatusCode As %String(MAXLEN = 50);

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// 就诊类别代码

Property VisitTypeCode As %String [ Required ];

// 就诊类别描述

Property VisitTypeName As %String [ Required ];

// 出院日期时间

Property OutHospitalDays As %String;

// 住院天数

Property InHospitalDays As %String;

// PatientID

Property PatientID As %String(MAXLEN = 50) [ Required ];

// 患者身份证号

Property IDCardNO As %String;

// 患者姓名

Property PatientName As %String [ Required ];

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

// 出院方式编码

Property DischargeWaycode As %String;

// 出院方式

Property DischargeWay As %String;

Storage Default
{
<Data name="DischargeInfoUpdateState">
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
<Value>StatusCode</Value>
</Value>
<Value name="5">
<Value>VisitNum</Value>
</Value>
<Value name="6">
<Value>VisitSerialNum</Value>
</Value>
<Value name="7">
<Value>VisitTypeCode</Value>
</Value>
<Value name="8">
<Value>VisitTypeName</Value>
</Value>
<Value name="9">
<Value>OutHospitalDays</Value>
</Value>
<Value name="10">
<Value>InHospitalDays</Value>
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
<Value>RegistrantID</Value>
</Value>
<Value name="15">
<Value>RegistrantName</Value>
</Value>
<Value name="16">
<Value>DeptID</Value>
</Value>
<Value name="17">
<Value>DeptName</Value>
</Value>
<Value name="18">
<Value>WardID</Value>
</Value>
<Value name="19">
<Value>WardName</Value>
</Value>
<Value name="20">
<Value>DischargeWaycode</Value>
</Value>
<Value name="21">
<Value>DischargeWay</Value>
</Value>
</Data>
<State>DischargeInfoUpdateState</State>
<StreamLocation>^Visit740A.DischargeIn6075S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

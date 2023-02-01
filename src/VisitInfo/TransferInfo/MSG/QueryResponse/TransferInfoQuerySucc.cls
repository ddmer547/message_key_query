Class VisitInfo.TransferInfo.MSG.QueryResponse.TransferInfoQuerySucc Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Response";

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

// 就诊日期时间

Property VisitDateTime As %String [ Required ];

// PatientID

Property PatientID As %String(MAXLEN = 50) [ Required ];

// 患者身份证号

Property IDCardNO As %String;

// 患者姓名

Property PatientName As %String [ Required ];

// 医生职工号

Property DutyDoctorID As %String(MAXLEN = 50);

// 责任医生姓名

Property DutyDoctorName As %String [ Required ];

// 转出日期时间

Property TransferOutDate As %String [ Required ];

// 转出科室标识

Property TransferOutDeptID As %String;

// 转出科室名称

Property TransferOutDeptName As %String;

// 转出病区标识

Property TransferOutWardID As %String(MAXLEN = 50);

// 转出病区描述

Property TransferOutWardName As %String;

// 转出病房标识

Property TransferOutWardHouseID As %String(MAXLEN = 50);

// 转出病房描述

Property TransferOutWardHouseName As %String;

// 转出病床标识

Property TransferOutWardBedID As %String(MAXLEN = 50);

// 转出病床描述

Property TransferOutWardBedName As %String;

// 转入日期时间

Property TransferIntoDate As %String [ Required ];

// 转入科室标识

Property TransferIntoDeptID As %String;

// 转入科室名称

Property TransferIntoDeptName As %String;

// 转入病区标识

Property TransferIntoWardID As %String(MAXLEN = 50);

// 转入病区描述

Property TransferIntoWardName As %String;

// 转入病房标识

Property TransferIntoWardHouseID As %String(MAXLEN = 50);

// 转入病房描述

Property TransferIntoWardHouseName As %String;

// 转入病床标识

Property TransferIntoWardBedID As %String(MAXLEN = 50);

// 转入病床描述

Property TransferIntoWardBedName As %String;

// 查询标识

Property QueryID As %String(MAXLEN = 50);

// 查询响应代码

Property QueryResponseCode As %String(MAXLEN = 50);

// 查询结果数量

Property QueryResultNum As %String;

Storage Default
{
<Data name="TransferInfoQuerySuccState">
<Value name="1">
<Value>InPatientNO</Value>
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
<Value>PatientID</Value>
</Value>
<Value name="8">
<Value>IDCardNO</Value>
</Value>
<Value name="9">
<Value>PatientName</Value>
</Value>
<Value name="10">
<Value>DutyDoctorID</Value>
</Value>
<Value name="11">
<Value>DutyDoctorName</Value>
</Value>
<Value name="12">
<Value>TransferOutDate</Value>
</Value>
<Value name="13">
<Value>TransferOutDeptID</Value>
</Value>
<Value name="14">
<Value>TransferOutDeptName</Value>
</Value>
<Value name="15">
<Value>TransferOutWardID</Value>
</Value>
<Value name="16">
<Value>TransferOutWardName</Value>
</Value>
<Value name="17">
<Value>TransferOutWardHouseID</Value>
</Value>
<Value name="18">
<Value>TransferOutWardHouseName</Value>
</Value>
<Value name="19">
<Value>TransferOutWardBedID</Value>
</Value>
<Value name="20">
<Value>TransferOutWardBedName</Value>
</Value>
<Value name="21">
<Value>TransferIntoDate</Value>
</Value>
<Value name="22">
<Value>TransferIntoDeptID</Value>
</Value>
<Value name="23">
<Value>TransferIntoDeptName</Value>
</Value>
<Value name="24">
<Value>TransferIntoWardID</Value>
</Value>
<Value name="25">
<Value>TransferIntoWardName</Value>
</Value>
<Value name="26">
<Value>TransferIntoWardHouseID</Value>
</Value>
<Value name="27">
<Value>TransferIntoWardHouseName</Value>
</Value>
<Value name="28">
<Value>TransferIntoWardBedID</Value>
</Value>
<Value name="29">
<Value>TransferIntoWardBedName</Value>
</Value>
<Value name="30">
<Value>QueryID</Value>
</Value>
<Value name="31">
<Value>QueryResponseCode</Value>
</Value>
<Value name="32">
<Value>QueryResultNum</Value>
</Value>
</Data>
<State>TransferInfoQuerySuccState</State>
<StreamLocation>^VisitDDFF.TransferInf79F8S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

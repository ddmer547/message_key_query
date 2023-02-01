Class VisitInfo.TransferInfo.MSG.Body.TransferInfoAdd Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 住院号

Property InPatientNO As %String(MAXLEN = 50) [ Required ];

// 就诊次数

Property VisitNum As %String;

// 就诊流水号

Property VisitSerialNum As %String(MAXLEN = 50);

// PatientID

Property PatientID As %String(MAXLEN = 50) [ Required ];

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

Storage Default
{
<Data name="TransferInfoAddState">
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
<Value>PatientID</Value>
</Value>
<Value name="5">
<Value>TransferIntoDate</Value>
</Value>
<Value name="6">
<Value>TransferIntoDeptID</Value>
</Value>
<Value name="7">
<Value>TransferIntoDeptName</Value>
</Value>
<Value name="8">
<Value>TransferIntoWardID</Value>
</Value>
<Value name="9">
<Value>TransferIntoWardName</Value>
</Value>
<Value name="10">
<Value>TransferIntoWardHouseID</Value>
</Value>
<Value name="11">
<Value>TransferIntoWardHouseName</Value>
</Value>
<Value name="12">
<Value>TransferIntoWardBedID</Value>
</Value>
<Value name="13">
<Value>TransferIntoWardBedName</Value>
</Value>
<Value name="14">
<Value>TransferOutDate</Value>
</Value>
<Value name="15">
<Value>TransferOutDeptID</Value>
</Value>
<Value name="16">
<Value>TransferOutDeptName</Value>
</Value>
<Value name="17">
<Value>TransferOutWardID</Value>
</Value>
<Value name="18">
<Value>TransferOutWardName</Value>
</Value>
<Value name="19">
<Value>TransferOutWardHouseID</Value>
</Value>
<Value name="20">
<Value>TransferOutWardHouseName</Value>
</Value>
<Value name="21">
<Value>TransferOutWardBedID</Value>
</Value>
<Value name="22">
<Value>TransferOutWardBedName</Value>
</Value>
</Data>
<State>TransferInfoAddState</State>
<StreamLocation>^VisitFD98.TransferInfD925S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

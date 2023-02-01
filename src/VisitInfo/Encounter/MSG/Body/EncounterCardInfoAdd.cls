Class VisitInfo.Encounter.MSG.Body.EncounterCardInfoAdd Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Body";

// 就诊卡号

Property VisitCardNO As %String(MAXLEN = 50) [ Required ];

// 就诊卡状态

Property VisitCardStatus As %String(MAXLEN = 50) [ InitialExpression = "active" ];

// 建卡日期时间

Property CardCreationDateTime As %String;

// 身份证号

Property IDCardNO As %String [ Required ];

// 患者姓名

Property PatientName As %String [ Required ];

// 患者联系电话

Property PatientPhone As %String;

// 患者性别代码

Property SexCode As %String [ Required ];

// 患者性别描述

Property SexName As %String [ Required ];

// 患者出生日期

Property BirthDay As %String;

// 患者完整地址

Property Address As %String;

// 省（自治区、直辖市）

Property State As %String;

// 市（地区）

Property City As %String;

// 县（区）

Property County As %String;

// 乡（镇，街道办事处）

Property TownShip As %String;

// 村（街，路，弄等）

Property Village As %String;

// 门牌号码

Property HouseNO As %String;

// 邮政编码

Property PostCode As %String;

// 婚姻代码

Property MarriageCode As %String;

// 婚姻描述

Property MarriageName As %String;

// 民族代码

Property NationCode As %String;

// 民族描述

Property NationName As %String;

// 职业类别代码

Property OccupationTypeCode As %String;

// 固定值职业类别描述

Property OccupationTypeName As %String;

// 工作单位名称

Property JobName As %String;

// 工作单位电话

Property JobPhone As %String;

// 联系人关系代码

Property ContactRelationCode As %String;

// 联系人关系描述

Property ContactRelationName As %String;

// 联系人姓名

Property ContactName As %String;

// 联系人电话

Property ContactPhone As %String;

// 组织机构代码

Property MedicalOrgCode As %String [ Required ];

// 组织机构名称

Property MedicalOrgName As %String [ Required ];

// 医疗保险类别代码

Property MedicalInsureTypeCode As %String;

// 医疗保险类别描述

Property MedicalInsureTypeName As %String;

// 建卡者工号

Property CardCreatorID As %String(MAXLEN = 50) [ Required ];

// 建卡者姓名

Property CardCreatorName As %String [ Required ];

Storage Default
{
<Data name="EncounterCardInfoAddState">
<Value name="1">
<Value>VisitCardNO</Value>
</Value>
<Value name="2">
<Value>VisitCardStatus</Value>
</Value>
<Value name="3">
<Value>CardCreationDateTime</Value>
</Value>
<Value name="4">
<Value>IDCardNO</Value>
</Value>
<Value name="5">
<Value>PatientName</Value>
</Value>
<Value name="6">
<Value>PatientPhone</Value>
</Value>
<Value name="7">
<Value>SexCode</Value>
</Value>
<Value name="8">
<Value>SexName</Value>
</Value>
<Value name="9">
<Value>BirthDay</Value>
</Value>
<Value name="10">
<Value>Address</Value>
</Value>
<Value name="11">
<Value>State</Value>
</Value>
<Value name="12">
<Value>City</Value>
</Value>
<Value name="13">
<Value>County</Value>
</Value>
<Value name="14">
<Value>TownShip</Value>
</Value>
<Value name="15">
<Value>Village</Value>
</Value>
<Value name="16">
<Value>HouseNO</Value>
</Value>
<Value name="17">
<Value>PostCode</Value>
</Value>
<Value name="18">
<Value>MarriageCode</Value>
</Value>
<Value name="19">
<Value>MarriageName</Value>
</Value>
<Value name="20">
<Value>NationCode</Value>
</Value>
<Value name="21">
<Value>NationName</Value>
</Value>
<Value name="22">
<Value>OccupationTypeCode</Value>
</Value>
<Value name="23">
<Value>OccupationTypeName</Value>
</Value>
<Value name="24">
<Value>JobName</Value>
</Value>
<Value name="25">
<Value>JobPhone</Value>
</Value>
<Value name="26">
<Value>ContactRelationCode</Value>
</Value>
<Value name="27">
<Value>ContactRelationName</Value>
</Value>
<Value name="28">
<Value>ContactName</Value>
</Value>
<Value name="29">
<Value>ContactPhone</Value>
</Value>
<Value name="30">
<Value>MedicalOrgCode</Value>
</Value>
<Value name="31">
<Value>MedicalOrgName</Value>
</Value>
<Value name="32">
<Value>MedicalInsureTypeCode</Value>
</Value>
<Value name="33">
<Value>MedicalInsureTypeName</Value>
</Value>
<Value name="34">
<Value>CardCreatorID</Value>
</Value>
<Value name="35">
<Value>CardCreatorName</Value>
</Value>
</Data>
<State>EncounterCardInfoAddState</State>
<StreamLocation>^Visit9883.EncounterCaD041S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
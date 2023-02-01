Class VisitInfo.common.BaseBO Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Property Adapter As EnsLib.SOAP.OutboundAdapter;

Parameter INVOCATION = "Queue";

/// Description
ClassMethod MethodName() As %Status
{
	Set sc = $$$OK
	Do $SYSTEM.OBJ.Export("Ens.LookupTable.GBL","D://XSL/"_"LookupTable.xml","/mapped=1")
	Return sc
}

/// 通用异步返回BO
Method processHandle(pRequest As %RegisteredObject, Output pResponse As VisitInfo.Util.MSG.Response, MethodName As %String, args As %String) As %Status
{
	Set pResponse=##class(VisitInfo.Util.MSG.Response).%New()
	Set status=pRequest.XMLExportToString(.xmlString)
	$$$TRACE("请求值: "_xmlString)
	Set result = "<Response><MessageID>123</MessageID><!--消息创建时间--><CreationTime>20210309</CreationTime><!--发送者ID--><SenderID>HIS</SenderID><!--接收者ID--><ReceiverID>BKIP</ReceiverID><!--请求消息标ID--><RequestMessageID>1</RequestMessageID><!--处理结果代码--><ResultCode>AA</ResultCode><!--处理结果说明--><Result>处理结果说明</Result></Response>"
	Set util = ##class(VisitInfo.Util.ClassAndXML).%New()
	Set tSC = util.Xml2ObjectNoIP(result,"Response","VisitInfo.Util.MSG.Response",.pResponse)
	If $SYSTEM.Status.IsError(tSC) {
		$$$LOGERROR("调用方法错误，Error #"_$SYSTEM.Status.GetErrorCodes(tSC)_":"_$SYSTEM.Status.GetOneStatusText(tSC,1))
		Quit $SYSTEM.Status.Error($$$GeneralError,"返回值异常")	
	}
	Quit $$$OK
}

/// 通用同步返回BO
/// 入参:  pRequest--请求消息体;  pResponse-响应消息体;  MethodName--响应方的方法名;  ClassName--响应类的MSG;  args --备注;
Method SynccessHandle(pRequest As %RegisteredObject, Output pResponse As %RegisteredObject, MethodName As %String, ClassName As %String, args As %String) As %Status
{
	#; 引入转换类
	Set util = ##class(VisitInfo.Util.ClassAndXML).%New()	
	#; 请求转为字符串
	Set status=pRequest.XMLExportToString(.xmlString)
	$$$TRACE("请求消息:"_xmlString)
	Set reqClassName = $CLASSNAME(pRequest)	
	If reqClassName = "VisitInfo.DischargeInfo.MSG.DischargeInfoQuery"{
		Set result = "<Response><Head><MessageID>@BS004</MessageID><!--消息创建时间--><CreationTime>20120106110000</CreationTime><!--发送者ID--><SenderID>HIS</SenderID><!--接收者ID--><ReceiverID>BKIP</ReceiverID><!--处理结果--><ResultCode>AA</ResultCode><!--请求的消息ID--><RequestMessageID>请求的消息ID</RequestMessageID><!--处理结果说明--><Result>处理结果说明</Result></Head><Body><!--住院号--><InPatientNO>1447</InPatientNO><!--就诊次数--><VisitNum>1</VisitNum><!--就诊流水号--><VisitSerialNum>1254</VisitSerialNum><!--就诊类别代码--><VisitTypeCode>1</VisitTypeCode><!--就诊类别描述--><VisitTypeName>就诊类别描述</VisitTypeName><!--出院日期时间--><DischargeDateTime>20210311</DischargeDateTime><!--PatientID--><PatientID>75285</PatientID><!--患者姓名--><PatientName>张三</PatientName><!--患者身份证号--><IDCardNO>1221</IDCardNO><!--医院编码--><HospitalCode>11</HospitalCode><!--责任医师工号--><DutyDoctorID>1242</DutyDoctorID><!--责任医师姓名--><DutyDoctorName>责任医师姓名</DutyDoctorName><!--登记人职工号--><RegistrantID>14245</RegistrantID><!--登记人姓名--><RegistrantName>登记人姓名</RegistrantName><!--科室标识--><DeptID>5</DeptID><!--科室描述--><DeptName>科室描述</DeptName><!--病区标识符--><WardID>1</WardID><!--病区名称--><WardName>病区名称</WardName><!--西医诊断根节点--><WesternDias><WesternDia><!--西医诊断代码--><WesternIllnessDiaCode>1</WesternIllnessDiaCode><!--西医诊断名称--><WesternIllnessDiaName>西医诊断名称</WesternIllnessDiaName><!--西医诊断人工号--><WesternDiaLaborNO>4</WesternDiaLaborNO></WesternDia></WesternDias><!--中医诊断根节点--><TCMDias><TCMDia><!--中医诊断代码--><TCMIllnessDiaCode>5</TCMIllnessDiaCode><!--中医诊断名称--><TCMIllnessDiaName>中医诊断名称</TCMIllnessDiaName><!--中医诊断人工号--><TCMDiaLaborNO>857</TCMDiaLaborNO></TCMDia></TCMDias><!--查询标识--><QueryID>5</QueryID><!--查询响应代码--><QueryResponseCode>4</QueryResponseCode><!--查询结果数量--><QueryResultNum>12</QueryResultNum></Body></Response>"
		
	}ElseIf reqClassName = "VisitInfo.Encounter.MSG.EncounterCardInfoQuery"{
		Set result = "<Response><Head><MessageID>@BS004</MessageID><!--消息创建时间--><CreationTime>20120106110000</CreationTime><!--发送者ID--><SenderID>HIS</SenderID><!--接收者ID--><ReceiverID>BKIP</ReceiverID><!--处理结果--><ResultCode>AA</ResultCode><!--请求的消息ID--><RequestMessageID>请求的消息ID</RequestMessageID><!--处理结果说明--><Result>处理结果说明</Result></Head><Body><!--就诊卡号--><VisitCardNO>123</VisitCardNO><!--就诊卡状态--><VisitCardStatus> active</VisitCardStatus><!--建卡日期时间--><CardCreationDateTime>20210310</CardCreationDateTime><!--身份证号--><IDCardNO>123456</IDCardNO><!--患者姓名--><PatientName>张三</PatientName><!--患者联系电话--><PatientPhone>123456789</PatientPhone><!--患者性别代码--><SexCode>1</SexCode><!--患者性别描述--><SexName>患者性别描述</SexName><!--患者出生日期--><BirthDay>20210310</BirthDay><!--患者完整地址--><Address>患者完整地址</Address><!--省（自治区、直辖市）--><State>湖北省</State><!--市（地区）--><City>武汉市</City><!--县（区）--><County>江汉区</County><!--乡（镇，街道办事处--><TownShip>莲花街</TownShip><!--村（街，路，弄等）--><Village>莲花村</Village><!--门牌号码--><HouseNO>1</HouseNO><!--邮政编码--><PostCode>213</PostCode><!--婚姻代码--><MarriageCode>1</MarriageCode><!--婚姻描述--><MarriageName>婚姻描述</MarriageName><!--民族代码--><NationCode>1</NationCode><!--民族描述--><NationName>民族描述</NationName><!--职业类别代码--><OccupationTypeCode>1</OccupationTypeCode><!--固定值职业类别描述--><OccupationTypeName>固定值职业类别描述</OccupationTypeName><!--工作单位名称--><JobName>工作单位名称</JobName><!--工作单位电话--><JobPhone>123456</JobPhone><!--联系人关系代码--><ContactRelationCode>2</ContactRelationCode><!--联系人关系描述--><ContactRelationName>联系人关系描述</ContactRelationName><!--联系人电话--><ContactPhone>123456</ContactPhone><!--联系人姓名--><ContactName>张三</ContactName><!--组织机构代码--><MedicalOrgCode>1</MedicalOrgCode><!--组织机构名称--><MedicalOrgName>组织机构名称</MedicalOrgName><!--医疗保险类别代码--><MedicalInsureTypeCode>2</MedicalInsureTypeCode><!--医疗保险类别描述--><MedicalInsureTypeName>医疗保险类别描述</MedicalInsureTypeName><!--建卡者工号--><CardCreatorID>123456</CardCreatorID><!--建卡者姓名--><CardCreatorName>李四</CardCreatorName><!--查询标识--><QueryID>1</QueryID><!--查询响应代码--><QueryResponseCode>查询响应代码</QueryResponseCode><!--查询结果数量--><QueryResultNum>111</QueryResultNum></Body></Response>"
		
	}ElseIf reqClassName = "VisitInfo.InPatientInfo.MSG.InPatientInfoQuery"{
		Set result = "<Response><Head><MessageID>@BS004</MessageID><!--消息创建时间--><CreationTime>20120106110000</CreationTime><!--发送者ID--><SenderID>HIS</SenderID><!--接收者ID--><ReceiverID>BKIP</ReceiverID><!--处理结果--><ResultCode>AA</ResultCode><!--请求的消息ID--><RequestMessageID>请求的消息ID</RequestMessageID><!--处理结果说明--><Result>处理结果说明</Result></Head><Body><!--住院号--><InPatientNO>12356</InPatientNO><!--就诊次数--><VisitNum>1</VisitNum><!--就诊流水号--><VisitSerialNum>20210310003</VisitSerialNum><!--就诊类别代码--><VisitTypeCode>1</VisitTypeCode><!--患者就诊类别描述--><VisitTypeName>患者就诊类别描述</VisitTypeName><!--入院日期--><AdmissionDate>20210310</AdmissionDate><!--PatientID--><PatientID>155478</PatientID><!--患者身份证号--><IDCardNO>123456789</IDCardNO><!--患者姓名--><PatientName>张三</PatientName><!--医生职工号--><DoctorEmployID>1225</DoctorEmployID><!--责任医生姓名--><DutyDoctorName>李四</DutyDoctorName><!--科室标识--><DeptID>2</DeptID><!--科室名称--><DeptName>内科</DeptName><!--病区号--><WardID>3</WardID><!--病区名称--><WardName>重病区</WardName><!--病房号标识--><WardHouseNO>2</WardHouseNO><!--病房名称--><WardHouseName>病房名称</WardHouseName><!--病床号标识--><WardBedID>2</WardBedID><!--病床名称--><WardBedName>病床名称</WardBedName><!--服务机构代码--><ServiceOrgID>25</ServiceOrgID><!--西医诊断根节点--><WesternDias><WesternDia><!--西医诊断代码--><WesternIllnessDiaCode>14</WesternIllnessDiaCode><!--西医诊断名称--><WesternIllnessDiaName>西医诊断名称</WesternIllnessDiaName><!--西医诊断人工号--><WesternDiaLaborNO>101</WesternDiaLaborNO></WesternDia></WesternDias><!--中医诊断根节点--><TCMDias><TCMDia><!--中医诊断代码--><TCMIllnessDiaCode>15</TCMIllnessDiaCode><!--中医诊断名称--><TCMIllnessDiaName>中医诊断名称</TCMIllnessDiaName><!--中医诊断人工号--><TCMDiaLaborNO>36</TCMDiaLaborNO></TCMDia></TCMDias><!--查询标识--><QueryID>1</QueryID><!--查询响应代码--><QueryResponseCode>2</QueryResponseCode><!--查询结果数量--><QueryResultNum>123</QueryResultNum></Body></Response>"
		
	}ElseIf reqClassName = "VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery"{
		Set result = "<Response><Head><MessageID>@BS004</MessageID><!--消息创建时间--><CreationTime>20120106110000</CreationTime><!--发送者ID--><SenderID>HIS</SenderID><!--接收者ID--><ReceiverID>BKIP</ReceiverID><!--处理结果--><ResultCode>AA</ResultCode><!--请求的消息ID--><RequestMessageID>请求的消息ID</RequestMessageID><!--处理结果说明--><Result>处理结果说明</Result></Head><Body><!--门急诊号--><OutPatientNO>152</OutPatientNO><!--就诊次数--><VisitNum>3</VisitNum><!--就诊流水号--><VisitSerialNum>20210310100</VisitSerialNum><!--就诊类型代码--><VisitTypeCode>1</VisitTypeCode><!--就诊类别描述--><VisitTypeName>就诊类别描述</VisitTypeName><!--就诊日期时间--><VisitDateTime>20210310</VisitDateTime><!--PatientID--><PatientID>125541</PatientID><!--患者身份证号--><IDCardNO>1235464</IDCardNO><!--患者姓名--><PatientName>张三</PatientName><!--责任医师姓名--><DutyDoctorName>李四</DutyDoctorName><!--责任医师工号--><DutyDoctorID>12231531</DutyDoctorID><!--科室标识--><DeptID>1</DeptID><!--科室名称--><DeptName>内科</DeptName><!--服务机构的标识--><ServiceOrgID>1</ServiceOrgID><!--查询标识--><QueryID>1</QueryID><!--查询响应代码--><QueryResponseCode>2</QueryResponseCode><!--查询结果数量--><QueryResultNum>100</QueryResultNum></Body></Response>"
	}ElseIf reqClassName = "VisitInfo.TransferInfo.MSG.TransferInfoQuery"{
		Set result = "<Response><Head><MessageID>@BS004</MessageID><!--消息创建时间--><CreationTime>20120106110000</CreationTime><!--发送者ID--><SenderID>HIS</SenderID><!--接收者ID--><ReceiverID>BKIP</ReceiverID><!--处理结果--><ResultCode>AA</ResultCode><!--请求的消息ID--><RequestMessageID>请求的消息ID</RequestMessageID><!--处理结果说明--><Result>处理结果说明</Result></Head><Body><!--住院号--><InPatientNO>147852</InPatientNO><!--就诊次数--><VisitNum>1</VisitNum><!--就诊流水号--><VisitSerialNum>369852</VisitSerialNum><!--就诊类别代码--><VisitTypeCode>1</VisitTypeCode><!--就诊类别描述--><VisitTypeName>就诊类别描述</VisitTypeName><!--就诊日期时间--><VisitDateTime>20210311</VisitDateTime><!--PatientID--><PatientID>259631</PatientID><!--患者身份证号--><IDCardNO>1478521</IDCardNO><!--患者姓名--><PatientName>张三</PatientName><!--医生职工号--><DutyDoctorID>14562</DutyDoctorID><!--责任医生姓名--><DutyDoctorName>李四</DutyDoctorName><!--转出日期时间--><TransferOutDate>20210311</TransferOutDate><!--转出科室标识--><TransferOutDeptID>1</TransferOutDeptID><!--转出科室名称--><TransferOutDeptName>转出科室名称</TransferOutDeptName><!--转出病区标识--><TransferOutWardID>2</TransferOutWardID><!--转出病区描述--><TransferOutWardName>转出病区描述</TransferOutWardName><!--转出病房标识--><TransferOutWardHouseID>3</TransferOutWardHouseID><!--转出病房描述--><TransferOutWardHouseName>转出病房描述</TransferOutWardHouseName><!--转出病床标识--><TransferOutWardBedID>4</TransferOutWardBedID><!--转出病床描述--><TransferOutWardBedName>转出病床描述</TransferOutWardBedName><!--转入日期时间--><TransferIntoDate>20210311</TransferIntoDate><!--转入科室标识--><TransferIntoDeptID>1</TransferIntoDeptID><!--转入科室名称--><TransferIntoDeptName>转入科室名称</TransferIntoDeptName><!--转入病区标识--><TransferIntoWardID>2</TransferIntoWardID><!--转入病区描述--><TransferIntoWardName>转入病区描述</TransferIntoWardName><!--转入病房标识--><TransferIntoWardHouseID>2</TransferIntoWardHouseID><!--转入病房描述--><TransferIntoWardHouseName>转入病房描述</TransferIntoWardHouseName><!--转入病床标识--><TransferIntoWardBedID>6</TransferIntoWardBedID><!--转入病床描述--><TransferIntoWardBedName>转入病床描述</TransferIntoWardBedName><!--查询标识--><QueryID>1</QueryID><!--查询响应代码--><QueryResponseCode>1</QueryResponseCode><!--查询结果数量--><QueryResultNum>156</QueryResultNum></Body></Response>"
	}
	Set util = ##class(VisitInfo.Util.ClassAndXML).%New()
	Set pResponse = ##class(VisitInfo.InPatientInfo.MSG.QuerySuccess).%New()
	Set tSC = util.Xml2ObjectNoIP(result,"Response",ClassName,.pResponse)

	If $SYSTEM.Status.IsError(tSC) {
		$$$LOGERROR("调用方法错误，Error #"_$SYSTEM.Status.GetErrorCodes(tSC)_":"_$SYSTEM.Status.GetOneStatusText(tSC,1))
		Quit $SYSTEM.Status.Error($$$GeneralError,"返回值异常")	
	}
	Quit $$$OK
}

}

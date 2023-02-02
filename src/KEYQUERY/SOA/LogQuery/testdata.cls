/// Classname:  VisitInfo.Util.MSG.Response <br/>
/// Summary:    KEYQUERY.SOA.LogQuery.testdata <br/>
/// Version:   1.0 <br/>
/// Date:   2023年02月02日 10:23:59 <br/>
/// Author:  王喆  <br/>
Class KEYQUERY.SOA.LogQuery.testdata Extends %CSP.REST
{

/// 模拟办卡-门诊挂号-到住院-转科-出院新增
ClassMethod testAdd() As %Status
{
    Set sc = $$$OK
    s patientName = "张三"
    s patientId = "892170"
    s inPatientNo = "220011"
    s outPatientNo = "129000221"
    s idCardNo = "420324199904032245"
    /// 就诊卡新增
    s visitCard = "<Request><Head><!--消息ID--><MessageID>123</MessageID><!--消息创建时间--><CreationTime>20210309</CreationTime><!--发送者--><SenderID>HIS</SenderID><!--接收者--><ReceiverID>BKIP</ReceiverID><!--是否需要回执--><IfReceipt>Y</IfReceipt></Head><Body><!--就诊卡号--><VisitCardNO>1235</VisitCardNO><!--就诊卡状态--><VisitCardStatus> active</VisitCardStatus><!--建卡日期时间--><CardCreationDateTime>20210309</CardCreationDateTime><!--身份证号--><IDCardNO>"_idCardNo_"</IDCardNO><!--患者姓名--><PatientName>"_patientName_"</PatientName><!--患者联系电话--><PatientPhone>125463333</PatientPhone><!--患者性别代码--><SexCode>1</SexCode><!--患者性别描述--><SexName>男</SexName><!--患者出生日期--><BirthDay>20210309</BirthDay><!--患者完整地址--><Address>四川省成都市双流县红沙村</Address><!--省（自治区、直辖市）--><State>四川省</State><!--市（地区）--><City>成都市</City><!--县（区）--><County>双流县</County><!--乡（镇，街道办事处）--><TownShip>红沙村</TownShip><!--村（街，路，弄等）--><Village>红沙街</Village><!--门牌号码--><HouseNO>39号</HouseNO><!--邮政编码--><PostCode>51000</PostCode><!--婚姻代码--><MarriageCode>3</MarriageCode><!--婚姻描述--><MarriageName>婚姻描述</MarriageName><!--民族代码--><NationCode>2</NationCode><!--民族描述--><NationName>3</NationName><!--职业类别代码--><OccupationTypeCode>1</OccupationTypeCode><!--固定值职业类别描述--><OccupationTypeName>固定值职业类别描述</OccupationTypeName><!--工作单位名称--><JobName>工作单位名称</JobName><!--工作单位电话--><JobPhone>123456</JobPhone><!--联系人关系代码--><ContactRelationCode>1</ContactRelationCode><!--联系人关系描述--><ContactRelationName>联系人关系描述</ContactRelationName><!--联系人姓名--><ContactName>溜溜</ContactName><!--联系人电话--><ContactPhone>1365458</ContactPhone><!--组织机构代码--><MedicalOrgCode>1</MedicalOrgCode><!--组织机构名称--><MedicalOrgName>组织机构名称</MedicalOrgName><!--医疗保险类别代码--><MedicalInsureTypeCode>2</MedicalInsureTypeCode><!--医疗保险类别描述--><MedicalInsureTypeName>医疗保险类别描述</MedicalInsureTypeName><!--建卡者工号--><CardCreatorID>121345</CardCreatorID><!--建卡者姓名--><CardCreatorName>建卡者姓名</CardCreatorName></Body></Request>"
    /// 门诊挂号新增
    s outPatient = "<Request><Head><!--消息ID--><MessageID>123</MessageID><!--消息创建时间--><CreationTime>20210309000000</CreationTime><!--发送者--><SenderID>HIS</SenderID><!--接收者--><ReceiverID>BKIP</ReceiverID><!--是否需要回执--><IfReceipt>Y</IfReceipt></Head><Body><!--门急诊号--><OutPatientNO>"_outPatientNo_"</OutPatientNO><!--就诊次数--><VisitNum>12</VisitNum><!--就诊流水号--><VisitSerialNum>0211</VisitSerialNum><!--就诊类别代码--><VisitTypeCode>2</VisitTypeCode><!--就诊类别描述--><VisitTypeName>就诊类别描述</VisitTypeName><!--就诊日期时间--><VisitDateTime>20210310000000</VisitDateTime><!--就诊原因描述--><VisitReasonName>就诊原因描述</VisitReasonName><!--医疗保险类别代码--><MedicalInsureTypeCode>1</MedicalInsureTypeCode><!--医疗保险类别描述--><MedicalInsureTypeName>医疗保险类别描述</MedicalInsureTypeName><!--PatientID--><PatientID>"_patientId_"</PatientID><!--患者身份证号--><IDCardNO>"_idCardNo_"</IDCardNO><!--患者姓名--><PatientName>"_patientName_"</PatientName><!--责任医师工号--><DutyDoctorID>12346</DutyDoctorID><!--责任医师姓名--><DutyDoctorName>李四</DutyDoctorName><!--科室标识--><DeptID>1</DeptID><!--科室姓名--><DeptName>内科</DeptName><!--服务机构标识--><ServiceOrgID>1</ServiceOrgID></Body></Request>"
    /// 住院就诊新增
    s inPatient = "<Request><Head><!--消息ID--><MessageID>123</MessageID><!--消息创建时间--><CreationTime>20210309</CreationTime><!--发送者--><SenderID>HIS</SenderID><!--接收者--><ReceiverID>BKIP</ReceiverID><!--是否需要回执--><IfReceipt>Y</IfReceipt></Head><Body><!--住院号--><InPatientNO>"_inPatientNo_"</InPatientNO><!--就诊次数--><VisitNum>1</VisitNum><!--就诊流水号--><VisitSerialNum>123</VisitSerialNum><!--就诊类别代码--><VisitTypeCode>2</VisitTypeCode><!--患者就诊类别描述--><VisitTypeName>患者就诊类别描述</VisitTypeName><!--入院日期--><AdmissionDate>20210310</AdmissionDate><!--就诊原因描述--><VisitReasonName>就诊原因描述</VisitReasonName><!--医疗保险类别代码--><MedicalInsureTypeCode>1</MedicalInsureTypeCode><!--医疗保险类别描述--><MedicalInsureTypeName>医疗保险类别描述</MedicalInsureTypeName><!--住院次数--><InPatientTimes>1</InPatientTimes><!--PatientID--><PatientID>"_patientId_"</PatientID><!--患者身份证号--><IDCardNO>"_idCardNo_"</IDCardNO><!--患者姓名--><PatientName>"_patientName_"</PatientName><!--医生的职工号--><DoctorEmployID>2356</DoctorEmployID><!--责任医生姓名--><DutyDoctorName>李四</DutyDoctorName><!--科室标识--><DeptID>11</DeptID><!--科室名称--><DeptName>内科</DeptName><!--病区号标识--><WardID>213</WardID><!--病区名称--><WardName>重病区</WardName><!--病房号标识--><WardHouseCode>1</WardHouseCode><!--病房名称--><WardHouseName>病房名称</WardHouseName><!--病床号标识--><WardBedCode>102</WardBedCode><!--病床名称--><WardBedName>病床名称</WardBedName><!--服务机构代码--><ServiceOrgID>111</ServiceOrgID><!--西医诊断根节点 --><WesternDias><WesternDia><!--诊断代码--><WesternIllnessDiaCode>3</WesternIllnessDiaCode><!--诊断名称--><WesternIllnessDiaName>诊断名称</WesternIllnessDiaName><!--诊断人工号--><WesternDiaLaborNO>321</WesternDiaLaborNO></WesternDia></WesternDias><!--中医诊断根节点 --><TCMDias><TCMDia><!--诊断代码--><TCMIllnessDiaCode>3</TCMIllnessDiaCode><!--诊断名称--><TCMIllnessDiaName>诊断名称</TCMIllnessDiaName><!--诊断人工号--><TCMDiaLaborNO>321</TCMDiaLaborNO></TCMDia></TCMDias></Body></Request>"
    /// 住院转科新增
    s transfer = "<Request><Head><!--消息ID--><MessageID>123</MessageID><!--创建时间--><CreationTime>20211213143012</CreationTime><!--发送者--><SenderID>HIS</SenderID><!--接收者--><ReceiverID>BKIP</ReceiverID><!--是否需要回执--><IfReceipt>Y</IfReceipt></Head><Body><!--住院号--><InPatientNO>"_inPatientNo_"</InPatientNO><!--就诊次数--><VisitNum>2</VisitNum><!--就诊流水号--><VisitSerialNum>2</VisitSerialNum><!--PatientID--><PatientID>"_patientId_"</PatientID><!--转入日期时间--><TransferIntoDate>20211113143049</TransferIntoDate><!--转入科室标识--><TransferIntoDeptID>4</TransferIntoDeptID><!--转入科室名称--><TransferIntoDeptName>转入科室名称</TransferIntoDeptName><!--转入病区标识--><TransferIntoWardID>1</TransferIntoWardID><!--转入病区描述--><TransferIntoWardName>转入病区描述</TransferIntoWardName><!--转入病房标识--><TransferIntoWardHouseID>2</TransferIntoWardHouseID><!--转入病房描述--><TransferIntoWardHouseName>转入病房描述</TransferIntoWardHouseName><!--转入病床标识--><TransferIntoWardBedID>3</TransferIntoWardBedID><!--转入病床描述--><TransferIntoWardBedName>转入病床描述</TransferIntoWardBedName><!--转出日期时间--><TransferOutDate>20211213143105</TransferOutDate><!--转出科室标识--><TransferOutDeptID>123</TransferOutDeptID><!--转出科室名称--><TransferOutDeptName>转出科室名称</TransferOutDeptName><!--转出病区标识--><TransferOutWardID>1</TransferOutWardID><!--转出病区描述--><TransferOutWardName>转出病区描述</TransferOutWardName><!--转出病房标识--><TransferOutWardHouseID>1</TransferOutWardHouseID><!--转出病房描述--><TransferOutWardHouseName>转出病房描述</TransferOutWardHouseName><!--转出病床标识--><TransferOutWardBedID>2</TransferOutWardBedID><!--转出病床描述--><TransferOutWardBedName>转出病床描述</TransferOutWardBedName></Body></Request>"
    /// 出院登记新增
    s discharge = "<Request><Head><!--消息ID--><MessageID>123</MessageID><!--消息创建时间--><CreationTime>20210309</CreationTime><!--发送者--><SenderID>HIS</SenderID><!--接收者--><ReceiverID>BKIP</ReceiverID><!--是否需要回执--><IfReceipt>Y</IfReceipt></Head><Body><!--住院号--><InPatientNO>"_inPatientNo_"</InPatientNO><!--就诊次数--><VisitNum>1</VisitNum><!--就诊流水号--><VisitSerialNum>236</VisitSerialNum><!--就诊类别代码--><VisitTypeCode>2</VisitTypeCode><!--就诊类别描述--><VisitTypeName>就诊类别描述</VisitTypeName><!--出院日期时间--><DischargeDateTime>20210311</DischargeDateTime><!--住院天数--><InHospitalDays>5</InHospitalDays><!--PatientID--><PatientID>"_patientId_"</PatientID><!--患者身份证号--><IDCardNO>"_idCardNo_"</IDCardNO><!--患者姓名--><PatientName>"_patientName_"</PatientName><!--登记人职工号--><RegistrantID>45</RegistrantID><!--登记人姓名--><RegistrantName>李四</RegistrantName><!--西医诊断根节点--><WesternDias><WesternDia><!--西医诊断代码--><WesternIllnessDiaCode>1</WesternIllnessDiaCode><!--西医诊断名称--><WesternIllnessDiaName>西医诊断名称</WesternIllnessDiaName><!--西医诊断人工号--><WesternDiaLaborNO>2</WesternDiaLaborNO></WesternDia></WesternDias><!--中医诊断根节点--><TCMDias><TCMDia><!--中医诊断代码--><TCMIllnessDiaCode>3</TCMIllnessDiaCode><!--中医诊断名称--><TCMIllnessDiaName>中医诊断名称</TCMIllnessDiaName><!--中医诊断人工号--><TCMDiaLaborNO>1</TCMDiaLaborNO></TCMDia></TCMDias><!--科室标识--><DeptID>1</DeptID><!--科室描述--><DeptName>科室描述</DeptName><!--病区号标识--><WardID>1</WardID><!--病区名称--><WardName>病区名称</WardName></Body></Request>"

    s datalist = []
    set dataList = $listbuild(visitCard, outPatient, inPatient, transfer,discharge)
    s bsList = $listbuild("VisitInfo.Encounter.BS.EncounterCardBS"
    ,"VisitInfo.OutPatientInfo.BS.OutPatientInfoBS"
    ,"VisitInfo.InPatientInfo.BS.InPatientInfoBS"
    ,"VisitInfo.TransferInfo.BS.TransferInfoBS"
    ,"VisitInfo.DischargeInfo.BS.DischargeInfoBS")

    For i = 1:1:$listlength(bsList) {
        w "BS name: "_$list(bsList, i),!
        w "data: "_$list(dataList,i),!
        s tSC = ..CallInterface("application/xml",$list(bsList, i),$list(dataList,i),.resp)
        w resp,!
        if resp = "-1000"{
            QUIT
        }
        w resp,!
    }
  
    Return sc
}

/// MethodName: CallInterface <br>
/// Summary:    调用production 的 BS 中的方法 <br>
/// Parameter: { String }  <br>
/// Return:    { String } <br>
/// Date:     2023年01月17日 14:27:17  <br>
/// Author:    王喆 <br>
ClassMethod CallInterface(ContentType As %String, Action As %String, pInput As %String, Output pOutput As %String) As %Status
{
    #dim tSC As %Status = $$$OK
    Try {
        #; BS的名字
        s BSName = Action
        /// 设置返回http header: ContentType
        #; Do %response.SetHeader("ContentType", ContentType)
        /// 创建与BS链接的实例 
        Set SC=##class(Ens.Director).CreateBusinessService(BSName,.tService)
        /// 调用BS实例中的方法，传入消息，返回消息
        Set pOutput = tService.send(pInput)
    }
    Catch ex {
        w ex.DisplayString()
        Set pOutput = "-1000"   
    }
	Quit $$$OK
}

}

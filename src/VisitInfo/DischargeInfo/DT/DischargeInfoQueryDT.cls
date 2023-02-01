Class VisitInfo.DischargeInfo.DT.DischargeInfoQueryDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.DischargeInfo.MSG.DischargeInfoQuery ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.DischargeInfo.MSG.DischargeInfoQuery' targetClass='VisitInfo.DischargeInfo.MSG.DischargeInfoQuery' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.QueryID' property='target.Body.QueryID' action='set' />
<assign value='source.Body.InPatientNO' property='target.Body.InPatientNO' action='set' />
<assign value='source.Body.VisitNum' property='target.Body.VisitNum' action='set' />
<assign value='source.Body.VisitSerialNum' property='target.Body.VisitSerialNum' action='set' />
<assign value='source.Body.OutHospitalOperatorID' property='target.Body.OutHospitalOperatorID' action='set' />
<assign value='source.Body.OutHospitalUpDate' property='target.Body.OutHospitalUpDate' action='set' />
<assign value='source.Body.OutHospitalLowDate' property='target.Body.OutHospitalLowDate' action='set' />
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.OutHospitalDeptID' property='target.Body.OutHospitalDeptID' action='set' />
<assign value='source.Body.OutHospitalWardID' property='target.Body.OutHospitalWardID' action='set' />
<assign value='source.Body.MedicalOrgID' property='target.Body.MedicalOrgID' action='set' />
<if condition='..Exists("就诊类别代码",source.Body.VisitTypeCode)' >
<true>
<assign value='source.Body.VisitTypeCode' property='target.Body.VisitTypeCode' action='set' />
<assign value='..Lookup("就诊类别代码",source.Body.VisitTypeCode)' property='target.Body.VisitTypeName' action='set' />
</true>
<false>
<assign value='"D99"' property='target.Body.VisitTypeCode' action='set' />
<assign value='"其它科室"' property='target.Body.VisitTypeName' action='set' />
</false>
</if>
</transform>
}

}

Class VisitInfo.OutPatientInfo.DT.OutPatientInfoUpdateDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate' targetClass='VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.OutPatientNO' property='target.Body.OutPatientNO' action='set' />
<assign value='source.Body.StatusCode' property='target.Body.StatusCode' action='set' />
<assign value='source.Body.VisitNum' property='target.Body.VisitNum' action='set' />
<assign value='source.Body.VisitSerialNum' property='target.Body.VisitSerialNum' action='set' />
<assign value='source.Body.VisitTypeCode' property='target.Body.VisitTypeCode' action='set' />
<assign value='source.Body.VisitTypeName' property='target.Body.VisitTypeName' action='set' />
<assign value='source.Body.VisitDateTime' property='target.Body.VisitDateTime' action='set' />
<assign value='source.Body.VisitReasonName' property='target.Body.VisitReasonName' action='set' />
<if condition='..Exists("医疗保险类别代码",source.Body.MedicalInsureTypeCode)' >
<true>
<assign value='source.Body.MedicalInsureTypeCode' property='target.Body.MedicalInsureTypeCode' action='set' />
<assign value='..Lookup("医疗保险类别代码",source.Body.MedicalInsureTypeCode)' property='target.Body.MedicalInsureTypeName' action='set' />
</true>
<false>
<assign value='"99"' property='target.Body.MedicalInsureTypeCode' action='set' />
<assign value='"其他"' property='target.Body.MedicalInsureTypeName' action='set' />
</false>
</if>
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.PatientName' property='target.Body.PatientName' action='set' />
<assign value='source.Body.DutyDoctorID' property='target.Body.DutyDoctorID' action='set' />
<assign value='source.Body.DutyDoctorName' property='target.Body.DutyDoctorName' action='set' />
<if condition='..Exists("科室代码",source.Body.DeptID)' >
<true>
<assign value='source.Body.DeptID' property='target.Body.DeptID' action='set' />
<assign value='..Lookup("科室代码",source.Body.DeptID)' property='target.Body.DeptName' action='set' />
</true>
<false>
<assign value='"D99"' property='target.Body.DeptID' action='set' />
<assign value='"其他科室"' property='target.Body.DeptName' action='set' />
</false>
</if>
<assign value='source.Body.ServiceOrgID' property='target.Body.ServiceOrgID' action='set' />
</transform>
}

}

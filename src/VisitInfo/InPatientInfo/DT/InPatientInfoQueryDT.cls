Class VisitInfo.InPatientInfo.DT.InPatientInfoQueryDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.InPatientInfo.MSG.InPatientInfoQuery ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.InPatientInfo.MSG.InPatientInfoQuery' targetClass='VisitInfo.InPatientInfo.MSG.InPatientInfoQuery' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.QueryID' property='target.Body.QueryID' action='set' />
<assign value='source.Body.InPatientNO' property='target.Body.InPatientNO' action='set' />
<assign value='source.Body.VisitNum' property='target.Body.VisitNum' action='set' />
<assign value='source.Body.VisitSerialNum' property='target.Body.VisitSerialNum' action='set' />
<assign value='source.Body.AdmissionUpDate' property='target.Body.AdmissionUpDate' action='set' />
<assign value='source.Body.AdmissionLowDate' property='target.Body.AdmissionLowDate' action='set' />
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.DeptID' property='target.Body.DeptID' action='set' />
<assign value='source.Body.WardID' property='target.Body.WardID' action='set' />
<assign value='source.Body.MedicalOrgCode' property='target.Body.MedicalOrgCode' action='set' />
<if condition='..Exists("就诊类别代码",source.Body.VisitTypeCode)' >
<true>
<assign value='source.Body.VisitTypeCode' property='target.Body.VisitTypeCode' action='set' />
<assign value='..Lookup("就诊类别代码",source.Body.VisitTypeCode)' property='target.Body.VisitTypeName' action='set' />
</true>
</if>
</transform>
}

}

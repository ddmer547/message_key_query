Class VisitInfo.OutPatientInfo.DT.OutPatientInfoQueryDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery' targetClass='VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.QueryID' property='target.Body.QueryID' action='set' />
<assign value='source.Body.VisitNO' property='target.Body.VisitNO' action='set' />
<assign value='source.Body.VisitNum' property='target.Body.VisitNum' action='set' />
<assign value='source.Body.VisitSerialNum' property='target.Body.VisitSerialNum' action='set' />
<assign value='source.Body.OutPatientNO' property='target.Body.OutPatientNO' action='set' />
<assign value='source.Body.VisitUpDateTime' property='target.Body.VisitUpDateTime' action='set' />
<assign value='source.Body.VisitLowDateTime' property='target.Body.VisitLowDateTime' action='set' />
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.DeptID' property='target.Body.DeptID' action='set' />
<assign value='source.Body.MedicalOrgID' property='target.Body.MedicalOrgID' action='set' />
<assign value='source.Body.VisitTypeCode' property='target.Body.VisitTypeCode' action='set' />
<assign value='source.Body.VisitTypeName' property='target.Body.VisitTypeName' action='set' />
</transform>
}

}

Class VisitInfo.TransferInfo.DT.TransferInfoQueryDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.TransferInfo.MSG.TransferInfoQuery ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.TransferInfo.MSG.TransferInfoQuery' targetClass='VisitInfo.TransferInfo.MSG.TransferInfoQuery' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.QueryID' property='target.Body.QueryID' action='set' />
<assign value='source.Body.InPatientNO' property='target.Body.InPatientNO' action='set' />
<assign value='source.Body.VisitNum' property='target.Body.VisitNum' action='set' />
<assign value='source.Body.VisitSerialNum' property='target.Body.VisitSerialNum' action='set' />
<assign value='source.Body.TransferDeptUpDate' property='target.Body.TransferDeptUpDate' action='set' />
<assign value='source.Body.TransferDeptLowDate' property='target.Body.TransferDeptLowDate' action='set' />
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.MedicalOrgID' property='target.Body.MedicalOrgID' action='set' />
<if condition='..Exists("就诊类别代码",source.Body.VisitTypeCode)' >
<true>
<assign value='source.Body.VisitTypeCode' property='target.Body.VisitTypeCode' action='set' />
<assign value='..Lookup("就诊类别代码",source.Body.VisitTypeCode)' property='target.Body.VisitTypeName' action='set' />
</true>
<false>
<assign value='"9"' property='target.Body.VisitTypeCode' action='set' />
<assign value='"其它"' property='target.Body.VisitTypeName' action='set' />
</false>
</if>
</transform>
}

}

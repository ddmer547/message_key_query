Class VisitInfo.InPatientInfo.DT.InPatientInfoAddDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.InPatientInfo.MSG.InPatientInfoAdd ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.InPatientInfo.MSG.InPatientInfoAdd' targetClass='VisitInfo.InPatientInfo.MSG.InPatientInfoAdd' create='new' language='objectscript' >
<assign value='source.Head.MessageID' property='target.Head.MessageID' action='set' />
<assign value='source.Head.CreationTime' property='target.Head.CreationTime' action='set' />
<assign value='source.Head.SenderID' property='target.Head.SenderID' action='set' />
<assign value='source.Head.ReceiverID' property='target.Head.ReceiverID' action='set' />
<assign value='source.Head.IfReceipt' property='target.Head.IfReceipt' action='set' />
<foreach property='source.Body.WesternDias()' key='k1' >
<assign value='source.Body.WesternDias.(k1).WesternIllnessDiaCode' property='target.Body.WesternDias.(k1).WesternIllnessDiaCode' action='set' />
<assign value='source.Body.WesternDias.(k1).WesternIllnessDiaName' property='target.Body.WesternDias.(k1).WesternIllnessDiaName' action='set' />
<assign value='source.Body.WesternDias.(k1).WesternDiaLaborNO' property='target.Body.WesternDias.(k1).WesternDiaLaborNO' action='set' />
</foreach>
<foreach property='source.Body.TCMDias()' key='k2' >
<assign value='source.Body.TCMDias.(k2).TCMIllnessDiaCode' property='target.Body.TCMDias.(k2).TCMIllnessDiaCode' action='set' />
<assign value='source.Body.TCMDias.(k2).TCMIllnessDiaName' property='target.Body.TCMDias.(k2).TCMIllnessDiaName' action='set' />
<assign value='source.Body.TCMDias.(k2).TCMDiaLaborNO' property='target.Body.TCMDias.(k2).TCMDiaLaborNO' action='set' />
</foreach>
<assign value='source.Body.InPatientNO' property='target.Body.InPatientNO' action='set' />
<assign value='source.Body.VisitNum' property='target.Body.VisitNum' action='set' />
<assign value='source.Body.VisitSerialNum' property='target.Body.VisitSerialNum' action='set' />
<assign value='source.Body.AdmissionDate' property='target.Body.AdmissionDate' action='set' />
<if condition='..Exists("??????????????????",source.Body.VisitTypeCode)' >
<true>
<assign value='source.Body.VisitTypeCode' property='target.Body.VisitTypeCode' action='set' />
<assign value='..Lookup("??????????????????",source.Body.VisitTypeCode)' property='target.Body.VisitTypeName' action='set' />
</true>
<false>
<assign value='"9"' property='target.Body.VisitTypeCode' action='set' />
<assign value='"??????"' property='target.Body.VisitTypeName' action='set' />
</false>
</if>
<assign value='source.Body.VisitReasonName' property='target.Body.VisitReasonName' action='set' />
<if condition='..Exists("????????????????????????",source.Body.MedicalInsureTypeCode)' >
<true>
<assign value='source.Body.MedicalInsureTypeCode' property='target.Body.MedicalInsureTypeCode' action='set' />
<assign value='..Lookup("????????????????????????",source.Body.MedicalInsureTypeCode)' property='target.Body.MedicalInsureTypeName' action='set' />
</true>
<false>
<assign value='"99"' property='target.Body.MedicalInsureTypeCode' action='set' />
<assign value='"??????"' property='target.Body.MedicalInsureTypeName' action='set' />
</false>
</if>
<assign value='source.Body.InPatientTimes' property='target.Body.InPatientTimes' action='set' />
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.PatientName' property='target.Body.PatientName' action='set' />
<assign value='source.Body.DoctorEmployID' property='target.Body.DoctorEmployID' action='set' />
<assign value='source.Body.DutyDoctorName' property='target.Body.DutyDoctorName' action='set' />
<if condition='..Exists("????????????",source.Body.DeptID)' >
<true>
<assign value='source.Body.DeptID' property='target.Body.DeptID' action='set' />
<assign value='..Lookup("????????????",source.Body.DeptID)' property='target.Body.DeptName' action='set' />
</true>
<false>
<assign value='"D99"' property='target.Body.DeptID' action='set' />
<assign value='"????????????"' property='target.Body.DeptName' action='set' />
</false>
</if>
<assign value='source.Body.WardID' property='target.Body.WardID' action='set' />
<assign value='source.Body.WardName' property='target.Body.WardName' action='set' />
<assign value='source.Body.WardHouseCode' property='target.Body.WardHouseCode' action='set' />
<assign value='source.Body.WardHouseName' property='target.Body.WardHouseName' action='set' />
<assign value='source.Body.WardBedCode' property='target.Body.WardBedCode' action='set' />
<assign value='source.Body.WardBedName' property='target.Body.WardBedName' action='set' />
<assign value='source.Body.ServiceOrgID' property='target.Body.ServiceOrgID' action='set' />
</transform>
}

}

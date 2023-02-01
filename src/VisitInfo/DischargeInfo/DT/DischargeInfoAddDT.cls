Class VisitInfo.DischargeInfo.DT.DischargeInfoAddDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.DischargeInfo.MSG.DischargeInfoAdd ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.DischargeInfo.MSG.DischargeInfoAdd' targetClass='VisitInfo.DischargeInfo.MSG.DischargeInfoAdd' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
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
<assign value='source.Body.DischargeDateTime' property='target.Body.DischargeDateTime' action='set' />
<assign value='source.Body.InHospitalDays' property='target.Body.InHospitalDays' action='set' />
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.PatientName' property='target.Body.PatientName' action='set' />
<assign value='source.Body.RegistrantID' property='target.Body.RegistrantID' action='set' />
<assign value='source.Body.RegistrantName' property='target.Body.RegistrantName' action='set' />
<if condition='..Exists("科室代码",##class(Util.FormattingDate).FormattingDate(source.Body.DeptID))' >
<true>
<assign value='source.Body.DeptID' property='target.Body.DeptID' action='set' />
<assign value='..Lookup("科室代码",source.Body.DeptID)' property='target.Body.DeptName' action='set' />
</true>
<false>
<assign value='"D99"' property='target.Body.DeptID' action='set' />
<assign value='"其它科室"' property='target.Body.DeptName' action='set' />
</false>
</if>
<assign value='source.Body.WardID' property='target.Body.WardID' action='set' />
<assign value='source.Body.WardName' property='target.Body.WardName' action='set' />
</transform>
}

}

Class VisitInfo.Encounter.DT.EncounterAddDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.Encounter.MSG.EncounterCardInfoAdd ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.Encounter.MSG.EncounterCardInfoAdd' targetClass='VisitInfo.Encounter.MSG.EncounterCardInfoAdd' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.VisitCardNO' property='target.Body.VisitCardNO' action='set' />
<assign value='source.Body.VisitCardStatus' property='target.Body.VisitCardStatus' action='set' />
<assign value='source.Body.CardCreationDateTime' property='target.Body.CardCreationDateTime' action='set' />
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.PatientName' property='target.Body.PatientName' action='set' />
<assign value='source.Body.PatientPhone' property='target.Body.PatientPhone' action='set' />
<if condition='..Exists("性别代码",source.Body.SexCode)' >
<true>
<assign value='source.Body.SexCode' property='target.Body.SexCode' action='set' />
<assign value='..Lookup("性别代码",source.Body.SexCode)' property='target.Body.SexName' action='set' />
</true>
<false>
<assign value='"9"' property='target.Body.SexCode' action='set' />
<assign value='"未说明性别"' property='target.Body.SexName' action='set' />
</false>
</if>
<assign value='source.Body.BirthDay' property='target.Body.BirthDay' action='set' />
<assign value='source.Body.Address' property='target.Body.Address' action='set' />
<assign value='source.Body.State' property='target.Body.State' action='set' />
<assign value='source.Body.City' property='target.Body.City' action='set' />
<assign value='source.Body.County' property='target.Body.County' action='set' />
<assign value='source.Body.TownShip' property='target.Body.TownShip' action='set' />
<assign value='source.Body.Village' property='target.Body.Village' action='set' />
<assign value='source.Body.HouseNO' property='target.Body.HouseNO' action='set' />
<assign value='source.Body.PostCode' property='target.Body.PostCode' action='set' />
<if condition='..Exists("婚姻状态代码",source.Body.MarriageCode)' >
<true>
<assign value='source.Body.MarriageCode' property='target.Body.MarriageCode' action='set' />
<assign value='..Lookup("婚姻状态代码",source.Body.MarriageCode)' property='target.Body.MarriageName' action='set' />
</true>
<false>
<assign value='"90"' property='target.Body.MarriageCode' action='set' />
<assign value='"未说明的婚姻状况"' property='target.Body.MarriageName' action='set' />
</false>
</if>
<if condition='..Exists("民族代码",source.Body.NationCode)' >
<true>
<assign value='source.Body.NationCode' property='target.Body.NationCode' action='set' />
<assign value='..Lookup("民族代码",source.Body.NationCode)' property='target.Body.NationName' action='set' />
</true>
<false>
<assign value='"99"' property='target.Body.NationCode' action='set' />
<assign value='"其它民族或外国人"' property='target.Body.NationName' action='set' />
</false>
</if>
<assign value='source.Body.JobName' property='target.Body.JobName' action='set' />
<if condition='..Exists("从业状况（个人身份）代码表",source.Body.OccupationTypeCode)' >
<true>
<assign value='source.Body.OccupationTypeCode' property='target.Body.OccupationTypeCode' action='set' />
<assign value='..Lookup("从业状况（个人身份）代码表",source.Body.OccupationTypeCode)' property='target.Body.OccupationTypeName' action='set' />
</true>
<false>
<assign value='"90"' property='target.Body.OccupationTypeCode' action='set' />
</false>
</if>
<assign value='source.Body.JobPhone' property='target.Body.JobPhone' action='set' />
<if condition='..Exists("家庭关系代码表",source.Body.ContactRelationCode)' >
<true>
<assign value='source.Body.ContactRelationCode' property='target.Body.ContactRelationCode' action='set' />
<assign value='..Lookup("家庭关系代码表",source.Body.ContactRelationCode)' property='target.Body.ContactRelationName' action='set' />
</true>
<false>
<assign value='"99"' property='target.Body.ContactRelationCode' action='set' />
<assign value='"非亲属"' property='target.Body.ContactRelationName' action='set' />
</false>
</if>
<assign value='source.Body.ContactName' property='target.Body.ContactName' action='set' />
<assign value='source.Body.ContactPhone' property='target.Body.ContactPhone' action='set' />
<assign value='source.Body.MedicalOrgCode' property='target.Body.MedicalOrgCode' action='set' />
<assign value='source.Body.MedicalOrgName' property='target.Body.MedicalOrgName' action='set' />
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
<assign value='source.Body.CardCreatorID' property='target.Body.CardCreatorID' action='set' />
<assign value='source.Body.CardCreatorName' property='target.Body.CardCreatorName' action='set' />

</transform>
}

}

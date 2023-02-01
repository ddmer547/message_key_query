Class VisitInfo.Encounter.DT.EncounterQueryDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.Encounter.MSG.EncounterCardInfoQuery ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.Encounter.MSG.EncounterCardInfoQuery' targetClass='VisitInfo.Encounter.MSG.EncounterCardInfoQuery' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.QueryID' property='target.Body.QueryID' action='set' />
<assign value='source.Body.VisitCardNO' property='target.Body.VisitCardNO' action='set' />
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
<assign value='source.Body.IDCardNO' property='target.Body.IDCardNO' action='set' />
<assign value='source.Body.PatientName' property='target.Body.PatientName' action='set' />
</transform>
}

}

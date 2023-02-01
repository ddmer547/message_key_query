Class VisitInfo.TransferInfo.DT.TransferInfoAddDT Extends Ens.DataTransformDTL [ DependsOn = VisitInfo.TransferInfo.MSG.TransferInfoAdd ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='VisitInfo.TransferInfo.MSG.TransferInfoAdd' targetClass='VisitInfo.TransferInfo.MSG.TransferInfoAdd' create='new' language='objectscript' >
<assign value='source.Head' property='target.Head' action='set' />
<assign value='source.Body.InPatientNO' property='target.Body.InPatientNO' action='set' />
<assign value='source.Body.VisitNum' property='target.Body.VisitNum' action='set' />
<assign value='source.Body.VisitSerialNum' property='target.Body.VisitSerialNum' action='set' />
<assign value='source.Body.PatientID' property='target.Body.PatientID' action='set' />
<assign value='source.Body.TransferIntoDate' property='target.Body.TransferIntoDate' action='set' />
<if condition='..Exists("科室代码",source.Body.TransferIntoDeptID)' >
<true>
<assign value='source.Body.TransferIntoDeptID' property='target.Body.TransferIntoDeptID' action='set' />
<assign value='..Lookup("科室代码",source.Body.TransferIntoDeptID)' property='target.Body.TransferIntoDeptName' action='set' />
</true>
<false>
<assign value='"D99"' property='target.Body.TransferIntoDeptID' action='set' />
<assign value='"其它科室"' property='target.Body.TransferIntoDeptName' action='set' />
</false>
</if>
<assign value='source.Body.TransferIntoWardID' property='target.Body.TransferIntoWardID' action='set' />
<assign value='source.Body.TransferIntoWardName' property='target.Body.TransferIntoWardName' action='set' />
<assign value='source.Body.TransferIntoWardHouseID' property='target.Body.TransferIntoWardHouseID' action='set' />
<assign value='source.Body.TransferIntoWardHouseName' property='target.Body.TransferIntoWardHouseName' action='set' />
<assign value='source.Body.TransferIntoWardBedID' property='target.Body.TransferIntoWardBedID' action='set' />
<assign value='source.Body.TransferIntoWardBedName' property='target.Body.TransferIntoWardBedName' action='set' />
<assign value='source.Body.TransferOutDate' property='target.Body.TransferOutDate' action='set' />
<if condition='..Exists("科室代码",source.Body.TransferOutDeptID)' >
<true>
<assign value='source.Body.TransferOutDeptID' property='target.Body.TransferOutDeptID' action='set' />
<assign value='..Lookup("科室代码",source.Body.TransferOutDeptID)' property='target.Body.TransferOutDeptName' action='set' />
</true>
<false>
<assign value='"D99"' property='target.Body.TransferOutDeptID' action='set' />
<assign value='"其它科室"' property='target.Body.TransferOutDeptName' action='set' />
</false>
</if>
<assign value='source.Body.TransferOutWardID' property='target.Body.TransferOutWardID' action='set' />
<assign value='source.Body.TransferOutWardName' property='target.Body.TransferOutWardName' action='set' />
<assign value='source.Body.TransferOutWardHouseID' property='target.Body.TransferOutWardHouseID' action='set' />
<assign value='source.Body.TransferOutWardHouseName' property='target.Body.TransferOutWardHouseName' action='set' />
<assign value='source.Body.TransferOutWardBedID' property='target.Body.TransferOutWardBedID' action='set' />
<assign value='source.Body.TransferOutWardBedName' property='target.Body.TransferOutWardBedName' action='set' />
</transform>
}

}

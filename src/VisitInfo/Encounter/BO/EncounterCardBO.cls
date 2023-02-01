Class VisitInfo.Encounter.BO.EncounterCardBO Extends VisitInfo.common.BaseBO
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Property Adapter As EnsLib.SOAP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method EncounterCardInfoAdd(pRequest As VisitInfo.Encounter.MSG.EncounterCardInfoAdd, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	Set tSC = ..processHandle(pRequest,.pResponse,"Response","就诊卡信息新增服务")
	Quit $$$OK
}

Method EncounterCardInfoUpdate(pRequest As VisitInfo.Encounter.MSG.EncounterCardInfoUpdate, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	Set tSC = ..processHandle(pRequest,.pResponse,"Response","就诊卡信息更新服务")
	Quit $$$OK
}

Method EncounterCardInfoQuery(pRequest As VisitInfo.Encounter.MSG.EncounterCardInfoQuery, Output pResponse As %RegisteredObject) As %Status
{
	Set tSC  =..SynccessHandle(pRequest, .pResponse , "Response","VisitInfo.Encounter.MSG.QuerySuccess","就诊卡信息查询服务")
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="VisitInfo.Encounter.MSG.EncounterCardInfoAdd"> 
		<Method>EncounterCardInfoAdd</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.Encounter.MSG.EncounterCardInfoUpdate"> 
		<Method>EncounterCardInfoUpdate</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.Encounter.MSG.EncounterCardInfoQuery"> 
		<Method>EncounterCardInfoQuery</Method>
	</MapItem>
</MapItems>
}

}

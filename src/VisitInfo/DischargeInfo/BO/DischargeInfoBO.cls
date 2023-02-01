Class VisitInfo.DischargeInfo.BO.DischargeInfoBO Extends VisitInfo.common.BaseBO
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Property Adapter As EnsLib.SOAP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method DischargeInfoAdd(pRequest As VisitInfo.DischargeInfo.MSG.DischargeInfoAdd, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	Set tSC = ..processHandle(pRequest,.pResponse,"Response","出院登记信息新增服务")
	Quit $$$OK
}

Method DischargeInfoUpdate(pRequest As VisitInfo.DischargeInfo.MSG.DischargeInfoUpdate, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	Set tSC = ..processHandle(pRequest,.pResponse,"Response","出院登记信息更新服务")
	Quit $$$OK
}

Method DischargeInfoQuery(pRequest As VisitInfo.DischargeInfo.MSG.DischargeInfoQuery, Output pResponse As %RegisteredObject) As %Status
{
	Set tSC = ..SynccessHandle(pRequest,.pResponse,"Response","VisitInfo.DischargeInfo.MSG.QuerySuccess","出院信息登记信息查询")
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="VisitInfo.DischargeInfo.MSG.DischargeInfoAdd"> 
		<Method>DischargeInfoAdd</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.DischargeInfo.MSG.DischargeInfoUpdate"> 
		<Method>DischargeInfoUpdate</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.DischargeInfo.MSG.DischargeInfoQuery"> 
		<Method>DischargeInfoQuery</Method>
	</MapItem>
</MapItems>
}

}

Class VisitInfo.TransferInfo.BO.TransferInfoBO Extends VisitInfo.common.BaseBO
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Property Adapter As EnsLib.SOAP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method TransferInfoAdd(pRequest As VisitInfo.TransferInfo.MSG.TransferInfoAdd, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	s tSC = ..processHandle(pRequest,.pResponse,"Response","住院转科信息新增服务")
	Quit $$$OK
}

Method TransferInfoUpdate(pRequest As VisitInfo.TransferInfo.MSG.TransferInfoUpdate, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	S tSC = ..processHandle(pRequest,.pResponse,"Response","住院转科信息更新服务")
	Quit $$$OK
}

Method TransferInfoQuery(pRequest As VisitInfo.TransferInfo.MSG.TransferInfoQuery, Output pResponse As %RegisteredObject) As %Status
{
	s tSC = ..SynccessHandle(pRequest,.pResponse,"Response","VisitInfo.TransferInfo.MSG.QuerySuccess","住院转科信息查询服务")
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="VisitInfo.TransferInfo.MSG.TransferInfoAdd"> 
		<Method>TransferInfoAdd</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.TransferInfo.MSG.TransferInfoUpdate">
		<Method>TransferInfoUpdate</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.TransferInfo.MSG.TransferInfoQuery">
		<Method>TransferInfoQuery</Method>
	</MapItem>
</MapItems>
}

}

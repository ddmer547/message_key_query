Class VisitInfo.InPatientInfo.BO.InPatientInfoBO Extends VisitInfo.common.BaseBO
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Property Adapter As EnsLib.SOAP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method InPatientInfoAdd(pRequest As VisitInfo.InPatientInfo.MSG.InPatientInfoAdd, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	s tSC = ..processHandle(pRequest,.pResponse,"Response","住院就诊信息新增服务")
	Quit $$$OK
}

Method InPatientInfoUpdate(pRequest As VisitInfo.InPatientInfo.MSG.InPatientInfoUpdate, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	S tSC = ..processHandle(pRequest,.pResponse,"Response","住院就诊信息更新服务")
	Quit $$$OK
}

Method InPatientInfoQuery(pRequest As VisitInfo.InPatientInfo.MSG.InPatientInfoQuery, Output pResponse As %RegisteredObject) As %Status
{
	S tSC = ..SynccessHandle(pRequest,pResponse,"Response","VisitInfo.InPatientInfo.MSG.QuerySuccess","住院就诊信息查询服务")
	Quit tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="VisitInfo.InPatientInfo.MSG.InPatientInfoAdd"> 
		<Method>InPatientInfoAdd</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.InPatientInfo.MSG.InPatientInfoUpdate">
		<Method>InPatientInfoUpdate</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.InPatientInfo.MSG.InPatientInfoQuery">
		<Method>InPatientInfoQuery</Method>
	</MapItem>
</MapItems>
}

}

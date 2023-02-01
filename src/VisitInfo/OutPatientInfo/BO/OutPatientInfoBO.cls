Class VisitInfo.OutPatientInfo.BO.OutPatientInfoBO Extends VisitInfo.common.BaseBO
{

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

Property Adapter As EnsLib.SOAP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method OutPatientInfoAdd(pRequest As VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	s tSC = ..processHandle(pRequest,.pResponse,"Response","门诊挂号信息新增服务")
	Quit $$$OK
}

Method OutPatientInfoUpdate(pRequest As VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate, Output pResponse As VisitInfo.Util.MSG.Response) As %Status
{
	s tSC = ..processHandle(pRequest,.pResponse,"Response","门诊挂号信息更新服务")
	Quit $$$OK
}

Method OutPatientInfoQuery(pRequest As VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery, Output pResponse As %RegisteredObject) As %Status
{
	s tSC = ..SynccessHandle(pRequest,.pResponse,"Response","VisitInfo.OutPatientInfo.MSG.QuerySuccess","门诊挂号信息查询服务")
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd"> 
		<Method>OutPatientInfoAdd</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate"> 
		<Method>OutPatientInfoUpdate</Method>
	</MapItem>
	<MapItem MessageType="VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery"> 
		<Method>OutPatientInfoQuery</Method>
	</MapItem>
</MapItems>
}

}

Class VisitInfo.TransferInfo.BS.TransferInfoBS Extends VisitInfo.common.BaseBS
{

Parameter ADAPTER;

/// Name of the WebService
Parameter SERVICENAME = "TransferInfoBS";

/// TODO: Change this to actual network address
/// URL for invoking the WebService
/// Parameter LOCATION = "http://127.0.0.1:8972/csp/ensemble";
/// TODO: Change this to actual SOAP namespace
/// SOAP namespace for the WebService
Parameter NAMESPACE = "http://bkgtsoft.com";

/// MethodName：TransferInfoAdd<br>
/// Summary:    住院转科信息新增服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月18日 10:12 <br>
/// Author：    HYH<br>
Method TransferInfoAdd(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.TransferInfo.MSG.TransferInfoAdd")
	Quit retrunstr
}

/// MethodName：TransferInfoUpdate<br>
/// Summary:    住院转科信息更新服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月18日 10:34 <br>
/// Author：    HYH<br>
Method TransferInfoUpdate(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.TransferInfo.MSG.TransferInfoUpdate")
	Quit retrunstr
}

/// MethodName：TransferInfoQuery<br>
/// Summary:    住院转科信息查询服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月18日 10:49 <br>
/// Author：    HYH<br>
Method TransferInfoQuery(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..SyncHandle(pInput,"Request","VisitInfo.TransferInfo.MSG.TransferInfoQuery")
	Quit retrunstr
}

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
	If pHint="Async"{
		Set tSC=..SendRequestAsync("住院转科信息服务",pInput,.pOutput)
	}elseif pHint="Sync"{
		Set tSC=..SendRequestSync("住院转科信息服务",pInput,.pOutput)
	}	
	Quit tSC
}

}

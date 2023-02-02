Class VisitInfo.OutPatientInfo.BS.OutPatientInfoBS Extends VisitInfo.common.BaseBS
{

Parameter ADAPTER;

/// Name of the WebService
Parameter SERVICENAME = "OutPatientInfoBS";

/// TODO: Change this to actual network address
/// URL for invoking the WebService
/// Parameter LOCATION = "http://127.0.0.1:8972/csp/ensemble";
/// TODO: Change this to actual SOAP namespace
/// SOAP namespace for the WebService
Parameter NAMESPACE = "http://bkgtsoft.com";

/// MethodName：OutPatientInfoAdd<br>
/// Summary:    门诊挂号信息新增服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 14:18 <br>
/// Author：    HYH<br>
Method OutPatientInfoAdd(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd")
	Quit retrunstr
}

Method send(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd")
	Quit retrunstr
}

/// MethodName：DocumentRegister<br>
/// Summary:    门诊挂号信息更新服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 14:39 <br>
/// Author：    HYH<br>
Method OutPatientInfoUpdate(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate")
	Quit retrunstr
}

/// MethodName：OutPatientInfoQuery<br>
/// Summary:    门诊挂号信息查询服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 15:09 <br>
/// Author：    HYH<br>
Method OutPatientInfoQuery(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..SyncHandle(pInput,"Request","VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery")
	Quit retrunstr
}

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
	If pHint="Async"{
		Set tSC=..SendRequestAsync("门诊挂号信息服务",pInput,.pOutput)
	}elseif pHint="Sync"{
		Set tSC=..SendRequestSync("门诊挂号信息服务",pInput,.pOutput)
	}
	Quit tSC
}

}

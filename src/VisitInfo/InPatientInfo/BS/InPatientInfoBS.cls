Class VisitInfo.InPatientInfo.BS.InPatientInfoBS Extends VisitInfo.common.BaseBS
{

Parameter ADAPTER;

Parameter SERVICENAME = "InPatientInfoBS";

Parameter NAMESPACE = "http://bkgtsoft.com";

/// MethodName：InPatientInfoAdd<br>
/// Summary:    住院就诊信息登记服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 15:45 <br>
/// Author：    HYH<br>
Method InPatientInfoAdd(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.InPatientInfo.MSG.InPatientInfoAdd")
	Quit retrunstr
}

Method send(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.InPatientInfo.MSG.InPatientInfoAdd")
	Quit retrunstr
}

/// MethodName：InpatientInfoUpdate<br>
/// Summary:    住院就诊信息更新服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 16:45 <br>
/// Author：    HYH<br>
Method InpatientInfoUpdate(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.InPatientInfo.MSG.InPatientInfoUpdate")
	Quit retrunstr
}

/// MethodName：InpatientInfoQuery<br>
/// Summary:    住院就诊信息查询服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 17:45 <br>
/// Author：    HYH<br>
/// 异步处理
Method InpatientInfoQuery(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..SyncHandle(pInput,"Request","VisitInfo.InPatientInfo.MSG.InPatientInfoQuery")
	Quit retrunstr
}

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
	If pHint="Async"{
		Set tSC=..SendRequestAsync("住院就诊信息服务",pInput,.pOutput)
	}elseif pHint="Sync"{
		Set tSC=..SendRequestSync("住院就诊信息服务",pInput,.pOutput)
	}
	
	Quit tSC
}

}

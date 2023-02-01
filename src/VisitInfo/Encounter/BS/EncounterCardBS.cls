Class VisitInfo.Encounter.BS.EncounterCardBS Extends VisitInfo.common.BaseBS
{

Parameter ADAPTER;

/// Name of the WebService
Parameter SERVICENAME = "EncounterCardBS";

/// TODO: Change this to actual network address
/// URL for invoking the WebService
/// Parameter LOCATION = "http://127.0.0.1:8972/csp/ensemble";
/// TODO: Change this to actual SOAP namespace
/// SOAP namespace for the WebService
Parameter NAMESPACE = "http://bkgtsoft.com";

/// MethodName：EncounterCardInfoAdd<br>
/// Summary:    就诊卡信息新增服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 10:07 <br>
/// Author：    HYH<br>
Method EncounterCardInfoAdd(pInput As %String) As %String [ WebMethod ]
{
	
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.Encounter.MSG.EncounterCardInfoAdd")
	Quit retrunstr
}

/// MethodName：EncounterCardInfoUpdate<br>
/// Summary:    就诊卡信息更新服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 10:39 <br>
/// Author：    HYH<br>
Method EncounterCardInfoUpdate(pInput As %String) As %String [ WebMethod ]
{
	
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.Encounter.MSG.EncounterCardInfoUpdate")
	Quit retrunstr
}

/// MethodName：EncounterCardInfoQuery<br>
/// Summary:    就诊卡信息查询服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月17日 11:04 <br>
/// Author：    HYH<br>
Method EncounterCardInfoQuery(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..SyncHandle(pInput,"Request","VisitInfo.Encounter.MSG.EncounterCardInfoQuery")
	Quit retrunstr
}

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
	If pHint="Async"{
		Set tSC=..SendRequestAsync("就诊卡信息服务",pInput,.pOutput)
	}elseif pHint="Sync"{
		Set tSC=..SendRequestSync("就诊卡信息服务",pInput,.pOutput)
	}
	
	Quit tSC
}

}

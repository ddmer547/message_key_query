Class VisitInfo.DischargeInfo.BS.DischargeInfoBS Extends VisitInfo.common.BaseBS
{

Parameter ADAPTER;

Parameter SERVICENAME = "DischargeInfoBS";

Parameter NAMESPACE = "http://bkgtsoft.com";

/// MethodName:	DischargeInfoAdd<br>
/// Summary:    出院登记信息新增服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月18日 11:42 <br>
/// Author：    HYH<br>
Method DischargeInfoAdd(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr=..AsyncHandle(pInput,"Request","VisitInfo.DischargeInfo.MSG.DischargeInfoAdd")
	Quit retrunstr
}

/// MethodName：DischargeInfoUpdate<br>
/// Summary:    出院登记信息更新服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月18日 14:02 <br>
/// Author：    HYH<br>
Method DischargeInfoUpdate(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr = ..AsyncHandle(pInput,"Request","VisitInfo.DischargeInfo.MSG.DischargeInfoUpdate")
	Quit retrunstr
}

/// MethodName：DischargeInfoQuery<br>
/// Summary:    出院登记信息查询服务<br>
/// Parameter： pInput(%String) 输入xml格式字符串<br>
/// Return：    %String 返回xml字符串<br>
/// Date：      2021年3月18日 14:02 <br>
/// Author：    HYH<br>
Method DischargeInfoQuery(pInput As %String) As %String [ WebMethod ]
{
	Set retrunstr = ..SyncHandle(pInput,"Request","VisitInfo.DischargeInfo.MSG.DischargeInfoQuery")
	Quit retrunstr
}

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
	If pHint="Async"{
		Set tSC=..SendRequestAsync("出院登记信息服务",pInput,.pOutput)
	}elseif pHint="Sync"{
		Set tSC=..SendRequestSync("出院登记信息服务",pInput,.pOutput)
	}
	
	Quit tSC
}

}

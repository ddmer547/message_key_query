Class KEYQUERY.SOA.utils.baseresp
{

/// 通用返回
ClassMethod succResp() As %Status
{
  Set resp = {}
  Set resp.status = 200
  Set resp.msg = "success"
  Set resp.total = 1
  Do resp.%ToJSON()
  Quit $$$OK
}

ClassMethod failResp(errstr As %String) As %Status
{
  Set resp = {}
  Set resp.status = -1
  Set resp.msg = errstr
  Set resp.total = 0
  set data = []
  Set resp.data=data
  Do resp.%ToJSON()
  Quit $$$OK
}

}

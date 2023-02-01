Class KEYQUERY.SOA.api Extends KEYQUERY.SOA.LogQuery.rest
{

Parameter SpecificationClass = "petstore.spec";

/// 此应用程序的默认内容类型。
Parameter CONTENTTYPE = "application/json";

/// 默认情况下，将输入流转换为Unicode
Parameter CONVERTINPUTSTREAM = 1;

Parameter HandleCorsRequest = 1;

/// 默认响应字符集是utf-8
Parameter CHARSET = "utf-8";

XData UrlMap
{
<Routes>
<!--关键字查询 -->
<Route Url="/GetKeyLogInfo" Method="POST" Call="GetKeyLogInfo"/>
<Route Url="/GetKeyLogInfoNum" Method="POST" Call="GetKeyLogInfoNum"/>
</Routes>
}

}

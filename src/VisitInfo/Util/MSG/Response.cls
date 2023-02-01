Class VisitInfo.Util.MSG.Response Extends Ens.Response
{

Parameter XMLNAME = "Response";

/// 消息ID
Property MessageID As %String(MAXLEN = 150) [ Required ];

/// 消息创建时间
Property CreationTime As %String [ Required ];

/// 发送者
Property SenderID As %String(MAXLEN = 50) [ Required ];

/// 接收者
Property ReceiverID As %String(MAXLEN = 50) [ Required ];

/// 处理结果代码
Property ResultCode As %String [ Required ];

/// 请求消息ID
Property RequestMessageID As %String(MAXLEN = 50) [ Required ];

/// 处理结果说明
Property Result As %String(MAXLEN = "") [ Required ];

Storage Default
{
<Data name="ResponseDefaultData">
<Subscript>"Response"</Subscript>
<Value name="1">
<Value>MessageID</Value>
</Value>
<Value name="2">
<Value>CreationTime</Value>
</Value>
<Value name="3">
<Value>SenderID</Value>
</Value>
<Value name="4">
<Value>ReceiverID</Value>
</Value>
<Value name="5">
<Value>ResultCode</Value>
</Value>
<Value name="6">
<Value>RequestMessageID</Value>
</Value>
<Value name="7">
<Value>Result</Value>
</Value>
</Data>
<DefaultData>ResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}

/// (%SerialObject, %XML.Adaptor)
Class VisitInfo.Util.MSG.Head Extends (%SerialObject, %XML.Adaptor)
{

Parameter XMLNAME = "Head";

/// 消息ID
Property MessageID As %String(MAXLEN = 50) [ Required ];

/// 消息创建时间
Property CreationTime As %String [ Required ];

/// 发送者
Property SenderID As %String(MAXLEN = 50) [ Required ];

/// 接收者
Property ReceiverID As %String(MAXLEN = 50) [ Required ];

/// 是否需要回执
Property IfReceipt As %String(MAXLEN = 50);

Storage Default
{
<Data name="HeadState">
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
<Value>IfReceipt</Value>
</Value>
</Data>
<State>HeadState</State>
<StreamLocation>^VisitInfo.Util.MSG.HeadS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}

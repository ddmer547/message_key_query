Class KEYQUERY.SOA.LogQuery.MSG.req Extends (%Persistent, %JSON.Adaptor)
{

/// PatientID
Property PatientID As %String;

// 当前页码

Property page As %Integer [ Required ];

// 每页显示最大条数

Property rows As %Integer [ Required ];

// 服务英文名称

Property serviceNameEN As %String(MAXLEN = 60);

// 服务中文名称

Property serviceNameCN As %String(MAXLEN = 200);

/// 时间下限
Property startTime As %String;

/// 时间上限
Property endTime As %String;

Storage Default
{
<Data name="reqDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PatientID</Value>
</Value>
<Value name="3">
<Value>page</Value>
</Value>
<Value name="4">
<Value>rows</Value>
</Value>
<Value name="5">
<Value>serviceNameEN</Value>
</Value>
<Value name="6">
<Value>serviceNameCN</Value>
</Value>
<Value name="7">
<Value>startTime</Value>
</Value>
<Value name="8">
<Value>endTime</Value>
</Value>
</Data>
<DataLocation>^KEYQUERY.SOA.LogQuery.MSG.reqD</DataLocation>
<DefaultData>reqDefaultData</DefaultData>
<IdLocation>^KEYQUERY.SOA.LogQuery.MSG.reqD</IdLocation>
<IndexLocation>^KEYQUERY.SOA.LogQuery.MSG.reqI</IndexLocation>
<StreamLocation>^KEYQUERY.SOA.LogQuery.MSG.reqS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

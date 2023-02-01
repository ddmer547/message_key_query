Class KEYQUERY.MSG.SearchIndexMSG Extends (%Persistent, %XML.Adaptor) [ DdlAllowed ]
{

Property SessionID As %String;

Property ServiceName As %String;

Property AttributeName As %String;

Property AttributeValue As %String;

Property CreateTime As %DateTime;

Index SearchIndex On (AttributeName, AttributeValue, CreateTime);

Storage Default
{
<Data name="SearchIndexMSGDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SessionID</Value>
</Value>
<Value name="3">
<Value>ServiceName</Value>
</Value>
<Value name="4">
<Value>AttributeName</Value>
</Value>
<Value name="5">
<Value>AttributeValue</Value>
</Value>
<Value name="6">
<Value>CreateTime</Value>
</Value>
</Data>
<DataLocation>^KEYQUERY.MSG.SearchIndexMSGD</DataLocation>
<DefaultData>SearchIndexMSGDefaultData</DefaultData>
<ExtentSize>24</ExtentSize>
<IdLocation>^KEYQUERY.MSG.SearchIndexMSGD</IdLocation>
<IndexLocation>^KEYQUERY.MSG.SearchIndexMSGI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,16,$lb("-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000","-10000000000000000000"),$lb(21,21,21,21,21,21,21,21,21,21,21,21,21,21,21),$lb(758198320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,758198320))</Histogram>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,1,0,$lb("1","2","4","6","8","10","12","14","16","18","19","20","21","22","23","24"),$lb(0,0,0,0,0,1,1,1,1,1,0,1,1,1,1),$lb(822083584,822083584,838860800,838860800,872415232,872415232,905969664,905969664,939524096,939524096,825229312,805306368,838860800,838860800,872415232,872415232,905969664,905969664,939524096,939524096,956301312,825819136,842006528,805306368,822083584,822083584,838860800,838860800,855638016,855638016,872415232,842268672))</Histogram>
<Selectivity>1</Selectivity>
</Property>
<Property name="AttributeName">
<AverageFieldSize>12</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" IDCARDNO"," IDCARDNO"," IDCARDNO"," INPATIENTNO"," INPATIENTNO"," INPATIENTNO"," INPATIENTNO"," OUTPATIENTNO"," PATIENTID"," PATIENTID"," PATIENTID"," PATIENTNAME"," PATIENTNAME"," PATIENTNAME"," PATIENTNAME"," PATIENTNAME"),$lb(10,10,2,13,13,13,1,1,11,11,8,13,13,13,13),$lb(541672515,0,0,0,0,1145258322,1313882452,0,0,0,0,0,0,1229869121,1330992208,1330992208,1346458697,0,0,0,0,1229193216,1312902469,0,0,0,0,0,0,0,0,542130516))</Histogram>
<Selectivity>20.0000%</Selectivity>
</Property>
<Property name="AttributeValue">
<AverageFieldSize>6.38</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 123"," 123"," 123"," 123456"," 123456"," 123456"," 145"," 145"," 3658412563"," 9"," 987654"," 张三"," 张三"," 张三"," 张三"," 张三"),$lb(5,5,4,8,8,2,5,1,1,2,1,4,4,4,4),$lb(540095027,0,0,0,0,0,875902464,0,0,0,0,842216501,875888640,0,0,825505024,859190584,859190584,956301312,0,943142453,959985462,3854344420,0,0,0,0,0,0,0,0,551926944))</Histogram>
<Selectivity>14.2857%</Selectivity>
</Property>
<Property name="CreateTime">
<AverageFieldSize>21</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb("2023-01-30 17:26:44","2023-01-30 17:26:44","2023-01-30 17:26:44","2023-01-30 17:27:20","2023-01-30 17:27:20","2023-01-30 17:27:28","2023-01-30 17:27:28","2023-01-30 17:27:28","2023-01-30 17:28:33","2023-01-30 17:28:33","2023-01-30 17:28:33","2023-01-30 17:28:48","2023-01-30 17:28:48","2023-01-30 17:28:48","2023-01-30 17:28:48","2023-01-30 17:28:48"),$lb(20,20,15,20,18,20,20,15,20,20,17,20,20,20,20),$lb(842019379,0,0,0,0,909784116,926560816,0,0,805306368,939524096,0,0,0,0,926560824,943338291,0,0,0,0,858980352,876085248,0,0,0,0,0,0,0,0,842019379))</Histogram>
<Selectivity>20.0000%</Selectivity>
</Property>
<Property name="ServiceName">
<AverageFieldSize>22</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 住院就诊信息新增服务"," 住院就诊信息新增服务"," 住院就诊信息新增服务"," 住院就诊信息新增服务"," 住院就诊信息新增服务"," 住院就诊信息新增服务"," 出院登记信息新增服务"," 出院登记信息新增服务"," 出院登记信息新增服务"," 出院登记信息新增服务"," 出院登记信息新增服务"," 出院登记信息新增服务"," 门诊挂号信息新增服务"," 门诊挂号信息新增服务"," 门诊挂号信息新增服务"," 门诊挂号信息新增服务"),$lb(12,12,12,12,12,1,12,12,12,12,12,1,12,12,12),$lb(551861647,0,0,0,0,0,0,0,0,0,0,3837628393,3850877673,0,0,0,0,0,0,0,0,0,0,3850877673,3919030504,0,0,0,0,0,0,552179624))</Histogram>
<Selectivity>33.3333%</Selectivity>
</Property>
<Property name="SessionID">
<AverageFieldSize>5</AverageFieldSize>
<Histogram>$lb(.06666666666666666667,0,0,$lb(" 191"," 191"," 191"," 196"," 196"," 201"," 201"," 201"," 206"," 206"," 206"," 211"," 211"," 211"," 211"," 211"),$lb(5,5,3,5,1,5,5,3,5,5,2,5,5,5,5),$lb(540096817,0,0,0,0,822083584,905969664,0,0,825832960,842019072,0,0,0,0,822083584,905969664,0,0,0,0,808845312,825294848,0,0,0,0,0,0,0,0,540160305))</Histogram>
<Selectivity>20.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="SearchIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^KEYQUERY.MSG.SearchIndexMSGS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

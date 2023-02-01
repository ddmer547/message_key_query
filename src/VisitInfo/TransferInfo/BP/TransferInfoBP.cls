/// 
Class VisitInfo.TransferInfo.BP.TransferInfoBP Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2285' >
<context>
<property name='hl7' type='EnsLib.EDI.XML.Document' instantiate='0' />
<property name='xsl' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='startTime' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='endTime' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='add' type='VisitInfo.TransferInfo.MSG.TransferInfoAdd' instantiate='0' />
<property name='update' type='VisitInfo.TransferInfo.MSG.TransferInfoUpdate' instantiate='0' />
<property name='query' type='VisitInfo.TransferInfo.MSG.TransferInfoQuery' instantiate='0' />
</context>
<sequence xend='200' yend='1100' >
<flow xpos='200' ypos='250' xend='200' yend='1000' >
<sequence >
<call name='发往索引表' target='关键字索引表' async='1' xpos='200' ypos='400' >
<request type='Ens.Request' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='Ens.StringResponse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
<sequence >
<switch name='TransferInfoService' xpos='470' ypos='400' xend='470' yend='900' >
<case condition='$CLASSNAME(request)="VisitInfo.TransferInfo.MSG.TransferInfoAdd"' name='住院转科信息新增' >
<flow xpos='605' ypos='550' xend='605' yend='800' >
<sequence >
<call name='住院转科信息新增' target='住院转科业务操作' async='1' xpos='605' ypos='650' >
<request type='VisitInfo.TransferInfo.MSG.TransferInfoAdd' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.Util.MSG.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</flow>
</case>
<case condition='$CLASSNAME(request)="VisitInfo.TransferInfo.MSG.TransferInfoUpdate"' name='住院转科信息更新' >
<flow xpos='875' ypos='550' xend='875' yend='800' >
<sequence >
<call name='住院转科信息更新' target='住院转科业务操作' async='1' xpos='875' ypos='650' >
<request type='VisitInfo.TransferInfo.MSG.TransferInfoUpdate' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.Util.MSG.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</flow>
</case>
<case condition='$CLASSNAME(request)="VisitInfo.TransferInfo.MSG.TransferInfoQuery"' name='住院转科信息查询' >
<flow xpos='1145' ypos='550' xend='1145' yend='800' >
<sequence >
<call name='住院转科信息查询' target='住院转科业务操作' async='0' xpos='1145' ypos='650' >
<request type='VisitInfo.TransferInfo.MSG.TransferInfoQuery' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.TransferInfo.MSG.QuerySuccess' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</flow>
</case>
<default name='default' />
</switch>
</sequence>
</flow>
</sequence>
</process>
}

}

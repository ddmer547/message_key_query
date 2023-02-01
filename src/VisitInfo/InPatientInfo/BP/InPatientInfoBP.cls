/// 
Class VisitInfo.InPatientInfo.BP.InPatientInfoBP Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='3095' >
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
<property name='add' type='VisitInfo.InPatientInfo.MSG.InPatientInfoAdd' instantiate='0' />
<property name='update' type='VisitInfo.InPatientInfo.MSG.InPatientInfoUpdate' instantiate='0' />
<property name='query' type='VisitInfo.InPatientInfo.MSG.InPatientInfoQuery' instantiate='0' />
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
<switch name='InPatientInfoService' xpos='470' ypos='400' xend='470' yend='900' >
<case condition='$CLASSNAME(request)="VisitInfo.InPatientInfo.MSG.InPatientInfoAdd"' name='住院就诊信息新增' >
<flow xpos='605' ypos='550' xend='605' yend='800' >
<sequence >
<call name='住院就诊信息新增' target='住院就诊业务操作' async='1' xpos='605' ypos='650' >
<request type='VisitInfo.InPatientInfo.MSG.InPatientInfoAdd' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.Util.MSG.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</flow>
</case>
<case condition='$CLASSNAME(request)="VisitInfo.InPatientInfo.MSG.InPatientInfoUpdate"' name='住院就诊信息更新' >
<flow xpos='875' ypos='550' xend='875' yend='800' >
<sequence >
<call name='住院就诊信息更新' target='住院就诊业务操作' async='1' xpos='875' ypos='650' >
<request type='VisitInfo.InPatientInfo.MSG.InPatientInfoUpdate' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.Util.MSG.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</flow>
</case>
<case condition='$CLASSNAME(request)="VisitInfo.InPatientInfo.MSG.InPatientInfoQuery"' name='住院就诊信息查询' >
<flow xpos='1145' ypos='550' xend='1145' yend='800' >
<sequence >
<call name='住院就诊信息查询' target='住院就诊业务操作' async='0' xpos='1145' ypos='650' >
<request type='VisitInfo.InPatientInfo.MSG.InPatientInfoQuery' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.InPatientInfo.MSG.QuerySuccess' >
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

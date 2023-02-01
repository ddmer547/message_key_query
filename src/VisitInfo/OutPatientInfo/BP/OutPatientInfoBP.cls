/// 
Class VisitInfo.OutPatientInfo.BP.OutPatientInfoBP Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
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
<property name='add' type='VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd' instantiate='0' />
<property name='update' type='VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate' instantiate='0' />
<property name='query' type='VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery' instantiate='0' />
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
<switch name='OutPatientService' xpos='470' ypos='400' xend='470' yend='900' >
<case condition='$CLASSNAME(request)="VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd"' name='门诊挂号信息新增' >
<flow xpos='605' ypos='550' xend='605' yend='800' >
<sequence >
<call name='门诊挂号信息新增' target='门诊挂号业务操作' async='1' xpos='605' ypos='650' >
<request type='VisitInfo.OutPatientInfo.MSG.OutPatientInfoAdd' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.Util.MSG.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</flow>
</case>
<case condition='$CLASSNAME(request)="VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate"' name='门诊挂号信息更新' >
<flow xpos='875' ypos='550' xend='875' yend='800' >
<sequence >
<call name='门诊挂号信息更新' target='门诊挂号业务操作' async='1' xpos='874' ypos='651' >
<request type='VisitInfo.OutPatientInfo.MSG.OutPatientInfoUpdate' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.Util.MSG.Response' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</sequence>
</flow>
</case>
<case condition='$CLASSNAME(request)="VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery"' name='门诊挂号信息查询' >
<flow xpos='1145' ypos='550' xend='1145' yend='800' >
<sequence >
<call name='门诊挂号信息查询' target='门诊挂号业务操作' async='1' xpos='1146' ypos='650' >
<request type='VisitInfo.OutPatientInfo.MSG.OutPatientInfoQuery' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='VisitInfo.OutPatientInfo.MSG.QuerySuccess' >
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

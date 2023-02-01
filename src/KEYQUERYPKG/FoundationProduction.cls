Class KEYQUERYPKG.FoundationProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="KEYQUERYPKG.FoundationProduction" LogGeneralTraceEvents="false">
  <Description>业务流程引擎</Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="VisitInfo.DischargeInfo.BS.DischargeInfoBS" Category="" ClassName="VisitInfo.DischargeInfo.BS.DischargeInfoBS" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="VisitInfo.Encounter.BS.EncounterCardBS" Category="" ClassName="VisitInfo.Encounter.BS.EncounterCardBS" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="VisitInfo.InPatientInfo.BS.InPatientInfoBS" Category="" ClassName="VisitInfo.InPatientInfo.BS.InPatientInfoBS" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="VisitInfo.OutPatientInfo.BS.OutPatientInfoBS" Category="" ClassName="VisitInfo.OutPatientInfo.BS.OutPatientInfoBS" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="VisitInfo.TransferInfo.BS.TransferInfoBS" Category="" ClassName="VisitInfo.TransferInfo.BS.TransferInfoBS" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="出院登记信息服务" Category="" ClassName="VisitInfo.DischargeInfo.BP.DischargeInfoBP" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="就诊卡信息服务" Category="" ClassName="VisitInfo.Encounter.BP.EncounterBP" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="住院就诊信息服务" Category="" ClassName="VisitInfo.InPatientInfo.BP.InPatientInfoBP" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="门诊挂号信息服务" Category="" ClassName="VisitInfo.OutPatientInfo.BP.OutPatientInfoBP" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="住院转科信息服务" Category="" ClassName="VisitInfo.TransferInfo.BP.TransferInfoBP" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="出院登记业务操作" Category="" ClassName="VisitInfo.DischargeInfo.BO.DischargeInfoBO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="就诊卡信息业务操作" Category="" ClassName="VisitInfo.Encounter.BO.EncounterCardBO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="住院就诊业务操作" Category="" ClassName="VisitInfo.InPatientInfo.BO.InPatientInfoBO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="门诊挂号业务操作" Category="" ClassName="VisitInfo.OutPatientInfo.BO.OutPatientInfoBO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="住院转科业务操作" Category="" ClassName="VisitInfo.TransferInfo.BO.TransferInfoBO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="关键字索引表" Category="" ClassName="KEYQUERY.SearchIndexBO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
</Production>
}

}

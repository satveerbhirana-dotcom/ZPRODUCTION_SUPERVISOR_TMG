@EndUserText.label: 'Table For Production Supervisor TMG'
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
define view entity ZI_TableForProductionS
  as select from ZPROD_SUP
  association to parent ZI_TableForProductionS_S as _TableForProductiAll on $projection.SingletonID = _TableForProductiAll.SingletonID
{
  key PLANT as Plant,
  key PRODUCTIONSUPERVISOR as Productionsupervisor,
  PRODUCTIONSUPERVISORNAME as Productionsupervisorname,
  @Consumption.hidden: true
  1 as SingletonID,
  _TableForProductiAll
  
}

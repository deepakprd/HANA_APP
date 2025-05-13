@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_SALES_ORDER_DR
  as select from ZSALES_ORDER_DR
{
  key po_id as PoId,
  vendor_name as VendorName,
  puchase_org as PuchaseOrg,
  @Semantics.amount.currencyCode: 'CurCode'
  gross_amount as GrossAmount,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  cur_code as CurCode,
  creted_by as CretedBy,
  created_on as CreatedOn,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
  
}

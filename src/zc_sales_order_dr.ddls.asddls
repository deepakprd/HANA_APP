@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_SALES_ORDER_DR
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_SALES_ORDER_DR
{
  key PoId,
  VendorName,
  PuchaseOrg,
  GrossAmount,
  @Semantics.currencyCode: true
  CurCode,
  CretedBy,
  CreatedOn,
  LastChangedAt,
  LocalLastChangedAt
  
}

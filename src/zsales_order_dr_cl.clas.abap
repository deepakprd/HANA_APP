CLASS zsales_order_dr_cl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsales_order_dr_cl IMPLEMENTATION.

method if_oo_adt_classrun~main.

data : lt_po type STANDARD TABLE OF zsales_order_dr.

        lt_po = VALUE #( ( po_id = '101'  vendor_name = 'A' puchase_org = '100' gross_amount = 1000
        cur_code = 'INR' creted_by ='me' created_on = '20250410111111')

    ( po_id = '102'  vendor_name = 'B' puchase_org = '100' gross_amount = 1000
        cur_code = 'INR' creted_by ='me' created_on = '20250410111111')
        ( po_id = '103'  vendor_name = 'C' puchase_org = '100' gross_amount = 1000
        cur_code = 'INR' creted_by ='me' created_on = '20250410111111')  ).

       delete from zsales_order_dr.

       insert zsales_order_dr from table @lt_po.
       out->write( 'Record Inserted' ).

endmethod.

ENDCLASS.

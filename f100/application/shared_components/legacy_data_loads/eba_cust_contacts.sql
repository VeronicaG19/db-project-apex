prompt --application/shared_components/legacy_data_loads/eba_cust_contacts
begin
--   Manifest
--     EBA_CUST_CONTACTS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(15893512474266968029)
,p_name=>'contacts'
,p_owner=>'#OWNER#'
,p_table_name=>'EBA_CUST_CONTACTS'
,p_unique_column_1=>'CUSTOMER_ID'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'NAME'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(15893512784763968046)
,p_load_table_id=>wwv_flow_imp.id(15893512474266968029)
,p_load_column_name=>'CONTACT_TYPE_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'EBA_CUST_CONTACT_TYPES'
,p_key_column=>'ID'
,p_display_column=>'CONTACT_TYPE'
,p_insert_new_value=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(15893512592152968044)
,p_load_table_id=>wwv_flow_imp.id(15893512474266968029)
,p_load_column_name=>'CUSTOMER_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'EBA_CUST_CUSTOMERS'
,p_key_column=>'ID'
,p_display_column=>'CUSTOMER_NAME'
,p_insert_new_value=>'N'
);
wwv_flow_imp.component_end;
end;
/

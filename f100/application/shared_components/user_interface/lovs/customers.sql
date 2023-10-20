prompt --application/shared_components/user_interface/lovs/customers
begin
--   Manifest
--     CUSTOMERS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(16596709872918895701)
,p_lov_name=>'CUSTOMERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name d, id r ',
'from EBA_CUST_CUSTOMERS',
'order by upper(customer_name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/

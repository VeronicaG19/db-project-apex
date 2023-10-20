prompt --application/shared_components/user_interface/lovs/p68_prod_use_external_contact
begin
--   Manifest
--     P68_PROD_USE_EXTERNAL_CONTACT
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
 p_id=>wwv_flow_imp.id(14252429199354573041)
,p_lov_name=>'P68_PROD_USE_EXTERNAL_CONTACT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''- New Contact -'' d, -1 r',
'  from dual',
'union all',
'select decode( email, null, name, name || '' ('' || email || '')'' ) d, id r',
'  from eba_cust_contacts',
' where customer_id = :P68_CUSTOMER_ID',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/

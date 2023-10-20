prompt --application/shared_components/user_interface/lovs/countries_p59
begin
--   Manifest
--     COUNTRIES_P59
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
 p_id=>wwv_flow_imp.id(17399486411202020993)
,p_lov_name=>'COUNTRIES_P59'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name as d,',
'       id as r',
'  from EBA_CUST_COUNTRIES',
' where display_yn = ''Y''',
'   and (',
'           (nvl(:P59_GEO,0) = 0 and id is not null)',
'           or',
'           (nvl(:P59_GEO,0)  > 0 and region_id = :P59_GEO)',
'       )',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/

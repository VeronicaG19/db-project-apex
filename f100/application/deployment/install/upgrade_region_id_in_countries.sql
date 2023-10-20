prompt --application/deployment/install/upgrade_region_id_in_countries
begin
--   Manifest
--     INSTALL: UPGRADE-region_id in countries
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(17173755469575117383)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'region_id in countries'
,p_sequence=>350
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_COUNTRIES''',
'    and column_name = ''REGION_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_countries add region_id number',
'/',
'alter table eba_cust_countries',
'   add constraint eba_countries_region_fk',
'       foreign key (region_id)',
'       references eba_cust_geographies (id) on delete cascade',
'/'))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/deployment/install/upgrade_add_logo_columns_to_customers_table
begin
--   Manifest
--     INSTALL: UPGRADE-add logo columns to customers table
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
 p_id=>wwv_flow_imp.id(14472152990566015430)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'add logo columns to customers table'
,p_sequence=>270
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''LOGO_BLOB'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add (',
'    logo_blob     blob,',
'    logo_name     varchar2(512),',
'    logo_mimetype varchar2(512),',
'    logo_charset  varchar2(512),',
'    logo_lastupd  date',
');'))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/deployment/install/install_lookup
begin
--   Manifest
--     INSTALL: INSTALL-lookup
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
 p_id=>wwv_flow_imp.id(16666401994067773114)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'lookup'
,p_sequence=>120
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_error_lookup (',
'    constraint_name         varchar2(30)        not null',
'                                                constraint eba_cust_error_lookup_pk',
'                                                primary key,',
'    message                 varchar2(4000)      not null,',
'    language_code           varchar2(30)        not null',
')',
'/',
'create unique index eba_cust_error_lookup_uk on eba_cust_error_lookup (constraint_name,language_code);',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/

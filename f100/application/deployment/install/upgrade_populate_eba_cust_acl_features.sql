prompt --application/deployment/install/upgrade_populate_eba_cust_acl_features
begin
--   Manifest
--     INSTALL: UPGRADE-populate eba_cust_acl_features
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
 p_id=>wwv_flow_imp.id(1366357777056620755)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'populate eba_cust_acl_features'
,p_sequence=>450
,p_script_type=>'UPGRADE'
,p_condition_type=>'FUNCTION_BODY'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt    pls_integer;',
'    l_retval boolean := true;',
'begin',
'    select count(*)',
'      into l_cnt',
'      from eba_cust_acl_features',
'     where authorization_name in (''EDIT_COMPETITORS'', ''VIEW_COMPETITORS'');',
'',
'    if l_cnt > 0 then',
'        l_retval := false;',
'    end if;',
'',
'    return l_retval;',
'end;'))
,p_condition2=>'PLSQL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_cust_acl_features (authorization_name, feature, access_level_id)',
'  values (''EDIT_COMPETITORS'',''Specify what access level is required to maintain competitors.'',2);',
'insert into eba_cust_acl_features (authorization_name, feature, access_level_id)',
'  values (''VIEW_COMPETITORS'',''Specify what level can view competiors, and add them to customers.'',2);',
'commit;',
''))
);
wwv_flow_imp.component_end;
end;
/

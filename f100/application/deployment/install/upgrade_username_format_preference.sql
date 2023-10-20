prompt --application/deployment/install/upgrade_username_format_preference
begin
--   Manifest
--     INSTALL: UPGRADE-Username Format Preference
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
 p_id=>wwv_flow_imp.id(14821126583349648483)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'Username Format Preference'
,p_sequence=>50
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_cust_preferences (id, preference_name, preference_value) values (3, ''USERNAME_FORMAT'', ''EMAIL'');',
'exception when others then null;',
'end;',
'/',
''))
);
wwv_flow_imp.component_end;
end;
/

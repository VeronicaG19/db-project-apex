prompt --application/deployment/install/install_set_first_run_preference
begin
--   Manifest
--     INSTALL: INSTALL-Set First Run Preference
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
 p_id=>wwv_flow_imp.id(1169773703221607696)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'Set First Run Preference'
,p_sequence=>560
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_cust_fw.set_preference_value( p_preference_name => ''FIRST_RUN'', p_preference_value => ''YES'' );',
'end;'))
);
wwv_flow_imp.component_end;
end;
/

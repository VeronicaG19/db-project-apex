prompt --application/shared_components/logic/application_processes/timezone
begin
--   Manifest
--     APPLICATION PROCESS: timezone
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(16617164891300219939)
,p_process_sequence=>3
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'timezone'
,p_process_sql_clob=>'eba_cust_tz_init;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to set time zone.'
);
wwv_flow_imp.component_end;
end;
/

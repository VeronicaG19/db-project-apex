prompt --application/shared_components/user_interface/shortcuts/timezone
begin
--   Manifest
--     SHORTCUT: TIMEZONE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(16617165284852227523)
,p_shortcut_name=>'TIMEZONE'
,p_shortcut_type=>'FUNCTION_BODY'
,p_shortcut_language=>'PLSQL'
,p_shortcut=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>''||''Dates and Times are displayed in the ''||',
'''<a href="f?p=''||:APP_ID||'':76:''||:APP_SESSION||''">''||',
'nvl(apex_escape.html(apex_util.get_session_time_zone),''unknown'')||''</a> timezone.</p>'';'))
);
wwv_flow_imp.component_end;
end;
/

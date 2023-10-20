prompt --application/deployment/install/upgrade_eba_cust_email_package_spec
begin
--   Manifest
--     INSTALL: UPGRADE-eba_cust_email package spec
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
 p_id=>wwv_flow_imp.id(18741053626658388517)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'eba_cust_email package spec'
,p_sequence=>400
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_cust_email as',
'',
'    procedure send_feedback_email',
'    (',
'        p_app_id        in number,',
'        p_page_id       in number,',
'        p_submitter     in varchar2,',
'        p_feedback_type in varchar2,',
'        p_feedback      in varchar2',
'    );',
'',
'end eba_cust_email;',
'/',
'show errors'))
);
wwv_flow_imp.component_end;
end;
/

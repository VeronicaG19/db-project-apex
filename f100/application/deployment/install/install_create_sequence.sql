prompt --application/deployment/install/install_create_sequence
begin
--   Manifest
--     INSTALL: INSTALL-create sequence
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
 p_id=>wwv_flow_imp.id(17800481901341834034)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'create sequence'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>'create sequence eba_cust_seq;'
);
wwv_flow_imp.component_end;
end;
/

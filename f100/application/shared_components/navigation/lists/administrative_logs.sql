prompt --application/shared_components/navigation/lists/administrative_logs
begin
--   Manifest
--     LIST: Administrative Logs
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(18741414838671518304)
,p_name=>'Administrative Logs'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18741414980725518307)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP,RIR,CIR:::'
,p_list_item_icon=>'fa-alert'
,p_list_text_01=>'Report of all internal errors encountered within the application.'
,p_list_text_02=>'reportIcon'
,p_list_text_03=>'&CNT_08.'
,p_security_scheme=>wwv_flow_imp.id(15681513576540687430)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18741415504869518311)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Application Email Log'
,p_list_item_link_target=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:RP,RIR,CIR:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Report of all emails sent from the application.'
,p_security_scheme=>wwv_flow_imp.id(15681513576540687430)
,p_required_patch=>wwv_flow_imp.id(18737101389772536342)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

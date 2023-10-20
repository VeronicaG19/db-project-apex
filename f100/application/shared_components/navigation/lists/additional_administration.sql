prompt --application/shared_components/navigation/lists/additional_administration
begin
--   Manifest
--     LIST: Additional Administration
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
 p_id=>wwv_flow_imp.id(16352197981029805441)
,p_name=>'Additional Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16352198193052805442)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP,34:::'
,p_list_item_icon=>'fa-comment'
,p_list_text_01=>'Manage application notification text displayed on home page.  Requires Administrative privilege.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(15681513576540687430)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18738847361677816280)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Manage Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:RP,119:::'
,p_list_item_icon=>'fa-comments-o'
,p_list_text_01=>'Report of all feedback left by application users. Feedback types include general comments, enhancement requests, and bugs.'
,p_security_scheme=>wwv_flow_imp.id(15681513576540687430)
,p_required_patch=>wwv_flow_imp.id(18737101389772536342)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

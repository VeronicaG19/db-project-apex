prompt --application/shared_components/navigation/lists/activity_actions
begin
--   Manifest
--     LIST: Activity Actions
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
 p_id=>wwv_flow_imp.id(18179904390965287333)
,p_name=>'Activity Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18179907359227287342)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Attachment'
,p_list_item_link_target=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:114:P114_ACTIVITY_ID:&P145_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

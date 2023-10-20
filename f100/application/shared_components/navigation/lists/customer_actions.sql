prompt --application/shared_components/navigation/lists/customer_actions
begin
--   Manifest
--     LIST: Customer Actions
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
 p_id=>wwv_flow_imp.id(14905482400513178425)
,p_name=>'Customer Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16869489961458527275)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Referenceability'
,p_list_item_link_target=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:96:P96_ID:&P50_ID.:'
,p_list_item_icon=>'fa-phone'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14905482898365178427)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Contact'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37:P37_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-user'
,p_required_patch=>wwv_flow_imp.id(14961962765220715872)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2571932300156356254)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Add Issue'
,p_list_item_link_target=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-alert'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
,p_required_patch=>wwv_flow_imp.id(2571984246546814706)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18187142625842989907)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Add Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150:P150_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-newspaper-o'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
,p_required_patch=>wwv_flow_imp.id(18144718804751582674)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14905483191663178427)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Product(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68,RIR:P68_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-square-o'
,p_required_patch=>wwv_flow_imp.id(14961955477347649421)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17754542549311674136)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Add Partner(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110,RIR:P110_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-thumbs-o-up'
,p_required_patch=>wwv_flow_imp.id(1345792954181732172)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17757385301970259963)
,p_list_item_display_sequence=>36
,p_list_item_link_text=>'Add Competitor(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP,111,RIR:P111_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-emoji-cringe'
,p_security_scheme=>wwv_flow_imp.id(1366310021652479611)
,p_required_patch=>wwv_flow_imp.id(1342641366277707490)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14905483437162178427)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:97:P97_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14905483802335178428)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-chain'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14905485471576186201)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Attachment'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64:P64_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/upload_action
begin
--   Manifest
--     UPLOAD_ACTION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17800863803134531538)
,p_lov_name=>'UPLOAD_ACTION'
,p_lov_query=>'.'||wwv_flow_imp.id(17800863803134531538)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17800863996492531542)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Insert'
,p_lov_return_value=>'INSERT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17800864184051531547)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Update'
,p_lov_return_value=>'UPDATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(17800864391784531547)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'No Change'
,p_lov_return_value=>'NOTHING'
,p_lov_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_lov_disp_cond=>'35'
);
wwv_flow_imp.component_end;
end;
/

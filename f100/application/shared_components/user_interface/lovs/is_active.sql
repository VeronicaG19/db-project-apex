prompt --application/shared_components/user_interface/lovs/is_active
begin
--   Manifest
--     IS ACTIVE
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
 p_id=>wwv_flow_imp.id(14293836567438170675)
,p_lov_name=>'IS ACTIVE'
,p_lov_query=>'.'||wwv_flow_imp.id(14293836567438170675)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14293836766413170679)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'Y'
);
wwv_flow_imp.component_end;
end;
/

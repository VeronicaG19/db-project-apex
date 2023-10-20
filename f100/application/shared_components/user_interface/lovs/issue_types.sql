prompt --application/shared_components/user_interface/lovs/issue_types
begin
--   Manifest
--     ISSUE TYPES
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
 p_id=>wwv_flow_imp.id(2571933062992384170)
,p_lov_name=>'ISSUE TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(2571933062992384170)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2571933403221384171)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bug'
,p_lov_return_value=>'BUG'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2571933808057384173)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Enhancement Request'
,p_lov_return_value=>'ER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2571934204474384173)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp.component_end;
end;
/

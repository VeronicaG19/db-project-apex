prompt --application/shared_components/user_interface/lovs/max_rows
begin
--   Manifest
--     MAX ROWS
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
 p_id=>wwv_flow_imp.id(14870589367123169264)
,p_lov_name=>'MAX ROWS'
,p_lov_query=>'.'||wwv_flow_imp.id(14870589367123169264)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14870589530752169266)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14870589868415169270)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14870590140563169270)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14870590460647169270)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14870590779146169270)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14870591039451169270)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14870591343713169270)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'All'
,p_lov_return_value=>'100000000'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/feedback_statuses
begin
--   Manifest
--     FEEDBACK STATUSES
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
 p_id=>wwv_flow_imp.id(18737493058763610083)
,p_lov_name=>'FEEDBACK STATUSES'
,p_lov_query=>'.'||wwv_flow_imp.id(18737493058763610083)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18737493374256610090)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'In Progress'
,p_lov_return_value=>'IN_PROGRESS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18737493777601610093)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'NO_ACTION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18737494208336610093)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'OPEN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18737494637994610094)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Resolved'
,p_lov_return_value=>'RESOLVED'
);
wwv_flow_imp.component_end;
end;
/

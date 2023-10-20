prompt --application/shared_components/user_interface/lovs/referencable
begin
--   Manifest
--     REFERENCABLE
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
 p_id=>wwv_flow_imp.id(14764593473882136416)
,p_lov_name=>'REFERENCABLE'
,p_lov_query=>'.'||wwv_flow_imp.id(14764593473882136416)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14764593681113136420)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Yes'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14764593981848136424)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'No'
,p_lov_return_value=>'No'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(14764594272726136424)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Potentially'
,p_lov_return_value=>'Potentially'
);
wwv_flow_imp.component_end;
end;
/

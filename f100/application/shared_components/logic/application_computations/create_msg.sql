prompt --application/shared_components/logic/application_computations/create_msg
begin
--   Manifest
--     APPLICATION COMPUTATION: CREATE_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(17838691833537339605)
,p_computation_sequence=>10
,p_computation_item=>'CREATE_MSG'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CREATE'');'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/navigation/lists/load_customers_train
begin
--   Manifest
--     LIST: Load Customers Train
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
 p_id=>wwv_flow_imp.id(17800641296436128703)
,p_name=>'Load Customers Train'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/logic/application_items/activities
begin
--   Manifest
--     APPLICATION ITEM: ACTIVITIES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(18151531954715838791)
,p_name=>'ACTIVITIES'
,p_protection_level=>'I'
,p_required_patch=>wwv_flow_imp.id(18144718804751582674)
);
wwv_flow_imp.component_end;
end;
/

prompt --application/deployment/install/upgrade_drop_index_eba_cust_product_uses_uk
begin
--   Manifest
--     INSTALL: UPGRADE-drop index EBA_CUST_PRODUCT_USES_UK
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(14249384905190047038)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'drop index EBA_CUST_PRODUCT_USES_UK'
,p_sequence=>240
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from user_indexes',
'where index_name = ''EBA_CUST_PRODUCT_USES_UK'''))
,p_script_clob=>'drop index EBA_CUST_PRODUCT_USES_UK;'
);
wwv_flow_imp.component_end;
end;
/

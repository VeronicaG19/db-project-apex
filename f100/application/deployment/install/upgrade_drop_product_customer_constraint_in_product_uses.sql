prompt --application/deployment/install/upgrade_drop_product_customer_constraint_in_product_uses
begin
--   Manifest
--     INSTALL: UPGRADE-Drop product/customer constraint in product uses
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
 p_id=>wwv_flow_imp.id(14249354367514028081)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'Drop product/customer constraint in product uses'
,p_sequence=>230
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_constraints',
'where constraint_name = ''EBA_CUST_PRODUCT_USES_UK'''))
,p_script_clob=>'alter table eba_cust_product_uses drop constraint EBA_CUST_PRODUCT_USES_UK;'
);
wwv_flow_imp.component_end;
end;
/

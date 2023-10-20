prompt --application/deployment/install/upgrade_add_eba_cust_prod_uses_contact_fk
begin
--   Manifest
--     INSTALL: UPGRADE-add eba_cust_prod_uses_contact_fk
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
 p_id=>wwv_flow_imp.id(14292796874610652334)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'add eba_cust_prod_uses_contact_fk'
,p_sequence=>250
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_constraints',
'where constraint_name = ''EBA_CUST_PROD_USES_CONTACT_FK'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_product_uses',
'   add constraint eba_cust_prod_uses_contact_fk',
'       foreign key (customer_contact_id)',
'       references eba_cust_contacts (id) on delete cascade',
'/',
'show errors'))
);
wwv_flow_imp.component_end;
end;
/

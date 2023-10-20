prompt --application/deployment/install/install_customer_links
begin
--   Manifest
--     INSTALL: INSTALL-customer links
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
 p_id=>wwv_flow_imp.id(16666404366194802932)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'customer links'
,p_sequence=>290
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_links (',
'   id                      number          not null,',
'   row_version_number      number,',
'   customer_id             number          not null,',
'   contact_id              number,',
'   link                    varchar2(4000)  not null,',
'   link_desc               varchar2(255),',
'   link_type               varchar2(10),',
'   LINK_COMMENTS           varchar2(4000),',
'   tags                    varchar2(4000),',
'   --',
'   created               timestamp with time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_links',
'   add constraint eba_cust_links_pk',
'       primary key (id)',
'/',
'alter table eba_cust_links',
'   add constraint eba_cust_links_cust_fk',
'       foreign key (customer_id)',
'       references eba_cust_customers (id) on delete cascade',
'/',
'alter table eba_cust_links',
'   add constraint eba_cust_links_contact_fk',
'       foreign key (contact_id)',
'       references eba_cust_contacts (id) on delete cascade',
'/',
'',
'create index eba_cust_links_01 on eba_cust_links (customer_id);',
'create index eba_cust_links_02 on eba_cust_links (contact_id);',
'',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/deployment/install/install_countries
begin
--   Manifest
--     INSTALL: INSTALL-countries
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
 p_id=>wwv_flow_imp.id(16600740363895305102)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'countries'
,p_sequence=>90
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_countries (',
'   id                        number primary key,',
'   country_code              varchar2(30)  not null,',
'   country_name              varchar2(255) not null,',
'   region_id                 number,',
'   display_yn                varchar2(1)',
'                             constraint eba_cust_countries_disp_cc',
'                             check (display_yn in (''Y'',''N'')),',
'   row_version_number        number,',
'   created                   timestamp with time zone,',
'   created_by                varchar2(255),',
'   updated                   timestamp with time zone,',
'   updated_by                varchar2(255)',
');',
'create unique index eba_cust_countries_i1 on eba_cust_countries(country_code);',
'create unique index eba_cust_countries_i2 on eba_cust_countries(country_name);',
'',
'alter table eba_cust_countries',
'   add constraint eba_countries_region_fk',
'       foreign key (region_id)',
'       references eba_cust_geographies (id) on delete cascade',
'/',
'',
'create or replace trigger biu_eba_cust_countries',
'   before insert or update on eba_cust_countries',
'   for each row',
'begin',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.created := current_timestamp;',
'       :new.created_by := nvl(wwv_flow.g_user,user);',
'       :new.updated := current_timestamp;',
'       :new.updated_by := nvl(wwv_flow.g_user,user);',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if inserting or updating then',
'       :new.updated := current_timestamp;',
'       :new.updated_by := nvl(wwv_flow.g_user,user);',
'   end if;',
'   if :new.display_yn is null then ',
'      :new.display_yn := ''Y'';',
'   end if;',
'end;',
'/',
'alter trigger biu_eba_cust_countries enable;',
''))
);
wwv_flow_imp.component_end;
end;
/

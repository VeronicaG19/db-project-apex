prompt --application/deployment/install/install_create_eba_cust_acl_features
begin
--   Manifest
--     INSTALL: INSTALL-Create eba_cust_acl_features
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
 p_id=>wwv_flow_imp.id(1366312385547526780)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'Create eba_cust_acl_features'
,p_sequence=>420
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_acl_features (',
'    id                      number              not null',
'                                                constraint eba_cust_acl_features_pk',
'                                                primary key,',
'    authorization_name      varchar2(255)       not null,',
'    access_level_id         number              not null',
'                                                constraint eba_cust_acl_features_fk',
'                                                references eba_cust_access_levels,',
'    feature                 varchar2(255)       not null,',
'    row_version             number,',
'    created_by              varchar2(255)       not null,',
'    created                 timestamp with time zone,',
'    updated_by              varchar2(255),',
'    updated                 timestamp with time zone )',
'/',
'create unique index eba_cust_acl_features_uk on eba_cust_acl_features (authorization_name);',
'',
'create or replace trigger eba_cust_acl_features_biu',
'    before insert or update on eba_cust_acl_features',
'    for each row',
'begin',
'  -- Always store authorization_name as upper case',
'  :new.authorization_name := upper(:new.authorization_name);',
'',
'  if inserting then',
'    if :new.id is null then',
'      :new.id := eba_cust.gen_id();',
'    end if;',
'    :new.created_by         := nvl(v(''APP_USER''), USER);',
'    :new.created            := current_timestamp;',
'    :new.row_version        := 1;',
'  elsif updating then',
'    :new.row_version        := nvl(:old.row_version,1) + 1;                                ',
'  end if;',
'  :new.updated_by         := nvl(v(''APP_USER''), USER);',
'  :new.updated            := current_timestamp;',
'end;',
'/',
'show errors',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/

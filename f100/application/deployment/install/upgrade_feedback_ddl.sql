prompt --application/deployment/install/upgrade_feedback_ddl
begin
--   Manifest
--     INSTALL: UPGRADE-Feedback DDL
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
 p_id=>wwv_flow_imp.id(18736455648199334052)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'Feedback DDL'
,p_sequence=>380
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_FEEDBACK'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_feedback',
'(',
'    id             number constraint eba_cust_feedback_pk not null primary key,',
'    application_id number not null,',
'    page_id        number not null,',
'    feedback       varchar2(4000),',
'    response       varchar2(4000),',
'    type_id        number,',
'    status         varchar2(30),',
'    created        timestamp with time zone,',
'    created_by     varchar2(255),',
'    updated        timestamp with time zone,',
'    updated_by     varchar2(255),',
'    constraint eba_cust_feedback_type_fk foreign key (type_id) references eba_cust_feedback_types (id)',
');',
'',
'create index eba_cust_feedback_type_idx on eba_cust_feedback (type_id);',
'',
'create or replace trigger eba_cust_feedback_biu',
'    before insert or update ',
'    on eba_cust_feedback',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := current_timestamp;',
'        :new.created_by := NVL(V(''APP_USER''),user);',
'    end if;',
'    :new.updated := current_timestamp;',
'    :new.updated_by := NVL(V(''APP_USER''),user);',
'end;',
'/',
'',
'alter trigger eba_cust_feedback_biu enable',
'/'))
);
wwv_flow_imp.component_end;
end;
/

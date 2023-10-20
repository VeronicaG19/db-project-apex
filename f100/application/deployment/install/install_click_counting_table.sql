prompt --application/deployment/install/install_click_counting_table
begin
--   Manifest
--     INSTALL: INSTALL-Click Counting Table
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
 p_id=>wwv_flow_imp.id(14939304589381157349)
,p_install_id=>wwv_flow_imp.id(17799389517860143523)
,p_name=>'Click Counting Table'
,p_sequence=>490
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_clicks (    ',
'    id                number primary key,',
'    cust_id           number,',
'    app_username      varchar2(255),',
'    view_timestamp    timestamp(6) with time zone,',
'    app_session       varchar2(255)',
');',
'/',
'',
'',
'create index eba_cust_clicks_idx1 on eba_cust_clicks (cust_id);',
'create index eba_cust_clicks_idx2 on eba_cust_clicks (view_timestamp);',
'',
'create or replace trigger eba_cust_clicks_biu',
'    before insert on eba_cust_clicks',
'    for each row',
'begin',
'     if :new.id is null then',
'         :new.id := eba_cust_seq.nextval;',
'     end if;',
'     :new.view_timestamp := current_timestamp;',
'     :new.app_username := nvl(v(''APP_USER''),user);',
'     :new.app_session := v(''APP_SESSION'');',
'end;',
'/',
'',
'alter trigger eba_cust_clicks_biu enable;',
''))
);
wwv_flow_imp.component_end;
end;
/

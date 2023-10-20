prompt --application/create_application
begin
--   Manifest
--     FLOW: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_ADMCI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Customers')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CUSTOMERS')
,p_application_group=>wwv_flow_imp.id(169911979044479321)
,p_application_group_name=>'Starter Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'F69AADE21055FA93F74648144646DA410A26D54BFD1521EAD958D9A330D4A6C9'
,p_checksum_salt_last_reset=>'20230511190325'
,p_bookmark_checksum_function=>'SH512'
,p_max_session_length_sec=>28800
,p_max_session_idle_sec=>28800
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'2.0.19 -> 2.0.20: Changed Notifications region(s) from plsql to report.',
'    Changed navigation bar to native APEX list.',
'2.0.20 -> 2.0.21: Changed Authentication scheme to use new "APEX_PACKAGED_APPLICATIONS" cookie',
'2.0.21 -> 2.0.22: Added confirm modal when enabling ACL',
'2.0.22 -> 2.0.23: Replaced mixed case column aliases in select statement for "Top Users" Interactive report',
'2.0.23 -> 2.0.24: Added "Rename Application" page and supporting application items, computations, substitution strings, item and region  changes on login pages, and UI Logo text replacement.',
'2.0.27 -> 2.0.28: Added Notifications to Mobile home page (400)',
'2.0.28 -> 2.0.29: Added "Username Format" and "Bulk Add Users" pages',
'2.2.35 -> 2.2.36: Error handling procedure updated to resolve bug 17516350',
'2.2.36 -> 2.2.37: Implemented redesigned administrative ACL controls',
'2.2.37 -> 2.2.38: Added Usage Metrics region plugin to page 50 (Customer details)'))
,p_authentication_id=>wwv_flow_imp.id(17806079147461175856)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'&APPLICATION_TITLE.'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'23.1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_security_scheme=>wwv_flow_imp.id(15972425992315226881)
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'N'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'eba_cust_fw.apex_error_handling'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_DATE_FORMAT'
,p_substitution_value_01=>'DD-MON-YYYY'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_substitution_string_03=>'APP_DATETIME_FORMAT'
,p_substitution_value_03=>'DD-MON-YYYY HH24:MI'
,p_substitution_string_04=>'APP_NAME'
,p_substitution_value_04=>'Customers'
,p_last_updated_by=>'ADMCI'
,p_last_upd_yyyymmddhh24miss=>'20231020021024'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>31
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
,p_copyright_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Name: #APP_NAME#',
'Copyright (c)2012, #YEAR# Oracle and/or its affiliates.',
'Licensed under the Universal Permissive License v 1.0 as shown ',
'at https://oss.oracle.com/licenses/upl/'))
);
wwv_flow_imp.component_end;
end;
/

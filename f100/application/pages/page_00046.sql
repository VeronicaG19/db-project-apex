prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_page.create_page(
 p_id=>46
,p_name=>'Application Activity'
,p_alias=>'APPLICATION-ACTIVITY'
,p_step_title=>'Application Activity'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14725940263846327844)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15972441769590229776)
,p_protection_level=>'C'
,p_help_text=>'This is a monthly calendar of application activity, reporting distinct number of users and number of page views by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch be'
||'tween the calendar view to the list view by clicking the <strong>list</strong> button.'
,p_page_component_map=>'08'
,p_last_upd_yyyymmddhh24miss=>'20230110134707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14972045576374130484)
,p_plug_name=>'Application Activity'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865011533427727726)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(distinct_users) ||'' Users / ''||',
'       trim(to_char(page_events,''999G999G999G990'')) ||'' Views''  Page_Events,',
'       log_day the_day',
'  from apex_workspace_log_archive',
' where application_id = :app_id',
' union all',
'select to_char(count( distinct USERID) ) ||'' Users / ''||',
'       trim(to_char(count(*),''999G999G999G990'')) ||'' Views''  Page_Events,',
'       trunc(time_stamp) the_day',
'  from apex_activity_log l',
' where flow_id = :app_id ',
'   and userid is not null ',
'   and time_stamp > trunc(sysdate)',
' group by trunc(time_stamp)',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attribute_01=>'THE_DAY'
,p_attribute_03=>'PAGE_EVENTS'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14972047589945130502)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865027762308727751)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17845904131713262310)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14865043262407727796)
);
wwv_flow_imp.component_end;
end;
/

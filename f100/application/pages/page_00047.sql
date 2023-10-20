prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_tab_set=>'TS1'
,p_name=>'Customer Updates'
,p_alias=>'CUSTOMER-UPDATES'
,p_step_title=>'Customer Updates'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14725940368001329117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_upd_yyyymmddhh24miss=>'20220823161428'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16429511793970979306)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865027762308727751)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17845904131713262310)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14865043262407727796)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16605118893797159905)
,p_name=>'Updates'
,p_template=>wwv_flow_imp.id(14865025228821727749)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(apex_escape.html(dbms_lob.substr(n.note,2000,1)),chr(10),''<br />'') comment_text,',
'        decode(c.name,null,'''','' <strong>[''||apex_escape.html(c.name)||'']</strong>'') attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(n.created_by) user_name,',
'        substr(n.created_by,0,2) user_icon,',
'        ''u-color-''|| (ora_hash(n.created_by,44) + 1) icon_modifier,',
'        apex_util.get_since(NVL(n.note_date, nvl(n.updated, n.created))) ||'' - ''||to_char(NVL(n.note_date, nvl(n.updated, n.created)),''Day DD-MON-YYYY HH24:MI'') comment_date,',
'        ''Edit'' as link,',
'        '''' as actions,',
'        n.created,',
'        n.id note_id',
'from EBA_CUST_NOTES n',
',    EBA_CUST_CONTACTS c',
'where n.CUSTOMER_ID = :P47_ID ',
'and   n.contact_id = c.id (+)',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Update'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        '' changed from "''||apex_escape.html(OLD_VALUE)||''"'' attribute_1,',
'        '' to "''||new_value||''"'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(changed_by) user_name,',
'        substr(changed_by,0,2) user_icon,',
'        ''u-color-''|| (ora_hash(changed_by,44) + 1) icon_modifier,',
'        apex_util.get_since(CHANGE_DATE)||'' - ''||to_char(CHANGE_DATE,''Day DD-MON-YYYY HH24:MI'') comment_date,',
'        '' '' as link,',
'        '' '' as actions,',
'        change_date as created,',
'        null note_id',
'from EBA_CUST_HISTORY f',
'where component_id = :P47_ID',
'    and table_name = ''CUSTOMERS''',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Product Update'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        '' changed from "''||apex_escape.html(OLD_VALUE)||''"'' attribute_1,',
'        '' to "''||new_value||''"'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(changed_by) user_name,',
'        substr(changed_by,0,2) user_icon,',
'        ''u-color-''|| (ora_hash(changed_by,44) + 1) icon_modifier,',
'        apex_util.get_since(CHANGE_DATE)||'' - ''||to_char(CHANGE_DATE,''Day DD-MON-YYYY HH24:MI'') comment_date,',
'        '' '' as link,',
'        '' '' as actions,',
'        change_date as created,',
'        null note_id',
'from EBA_CUST_HISTORY f',
'where component_id = :P47_ID',
'    and table_name = ''PRODUCT_USES''',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Contact Update'' note_type,',
'        decode(sign(eba_cust.get_authorization_level(:APP_USER)-1),',
'            1, ''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':37:''||:APP_SESSION||''::NO::P37_ID:''||cc.id)',
'                ||''">''||apex_escape.html(cc.name)||''</a>'',',
'            apex_escape.html(cc.name))',
'            ||'' ''||initcap(replace(replace(f.COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        '' changed from "''||apex_escape.html(f.OLD_VALUE)||''"'' attribute_1,',
'        '' to "''||f.new_value||''"'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(f.changed_by) user_name,',
'        substr(f.changed_by,0,2) user_icon,',
'        ''u-color-''|| (ora_hash(f.changed_by,44) + 1) icon_modifier,',
'        apex_util.get_since(f.CHANGE_DATE)||'' - ''||to_char(f.CHANGE_DATE,''Day DD-MON-YYYY HH24:MI'') comment_date,',
'        '' '' as link,',
'        '' '' as actions,',
'        f.change_date as created,',
'        null as note_id',
'from EBA_CUST_HISTORY f,',
'    eba_cust_contacts cc',
'where f.component_id = cc.id',
'    and cc.customer_id = :P47_ID',
'    and table_name = ''CONTACTS''',
'order by 11 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14865031508991727760)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>25
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No updates found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16605119178442159915)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16605119267413159915)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13532563802679718410)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16605119492299159915)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16605119570370159915)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16605119674168159915)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16605119778981159916)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13532563891534718411)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>11
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13532563987414718412)
,p_query_column_id=>9
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13532564118424718413)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>13
,p_column_heading=>'Icon Modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13532564175337718414)
,p_query_column_id=>11
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16625723665879365831)
,p_query_column_id=>12
,p_column_alias=>'LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.:CUST_NOTE:&DEBUG.:7:P7_ID:#NOTE_ID#'
,p_column_linktext=>'#LINK#'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>'''#NOTE_ID#'' is not null'
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_imp.id(15972441769590229776)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13532564340044718415)
,p_query_column_id=>13
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>15
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16605120191962159916)
,p_query_column_id=>14
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16639894366675824623)
,p_query_column_id=>15
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>9
,p_column_heading=>'Note Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16639893486368801922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16429511793970979306)
,p_button_name=>'POPNOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Update'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP,97:P97_CUSTOMER_ID:&P47_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16744021291463821732)
,p_name=>'P47_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16605118893797159905)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13532564373046718416)
,p_name=>'Refresh IRR on Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16639893486368801922)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13532564461217718417)
,p_event_id=>wwv_flow_imp.id(13532564373046718416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16605118893797159905)
);
wwv_flow_imp.component_end;
end;
/

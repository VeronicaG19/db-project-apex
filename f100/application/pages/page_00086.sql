prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_name=>'Referenceability'
,p_alias=>'REFERENCEABILITY'
,p_step_title=>'Referenceability'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14725940368001329117)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(14294115095684238899)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
,p_last_updated_by=>'VMORNEAU'
,p_last_upd_yyyymmddhh24miss=>'20230511190420'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1103449568394187783)
,p_plug_name=>'By Asset Commitment'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14865025228821727749)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(14961932192869383984)
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1103449696454187784)
,p_region_id=>wwv_flow_imp.id(1103449568394187783)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1327124736098192135)
,p_chart_id=>wwv_flow_imp.id(1103449696454187784)
,p_seq=>10
,p_name=>'Asset Commitment'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'reference_TYPE group_name,',
'(select count(distinct(customer_id)) ',
' from EBA_CUST_CUSTOMER_REFTYPE_REF rt , eba_cust_customers c',
' where rt.reference_type_id = t.id and c.id = rt.customer_id and ',
'       (NVL(:P86_CATEGORY,0) = 0 or c.CATEGORY_ID = :P86_CATEGORY) and',
'       (NVL(:P86_GEO,0) = 0 or :P86_GEO = c.geography_id)',
' ) cnt',
'from EBA_CUST_reference_TYPES t',
'order by 2 desc'))
,p_ajax_items_to_submit=>'P86_CATEGORY,P86_GEO'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'GROUP_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:RP,RIR,91:IR_REFERENCE_TYPE:&GROUP_NAME.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1327124788512192136)
,p_chart_id=>wwv_flow_imp.id(1103449696454187784)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1327124881430192137)
,p_chart_id=>wwv_flow_imp.id(1103449696454187784)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1327125051717192138)
,p_plug_name=>'By Phase'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14865025228821727749)
,p_plug_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(14961932192869383984)
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(1327125072103192139)
,p_region_id=>wwv_flow_imp.id(1327125051717192138)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(1327125205793192140)
,p_chart_id=>wwv_flow_imp.id(1327125072103192139)
,p_seq=>10
,p_name=>'Asset Commitment'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'status group_name,',
'(select count(distinct(c.id)) ',
' from eba_cust_customers c',
' where (NVL(:P86_CATEGORY,0) = 0 or c.CATEGORY_ID = :P86_CATEGORY) and ',
'       (NVL(:P86_GEO,0) = 0 or :P86_GEO = c.geography_id) and',
'       t.id = c.reference_phase_id) cnt',
'from EBA_CUST_REF_PHASE t',
'order by display_sequence, description'))
,p_ajax_items_to_submit=>'P86_CATEGORY,P86_GEO'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'GROUP_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:RP,RIR,91:IR_REF_PHASE,P91_CATEGORY:&GROUP_NAME.,&P86_CATEGORY.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1327125380867192142)
,p_chart_id=>wwv_flow_imp.id(1327125072103192139)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_min_step=>1
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(1327125341012192141)
,p_chart_id=>wwv_flow_imp.id(1327125072103192139)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15777693202902381704)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865027762308727751)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17845904131713262310)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14865043262407727796)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15777751341003526104)
,p_plug_name=>'Customer Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14865025228821727749)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, nvl(to_number(value,''999G999G990''),0) value, url from (',
'with data as (',
'    select count(*) total,',
'        sum(decode(marquee_customer_yn,''Y'',1,0)) marquee,',
'        sum(decode(referencable,''Yes'',1,0)) ref',
'    from eba_cust_customers c',
'    where (NVL(:P86_CATEGORY,0) = 0 or CATEGORY_ID = :P86_CATEGORY) and',
'          (NVL(:P86_GEO,0) = 0 or :P86_GEO = c.geography_id)',
'), rws as (',
'    select level r from dual connect by level < 4',
')',
'select rws.r display_order,',
'    decode(rws.r, 1, ''Customers Tracked'',    2, ''Marquee'',    3, ''Referenceable'')  label,',
'    decode(rws.r, 1, data.total, 2, data.marquee, 3, data.ref) value,',
'    decode(rws.r, 1, ''f?p=''||:APP_ID||'':59:''||:APP_SESSION||'':::59,RIR:'',',
'                  2, ''f?p=''||:APP_ID||'':59:''||:APP_SESSION||'':::59,RIR:IR_MARQUEE_CUSTOMER,P59_MARQUEE_CUST:Yes,Y'',',
'                  3, ''f?p=''||:APP_ID||'':59:''||:APP_SESSION||'':::59,RIR:IR_REFERENCABLE,P59_REFERENCEABLE:Yes,Yes:'') url',
'from data, rws',
'union all',
'select 4 display_order,',
'	''Products'' label,',
'	count(*) value,',
'	apex_util.prepare_url(''f?p=''||:APP_ID||'':44:''||:APP_SESSION||'':::44,RIR'') url',
'from eba_cust_products',
')',
'order by display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P86_CATEGORY,P86_GEO'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'4'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15777752174751527288)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14865011817367727728)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15777923685577708781)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865011533427727726)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'NO'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15850333075175556056)
,p_plug_name=>'by Recruitment Owner'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14865025228821727749)
,p_plug_display_sequence=>65
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REF_RECRUITMENT_OWNER RECRUITMENT_OWNER,',
'       count(*) customers',
'from EBA_CUST_CUSTOMERS c',
'where REF_RECRUITMENT_OWNER is not null and  ',
'     (NVL(:P86_CATEGORY,0) = 0 or c.CATEGORY_ID = :P86_CATEGORY) and',
'     (NVL(:P86_GEO,0) = 0 or :P86_GEO = c.geography_id)',
'group by REF_RECRUITMENT_OWNER'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_ajax_items_to_submit=>'P86_CATEGORY,P86_GEO'
,p_plug_query_num_rows=>15
,p_attribute_01=>'INITIALS'
,p_attribute_02=>'RECRUITMENT_OWNER'
,p_attribute_03=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:RP,91,RIR:IR_RECRUITMENT_OWNER,P91_CATEGORY:&RECRUITMENT_OWNER.,&P86_CATEGORY.'
,p_attribute_04=>'CUSTOMERS'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'50'
,p_attribute_15=>'TEXT'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'MODERN'
,p_attribute_18=>'AROUND'
,p_attribute_20=>'No data found.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15777768379817579375)
,p_button_sequence=>1000
,p_button_plug_id=>wwv_flow_imp.id(15777693202902381704)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14865042503238727794)
,p_button_image_alt=>'Reset'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15777752458941527289)
,p_name=>'P86_CATEGORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15777752174751527288)
,p_item_default=>'0'
,p_prompt=>'Category'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category d, id r',
'  from EBA_CUST_CATEGORIES',
' where is_active = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14865042088610727790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15879746006514595714)
,p_name=>'P86_GEO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15777752174751527288)
,p_prompt=>'Geography'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GEOGRAPHY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GEOGRAPHY_NAME display_value, ID return_value ',
'from EBA_CUST_GEOGRAPHIES',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All - '
,p_lov_null_value=>'0'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14865042088610727790)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15879748794383653190)
,p_name=>'cat'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_CATEGORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15879750100868655889)
,p_event_id=>wwv_flow_imp.id(15879748794383653190)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15850333075175556056)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15879752457402666744)
,p_event_id=>wwv_flow_imp.id(15879748794383653190)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15777751341003526104)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15879750397225660251)
,p_name=>'geo'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_GEO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15879751718038663027)
,p_event_id=>wwv_flow_imp.id(15879750397225660251)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15850333075175556056)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15879752114445664632)
,p_event_id=>wwv_flow_imp.id(15879750397225660251)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15777751341003526104)
);
wwv_flow_imp.component_end;
end;
/

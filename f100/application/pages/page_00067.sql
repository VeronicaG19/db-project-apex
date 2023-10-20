prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_tab_set=>'TS1'
,p_name=>'Products'
,p_alias=>'PRODUCTS2'
,p_step_title=>'Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14725940368001329117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20230110134707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16599777085926493237)
,p_plug_name=>'Products'
,p_region_name=>'PRODUCTS'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_imp.id(14865024786049727746)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id,',
'    p.id id2,',
'    u.product_id,',
'    p.product_name,',
'    p.description,',
'    p.tags,',
'    p.is_active,',
'    u.valid_from,',
'    u.valid_to,',
'    nvl(u.updated, u.created) last_updated,',
'    lower(nvl(u.updated_by, u.created_by)) last_updated_by,',
'    u.reference_status_id,',
'    ''#'' delete_link,',
'    (',
'        select listagg(rt.reference_type,'', '') within group (order by rt.reference_type)',
'          from eba_cust_reference_types rt',
'         where '':''||u.reference_type_ids||'':'' like ''%:''||rt.id||'':%''',
'    ) as reference_types,',
'    decode( u.customer_contact_id, null, null, (select decode(email, null, name, ''<a href="mailto:''',
'                                                              || apex_escape.html(email) || ''">''',
'                                                              || apex_escape.html(name) || ''</a>'')',
'                                                from EBA_CUST_CONTACTS where id = u.customer_contact_id) ) as customer_contact,',
'       case when instr(nvl(u.internal_contact,''xxx''), ''@'') = 0 then apex_escape.html(u.internal_contact)',
'           else ''<a href="mailto:'' || apex_escape.html(u.internal_contact) || ''">''',
'                   || apex_escape.html(u.internal_contact) || ''</a>'' end as internal_contact',
'from eba_cust_product_uses u,',
'    eba_cust_products p',
'where u.customer_id = :P67_ID',
'    and u.product_id = p.id',
'order by u.created desc'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16599777281809493237)
,p_name=>'Products'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No products found'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'CBCHO'
,p_internal_uid=>2528506519570742504
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14878912049907077328)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'AE'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16601262365953272464)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16599777475507493242)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16599777567244493242)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16599777677142493242)
,p_db_column_name=>'TAGS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16599777774605493243)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Is Active'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(17808217284645187042)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16601261592356261110)
,p_db_column_name=>'DELETE_LINK'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Remove'
,p_column_link=>'f?p=&APP_ID.:67:&SESSION.:DELETE_PRODUCT:&DEBUG.::P67_DELETE_PROD_ID:#PRODUCT_ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'class="t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete Product: #PRODUCT_NAME#"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14293977150880200915)
,p_db_column_name=>'VALID_FROM'
,p_display_order=>261
,p_column_identifier=>'AF'
,p_column_label=>'Valid From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14293977807853200918)
,p_db_column_name=>'VALID_TO'
,p_display_order=>262
,p_column_identifier=>'AG'
,p_column_label=>'Valid To'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14294019318521260638)
,p_db_column_name=>'ID2'
,p_display_order=>263
,p_column_identifier=>'AH'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_CUSTOMER_ID,P68_ID,P68_PRODUCT_ID:&P67_ID.,#ID#,#PRODUCT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005393843213878002)
,p_db_column_name=>'REFERENCE_STATUS_ID'
,p_display_order=>273
,p_column_identifier=>'AI'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(14286965666729463416)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005393937818878003)
,p_db_column_name=>'REFERENCE_TYPES'
,p_display_order=>283
,p_column_identifier=>'AJ'
,p_column_label=>'Reference Assets'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005394028587878004)
,p_db_column_name=>'CUSTOMER_CONTACT'
,p_display_order=>293
,p_column_identifier=>'AK'
,p_column_label=>'Customer Contact'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005394129210878005)
,p_db_column_name=>'INTERNAL_CONTACT'
,p_display_order=>303
,p_column_identifier=>'AL'
,p_column_label=>'Internal Contact'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005394611486878010)
,p_db_column_name=>'LAST_UPDATED'
,p_display_order=>313
,p_column_identifier=>'AM'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005394743950878011)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>323
,p_column_identifier=>'AN'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16599779791707577054)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25285091'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID2:PRODUCT_NAME:VALID_FROM:VALID_TO:REFERENCE_STATUS_ID:REFERENCE_TYPES:CUSTOMER_CONTACT:INTERNAL_CONTACT:LAST_UPDATED:LAST_UPDATED_BY:DELETE_LINK'
,p_sort_column_1=>'PRODUCT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16599778589381493244)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865027762308727751)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17845904131713262310)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14865043262407727796)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16599778483571493243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16599778589381493244)
,p_button_name=>'ADD_PRODUCT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Product'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68:P68_CUSTOMER_ID:&P67_ID.'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16599781277424591830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16599777085926493237)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14865042229246727792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16599781092184586579)
,p_name=>'P67_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16599777085926493237)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16601375692965280260)
,p_name=>'P67_DELETE_PROD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16599777085926493237)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(16600646175643381189)
,p_computation_sequence=>10
,p_computation_item=>'P50_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P67_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13532564966429718422)
,p_name=>'Refresh IRR on close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16599778483571493243)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13532565061123718423)
,p_event_id=>wwv_flow_imp.id(13532564966429718422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16599777085926493237)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12005394253143878006)
,p_name=>'Refresh IRR on Edit Close'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16599777085926493237)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12005394310066878007)
,p_event_id=>wwv_flow_imp.id(12005394253143878006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16599777085926493237)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16601376270024292556)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete product'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_cust_product_uses',
'where product_id = :P67_DELETE_PROD_ID',
'and customer_id = :P67_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'DELETE_PRODUCT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Product deleted'
,p_security_scheme=>wwv_flow_imp.id(15972441769590229776)
,p_internal_uid=>16594086382714334663
);
wwv_flow_imp.component_end;
end;
/

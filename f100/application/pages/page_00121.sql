prompt --application/pages/page_00121
begin
--   Manifest
--     PAGE: 00121
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
 p_id=>121
,p_name=>'Email Log'
,p_alias=>'EMAIL-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14725939790034325989)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(15681513576540687430)
,p_required_patch=>wwv_flow_imp.id(18737101389772536342)
,p_protection_level=>'C'
,p_help_text=>'<p>Use this Interactive Report to view the log of emails sent from this application. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, f'
||'ilter, format, download, and/or save the interactive report.</p>'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20230110134707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18741138551127473332)
,p_plug_name=>'Status Update Requests'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865024786049727746)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email_from, email_to, email_first_to, ',
'    body_size, created, initcap(replace(email_type,''_'','' '')) as email_type',
'from eba_cust_email_log',
'where created is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18741138854275473333)
,p_name=>'Status Update Requests'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No sent emails found.'
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
,p_owner=>'MIKE'
,p_internal_uid=>17678314000680038760
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18741138982033473340)
,p_db_column_name=>'EMAIL_FROM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18741139401906473344)
,p_db_column_name=>'EMAIL_TO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Full Email To List'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18741139761668473344)
,p_db_column_name=>'EMAIL_FIRST_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18741140230518473345)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Update Request'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18741140653519473345)
,p_db_column_name=>'BODY_SIZE'
,p_display_order=>18
,p_column_identifier=>'L'
,p_column_label=>'Message Length (bytes)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18741141012669473346)
,p_db_column_name=>'EMAIL_TYPE'
,p_display_order=>28
,p_column_identifier=>'M'
,p_column_label=>'Email Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18741141359982473349)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'176783166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMAIL_FIRST_TO:BODY_SIZE:CREATED:EMAIL_TYPE'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18741151856249473353)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18741138551127473332)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14865042229246727792)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:56,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/

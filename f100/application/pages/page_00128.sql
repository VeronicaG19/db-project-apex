prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_name=>'Data Load Results'
,p_alias=>'DATA-LOAD-RESULTS2'
,p_step_title=>'Data Load Results'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(14725939790034325989)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15681513576540687430)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20230510181115'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18140836921989736324)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865027762308727751)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(17845904131713262310)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14865043262407727796)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18140837554425736325)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_imp.id(14865028456605727754)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(18140774813800733470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(14865041266293727787)
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18140837900603736325)
,p_plug_name=>'Data Load Results'
,p_parent_plug_id=>wwv_flow_imp.id(18140837554425736325)
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18140840714697736328)
,p_name=>'Failed Records'
,p_parent_plug_id=>wwv_flow_imp.id(18140837554425736325)
,p_template=>wwv_flow_imp.id(14865022116925727743)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c047 in (''FAILED'') ',
' order by seq_id'))
,p_display_when_condition=>'P128_ERROR_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || apex_escape.html(l_heading.label);',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140841387179736332)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140841813240736332)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140842161849736332)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140842578517736333)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140843016285736333)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140843436913736333)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140843789764736334)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140844223273736334)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140844598117736334)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140845022103736335)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140845374623736335)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140845787764736335)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140846240000736336)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140846560682736336)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140846986983736336)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140847427916736337)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140847790135736337)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140848252933736338)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140848570398736338)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140849001506736338)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140849438968736339)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140849827445736339)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140850188843736339)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140850601126736339)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140851026740736340)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140851355213736340)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140851818282736340)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140852244276736341)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140852630702736341)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140853042778736342)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140853450679736342)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140853789703736342)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140854162074736343)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140854570519736343)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140855031788736343)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140855377335736344)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140855824424736344)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140856196426736344)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140856643948736345)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140857047886736345)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140857365397736345)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140857768535736346)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140858189260736346)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140858558104736346)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140858990097736347)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140859409195736347)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140859779408736347)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(18140860509444736357)
,p_name=>'Records Changed by Another User.'
,p_parent_plug_id=>wwv_flow_imp.id(18140837554425736325)
,p_template=>wwv_flow_imp.id(14865025228821727749)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''REVIEW'') ',
' order by seq_id'))
,p_display_when_condition=>'P128_REVIEW_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || apex_escape.html(l_heading.label);',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140861174665736360)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140861554177736360)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140861986925736360)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140862418006736361)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140862764321736361)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140863241427736361)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140863612903736362)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140863997451736362)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140864376781736362)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140864806283736365)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140865218274736366)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140865589798736366)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140865956678736366)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140866399036736367)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140866807028736367)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140867182030736368)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140867633793736368)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140867955549736368)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140868371011736369)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140868778045736369)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140869242304736369)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140869632919736370)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140869977410736370)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140870372110736370)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140870781475736371)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140871220251736371)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140871591805736371)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140871965563736372)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140872438291736372)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140872759713736372)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140873237734736373)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140873642927736373)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140874038552736374)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140874364193736374)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140874821097736375)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140875233983736375)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140875648942736375)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140875964869736376)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140876361434736376)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140876843112736377)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140877243876736377)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140877580672736377)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140877973807736378)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140878372966736378)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140878785097736378)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140879251658736379)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(18140879567116736379)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18140838352565736326)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18140837554425736325)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18140838660022736326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18140837554425736325)
,p_button_name=>'FINISH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:CUSTOMERS:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18140839174363736327)
,p_name=>'P128_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18140837900603736325)
,p_prompt=>'Inserted Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_field_template=>wwv_flow_imp.id(14865042088610727790)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18140839591982736327)
,p_name=>'P128_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18140837900603736325)
,p_prompt=>'Updated Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_field_template=>wwv_flow_imp.id(14865042088610727790)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18140840011572736328)
,p_name=>'P128_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18140837900603736325)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failed Row(s):'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_field_template=>wwv_flow_imp.id(14865042088610727790)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18140840449184736328)
,p_name=>'P128_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18140837900603736325)
,p_prompt=>'To be Reviewed Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_field_template=>wwv_flow_imp.id(14865042088610727790)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
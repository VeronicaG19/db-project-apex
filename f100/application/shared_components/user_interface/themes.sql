prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(14865044509504727800)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(14864982116364727686)
,p_default_dialog_template=>wwv_flow_imp.id(14864998315927727706)
,p_error_template=>wwv_flow_imp.id(14864991282559727698)
,p_printer_friendly_template=>wwv_flow_imp.id(14864982116364727686)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(14864991282559727698)
,p_default_button_template=>wwv_flow_imp.id(14865043032408727795)
,p_default_region_template=>wwv_flow_imp.id(14865025228821727749)
,p_default_chart_template=>wwv_flow_imp.id(14865025228821727749)
,p_default_form_template=>wwv_flow_imp.id(14865025228821727749)
,p_default_reportr_template=>wwv_flow_imp.id(14865025228821727749)
,p_default_tabform_template=>wwv_flow_imp.id(14865025228821727749)
,p_default_wizard_template=>wwv_flow_imp.id(14865025228821727749)
,p_default_menur_template=>wwv_flow_imp.id(14865027762308727751)
,p_default_listr_template=>wwv_flow_imp.id(14865025228821727749)
,p_default_irr_template=>wwv_flow_imp.id(14865024786049727746)
,p_default_report_template=>wwv_flow_imp.id(14865031889488727762)
,p_default_label_template=>wwv_flow_imp.id(14865042088610727790)
,p_default_menu_template=>wwv_flow_imp.id(14865043262407727796)
,p_default_calendar_template=>wwv_flow_imp.id(14865043357075727798)
,p_default_list_template=>wwv_flow_imp.id(14865037015806727773)
,p_default_nav_list_template=>wwv_flow_imp.id(14865040220037727780)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(14865040220037727780)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(14865041071404727785)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(14865011817367727728)
,p_default_dialogr_template=>wwv_flow_imp.id(14865011533427727726)
,p_default_option_label=>wwv_flow_imp.id(14865042088610727790)
,p_default_header_template=>wwv_flow_imp.id(14865011533427727726)
,p_default_footer_template=>wwv_flow_imp.id(14865011533427727726)
,p_default_required_label=>wwv_flow_imp.id(14865042163985727791)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

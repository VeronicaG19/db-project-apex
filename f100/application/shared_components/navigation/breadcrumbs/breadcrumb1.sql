prompt --application/shared_components/navigation/breadcrumbs/breadcrumb1
begin
--   Manifest
--     MENU: Breadcrumb1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(17803838934168915832)
,p_name=>'Breadcrumb1'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15834876770812142921)
,p_parent_id=>wwv_flow_imp.id(15696119768001399120)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17804048828459952014)
,p_parent_id=>wwv_flow_imp.id(17804073537651068225)
,p_short_name=>'Customer Details'
,p_link=>'f?p=&APP_ID.:2:&SESSION.:HOME_CUSTOMER_DETAILS:&DEBUG.:RP,7::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17804073537651068225)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/

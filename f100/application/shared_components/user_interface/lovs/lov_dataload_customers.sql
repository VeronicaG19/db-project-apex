prompt --application/shared_components/user_interface/lovs/lov_dataload_customers
begin
--   Manifest
--     LOV_DATALOAD_CUSTOMERS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(15805446861867971800)
,p_lov_name=>'LOV_DATALOAD_CUSTOMERS'
,p_lov_query=>'.'||wwv_flow_imp.id(15805446861867971800)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805459010430971815)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unique ID'
,p_lov_return_value=>'ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805455773898971813)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Customer Name'
,p_lov_return_value=>'CUSTOMER_NAME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805462564815971819)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Status'
,p_lov_return_value=>'STATUS_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805447731857971807)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Category'
,p_lov_return_value=>'CATEGORY_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805458540496971814)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Geography'
,p_lov_return_value=>'GEOGRAPHY_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805459386576971815)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Industry'
,p_lov_return_value=>'INDUSTRY_ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805463816987971820)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Tags'
,p_lov_return_value=>'TAGS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805460999013971817)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Referenceable Y/N'
,p_lov_return_value=>'REFERENCABLE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805460133422971817)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Marque Customer Y/N'
,p_lov_return_value=>'MARQUEE_CUSTOMER_YN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805460542607971817)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'Number of Users'
,p_lov_return_value=>'NUMBER_OF_USERS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805463383414971820)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'Summary'
,p_lov_return_value=>'SUMMARY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805463017844971819)
,p_lov_disp_sequence=>200
,p_lov_disp_value=>'Stock Symbol'
,p_lov_return_value=>'STOCK_SYMBOL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805457793820971814)
,p_lov_disp_sequence=>210
,p_lov_disp_value=>'DUNS #'
,p_lov_return_value=>'DUNS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805462210599971819)
,p_lov_disp_sequence=>220
,p_lov_disp_value=>'SIC'
,p_lov_return_value=>'SIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805465373066971821)
,p_lov_disp_sequence=>230
,p_lov_disp_value=>'Web Site'
,p_lov_return_value=>'WEB_SITE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805459764495971817)
,p_lov_disp_sequence=>240
,p_lov_disp_value=>'LinkedIn'
,p_lov_return_value=>'LINKEDIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805457002340971813)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Customer Profile'
,p_lov_return_value=>'CUSTOMER_PROFILE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805458156014971814)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Facebook'
,p_lov_return_value=>'FACEBOOK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15805464170532971820)
,p_lov_disp_sequence=>260
,p_lov_disp_value=>'Twitter'
,p_lov_return_value=>'TWITTER'
);
wwv_flow_imp.component_end;
end;
/

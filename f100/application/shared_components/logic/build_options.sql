prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>7288496378550840
,p_default_application_id=>100
,p_default_id_offset=>7289887309957893
,p_default_owner=>'WKSP_ADMCI'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1168921562778850354)
,p_build_option_name=>'Display Row Key'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Row Keys are alphanumeric unique identifiers that can be used to easily identify a specific customer.  If you wish to see these unique identifiers in the application set to Include; if you do not wish to see these unique identifiers in the applicatio'
||'n set to exclude.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1169003738972923996)
,p_build_option_name=>'Discount Percentage'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Include a customer attribute that tracks discount percentage at the customer level.  Including the discount will allow this value to be displayed and edited within the application.  Excluding this attribute will hide this feature from the application'
||'.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1169004022529930107)
,p_build_option_name=>'Total Contract Value (TCV)'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'A status of include will expose an Total Contract Value (TCV) attribute of customers.  A status of exclude will hide the attribute.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1169005146552956865)
,p_build_option_name=>'Annual Recurring Revenue (ARR)'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'A status of include will expose an Annual Recurring Revenue attribute of customers.  A status of exclude will hide the attribute.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1342641366277707490)
,p_build_option_name=>'Competitors'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows the tracking of competitors, and which customers they are competing against you on.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1345792954181732172)
,p_build_option_name=>'Partners'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows the tracking of partners, and which customers they are working with you on.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(2571984246546814706)
,p_build_option_name=>'Issues'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows end-users to capture and record customer issues.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14294115095684238899)
,p_build_option_name=>'Customer Referencability'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support reference attributes at the customer level.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14294173512413313051)
,p_build_option_name=>'Product Referencability'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support reference attributes at the customer product level.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14881256160658808666)
,p_build_option_name=>'Number_of_users'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Expose the number of users attribute'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14942565288440342799)
,p_build_option_name=>'Content Completeness Widget'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Content Completeness" plugin region is displayed on the Customer details page or not.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14942565481754345916)
,p_build_option_name=>'Validations Widget'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Validations" plugin region is displayed on the Customer details page or not.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14961932192869383984)
,p_build_option_name=>'Geography'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Including will allow reporting and management of geography by customer.  Excluding will not show the geography attribute for customers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14961955477347649421)
,p_build_option_name=>'Products and Services'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Use this build option to enable or disable products and services application functionality.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14961962765220715872)
,p_build_option_name=>'Contacts'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Use this build option to enable or disable tracking of customer contacts.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14962029469417774328)
,p_build_option_name=>'Reports'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Enable or disable the application reporting tab that provides summary reporting of application data.  Disable this option to keep the application more terse and focused, enable this option to enable additional reporting functionality.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(14962107289247494087)
,p_build_option_name=>'Customer Data Loading'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allow application contributors to load customer data from CSV files or cut and paste via a data loading wizard.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(16894182855749235510)
,p_build_option_name=>'Strategic Customer Program'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support tracking whether a customer is a "Strategic Customer Program" customer or not.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(16933547512833897604)
,p_build_option_name=>'Countries'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Including will allow reporting and management of countries by customer. Excluding will not show the country attribute for customers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(17123489744117569743)
,p_build_option_name=>'Customer Use Case'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support a use case status attribute at the customer level (development, test/stage, production, etc...).'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(17145291150133647965)
,p_build_option_name=>'Customer Status'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support a status attribute at the customer level.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(18144718804751582674)
,p_build_option_name=>'Activities'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows the tracking of contacts who have attended various events.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(18737101389772536342)
,p_build_option_name=>'Feedback'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows end-users to submit feedback about the application that can be emailed and viewed by application administrators.'
);
wwv_flow_imp.component_end;
end;
/

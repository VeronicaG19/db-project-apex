prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
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
 p_id=>wwv_flow_imp.id(17845904131713262310)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1366279305921198979)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'ACL Features'
,p_link=>'f?p=&APP_ID.:123:&SESSION.'
,p_page_id=>123
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2035595785432244298)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Application Timeline'
,p_link=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:::'
,p_page_id=>124
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2571960411527692976)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Issues'
,p_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_page_id=>131
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2572223531770586692)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Issue Statuses'
,p_link=>'f?p=&APP_ID.:132:&SESSION.'
,p_page_id=>132
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2572377345240455840)
,p_short_name=>'Issues'
,p_link=>'f?p=&APP_ID.:134:&SESSION.'
,p_page_id=>134
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13548599876024191330)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'All Customers'
,p_link=>'f?p=&APP_ID.:93:&SESSION.'
,p_page_id=>93
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14286419174396278749)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Reference Statuses'
,p_link=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.:::'
,p_page_id=>94
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14725946488458342180)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Page Privileges'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14743100291026801076)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Application Settings'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14821130372083671028)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Username Format'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14821140493999692802)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14821158566866731815)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14853693090078307435)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Industries'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14853693784279307442)
,p_parent_id=>wwv_flow_imp.id(14853693090078307435)
,p_short_name=>'Industry'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14870345566726821337)
,p_parent_id=>0
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::'
,p_page_id=>59
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14879462402311520556)
,p_short_name=>'Preferences'
,p_link=>'f?p=&APP_ID.:65:&SESSION.'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14939757482116744764)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Validate Customer'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14942571666637368705)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Build Options'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14945440391376398850)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Usage Metrics'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14961923183016321161)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Application Activity by Page'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14972047786120130502)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Application Activity'
,p_link=>'f?p=&APP_ID.:46:&SESSION.'
,p_page_id=>46
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15073763991221955568)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Welcome Text'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15241010967170650051)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:70:&SESSION.'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15391700970349254240)
,p_parent_id=>0
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:::'
,p_page_id=>77
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15647585249731354920)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Reference Types'
,p_link=>'f?p=&APP_ID.:78:&SESSION.'
,p_page_id=>78
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15647601361936418207)
,p_parent_id=>wwv_flow_imp.id(15647585249731354920)
,p_short_name=>'Reference Type Details'
,p_link=>'f?p=&APP_ID.:79:&SESSION.'
,p_page_id=>79
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15696119768001399120)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Access Control List'
,p_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
,p_page_id=>57
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15776773294514221711)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Customers by Category'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15776778674047271434)
,p_parent_id=>wwv_flow_imp.id(14870345566726821337)
,p_short_name=>'Geographies'
,p_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
,p_page_id=>85
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15777694117431381708)
,p_parent_id=>wwv_flow_imp.id(14870345566726821337)
,p_short_name=>'Referenceability'
,p_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_page_id=>86
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15825030346278016221)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Reference Phases'
,p_link=>'f?p=&APP_ID.:87:&SESSION.'
,p_page_id=>87
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15825031590233016223)
,p_parent_id=>wwv_flow_imp.id(15825030346278016221)
,p_short_name=>'Reference Phase'
,p_link=>'f?p=&APP_ID.:88:&SESSION.'
,p_page_id=>88
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15849925800082875307)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Sales Channels'
,p_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:::'
,p_page_id=>89
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15849927602574884145)
,p_short_name=>'Sales Channel'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15862263482358891106)
,p_parent_id=>wwv_flow_imp.id(15696119768001399120)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15875239381692918836)
,p_parent_id=>wwv_flow_imp.id(15777694117431381708)
,p_short_name=>'Referenceability Report'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15875868346292741027)
,p_short_name=>'Products'
,p_link=>'f?p=&FLOW_ID.:92:&SESSION.'
,p_page_id=>92
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15893515163813968057)
,p_parent_id=>wwv_flow_imp.id(17846040954567969000)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15893522888097968080)
,p_parent_id=>wwv_flow_imp.id(17846040954567969000)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:61:&SESSION.'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15893525087087968083)
,p_parent_id=>wwv_flow_imp.id(17846040954567969000)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15893531994707968092)
,p_parent_id=>wwv_flow_imp.id(17846040954567969000)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:63:&SESSION.'
,p_page_id=>63
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15971702887723080260)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Access Control Configuration'
,p_link=>'f?p=&FLOW_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16315009576583094949)
,p_short_name=>'Search Results'
,p_link=>'f?p=&FLOW_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16352390463435820454)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Notifications'
,p_link=>'f?p=&FLOW_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16352868484572900916)
,p_parent_id=>wwv_flow_imp.id(16352390463435820454)
,p_short_name=>'Notification'
,p_link=>'f?p=&FLOW_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16428451676152776081)
,p_parent_id=>wwv_flow_imp.id(14870345566726821337)
,p_short_name=>'&CUSTOMER.'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16429512090451979307)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Updates'
,p_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16429654686539000457)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Links'
,p_link=>'f?p=&FLOW_ID.:51:&SESSION.'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16429690973198003503)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Attachments'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16595877493449261000)
,p_parent_id=>wwv_flow_imp.id(16429690973198003503)
,p_short_name=>'Customer Attachment'
,p_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:::'
,p_page_id=>64
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16597158466292336325)
,p_parent_id=>wwv_flow_imp.id(16429654686539000457)
,p_short_name=>'Link'
,p_link=>'f?p=&FLOW_ID.:66:&SESSION.'
,p_page_id=>66
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16599778964706493244)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Products'
,p_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16599779285054493246)
,p_parent_id=>wwv_flow_imp.id(16599778964706493244)
,p_short_name=>'Product'
,p_link=>'f?p=&FLOW_ID.:68:&SESSION.'
,p_page_id=>68
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16599917779519470193)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Contacts'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16599918088123470194)
,p_parent_id=>wwv_flow_imp.id(16599917779519470193)
,p_short_name=>'Customer Contact'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16617168693178233195)
,p_parent_id=>wwv_flow_imp.id(14879462402311520556)
,p_short_name=>'Time Zone'
,p_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
,p_page_id=>76
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16639888265296561554)
,p_parent_id=>wwv_flow_imp.id(16429512090451979307)
,p_short_name=>'Maintain Update'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16715423090862240764)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Application Error Log'
,p_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16743391564884572865)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&FLOW_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16933507769188886360)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Countries'
,p_link=>'f?p=&APP_ID.:98:&SESSION.'
,p_page_id=>98
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17007413666411190379)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Customer Statuses'
,p_link=>'f?p=&APP_ID.:102:&SESSION.'
,p_page_id=>102
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17007452941920155496)
,p_parent_id=>wwv_flow_imp.id(17007413666411190379)
,p_short_name=>'Status Details'
,p_link=>'f?p=&APP_ID.:103:&SESSION.'
,p_page_id=>103
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17132230017104728390)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Customer Use Cases'
,p_link=>'f?p=&APP_ID.:104:&SESSION.'
,p_page_id=>104
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17132617873754782962)
,p_parent_id=>wwv_flow_imp.id(17132230017104728390)
,p_short_name=>'Use Case Details'
,p_link=>'f?p=&APP_ID.:105:&SESSION.'
,p_page_id=>105
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17721422014750883332)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Implementation Partners'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17721424067257883344)
,p_parent_id=>wwv_flow_imp.id(17721422014750883332)
,p_short_name=>'Implementation Partner Details'
,p_link=>'f?p=&APP_ID.:107:&SESSION.'
,p_page_id=>107
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17721862273489052121)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Competitors'
,p_link=>'f?p=&APP_ID.:108:&SESSION.'
,p_page_id=>108
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17721863621417052137)
,p_parent_id=>wwv_flow_imp.id(17721862273489052121)
,p_short_name=>'Competitor Details'
,p_link=>'f?p=&APP_ID.:109:&SESSION.'
,p_page_id=>109
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17768291824491944725)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Product Families'
,p_link=>'f?p=&APP_ID.:112:&SESSION.'
,p_page_id=>112
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17768292999817944737)
,p_parent_id=>wwv_flow_imp.id(17768291824491944725)
,p_short_name=>'Product Family Details'
,p_link=>'f?p=&APP_ID.:113:&SESSION.'
,p_page_id=>113
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17783841428226085394)
,p_short_name=>'Partners'
,p_link=>'f?p=&FLOW_ID.:115:&SESSION.'
,p_page_id=>115
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17783908320310105573)
,p_short_name=>'Competitors'
,p_link=>'f?p=&APP_ID.:116:&SESSION.'
,p_page_id=>116
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17798627486758038284)
,p_short_name=>'Search Results'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17800746508902406931)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Updates'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17802044501523281676)
,p_parent_id=>0
,p_short_name=>'Help'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17810376990703260422)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Products'
,p_link=>'f?p=&FLOW_ID.:42:&SESSION.'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17810377193958260423)
,p_parent_id=>wwv_flow_imp.id(17810376990703260422)
,p_short_name=>'Product'
,p_link=>'f?p=&FLOW_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17810790103003408514)
,p_parent_id=>0
,p_short_name=>'Products and Services'
,p_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17810816688149994315)
,p_parent_id=>wwv_flow_imp.id(17810790103003408514)
,p_short_name=>'Customer Product Use'
,p_link=>'f?p=&FLOW_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17811220399707349252)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Activity'
,p_link=>'f?p=&FLOW_ID.:45:&SESSION.'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17811405394095618424)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Geographies'
,p_link=>'f?p=&FLOW_ID.:48:&SESSION.'
,p_page_id=>48
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17812712609981899972)
,p_parent_id=>wwv_flow_imp.id(17811405394095618424)
,p_short_name=>'Geography'
,p_link=>'f?p=&FLOW_ID.:49:&SESSION.'
,p_page_id=>49
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17818186789302553887)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Tags'
,p_link=>'f?p=&FLOW_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17845907244788285008)
,p_parent_id=>0
,p_short_name=>' Administration'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17845920952461741289)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Categories'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17845921439086746879)
,p_parent_id=>wwv_flow_imp.id(17845920952461741289)
,p_short_name=>'Category Details'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846031147192834424)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Contact Types'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846031526891838011)
,p_parent_id=>wwv_flow_imp.id(17846031147192834424)
,p_short_name=>' Contact Type Details'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846031939358841583)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Customer Types'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846032351956854703)
,p_parent_id=>wwv_flow_imp.id(17846031939358841583)
,p_short_name=>'Customer Type Code'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846040954567969000)
,p_parent_id=>0
,p_short_name=>' Contacts'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846041333919972493)
,p_parent_id=>wwv_flow_imp.id(17846040954567969000)
,p_short_name=>' Contact Details'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846042549288986413)
,p_parent_id=>0
,p_short_name=>' Dashboard'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846042933143991212)
,p_parent_id=>0
,p_short_name=>'Customer'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846049242718060181)
,p_parent_id=>0
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846053726835083926)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Recent Updates'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17846054744497089040)
,p_parent_id=>wwv_flow_imp.id(17846049242718060181)
,p_short_name=>'Top Users'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18140794106994736248)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18140810392728736282)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:126:&SESSION.'
,p_page_id=>126
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18140814684562736286)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:127:&SESSION.'
,p_page_id=>127
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18140837342904736325)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:128:&SESSION.'
,p_page_id=>128
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18144633260129552828)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Activity Types'
,p_link=>'f?p=&APP_ID.:53:&SESSION.'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18144634529211552833)
,p_parent_id=>wwv_flow_imp.id(18144633260129552828)
,p_short_name=>'Activity Type'
,p_link=>'f?p=&APP_ID.:54:&SESSION.'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18151529347108834982)
,p_short_name=>'Activities'
,p_link=>'f?p=&APP_ID.:55:&SESSION.'
,p_page_id=>55
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18151530492045834995)
,p_parent_id=>wwv_flow_imp.id(18151529347108834982)
,p_short_name=>'Activity Details'
,p_link=>'f?p=&APP_ID.:56:&SESSION.'
,p_page_id=>56
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18173971857913498098)
,p_parent_id=>wwv_flow_imp.id(18151529347108834982)
,p_short_name=>'&P145_ACTIVITY.'
,p_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:::'
,p_page_id=>145
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18186896180143933467)
,p_parent_id=>wwv_flow_imp.id(16428451676152776081)
,p_short_name=>'Customer Activities'
,p_link=>'f?p=&APP_ID.:149:&SESSION.'
,p_page_id=>149
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18186897359649933479)
,p_parent_id=>wwv_flow_imp.id(18186896180143933467)
,p_short_name=>'Customer Activity'
,p_link=>'f?p=&APP_ID.:150:&SESSION.'
,p_page_id=>150
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18737491528984610051)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Review Feedback'
,p_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:::'
,p_page_id=>119
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18741152906953473367)
,p_parent_id=>wwv_flow_imp.id(17845907244788285008)
,p_short_name=>'Email Log'
,p_link=>'f?p=&APP_ID.:121:&SESSION.'
,p_page_id=>121
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20252729752644716451)
,p_parent_id=>wwv_flow_imp.id(15875868346292741027)
,p_short_name=>'Referenceability'
,p_link=>'f?p=&APP_ID.:100:&SESSION.'
,p_page_id=>100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20315307667835053569)
,p_parent_id=>wwv_flow_imp.id(20252729752644716451)
,p_short_name=>'Referenceability Report'
,p_link=>'f?p=&APP_ID.:122:&SESSION.'
,p_page_id=>122
);
wwv_flow_imp.component_end;
end;
/

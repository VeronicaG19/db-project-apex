prompt --application/pages/page_00192
begin
--   Manifest
--     PAGE: 00192
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
 p_id=>192
,p_name=>'New User Details'
,p_alias=>'NEW-USER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'New User Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(14864998315927727706)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(15681513576540687430)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
,p_last_upd_yyyymmddhh24miss=>'20230110134707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3135029894972316578)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14865011817367727728)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5912291363909257980)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(14865025228821727749)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.prn(replace(',
'    apex_lang.message(''ACCESS_CONTROL_INFO''),',
'    ''#IMAGE_PREFIX''||''#'',',
'    :image_prefix));'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7015870066423033788)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14865025228821727749)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5912291570489259909)
,p_plug_name=>'Form Items'
,p_parent_plug_id=>wwv_flow_imp.id(7015870066423033788)
,p_plug_template=>wwv_flow_imp.id(14865011533427727726)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1169760651269554048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3135029894972316578)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_image_alt=>'Add and Add Another'
,p_button_position=>'CREATE'
,p_button_condition=>'P192_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1169761003785554048)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3135029894972316578)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'CREATE'
,p_button_condition=>'P192_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1169760239480554047)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3135029894972316578)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P192_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1169759800339554047)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3135029894972316578)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P192_SEQUENCE is not null and lower(:APP_USER) != lower(:P192_USERNAME)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1169759407353554047)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3135029894972316578)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14865043032408727795)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1169765617640554053)
,p_branch_name=>'Add and Add Another'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1169760651269554048)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1169756956047554045)
,p_name=>'P192_USERNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5912291570489259909)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when=>':P192_SEQUENCE is not null and lower(:APP_USER) = lower(:P192_USERNAME)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(14865042163985727791)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The username assigned by this user.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1169757796450554045)
,p_name=>'P192_ACCESS_LEVEL_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5912291570489259909)
,p_item_default=>'2'
,p_prompt=>'Access Level'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS_LEVELS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select access_level d, id r',
'  from eba_cust_access_levels',
' order by 1'))
,p_read_only_when=>':P192_SEQUENCE is not null and lower(:APP_USER) = lower(:P192_USERNAME)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(14865042163985727791)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The access level assigned to this user.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1169758737469554046)
,p_name=>'P192_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5912291570489259909)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1169762310358554049)
,p_validation_name=>'cannot update yourself'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_cust_users',
' where upper(username) = :APP_USER',
'   and upper(username) = upper(:P192_USERNAME)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot update your own record.'
,p_when_button_pressed=>wwv_flow_imp.id(1169760239480554047)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1169761869870554049)
,p_validation_name=>'P192_USERNAME Email is Valid'
,p_validation_sequence=>30
,p_validation=>'P192_USERNAME'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Please note the application''s username format below.'
,p_validation_condition=>'eba_cust_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(1169756956047554045)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1169761531041554049)
,p_validation_name=>'Username is unique'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''NEW_USERS''',
'and',
'    lower(c001) = lower(:P192_USERNAME)',
'and',
'    :P192_SEQUENCE is null;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This username has already been added. Please enter a unique username.'
,p_associated_item=>wwv_flow_imp.id(1169756956047554045)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1169764623945554052)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1169759407353554047)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1169765133002554052)
,p_event_id=>wwv_flow_imp.id(1169764623945554052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1169762594332554050)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add User to Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.add_member(',
'    p_collection_name => ''NEW_USERS'',',
'    p_c001            => lower(:P192_USERNAME),',
'    p_n001            => :P192_ACCESS_LEVEL_ID);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'&P192_USERNAME. added successfully.'
,p_internal_uid=>1162472707022596157
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1169763797451554051)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update User in Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.update_member(',
'    p_collection_name => ''NEW_USERS'',',
'    p_c001            => lower(:P192_USERNAME),',
'    p_n001            => :P192_ACCESS_LEVEL_ID,',
'    p_seq             => :P192_SEQUENCE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1169760239480554047)
,p_internal_uid=>1162473910141596158
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1169763381832554050)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove User from Collection'
,p_process_sql_clob=>'apex_collection.delete_member(p_collection_name => ''NEW_USERS'', p_seq => :P192_SEQUENCE);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1169759800339554047)
,p_internal_uid=>1162473494522596157
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1169763010945554050)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>1162473123635596157
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1169764227239554051)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1169760651269554048)
,p_internal_uid=>1162474339929596158
);
wwv_flow_imp.component_end;
end;
/

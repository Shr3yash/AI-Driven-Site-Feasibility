prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>14656292480558313
,p_default_application_id=>183
,p_default_id_offset=>0
,p_default_owner=>'TEAM25'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'AI Driven Clinical Site Feasibility v2'
,p_alias=>'AI-DRIVEN-CLINICAL-SITE-FEASIBILITY-V2'
,p_step_title=>'AI Driven Clinical Site Feasibility v2'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59595580367026389)
,p_plug_name=>'Clinical Site Feasibility'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'This application is used for clinical site feasibility'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32762013976628142)
,p_button_sequence=>50
,p_button_name=>'GET_SITES_AND_CALL_COHERE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Call Cohere and Get Sites v2'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62548595155079205)
,p_name=>'P10_OUTPUT'
,p_item_sequence=>60
,p_prompt=>'Output'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62548701392079206)
,p_name=>'P10_INPUT_GENDER'
,p_item_sequence=>10
,p_prompt=>'Input Gender'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62548957289079208)
,p_name=>'P10_INPUT_AGE'
,p_item_sequence=>20
,p_prompt=>'Input Age'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62549060885079209)
,p_name=>'P10_INPUT_ETHNICITY'
,p_item_sequence=>30
,p_prompt=>'Input Ethnicity'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62549116314079210)
,p_name=>'P10_INPUT_GEOGRAPHIC_REGION'
,p_item_sequence=>40
,p_prompt=>'Input Geographic Region'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32764727608628196)
,p_name=>'GetSites'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32762013976628142)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32765263621628200)
,p_event_id=>wwv_flow_imp.id(32764727608628196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'GET_SITES_AND_CALL_COHERE'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare l_output VARCHAR2(200);',
'BEGIN',
'l_output := GENERATE_RESPONSE_SIMILARITY_SEARCH(:P10_INPUT_GENDER, :P10_INPUT_AGE, :P10_INPUT_ETHNICITY, :P10_INPUT_GEOGRAPHIC_REGION);',
'',
':P10_OUTPUT := l_output;',
'',
'END;'))
,p_attribute_02=>'P10_INPUT_GENDER,P10_INPUT_AGE,P10_INPUT_ETHNICITY,P10_INPUT_GEOGRAPHIC_REGION'
,p_attribute_03=>'P10_OUTPUT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32764324047628194)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SITES_AND_CALL_COHERE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_user_vec VECTOR := get_embedding(:P10_INPUT);',
'  l_site_json CLOB;',
'BEGIN',
'  SELECT JSON_ARRAYAGG(',
'           JSON_OBJECT(',
'             ''site_id''      VALUE site_id,',
'             ''satisfaction'' VALUE satisfaction',
'           )',
'         )',
'  INTO l_site_json',
'  FROM (',
'    WITH uv AS (SELECT l_user_vec AS vec FROM DUAL)',
'    SELECT',
'      pd.site_id,',
'      pd.satisfaction,',
'      VECTOR_DISTANCE(',
'        pd.PATIENT_DEMOGRAPHICS_EMBEDDING2,',
'        uv.vec',
'      ) AS dist',
'    FROM   PATIENT_DEMOGRAPHICS pd',
'    CROSS JOIN uv',
'    WHERE  pd.study            = ''Oncology''',
'      AND  pd.country          = ''India''',
'      AND (pd.age             = :P10_AGE        OR :P10_AGE        IS NULL)',
'      AND (pd.gender          = :P10_GENDER     OR :P10_GENDER     IS NULL)',
'      AND (pd.ethnicity       = :P10_ETHNICITY  OR :P10_ETHNICITY  IS NULL)',
'      AND (pd.geographic_region = :P10_REGION   OR :P10_REGION     IS NULL)',
'    ORDER BY dist',
'  )',
'  WHERE ROWNUM <= 5;',
'',
'  :APEX$RETURN := APEX_WEB_SERVICE.MAKE_REST_REQUEST(',
'    p_url         => ''https://api.cohere.ai/generate'',',
'    p_http_method => ''POST'',',
'    p_parm_name   => APEX_UTIL.STRING_TO_TABLE(',
'                       ''Content-Type'',''Authorization''',
'                     ),',
'    p_parm_value  => APEX_UTIL.STRING_TO_TABLE(',
'                       ''application/json'',',
'                       ''Bearer '' || :P10_COHERE_API_KEY',
'                     ),',
'    p_body        => JSON_OBJECT(',
'                       ''model''     VALUE ''command'',',
'                       ''prompt''    VALUE :P10_INPUT',
'                                       || CHR(10)',
'                                       || ''Top Sites: '' || l_site_json,',
'                       ''max_tokens'' VALUE 200',
'                     )',
'  );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32764324047628194
);
wwv_flow_imp.component_end;
end;
/

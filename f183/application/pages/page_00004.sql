prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Feasibility Assistant'
,p_alias=>'FEASIBILITY-ASSISTANT'
,p_step_title=>'Feasibility Assistant'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27133354015557925)
,p_plug_name=>'Breadcrumb'
,p_title=>'Clinical Site Feasibility Assistant'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(26820227662398153)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27134679050614501)
,p_plug_name=>'Clinical Site Feasibility Assistant IP'
,p_parent_plug_id=>wwv_flow_imp.id(27133354015557925)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27135167378614506)
,p_plug_name=>'TOP_MATCHING_SITES'
,p_title=>'Top Matching Sites'
,p_parent_plug_id=>wwv_flow_imp.id(27134679050614501)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Site A'' AS name,',
'       ''New York'' AS location,',
'       ''Imaging, Labs'' AS capabilities,',
'       ''50'' AS target_patients',
'FROM dual',
'UNION ALL',
'SELECT ''Site B'', ''Chicago'', ''Pharmacy, Labs'', ''100'' FROM dual;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Top Matching Sites'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27135297739614507)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TEAM25DEV'
,p_internal_uid=>27135297739614507
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27135318033614508)
,p_db_column_name=>'NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27135428833614509)
,p_db_column_name=>'LOCATION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27135578973614510)
,p_db_column_name=>'CAPABILITIES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Capabilities'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27135649892614511)
,p_db_column_name=>'TARGET_PATIENTS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Target Patients'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27143666555664242)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'271437'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:LOCATION:CAPABILITIES:TARGET_PATIENTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27135046440614505)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27134679050614501)
,p_button_name=>'P4_SEARCH_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Search Matching Sites'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27134767140614502)
,p_name=>'P4_TRIAL_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27134679050614501)
,p_prompt=>'Trial Title'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27134953727614504)
,p_name=>'P4_TRIAL_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27134679050614501)
,p_prompt=>'Trial Description'
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
);
wwv_flow_imp.component_end;
end;
/

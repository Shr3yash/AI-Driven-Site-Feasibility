prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 183
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>14656292480558313
,p_default_application_id=>183
,p_default_id_offset=>0
,p_default_owner=>'TEAM25'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(26825879338398229)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(26835936600398328)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/

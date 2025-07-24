prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 183
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>14656292480558313
,p_default_application_id=>183
,p_default_id_offset=>0
,p_default_owner=>'TEAM25'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26819697014398147)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>45013279515858
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26836159916398330)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>45013279520883
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26836479857398332)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>45013279521005
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
wwv_flow_imp.component_end;
end;
/

prompt --workspace/credentials/app_183_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 183 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>14656292480558313
,p_default_application_id=>183
,p_default_id_offset=>0
,p_default_owner=>'TEAM25'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(26843191229398371)
,p_name=>'App 183 Push Notifications Credentials'
,p_static_id=>'App_183_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/

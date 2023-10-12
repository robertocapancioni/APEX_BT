return apex_acl.has_user_any_roles ();
return apex_acl.has_user_role (p_role_static_id =>'ADMINISTRATOR');
apex_app_setting.set_value (
            p_name  => 'ACCESS_CONTROL_SCOPE',
            p_value => 'ALL_USERS');
return apex_app_setting.get_value( p_name => 'ACCESS_CONTROL_SCOPE');

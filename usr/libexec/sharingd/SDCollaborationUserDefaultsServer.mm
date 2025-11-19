@interface SDCollaborationUserDefaultsServer
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)requestCollaborativeModeForContentIdentifier:(id)a3 completionHandler:(id)a4;
- (void)saveCollaborativeMode:(id)a3 forContentIdentifier:(id)a4;
@end

@implementation SDCollaborationUserDefaultsServer

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.collaboration.userdefaults"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection for SDCollaborationUserDefaultsServer: YES", v8, 2u);
    }

    v6 = 1;
  }

  else
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100059974(v3, v5);
    }

    v6 = 0;
  }

  return v6;
}

- (void)connectionEstablished:(id)a3
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connectionEstablished for SDCollaborationUserDefaultsServer", v4, 2u);
  }
}

- (void)connectionInvalidated:(id)a3
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connectionInvalidated for SDCollaborationUserDefaultsServer", v4, 2u);
  }
}

- (void)requestCollaborativeModeForContentIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SFCollaborationUserDefaults sharedDefaults];
  v8 = [v7 existingCollaborativeModeForContentIdentifier:v6];

  v5[2](v5, v8);
}

- (void)saveCollaborativeMode:(id)a3 forContentIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[SFCollaborationUserDefaults sharedDefaults];
  v7 = [v6 BOOLValue];

  [v8 setCollaborativeMode:v7 contentIdentifier:v5];
}

@end
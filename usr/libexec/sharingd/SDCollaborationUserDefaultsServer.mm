@interface SDCollaborationUserDefaultsServer
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler;
- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier;
@end

@implementation SDCollaborationUserDefaultsServer

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.collaboration.userdefaults"];
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
      sub_100059974(connectionCopy, v5);
    }

    v6 = 0;
  }

  return v6;
}

- (void)connectionEstablished:(id)established
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connectionEstablished for SDCollaborationUserDefaultsServer", v4, 2u);
  }
}

- (void)connectionInvalidated:(id)invalidated
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connectionInvalidated for SDCollaborationUserDefaultsServer", v4, 2u);
  }
}

- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v7 = +[SFCollaborationUserDefaults sharedDefaults];
  v8 = [v7 existingCollaborativeModeForContentIdentifier:identifierCopy];

  handlerCopy[2](handlerCopy, v8);
}

- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  modeCopy = mode;
  v8 = +[SFCollaborationUserDefaults sharedDefaults];
  bOOLValue = [modeCopy BOOLValue];

  [v8 setCollaborativeMode:bOOLValue contentIdentifier:identifierCopy];
}

@end
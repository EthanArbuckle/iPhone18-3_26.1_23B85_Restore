@interface SDAccessibilityServer
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)activate;
- (void)invalidate;
@end

@implementation SDAccessibilityServer

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SDAccessibilityServer;
  [(SDXPCDaemon *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SDAccessibilityServer;
  [(SDXPCDaemon *)&v2 _invalidate];
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.accessibility.api"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Allowing connection from pid %d to sharingd accessibility server", &v8, 8u);
    }

    v6 = 1;
  }

  else
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "process %d tried to connect to the sharingd accessibility server, but it was not entitled!", &v8, 8u);
    }

    v6 = 0;
  }

  return v6;
}

@end
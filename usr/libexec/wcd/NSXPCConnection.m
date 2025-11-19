@interface NSXPCConnection
- (BOOL)wc_connectionHasEntitlement:(id)a3;
- (BOOL)wc_connectionIsiOSExtension;
- (NSString)wc_connectionBundleID;
- (NSString)wc_connectionCommunicationID;
@end

@implementation NSXPCConnection

- (BOOL)wc_connectionIsiOSExtension
{
  v2 = [(NSXPCConnection *)self _xpcConnection];
  is_extension = xpc_connection_is_extension();

  return is_extension;
}

- (NSString)wc_connectionBundleID
{
  [(NSXPCConnection *)self auditToken];
  v11 = 0;
  v3 = [LSBundleRecord bundleRecordForAuditToken:v12 error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002C464(self, v4, v5);
    }
  }

  if (v3)
  {
    v6 = [v3 bundleIdentifier];
    if (v6)
    {
      goto LABEL_10;
    }
  }

  v7 = [(NSXPCConnection *)self _xpcConnection];
  v8 = xpc_connection_copy_bundle_id();

  if (!v8 || ([NSString stringWithUTF8String:v8], v9 = objc_claimAutoreleasedReturnValue(), free(v8), !v9))
  {
    v6 = [(NSXPCConnection *)self valueForEntitlement:@"application-identifier"];
LABEL_10:
    v9 = v6;
  }

  return v9;
}

- (NSString)wc_connectionCommunicationID
{
  v3 = [(NSXPCConnection *)self wc_connectionBundleID];
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  v5 = [v4 applicationWorkspace];
  v6 = [v5 applicationInfoForBundleIdentifier:v3 type:7];

  v7 = [v6 companionAppBundleIdentifier];
  if (!v7)
  {
    v8 = [(NSXPCConnection *)self _xpcConnection];
    is_extension = xpc_connection_is_extension();

    if (is_extension)
    {
      v10 = wc_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10002C4EC(v10);
      }

      v7 = 0;
    }

    else
    {
      v7 = v3;
    }
  }

  v11 = v7;

  return v7;
}

- (BOOL)wc_connectionHasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
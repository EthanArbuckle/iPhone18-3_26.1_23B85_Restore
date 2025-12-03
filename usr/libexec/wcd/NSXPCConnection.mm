@interface NSXPCConnection
- (BOOL)wc_connectionHasEntitlement:(id)entitlement;
- (BOOL)wc_connectionIsiOSExtension;
- (NSString)wc_connectionBundleID;
- (NSString)wc_connectionCommunicationID;
@end

@implementation NSXPCConnection

- (BOOL)wc_connectionIsiOSExtension
{
  _xpcConnection = [(NSXPCConnection *)self _xpcConnection];
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
    bundleIdentifier = [v3 bundleIdentifier];
    if (bundleIdentifier)
    {
      goto LABEL_10;
    }
  }

  _xpcConnection = [(NSXPCConnection *)self _xpcConnection];
  v8 = xpc_connection_copy_bundle_id();

  if (!v8 || ([NSString stringWithUTF8String:v8], v9 = objc_claimAutoreleasedReturnValue(), free(v8), !v9))
  {
    bundleIdentifier = [(NSXPCConnection *)self valueForEntitlement:@"application-identifier"];
LABEL_10:
    v9 = bundleIdentifier;
  }

  return v9;
}

- (NSString)wc_connectionCommunicationID
{
  wc_connectionBundleID = [(NSXPCConnection *)self wc_connectionBundleID];
  v4 = +[WCDSystemMonitor sharedSystemMonitor];
  applicationWorkspace = [v4 applicationWorkspace];
  v6 = [applicationWorkspace applicationInfoForBundleIdentifier:wc_connectionBundleID type:7];

  companionAppBundleIdentifier = [v6 companionAppBundleIdentifier];
  if (!companionAppBundleIdentifier)
  {
    _xpcConnection = [(NSXPCConnection *)self _xpcConnection];
    is_extension = xpc_connection_is_extension();

    if (is_extension)
    {
      v10 = wc_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10002C4EC(v10);
      }

      companionAppBundleIdentifier = 0;
    }

    else
    {
      companionAppBundleIdentifier = wc_connectionBundleID;
    }
  }

  v11 = companionAppBundleIdentifier;

  return companionAppBundleIdentifier;
}

- (BOOL)wc_connectionHasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end
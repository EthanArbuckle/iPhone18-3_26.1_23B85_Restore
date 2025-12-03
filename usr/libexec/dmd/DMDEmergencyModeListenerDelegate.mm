@interface DMDEmergencyModeListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DMDEmergencyModeListenerDelegate)initWithPolicyPersistence:(id)persistence;
@end

@implementation DMDEmergencyModeListenerDelegate

- (DMDEmergencyModeListenerDelegate)initWithPolicyPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v9.receiver = self;
  v9.super_class = DMDEmergencyModeListenerDelegate;
  v6 = [(DMDEmergencyModeListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policyPersistence, persistence);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.dmd.emergency-mode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = +[DMFEmergencyModeMonitor remoteInterface];
    [connectionCopy setExportedInterface:v7];

    policyPersistence = [(DMDEmergencyModeListenerDelegate *)self policyPersistence];
    [connectionCopy setExportedObject:policyPersistence];

    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    v10 = DMFEmergencyModeLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000829C8(connectionCopy, v10);
    }

    v9 = 0;
  }

  return v9;
}

@end
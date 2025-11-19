@interface DMDPolicyServerListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DMDPolicyServerListenerDelegate)initWithPolicyPersistence:(id)a3;
@end

@implementation DMDPolicyServerListenerDelegate

- (DMDPolicyServerListenerDelegate)initWithPolicyPersistence:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DMDPolicyServerListenerDelegate;
  v6 = [(DMDPolicyServerListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_policyPersistence, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.dmd.policy"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = +[DMFPolicyMonitor remoteInterface];
    [v5 setExportedInterface:v7];

    v8 = [(DMDPolicyServerListenerDelegate *)self policyPersistence];
    [v5 setExportedObject:v8];

    [v5 resume];
    v9 = 1;
  }

  else
  {
    v10 = DMFPolicyLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100086AAC(v5, v10);
    }

    v9 = 0;
  }

  return v9;
}

@end
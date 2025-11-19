@interface DMDSetAppExtensionUUIDsOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4;
- (void)waitUntilFinished;
@end

@implementation DMDSetAppExtensionUUIDsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDSetAppExtensionUUIDsOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[DMDAppController sharedController];
  v9 = [v6 VPNUUIDString];
  v31 = 0;
  v10 = [v8 setVPNUUIDString:v9 forBundleIdentifier:v7 error:&v31];
  v11 = v31;
  if ((v10 & 1) == 0)
  {

    v15 = v11;
LABEL_13:
    [(DMDSetAppExtensionUUIDsOperation *)self endOperationWithError:v11];
    goto LABEL_14;
  }

  v12 = +[DMDAppController sharedController];
  v13 = [v6 cellularSliceUUIDString];
  v30 = v11;
  v14 = [v12 setCellularSliceUUIDString:v13 forBundleIdentifier:v7 error:&v30];
  v15 = v30;

  if (v14)
  {
    v16 = +[DMDAppController sharedController];
    [v6 contentFilterUUIDString];
    v27 = v29[2] = v15;
    v28 = v16;
    v17 = [v16 setContentFilterUUIDString:? forBundleIdentifier:? error:?];
    v18 = v15;

    if (v17)
    {
      v19 = +[DMDAppController sharedController];
      [v6 DNSProxyUUIDString];
      v25 = v29[1] = v18;
      v26 = v19;
      v17 = [v19 setDNSProxyUUIDString:? forBundleIdentifier:? error:?];
      v20 = v18;

      if (v17)
      {
        v24 = +[DMDAppController sharedController];
        v21 = [v6 relayUUIDString];
        v29[0] = v20;
        v17 = [v24 setRelayUUIDString:v21 forBundleIdentifier:v7 error:v29];
        v23 = v29[0];

        v20 = v23;
      }

      v18 = v20;
    }

    v15 = v18;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v11 = v15;
    goto LABEL_13;
  }

  v22 = +[DMDAppController sharedController];
  [v22 sendManagedAppsChangedNotification];

  [(DMDSetAppExtensionUUIDsOperation *)self endOperationWithResultObject:0];
LABEL_14:
}

@end
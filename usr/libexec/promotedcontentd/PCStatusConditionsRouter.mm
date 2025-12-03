@interface PCStatusConditionsRouter
- (PCStatusConditionsRouter)init;
- (id)actionReceiverForConnection:(id)connection;
@end

@implementation PCStatusConditionsRouter

- (PCStatusConditionsRouter)init
{
  v7.receiver = self;
  v7.super_class = PCStatusConditionsRouter;
  v2 = [(PCStatusConditionsRouter *)&v7 init];
  if (v2)
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      *buf = 138477827;
      v9 = v4;
      v5 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{private}@] Initializing listener for PCStatusConditions ", buf, 0xCu);
    }

    [APXPCListenerManager addDelegate:v2];
  }

  return v2;
}

- (id)actionReceiverForConnection:(id)connection
{
  connectionCopy = connection;
  bundleID = [connectionCopy bundleID];
  if (![bundleID length])
  {
    if (proc_pidpath([connectionCopy processIdentifier], buf, 0x1000u) <= 0)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "StatusConditionListener: Unable to determine process path. Cannot continue.", &v22, 2u);
      }
    }

    else
    {
      v10 = [NSURL fileURLWithFileSystemRepresentation:buf isDirectory:0 relativeToURL:0];
      path = [v10 path];
      v12 = [path description];
      v13 = [v12 length];

      if (v13)
      {
        path2 = [v10 path];
        v15 = [path2 description];
        sha256hash = [v15 sha256hash];

        v17 = APLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v22 = 138477827;
          v23 = sha256hash;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "StatusConditionListener: looking up '%{private}@'.", &v22, 0xCu);
        }

        v18 = [&off_100494780 objectForKeyedSubscript:sha256hash];

        if (!v18)
        {
          v18 = sha256hash;
          v19 = APLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v22 = 138477827;
            v23 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "StatusConditionListener: bundleID for %{private}@ not found.", &v22, 0xCu);
          }
        }

        bundleID = v18;
        goto LABEL_2;
      }

      v20 = APLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "StatusConditionListener: The BundleID and path of process are both empty. Cannot continue.", &v22, 2u);
      }
    }

    v5 = 0;
    goto LABEL_26;
  }

LABEL_2:
  v5 = [[PCStatusConditionsReceiver alloc] initWithBundleID:bundleID connection:connectionCopy];
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if ([(PCStatusConditionsReceiver *)v5 hasWriteEntitlement])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    hasReadEntitlement = [(PCStatusConditionsReceiver *)v5 hasReadEntitlement];
    *buf = 138543874;
    if (hasReadEntitlement)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v25 = bundleID;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "StatusConditionListener: accepting ADStatusConditionService connection from client %{public}@.\nWrite entitlement: %{public}@\nRead entitlement: %{public}@", buf, 0x20u);
  }

LABEL_26:

  return v5;
}

@end
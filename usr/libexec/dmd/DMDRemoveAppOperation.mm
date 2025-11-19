@interface DMDRemoveAppOperation
+ (BOOL)removeAppMetadataForBundleIdentifier:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
+ (void)removeAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4;
- (void)waitUntilFinished;
@end

@implementation DMDRemoveAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRemoveAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = +[DMDAppController sharedController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100068318;
  v8[3] = &unk_1000CDBD0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 setRemovability:0 forBundleIdentifier:v7 completion:v8];
}

+ (BOOL)removeAppMetadataForBundleIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100086DF8();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  sub_100086E6C();
LABEL_3:
  v6 = +[DMDAppController sharedController];
  if (([v6 setVPNUUIDString:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100086EE0(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setCellularSliceUUIDString:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100086F50(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setContentFilterUUIDString:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100086FC0(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setDNSProxyUUIDString:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087030(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setRelayUUIDString:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000870A0(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setAssociatedDomains:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087110(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setAssociatedDomainsEnableDirectDownloads:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087180(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setAllowUserToHide:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000871F0(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setAllowUserToLock:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087260(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setConfiguration:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000872D0(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 setManagementInformation:0 forBundleIdentifier:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087340(v5, a4);
    }

    goto LABEL_42;
  }

  if (([v6 removePersonaMappingForBundleID:v5 error:a4] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000873B0(v5, a4);
    }

LABEL_42:
    v8 = 0;
    goto LABEL_43;
  }

  v7 = +[DMDAppController sharedController];
  [v7 sendManagedAppsChangedNotification];

  v8 = 1;
LABEL_43:

  return v8;
}

+ (void)removeAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100087420();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  sub_100087494();
LABEL_3:
  v8 = DMFAppLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remove app with bundle identifier: %{public}@", buf, 0xCu);
  }

  v9 = +[DMDAppController sharedController];
  v10 = [DMDAppLifeCycle lifeCycleForBundleIdentifier:v5];
  v11 = [v10 currentState];
  if (v11 <= 3)
  {
    if ((v11 - 1) < 3)
    {
      v14 = DMFAppLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cancel app installation with bundle identifier: %{public}@", buf, 0xCu);
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100068D70;
      v22[3] = &unk_1000CDE60;
      v23 = v5;
      v24 = v9;
      v25 = v7;
      [v24 cancelAppInstallationWithBundleIdentifier:v23 completion:v22];

      v13 = v23;
      goto LABEL_14;
    }

    if (v11)
    {
LABEL_22:
      v26 = DMFBundleIdentifierErrorKey;
      v27 = v5;
      v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = DMFErrorWithCodeAndUserInfo();
      (v7)[2](v7, v17);

      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 - 5) < 3)
    {
      v12 = DMFAppLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cancel app update with bundle identifier: %{public}@", buf, 0xCu);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100068E24;
      v18[3] = &unk_1000CDE60;
      v19 = v5;
      v20 = v9;
      v21 = v7;
      [v20 cancelAppUpdateWithBundleIdentifier:v19 completion:v18];

      v13 = v19;
LABEL_14:

      goto LABEL_23;
    }

    if (v11 != 4)
    {
      if (v11 == 8)
      {
        v7[2](v7, 0);
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v15 = DMFAppLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Start uninstalling app with bundle identifier: %{public}@", buf, 0xCu);
  }

  [v9 startUninstallingAppWithBundleIdentifier:v5 completion:v7];
LABEL_23:
}

@end
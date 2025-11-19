@interface DMDMDMv1StartManagingAppOperation
+ (id)whitelistedClassesForRequest;
- (void)_attemptSINFSwap;
- (void)_endOperationWithBundleIdentifier:(id)a3;
- (void)_manageApp;
- (void)_promptIfPermittedByPolicyToManageApp:(id)a3 appDisplayName:(id)a4 originator:(id)a5 completion:(id)a6;
- (void)_promptToManageApp:(id)a3 appDisplayName:(id)a4 originator:(id)a5 completion:(id)a6;
- (void)_runWithRequest:(id)a3;
- (void)_setRemovability:(id)a3;
- (void)_setState:(unint64_t)a3 forBundleIdentifier:(id)a4;
- (void)_setTapToPayScreenLock:(id)a3;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDMDMv1StartManagingAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDMDMv1StartManagingAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100059438;
  v7[3] = &unk_1000CF2C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getMetadataForAppRequest:v6 completion:v7];
}

- (void)_runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  v6 = [v5 bundleIdentifier];
  v7 = [v5 displayName];
  v8 = +[DMDAppController sharedController];
  v9 = [v8 stateForBundleIdentifier:v6];

  if (v9 == 17)
  {
    v10 = DMFErrorWithCodeAndUserInfo();
    [(DMDMDMv1StartManagingAppOperation *)self endOperationWithError:v10];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@ (%@)", v7, v6];
    v11 = +[MDMCloudConfiguration sharedConfiguration];
    v12 = [v11 isSupervised];

    v13 = [v4 internal];
    v14 = [v13 BOOLValue];

    if ((v12 & 1) != 0 || v14)
    {
      v17 = DMFAppLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"NO";
        if (v12)
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        *buf = 138543874;
        v25 = v10;
        v26 = 2114;
        v27 = v19;
        if (v14)
        {
          v18 = @"YES";
        }

        v28 = 2114;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request to manage app %{public}@ fast-tracked, supervised: %{public}@ internal: %{public}@", buf, 0x20u);
      }

      [(DMDMDMv1StartManagingAppOperation *)self _manageApp];
      [(DMDMDMv1StartManagingAppOperation *)self _endOperationWithBundleIdentifier:v6];
    }

    else
    {
      [(DMDMDMv1StartManagingAppOperation *)self _setState:17 forBundleIdentifier:v6];
      v15 = [v4 originator];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100059784;
      v20[3] = &unk_1000CFA80;
      v21 = v10;
      v22 = self;
      v16 = v6;
      v23 = v16;
      [(DMDMDMv1StartManagingAppOperation *)self _promptIfPermittedByPolicyToManageApp:v16 appDisplayName:v7 originator:v15 completion:v20];

      [(DMDMDMv1StartManagingAppOperation *)self _endOperationWithBundleIdentifier:v16];
    }
  }
}

- (void)_promptIfPermittedByPolicyToManageApp:(id)a3 appDisplayName:(id)a4 originator:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_new();
  [v14 readTimestampsFromFile];
  if ([v14 isPromptAllowedRightNow])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000599F8;
    v15[3] = &unk_1000CFAA8;
    v17 = v13;
    v16 = v14;
    [(DMDMDMv1StartManagingAppOperation *)self _promptToManageApp:v10 appDisplayName:v11 originator:v12 completion:v15];
  }

  else
  {
    (*(v13 + 2))(v13, 2);
  }
}

- (void)_promptToManageApp:(id)a3 appDisplayName:(id)a4 originator:(id)a5 completion:(id)a6
{
  v22 = a6;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Would you like to let %@ take management of the app “%@”? Your app data will become managed." value:&stru_1000D0428 table:@"DMFNotifications"];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"App Management Change" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v10 setHeader:v14];

  v15 = [NSString stringWithFormat:v12, v8, v9];

  [v10 setMessage:v15];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"Manage" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v10 setDefaultButtonTitle:v17];

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v10 setAlternateButtonTitle:v19];

  v20 = +[DMDUserNotificationController sharedController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100059CD8;
  v23[3] = &unk_1000CFAD0;
  v24 = v22;
  v21 = v22;
  [v20 showNotification:v10 completion:v23];
}

- (void)_manageApp
{
  [(DMDMDMv1StartManagingAppOperation *)self _attemptSINFSwap];
  v3 = DMFAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
    v5 = [v4 bundleIdentifier];
    *buf = 138543362;
    v43 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Managing app: %{public}@", buf, 0xCu);
  }

  v6 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  v7 = [v6 lifeCycle];
  v8 = [v7 currentState];
  if (v8 && v8 != 8)
  {
    if (v8 != 2)
    {
      v10 = 7;
      goto LABEL_11;
    }

    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Marking an app in the installing state as managed but uninstalled", buf, 2u);
    }
  }

  v10 = 8;
LABEL_11:
  v11 = +[DMDAppController sharedController];
  [v7 addObserver:v11];

  v12 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  v13 = [v12 bundleIdentifier];
  [(DMDMDMv1StartManagingAppOperation *)self _setState:v10 forBundleIdentifier:v13];

  v14 = [(DMDMDMv1StartManagingAppOperation *)self request];
  v38 = +[DMDAppController sharedController];
  v37 = [v14 VPNUUIDString];
  v15 = [v14 cellularSliceUUIDString];
  v34 = [v14 contentFilterUUIDString];
  v33 = [v14 DNSProxyUUIDString];
  v32 = [v14 relayUUIDString];
  v16 = [v14 associatedDomains];
  v31 = [v14 associatedDomainsEnableDirectDownloads];
  v30 = [v14 allowUserToHide];
  v17 = [v14 allowUserToLock];
  v18 = [v14 configuration];
  v36 = v7;
  v19 = [v14 managementOptions];
  v20 = [v14 sourceIdentifier];
  [v6 bundleIdentifier];
  v21 = v35 = v6;
  [v38 setVPNUUIDString:v37 cellularSliceUUIDString:v15 contentFilterUUIDString:v34 DNSProxyUUIDString:v33 relayUUIDString:v32 associatedDomains:v16 enableDirectDownloads:v31 allowUserToHide:v30 allowUserToLock:v17 configuration:v18 options:v19 sourceIdentifier:v20 forBundleIdentifier:v21];

  v22 = [v14 removable];
  [(DMDMDMv1StartManagingAppOperation *)self _setRemovability:v22];

  v23 = [v14 tapToPayScreenLock];
  [(DMDMDMv1StartManagingAppOperation *)self _setTapToPayScreenLock:v23];

  v24 = +[DMDAppController sharedController];
  [v24 sendManagedAppsChangedNotification];

  v25 = +[DMDAppController sharedController];
  v26 = [v14 personaIdentifier];
  v27 = [v35 bundleIdentifier];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10005A170;
  v39[3] = &unk_1000CDBD0;
  v40 = v35;
  v41 = v14;
  v28 = v14;
  v29 = v35;
  [v25 updateBundleIDPersonaIDMappingForPersonaID:v26 addingBundleID:v27 completionHandler:v39];
}

- (void)_setState:(unint64_t)a3 forBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = +[DMDAppController sharedController];
  v10 = 0;
  v7 = [v6 setState:a3 forBundleIdentifier:v5 error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000844E4(a3, v5, v9);
    }
  }
}

- (void)_attemptSINFSwap
{
  v3 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  v7 = [v3 storeItemIdentifier];

  if (v7)
  {
    v4 = [(DMDMDMv1StartManagingAppOperation *)self request];
    v5 = +[DMDAppController sharedController];
    v6 = [v4 personaIdentifier];
    [v5 sendAppRequestWithBundleIdentifier:0 storeItemIdentifier:v7 personaIdentifier:v6 type:2 skipDownloads:1 completion:&stru_1000CFB10];
  }
}

- (void)_endOperationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [v5 stateForBundleIdentifier:v4];

  v7 = [[DMFMDMv1InstallAppResultObject alloc] initWithBundleIdentifier:v4 state:v6];
  [(DMDMDMv1StartManagingAppOperation *)self endOperationWithResultObject:v7];
}

- (void)_setRemovability:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  v7 = [v6 bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005A5B0;
  v9[3] = &unk_1000CEE68;
  v10 = v4;
  v8 = v4;
  [v5 setRemovability:v8 forBundleIdentifier:v7 completion:v9];
}

- (void)_setTapToPayScreenLock:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [(DMDMDMv1StartManagingAppOperation *)self metadata];
  v7 = [v6 bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005A6FC;
  v9[3] = &unk_1000CEE68;
  v10 = v4;
  v8 = v4;
  [v5 setTapToPayScreenLock:v8 forBundleIdentifier:v7 completion:v9];
}

@end
@interface DMDMDMv1InstallAppOperation
+ (id)descriptionForChangeType:(int64_t)a3;
+ (id)whitelistedClassesForRequest;
- (BOOL)_canManageBundleIdentifier:(id)a3;
- (id)_getAllowedAppIDsFromDisk;
- (id)_storeAppFormat;
- (void)_applyManagementPiecesForRequest:(id)a3;
- (void)_attemptSINFSwapForRequest:(id)a3 completion:(id)a4;
- (void)_downloadStoreAppForRequest:(id)a3 type:(int64_t)a4;
- (void)_endOperationWithBundleIdentifier:(id)a3;
- (void)_installEnterpriseAppForRequest:(id)a3;
- (void)_installStoreAppForRequest:(id)a3;
- (void)_installSystemAppWithBundleIdentifier:(id)a3;
- (void)_promptIfNeededWithMessageFormat:(id)a3 success:(id)a4;
- (void)_promptToSignInAndInstallAppForRequest:(id)a3;
- (void)_redeemAppWithRedemptionCode:(id)a3;
- (void)_resetRemovabilityWithBundleIdentifier:(id)a3;
- (void)_resetTapToPayScreenLock;
- (void)_setRedemptionCode:(id)a3;
- (void)_setRemovability:(id)a3;
- (void)_setState:(unint64_t)a3;
- (void)_setTapToPayScreenLock:(id)a3;
- (void)_setUnusedRedemptionCode:(id)a3;
- (void)_showInstallationFailurePromptIfNeeded;
- (void)_showStorePromptToSignInAndInstallAppForRequest:(id)a3;
- (void)_updateManagementInfoWithBlock:(id)a3;
- (void)endOperationWithError:(id)a3;
- (void)endOperationWithResultObject:(id)a3;
- (void)installAppForRequest:(id)a3;
@end

@implementation DMDMDMv1InstallAppOperation

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)endOperationWithResultObject:(id)a3
{
  v4 = a3;
  if (([(DMDMDMv1InstallAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDMDMv1InstallAppOperation;
    [(DMDMDMv1InstallAppOperation *)&v5 endOperationWithResultObject:v4];
  }
}

- (void)endOperationWithError:(id)a3
{
  v4 = a3;
  if (([(DMDMDMv1InstallAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDMDMv1InstallAppOperation;
    [(DMDMDMv1InstallAppOperation *)&v5 endOperationWithError:v4];
  }
}

- (void)installAppForRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDInstallAppOperation *)self metadata];
  v6 = [v5 bundleIdentifier];

  v7 = +[DMDAppController sharedController];
  v8 = [v7 stateForBundleIdentifier:v6];

  if (v8 == 3)
  {
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008531C(self);
    }

    v16 = DMFBundleIdentifierErrorKey;
    v10 = [(DMDInstallAppOperation *)self metadata];
    v11 = [v10 bundleIdentifier];
    v17 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = DMFErrorWithCodeAndUserInfo();
    [(DMDMDMv1InstallAppOperation *)self endOperationWithError:v13];
  }

  else
  {
    v10 = [v4 redemptionCode];
    if (v10)
    {
      [(DMDMDMv1InstallAppOperation *)self _redeemAppWithRedemptionCode:v10];
      goto LABEL_10;
    }

    v14 = [v4 manifestURL];

    if (v14)
    {
      [(DMDMDMv1InstallAppOperation *)self _installEnterpriseAppForRequest:v4];
      goto LABEL_10;
    }

    v11 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v6 error:0];
    v15 = [v11 compatibilityObject];
    v12 = v15;
    if (v11 && v15)
    {
      [(DMDMDMv1InstallAppOperation *)self _installSystemAppWithBundleIdentifier:v6];
    }

    else
    {
      [(DMDMDMv1InstallAppOperation *)self _installStoreAppForRequest:v4];
    }
  }

LABEL_10:
}

- (id)_storeAppFormat
{
  if (qword_1000FF178 != -1)
  {
    sub_1000853C0();
  }

  v3 = qword_1000FF170;

  return v3;
}

- (id)_getAllowedAppIDsFromDisk
{
  v2 = +[DMDPaths mdmFilePath];
  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];

  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:kMDMRequiredAppIDForMDMKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 addObject:v5];
  }

  v6 = [v3 objectForKeyedSubscript:kMDMEnrollmentSSOAppStoreIDKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 addObject:v6];
  }

  if ([v4 count])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)_redeemAppWithRedemptionCode:(id)a3
{
  v4 = a3;
  v5 = [(DMDInstallAppOperation *)self metadata];
  v6 = [v5 bundleIdentifier];

  v7 = +[DMDAppController sharedController];
  if ([v7 stateForBundleIdentifier:v6] == 1)
  {
    [(DMDMDMv1InstallAppOperation *)self _setRedemptionCode:v4];
    v8 = [(DMDMDMv1InstallAppOperation *)self _storeAppFormat];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000558EC;
    v9[3] = &unk_1000CF808;
    v10 = v6;
    v11 = self;
    v12 = v7;
    v13 = v4;
    [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:v8 success:v9];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:2611];
  }
}

- (void)_installEnterpriseAppForRequest:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"%@ is about to install and manage the app “%@”.\nYour Apple Account will not be charged for this app." value:&stru_1000D0428 table:@"DMFNotifications"];

  v7 = [v4 manifestURL];
  v8 = +[DMDAppController sharedController];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100055D44;
  v29[3] = &unk_1000CEE68;
  v29[4] = self;
  v9 = objc_retainBlock(v29);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100055DF0;
  v24[3] = &unk_1000CF830;
  v24[4] = self;
  v10 = v4;
  v25 = v10;
  v26 = v7;
  v11 = v8;
  v27 = v11;
  v12 = v9;
  v28 = v12;
  v13 = v7;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005607C;
  v18[3] = &unk_1000CF880;
  v19 = v11;
  v20 = v10;
  v21 = self;
  v22 = v12;
  v23 = objc_retainBlock(v24);
  v14 = v23;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:v6 success:v18];
}

- (void)_installSystemAppWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"%@ is about to install the app “%@”.\nYour Apple Account will not be charged for this app." value:&stru_1000D0428 table:@"DMFNotifications"];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005637C;
  v8[3] = &unk_1000CDC38;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:v6 success:v8];
}

+ (id)descriptionForChangeType:(int64_t)a3
{
  if (a3 >= 6)
  {
    v4 = [NSString stringWithFormat:@"unknown change type (%ld)", a3];
  }

  else
  {
    v4 = off_1000CFA48[a3];
  }

  return v4;
}

- (void)_installStoreAppForRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDInstallAppOperation *)self metadata];
  v6 = [v5 bundleIdentifier];

  v7 = [(DMDInstallAppOperation *)self metadata];
  v8 = [v7 needsRedownload];

  v9 = DMFAppLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting re-download of app because metadata says it is necessary: %{public}@", buf, 0xCu);
    }

    [(DMDMDMv1InstallAppOperation *)self _redownloadDeviceAppForRequest:v4];
  }

  else
  {
    if (v10)
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting SINF swap to install app: %{public}@", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100056750;
    v11[3] = &unk_1000CF8A8;
    v12 = v6;
    v13 = self;
    v14 = v4;
    [(DMDMDMv1InstallAppOperation *)self _attemptSINFSwapForRequest:v14 completion:v11];
  }
}

- (void)_attemptSINFSwapForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100056FA4;
  v15[3] = &unk_1000CE208;
  v7 = a4;
  v16 = v7;
  v8 = objc_retainBlock(v15);
  v9 = +[DMDAppController sharedController];
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 personaIdentifier];
    *buf = 138543362;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "attempt SINF swap, persona:%{public}@", buf, 0xCu);
  }

  v12 = [(DMDInstallAppOperation *)self metadata];
  v13 = [v12 storeItemIdentifier];
  v14 = [v6 personaIdentifier];
  [v9 sendAppRequestWithBundleIdentifier:0 storeItemIdentifier:v13 personaIdentifier:v14 type:2 skipDownloads:1 completion:v8];
}

- (void)_downloadStoreAppForRequest:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = +[DMDAppController sharedController];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100057254;
  v29[3] = &unk_1000CEE68;
  v29[4] = self;
  v8 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000572BC;
  v25[3] = &unk_1000CF8D0;
  v25[4] = self;
  v9 = v7;
  v26 = v9;
  v10 = v6;
  v27 = v10;
  v11 = v8;
  v28 = v11;
  v12 = objc_retainBlock(v25);
  v13 = [(DMDMDMv1InstallAppOperation *)self _storeAppFormat];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100057524;
  v18[3] = &unk_1000CF920;
  v19 = v9;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v23 = v12;
  v24 = a4;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:v13 success:v18];
}

- (void)_applyManagementPiecesForRequest:(id)a3
{
  v4 = a3;
  v19 = +[DMDAppController sharedController];
  v18 = [v4 VPNUUIDString];
  v5 = [v4 cellularSliceUUIDString];
  v6 = [v4 contentFilterUUIDString];
  v17 = [v4 DNSProxyUUIDString];
  v16 = [v4 relayUUIDString];
  v15 = [v4 associatedDomains];
  v14 = [v4 associatedDomainsEnableDirectDownloads];
  v13 = [v4 allowUserToHide];
  v7 = [v4 allowUserToLock];
  v8 = [v4 configuration];
  v9 = [v4 managementOptions];
  v10 = [v4 sourceIdentifier];

  v11 = [(DMDInstallAppOperation *)self metadata];
  v12 = [v11 bundleIdentifier];
  [v19 setVPNUUIDString:v18 cellularSliceUUIDString:v5 contentFilterUUIDString:v6 DNSProxyUUIDString:v17 relayUUIDString:v16 associatedDomains:v15 enableDirectDownloads:v14 allowUserToHide:v13 allowUserToLock:v7 configuration:v8 options:v9 sourceIdentifier:v10 forBundleIdentifier:v12];
}

- (void)_promptIfNeededWithMessageFormat:(id)a3 success:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    sub_100085678(a2, self);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100057F1C;
  v41[3] = &unk_1000CE8C0;
  v41[4] = self;
  v9 = v8;
  v42 = v9;
  v10 = objc_retainBlock(v41);
  v11 = +[MCCloudConfiguration sharedConfiguration];
  v12 = [v11 isSupervised];

  if (v12)
  {
    (v10[2])(v10);
  }

  else
  {
    v13 = [(DMDMDMv1InstallAppOperation *)self _getAllowedAppIDsFromDisk];
    v14 = [(DMDInstallAppOperation *)self metadata];
    v15 = [v14 storeItemIdentifier];

    if (v15 && [v13 containsObject:v15])
    {
      (v10[2])(v10);
    }

    else
    {
      v16 = [(DMDMDMv1InstallAppOperation *)self request];
      v17 = [v16 originator];

      v18 = [(DMDInstallAppOperation *)self metadata];
      v19 = [v18 displayName];

      v20 = DMFAppLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Prompting user to install app: %{public}@", buf, 0xCu);
      }

      v36 = v15;
      v37 = v13;

      v40 = 0;
      v21 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@%@" error:&v40, v17, v19];
      v22 = v40;
      if (!v21)
      {
        v23 = DMFAppLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000856F4();
        }
      }

      v34 = v17;
      v35 = v22;
      v24 = objc_opt_new();
      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"App Installation" value:&stru_1000D0428 table:?];
      [v24 setHeader:v26];

      [v24 setMessage:v21];
      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"Install" value:&stru_1000D0428 table:@"DMFNotifications"];
      [v24 setDefaultButtonTitle:v28];

      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
      [v24 setAlternateButtonTitle:v30];

      [(DMDMDMv1InstallAppOperation *)self _setState:3];
      v31 = +[DMDUserNotificationController sharedController];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100057FB4;
      v38[3] = &unk_1000CF948;
      v38[4] = self;
      v39 = v10;
      [v31 showNotification:v24 completion:v38];

      v32 = [(DMDInstallAppOperation *)self metadata];
      v33 = [v32 bundleIdentifier];
      [(DMDMDMv1InstallAppOperation *)self _endOperationWithBundleIdentifier:v33];

      v13 = v37;
      v15 = v36;
    }
  }
}

- (void)_promptToSignInAndInstallAppForRequest:(id)a3
{
  v4 = a3;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Show our prompt to sign in", buf, 2u);
  }

  [(DMDMDMv1InstallAppOperation *)self _setState:4];
  v6 = objc_opt_new();
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"App Installation" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v6 setHeader:v8];

  v9 = [v4 originator];
  v10 = [NSString localizedStringWithFormat:@"Sign in to iTunes to allow %1$@ to manage and install apps.", v9];
  [v6 setMessage:v10];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Sign In" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v6 setDefaultButtonTitle:v12];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
  [v6 setAlternateButtonTitle:v14];

  v15 = +[DMDUserNotificationController sharedController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000582B0;
  v17[3] = &unk_1000CF970;
  v17[4] = self;
  v18 = v4;
  v16 = v4;
  [v15 showNotification:v6 completion:v17];
}

- (void)_showStorePromptToSignInAndInstallAppForRequest:(id)a3
{
  v4 = a3;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Show store prompt to sign in", buf, 2u);
  }

  +[DMDAppController sharedController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100058428;
  v8[3] = &unk_1000CF9C0;
  v9 = v8[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = v9;
  [v7 promptUserToSignInWithCompletion:v8];
}

- (void)_showInstallationFailurePromptIfNeeded
{
  v3 = +[MCCloudConfiguration sharedConfiguration];
  v4 = [v3 isSupervised];

  if ((v4 & 1) == 0)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"The app “%@” could not be installed." value:&stru_1000D0428 table:@"DMFNotifications"];

    v7 = objc_opt_new();
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"App Installation" value:&stru_1000D0428 table:@"DMFNotifications"];
    [v7 setHeader:v9];

    v10 = [(DMDInstallAppOperation *)self metadata];
    v11 = [v10 displayName];
    v12 = [NSString localizedStringWithFormat:v6, v11];
    [v7 setMessage:v12];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"Dismiss" value:&stru_1000D0428 table:@"DMFNotifications"];
    [v7 setDefaultButtonTitle:v14];

    v15 = DMFAppLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10008575C(v15);
    }

    v16 = +[DMDUserNotificationController sharedController];
    [v16 showNotification:v7 completion:0];
  }
}

- (void)_setState:(unint64_t)a3
{
  v5 = [(DMDInstallAppOperation *)self metadata];
  v6 = [v5 bundleIdentifier];

  if ([(DMDMDMv1InstallAppOperation *)self _canManageBundleIdentifier:v6])
  {
    v7 = +[DMDAppController sharedController];
    v11 = 0;
    v8 = [v7 setState:a3 forBundleIdentifier:v6 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = DMFAppLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000857A0();
      }
    }
  }
}

- (void)_setRedemptionCode:(id)a3
{
  v4 = a3;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DMDInstallAppOperation *)self metadata];
    v7 = [v6 bundleIdentifier];
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set redemption code for bundle identifier: %{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000589E8;
  v9[3] = &unk_1000CF9E8;
  v10 = v4;
  v8 = v4;
  [(DMDMDMv1InstallAppOperation *)self _updateManagementInfoWithBlock:v9];
}

- (void)_setUnusedRedemptionCode:(id)a3
{
  v4 = a3;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DMDInstallAppOperation *)self metadata];
    v7 = [v6 bundleIdentifier];
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set unused redemption code for bundle identifier: %{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100058B3C;
  v9[3] = &unk_1000CF9E8;
  v10 = v4;
  v8 = v4;
  [(DMDMDMv1InstallAppOperation *)self _updateManagementInfoWithBlock:v9];
}

- (void)_updateManagementInfoWithBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100085840(a2, self);
  }

  v6 = [(DMDInstallAppOperation *)self metadata];
  v7 = [v6 bundleIdentifier];

  if ([(DMDMDMv1InstallAppOperation *)self _canManageBundleIdentifier:v7])
  {
    v8 = DMFAppLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update management information for bundle identifier: %{public}@", buf, 0xCu);
    }

    v9 = +[DMDAppController sharedController];
    v10 = [v9 managementInformationForBundleIdentifier:v7];
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    v5[2](v5, v10);
    v14 = 0;
    v11 = [v9 setManagementInformation:v10 forBundleIdentifier:v7 error:&v14];
    v12 = v14;
    if ((v11 & 1) == 0)
    {
      v13 = DMFAppLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000858BC();
      }
    }
  }
}

- (BOOL)_canManageBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v3 error:0];

  return v4 == 0;
}

- (void)_endOperationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [v5 stateForBundleIdentifier:v4];

  v7 = [[DMFMDMv1InstallAppResultObject alloc] initWithBundleIdentifier:v4 state:v6];
  [(DMDMDMv1InstallAppOperation *)self endOperationWithResultObject:v7];
}

- (void)_resetRemovabilityWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[DMDAppController sharedController];
  [v4 setRemovability:0 forBundleIdentifier:v3 completion:&stru_1000CFA08];
}

- (void)_resetTapToPayScreenLock
{
  v5 = +[DMDAppController sharedController];
  v3 = [(DMDInstallAppOperation *)self metadata];
  v4 = [v3 bundleIdentifier];
  [v5 setTapToPayScreenLock:0 forBundleIdentifier:v4 completion:&stru_1000CFA28];
}

- (void)_setRemovability:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [(DMDInstallAppOperation *)self metadata];
  v7 = [v6 bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059090;
  v9[3] = &unk_1000CEE68;
  v10 = v4;
  v8 = v4;
  [v5 setRemovability:v8 forBundleIdentifier:v7 completion:v9];
}

- (void)_setTapToPayScreenLock:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [(DMDInstallAppOperation *)self metadata];
  v7 = [v6 bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000591DC;
  v9[3] = &unk_1000CEE68;
  v10 = v4;
  v8 = v4;
  [v5 setTapToPayScreenLock:v8 forBundleIdentifier:v7 completion:v9];
}

@end
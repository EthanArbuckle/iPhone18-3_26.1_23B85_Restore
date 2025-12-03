@interface DMDMDMv1InstallAppOperation
+ (id)descriptionForChangeType:(int64_t)type;
+ (id)whitelistedClassesForRequest;
- (BOOL)_canManageBundleIdentifier:(id)identifier;
- (id)_getAllowedAppIDsFromDisk;
- (id)_storeAppFormat;
- (void)_applyManagementPiecesForRequest:(id)request;
- (void)_attemptSINFSwapForRequest:(id)request completion:(id)completion;
- (void)_downloadStoreAppForRequest:(id)request type:(int64_t)type;
- (void)_endOperationWithBundleIdentifier:(id)identifier;
- (void)_installEnterpriseAppForRequest:(id)request;
- (void)_installStoreAppForRequest:(id)request;
- (void)_installSystemAppWithBundleIdentifier:(id)identifier;
- (void)_promptIfNeededWithMessageFormat:(id)format success:(id)success;
- (void)_promptToSignInAndInstallAppForRequest:(id)request;
- (void)_redeemAppWithRedemptionCode:(id)code;
- (void)_resetRemovabilityWithBundleIdentifier:(id)identifier;
- (void)_resetTapToPayScreenLock;
- (void)_setRedemptionCode:(id)code;
- (void)_setRemovability:(id)removability;
- (void)_setState:(unint64_t)state;
- (void)_setTapToPayScreenLock:(id)lock;
- (void)_setUnusedRedemptionCode:(id)code;
- (void)_showInstallationFailurePromptIfNeeded;
- (void)_showStorePromptToSignInAndInstallAppForRequest:(id)request;
- (void)_updateManagementInfoWithBlock:(id)block;
- (void)endOperationWithError:(id)error;
- (void)endOperationWithResultObject:(id)object;
- (void)installAppForRequest:(id)request;
@end

@implementation DMDMDMv1InstallAppOperation

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)endOperationWithResultObject:(id)object
{
  objectCopy = object;
  if (([(DMDMDMv1InstallAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDMDMv1InstallAppOperation;
    [(DMDMDMv1InstallAppOperation *)&v5 endOperationWithResultObject:objectCopy];
  }
}

- (void)endOperationWithError:(id)error
{
  errorCopy = error;
  if (([(DMDMDMv1InstallAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDMDMv1InstallAppOperation;
    [(DMDMDMv1InstallAppOperation *)&v5 endOperationWithError:errorCopy];
  }
}

- (void)installAppForRequest:(id)request
{
  requestCopy = request;
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];

  v7 = +[DMDAppController sharedController];
  v8 = [v7 stateForBundleIdentifier:bundleIdentifier];

  if (v8 == 3)
  {
    v9 = DMFAppLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008531C(self);
    }

    v16 = DMFBundleIdentifierErrorKey;
    metadata2 = [(DMDInstallAppOperation *)self metadata];
    bundleIdentifier2 = [metadata2 bundleIdentifier];
    v17 = bundleIdentifier2;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = DMFErrorWithCodeAndUserInfo();
    [(DMDMDMv1InstallAppOperation *)self endOperationWithError:v13];
  }

  else
  {
    metadata2 = [requestCopy redemptionCode];
    if (metadata2)
    {
      [(DMDMDMv1InstallAppOperation *)self _redeemAppWithRedemptionCode:metadata2];
      goto LABEL_10;
    }

    manifestURL = [requestCopy manifestURL];

    if (manifestURL)
    {
      [(DMDMDMv1InstallAppOperation *)self _installEnterpriseAppForRequest:requestCopy];
      goto LABEL_10;
    }

    bundleIdentifier2 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:bundleIdentifier error:0];
    compatibilityObject = [bundleIdentifier2 compatibilityObject];
    v12 = compatibilityObject;
    if (bundleIdentifier2 && compatibilityObject)
    {
      [(DMDMDMv1InstallAppOperation *)self _installSystemAppWithBundleIdentifier:bundleIdentifier];
    }

    else
    {
      [(DMDMDMv1InstallAppOperation *)self _installStoreAppForRequest:requestCopy];
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

- (void)_redeemAppWithRedemptionCode:(id)code
{
  codeCopy = code;
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];

  v7 = +[DMDAppController sharedController];
  if ([v7 stateForBundleIdentifier:bundleIdentifier] == 1)
  {
    [(DMDMDMv1InstallAppOperation *)self _setRedemptionCode:codeCopy];
    _storeAppFormat = [(DMDMDMv1InstallAppOperation *)self _storeAppFormat];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000558EC;
    v9[3] = &unk_1000CF808;
    v10 = bundleIdentifier;
    selfCopy = self;
    v12 = v7;
    v13 = codeCopy;
    [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:_storeAppFormat success:v9];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:2611];
  }
}

- (void)_installEnterpriseAppForRequest:(id)request
{
  requestCopy = request;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"%@ is about to install and manage the app “%@”.\nYour Apple Account will not be charged for this app." value:&stru_1000D0428 table:@"DMFNotifications"];

  manifestURL = [requestCopy manifestURL];
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
  v10 = requestCopy;
  v25 = v10;
  v26 = manifestURL;
  v11 = v8;
  v27 = v11;
  v12 = v9;
  v28 = v12;
  v13 = manifestURL;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005607C;
  v18[3] = &unk_1000CF880;
  v19 = v11;
  v20 = v10;
  selfCopy = self;
  v22 = v12;
  v23 = objc_retainBlock(v24);
  v14 = v23;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:v6 success:v18];
}

- (void)_installSystemAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"%@ is about to install the app “%@”.\nYour Apple Account will not be charged for this app." value:&stru_1000D0428 table:@"DMFNotifications"];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005637C;
  v8[3] = &unk_1000CDC38;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:v6 success:v8];
}

+ (id)descriptionForChangeType:(int64_t)type
{
  if (type >= 6)
  {
    type = [NSString stringWithFormat:@"unknown change type (%ld)", type];
  }

  else
  {
    type = off_1000CFA48[type];
  }

  return type;
}

- (void)_installStoreAppForRequest:(id)request
{
  requestCopy = request;
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];

  metadata2 = [(DMDInstallAppOperation *)self metadata];
  needsRedownload = [metadata2 needsRedownload];

  v9 = DMFAppLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (needsRedownload)
  {
    if (v10)
    {
      *buf = 138543362;
      v16 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting re-download of app because metadata says it is necessary: %{public}@", buf, 0xCu);
    }

    [(DMDMDMv1InstallAppOperation *)self _redownloadDeviceAppForRequest:requestCopy];
  }

  else
  {
    if (v10)
    {
      *buf = 138543362;
      v16 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting SINF swap to install app: %{public}@", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100056750;
    v11[3] = &unk_1000CF8A8;
    v12 = bundleIdentifier;
    selfCopy = self;
    v14 = requestCopy;
    [(DMDMDMv1InstallAppOperation *)self _attemptSINFSwapForRequest:v14 completion:v11];
  }
}

- (void)_attemptSINFSwapForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100056FA4;
  v15[3] = &unk_1000CE208;
  completionCopy = completion;
  v16 = completionCopy;
  v8 = objc_retainBlock(v15);
  v9 = +[DMDAppController sharedController];
  v10 = DMFAppLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    personaIdentifier = [requestCopy personaIdentifier];
    *buf = 138543362;
    v18 = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "attempt SINF swap, persona:%{public}@", buf, 0xCu);
  }

  metadata = [(DMDInstallAppOperation *)self metadata];
  storeItemIdentifier = [metadata storeItemIdentifier];
  personaIdentifier2 = [requestCopy personaIdentifier];
  [v9 sendAppRequestWithBundleIdentifier:0 storeItemIdentifier:storeItemIdentifier personaIdentifier:personaIdentifier2 type:2 skipDownloads:1 completion:v8];
}

- (void)_downloadStoreAppForRequest:(id)request type:(int64_t)type
{
  requestCopy = request;
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
  v10 = requestCopy;
  v27 = v10;
  v11 = v8;
  v28 = v11;
  v12 = objc_retainBlock(v25);
  _storeAppFormat = [(DMDMDMv1InstallAppOperation *)self _storeAppFormat];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100057524;
  v18[3] = &unk_1000CF920;
  v19 = v9;
  v20 = v10;
  selfCopy = self;
  v22 = v11;
  v23 = v12;
  typeCopy = type;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  [(DMDMDMv1InstallAppOperation *)self _promptIfNeededWithMessageFormat:_storeAppFormat success:v18];
}

- (void)_applyManagementPiecesForRequest:(id)request
{
  requestCopy = request;
  v19 = +[DMDAppController sharedController];
  vPNUUIDString = [requestCopy VPNUUIDString];
  cellularSliceUUIDString = [requestCopy cellularSliceUUIDString];
  contentFilterUUIDString = [requestCopy contentFilterUUIDString];
  dNSProxyUUIDString = [requestCopy DNSProxyUUIDString];
  relayUUIDString = [requestCopy relayUUIDString];
  associatedDomains = [requestCopy associatedDomains];
  associatedDomainsEnableDirectDownloads = [requestCopy associatedDomainsEnableDirectDownloads];
  allowUserToHide = [requestCopy allowUserToHide];
  allowUserToLock = [requestCopy allowUserToLock];
  configuration = [requestCopy configuration];
  managementOptions = [requestCopy managementOptions];
  sourceIdentifier = [requestCopy sourceIdentifier];

  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  [v19 setVPNUUIDString:vPNUUIDString cellularSliceUUIDString:cellularSliceUUIDString contentFilterUUIDString:contentFilterUUIDString DNSProxyUUIDString:dNSProxyUUIDString relayUUIDString:relayUUIDString associatedDomains:associatedDomains enableDirectDownloads:associatedDomainsEnableDirectDownloads allowUserToHide:allowUserToHide allowUserToLock:allowUserToLock configuration:configuration options:managementOptions sourceIdentifier:sourceIdentifier forBundleIdentifier:bundleIdentifier];
}

- (void)_promptIfNeededWithMessageFormat:(id)format success:(id)success
{
  formatCopy = format;
  successCopy = success;
  if (!successCopy)
  {
    sub_100085678(a2, self);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100057F1C;
  v41[3] = &unk_1000CE8C0;
  v41[4] = self;
  v9 = successCopy;
  v42 = v9;
  v10 = objc_retainBlock(v41);
  v11 = +[MCCloudConfiguration sharedConfiguration];
  isSupervised = [v11 isSupervised];

  if (isSupervised)
  {
    (v10[2])(v10);
  }

  else
  {
    _getAllowedAppIDsFromDisk = [(DMDMDMv1InstallAppOperation *)self _getAllowedAppIDsFromDisk];
    metadata = [(DMDInstallAppOperation *)self metadata];
    storeItemIdentifier = [metadata storeItemIdentifier];

    if (storeItemIdentifier && [_getAllowedAppIDsFromDisk containsObject:storeItemIdentifier])
    {
      (v10[2])(v10);
    }

    else
    {
      request = [(DMDMDMv1InstallAppOperation *)self request];
      originator = [request originator];

      metadata2 = [(DMDInstallAppOperation *)self metadata];
      displayName = [metadata2 displayName];

      v20 = DMFAppLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = displayName;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Prompting user to install app: %{public}@", buf, 0xCu);
      }

      v36 = storeItemIdentifier;
      v37 = _getAllowedAppIDsFromDisk;

      v40 = 0;
      v21 = [NSString stringWithValidatedFormat:formatCopy validFormatSpecifiers:@"%@%@" error:&v40, originator, displayName];
      v22 = v40;
      if (!v21)
      {
        v23 = DMFAppLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000856F4();
        }
      }

      v34 = originator;
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

      metadata3 = [(DMDInstallAppOperation *)self metadata];
      bundleIdentifier = [metadata3 bundleIdentifier];
      [(DMDMDMv1InstallAppOperation *)self _endOperationWithBundleIdentifier:bundleIdentifier];

      _getAllowedAppIDsFromDisk = v37;
      storeItemIdentifier = v36;
    }
  }
}

- (void)_promptToSignInAndInstallAppForRequest:(id)request
{
  requestCopy = request;
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

  originator = [requestCopy originator];
  v10 = [NSString localizedStringWithFormat:@"Sign in to iTunes to allow %1$@ to manage and install apps.", originator];
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
  v18 = requestCopy;
  v16 = requestCopy;
  [v15 showNotification:v6 completion:v17];
}

- (void)_showStorePromptToSignInAndInstallAppForRequest:(id)request
{
  requestCopy = request;
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
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = v9;
  [v7 promptUserToSignInWithCompletion:v8];
}

- (void)_showInstallationFailurePromptIfNeeded
{
  v3 = +[MCCloudConfiguration sharedConfiguration];
  isSupervised = [v3 isSupervised];

  if ((isSupervised & 1) == 0)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"The app “%@” could not be installed." value:&stru_1000D0428 table:@"DMFNotifications"];

    v7 = objc_opt_new();
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"App Installation" value:&stru_1000D0428 table:@"DMFNotifications"];
    [v7 setHeader:v9];

    metadata = [(DMDInstallAppOperation *)self metadata];
    displayName = [metadata displayName];
    v12 = [NSString localizedStringWithFormat:v6, displayName];
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

- (void)_setState:(unint64_t)state
{
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];

  if ([(DMDMDMv1InstallAppOperation *)self _canManageBundleIdentifier:bundleIdentifier])
  {
    v7 = +[DMDAppController sharedController];
    v11 = 0;
    v8 = [v7 setState:state forBundleIdentifier:bundleIdentifier error:&v11];
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

- (void)_setRedemptionCode:(id)code
{
  codeCopy = code;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    metadata = [(DMDInstallAppOperation *)self metadata];
    bundleIdentifier = [metadata bundleIdentifier];
    *buf = 138543362;
    v12 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set redemption code for bundle identifier: %{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000589E8;
  v9[3] = &unk_1000CF9E8;
  v10 = codeCopy;
  v8 = codeCopy;
  [(DMDMDMv1InstallAppOperation *)self _updateManagementInfoWithBlock:v9];
}

- (void)_setUnusedRedemptionCode:(id)code
{
  codeCopy = code;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    metadata = [(DMDInstallAppOperation *)self metadata];
    bundleIdentifier = [metadata bundleIdentifier];
    *buf = 138543362;
    v12 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set unused redemption code for bundle identifier: %{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100058B3C;
  v9[3] = &unk_1000CF9E8;
  v10 = codeCopy;
  v8 = codeCopy;
  [(DMDMDMv1InstallAppOperation *)self _updateManagementInfoWithBlock:v9];
}

- (void)_updateManagementInfoWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    sub_100085840(a2, self);
  }

  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];

  if ([(DMDMDMv1InstallAppOperation *)self _canManageBundleIdentifier:bundleIdentifier])
  {
    v8 = DMFAppLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update management information for bundle identifier: %{public}@", buf, 0xCu);
    }

    v9 = +[DMDAppController sharedController];
    v10 = [v9 managementInformationForBundleIdentifier:bundleIdentifier];
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    blockCopy[2](blockCopy, v10);
    v14 = 0;
    v11 = [v9 setManagementInformation:v10 forBundleIdentifier:bundleIdentifier error:&v14];
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

- (BOOL)_canManageBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:identifierCopy error:0];

  return v4 == 0;
}

- (void)_endOperationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[DMDAppController sharedController];
  v6 = [v5 stateForBundleIdentifier:identifierCopy];

  v7 = [[DMFMDMv1InstallAppResultObject alloc] initWithBundleIdentifier:identifierCopy state:v6];
  [(DMDMDMv1InstallAppOperation *)self endOperationWithResultObject:v7];
}

- (void)_resetRemovabilityWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[DMDAppController sharedController];
  [v4 setRemovability:0 forBundleIdentifier:identifierCopy completion:&stru_1000CFA08];
}

- (void)_resetTapToPayScreenLock
{
  v5 = +[DMDAppController sharedController];
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  [v5 setTapToPayScreenLock:0 forBundleIdentifier:bundleIdentifier completion:&stru_1000CFA28];
}

- (void)_setRemovability:(id)removability
{
  removabilityCopy = removability;
  v5 = +[DMDAppController sharedController];
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059090;
  v9[3] = &unk_1000CEE68;
  v10 = removabilityCopy;
  v8 = removabilityCopy;
  [v5 setRemovability:v8 forBundleIdentifier:bundleIdentifier completion:v9];
}

- (void)_setTapToPayScreenLock:(id)lock
{
  lockCopy = lock;
  v5 = +[DMDAppController sharedController];
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000591DC;
  v9[3] = &unk_1000CEE68;
  v10 = lockCopy;
  v8 = lockCopy;
  [v5 setTapToPayScreenLock:v8 forBundleIdentifier:bundleIdentifier completion:v9];
}

@end
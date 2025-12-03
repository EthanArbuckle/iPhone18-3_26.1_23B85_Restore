@interface MCAppWhitelistPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)_postNotification;
@end

@implementation MCAppWhitelistPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v8 = [(MCNewPayloadHandler *)self payload:installer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  payload = [(MCNewPayloadHandler *)self payload];
  v11 = +[MCRestrictionManager sharedManager];
  applicationBundleID = [payload applicationBundleID];
  v13 = [v11 allowedToRunAppWithBundleID:applicationBundleID];

  if (v13)
  {

    return 1;
  }

  v14 = MCAppWhitelistErrorDomain;
  v15 = MCErrorArray();
  v16 = MCErrorTypeFatal;
  v17 = [NSError MCErrorWithDomain:v14 code:48000 descriptionArray:v15 errorType:MCErrorTypeFatal, 0];
  mCCopyAsPrimaryError = [v17 MCCopyAsPrimaryError];

  if (!mCCopyAsPrimaryError)
  {
    return 1;
  }

  v19 = MCInstallationErrorDomain;
  payload2 = [(MCNewPayloadHandler *)self payload];
  friendlyName = [payload2 friendlyName];
  v22 = MCErrorArray();
  v23 = [NSError MCErrorWithDomain:v19 code:4001 descriptionArray:v22 underlyingError:mCCopyAsPrimaryError errorType:v16, friendlyName, 0];

  if (error)
  {
    v24 = v23;
    *error = v23;
  }

  v25 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    payload3 = [(MCNewPayloadHandler *)self payload];
    friendlyName2 = [payload3 friendlyName];
    mCVerboseDescription = [v23 MCVerboseDescription];
    *buf = 138543618;
    v32 = friendlyName2;
    v33 = 2114;
    v34 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Cannot install app whitelist payload “%{public}@”. Error: %{public}@", buf, 0x16u);
  }

  return 0;
}

- (void)_postNotification
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sending App Whitelist change notification", v3, 2u);
  }

  notify_post([MCAppWhitelistDidChangeNotification UTF8String]);
}

@end
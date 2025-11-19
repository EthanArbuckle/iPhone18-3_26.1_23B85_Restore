@interface MCAppWhitelistPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)_postNotification;
@end

@implementation MCAppWhitelistPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = [(MCNewPayloadHandler *)self payload:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  v10 = [(MCNewPayloadHandler *)self payload];
  v11 = +[MCRestrictionManager sharedManager];
  v12 = [v10 applicationBundleID];
  v13 = [v11 allowedToRunAppWithBundleID:v12];

  if (v13)
  {

    return 1;
  }

  v14 = MCAppWhitelistErrorDomain;
  v15 = MCErrorArray();
  v16 = MCErrorTypeFatal;
  v17 = [NSError MCErrorWithDomain:v14 code:48000 descriptionArray:v15 errorType:MCErrorTypeFatal, 0];
  v18 = [v17 MCCopyAsPrimaryError];

  if (!v18)
  {
    return 1;
  }

  v19 = MCInstallationErrorDomain;
  v20 = [(MCNewPayloadHandler *)self payload];
  v21 = [v20 friendlyName];
  v22 = MCErrorArray();
  v23 = [NSError MCErrorWithDomain:v19 code:4001 descriptionArray:v22 underlyingError:v18 errorType:v16, v21, 0];

  if (a6)
  {
    v24 = v23;
    *a6 = v23;
  }

  v25 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    v27 = [(MCNewPayloadHandler *)self payload];
    v28 = [v27 friendlyName];
    v29 = [v23 MCVerboseDescription];
    *buf = 138543618;
    v32 = v28;
    v33 = 2114;
    v34 = v29;
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
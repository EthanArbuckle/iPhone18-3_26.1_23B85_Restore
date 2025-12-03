@interface MCHomeScreenLayoutPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (id)homeScreenLayoutFilePath;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCHomeScreenLayoutPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  v10 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];

  LODWORD(optionsCopy) = [v10 intValue];
  if (optionsCopy == 2)
  {
    MCUserHomeScreenLayoutFilePath();
  }

  else
  {
    MCSystemHomeScreenLayoutFilePath();
  }
  v11 = ;
  v12 = +[NSFileManager defaultManager];
  if (([v12 fileExistsAtPath:v11] & 1) == 0)
  {
    layout = [payload layout];
    v31 = layout;
    if (layout)
    {
      [layout writeToFile:v11 atomically:1];
    }

    goto LABEL_14;
  }

  v13 = MCHomeScreenLayoutErrorDomain;
  v14 = MCErrorArray();
  v15 = MCErrorTypeFatal;
  v16 = [NSError MCErrorWithDomain:v13 code:43000 descriptionArray:v14 errorType:MCErrorTypeFatal, 0];
  mCCopyAsPrimaryError = [v16 MCCopyAsPrimaryError];

  if (!mCCopyAsPrimaryError)
  {
LABEL_14:
    MCSendHomeScreenLayoutChangedNotification();
    v29 = 1;
    goto LABEL_15;
  }

  v33 = payload;
  v18 = MCInstallationErrorDomain;
  payload2 = [(MCNewPayloadHandler *)self payload];
  [payload2 friendlyName];
  v21 = v20 = error;
  v22 = MCErrorArray();
  v23 = [NSError MCErrorWithDomain:v18 code:4001 descriptionArray:v22 underlyingError:mCCopyAsPrimaryError errorType:v15, v21, 0];

  if (v20)
  {
    v24 = v23;
    *v20 = v23;
  }

  v25 = _MCLogObjects[0];
  payload = v33;
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    friendlyName = [v33 friendlyName];
    mCVerboseDescription = [v23 MCVerboseDescription];
    *buf = 138543618;
    v35 = friendlyName;
    v36 = 2114;
    v37 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Cannot install home screen layout “%{public}@”. Error: %{public}@", buf, 0x16u);
  }

  v29 = 0;
LABEL_15:

  return v29;
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {
    v5 = +[NSFileManager defaultManager];
    homeScreenLayoutFilePath = [(MCHomeScreenLayoutPayloadHandler *)self homeScreenLayoutFilePath];
    [v5 removeItemAtPath:homeScreenLayoutFilePath error:0];

    MCSendHomeScreenLayoutChangedNotification();
  }
}

- (void)setAside
{
  v4 = +[NSFileManager defaultManager];
  homeScreenLayoutFilePath = [(MCHomeScreenLayoutPayloadHandler *)self homeScreenLayoutFilePath];
  [v4 removeItemAtPath:homeScreenLayoutFilePath error:0];
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  layout = [payload layout];
  if (layout)
  {
    homeScreenLayoutFilePath = [(MCHomeScreenLayoutPayloadHandler *)self homeScreenLayoutFilePath];
    [layout writeToFile:homeScreenLayoutFilePath atomically:1];
  }
}

- (id)homeScreenLayoutFilePath
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  installType = [profile installType];

  if (installType == 2)
  {
    MCUserHomeScreenLayoutFilePath();
  }

  else
  {
    MCSystemHomeScreenLayoutFilePath();
  }
  v5 = ;

  return v5;
}

@end
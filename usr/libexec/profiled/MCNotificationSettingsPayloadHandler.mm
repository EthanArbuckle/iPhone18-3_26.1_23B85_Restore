@interface MCNotificationSettingsPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (id)notificationSettingsFilePath;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNotificationSettingsPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  v10 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];

  LODWORD(optionsCopy) = [v10 intValue];
  if (optionsCopy == 2)
  {
    MCUserNotificationSettingsFilePath();
  }

  else
  {
    MCSystemNotificationSettingsFilePath();
  }
  v11 = ;
  v12 = +[NSFileManager defaultManager];
  if (([v12 fileExistsAtPath:v11] & 1) == 0)
  {
    notificationSettings = [payload notificationSettings];
    v31 = notificationSettings;
    if (notificationSettings)
    {
      [notificationSettings writeToFile:v11 atomically:1];
    }

    goto LABEL_14;
  }

  v13 = MCNotificationSettingsErrorDomain;
  v14 = MCErrorArray();
  v15 = MCErrorTypeFatal;
  v16 = [NSError MCErrorWithDomain:v13 code:44000 descriptionArray:v14 errorType:MCErrorTypeFatal, 0];
  mCCopyAsPrimaryError = [v16 MCCopyAsPrimaryError];

  if (!mCCopyAsPrimaryError)
  {
LABEL_14:
    MCSendUserNotificationsSettingsChangedNotification();
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
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Cannot install notification settings “%{public}@”. Error: %{public}@", buf, 0x16u);
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
    notificationSettingsFilePath = [(MCNotificationSettingsPayloadHandler *)self notificationSettingsFilePath];
    [v5 removeItemAtPath:notificationSettingsFilePath error:0];

    MCSendUserNotificationsSettingsChangedNotification();
  }
}

- (void)setAside
{
  v4 = +[NSFileManager defaultManager];
  notificationSettingsFilePath = [(MCNotificationSettingsPayloadHandler *)self notificationSettingsFilePath];
  [v4 removeItemAtPath:notificationSettingsFilePath error:0];
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  notificationSettings = [payload notificationSettings];
  if (notificationSettings)
  {
    notificationSettingsFilePath = [(MCNotificationSettingsPayloadHandler *)self notificationSettingsFilePath];
    [notificationSettings writeToFile:notificationSettingsFilePath atomically:1];
  }
}

- (id)notificationSettingsFilePath
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  installType = [profile installType];

  if (installType == 2)
  {
    MCUserNotificationSettingsFilePath();
  }

  else
  {
    MCSystemNotificationSettingsFilePath();
  }
  v5 = ;

  return v5;
}

@end
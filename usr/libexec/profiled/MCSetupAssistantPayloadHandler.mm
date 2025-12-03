@interface MCSetupAssistantPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)_removeSetupAssistantSettings;
- (void)_saveSetupAssistantSettings;
- (void)remove;
@end

@implementation MCSetupAssistantPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v8 = [NSFileManager defaultManager:installer];
  v9 = MCSetupAssistantSettingsFilePath();
  v10 = [v8 fileExistsAtPath:v9];

  if ((v10 & 1) == 0)
  {
    [(MCSetupAssistantPayloadHandler *)self _saveSetupAssistantSettings];
    goto LABEL_9;
  }

  v11 = MCSetupAssistantErrorDomain;
  v12 = MCErrorArray();
  v13 = MCErrorTypeFatal;
  v14 = [NSError MCErrorWithDomain:v11 code:56000 descriptionArray:v12 errorType:MCErrorTypeFatal, 0];
  mCCopyAsPrimaryError = [v14 MCCopyAsPrimaryError];

  if (!mCCopyAsPrimaryError)
  {
LABEL_9:
    v27 = 1;
    goto LABEL_10;
  }

  v16 = MCInstallationErrorDomain;
  payload = [(MCNewPayloadHandler *)self payload];
  friendlyName = [payload friendlyName];
  v19 = MCErrorArray();
  v20 = [NSError MCErrorWithDomain:v16 code:4001 descriptionArray:v19 underlyingError:mCCopyAsPrimaryError errorType:v13, friendlyName, 0];

  if (error)
  {
    v21 = v20;
    *error = v20;
  }

  v22 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v23 = v22;
    payload2 = [(MCNewPayloadHandler *)self payload];
    friendlyName2 = [payload2 friendlyName];
    mCVerboseDescription = [v20 MCVerboseDescription];
    *buf = 138543618;
    v30 = friendlyName2;
    v31 = 2114;
    v32 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Cannot install shared device configuration “%{public}@”. Error: %{public}@", buf, 0x16u);
  }

  v27 = 0;
LABEL_10:

  return v27;
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCSetupAssistantPayloadHandler *)self _removeSetupAssistantSettings];
  }
}

- (void)_saveSetupAssistantSettings
{
  payload = [(MCNewPayloadHandler *)self payload];
  configuration = [payload configuration];
  v3 = MCSetupAssistantSettingsFilePath();
  [configuration MCWriteToBinaryFile:v3];

  skipKeys = [payload skipKeys];
  v5 = [skipKeys count];

  if (v5)
  {
    MDMSendSkipkeyChangedNotification();
  }
}

- (void)_removeSetupAssistantSettings
{
  v3 = +[NSFileManager defaultManager];
  v4 = MCSetupAssistantSettingsFilePath();
  [v3 removeItemAtPath:v4 error:0];

  payload = [(MCNewPayloadHandler *)self payload];
  skipKeys = [payload skipKeys];
  v6 = [skipKeys count];

  if (v6)
  {
    MDMSendSkipkeyChangedNotification();
  }
}

@end
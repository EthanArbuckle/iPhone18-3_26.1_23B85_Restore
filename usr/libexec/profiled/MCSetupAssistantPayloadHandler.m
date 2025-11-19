@interface MCSetupAssistantPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)_removeSetupAssistantSettings;
- (void)_saveSetupAssistantSettings;
- (void)remove;
@end

@implementation MCSetupAssistantPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = [NSFileManager defaultManager:a3];
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
  v15 = [v14 MCCopyAsPrimaryError];

  if (!v15)
  {
LABEL_9:
    v27 = 1;
    goto LABEL_10;
  }

  v16 = MCInstallationErrorDomain;
  v17 = [(MCNewPayloadHandler *)self payload];
  v18 = [v17 friendlyName];
  v19 = MCErrorArray();
  v20 = [NSError MCErrorWithDomain:v16 code:4001 descriptionArray:v19 underlyingError:v15 errorType:v13, v18, 0];

  if (a6)
  {
    v21 = v20;
    *a6 = v20;
  }

  v22 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v23 = v22;
    v24 = [(MCNewPayloadHandler *)self payload];
    v25 = [v24 friendlyName];
    v26 = [v20 MCVerboseDescription];
    *buf = 138543618;
    v30 = v25;
    v31 = 2114;
    v32 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Cannot install shared device configuration “%{public}@”. Error: %{public}@", buf, 0x16u);
  }

  v27 = 0;
LABEL_10:

  return v27;
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {

    [(MCSetupAssistantPayloadHandler *)self _removeSetupAssistantSettings];
  }
}

- (void)_saveSetupAssistantSettings
{
  v6 = [(MCNewPayloadHandler *)self payload];
  v2 = [v6 configuration];
  v3 = MCSetupAssistantSettingsFilePath();
  [v2 MCWriteToBinaryFile:v3];

  v4 = [v6 skipKeys];
  v5 = [v4 count];

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

  v7 = [(MCNewPayloadHandler *)self payload];
  v5 = [v7 skipKeys];
  v6 = [v5 count];

  if (v6)
  {
    MDMSendSkipkeyChangedNotification();
  }
}

@end
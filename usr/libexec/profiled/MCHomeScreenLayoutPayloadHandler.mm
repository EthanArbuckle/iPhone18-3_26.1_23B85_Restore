@interface MCHomeScreenLayoutPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (id)homeScreenLayoutFilePath;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCHomeScreenLayoutPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = a4;
  v9 = [(MCNewPayloadHandler *)self payload];
  v10 = [v8 objectForKeyedSubscript:kMCInstallProfileOptionInstallationType];

  LODWORD(v8) = [v10 intValue];
  if (v8 == 2)
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
    v30 = [v9 layout];
    v31 = v30;
    if (v30)
    {
      [v30 writeToFile:v11 atomically:1];
    }

    goto LABEL_14;
  }

  v13 = MCHomeScreenLayoutErrorDomain;
  v14 = MCErrorArray();
  v15 = MCErrorTypeFatal;
  v16 = [NSError MCErrorWithDomain:v13 code:43000 descriptionArray:v14 errorType:MCErrorTypeFatal, 0];
  v17 = [v16 MCCopyAsPrimaryError];

  if (!v17)
  {
LABEL_14:
    MCSendHomeScreenLayoutChangedNotification();
    v29 = 1;
    goto LABEL_15;
  }

  v33 = v9;
  v18 = MCInstallationErrorDomain;
  v19 = [(MCNewPayloadHandler *)self payload];
  [v19 friendlyName];
  v21 = v20 = a6;
  v22 = MCErrorArray();
  v23 = [NSError MCErrorWithDomain:v18 code:4001 descriptionArray:v22 underlyingError:v17 errorType:v15, v21, 0];

  if (v20)
  {
    v24 = v23;
    *v20 = v23;
  }

  v25 = _MCLogObjects[0];
  v9 = v33;
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    v27 = [v33 friendlyName];
    v28 = [v23 MCVerboseDescription];
    *buf = 138543618;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Cannot install home screen layout “%{public}@”. Error: %{public}@", buf, 0x16u);
  }

  v29 = 0;
LABEL_15:

  return v29;
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [(MCHomeScreenLayoutPayloadHandler *)self homeScreenLayoutFilePath];
    [v5 removeItemAtPath:v6 error:0];

    MCSendHomeScreenLayoutChangedNotification();
  }
}

- (void)setAside
{
  v4 = +[NSFileManager defaultManager];
  v3 = [(MCHomeScreenLayoutPayloadHandler *)self homeScreenLayoutFilePath];
  [v4 removeItemAtPath:v3 error:0];
}

- (void)unsetAside
{
  v5 = [(MCNewPayloadHandler *)self payload];
  v3 = [v5 layout];
  if (v3)
  {
    v4 = [(MCHomeScreenLayoutPayloadHandler *)self homeScreenLayoutFilePath];
    [v3 writeToFile:v4 atomically:1];
  }
}

- (id)homeScreenLayoutFilePath
{
  v2 = [(MCNewPayloadHandler *)self profileHandler];
  v3 = [v2 profile];
  v4 = [v3 installType];

  if (v4 == 2)
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
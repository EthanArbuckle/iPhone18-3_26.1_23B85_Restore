@interface MCDeclarationsPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)remove;
@end

@implementation MCDeclarationsPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  v13 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];

  if (v13)
  {
    if (error)
    {
      v30 = kMCDeclarationsPayloadType;
      v14 = MCErrorArray();
      v15 = [NSError MCErrorWithDomain:MCInstallationErrorDomain code:4052 descriptionArray:v14 errorType:MCErrorTypeFatal, v30, 0];
LABEL_15:
      *error = v15;

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!objc_opt_class() || !objc_opt_class())
  {
    if (error)
    {
      v14 = MCErrorArray();
      v15 = [NSError MCErrorWithDomain:MCInternalErrorDomain code:4 descriptionArray:v14 errorType:MCErrorTypeFatal, 0];
      goto LABEL_15;
    }

LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v16 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Beginning installation of MCDeclarationsPayload.", buf, 2u);
  }

  payload = [(MCNewPayloadHandler *)self payload];
  declarations = [payload declarations];
  v18 = [RMProfileStore profileStoreForOwner:@"MC.DeclarationsInProfile"];
  v19 = objc_opt_new();
  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = sub_100045DE4;
  v39 = sub_100045DF4;
  v40 = 0;
  identifier = [payload identifier];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100045DFC;
  v32[3] = &unk_10011BFA0;
  v34 = buf;
  v21 = v19;
  v33 = v21;
  [v18 installProfile:identifier declarations:declarations completionHandler:v32];

  [v21 waitForCompletion];
  v22 = *(v36 + 5);
  v23 = v22 == 0;
  v24 = _MCLogObjects[0];
  v25 = v24;
  if (v22)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      friendlyName = [payload friendlyName];
      v27 = *(v36 + 5);
      *v41 = 138543618;
      v42 = friendlyName;
      v43 = 2114;
      v44 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to install declarations profile %{public}@: %{public}@", v41, 0x16u);
    }

    if (error)
    {
      *error = *(v36 + 5);
    }
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      friendlyName2 = [payload friendlyName];
      *v41 = 138543362;
      v42 = friendlyName2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Successfully installed declarations profile %{public}@", v41, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_17:

  return v23;
}

- (void)remove
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    payload = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload friendlyName];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = friendlyName;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing declarations profile %{public}@.", &buf, 0xCu);
  }

  v7 = [RMProfileStore profileStoreForOwner:@"MC.DeclarationsInProfile"];
  v8 = objc_opt_new();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = sub_100045DE4;
  v33 = sub_100045DF4;
  v34 = 0;
  payload2 = [(MCNewPayloadHandler *)self payload];
  identifier = [payload2 identifier];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100046184;
  v23 = &unk_10011BFA0;
  p_buf = &buf;
  v11 = v8;
  v24 = v11;
  [v7 removeProfile:identifier completionHandler:&v20];

  [v11 waitForCompletion];
  v12 = *(*(&buf + 1) + 40);
  v13 = _MCLogObjects[0];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      payload3 = [(MCNewPayloadHandler *)self payload];
      friendlyName2 = [payload3 friendlyName];
      v17 = *(*(&buf + 1) + 40);
      *v26 = 138543618;
      v27 = friendlyName2;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to remove declarations profile %{public}@: %{public}@", v26, 0x16u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    payload4 = [(MCNewPayloadHandler *)self payload];
    friendlyName3 = [payload4 friendlyName];
    *v26 = 138543362;
    v27 = friendlyName3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Successfully removed declarations profile %{public}@", v26, 0xCu);
  }

  _Block_object_dispose(&buf, 8);
}

@end
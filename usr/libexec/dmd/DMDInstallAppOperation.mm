@interface DMDInstallAppOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)appIdentityForBundleIdentifier:(id)identifier persona:(id)persona;
+ (id)whitelistedClassesForRequest;
- (BOOL)appCoordinatorExistsForBundleIdentifier:(id)identifier persona:(id)persona;
- (void)_resumeInstallationForRequest:(id)request;
- (void)_runWithRequest:(id)request;
- (void)installAppForRequest:(id)request;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDInstallAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInstallAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___DMDInstallAppOperation;
  if (!objc_msgSendSuper2(&v12, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_7;
  }

  storeItemIdentifier = [requestCopy storeItemIdentifier];
  if (storeItemIdentifier)
  {
    v8 = storeItemIdentifier;
    licenseType = [requestCopy licenseType];

    if (!licenseType)
    {
      if (!error)
      {
        goto LABEL_8;
      }

      v13 = DMFInvalidParameterErrorKey;
      v14 = @"request.licenseType";
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = DMFErrorWithCodeAndUserInfo();

LABEL_7:
      LOBYTE(error) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(error) = 1;
LABEL_8:

  return error;
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004991C;
  v7[3] = &unk_1000CF2C0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [v5 getMetadataForAppRequest:v6 completion:v7];
}

- (BOOL)appCoordinatorExistsForBundleIdentifier:(id)identifier persona:(id)persona
{
  personaCopy = persona;
  identifierCopy = identifier;
  v7 = [objc_opt_class() appIdentityForBundleIdentifier:identifierCopy persona:personaCopy];

  v15 = 0;
  v8 = [IXAppInstallCoordinator existingCoordinatorForAppWithIdentity:v7 error:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    goto LABEL_2;
  }

  domain = [v9 domain];
  v13 = [domain isEqualToString:IXErrorDomain];

  if (!v13)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if ([v10 code] != 48)
  {
    if ([v10 code] != 46)
    {
      [v10 code];
    }

    goto LABEL_7;
  }

LABEL_2:
  v11 = 1;
LABEL_8:

  return v11;
}

+ (id)appIdentityForBundleIdentifier:(id)identifier persona:(id)persona
{
  personaCopy = persona;
  identifierCopy = identifier;
  v7 = [IXApplicationIdentity alloc];
  if (personaCopy)
  {
    v8 = [v7 initWithBundleIdentifier:identifierCopy personaUniqueString:personaCopy];
  }

  else
  {
    v8 = [v7 initWithBundleIdentifier:identifierCopy];
  }

  v9 = v8;

  return v9;
}

- (void)installAppForRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMDAppController sharedController];
  manifestURL = [requestCopy manifestURL];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100049DE0;
  v11[3] = &unk_1000CEE68;
  v11[4] = self;
  v7 = objc_retainBlock(v11);
  v8 = DMFAppLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (manifestURL)
  {
    if (v9)
    {
      host = [manifestURL host];
      *buf = 138543362;
      v13 = host;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start installing enterprise app with manifest URL from: %{public}@", buf, 0xCu);
    }

    [v5 startInstallingEnterpriseAppWithManifestURL:manifestURL completion:v7];
  }

  else
  {
    if (v9)
    {
      *buf = 138543362;
      v13 = requestCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start installing non-enterprise app for request: %{public}@", buf, 0xCu);
    }

    [v5 startInstallingNonEnterpriseAppForRequest:requestCopy completion:v7];
  }
}

- (void)_runWithRequest:(id)request
{
  requestCopy = request;
  metadata = [(DMDInstallAppOperation *)self metadata];
  lifeCycle = [metadata lifeCycle];
  currentState = [lifeCycle currentState];

  if ((currentState - 4) < 4)
  {
    v12 = DMFBundleIdentifierErrorKey;
    metadata2 = [(DMDInstallAppOperation *)self metadata];
    bundleIdentifier = [metadata2 bundleIdentifier];
    v13 = bundleIdentifier;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
LABEL_5:
    v11 = DMFErrorWithCodeAndUserInfo();
    [(DMDInstallAppOperation *)self endOperationWithError:v11];

    goto LABEL_6;
  }

  if ((currentState - 1) < 2)
  {
    v14 = DMFBundleIdentifierErrorKey;
    metadata2 = [(DMDInstallAppOperation *)self metadata];
    bundleIdentifier = [metadata2 bundleIdentifier];
    v15 = bundleIdentifier;
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    goto LABEL_5;
  }

  if (currentState == 3)
  {
    [(DMDInstallAppOperation *)self _resumeInstallationForRequest:requestCopy];
  }

  else
  {
    [(DMDInstallAppOperation *)self installAppForRequest:requestCopy];
  }

LABEL_6:
}

- (void)_resumeInstallationForRequest:(id)request
{
  metadata = [(DMDInstallAppOperation *)self metadata];
  bundleIdentifier = [metadata bundleIdentifier];

  v6 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004A060;
  v7[3] = &unk_1000CEE68;
  v7[4] = self;
  [v6 resumeAppInstallationWithBundleIdentifier:bundleIdentifier completion:v7];
}

@end
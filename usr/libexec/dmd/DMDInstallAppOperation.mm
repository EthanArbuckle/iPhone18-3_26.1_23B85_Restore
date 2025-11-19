@interface DMDInstallAppOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)appIdentityForBundleIdentifier:(id)a3 persona:(id)a4;
+ (id)whitelistedClassesForRequest;
- (BOOL)appCoordinatorExistsForBundleIdentifier:(id)a3 persona:(id)a4;
- (void)_resumeInstallationForRequest:(id)a3;
- (void)_runWithRequest:(id)a3;
- (void)installAppForRequest:(id)a3;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDInstallAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInstallAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___DMDInstallAppOperation;
  if (!objc_msgSendSuper2(&v12, "validateRequest:error:", v6, a4))
  {
    goto LABEL_7;
  }

  v7 = [v6 storeItemIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 licenseType];

    if (!v9)
    {
      if (!a4)
      {
        goto LABEL_8;
      }

      v13 = DMFInvalidParameterErrorKey;
      v14 = @"request.licenseType";
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_7:
      LOBYTE(a4) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(a4) = 1;
LABEL_8:

  return a4;
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004991C;
  v7[3] = &unk_1000CF2C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getMetadataForAppRequest:v6 completion:v7];
}

- (BOOL)appCoordinatorExistsForBundleIdentifier:(id)a3 persona:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() appIdentityForBundleIdentifier:v6 persona:v5];

  v15 = 0;
  v8 = [IXAppInstallCoordinator existingCoordinatorForAppWithIdentity:v7 error:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    goto LABEL_2;
  }

  v12 = [v9 domain];
  v13 = [v12 isEqualToString:IXErrorDomain];

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

+ (id)appIdentityForBundleIdentifier:(id)a3 persona:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [IXApplicationIdentity alloc];
  if (v5)
  {
    v8 = [v7 initWithBundleIdentifier:v6 personaUniqueString:v5];
  }

  else
  {
    v8 = [v7 initWithBundleIdentifier:v6];
  }

  v9 = v8;

  return v9;
}

- (void)installAppForRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v6 = [v4 manifestURL];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100049DE0;
  v11[3] = &unk_1000CEE68;
  v11[4] = self;
  v7 = objc_retainBlock(v11);
  v8 = DMFAppLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v10 = [v6 host];
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start installing enterprise app with manifest URL from: %{public}@", buf, 0xCu);
    }

    [v5 startInstallingEnterpriseAppWithManifestURL:v6 completion:v7];
  }

  else
  {
    if (v9)
    {
      *buf = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start installing non-enterprise app for request: %{public}@", buf, 0xCu);
    }

    [v5 startInstallingNonEnterpriseAppForRequest:v4 completion:v7];
  }
}

- (void)_runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(DMDInstallAppOperation *)self metadata];
  v6 = [v5 lifeCycle];
  v7 = [v6 currentState];

  if ((v7 - 4) < 4)
  {
    v12 = DMFBundleIdentifierErrorKey;
    v8 = [(DMDInstallAppOperation *)self metadata];
    v9 = [v8 bundleIdentifier];
    v13 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
LABEL_5:
    v11 = DMFErrorWithCodeAndUserInfo();
    [(DMDInstallAppOperation *)self endOperationWithError:v11];

    goto LABEL_6;
  }

  if ((v7 - 1) < 2)
  {
    v14 = DMFBundleIdentifierErrorKey;
    v8 = [(DMDInstallAppOperation *)self metadata];
    v9 = [v8 bundleIdentifier];
    v15 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    goto LABEL_5;
  }

  if (v7 == 3)
  {
    [(DMDInstallAppOperation *)self _resumeInstallationForRequest:v4];
  }

  else
  {
    [(DMDInstallAppOperation *)self installAppForRequest:v4];
  }

LABEL_6:
}

- (void)_resumeInstallationForRequest:(id)a3
{
  v4 = [(DMDInstallAppOperation *)self metadata];
  v5 = [v4 bundleIdentifier];

  v6 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004A060;
  v7[3] = &unk_1000CEE68;
  v7[4] = self;
  [v6 resumeAppInstallationWithBundleIdentifier:v5 completion:v7];
}

@end
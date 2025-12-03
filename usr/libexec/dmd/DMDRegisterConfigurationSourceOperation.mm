@interface DMDRegisterConfigurationSourceOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDRegisterConfigurationSourceOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDRegisterConfigurationSourceOperation;
  [(DMDRegisterConfigurationSourceOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  configurationEngine = [(DMDTaskOperation *)self configurationEngine];

  if (configurationEngine)
  {
    context = [(DMDTaskOperation *)self context];
    clientBundleIdentifier = [context clientBundleIdentifier];

    if (clientBundleIdentifier)
    {
      configurationEngine2 = [(DMDTaskOperation *)self configurationEngine];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100068048;
      v10[3] = &unk_1000CEE68;
      v10[4] = self;
      [configurationEngine2 handleConfigurationSourceRegistrationRequest:requestCopy clientIdentifier:clientBundleIdentifier completionHandler:v10];
    }

    else
    {
      v9 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100086CCC(v9);
      }

      configurationEngine2 = DMFErrorWithCodeAndUserInfo();
      [(DMDRegisterConfigurationSourceOperation *)self endOperationWithError:configurationEngine2];
    }
  }

  else
  {
    clientBundleIdentifier = DMFErrorWithCodeAndUserInfo();
    [(DMDRegisterConfigurationSourceOperation *)self endOperationWithError:clientBundleIdentifier];
  }
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___DMDRegisterConfigurationSourceOperation;
  if (!objc_msgSendSuper2(&v15, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_10;
  }

  configurationSourceName = [requestCopy configurationSourceName];
  v8 = [configurationSourceName length];

  if (!v8)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v18 = DMFInvalidParameterErrorKey;
    v19 = @"request.configurationSourceName";
    v11 = &v19;
    v12 = &v18;
    goto LABEL_9;
  }

  organizationIdentifier = [requestCopy organizationIdentifier];
  v10 = [organizationIdentifier length];

  if (!v10)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v16 = DMFInvalidParameterErrorKey;
    v17 = @"request.organizationIdentifier";
    v11 = &v17;
    v12 = &v16;
LABEL_9:
    v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_10:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  LOBYTE(error) = 1;
LABEL_11:

  return error;
}

@end
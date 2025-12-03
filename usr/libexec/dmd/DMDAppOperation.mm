@interface DMDAppOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
- (void)runWithRequest:(id)request;
- (void)runWithRequest:(id)request bundleIdentifier:(id)identifier;
- (void)waitUntilFinished;
@end

@implementation DMDAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___DMDAppOperation;
  if (objc_msgSendSuper2(&v17, "validateRequest:error:", requestCopy, error))
  {
    bundleIdentifier = [requestCopy bundleIdentifier];
    storeItemIdentifier = [requestCopy storeItemIdentifier];
    manifestURL = [requestCopy manifestURL];
    v10 = manifestURL;
    v11 = bundleIdentifier != 0;
    v12 = 1;
    if (bundleIdentifier)
    {
      v12 = 2;
    }

    if (storeItemIdentifier)
    {
      v11 = v12;
    }

    if (manifestURL)
    {
      ++v11;
    }

    v13 = v11 == 1;
    if (v11 != 1)
    {
      v14 = DMFAppLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007DD14(v14);
      }

      if (error)
      {
        v18 = DMFInvalidParameterErrorKey;
        v19 = @"request.bundleIdentifier";
        v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *error = DMFErrorWithCodeAndUserInfo();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022CBC;
  v7[3] = &unk_1000CE5F0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [v5 getBundleIdentifierForAppRequest:v6 completion:v7];
}

- (void)runWithRequest:(id)request bundleIdentifier:(id)identifier
{
  v8 = [NSAssertionHandler currentHandler:request];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppOperation.m" lineNumber:73 description:{@"%@ must implement %@", v6, v7}];
}

@end
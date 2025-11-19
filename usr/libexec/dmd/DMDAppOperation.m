@interface DMDAppOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
- (void)runWithRequest:(id)a3;
- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4;
- (void)waitUntilFinished;
@end

@implementation DMDAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___DMDAppOperation;
  if (objc_msgSendSuper2(&v17, "validateRequest:error:", v6, a4))
  {
    v7 = [v6 bundleIdentifier];
    v8 = [v6 storeItemIdentifier];
    v9 = [v6 manifestURL];
    v10 = v9;
    v11 = v7 != 0;
    v12 = 1;
    if (v7)
    {
      v12 = 2;
    }

    if (v8)
    {
      v11 = v12;
    }

    if (v9)
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

      if (a4)
      {
        v18 = DMFInvalidParameterErrorKey;
        v19 = @"request.bundleIdentifier";
        v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *a4 = DMFErrorWithCodeAndUserInfo();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022CBC;
  v7[3] = &unk_1000CE5F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getBundleIdentifierForAppRequest:v6 completion:v7];
}

- (void)runWithRequest:(id)a3 bundleIdentifier:(id)a4
{
  v8 = [NSAssertionHandler currentHandler:a3];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"DMDAppOperation.m" lineNumber:73 description:{@"%@ must implement %@", v6, v7}];
}

@end
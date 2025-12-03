@interface DMDLogOutUserOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDLogOutUserOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDLogOutUserOperation;
  [(DMDLogOutUserOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)runWithRequest:(id)request
{
  v4 = +[UMUserManager sharedManager];
  currentUser = [v4 currentUser];
  isLoginUser = [currentUser isLoginUser];

  if (isLoginUser)
  {
    v7 = DMFErrorWithCodeAndUserInfo();
    [(DMDLogOutUserOperation *)self endOperationWithError:v7];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004E548;
    v8[3] = &unk_1000CEE68;
    v8[4] = self;
    [v4 switchToLoginUserWithCompletionHandler:v8];
  }
}

@end
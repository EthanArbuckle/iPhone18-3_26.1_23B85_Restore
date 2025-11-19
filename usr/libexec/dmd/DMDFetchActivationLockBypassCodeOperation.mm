@interface DMDFetchActivationLockBypassCodeOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchActivationLockBypassCodeOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchActivationLockBypassCodeOperation;
  [(DMDFetchActivationLockBypassCodeOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = +[MCProfileConnection sharedConnection];
  v9 = 0;
  v5 = [v4 fetchActivationLockBypassKeyWithError:&v9];
  v6 = v9;

  if (v5)
  {
    v7 = [[DMFFetchActivationLockBypassCodeResultObject alloc] initWithBypassCode:v5];
    [(DMDFetchActivationLockBypassCodeOperation *)self endOperationWithResultObject:v7];
  }

  else if (v6)
  {
    v10 = NSUnderlyingErrorKey;
    v11 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = DMFErrorWithCodeAndUserInfo();
    [(DMDFetchActivationLockBypassCodeOperation *)self endOperationWithError:v8];
  }

  else
  {
    v7 = DMFErrorWithCodeAndUserInfo();
    [(DMDFetchActivationLockBypassCodeOperation *)self endOperationWithError:v7];
  }
}

@end
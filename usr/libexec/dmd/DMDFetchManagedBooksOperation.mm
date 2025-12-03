@interface DMDFetchManagedBooksOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchManagedBooksOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchManagedBooksOperation;
  [(DMDFetchManagedBooksOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = [DMDPowerAssertion assertionForOperation:@"DMDFetchManagedBooksOperation: run"];
  if (MCHasMDMMigrated())
  {
    +[DMDManagedMediaManager sharedManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100047110;
    v7 = v6[3] = &unk_1000CDC38;
    selfCopy = self;
    v5 = v7;
    [v5 cleanUpWithAssertion:v4 completionBlock:v6];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1650];
  }
}

@end
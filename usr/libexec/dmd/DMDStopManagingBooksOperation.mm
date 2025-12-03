@interface DMDStopManagingBooksOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDStopManagingBooksOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDStopManagingBooksOperation;
  [(DMDStopManagingBooksOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = [DMDPowerAssertion assertionForOperation:@"DMDStopManagingBooksOperation: run"];
  if (MCHasMDMMigrated())
  {
    v5 = +[DMDManagedMediaManager sharedManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100070208;
    v6[3] = &unk_1000CE5A0;
    v6[4] = self;
    [v5 uprootWithAssertion:v4 completionBlock:v6];
  }

  else
  {
    [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1650];
  }
}

@end
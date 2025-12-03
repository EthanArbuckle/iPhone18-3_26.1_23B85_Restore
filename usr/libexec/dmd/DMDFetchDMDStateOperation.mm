@interface DMDFetchDMDStateOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchDMDStateOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchDMDStateOperation;
  [(DMDFetchDMDStateOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  v4 = +[DMDServer sharedServer];
  v5 = +[DMDAppController sharedController];
  v7 = [NSString stringWithFormat:@"Server:\n%@\nApps:\n%@", v4, v5];

  v6 = [[DMFFetchDMDStateResultObject alloc] initWithStateDescription:v7];
  [(DMDFetchDMDStateOperation *)self endOperationWithResultObject:v6];
}

@end
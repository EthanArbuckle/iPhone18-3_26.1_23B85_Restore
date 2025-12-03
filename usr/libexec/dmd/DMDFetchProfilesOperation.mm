@interface DMDFetchProfilesOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchProfilesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchProfilesOperation;
  [(DMDFetchProfilesOperation *)&v2 waitUntilFinished];
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
  v5 = -[DMDFetchProfilesOperation _profileListWithFilterFlags:](self, "_profileListWithFilterFlags:", MCProfileFilterFlagsFromDMFProfileFilterFlags([request filterFlags]));
  v4 = [[DMFFetchProfilesResultObject alloc] initWithProfiles:v5];
  [(DMDFetchProfilesOperation *)self endOperationWithResultObject:v4];
}

@end
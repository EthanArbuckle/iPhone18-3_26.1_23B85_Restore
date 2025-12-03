@interface DMDFetchRestrictionsOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchRestrictionsOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchRestrictionsOperation;
  [(DMDFetchRestrictionsOperation *)&v2 waitUntilFinished];
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
  v8 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v8 currentRestrictions];
  defaultRestrictions = [v8 defaultRestrictions];
  v6 = [MCRestrictionManager filterRestrictionDictionary:currentRestrictions toIncludeOnlyRestrictionsThatDifferFromRestrictions:defaultRestrictions];

  v7 = [[DMFFetchRestrictionsResultObject alloc] initWithRestrictions:v6];
  [(DMDFetchRestrictionsOperation *)self endOperationWithResultObject:v7];
}

@end
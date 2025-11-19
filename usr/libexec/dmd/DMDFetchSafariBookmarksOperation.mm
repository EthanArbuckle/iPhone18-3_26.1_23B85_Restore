@interface DMDFetchSafariBookmarksOperation
+ (id)whitelistedClassesForRequest;
- (void)waitUntilFinished;
@end

@implementation DMDFetchSafariBookmarksOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchSafariBookmarksOperation;
  [(DMDFetchSafariBookmarksOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

@end
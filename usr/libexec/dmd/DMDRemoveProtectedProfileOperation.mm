@interface DMDRemoveProtectedProfileOperation
+ (id)whitelistedClassesForRequest;
- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5;
@end

@implementation DMDRemoveProtectedProfileOperation

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[MCProfileConnection sharedConnection];
  [v9 removeProtectedProfileAsyncWithIdentifier:v8 installationType:a4 completion:v7];
}

@end
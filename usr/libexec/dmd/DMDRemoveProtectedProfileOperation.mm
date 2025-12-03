@interface DMDRemoveProtectedProfileOperation
+ (id)whitelistedClassesForRequest;
- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion;
@end

@implementation DMDRemoveProtectedProfileOperation

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)removeProfileWithIdentifier:(id)identifier installationType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = +[MCProfileConnection sharedConnection];
  [v9 removeProtectedProfileAsyncWithIdentifier:identifierCopy installationType:type completion:completionCopy];
}

@end
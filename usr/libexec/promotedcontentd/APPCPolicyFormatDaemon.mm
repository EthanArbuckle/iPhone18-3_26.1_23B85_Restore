@interface APPCPolicyFormatDaemon
+ (BOOL)storeAdPolicies:(id)policies;
+ (id)adPolicies;
@end

@implementation APPCPolicyFormatDaemon

+ (BOOL)storeAdPolicies:(id)policies
{
  policiesCopy = policies;
  v4 = [[APStorageManager alloc] initWithPathPrefix:@"a/p/"];
  if ([policiesCopy count])
  {
    v9 = 0;
    v5 = &v9;
    [v4 storeObject:policiesCopy atPath:@"APAdPolicy" error:&v9];
  }

  else
  {
    v10 = 0;
    v5 = &v10;
    [v4 removeObjectAtPath:@"APAdPolicy" error:&v10];
  }

  v6 = *v5;
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error storing EFS Settings object for policy: %{public}@", buf, 0xCu);
    }
  }

  return v6 == 0;
}

+ (id)adPolicies
{
  v2 = [[APStorageManager alloc] initWithPathPrefix:@"a/p/"];
  v3 = [NSSet setWithObject:objc_opt_class()];
  [APSupportedSecureEncodedClass addClasses:v3];
  v11 = 0;
  v4 = [v2 fileExistsAtPath:@"APAdPolicy" error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error finding EFS Settings object for policy: %{public}@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v10 = v5;
    v7 = [v2 objectStoredAtPath:@"APAdPolicy" error:&v10];
    v8 = v10;

    v5 = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
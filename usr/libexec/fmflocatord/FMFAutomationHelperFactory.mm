@interface FMFAutomationHelperFactory
+ (id)sharedFactory;
- (Class)automationHelperClassWithName:(id)a3;
@end

@implementation FMFAutomationHelperFactory

+ (id)sharedFactory
{
  if (qword_100070340 != -1)
  {
    sub_100038C44();
  }

  v3 = qword_100070338;

  return v3;
}

- (Class)automationHelperClassWithName:(id)a3
{
  v4 = a3;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading automation class %@", &v15, 0xCu);
  }

  if (![(FMFAutomationHelperFactory *)self hasAttemptedLoad])
  {
    v6 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
    v7 = [v6 pathForResource:@"FMDAutomationHelpers" ofType:@"bundle"];
    v8 = [NSBundle bundleWithPath:v7];
    [(FMFAutomationHelperFactory *)self setAutomationHelperBundle:v8];

    [(FMFAutomationHelperFactory *)self setHasAttemptedLoad:1];
  }

  if ([(FMFAutomationHelperFactory *)self hasAttemptedLoad]&& ([(FMFAutomationHelperFactory *)self automationHelperBundle], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v13 = 0;
  }

  else
  {
    v10 = [(FMFAutomationHelperFactory *)self automationHelperBundle];
    v11 = [v10 classNamed:v4];

    if (!v11)
    {
      v12 = sub_100002830();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100038C58(v4, v12);
      }
    }

    v13 = v11;
  }

  return v13;
}

@end
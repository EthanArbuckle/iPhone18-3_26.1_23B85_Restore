@interface MSDGreyMatterAvailabilityChecker
+ (BOOL)waitForGMAvailability;
@end

@implementation MSDGreyMatterAvailabilityChecker

+ (BOOL)waitForGMAvailability
{
  v2 = sub_100063A54();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "+[MSDGreyMatterAvailabilityChecker waitForGMAvailability]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s - Start checkAvailability", buf, 0xCu);
  }

  v3 = dispatch_semaphore_create(0);
  if (+[MSDGreyMatterOpter isOptedIn])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000565BC;
    v11[3] = &unk_100169B70;
    v4 = v3;
    v12 = v4;
    [_TtC5demod13MSDGreyMatter checkAvailabilityWithCompletion:v11];
    v5 = dispatch_time(0, 1200000000000);
    v6 = dispatch_semaphore_wait(v4, v5);
    v7 = v6 == 0;
    v8 = sub_100063A54();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000D46FC(v9);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GM is now available.", buf, 2u);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end
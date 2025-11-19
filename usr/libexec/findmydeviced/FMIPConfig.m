@interface FMIPConfig
+ (id)sharedInstance;
- (id)initSingleton;
- (void)dealloc;
- (void)enableFMIPLocationServices;
@end

@implementation FMIPConfig

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  v4 = qword_1003145D0;
  qword_1003145D0 = 0;

  v5.receiver = self;
  v5.super_class = FMIPConfig;
  [(FMIPConfig *)&v5 dealloc];
}

+ (id)sharedInstance
{
  if (qword_1003145D8 != -1)
  {
    sub_1002272F8();
  }

  v2 = qword_1003145D0;
  if (!qword_1003145D0)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMIPConfig singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1003145D0;
  }

  return v2;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = FMIPConfig;
  v2 = [(FMIPConfig *)&v5 init];
  if (v2)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100227350(v3);
    }

    objc_storeStrong(&qword_1003145D0, v2);
  }

  return v2;
}

- (void)enableFMIPLocationServices
{
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  [CLLocationManager setAuthorizationStatusByType:3 forBundle:v2];
}

@end
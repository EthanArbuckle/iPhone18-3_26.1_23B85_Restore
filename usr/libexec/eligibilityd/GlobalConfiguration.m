@interface GlobalConfiguration
+ (GlobalConfiguration)sharedInstance;
- (BOOL)allowsInternalSecurityPolicy;
- (BOOL)hasInternalContent;
- (BOOL)isMemoryConstrainedDevice;
- (BOOL)setTestMode:(BOOL)a3 withError:(id *)a4;
- (BOOL)testMode;
- (GlobalConfiguration)init;
- (id)debugDescription;
@end

@implementation GlobalConfiguration

- (id)debugDescription
{
  v3 = [(GlobalConfiguration *)self currentUsername];
  v4 = [NSString stringWithFormat:@"<GlobalConfiguration currUser: %@, testMode: %d>", v3, [(GlobalConfiguration *)self testMode]];

  return v4;
}

- (BOOL)testMode
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(GlobalConfiguration *)self testModeQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021F1C;
  v5[3] = &unk_100046A18;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)setTestMode:(BOOL)a3 withError:(id *)a4
{
  v7 = [(GlobalConfiguration *)self hasInternalContent];
  if (v7)
  {
    v8 = [(GlobalConfiguration *)self testModeQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000220C4;
    v12[3] = &unk_100046750;
    v12[4] = self;
    v13 = a3;
    dispatch_sync(v8, v12);

    v9 = 0;
  }

  else
  {
    v10 = sub_10001F638();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[GlobalConfiguration setTestMode:withError:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Test mode can only be set on internal builds", buf, 0xCu);
    }

    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (a4)
    {
      v9 = v9;
      *a4 = v9;
    }
  }

  return v7;
}

- (BOOL)allowsInternalSecurityPolicy
{
  if (qword_10005D508 != -1)
  {
    dispatch_once(&qword_10005D508, &stru_100046728);
  }

  return byte_10005D510;
}

- (BOOL)isMemoryConstrainedDevice
{
  if (qword_10005D4F8 != -1)
  {
    dispatch_once(&qword_10005D4F8, &stru_100046708);
  }

  return byte_10005D500;
}

- (BOOL)hasInternalContent
{
  if (qword_10005D4E8 != -1)
  {
    dispatch_once(&qword_10005D4E8, &stru_1000466E8);
  }

  return byte_10005D4F0;
}

- (GlobalConfiguration)init
{
  v6.receiver = self;
  v6.super_class = GlobalConfiguration;
  v2 = [(GlobalConfiguration *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.eligibilityd.testMode", v3);
    [(GlobalConfiguration *)v2 setTestModeQueue:v4];
  }

  return v2;
}

+ (GlobalConfiguration)sharedInstance
{
  if (qword_10005D4E0 != -1)
  {
    dispatch_once(&qword_10005D4E0, &stru_1000466C8);
  }

  v3 = qword_10005D4D8;

  return v3;
}

@end
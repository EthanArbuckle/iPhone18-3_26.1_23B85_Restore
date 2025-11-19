@interface _APRSBiomeAppLaunchTimeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)serialize;
@end

@implementation _APRSBiomeAppLaunchTimeEvent

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  if (a4 == 2)
  {
    [a3 getBytes:v10 length:68];
    v4 = objc_opt_class();
    v5 = [NSString stringWithUTF8String:v10];
    v6 = HIDWORD(v11);
    v7 = v12;
  }

  else
  {
    [a3 getBytes:v10 length:68];
    v4 = objc_opt_class();
    v5 = [NSString stringWithUTF8String:v10];
    v6 = HIDWORD(v11);
    v7 = v12;
  }

  v8 = [v4 eventWithAppBundleID:v5 activationTime:v6 launchReason:v7];

  return v8;
}

- (id)serialize
{
  LODWORD(v11) = 0;
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_bundleID copy:0];
  if ([v3 length] >= 0x3D)
  {
    v4 = os_log_create("com.apple.aprs", "appResume.AppLaunchWriter");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100120D34(&v2->_bundleID, v3, v4);
    }

    v5 = [v3 substringToIndex:60];

    v3 = v5;
  }

  if (([v3 getCString:&v9 maxLength:60 encoding:4] & 1) == 0)
  {
    v6 = os_log_create("com.apple.aprs", "appResume.AppLaunchWriter");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120DC0(&v2->_bundleID, v6);
    }
  }

  HIDWORD(v10) = v2->_activationTime;
  LOBYTE(v11) = v2->_launchReason;

  objc_sync_exit(v2);
  v7 = [NSData dataWithBytes:&v9 length:68];

  return v7;
}

@end
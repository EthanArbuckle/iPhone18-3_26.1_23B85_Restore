@interface _APRSBiomeAppLaunchTimeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (id)serialize;
@end

@implementation _APRSBiomeAppLaunchTimeEvent

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  if (version == 2)
  {
    [data getBytes:v10 length:68];
    v4 = objc_opt_class();
    v5 = [NSString stringWithUTF8String:v10];
    v6 = HIDWORD(v11);
    v7 = v12;
  }

  else
  {
    [data getBytes:v10 length:68];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_bundleID copy:0];
  if ([v3 length] >= 0x3D)
  {
    v4 = os_log_create("com.apple.aprs", "appResume.AppLaunchWriter");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100120D34(&selfCopy->_bundleID, v3, v4);
    }

    v5 = [v3 substringToIndex:60];

    v3 = v5;
  }

  if (([v3 getCString:&v9 maxLength:60 encoding:4] & 1) == 0)
  {
    v6 = os_log_create("com.apple.aprs", "appResume.AppLaunchWriter");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120DC0(&selfCopy->_bundleID, v6);
    }
  }

  HIDWORD(v10) = selfCopy->_activationTime;
  LOBYTE(v11) = selfCopy->_launchReason;

  objc_sync_exit(selfCopy);
  v7 = [NSData dataWithBytes:&v9 length:68];

  return v7;
}

@end
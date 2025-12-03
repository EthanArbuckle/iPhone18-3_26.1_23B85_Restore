@interface _APRSBiomeAppStateEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (id)serialize;
@end

@implementation _APRSBiomeAppStateEvent

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  [data getBytes:v8 length:64];
  v4 = objc_opt_class();
  v5 = [NSString stringWithUTF8String:v8];
  v6 = [v4 eventWithAppBundleID:v5 appState:HIDWORD(v9)];

  return v6;
}

- (id)serialize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_bundleID copy:0];
  if ([v3 length] >= 0x3D)
  {
    v4 = os_log_create("com.apple.aprs", "appResume.AppStateWriter");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100120D34(&selfCopy->_bundleID, v3, v4);
    }

    v5 = [v3 substringToIndex:60];

    v3 = v5;
  }

  if (([v3 getCString:&v9 maxLength:60 encoding:4] & 1) == 0)
  {
    v6 = os_log_create("com.apple.aprs", "appResume.AppStateWriter");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120DC0(&selfCopy->_bundleID, v6);
    }
  }

  HIDWORD(v10) = selfCopy->_appState;

  objc_sync_exit(selfCopy);
  v7 = [NSData dataWithBytes:&v9 length:64];

  return v7;
}

@end
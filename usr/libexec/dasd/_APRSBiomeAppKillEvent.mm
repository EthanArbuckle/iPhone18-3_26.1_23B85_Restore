@interface _APRSBiomeAppKillEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (id)log;
- (id)serialize;
@end

@implementation _APRSBiomeAppKillEvent

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  [data getBytes:v8 length:68];
  v4 = objc_opt_class();
  v5 = [NSString stringWithUTF8String:v8];
  v6 = [v4 eventWithAppBundleID:v5 pid:HIDWORD(v9) exitReason:v10];

  return v6;
}

- (id)log
{
  if (qword_10020B418 != -1)
  {
    sub_100120EA8();
  }

  v3 = qword_10020B420;

  return v3;
}

- (id)serialize
{
  LODWORD(v11) = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_bundleID copy:0];
  if ([v3 length] >= 0x3D)
  {
    v4 = [(_APRSBiomeAppKillEvent *)selfCopy log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100120D34(&selfCopy->_bundleID, v3, v4);
    }

    v5 = [v3 substringToIndex:60];

    v3 = v5;
  }

  if (([v3 getCString:&v9 maxLength:60 encoding:4] & 1) == 0)
  {
    v6 = [(_APRSBiomeAppKillEvent *)selfCopy log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120DC0(&selfCopy->_bundleID, v6);
    }
  }

  HIDWORD(v10) = selfCopy->_pid;
  LODWORD(v11) = selfCopy->_exitReason;

  objc_sync_exit(selfCopy);
  v7 = [NSData dataWithBytes:&v9 length:68];

  return v7;
}

@end
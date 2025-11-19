@interface _APRSBiomeAppKillEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)log;
- (id)serialize;
@end

@implementation _APRSBiomeAppKillEvent

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  [a3 getBytes:v8 length:68];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_bundleID copy:0];
  if ([v3 length] >= 0x3D)
  {
    v4 = [(_APRSBiomeAppKillEvent *)v2 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100120D34(&v2->_bundleID, v3, v4);
    }

    v5 = [v3 substringToIndex:60];

    v3 = v5;
  }

  if (([v3 getCString:&v9 maxLength:60 encoding:4] & 1) == 0)
  {
    v6 = [(_APRSBiomeAppKillEvent *)v2 log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100120DC0(&v2->_bundleID, v6);
    }
  }

  HIDWORD(v10) = v2->_pid;
  LODWORD(v11) = v2->_exitReason;

  objc_sync_exit(v2);
  v7 = [NSData dataWithBytes:&v9 length:68];

  return v7;
}

@end
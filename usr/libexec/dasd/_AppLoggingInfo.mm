@interface _AppLoggingInfo
- (_AppLoggingInfo)initWithPid:(int)a3;
@end

@implementation _AppLoggingInfo

- (_AppLoggingInfo)initWithPid:(int)a3
{
  v9.receiver = self;
  v9.super_class = _AppLoggingInfo;
  v4 = [(_AppLoggingInfo *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = a3;
    v6 = +[NSDate date];
    startDate = v5->_startDate;
    v5->_startDate = v6;
  }

  return v5;
}

@end
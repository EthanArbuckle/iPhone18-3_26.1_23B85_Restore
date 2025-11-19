@interface SWCAnalyticsLogger
+ (id)sharedLogger;
@end

@implementation SWCAnalyticsLogger

+ (id)sharedLogger
{
  if (qword_10003AD00 != -1)
  {
    dispatch_once(&qword_10003AD00, &stru_100034E08);
  }

  v3 = qword_10003AD08;

  return v3;
}

@end
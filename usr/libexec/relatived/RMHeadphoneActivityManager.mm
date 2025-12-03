@interface RMHeadphoneActivityManager
+ (id)sharedInstance;
- (BOOL)mslLoggingEnabled;
- (RMHeadphoneActivityManager)init;
- (void)startMslLogging;
- (void)stopMslLogging;
@end

@implementation RMHeadphoneActivityManager

+ (id)sharedInstance
{
  if (qword_10002C550 != -1)
  {
    sub_100013544();
  }

  v3 = qword_10002C548;

  return v3;
}

- (RMHeadphoneActivityManager)init
{
  v5.receiver = self;
  v5.super_class = RMHeadphoneActivityManager;
  v2 = [(RMHeadphoneActivityManager *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(RMHeadphoneActivityManager *)v2 setActivityManager:v3];
  }

  return v2;
}

- (BOOL)mslLoggingEnabled
{
  activityManager = [(RMHeadphoneActivityManager *)self activityManager];
  mslLoggingEnabled = [activityManager mslLoggingEnabled];

  return mslLoggingEnabled;
}

- (void)startMslLogging
{
  v3 = sub_10000E778();
  v5 = [NSString stringWithFormat:@"%@/HeadphoneActivity/MSL/", v3];

  activityManager = [(RMHeadphoneActivityManager *)self activityManager];
  [activityManager startMslLoggingWithFilenamePrefix:@"headphoneactivity" filePath:v5];
}

- (void)stopMslLogging
{
  activityManager = [(RMHeadphoneActivityManager *)self activityManager];
  [activityManager stopMslLogging];
}

@end
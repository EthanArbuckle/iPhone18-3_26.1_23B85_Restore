@interface _DASConfig
+ (BOOL)computeHasDeviceRecentlyUpdated;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)requiresStrictDarkBoot;
+ (void)initialize;
@end

@implementation _DASConfig

+ (void)initialize
{
  v3 = objc_autoreleasePoolPush();
  byte_10020B768 = os_variant_has_internal_content();
  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
  v6 = qword_10020B770;
  qword_10020B770 = v5;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000C3F40;
  handler[3] = &unk_1001B54A0;
  handler[4] = self;
  dispatch_source_set_event_handler(qword_10020B770, handler);
  v7 = qword_10020B770;
  v8 = dispatch_walltime(0, 43200000000000);
  dispatch_source_set_timer(v7, v8, 0x274A48A78000uLL, 0xD18C2E2800uLL);
  dispatch_activate(qword_10020B770);
  byte_10020B778 = [objc_opt_class() computeHasDeviceRecentlyUpdated];
  objc_autoreleasePoolPop(v3);
}

+ (BOOL)computeHasDeviceRecentlyUpdated
{
  if (sysctlbyname_get_data_np())
  {
    return 0;
  }

  v3 = [NSString stringWithUTF8String:0, 0];
  free(0);
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v5 = [v4 stringForKey:@"savedBuildVersion"];
  v6 = +[NSDate date];
  if (v5 && ([v3 substringToIndex:{objc_msgSend(v3, "length") - 1}], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "substringToIndex:", objc_msgSend(v5, "length") - 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    [v4 doubleForKey:@"savedBuildDate"];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v6 timeIntervalSinceDate:v10];
    v2 = v11 < 604800.0;
  }

  else
  {
    [v4 setObject:v3 forKey:@"savedBuildVersion"];
    +[NSDate timeIntervalSinceReferenceDate];
    [v4 setDouble:@"savedBuildDate" forKey:?];
    v2 = 1;
  }

  return v2;
}

+ (BOOL)isiPad
{
  if (qword_10020B780 != -1)
  {
    sub_10012A290();
  }

  return byte_10020B779;
}

+ (BOOL)isiPhone
{
  if (qword_10020B790 != -1)
  {
    sub_10012A2A4();
  }

  return byte_10020B788;
}

+ (BOOL)requiresStrictDarkBoot
{
  if (qword_10020B7A0 != -1)
  {
    sub_10012A2B8();
  }

  return byte_10020B798;
}

@end
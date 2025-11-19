@interface RPStringUtility
+ (BOOL)isInvalidBundleId:(id)a3;
+ (id)numberFromString:(id)a3;
+ (unint64_t)rotatingDeviceUniqueID;
@end

@implementation RPStringUtility

+ (id)numberFromString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSNumberFormatter);
  v5 = [v4 numberFromString:v3];

  return v5;
}

+ (unint64_t)rotatingDeviceUniqueID
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"kSCDeviceUniqueID"];
    if (!v4)
    {
      v5 = +[NSUUID UUID];
      v4 = [v5 UUIDString];

      [v3 setObject:v4 forKey:@"kSCDeviceUniqueID"];
      [v3 synchronize];
    }

    v6 = +[NSCalendar currentCalendar];
    v7 = +[NSDate date];
    v8 = [v6 components:8196 fromDate:v7];

    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%lu%lu", v4, [v8 yearForWeekOfYear], objc_msgSend(v8, "weekOfYear"));
    v10 = [v9 hash];
  }

  else
  {
    sub_1000659A0(&v12);
    v10 = v12;
  }

  return v10;
}

+ (BOOL)isInvalidBundleId:(id)a3
{
  v3 = a3;
  if ([v3 length] && objc_msgSend(v3, "caseInsensitiveCompare:", @"(null)") && objc_msgSend(v3, "caseInsensitiveCompare:", @"Unknown"))
  {
    v4 = 0;
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065A74(v3);
    }

    v4 = 1;
  }

  return v4;
}

@end
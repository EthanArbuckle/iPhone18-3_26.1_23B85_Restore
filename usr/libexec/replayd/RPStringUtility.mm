@interface RPStringUtility
+ (BOOL)isInvalidBundleId:(id)id;
+ (id)numberFromString:(id)string;
+ (unint64_t)rotatingDeviceUniqueID;
@end

@implementation RPStringUtility

+ (id)numberFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSNumberFormatter);
  v5 = [v4 numberFromString:stringCopy];

  return v5;
}

+ (unint64_t)rotatingDeviceUniqueID
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = v2;
  if (v2)
  {
    uUIDString = [v2 objectForKey:@"kSCDeviceUniqueID"];
    if (!uUIDString)
    {
      v5 = +[NSUUID UUID];
      uUIDString = [v5 UUIDString];

      [v3 setObject:uUIDString forKey:@"kSCDeviceUniqueID"];
      [v3 synchronize];
    }

    v6 = +[NSCalendar currentCalendar];
    v7 = +[NSDate date];
    v8 = [v6 components:8196 fromDate:v7];

    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%lu%lu", uUIDString, [v8 yearForWeekOfYear], objc_msgSend(v8, "weekOfYear"));
    v10 = [v9 hash];
  }

  else
  {
    sub_1000659A0(&v12);
    v10 = v12;
  }

  return v10;
}

+ (BOOL)isInvalidBundleId:(id)id
{
  idCopy = id;
  if ([idCopy length] && objc_msgSend(idCopy, "caseInsensitiveCompare:", @"(null)") && objc_msgSend(idCopy, "caseInsensitiveCompare:", @"Unknown"))
  {
    v4 = 0;
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065A74(idCopy);
    }

    v4 = 1;
  }

  return v4;
}

@end
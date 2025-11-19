@interface HAPNotification
+ (id)typeToString:(unint64_t)a3;
+ (void)postNotification:(id)a3 object:(id)a4 userInfo:(id)a5;
@end

@implementation HAPNotification

+ (void)postNotification:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = sub_10007FAFC(0);
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@CoreHAP - Sending notification %@ with object %@ and userInfo %@", &v13, 0x2Au);
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 postNotificationName:v7 object:v8 userInfo:v9];
}

+ (id)typeToString:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    v4 = [NSString stringWithFormat:@"Unknown Reachability Notification type %ld", a3];
  }

  else
  {
    v4 = off_100273598[a3 - 1];
  }

  return v4;
}

@end
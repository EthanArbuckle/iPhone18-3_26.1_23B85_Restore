@interface HAPNotification
+ (id)typeToString:(unint64_t)string;
+ (void)postNotification:(id)notification object:(id)object userInfo:(id)info;
@end

@implementation HAPNotification

+ (void)postNotification:(id)notification object:(id)object userInfo:(id)info
{
  notificationCopy = notification;
  objectCopy = object;
  infoCopy = info;
  v10 = sub_10007FAA0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = sub_10007FAFC(0);
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = notificationCopy;
    v17 = 2112;
    v18 = objectCopy;
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@CoreHAP - Sending notification %@ with object %@ and userInfo %@", &v13, 0x2Au);
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 postNotificationName:notificationCopy object:objectCopy userInfo:infoCopy];
}

+ (id)typeToString:(unint64_t)string
{
  if (string - 1 >= 4)
  {
    string = [NSString stringWithFormat:@"Unknown Reachability Notification type %ld", string];
  }

  else
  {
    string = off_100273598[string - 1];
  }

  return string;
}

@end
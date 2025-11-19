@interface DMDLockdownUtilities
+ (BOOL)setDeviceName:(id)a3 outError:(id *)a4;
+ (NSDate)deviceLastCloudBackupDate;
@end

@implementation DMDLockdownUtilities

+ (NSDate)deviceLastCloudBackupDate
{
  v2 = lockdown_connect();
  if (v2)
  {
    v3 = lockdown_copy_value();
    lockdown_disconnect();
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v3 unsignedLongLongValue] + 978307200.0);
LABEL_8:

        goto LABEL_9;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100084A30();
      }
    }

    v2 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v2;
}

+ (BOOL)setDeviceName:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004E31C;
  v10[3] = &unk_1000CF388;
  v10[4] = a4;
  v6 = objc_retainBlock(v10);
  if (lockdown_connect())
  {
    v7 = lockdown_set_value();
    lockdown_disconnect();
    if (!v7)
    {
      v8 = 1;
      goto LABEL_7;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100084A78(v7);
    }
  }

  (v6[2])(v6, 2300);
  v8 = 0;
LABEL_7:

  return v8;
}

@end
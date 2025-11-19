@interface APAttributionAppTracking
+ (BOOL)appTrackingStatus:(id *)a3;
@end

@implementation APAttributionAppTracking

+ (BOOL)appTrackingStatus:(id *)a3
{
  v4 = objc_alloc_init(ADTrackingTransparency);
  v5 = [v4 crossAppTrackingAllowedSwitchEnabled];
  v6 = *&a3->var0[4];
  *v12 = *a3->var0;
  *&v12[16] = v6;
  v7 = [APAttributionAppTracking isAppTrackingAuthorizedByUser:v12];
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"NO";
    if (v5)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (v7)
    {
      v9 = @"YES";
    }

    *v12 = 138543618;
    *&v12[4] = v10;
    *&v12[12] = 2114;
    *&v12[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "isATTSwitchedEnabled (%{public}@), isAppAuthorizedByUser (%{public}@)", v12, 0x16u);
  }

  return v5 & v7;
}

@end
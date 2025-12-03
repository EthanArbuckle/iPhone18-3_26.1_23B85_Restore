@interface APAttributionAppTracking
+ (BOOL)appTrackingStatus:(id *)status;
@end

@implementation APAttributionAppTracking

+ (BOOL)appTrackingStatus:(id *)status
{
  v4 = objc_alloc_init(ADTrackingTransparency);
  crossAppTrackingAllowedSwitchEnabled = [v4 crossAppTrackingAllowedSwitchEnabled];
  v6 = *&status->var0[4];
  *v12 = *status->var0;
  *&v12[16] = v6;
  v7 = [APAttributionAppTracking isAppTrackingAuthorizedByUser:v12];
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"NO";
    if (crossAppTrackingAllowedSwitchEnabled)
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

  return crossAppTrackingAllowedSwitchEnabled & v7;
}

@end
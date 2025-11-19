@interface MOOnboardingAnalyticsUtilities
+ (unint64_t)convertMGDeviceClassToAnalyticsDeviceType:(id)a3;
+ (unint64_t)onboardingDurationBinFrom:(id)a3;
@end

@implementation MOOnboardingAnalyticsUtilities

+ (unint64_t)onboardingDurationBinFrom:(id)a3
{
  v3 = a3;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  if (v6 < 0.0 || v6 > 604800.0)
  {
    if (v6 <= 604800.0 || v6 > 1209600.0)
    {
      if (v6 <= 1209600.0 || v6 > 1814400.0)
      {
        if (v6 <= 1814400.0 || v6 > 2419200.0)
        {
          if (v6 <= 2419200.0 || v6 > 4838400.0)
          {
            if (v6 <= 4838400.0 || v6 > 7257600.0)
            {
              if (v6 <= 7257600.0 || v6 > 9676800.0)
              {
                if (v6 <= 9676800.0 || v6 > 12096000.0)
                {
                  if (v6 <= 12096000.0 || v6 > 14515200.0)
                  {
                    if (v6 <= 14515200.0)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      v7 = 10;
                    }
                  }

                  else
                  {
                    v7 = 9;
                  }
                }

                else
                {
                  v7 = 8;
                }
              }

              else
              {
                v7 = 7;
              }
            }

            else
            {
              v7 = 6;
            }
          }

          else
          {
            v7 = 5;
          }
        }

        else
        {
          v7 = 4;
        }
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [NSNumber numberWithUnsignedInteger:v7];
    v10 = [NSNumber numberWithDouble:v6];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Onboarding bin %@, for onboarding time since now: %@", &v12, 0x16u);
  }

  return v7;
}

+ (unint64_t)convertMGDeviceClassToAnalyticsDeviceType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"iPhone"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"iPad"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"AppleTV"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"Mac"])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:@"Watch"])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:@"RealityDevice"])
    {
      v5 = 6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
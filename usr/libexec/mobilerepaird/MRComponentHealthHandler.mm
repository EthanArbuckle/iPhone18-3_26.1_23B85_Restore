@interface MRComponentHealthHandler
+ (id)sharedInstance;
- (id)_init;
- (void)getCurrentSystemHealthStatusForComponentsInternal:(unint64_t)a3 WithReply:(id)a4;
- (void)isBatteryInServiceState:(id)a3;
- (void)postComponentStatusEventFor:(unint64_t)a3 status:(unint64_t)a4 withReply:(id)a5;
- (void)sendDailyAnalyticsForModuleType:(id)a3;
- (void)sendFailedComponentStats;
@end

@implementation MRComponentHealthHandler

- (id)_init
{
  v27.receiver = self;
  v27.super_class = MRComponentHealthHandler;
  v2 = [(MRComponentHealthHandler *)&v27 init];
  if (v2)
  {
    v26 = objc_opt_new();
    v28[0] = v26;
    v25 = objc_opt_new();
    v28[1] = v25;
    v24 = objc_opt_new();
    v28[2] = v24;
    v23 = objc_opt_new();
    v28[3] = v23;
    v22 = objc_opt_new();
    v28[4] = v22;
    v21 = objc_opt_new();
    v28[5] = v21;
    v20 = objc_opt_new();
    v28[6] = v20;
    v19 = objc_opt_new();
    v28[7] = v19;
    v18 = objc_opt_new();
    v28[8] = v18;
    v3 = objc_opt_new();
    v28[9] = v3;
    v4 = objc_opt_new();
    v28[10] = v4;
    v5 = objc_opt_new();
    v28[11] = v5;
    v6 = objc_opt_new();
    v28[12] = v6;
    v7 = objc_opt_new();
    v28[13] = v7;
    v8 = objc_opt_new();
    v9 = [v8 isSupportedIPad];
    v10 = CRCameraAuthUsingProperty_ptr;
    if (!v9)
    {
      v10 = CRCameraAuth_ptr;
    }

    v11 = *v10;
    v12 = objc_opt_new();
    v28[14] = v12;
    v13 = objc_opt_new();
    v28[15] = v13;
    v14 = objc_opt_new();
    v28[16] = v14;
    v15 = [NSArray arrayWithObjects:v28 count:17];
    supportedComponentAuth = v2->supportedComponentAuth;
    v2->supportedComponentAuth = v15;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10001EB28 != -1)
  {
    sub_10000E544();
  }

  v3 = qword_10001EB20;

  return v3;
}

- (void)postComponentStatusEventFor:(unint64_t)a3 status:(unint64_t)a4 withReply:(id)a5
{
  v8 = a5;
  if (a3 - 3 <= 9)
  {
    v7 = [(__objc2_class *)*off_100018710[a3 - 3] sharedSingleton];
    [v7 postComponentStatus:a4];
  }

  v8[2](v8, 1, 0);
}

- (void)getCurrentSystemHealthStatusForComponentsInternal:(unint64_t)a3 WithReply:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = MGCopyAnswer();
  v9 = [v8 intValue];

  v10 = objc_opt_new();
  v11 = [v10 isSupportedIPad];

  if (v11)
  {
    v9 = handleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enabling Parts and Service History for supported iPads", buf, 2u);
    }
  }

  else if (v9 > 9 || ((1 << v9) & 0x242) == 0)
  {
    v13 = handleForCategory();
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_DEFAULT, "Unsupported product", buf, 2u);
    }

    v12 = 0;
    goto LABEL_27;
  }

  if (a3 == -1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = self->supportedComponentAuth;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v25 = v6;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 copyComponentStatus];
          v20 = [v18 componentName];

          if (v20)
          {
            v21 = [NSNumber numberWithInteger:v19];
            v22 = v21;
            if (!v21)
            {
              v9 = +[NSNull null];
              v22 = v9;
            }

            v23 = [v18 componentName];
            [v7 setObject:v22 forKeyedSubscript:v23];

            if (!v21)
            {
            }
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v15);
      v12 = 1;
      v6 = v25;
    }

    else
    {
      v12 = 1;
    }

LABEL_27:

    goto LABEL_28;
  }

  v12 = 0;
LABEL_28:
  v24 = [v7 copy];
  v6[2](v6, v12, v24, 0);
}

- (void)isBatteryInServiceState:(id)a3
{
  v3 = a3;
  v4 = IOPSGetBatteryHealthState();
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000E558(0, v4, v5);
  }

  v6 = CRErrorDomain;
  v10 = NSLocalizedDescriptionKey;
  v7 = [NSString stringWithFormat:@"Failed to get battery health state (%x):%@\n", v4, 0];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [NSError errorWithDomain:v6 code:-42 userInfo:v8];

  v3[2](v3, 0, v9);
}

- (void)sendFailedComponentStats
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->supportedComponentAuth;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 copyComponentStatus] & 0x8000000000000000) != 0)
        {
          v9 = [v8 componentName];
          [(MRComponentHealthHandler *)self sendDailyAnalyticsForModuleType:v9];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)sendDailyAnalyticsForModuleType:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

@end
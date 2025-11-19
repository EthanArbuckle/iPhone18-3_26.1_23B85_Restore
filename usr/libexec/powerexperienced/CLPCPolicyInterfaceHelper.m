@interface CLPCPolicyInterfaceHelper
+ (id)sharedInstance;
- (CLPCPolicyInterfaceHelper)init;
- (int64_t)adjustLPMOption:(int64_t)a3;
- (void)registerForTrial;
- (void)setPowerBudgetForWorkload:(unint64_t)a3 value:(float)a4;
- (void)updateTrialParameters;
@end

@implementation CLPCPolicyInterfaceHelper

+ (id)sharedInstance
{
  if (qword_100036C28 != -1)
  {
    sub_1000193B8();
  }

  v3 = qword_100036C30;

  return v3;
}

- (CLPCPolicyInterfaceHelper)init
{
  v20.receiver = self;
  v20.super_class = CLPCPolicyInterfaceHelper;
  v2 = [(CLPCPolicyInterfaceHelper *)&v20 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerexperienced", "CLPCPolicyInterfaceHelper");
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    *(v2 + 8) = MGGetBoolAnswer();
    v5 = IOServiceMatching("AppleCLPC");
    if (!v5 || (MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5)) == 0)
    {
      if (os_log_type_enabled(*(v2 + 2), OS_LOG_TYPE_ERROR))
      {
        sub_1000194FC();
      }

      v8 = 0;
      goto LABEL_25;
    }

    IOObjectRelease(MatchingService);
    v19 = 0;
    v7 = [CLPCPolicyInterface createClient:&v19];
    v8 = v19;
    [v2 setClpcClient:v7];

    if (*(v2 + 8) == 1 && byte_100036C38 == 1)
    {
      sub_10000FFE4();
      if (objc_opt_class())
      {
        v18 = 0;
        v9 = [sub_10000FFE4() createClient:&v18];
        v10 = v18;
        [v2 setClpcInternalAccessClient:v9];

        v11 = *(v2 + 2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initialized internal CLPC Policy Interface", v17, 2u);
        }

        v12 = [v2 clpcInternalAccessClient];

        if (v12)
        {
          v13 = *(v2 + 2);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating CLPCInternal client RPC buffer size to 16k", v17, 2u);
          }

          v14 = [NSNumber numberWithUnsignedInt:0x4000];
          v15 = [v2 clpcInternalAccessClient];
          [v15 setRPCBufferSize:v14];
        }

LABEL_19:
        if (v8 && os_log_type_enabled(*(v2 + 2), OS_LOG_TYPE_ERROR))
        {
          sub_10001941C();
          if (v10)
          {
            goto LABEL_22;
          }
        }

        else if (v10)
        {
LABEL_22:
          if (os_log_type_enabled(*(v2 + 2), OS_LOG_TYPE_ERROR))
          {
            sub_10001948C();
          }
        }

LABEL_25:

        return v2;
      }
    }

    else if (os_log_type_enabled(*(v2 + 2), OS_LOG_TYPE_ERROR))
    {
      sub_1000193E0();
    }

    v10 = 0;
    goto LABEL_19;
  }

  return v2;
}

- (void)registerForTrial
{
  v3 = [(CLPCPolicyInterfaceHelper *)self clpcInternalAccessClient];
  if (v3)
  {
  }

  else
  {
    v4 = [(CLPCPolicyInterfaceHelper *)self clpcClient];

    if (!v4)
    {
      return;
    }
  }

  v5 = +[CPMTrialManager sharedInstance];
  [v5 addDelegate:self];
}

- (void)updateTrialParameters
{
  v3 = +[CPMTrialManager sharedInstance];
  v4 = [v3 factorWithName:@"CLPC_TuningOption"];
  v5 = [v3 factorWithName:@"CLPC_LPMOption"];
  v6 = v5;
  if (!v4)
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_12:
    v9 = 0;
    v11 = v7 != 0;
    goto LABEL_13;
  }

  v7 = [v4 longValue];
  v8 = [(CLPCPolicyInterfaceHelper *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trial:CLPC tuning factor %lld", buf, 0xCu);
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = [v6 longValue];
  v10 = [(CLPCPolicyInterfaceHelper *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Trial:CLPC LPMOption factor %lld", buf, 0xCu);
  }

  v11 = v7 != 0;
  if (v7 && v9)
  {
    v12 = [(CLPCPolicyInterfaceHelper *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000195E8();
    }

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

LABEL_13:
  if (!(v7 | v9))
  {
    v12 = [(CLPCPolicyInterfaceHelper *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trial:CLPC_TuningOption and CLPC_LPMOption are both zero. Resetting to default", buf, 2u);
    }

    goto LABEL_16;
  }

  if (v11)
  {
    goto LABEL_18;
  }

  v7 = [(CLPCPolicyInterfaceHelper *)self adjustLPMOption:v9];
  v12 = [(CLPCPolicyInterfaceHelper *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v6 longValue];
    *buf = 134218240;
    v27 = v23;
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trial:CLPC LPMOption %lld adjusted to %lld", buf, 0x16u);
  }

LABEL_17:

LABEL_18:
  if ([(CLPCPolicyInterfaceHelper *)self isInternal])
  {
    v13 = [(CLPCPolicyInterfaceHelper *)self clpcInternalAccessClient];

    if (v13)
    {
      v14 = [(CLPCPolicyInterfaceHelper *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Trial: Setting TrialID: %lld with CLPCInternal", buf, 0xCu);
      }

      v15 = [(CLPCPolicyInterfaceHelper *)self clpcInternalAccessClient];
      v25 = 0;
      [v15 setCLPCTrialID:v7 error:&v25];
      v16 = v25;

      if (v16)
      {
        v17 = [(CLPCPolicyInterfaceHelper *)self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100019624();
        }
      }
    }
  }

  if (![(CLPCPolicyInterfaceHelper *)self isInternal])
  {
    v18 = [(CLPCPolicyInterfaceHelper *)self clpcClient];

    if (v18)
    {
      v19 = [(CLPCPolicyInterfaceHelper *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Trial: Setting TrialID: %lld with CLPC", buf, 0xCu);
      }

      v20 = [(CLPCPolicyInterfaceHelper *)self clpcClient];
      v24 = 0;
      [v20 setCLPCTrialID:v7 error:&v24];
      v21 = v24;

      if (v21)
      {
        v22 = [(CLPCPolicyInterfaceHelper *)self log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100019624();
        }
      }
    }
  }
}

- (void)setPowerBudgetForWorkload:(unint64_t)a3 value:(float)a4
{
  v7 = [(CLPCPolicyInterfaceHelper *)self clpcClient];

  if (v7)
  {
    if (a3 == 2)
    {
      v8 = [(CLPCPolicyInterfaceHelper *)self clpcClient];
      v9 = v8;
      v16 = 0;
      v10 = &v16;
      v11 = &v16;
      *&v12 = a4;
      v13 = 2;
    }

    else
    {
      if (a3 != 1)
      {
LABEL_12:
        v14 = [(CLPCPolicyInterfaceHelper *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v19 = a3;
          v20 = 2048;
          v21 = a4;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updated CLPC with power target for workload %llu value %f", buf, 0x16u);
        }

        goto LABEL_14;
      }

      v8 = [(CLPCPolicyInterfaceHelper *)self clpcClient];
      v9 = v8;
      v17 = 0;
      v10 = &v17;
      v11 = &v17;
      *&v12 = a4;
      v13 = 1;
    }

    [v8 setWorkloadPowerBudget:v13 options:v11 error:{v12, v16, v17}];
    v14 = *v10;

    if (v14)
    {
      v15 = [(CLPCPolicyInterfaceHelper *)self log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100019694(v14, a3, v15);
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = [(CLPCPolicyInterfaceHelper *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000195AC();
  }

LABEL_14:
}

- (int64_t)adjustLPMOption:(int64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = +[DeviceContext sharedInstance];
  v6 = [v5 objectForKeyedSubscript:@"kPlatformContext"];
  v7 = [v6 isEqual:@"iPhone"];

  if (v7)
  {
    v8 = +[DeviceContext sharedInstance];
    v9 = [v8 objectForKeyedSubscript:@"kHardwarePlatformContext"];

    if ([v9 isEqual:@"t8101"])
    {
      v10 = 100;
      goto LABEL_16;
    }

    if ([v9 isEqual:@"t8110"])
    {
      v10 = 110;
      goto LABEL_16;
    }

    if ([v9 isEqual:@"t8120"])
    {
      v10 = 120;
      goto LABEL_16;
    }

    if ([v9 isEqual:@"t8130"])
    {
      v10 = 130;
      goto LABEL_16;
    }

    if ([v9 isEqual:@"t8140"])
    {
      v10 = 140;
      goto LABEL_16;
    }

    if ([v9 isEqual:@"t8150"])
    {
      v10 = 150;
LABEL_16:

      if (a3 == 9)
      {
        return 100;
      }

      else
      {
        return v10 + a3;
      }
    }
  }

  v12 = [(CLPCPolicyInterfaceHelper *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10001970C();
  }

  return 0;
}

@end
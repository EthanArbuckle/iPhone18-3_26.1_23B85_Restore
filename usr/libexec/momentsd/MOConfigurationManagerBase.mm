@interface MOConfigurationManagerBase
- (BOOL)getBoolDefaultsForKey:(id)a3 withFallback:(BOOL)a4;
- (BOOL)getBoolTrialLevelForKey:(id)a3 withFallback:(BOOL)a4;
- (MOConfigurationManagerBase)init;
- (MOConfigurationManagerBase)initWithDefaultsManager:(id)a3 enableTrialClient:(BOOL)a4;
- (double)getDoubleDefaultsForKey:(id)a3 withFallback:(double)a4;
- (double)getDoubleSettingForKey:(id)a3 withFallback:(double)a4;
- (double)getDoubleTrialLevelForKey:(id)a3 withFallback:(double)a4;
- (float)getFloatDefaultsForKey:(id)a3 withFallback:(float)a4;
- (float)getFloatSettingForKey:(id)a3 withFallback:(float)a4;
- (float)getFloatTrialLevelForKey:(id)a3 withFallback:(float)a4;
- (id)getStringDefaultsForKey:(id)a3 withFallback:(id)a4;
- (id)getStringSettingForKey:(id)a3 withFallback:(id)a4;
- (id)getStringTrialLevelForKey:(id)a3 withFallback:(id)a4;
- (int)getIntegerDefaultsForKey:(id)a3 withFallback:(int)a4;
- (int)getIntegerTrialLevelForKey:(id)a3 withFallback:(int)a4;
- (void)doTrialSetup;
@end

@implementation MOConfigurationManagerBase

- (MOConfigurationManagerBase)init
{
  v3 = [[MODefaultsManager alloc] initWithSuiteName:@"com.apple.momentsd"];
  v4 = [(MOConfigurationManagerBase *)self initWithDefaultsManager:v3 enableTrialClient:1];

  return v4;
}

- (MOConfigurationManagerBase)initWithDefaultsManager:(id)a3 enableTrialClient:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MOConfigurationManagerBase;
  v7 = [(MOConfigurationManagerBase *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(MOConfigurationManagerBase *)v7 setFDefaultsManager:v6];
    if (v4)
    {
      trialClient = v8->_trialClient;
      v8->_trialClient = 0;

      trialFactorNames = v8->_trialFactorNames;
      v8->_trialFactorNames = 0;

      [(MOConfigurationManagerBase *)v8 doTrialSetup];
    }
  }

  return v8;
}

- (id)getStringDefaultsForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  fDefaultsManager = self->_fDefaultsManager;
  v10 = [v6 copy];
  v11 = [(MODefaultsManager *)fDefaultsManager objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];

      v8 = v12;
    }
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [s:%@] and fallback [s:%@]", &v15, 0x20u);
  }

  return v8;
}

- (int)getIntegerDefaultsForKey:(id)a3 withFallback:(int)a4
{
  v6 = a3;
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [v6 copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

  v10 = a4;
  if (v9)
  {
    objc_opt_class();
    v10 = a4;
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 integerValue];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = a4;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [i:%i] and fallback [i:%i]", &v13, 0x18u);
  }

  return v10;
}

- (BOOL)getBoolDefaultsForKey:(id)a3 withFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [v6 copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

  v10 = v4;
  if (v9)
  {
    objc_opt_class();
    v10 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 BOOLValue];
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = v4;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [b:%i] and fallback [b:%i]", &v13, 0x18u);
  }

  return v10;
}

- (float)getFloatDefaultsForKey:(id)a3 withFallback:(float)a4
{
  v6 = a3;
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [v6 copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

  v10 = a4;
  if (v9)
  {
    objc_opt_class();
    v10 = a4;
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      v10 = v11;
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [f:%f] and fallback [f:%f]", &v14, 0x20u);
  }

  return v10;
}

- (double)getDoubleDefaultsForKey:(id)a3 withFallback:(double)a4
{
  v6 = a3;
  fDefaultsManager = self->_fDefaultsManager;
  v8 = [v6 copy];
  v9 = [(MODefaultsManager *)fDefaultsManager objectForKey:v8];

  v10 = a4;
  if (v9)
  {
    objc_opt_class();
    v10 = a4;
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      v10 = v11;
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Default setting [%@] with value [d:%f] and fallback [d:%f]", &v14, 0x20u);
  }

  return v10;
}

- (void)doTrialSetup
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Cached factor names: %@", &v3, 0xCu);
}

- (id)getStringTrialLevelForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v10 = [v6 copy];
    v11 = [(TRIClient *)trialClient levelForFactor:v10 withNamespaceName:@"MOMENTS_TRIAL"];

    if (v11)
    {
      v12 = [v11 stringValue];

      v8 = v12;
    }
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [s:%@] and fallback [s:%@]", &v15, 0x20u);
  }

  return v8;
}

- (int)getIntegerTrialLevelForKey:(id)a3 withFallback:(int)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

    v7 = a4;
    if (v10)
    {
      v7 = a4;
      if ([v10 levelOneOfCase] == 13)
      {
        v7 = [v10 longValue];
      }
    }
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = a4;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [i:%i] and fallback [i:%i]", &v13, 0x18u);
  }

  return v7;
}

- (BOOL)getBoolTrialLevelForKey:(id)a3 withFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

    v7 = v4;
    if (v10)
    {
      v11 = [v10 levelOneOfCase];
      if (v11 == 13)
      {
        v7 = [v10 longValue] != 0;
      }

      else
      {
        v7 = v4;
        if (v11 == 10)
        {
          v7 = [v10 BOOLeanValue];
        }
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [b:%i] and fallback [b:%i]", &v14, 0x18u);
  }

  return v7;
}

- (float)getFloatTrialLevelForKey:(id)a3 withFallback:(float)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

    v7 = a4;
    if (v10)
    {
      v7 = a4;
      if ([v10 levelOneOfCase] == 15)
      {
        [v10 doubleValue];
        v7 = v11;
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [f:%f] and fallback [f:%f]", &v14, 0x20u);
  }

  return v7;
}

- (double)getDoubleTrialLevelForKey:(id)a3 withFallback:(double)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_trialFactorNames containsObject:v6])
  {
    trialClient = self->_trialClient;
    v9 = [v6 copy];
    v10 = [(TRIClient *)trialClient levelForFactor:v9 withNamespaceName:@"MOMENTS_TRIAL"];

    v7 = a4;
    if (v10)
    {
      v7 = a4;
      if ([v10 levelOneOfCase] == 15)
      {
        [v10 doubleValue];
        v7 = v11;
      }
    }
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Trial setting [%@] with value [d:%f] and fallback [d:%f]", &v14, 0x20u);
  }

  return v7;
}

- (id)getStringSettingForKey:(id)a3 withFallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOConfigurationManagerBase *)self getStringTrialLevelForKey:v6 withFallback:v7];
  v9 = [(MOConfigurationManagerBase *)self getStringDefaultsForKey:v6 withFallback:v8];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [s:%@] and fallback [s:%@]", &v12, 0x20u);
  }

  return v9;
}

- (float)getFloatSettingForKey:(id)a3 withFallback:(float)a4
{
  v6 = a3;
  *&v7 = a4;
  [(MOConfigurationManagerBase *)self getFloatTrialLevelForKey:v6 withFallback:v7];
  [(MOConfigurationManagerBase *)self getFloatDefaultsForKey:v6 withFallback:?];
  v9 = v8;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = v9;
    v16 = 2048;
    v17 = a4;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [f:%f] and fallback [f:%f]", &v12, 0x20u);
  }

  return v9;
}

- (double)getDoubleSettingForKey:(id)a3 withFallback:(double)a4
{
  v6 = a3;
  [(MOConfigurationManagerBase *)self getDoubleTrialLevelForKey:v6 withFallback:a4];
  [(MOConfigurationManagerBase *)self getDoubleDefaultsForKey:v6 withFallback:?];
  v8 = v7;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = a4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Retrieved setting [%@] with value [d:%lf] and fallback [d:%lf]", &v11, 0x20u);
  }

  return v8;
}

@end
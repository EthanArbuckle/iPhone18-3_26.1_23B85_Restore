@interface FMDSecureLocationConfig
- (FMDSecureLocationConfig)init;
- (FMDSecureLocationConfig)initWithName:(id)a3 values:(id)a4;
- (id)_readInternalPreference:(id)a3;
- (id)description;
- (void)_initWithDefaults;
- (void)_readValuesFromDictionary:(id)a3;
@end

@implementation FMDSecureLocationConfig

- (FMDSecureLocationConfig)init
{
  v5.receiver = self;
  v5.super_class = FMDSecureLocationConfig;
  v2 = [(FMDSecureLocationConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDSecureLocationConfig *)v2 _initWithDefaults];
  }

  return v3;
}

- (void)_initWithDefaults
{
  objc_storeStrong(&self->_policyName, kFMDSecureLocationModeProactive);
  *&self->_minTimeBetweenPublish = xmmword_1002587F0;
  *&self->_accuracyThreshold = xmmword_1002587E0;
  self->_heartbeatPublish = 1080.0;
  *&self->_onDemandPublishThreshold = xmmword_100258800;
  self->_priority = 2;
  self->_stalenessThreshold = 120.0;
  self->_shouldWakeDevice = 1;
}

- (FMDSecureLocationConfig)initWithName:(id)a3 values:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FMDSecureLocationConfig;
  v9 = [(FMDSecureLocationConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FMDSecureLocationConfig *)v9 _initWithDefaults];
    objc_storeStrong(&v10->_policyName, a3);
    [(FMDSecureLocationConfig *)v10 _readValuesFromDictionary:v8];
  }

  return v10;
}

- (void)_readValuesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"desiredAccuracy"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"slc";
  }

  objc_storeStrong(&self->_desiredAccuracy, v7);

  v8 = [v4 objectForKeyedSubscript:@"minTimeBetweenPublish"];
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"minTimeBetweenPublish"];
    v10 = [(FMDSecureLocationConfig *)self _readInternalPreference:v9];
    if (v10)
    {
      v11 = sub_1000029E0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        policyName = self->_policyName;
        *buf = 138412546;
        v62 = policyName;
        v63 = 2112;
        v64 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding minTimeBetweenPublish for %@ to %@", buf, 0x16u);
      }

      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    [v13 doubleValue];
    if (v14 < 0.5)
    {
      v14 = 0.5;
    }

    self->_minTimeBetweenPublish = v14;
  }

  v60 = v8;
  v15 = [v4 objectForKeyedSubscript:@"minTimeBetweenVisitPublish"];
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
    self->_minTimeBetweenVisitPublish = v17;
  }

  v18 = [v4 objectForKeyedSubscript:@"heartbeatPublish"];
  if (v18)
  {
    v19 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"heartbeatInterval"];
    v20 = [(FMDSecureLocationConfig *)self _readInternalPreference:v19];
    v21 = v20;
    if (v20)
    {
      [v20 doubleValue];
      self->_heartbeatPublish = v22;
      v23 = sub_1000029E0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_policyName;
        *buf = 138412546;
        v62 = v24;
        v63 = 2112;
        v64 = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding heartbeatPublishInterval for %@ to %@", buf, 0x16u);
      }
    }

    else
    {
      [v18 doubleValue];
      self->_heartbeatPublish = v25;
    }
  }

  v26 = [v4 objectForKeyedSubscript:@"minDistanceBetweenPublish"];
  if (v26)
  {
    v27 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"minDistanceBetweenPublish"];
    v28 = [(FMDSecureLocationConfig *)self _readInternalPreference:v27];
    v29 = v28;
    if (v28)
    {
      [v28 doubleValue];
      self->_minDistanceBetweenPublish = v30;
      v31 = sub_1000029E0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_policyName;
        *buf = 138412546;
        v62 = v32;
        v63 = 2112;
        v64 = v29;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding minDistanceBetweenPublish for %@ to %@", buf, 0x16u);
      }
    }

    else
    {
      [v26 doubleValue];
      self->_minDistanceBetweenPublish = v33;
    }
  }

  v34 = [v4 objectForKeyedSubscript:@"accuracyThreshold"];
  v35 = v34;
  if (v34)
  {
    [v34 doubleValue];
    self->_accuracyThreshold = v36;
  }

  v59 = v18;
  v37 = [v4 objectForKeyedSubscript:@"onDemandThreshold"];
  v38 = v37;
  if (v37)
  {
    [v37 doubleValue];
    self->_onDemandPublishThreshold = v39;
  }

  v40 = [v4 objectForKeyedSubscript:@"expirationInterval"];
  if (v40)
  {
    v41 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"expirationInterval"];
    v42 = [(FMDSecureLocationConfig *)self _readInternalPreference:v41];
    v43 = v42;
    if (v42)
    {
      [v42 doubleValue];
      self->_expirationInterval = v44;
      v45 = sub_1000029E0();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = self->_policyName;
        *buf = 138412546;
        v62 = v46;
        v63 = 2112;
        v64 = v43;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding expirationInterval for %@ to %@", buf, 0x16u);
      }

      expirationInterval = self->_expirationInterval;
    }

    else
    {
      [v40 doubleValue];
      self->_expirationInterval = expirationInterval;
    }

    if (expirationInterval < 0.9)
    {
      self->_expirationInterval = 0.9;
    }
  }

  v48 = [v4 objectForKeyedSubscript:@"priority"];
  v49 = v48;
  if (v48)
  {
    v50 = [v48 integerValue];
    self->_priority = v50;
    if (v50 <= 0)
    {
      if ([(NSString *)self->_policyName caseInsensitiveCompare:kFMDSecureLocationModeProactive])
      {
        if ([(NSString *)self->_policyName caseInsensitiveCompare:kFMDSecureLocationModeProactiveShallow])
        {
          v51 = [(NSString *)self->_policyName caseInsensitiveCompare:kFMDSecureLocationModeLive];
          v52 = 2;
          if (v51 == NSOrderedSame)
          {
            v52 = 4;
          }
        }

        else
        {
          v52 = 3;
        }
      }

      else
      {
        v52 = 2;
      }

      self->_priority = v52;
    }
  }

  v53 = [v4 objectForKeyedSubscript:@"stalenessThreshold"];
  v54 = v53;
  if (v53)
  {
    [v53 doubleValue];
    self->_stalenessThreshold = v55;
  }

  v56 = [v4 objectForKeyedSubscript:@"shouldWakeDevice"];
  v57 = v56;
  if (v56)
  {
    v58 = [v56 BOOLValue];
  }

  else
  {
    v58 = 1;
  }

  self->_shouldWakeDevice = v58;
}

- (id)description
{
  heartbeatPublish = self->_heartbeatPublish;
  minTimeBetweenPublish = self->_minTimeBetweenPublish;
  accuracyThreshold = self->_accuracyThreshold;
  return [NSString stringWithFormat:@"<SecureLocationConfig name %@, desiredAccuracy %@, minTimeBetweenPublish %f, minTimeBetweenVisitPublish %f, heartbeatPublish %f, minDistanceBetweenPublish %f, accuracyThreshold %f, expirationInterval %f, priority %ld, stalenessThreshold %f>", self->_policyName, self->_desiredAccuracy, *&minTimeBetweenPublish, *&self->_minTimeBetweenVisitPublish, *&heartbeatPublish, *&self->_minDistanceBetweenPublish, *&accuracyThreshold, *&self->_expirationInterval, self->_priority, *&self->_stalenessThreshold];
}

- (id)_readInternalPreference:(id)a3
{
  v3 = [FMPreferencesUtil objectForKey:a3 inDomain:kFMDNotBackedUpPrefDomain];
  v4 = +[FMSystemInfo sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

@end
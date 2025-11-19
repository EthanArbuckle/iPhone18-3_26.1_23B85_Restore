@interface UARPDeploymentRule
- (BOOL)isDeploymentAllowed:(id *)a3;
- (BOOL)isDeploymentAllowedPerCountryList;
- (BOOL)isDeploymentAllowedPerDeploymentLimit;
- (BOOL)isDeploymentAllowedPerGoLiveDate;
- (BOOL)isDeploymentAllowedPerRampPeriod;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateDeploymentLimits:(id *)a3;
- (UARPDeploymentRule)initWithCoder:(id)a3;
- (UARPDeploymentRule)initWithConfig:(id)a3;
- (UARPDeploymentRule)initWithMinOSVersion:(id)a3 maxOSVersion:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compareOSVersion:(id)a3 withVersion:(id)a4;
- (void)addDeploymentLimit:(id)a3 withGoLiveDate:(id)a4 error:(id *)a5;
- (void)calculateDeploymentDay;
- (void)calculateDeploymentPercent;
- (void)createSerialNumber;
- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setDeploymentDay:(id)a3;
- (void)setDeploymentPercent:(id)a3;
- (void)setTestSerialNumber:(id)a3;
@end

@implementation UARPDeploymentRule

- (UARPDeploymentRule)initWithMinOSVersion:(id)a3 maxOSVersion:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v4 = v15;
  v15 = 0;
  v12.receiver = v4;
  v12.super_class = UARPDeploymentRule;
  v15 = [(UARPDeploymentRule *)&v12 init];
  objc_storeStrong(&v15, v15);
  if (v15)
  {
    v5 = [location[0] copy];
    minOSVersion = v15->_minOSVersion;
    v15->_minOSVersion = v5;

    v7 = [v13 copy];
    maxOSVersion = v15->_maxOSVersion;
    v15->_maxOSVersion = v7;
  }

  v10 = v15;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v10;
}

- (UARPDeploymentRule)initWithConfig:(id)a3
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  v34 = [location[0] rampPeriod];
  v43 = 0;
  v35 = 0;
  if (v34)
  {
    v44 = [location[0] deploymentLimit];
    v43 = 1;
    v35 = v44 != 0;
  }

  if (v43)
  {
  }

  if (v35)
  {
    v48 = 0;
    v42 = 1;
  }

  else
  {
    v33 = [location[0] rampPeriod];

    if (v33)
    {
      v31 = [location[0] rampPeriod];
      v32 = [v31 unsignedIntValue];

      v41 = v32;
      v45 = v32 == 7 || v41 == 28;
    }

    else
    {
      v30 = [location[0] deploymentLimit];

      if (v30)
      {
        v28 = [location[0] deploymentLimit];
        v29 = [v28 unsignedIntValue];

        v40 = v29;
        v45 = v29 && v40 <= 0x63;
      }

      else
      {
        v45 = 1;
      }
    }

    if (v45)
    {
      v3 = v47;
      v47 = 0;
      v39.receiver = v3;
      v39.super_class = UARPDeploymentRule;
      v47 = [(UARPDeploymentRule *)&v39 init];
      objc_storeStrong(&v47, v47);
      if (v47)
      {
        v24 = [location[0] goLiveDate];
        v4 = [v24 copy];
        v5 = *(v47 + 10);
        *(v47 + 10) = v4;

        v25 = [location[0] countryList];
        v6 = [v25 copy];
        v7 = *(v47 + 11);
        *(v47 + 11) = v6;

        v26 = [location[0] rampPeriod];
        v8 = [v26 copy];
        v9 = *(v47 + 12);
        *(v47 + 12) = v8;

        v27 = [location[0] deploymentLimit];
        v10 = [v27 copy];
        v11 = *(v47 + 13);
        *(v47 + 13) = v10;

        v12 = os_log_create("com.apple.accessoryupdater.uarp", "deployment");
        v13 = *(v47 + 1);
        *(v47 + 1) = v12;

        if (objc_opt_class())
        {
          v23 = +[GEOCountryConfiguration sharedConfiguration];
          v22 = [v23 countryCode];
          v14 = [v22 copy];
          v15 = *(v47 + 9);
          *(v47 + 9) = v14;
        }

        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = *(v47 + 14);
        *(v47 + 14) = v16;

        *(v47 + 64) = 0;
        v38 = 0;
        v19 = v47;
        v21 = [*(v47 + 13) copy];
        v20 = [*(v47 + 10) copy];
        v37 = v38;
        [v19 addDeploymentLimit:v21 withGoLiveDate:? error:?];
        objc_storeStrong(&v38, v37);

        if (v38)
        {
          v36 = *(v47 + 1);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_64(v49, "[UARPDeploymentRule initWithConfig:]", v38);
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Failed to initialize deployment limits with error %@", v49, 0x16u);
          }

          objc_storeStrong(&v36, 0);
        }

        objc_storeStrong(&v38, 0);
      }

      v48 = v47;
      v42 = 1;
    }

    else
    {
      v48 = 0;
      v42 = 1;
    }
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v47, 0);
  return v48;
}

- (UARPDeploymentRule)initWithCoder:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v22;
  v22 = 0;
  v20.receiver = v3;
  v20.super_class = UARPDeploymentRule;
  v22 = [(UARPDeploymentRule *)&v20 init];
  objc_storeStrong(&v22, v22);
  if (v22)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"goLiveDate"];
    goLiveDate = v22->_goLiveDate;
    v22->_goLiveDate = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"rampPeriod"];
    rampPeriod = v22->_rampPeriod;
    v22->_rampPeriod = v6;

    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"deploymentLimit"];
    deploymentLimit = v22->_deploymentLimit;
    v22->_deploymentLimit = v8;

    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v18 = [NSArray arrayWithObjects:v23 count:2];
    v19 = [NSSet setWithArray:?];

    v10 = [location[0] decodeObjectOfClasses:v19 forKey:@"countryList"];
    countryList = v22->_countryList;
    v22->_countryList = v10;

    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"minOSVersion"];
    minOSVersion = v22->_minOSVersion;
    v22->_minOSVersion = v12;

    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"maxOSVersion"];
    maxOSVersion = v22->_maxOSVersion;
    v22->_maxOSVersion = v14;

    objc_storeStrong(&v19, 0);
  }

  v17 = v22;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_goLiveDate forKey:@"goLiveDate"];
  [location[0] encodeObject:v4->_countryList forKey:@"countryList"];
  [location[0] encodeObject:v4->_rampPeriod forKey:@"rampPeriod"];
  [location[0] encodeObject:v4->_deploymentLimit forKey:@"deploymentLimit"];
  [location[0] encodeObject:v4->_minOSVersion forKey:@"minOSVersion"];
  [location[0] encodeObject:v4->_maxOSVersion forKey:@"maxOSVersion"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12 = self;
  v11[2] = a2;
  v11[1] = a3;
  v11[0] = objc_alloc_init(UARPDeploymentRule);
  objc_storeStrong(v11[0] + 9, v12->_currentISOCountryCode);
  objc_storeStrong(v11[0] + 10, v12->_goLiveDate);
  objc_storeStrong(v11[0] + 11, v12->_countryList);
  objc_storeStrong(v11[0] + 12, v12->_rampPeriod);
  objc_storeStrong(v11[0] + 13, v12->_deploymentLimit);
  v3 = [(NSMutableDictionary *)v12->_deploymentLimits mutableCopy];
  v4 = *(v11[0] + 14);
  *(v11[0] + 14) = v3;

  *(v11[0] + 64) = v12->_isFullyDeployedDeploymentLimits;
  v5 = [(NSString *)v12->_minOSVersion copy];
  v6 = *(v11[0] + 6);
  *(v11[0] + 6) = v5;

  v7 = [(NSString *)v12->_maxOSVersion copy];
  v8 = *(v11[0] + 7);
  *(v11[0] + 7) = v7;

  v10 = v11[0];
  objc_storeStrong(v11, 0);
  return v10;
}

- (id)description
{
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v5 = [NSString stringWithFormat:@"<%@: goLiveDate=%@, countryList=%@, rampPeriod=%@, deploymentLimit=%@>", v4, self->_goLiveDate, self->_countryList, self->_rampPeriod, self->_deploymentLimit];

  return v5;
}

- (void)setTestSerialNumber:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  testSerialNumber = v6->_testSerialNumber;
  v6->_testSerialNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setDeploymentDay:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_deploymentDay, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setDeploymentPercent:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_deploymentPercent, location[0]);
  objc_storeStrong(location, 0);
}

- (BOOL)isDeploymentAllowed:(id *)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = 1;
  v18 = 0;
  [(UARPDeploymentRule *)self createSerialNumber];
  [(UARPDeploymentRule *)v22 calculateDeploymentDay];
  [(UARPDeploymentRule *)v22 calculateDeploymentPercent];
  if (v22->_goLiveDate)
  {
    v19 = [(UARPDeploymentRule *)v22 isDeploymentAllowedPerGoLiveDate];
  }

  if (v19)
  {
    if ([(NSArray *)v22->_countryList count])
    {
      v19 = [(UARPDeploymentRule *)v22 isDeploymentAllowedPerCountryList];
    }

    if (v19)
    {
      if (v22->_rampPeriod)
      {
        v19 = [(UARPDeploymentRule *)v22 isDeploymentAllowedPerRampPeriod];
      }

      if (v19)
      {
        if (v22->_deploymentLimit)
        {
          v19 = [(UARPDeploymentRule *)v22 isDeploymentAllowedPerDeploymentLimit];
        }

        if (v22->_minOSVersion && v22->_maxOSVersion)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v11 = +[NSProcessInfo processInfo];
          if (v11)
          {
            [(NSProcessInfo *)v11 operatingSystemVersion];
          }

          else
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
          }

          location = [NSString stringWithFormat:@"%ld.%ld.%ld", v15, v16, v17];
          v13 = [(UARPDeploymentRule *)v22 compareOSVersion:v22->_minOSVersion withVersion:location];
          v12 = [(UARPDeploymentRule *)v22 compareOSVersion:v22->_maxOSVersion withVersion:location];
          v10 = 1;
          if (v13)
          {
            v10 = v13 == -1;
          }

          v19 = v10;
          v9 = 1;
          if (v12)
          {
            v9 = v12 == 1;
          }

          v19 = (v19 & 1 & v9) != 0;
          objc_storeStrong(&location, 0);
        }
      }
    }
  }

  if ((v19 & 1) == 0)
  {
    v3 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:0];
    v4 = v18;
    v18 = v3;

    v8 = v18;
    v5 = v18;
    *v20 = v8;
  }

  v7 = v19;
  objc_storeStrong(&v18, 0);
  return v7 & 1;
}

- (int64_t)compareOSVersion:(id)a3 withVersion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [location[0] componentsSeparatedByString:?];
  v12 = [v14 componentsSeparatedByString:@"."];
  for (i = 0; ; ++i)
  {
    v9 = 1;
    if (i >= [v13 count])
    {
      v9 = i < [v12 count];
    }

    if (!v9)
    {
      break;
    }

    if (i >= [v13 count])
    {
      v16 = -1;
      goto LABEL_15;
    }

    if (i >= [v12 count])
    {
      v16 = 1;
      goto LABEL_15;
    }

    v5 = [v13 objectAtIndexedSubscript:i];
    v6 = [v5 integerValue];

    v7 = [v12 objectAtIndexedSubscript:i];
    v8 = [v7 integerValue];

    if (v6 > v8)
    {
      v16 = 1;
      goto LABEL_15;
    }

    if (v6 < v8)
    {
      v16 = -1;
      goto LABEL_15;
    }
  }

  v16 = 0;
LABEL_15:
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (BOOL)isDeploymentAllowedPerCountryList
{
  v10 = self;
  v9 = a2;
  v8 = 0;
  if (self->_currentISOCountryCode)
  {
    goto LABEL_19;
  }

  location = v10->_log;
  v6 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v14, "[UARPDeploymentRule isDeploymentAllowedPerCountryList]", v10->_currentISOCountryCode);
    _os_log_impl(&_mh_execute_header, location, v6, "%s: Current location unknown %@", v14, 0x16u);
  }

  objc_storeStrong(&location, 0);
  if (!objc_opt_class())
  {
    return 1;
  }

LABEL_19:
  if (!v10->_currentISOCountryCode)
  {
    return 0;
  }

  if ([(NSArray *)v10->_countryList containsObject:v10->_currentISOCountryCode])
  {
    oslog = v10->_log;
    v4 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v13, "[UARPDeploymentRule isDeploymentAllowedPerCountryList]");
      _os_log_impl(&_mh_execute_header, oslog, v4, "%s: Device is in country list", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    return 1;
  }

  else
  {
    v3 = v10->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v12, "[UARPDeploymentRule isDeploymentAllowedPerCountryList]");
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Device not in country list, deployment not allowed", v12, 0xCu);
    }

    objc_storeStrong(&v3, 0);
    return 0;
  }
}

- (BOOL)isDeploymentAllowedPerGoLiveDate
{
  v13 = self;
  v12 = a2;
  v11 = 0;
  location = +[NSDate date];
  v9 = [location compare:v13->_goLiveDate];
  if (v9 == 1)
  {
    oslog = v13->_log;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v16, "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]", v13->_goLiveDate, location);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: GoLive %@ date in past (today: %@), deployment allowed", v16, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = 1;
  }

  else if (v9)
  {
    v4 = v13->_log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v14, "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]", v13->_goLiveDate, location);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: GoLive date (%@) in future (today: %@), deployment not allowed", v14, 0x20u);
    }

    objc_storeStrong(&v4, 0);
    v11 = 0;
  }

  else
  {
    v6 = v13->_log;
    v5 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v15, "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]", v13->_goLiveDate, location);
      _os_log_impl(&_mh_execute_header, v6, v5, "%s: GoLive %@ date today (today: %@), deployment allowed", v15, 0x20u);
    }

    objc_storeStrong(&v6, 0);
    v11 = 1;
  }

  v3 = v11;
  objc_storeStrong(&location, 0);
  return v3 & 1;
}

- (BOOL)isDeploymentAllowedPerRampPeriod
{
  v11 = self;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  time(&v7);
  v8 = localtime(&v7);
  if (!v11->_deploymentDay)
  {
    return 0;
  }

  v6 = [(NSNumber *)v11->_deploymentDay unsignedIntValue];
  if (v8->tm_wday == v6)
  {
    v3 = v11->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]", v6);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Today is the day for Ramped Updates: Day %d", v13, 0x12u);
    }

    objc_storeStrong(&v3, 0);
    return 1;
  }

  else
  {
    oslog = v11->_log;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_4_0_4_0(v14, "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]", v8->tm_wday, v6);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: Cannot apply update today is Day %d and this device can only do Ramped Updates on Day %d", v14, 0x18u);
    }

    objc_storeStrong(&oslog, 0);
    return 0;
  }
}

- (BOOL)isDeploymentAllowedPerDeploymentLimit
{
  v10 = self;
  v9 = a2;
  v8 = 0;
  if (!self->_deploymentPercent)
  {
    return 0;
  }

  v7 = [(NSNumber *)v10->_deploymentLimit unsignedIntValue];
  v6 = [(NSNumber *)v10->_deploymentPercent unsignedIntValue];
  if (v6 > v7)
  {
    v3 = v10->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_4_0_4_0(v12, "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]", v7, v6);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Device cannot apply metered rollout as it doesn't fall under %d percent. Device is %d percent.", v12, 0x18u);
    }

    objc_storeStrong(&v3, 0);
    return 0;
  }

  else
  {
    oslog = v10->_log;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]", v6);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: Device can apply metered rollout, %d percent.", v13, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    return 1;
  }
}

- (void)calculateDeploymentDay
{
  v12 = self;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (self->_serialNumber && v12->_rampPeriod)
  {
    v7 = [(NSNumber *)v12->_rampPeriod unsignedIntValue];
    v10 = [(NSString *)v12->_serialNumber UTF8String];
    v9 = [(NSString *)v12->_serialNumber length];
    for (i = 0; i < v9; ++i)
    {
      v8 += v10[i];
    }

    v5 = v8 % v7;
    oslog = v12->_log;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule calculateDeploymentDay]", v5);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "%s: deployDay = %d", v13, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v2 = [NSNumber numberWithUnsignedInt:v5];
    deploymentDay = v12->_deploymentDay;
    v12->_deploymentDay = v2;
  }
}

- (void)calculateDeploymentPercent
{
  v12 = self;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 3;
  if (self->_serialNumber)
  {
    v10 = [(NSString *)v12->_serialNumber UTF8String];
    v9 = [(NSString *)v12->_serialNumber length];
    for (i = 0; i < v9; ++i)
    {
      v8 += v10[i];
      v7 *= v10[i];
    }

    v5 = 10 * (v8 % 0xA) + v7 % 0xA;
    oslog = v12->_log;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule calculateDeploymentPercent]", v5);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "%s: deployPercent = %d", v13, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v2 = [NSNumber numberWithUnsignedInt:v5];
    deploymentPercent = v12->_deploymentPercent;
    v12->_deploymentPercent = v2;
  }
}

- (void)createSerialNumber
{
  v8 = self;
  location[1] = a2;
  if (self->_testSerialNumber)
  {
    objc_storeStrong(&v8->_serialNumber, v8->_testSerialNumber);
    location[0] = v8->_log;
    v6 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v11, "[UARPDeploymentRule createSerialNumber]", v8->_serialNumber);
      _os_log_impl(&_mh_execute_header, location[0], v6, "%s: Using %@ provided by user as seed", v11, 0x16u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v9 = MGCopyAnswer();
    v2 = v9;
    v3 = v9;
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v3;

    oslog = v8->_log;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v10, "[UARPDeploymentRule createSerialNumber]");
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "%s: Using device serial number as seed", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }
}

- (void)addDeploymentLimit:(id)a3 withGoLiveDate:(id)a4 error:(id *)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = a5;
  if (v23->_isFullyDeployedDeploymentLimits)
  {
    v19 = objc_opt_new();
    v11 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment already scheduled for full deployment for %@", v23->_currentISOCountryCode];
    [v19 setObject:? forKeyedSubscript:?];

    v18 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v19];
    v12 = v18;
    v5 = v18;
    *v20 = v12;
    v17 = 1;
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v10 = [(NSMutableDictionary *)v23->_deploymentLimits objectForKey:v21];

    if (v10)
    {
      v16 = objc_opt_new();
      v8 = [(NSDate *)v23->_goLiveDate description];
      v7 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment Limit already set on Go Live Date %@ for %@", v8, v23->_currentISOCountryCode];
      [v16 setObject:? forKeyedSubscript:?];

      v15 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v16];
      v9 = v15;
      v6 = v15;
      *v20 = v9;
      v17 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      if (v21)
      {
        [(NSMutableDictionary *)v23->_deploymentLimits setObject:location[0] forKeyedSubscript:v21];
      }

      [(UARPDeploymentRule *)v23 validateDeploymentLimits:v20];
      v17 = 1;
    }
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)validateDeploymentLimits:(id *)a3
{
  v34 = self;
  v33 = a2;
  v32 = a3;
  v25 = [(NSMutableDictionary *)self->_deploymentLimits allKeys];
  v31 = [v25 sortedArrayUsingSelector:"compare:"];

  for (i = 1; i < [v31 count]; ++i)
  {
    deploymentLimits = v34->_deploymentLimits;
    v19 = [v31 objectAtIndexedSubscript:i - 1];
    v18 = [(NSMutableDictionary *)deploymentLimits objectForKeyedSubscript:?];
    v20 = [v18 unsignedIntValue];

    v29 = v20;
    v21 = v34->_deploymentLimits;
    v23 = [v31 objectAtIndexedSubscript:i];
    v22 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:?];
    v24 = [v22 unsignedIntValue];

    v28 = v24;
    if (v20 >= v24)
    {
      v27 = objc_opt_new();
      v9 = v28;
      currentISOCountryCode = v34->_currentISOCountryCode;
      v13 = [v31 objectAtIndexedSubscript:i];
      v12 = [v13 description];
      v11 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment Limit %lu for %@ with Go Live Date %@ is invalid, must be strictly increasing", v9, currentISOCountryCode, v12];
      [v27 setObject:? forKeyedSubscript:?];

      v26 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v27];
      v14 = v26;
      v3 = v26;
      *v32 = v14;
      v15 = v34->_deploymentLimits;
      v16 = [v31 objectAtIndexedSubscript:i];
      [(NSMutableDictionary *)v15 removeObjectForKey:?];

      v35 = 0;
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
      goto LABEL_9;
    }
  }

  v5 = v34->_deploymentLimits;
  v7 = [v31 lastObject];
  v6 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:?];
  v8 = [v6 unsignedIntValue];

  if (v8 == 100)
  {
    v34->_isFullyDeployedDeploymentLimits = 1;
  }

  v35 = 1;
LABEL_9:
  objc_storeStrong(&v31, 0);
  return v35 & 1;
}

- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [location appendWithTabDepth:v13 format:@"Deployment Rule:\n"];
  if (v15->_currentISOCountryCode)
  {
    [location appendWithTabDepth:v13 + 1 format:{@"Current Country Code: %@\n", v15->_currentISOCountryCode}];
  }

  if (v15->_goLiveDate)
  {
    [location appendWithTabDepth:v13 + 1 format:{@"Go-Live Date: %@\n", v15->_goLiveDate}];
  }

  if ([(NSArray *)v15->_countryList count])
  {
    [location appendWithTabDepth:v13 + 1 format:@"Country List:"];
    memset(__b, 0, sizeof(__b));
    obj = v15->_countryList;
    v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(__b[1] + 8 * v6);
        [location appendFormat:@" %@", v11];
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    [location appendString:@"\n"];
  }

  if (v15->_rampPeriod)
  {
    [location appendWithTabDepth:v13 + 1 format:{@"Ramp Period: %@\n", v15->_rampPeriod}];
  }

  if (v15->_deploymentLimit)
  {
    [location appendWithTabDepth:v13 + 1 format:{@"Deployment Limit: %@\n", v15->_deploymentLimit}];
  }

  if (v15->_deploymentPercent)
  {
    [location appendWithTabDepth:v13 + 1 format:{@"Deployment Percent: %@\n", v15->_deploymentPercent}];
  }

  if (v15->_deploymentDay)
  {
    [location appendWithTabDepth:v13 + 1 format:{@"Deployment Day: %@\n", v15->_deploymentDay}];
  }

  if (v15->_serialNumber)
  {
    [location appendWithTabDepth:v13 + 1 format:{@"Serial Number: %@\n", v15->_serialNumber}];
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)isEqual:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v7 == location[0])
      {
        v8 = 1;
      }

      else
      {
        v5 = [(UARPDeploymentRule *)v7 currentISOCountryCode];
        v4 = [location[0] currentISOCountryCode];
        v8 = [(NSString *)v5 isEqualToString:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

@end
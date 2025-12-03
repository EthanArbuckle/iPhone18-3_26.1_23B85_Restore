@interface UARPDeploymentRule
- (BOOL)isDeploymentAllowed:(id *)allowed;
- (BOOL)isDeploymentAllowedPerCountryList;
- (BOOL)isDeploymentAllowedPerDeploymentLimit;
- (BOOL)isDeploymentAllowedPerGoLiveDate;
- (BOOL)isDeploymentAllowedPerRampPeriod;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateDeploymentLimits:(id *)limits;
- (UARPDeploymentRule)initWithCoder:(id)coder;
- (UARPDeploymentRule)initWithConfig:(id)config;
- (UARPDeploymentRule)initWithMinOSVersion:(id)version maxOSVersion:(id)sVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compareOSVersion:(id)version withVersion:(id)withVersion;
- (void)addDeploymentLimit:(id)limit withGoLiveDate:(id)date error:(id *)error;
- (void)calculateDeploymentDay;
- (void)calculateDeploymentPercent;
- (void)createSerialNumber;
- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)setDeploymentDay:(id)day;
- (void)setDeploymentPercent:(id)percent;
- (void)setTestSerialNumber:(id)number;
@end

@implementation UARPDeploymentRule

- (UARPDeploymentRule)initWithMinOSVersion:(id)version maxOSVersion:(id)sVersion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v13 = 0;
  objc_storeStrong(&v13, sVersion);
  v4 = selfCopy;
  selfCopy = 0;
  v12.receiver = v4;
  v12.super_class = UARPDeploymentRule;
  selfCopy = [(UARPDeploymentRule *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [location[0] copy];
    minOSVersion = selfCopy->_minOSVersion;
    selfCopy->_minOSVersion = v5;

    v7 = [v13 copy];
    maxOSVersion = selfCopy->_maxOSVersion;
    selfCopy->_maxOSVersion = v7;
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (UARPDeploymentRule)initWithConfig:(id)config
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  v45 = 0;
  rampPeriod = [location[0] rampPeriod];
  v43 = 0;
  v35 = 0;
  if (rampPeriod)
  {
    deploymentLimit = [location[0] deploymentLimit];
    v43 = 1;
    v35 = deploymentLimit != 0;
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
    rampPeriod2 = [location[0] rampPeriod];

    if (rampPeriod2)
    {
      rampPeriod3 = [location[0] rampPeriod];
      unsignedIntValue = [rampPeriod3 unsignedIntValue];

      v41 = unsignedIntValue;
      v45 = unsignedIntValue == 7 || v41 == 28;
    }

    else
    {
      deploymentLimit2 = [location[0] deploymentLimit];

      if (deploymentLimit2)
      {
        deploymentLimit3 = [location[0] deploymentLimit];
        unsignedIntValue2 = [deploymentLimit3 unsignedIntValue];

        v40 = unsignedIntValue2;
        v45 = unsignedIntValue2 && v40 <= 0x63;
      }

      else
      {
        v45 = 1;
      }
    }

    if (v45)
    {
      v3 = selfCopy;
      selfCopy = 0;
      v39.receiver = v3;
      v39.super_class = UARPDeploymentRule;
      selfCopy = [(UARPDeploymentRule *)&v39 init];
      objc_storeStrong(&selfCopy, selfCopy);
      if (selfCopy)
      {
        goLiveDate = [location[0] goLiveDate];
        v4 = [goLiveDate copy];
        v5 = *(selfCopy + 10);
        *(selfCopy + 10) = v4;

        countryList = [location[0] countryList];
        v6 = [countryList copy];
        v7 = *(selfCopy + 11);
        *(selfCopy + 11) = v6;

        rampPeriod4 = [location[0] rampPeriod];
        v8 = [rampPeriod4 copy];
        v9 = *(selfCopy + 12);
        *(selfCopy + 12) = v8;

        deploymentLimit4 = [location[0] deploymentLimit];
        v10 = [deploymentLimit4 copy];
        v11 = *(selfCopy + 13);
        *(selfCopy + 13) = v10;

        v12 = os_log_create("com.apple.accessoryupdater.uarp", "deployment");
        v13 = *(selfCopy + 1);
        *(selfCopy + 1) = v12;

        if (objc_opt_class())
        {
          v23 = +[GEOCountryConfiguration sharedConfiguration];
          countryCode = [v23 countryCode];
          v14 = [countryCode copy];
          v15 = *(selfCopy + 9);
          *(selfCopy + 9) = v14;
        }

        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = *(selfCopy + 14);
        *(selfCopy + 14) = v16;

        *(selfCopy + 64) = 0;
        v38 = 0;
        v19 = selfCopy;
        v21 = [*(selfCopy + 13) copy];
        v20 = [*(selfCopy + 10) copy];
        v37 = v38;
        [v19 addDeploymentLimit:v21 withGoLiveDate:? error:?];
        objc_storeStrong(&v38, v37);

        if (v38)
        {
          v36 = *(selfCopy + 1);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_64(v49, "[UARPDeploymentRule initWithConfig:]", v38);
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Failed to initialize deployment limits with error %@", v49, 0x16u);
          }

          objc_storeStrong(&v36, 0);
        }

        objc_storeStrong(&v38, 0);
      }

      v48 = selfCopy;
      v42 = 1;
    }

    else
    {
      v48 = 0;
      v42 = 1;
    }
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v48;
}

- (UARPDeploymentRule)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v20.receiver = v3;
  v20.super_class = UARPDeploymentRule;
  selfCopy = [(UARPDeploymentRule *)&v20 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"goLiveDate"];
    goLiveDate = selfCopy->_goLiveDate;
    selfCopy->_goLiveDate = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"rampPeriod"];
    rampPeriod = selfCopy->_rampPeriod;
    selfCopy->_rampPeriod = v6;

    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"deploymentLimit"];
    deploymentLimit = selfCopy->_deploymentLimit;
    selfCopy->_deploymentLimit = v8;

    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v18 = [NSArray arrayWithObjects:v23 count:2];
    v19 = [NSSet setWithArray:?];

    v10 = [location[0] decodeObjectOfClasses:v19 forKey:@"countryList"];
    countryList = selfCopy->_countryList;
    selfCopy->_countryList = v10;

    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"minOSVersion"];
    minOSVersion = selfCopy->_minOSVersion;
    selfCopy->_minOSVersion = v12;

    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"maxOSVersion"];
    maxOSVersion = selfCopy->_maxOSVersion;
    selfCopy->_maxOSVersion = v14;

    objc_storeStrong(&v19, 0);
  }

  v17 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_goLiveDate forKey:@"goLiveDate"];
  [location[0] encodeObject:selfCopy->_countryList forKey:@"countryList"];
  [location[0] encodeObject:selfCopy->_rampPeriod forKey:@"rampPeriod"];
  [location[0] encodeObject:selfCopy->_deploymentLimit forKey:@"deploymentLimit"];
  [location[0] encodeObject:selfCopy->_minOSVersion forKey:@"minOSVersion"];
  [location[0] encodeObject:selfCopy->_maxOSVersion forKey:@"maxOSVersion"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v11[2] = a2;
  v11[1] = zone;
  v11[0] = objc_alloc_init(UARPDeploymentRule);
  objc_storeStrong(v11[0] + 9, selfCopy->_currentISOCountryCode);
  objc_storeStrong(v11[0] + 10, selfCopy->_goLiveDate);
  objc_storeStrong(v11[0] + 11, selfCopy->_countryList);
  objc_storeStrong(v11[0] + 12, selfCopy->_rampPeriod);
  objc_storeStrong(v11[0] + 13, selfCopy->_deploymentLimit);
  v3 = [(NSMutableDictionary *)selfCopy->_deploymentLimits mutableCopy];
  v4 = *(v11[0] + 14);
  *(v11[0] + 14) = v3;

  *(v11[0] + 64) = selfCopy->_isFullyDeployedDeploymentLimits;
  v5 = [(NSString *)selfCopy->_minOSVersion copy];
  v6 = *(v11[0] + 6);
  *(v11[0] + 6) = v5;

  v7 = [(NSString *)selfCopy->_maxOSVersion copy];
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

- (void)setTestSerialNumber:(id)number
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v3 = [location[0] copy];
  testSerialNumber = selfCopy->_testSerialNumber;
  selfCopy->_testSerialNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setDeploymentDay:(id)day
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, day);
  objc_storeStrong(&selfCopy->_deploymentDay, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setDeploymentPercent:(id)percent
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, percent);
  objc_storeStrong(&selfCopy->_deploymentPercent, location[0]);
  objc_storeStrong(location, 0);
}

- (BOOL)isDeploymentAllowed:(id *)allowed
{
  selfCopy = self;
  v21 = a2;
  allowedCopy = allowed;
  isDeploymentAllowedPerGoLiveDate = 1;
  v18 = 0;
  [(UARPDeploymentRule *)self createSerialNumber];
  [(UARPDeploymentRule *)selfCopy calculateDeploymentDay];
  [(UARPDeploymentRule *)selfCopy calculateDeploymentPercent];
  if (selfCopy->_goLiveDate)
  {
    isDeploymentAllowedPerGoLiveDate = [(UARPDeploymentRule *)selfCopy isDeploymentAllowedPerGoLiveDate];
  }

  if (isDeploymentAllowedPerGoLiveDate)
  {
    if ([(NSArray *)selfCopy->_countryList count])
    {
      isDeploymentAllowedPerGoLiveDate = [(UARPDeploymentRule *)selfCopy isDeploymentAllowedPerCountryList];
    }

    if (isDeploymentAllowedPerGoLiveDate)
    {
      if (selfCopy->_rampPeriod)
      {
        isDeploymentAllowedPerGoLiveDate = [(UARPDeploymentRule *)selfCopy isDeploymentAllowedPerRampPeriod];
      }

      if (isDeploymentAllowedPerGoLiveDate)
      {
        if (selfCopy->_deploymentLimit)
        {
          isDeploymentAllowedPerGoLiveDate = [(UARPDeploymentRule *)selfCopy isDeploymentAllowedPerDeploymentLimit];
        }

        if (selfCopy->_minOSVersion && selfCopy->_maxOSVersion)
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
          v13 = [(UARPDeploymentRule *)selfCopy compareOSVersion:selfCopy->_minOSVersion withVersion:location];
          v12 = [(UARPDeploymentRule *)selfCopy compareOSVersion:selfCopy->_maxOSVersion withVersion:location];
          v10 = 1;
          if (v13)
          {
            v10 = v13 == -1;
          }

          isDeploymentAllowedPerGoLiveDate = v10;
          v9 = 1;
          if (v12)
          {
            v9 = v12 == 1;
          }

          isDeploymentAllowedPerGoLiveDate = (isDeploymentAllowedPerGoLiveDate & 1 & v9) != 0;
          objc_storeStrong(&location, 0);
        }
      }
    }
  }

  if ((isDeploymentAllowedPerGoLiveDate & 1) == 0)
  {
    v3 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:0];
    v4 = v18;
    v18 = v3;

    v8 = v18;
    v5 = v18;
    *allowedCopy = v8;
  }

  v7 = isDeploymentAllowedPerGoLiveDate;
  objc_storeStrong(&v18, 0);
  return v7 & 1;
}

- (int64_t)compareOSVersion:(id)version withVersion:(id)withVersion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v14 = 0;
  objc_storeStrong(&v14, withVersion);
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
    integerValue = [v5 integerValue];

    v7 = [v12 objectAtIndexedSubscript:i];
    integerValue2 = [v7 integerValue];

    if (integerValue > integerValue2)
    {
      v16 = 1;
      goto LABEL_15;
    }

    if (integerValue < integerValue2)
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
  selfCopy = self;
  v9 = a2;
  v8 = 0;
  if (self->_currentISOCountryCode)
  {
    goto LABEL_19;
  }

  location = selfCopy->_log;
  v6 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v14, "[UARPDeploymentRule isDeploymentAllowedPerCountryList]", selfCopy->_currentISOCountryCode);
    _os_log_impl(&_mh_execute_header, location, v6, "%s: Current location unknown %@", v14, 0x16u);
  }

  objc_storeStrong(&location, 0);
  if (!objc_opt_class())
  {
    return 1;
  }

LABEL_19:
  if (!selfCopy->_currentISOCountryCode)
  {
    return 0;
  }

  if ([(NSArray *)selfCopy->_countryList containsObject:selfCopy->_currentISOCountryCode])
  {
    oslog = selfCopy->_log;
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
    v3 = selfCopy->_log;
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
  selfCopy = self;
  v12 = a2;
  v11 = 0;
  location = +[NSDate date];
  v9 = [location compare:selfCopy->_goLiveDate];
  if (v9 == 1)
  {
    oslog = selfCopy->_log;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v16, "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]", selfCopy->_goLiveDate, location);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: GoLive %@ date in past (today: %@), deployment allowed", v16, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = 1;
  }

  else if (v9)
  {
    v4 = selfCopy->_log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v14, "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]", selfCopy->_goLiveDate, location);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: GoLive date (%@) in future (today: %@), deployment not allowed", v14, 0x20u);
    }

    objc_storeStrong(&v4, 0);
    v11 = 0;
  }

  else
  {
    v6 = selfCopy->_log;
    v5 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v15, "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]", selfCopy->_goLiveDate, location);
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
  selfCopy = self;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  time(&v7);
  v8 = localtime(&v7);
  if (!selfCopy->_deploymentDay)
  {
    return 0;
  }

  unsignedIntValue = [(NSNumber *)selfCopy->_deploymentDay unsignedIntValue];
  if (v8->tm_wday == unsignedIntValue)
  {
    v3 = selfCopy->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]", unsignedIntValue);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Today is the day for Ramped Updates: Day %d", v13, 0x12u);
    }

    objc_storeStrong(&v3, 0);
    return 1;
  }

  else
  {
    oslog = selfCopy->_log;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_4_0_4_0(v14, "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]", v8->tm_wday, unsignedIntValue);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: Cannot apply update today is Day %d and this device can only do Ramped Updates on Day %d", v14, 0x18u);
    }

    objc_storeStrong(&oslog, 0);
    return 0;
  }
}

- (BOOL)isDeploymentAllowedPerDeploymentLimit
{
  selfCopy = self;
  v9 = a2;
  v8 = 0;
  if (!self->_deploymentPercent)
  {
    return 0;
  }

  unsignedIntValue = [(NSNumber *)selfCopy->_deploymentLimit unsignedIntValue];
  unsignedIntValue2 = [(NSNumber *)selfCopy->_deploymentPercent unsignedIntValue];
  if (unsignedIntValue2 > unsignedIntValue)
  {
    v3 = selfCopy->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_4_0_4_0(v12, "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]", unsignedIntValue, unsignedIntValue2);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Device cannot apply metered rollout as it doesn't fall under %d percent. Device is %d percent.", v12, 0x18u);
    }

    objc_storeStrong(&v3, 0);
    return 0;
  }

  else
  {
    oslog = selfCopy->_log;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]", unsignedIntValue2);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: Device can apply metered rollout, %d percent.", v13, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    return 1;
  }
}

- (void)calculateDeploymentDay
{
  selfCopy = self;
  v11 = a2;
  uTF8String = 0;
  v9 = 0;
  v8 = 0;
  unsignedIntValue = 0;
  if (self->_serialNumber && selfCopy->_rampPeriod)
  {
    unsignedIntValue = [(NSNumber *)selfCopy->_rampPeriod unsignedIntValue];
    uTF8String = [(NSString *)selfCopy->_serialNumber UTF8String];
    v9 = [(NSString *)selfCopy->_serialNumber length];
    for (i = 0; i < v9; ++i)
    {
      v8 += uTF8String[i];
    }

    v5 = v8 % unsignedIntValue;
    oslog = selfCopy->_log;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule calculateDeploymentDay]", v5);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "%s: deployDay = %d", v13, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v2 = [NSNumber numberWithUnsignedInt:v5];
    deploymentDay = selfCopy->_deploymentDay;
    selfCopy->_deploymentDay = v2;
  }
}

- (void)calculateDeploymentPercent
{
  selfCopy = self;
  v11 = a2;
  uTF8String = 0;
  v9 = 0;
  v8 = 0;
  v7 = 3;
  if (self->_serialNumber)
  {
    uTF8String = [(NSString *)selfCopy->_serialNumber UTF8String];
    v9 = [(NSString *)selfCopy->_serialNumber length];
    for (i = 0; i < v9; ++i)
    {
      v8 += uTF8String[i];
      v7 *= uTF8String[i];
    }

    v5 = 10 * (v8 % 0xA) + v7 % 0xA;
    oslog = selfCopy->_log;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v13, "[UARPDeploymentRule calculateDeploymentPercent]", v5);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "%s: deployPercent = %d", v13, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v2 = [NSNumber numberWithUnsignedInt:v5];
    deploymentPercent = selfCopy->_deploymentPercent;
    selfCopy->_deploymentPercent = v2;
  }
}

- (void)createSerialNumber
{
  selfCopy = self;
  location[1] = a2;
  if (self->_testSerialNumber)
  {
    objc_storeStrong(&selfCopy->_serialNumber, selfCopy->_testSerialNumber);
    location[0] = selfCopy->_log;
    v6 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v11, "[UARPDeploymentRule createSerialNumber]", selfCopy->_serialNumber);
      _os_log_impl(&_mh_execute_header, location[0], v6, "%s: Using %@ provided by user as seed", v11, 0x16u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v9 = MGCopyAnswer();
    v2 = v9;
    v3 = v9;
    serialNumber = selfCopy->_serialNumber;
    selfCopy->_serialNumber = v3;

    oslog = selfCopy->_log;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v10, "[UARPDeploymentRule createSerialNumber]");
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "%s: Using device serial number as seed", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }
}

- (void)addDeploymentLimit:(id)limit withGoLiveDate:(id)date error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, limit);
  v21 = 0;
  objc_storeStrong(&v21, date);
  errorCopy = error;
  if (selfCopy->_isFullyDeployedDeploymentLimits)
  {
    v19 = objc_opt_new();
    v11 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment already scheduled for full deployment for %@", selfCopy->_currentISOCountryCode];
    [v19 setObject:? forKeyedSubscript:?];

    v18 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v19];
    v12 = v18;
    v5 = v18;
    *errorCopy = v12;
    v17 = 1;
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v10 = [(NSMutableDictionary *)selfCopy->_deploymentLimits objectForKey:v21];

    if (v10)
    {
      v16 = objc_opt_new();
      v8 = [(NSDate *)selfCopy->_goLiveDate description];
      v7 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment Limit already set on Go Live Date %@ for %@", v8, selfCopy->_currentISOCountryCode];
      [v16 setObject:? forKeyedSubscript:?];

      v15 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v16];
      v9 = v15;
      v6 = v15;
      *errorCopy = v9;
      v17 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      if (v21)
      {
        [(NSMutableDictionary *)selfCopy->_deploymentLimits setObject:location[0] forKeyedSubscript:v21];
      }

      [(UARPDeploymentRule *)selfCopy validateDeploymentLimits:errorCopy];
      v17 = 1;
    }
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)validateDeploymentLimits:(id *)limits
{
  selfCopy = self;
  v33 = a2;
  limitsCopy = limits;
  allKeys = [(NSMutableDictionary *)self->_deploymentLimits allKeys];
  v31 = [allKeys sortedArrayUsingSelector:"compare:"];

  for (i = 1; i < [v31 count]; ++i)
  {
    deploymentLimits = selfCopy->_deploymentLimits;
    v19 = [v31 objectAtIndexedSubscript:i - 1];
    v18 = [(NSMutableDictionary *)deploymentLimits objectForKeyedSubscript:?];
    unsignedIntValue = [v18 unsignedIntValue];

    v29 = unsignedIntValue;
    v21 = selfCopy->_deploymentLimits;
    v23 = [v31 objectAtIndexedSubscript:i];
    v22 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:?];
    unsignedIntValue2 = [v22 unsignedIntValue];

    v28 = unsignedIntValue2;
    if (unsignedIntValue >= unsignedIntValue2)
    {
      v27 = objc_opt_new();
      v9 = v28;
      currentISOCountryCode = selfCopy->_currentISOCountryCode;
      v13 = [v31 objectAtIndexedSubscript:i];
      v12 = [v13 description];
      v11 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment Limit %lu for %@ with Go Live Date %@ is invalid, must be strictly increasing", v9, currentISOCountryCode, v12];
      [v27 setObject:? forKeyedSubscript:?];

      v26 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v27];
      v14 = v26;
      v3 = v26;
      *limitsCopy = v14;
      v15 = selfCopy->_deploymentLimits;
      v16 = [v31 objectAtIndexedSubscript:i];
      [(NSMutableDictionary *)v15 removeObjectForKey:?];

      v35 = 0;
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
      goto LABEL_9;
    }
  }

  v5 = selfCopy->_deploymentLimits;
  lastObject = [v31 lastObject];
  v6 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:?];
  unsignedIntValue3 = [v6 unsignedIntValue];

  if (unsignedIntValue3 == 100)
  {
    selfCopy->_isFullyDeployedDeploymentLimits = 1;
  }

  v35 = 1;
LABEL_9:
  objc_storeStrong(&v31, 0);
  return v35 & 1;
}

- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string
{
  selfCopy = self;
  v14 = a2;
  depthCopy = depth;
  location = 0;
  objc_storeStrong(&location, string);
  [location appendWithTabDepth:depthCopy format:@"Deployment Rule:\n"];
  if (selfCopy->_currentISOCountryCode)
  {
    [location appendWithTabDepth:depthCopy + 1 format:{@"Current Country Code: %@\n", selfCopy->_currentISOCountryCode}];
  }

  if (selfCopy->_goLiveDate)
  {
    [location appendWithTabDepth:depthCopy + 1 format:{@"Go-Live Date: %@\n", selfCopy->_goLiveDate}];
  }

  if ([(NSArray *)selfCopy->_countryList count])
  {
    [location appendWithTabDepth:depthCopy + 1 format:@"Country List:"];
    memset(__b, 0, sizeof(__b));
    obj = selfCopy->_countryList;
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

  if (selfCopy->_rampPeriod)
  {
    [location appendWithTabDepth:depthCopy + 1 format:{@"Ramp Period: %@\n", selfCopy->_rampPeriod}];
  }

  if (selfCopy->_deploymentLimit)
  {
    [location appendWithTabDepth:depthCopy + 1 format:{@"Deployment Limit: %@\n", selfCopy->_deploymentLimit}];
  }

  if (selfCopy->_deploymentPercent)
  {
    [location appendWithTabDepth:depthCopy + 1 format:{@"Deployment Percent: %@\n", selfCopy->_deploymentPercent}];
  }

  if (selfCopy->_deploymentDay)
  {
    [location appendWithTabDepth:depthCopy + 1 format:{@"Deployment Day: %@\n", selfCopy->_deploymentDay}];
  }

  if (selfCopy->_serialNumber)
  {
    [location appendWithTabDepth:depthCopy + 1 format:{@"Serial Number: %@\n", selfCopy->_serialNumber}];
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (selfCopy == location[0])
      {
        v8 = 1;
      }

      else
      {
        currentISOCountryCode = [(UARPDeploymentRule *)selfCopy currentISOCountryCode];
        currentISOCountryCode2 = [location[0] currentISOCountryCode];
        v8 = [(NSString *)currentISOCountryCode isEqualToString:?];
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
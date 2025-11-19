@interface APECMetricSampler
+ (BOOL)_shouldSample:(id)a3;
- (APECMetricSampler)init;
- (BOOL)_hasSession:(id)a3 purpose:(int64_t)a4;
- (BOOL)isSampleRateExpired:(id)a3 purpose:(int64_t)a4;
- (BOOL)sampleEvent:(int64_t)a3;
- (double)sampleSessionStartTimeFromPurpose:(id)a3 purpose:(int64_t)a4;
- (id)_loadAllSampleRates;
- (id)_loadSampleSessionsfromStorage;
- (id)_samplePeriodFromConfig:(int64_t)a3;
- (id)_sampleRateFromConfig:(int64_t)a3;
- (void)_updateRateAndTime:(id)a3 rate:(id)a4 purpose:(int64_t)a5;
- (void)_updateSampleSessionStorage:(id)a3;
@end

@implementation APECMetricSampler

- (APECMetricSampler)init
{
  v7.receiver = self;
  v7.super_class = APECMetricSampler;
  v2 = [(APECMetricSampler *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(APECMetricSampler *)v2 _loadAllSampleRates];
    samplingSettings = v3->_samplingSettings;
    v3->_samplingSettings = v4;
  }

  return v3;
}

- (id)_loadSampleSessionsfromStorage
{
  v2 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:0];
  v3 = [v2 valueForKey:@"com.apple.ap.APECSampleSettings"];

  return v3;
}

- (void)_updateSampleSessionStorage:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:0];
  [v4 setValue:v3 forKey:@"com.apple.ap.APECSampleSettings"];
}

- (id)_sampleRateFromConfig:(int64_t)a3
{
  if (!a3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = [APECPurposeConfig purposeConfig:?];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [v3 samplePercentage];

  if (v5)
  {
    v5 = [v4 samplePercentage];
  }

LABEL_7:

  return v5;
}

- (id)_samplePeriodFromConfig:(int64_t)a3
{
  if (!a3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = [APECPurposeConfig purposeConfig:?];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [v3 samplePeriod];

  if (v5)
  {
    v5 = [v4 samplePeriod];
  }

LABEL_7:

  return v5;
}

- (id)_loadAllSampleRates
{
  v3 = [(APECMetricSampler *)self _loadSampleSessionsfromStorage];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = +[NSMutableDictionary dictionary];
  }

  v5 = 0;
  v10 = xmmword_1003EFC50;
  v11 = xmmword_1003F09A0;
  v12 = xmmword_1003F09B0;
  do
  {
    v6 = *(&v10 + v5);
    if ([(APECMetricSampler *)self _hasSession:v4 purpose:v6, v10, v11, v12])
    {
      if (![(APECMetricSampler *)self isSampleRateExpired:v4 purpose:v6])
      {
        goto LABEL_10;
      }

      v7 = [(APECMetricSampler *)self _sampleRateFromConfig:v6];
LABEL_8:
      [(APECMetricSampler *)self _updateRateAndTime:v4 rate:v7 purpose:v6];
      goto LABEL_9;
    }

    v7 = [(APECMetricSampler *)self _sampleRateFromConfig:v6];
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_9:

LABEL_10:
    v5 += 8;
  }

  while (v5 != 48);
  [(APECMetricSampler *)self _updateSampleSessionStorage:v4];
  v8 = [NSDictionary dictionaryWithDictionary:v4];

  return v8;
}

- (BOOL)_hasSession:(id)a3 purpose:(int64_t)a4
{
  v5 = a3;
  v6 = [NSNumber numberWithInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7 != 0;
}

- (void)_updateRateAndTime:(id)a3 rate:(id)a4 purpose:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v12 = [APECMetricSampler _shouldSample:v8];
  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = @"NO";
    if (v12)
    {
      v14 = @"YES";
    }

    v25 = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Device should sample metrics (%@)", &v25, 0xCu);
  }

  v15 = [NSNumber numberWithInteger:a5];
  v16 = [v7 objectForKeyedSubscript:v15];

  if (!v16)
  {
    v17 = [&__NSDictionary0__struct mutableCopy];
    v18 = [NSNumber numberWithInteger:a5];
    [v7 setObject:v17 forKey:v18];
  }

  v19 = [NSNumber numberWithBool:v12];
  v20 = [NSNumber numberWithInteger:a5];
  v21 = [v7 objectForKeyedSubscript:v20];
  [v21 setObject:v19 forKeyedSubscript:@"Sample"];

  v22 = [NSNumber numberWithDouble:v11];
  v23 = [NSNumber numberWithInteger:a5];
  v24 = [v7 objectForKeyedSubscript:v23];
  [v24 setObject:v22 forKeyedSubscript:@"TimeInterval"];
}

- (double)sampleSessionStartTimeFromPurpose:(id)a3 purpose:(int64_t)a4
{
  v5 = a3;
  v6 = [NSNumber numberWithInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 objectForKeyedSubscript:@"TimeInterval"];

  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (BOOL)isSampleRateExpired:(id)a3 purpose:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  [(APECMetricSampler *)self sampleSessionStartTimeFromPurpose:v6 purpose:a4];
  v11 = v10;

  v12 = [(APECMetricSampler *)self _samplePeriodFromConfig:a4];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 intValue];
  }

  else
  {
    v14 = 604800.0;
  }

  v15 = v9 - v11 > v14;

  return v15;
}

- (BOOL)sampleEvent:(int64_t)a3
{
  v4 = [(APECMetricSampler *)self samplingSettings];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 objectForKeyedSubscript:@"Sample"];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (BOOL)_shouldSample:(id)a3
{
  v3 = a3;
  v4 = arc4random_uniform(0x186A0u);
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "sample random number (%u)", v8, 8u);
  }

  v6 = [v3 unsignedIntValue];
  return v4 <= v6;
}

@end
@interface APECMetricSampler
+ (BOOL)_shouldSample:(id)sample;
- (APECMetricSampler)init;
- (BOOL)_hasSession:(id)session purpose:(int64_t)purpose;
- (BOOL)isSampleRateExpired:(id)expired purpose:(int64_t)purpose;
- (BOOL)sampleEvent:(int64_t)event;
- (double)sampleSessionStartTimeFromPurpose:(id)purpose purpose:(int64_t)a4;
- (id)_loadAllSampleRates;
- (id)_loadSampleSessionsfromStorage;
- (id)_samplePeriodFromConfig:(int64_t)config;
- (id)_sampleRateFromConfig:(int64_t)config;
- (void)_updateRateAndTime:(id)time rate:(id)rate purpose:(int64_t)purpose;
- (void)_updateSampleSessionStorage:(id)storage;
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
    _loadAllSampleRates = [(APECMetricSampler *)v2 _loadAllSampleRates];
    samplingSettings = v3->_samplingSettings;
    v3->_samplingSettings = _loadAllSampleRates;
  }

  return v3;
}

- (id)_loadSampleSessionsfromStorage
{
  v2 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:0];
  v3 = [v2 valueForKey:@"com.apple.ap.APECSampleSettings"];

  return v3;
}

- (void)_updateSampleSessionStorage:(id)storage
{
  storageCopy = storage;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:0];
  [v4 setValue:storageCopy forKey:@"com.apple.ap.APECSampleSettings"];
}

- (id)_sampleRateFromConfig:(int64_t)config
{
  if (!config)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = [APECPurposeConfig purposeConfig:?];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    samplePercentage = 0;
    goto LABEL_7;
  }

  samplePercentage = [v3 samplePercentage];

  if (samplePercentage)
  {
    samplePercentage = [v4 samplePercentage];
  }

LABEL_7:

  return samplePercentage;
}

- (id)_samplePeriodFromConfig:(int64_t)config
{
  if (!config)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = [APECPurposeConfig purposeConfig:?];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    samplePeriod = 0;
    goto LABEL_7;
  }

  samplePeriod = [v3 samplePeriod];

  if (samplePeriod)
  {
    samplePeriod = [v4 samplePeriod];
  }

LABEL_7:

  return samplePeriod;
}

- (id)_loadAllSampleRates
{
  _loadSampleSessionsfromStorage = [(APECMetricSampler *)self _loadSampleSessionsfromStorage];
  v4 = [_loadSampleSessionsfromStorage mutableCopy];

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

- (BOOL)_hasSession:(id)session purpose:(int64_t)purpose
{
  sessionCopy = session;
  v6 = [NSNumber numberWithInteger:purpose];
  v7 = [sessionCopy objectForKeyedSubscript:v6];

  return v7 != 0;
}

- (void)_updateRateAndTime:(id)time rate:(id)rate purpose:(int64_t)purpose
{
  timeCopy = time;
  rateCopy = rate;
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v12 = [APECMetricSampler _shouldSample:rateCopy];
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

  v15 = [NSNumber numberWithInteger:purpose];
  v16 = [timeCopy objectForKeyedSubscript:v15];

  if (!v16)
  {
    v17 = [&__NSDictionary0__struct mutableCopy];
    v18 = [NSNumber numberWithInteger:purpose];
    [timeCopy setObject:v17 forKey:v18];
  }

  v19 = [NSNumber numberWithBool:v12];
  v20 = [NSNumber numberWithInteger:purpose];
  v21 = [timeCopy objectForKeyedSubscript:v20];
  [v21 setObject:v19 forKeyedSubscript:@"Sample"];

  v22 = [NSNumber numberWithDouble:v11];
  v23 = [NSNumber numberWithInteger:purpose];
  v24 = [timeCopy objectForKeyedSubscript:v23];
  [v24 setObject:v22 forKeyedSubscript:@"TimeInterval"];
}

- (double)sampleSessionStartTimeFromPurpose:(id)purpose purpose:(int64_t)a4
{
  purposeCopy = purpose;
  v6 = [NSNumber numberWithInteger:a4];
  v7 = [purposeCopy objectForKeyedSubscript:v6];

  v8 = [v7 objectForKeyedSubscript:@"TimeInterval"];

  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (BOOL)isSampleRateExpired:(id)expired purpose:(int64_t)purpose
{
  expiredCopy = expired;
  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  [(APECMetricSampler *)self sampleSessionStartTimeFromPurpose:expiredCopy purpose:purpose];
  v11 = v10;

  v12 = [(APECMetricSampler *)self _samplePeriodFromConfig:purpose];
  v13 = v12;
  if (v12)
  {
    intValue = [v12 intValue];
  }

  else
  {
    intValue = 604800.0;
  }

  v15 = v9 - v11 > intValue;

  return v15;
}

- (BOOL)sampleEvent:(int64_t)event
{
  samplingSettings = [(APECMetricSampler *)self samplingSettings];
  v5 = [NSNumber numberWithInteger:event];
  v6 = [samplingSettings objectForKeyedSubscript:v5];
  v7 = [v6 objectForKeyedSubscript:@"Sample"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)_shouldSample:(id)sample
{
  sampleCopy = sample;
  v4 = arc4random_uniform(0x186A0u);
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "sample random number (%u)", v8, 8u);
  }

  unsignedIntValue = [sampleCopy unsignedIntValue];
  return v4 <= unsignedIntValue;
}

@end
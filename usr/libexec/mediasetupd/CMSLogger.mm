@interface CMSLogger
+ (id)_LoggingQueue;
- (BOOL)_checkDictionary:(id)dictionary forKeyType:(Class)type andValueType:(Class)valueType;
- (id)_loggerStorage;
- (id)createNewSessionForType:(id)type withMetadata:(id)metadata;
- (id)initForIdentity:(id)identity;
- (id)sendEvent;
- (void)_fileMetrics;
- (void)_loadAnalyticsData;
- (void)_saveAnalyticsData;
- (void)_sumbitFromSessionType:(id)type withMetadata:(id)metadata withEventDurations:(id)durations withEventOccurance:(id)occurance;
- (void)setReportFrequency:(double)frequency;
- (void)setSendEvent:(id)event;
@end

@implementation CMSLogger

+ (id)_LoggingQueue
{
  if (qword_100059AE8 != -1)
  {
    sub_100033224();
  }

  v3 = qword_100059AF0;

  return v3;
}

- (id)initForIdentity:(id)identity
{
  identityCopy = identity;
  v24.receiver = self;
  v24.super_class = CMSLogger;
  v5 = [(CMSLogger *)&v24 init];
  if (v5)
  {
    v6 = [identityCopy copy];
    logIdentity = v5->_logIdentity;
    v5->_logIdentity = v6;

    v8 = [NSString stringWithFormat:@"%@.Performance", v5->_logIdentity];
    performanceLog = v5->_performanceLog;
    v5->_performanceLog = v8;

    v10 = [NSString stringWithFormat:@"%@.Occurance", v5->_logIdentity];
    occuranceLog = v5->_occuranceLog;
    v5->_occuranceLog = v10;

    v12 = objc_opt_new();
    performanceData = v5->performanceData;
    v5->performanceData = v12;

    v14 = objc_opt_new();
    performanceDataCount = v5->performanceDataCount;
    v5->performanceDataCount = v14;

    v16 = objc_opt_new();
    metadata = v5->metadata;
    v5->metadata = v16;

    v18 = objc_opt_new();
    occuranceData = v5->occuranceData;
    v5->occuranceData = v18;

    v20 = +[NSDate date];
    lastTransitTimestamp = v5->_lastTransitTimestamp;
    v5->_lastTransitTimestamp = v20;

    [(CMSLogger *)v5 _loadAnalyticsData];
    sendEvent = v5->_sendEvent;
    v5->_sendEvent = &stru_1000527B0;
  }

  return v5;
}

- (void)setReportFrequency:(double)frequency
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031320;
  block[3] = &unk_100052800;
  objc_copyWeak(v5, &location);
  v5[1] = *&frequency;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

- (id)sendEvent
{
  v2 = objc_retainBlock(self->_sendEvent);

  return v2;
}

- (void)setSendEvent:(id)event
{
  eventCopy = event;
  v5 = +[CMSLogger _LoggingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003155C;
  v7[3] = &unk_100052828;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(v5, v7);
}

- (id)createNewSessionForType:(id)type withMetadata:(id)metadata
{
  metadataCopy = metadata;
  typeCopy = type;
  v8 = [[CMSLoggingSession alloc] initForType:typeCopy withMetadata:metadataCopy];

  [v8 setBelongedLogger:self];

  return v8;
}

- (void)_sumbitFromSessionType:(id)type withMetadata:(id)metadata withEventDurations:(id)durations withEventOccurance:(id)occurance
{
  performanceData = self->performanceData;
  occuranceCopy = occurance;
  durationsCopy = durations;
  metadataCopy = metadata;
  typeCopy = type;
  v14 = [(NSMutableDictionary *)performanceData objectForKeyedSubscript:typeCopy];
  v15 = [(NSMutableDictionary *)self->performanceDataCount objectForKeyedSubscript:typeCopy];
  v16 = [NSMutableDictionary dictionaryWithDictionary:v14];
  [NSMutableDictionary dictionaryWithDictionary:v15];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100031960;
  v33[3] = &unk_100052850;
  v34 = v14;
  v36 = v35 = v15;
  v37 = v16;
  v17 = v16;
  v18 = v36;
  v27 = v15;
  v19 = v14;
  [durationsCopy enumerateKeysAndObjectsUsingBlock:v33];

  v20 = [v19 objectForKeyedSubscript:@"Count"];
  v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 unsignedIntegerValue] + 1);
  [v17 setObject:v21 forKeyedSubscript:@"Count"];

  [(NSMutableDictionary *)self->performanceData setObject:v17 forKeyedSubscript:typeCopy];
  [(NSMutableDictionary *)self->performanceDataCount setObject:v18 forKeyedSubscript:typeCopy];
  v22 = [(NSMutableDictionary *)self->occuranceData objectForKeyedSubscript:typeCopy];
  [NSMutableDictionary dictionaryWithDictionary:v22];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100031ABC;
  v30[3] = &unk_100052878;
  v23 = v31 = v22;
  v32 = v23;
  v24 = v22;
  [occuranceCopy enumerateKeysAndObjectsUsingBlock:v30];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100031B7C;
  v28[3] = &unk_1000528A0;
  v29 = v23;
  v25 = v23;
  [v24 enumerateKeysAndObjectsUsingBlock:v28];
  [(NSMutableDictionary *)self->occuranceData setObject:v25 forKeyedSubscript:typeCopy];
  [(NSMutableDictionary *)self->metadata setObject:metadataCopy forKeyedSubscript:typeCopy];

  [(CMSLogger *)self _saveAnalyticsData];
}

- (void)_fileMetrics
{
  v3 = +[CMSLogger _LoggingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031C94;
  block[3] = &unk_100050AC0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)_loggerStorage
{
  v3 = [NSUserDefaults alloc];
  v4 = [NSString stringWithFormat:@"%@.Metrics", self->_logIdentity];
  v5 = [v3 initWithSuiteName:v4];

  return v5;
}

- (void)_saveAnalyticsData
{
  _loggerStorage = [(CMSLogger *)self _loggerStorage];
  [_loggerStorage setObject:self->_lastTransitTimestamp forKey:@"lastTransitTimestamp"];
  [_loggerStorage setObject:self->performanceData forKey:@"performanceData"];
  [_loggerStorage setObject:self->performanceDataCount forKey:@"performanceDataCount"];
  [_loggerStorage setObject:self->occuranceData forKey:@"occuranceData"];
  [_loggerStorage setObject:self->metadata forKey:@"metadata"];
  [(NSTimer *)self->reportTimer timeInterval];
  [_loggerStorage setDouble:@"ReportInterval" forKey:?];
  [_loggerStorage synchronize];
}

- (BOOL)_checkDictionary:(id)dictionary forKeyType:(Class)type andValueType:(Class)valueType
{
  dictionaryCopy = dictionary;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000323F8;
  v9[3] = &unk_1000528F0;
  v9[5] = type;
  v9[6] = valueType;
  v9[4] = &v10;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v9];
  LOBYTE(valueType) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return valueType;
}

- (void)_loadAnalyticsData
{
  _loggerStorage = [(CMSLogger *)self _loggerStorage];
  v3 = [_loggerStorage objectForKey:@"lastTransitTimestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_lastTransitTimestamp, v3);
  }

  v4 = [_loggerStorage objectForKey:@"performanceData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
    if ([(CMSLogger *)self _checkDictionary:v4 forKeyType:v5 andValueType:objc_opt_class()])
    {
      [(NSMutableDictionary *)self->performanceData addEntriesFromDictionary:v4];
    }
  }

  v6 = [_loggerStorage objectForKey:@"performanceDataCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_class();
    if ([(CMSLogger *)self _checkDictionary:v6 forKeyType:v7 andValueType:objc_opt_class()])
    {
      [(NSMutableDictionary *)self->performanceDataCount addEntriesFromDictionary:v6];
    }
  }

  v8 = [_loggerStorage objectForKey:@"occuranceData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    if ([(CMSLogger *)self _checkDictionary:v8 forKeyType:v9 andValueType:objc_opt_class()])
    {
      [(NSMutableDictionary *)self->occuranceData addEntriesFromDictionary:v8];
    }
  }

  v10 = [_loggerStorage objectForKey:@"metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_opt_class();
    if ([(CMSLogger *)self _checkDictionary:v10 forKeyType:v11 andValueType:objc_opt_class()])
    {
      [(NSMutableDictionary *)self->metadata addEntriesFromDictionary:v10];
    }
  }

  [_loggerStorage doubleForKey:@"ReportInterval"];
  if (v12 > 0.0)
  {
    [(CMSLogger *)self setReportFrequency:?];
  }
}

@end
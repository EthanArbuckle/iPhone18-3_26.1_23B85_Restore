@interface _DASGridDataManager
+ (id)sharedInstance;
- (BOOL)isCarbonImpactHighForState:(id)state;
- (_DASGridDataManager)init;
- (double)predictedPluggedInterval;
- (id)carbonImpactWindowStartForForecast:(id)forecast withStartDate:(id)date windowSize:(double)size;
- (id)forecastForTimeInterval:(double)interval from:(id)from;
- (void)loadState;
- (void)monitorPluggedInState;
- (void)resetState;
- (void)saveCarbonImpactWindowState;
- (void)setupHighCarbonImpactWindow:(double)window;
- (void)updatePredictedInterval;
@end

@implementation _DASGridDataManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AD94;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AFB0 != -1)
  {
    dispatch_once(&qword_10020AFB0, block);
  }

  v2 = qword_10020AFB8;

  return v2;
}

- (_DASGridDataManager)init
{
  v20.receiver = self;
  v20.super_class = _DASGridDataManager;
  v2 = [(_DASGridDataManager *)&v20 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "GridDataManager");
    log = v2->_log;
    v2->_log = v3;

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    defaults = v2->_defaults;
    v2->_defaults = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.das.griddatamanager", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v2->_forecastCacheSeconds = 14400.0;
    [(_DASGridDataManager *)v2 loadState];
    v10 = +[_CDClientContext userContext];
    context = v2->_context;
    v2->_context = v10;

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v12 = qword_10020AFC0;
    v25 = qword_10020AFC0;
    if (!qword_10020AFC0)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10003C464;
      v21[3] = &unk_1001B5798;
      v21[4] = &v22;
      sub_10003C464(v21);
      v12 = v23[3];
    }

    v13 = v12;
    _Block_object_dispose(&v22, 8);
    predictor = [v12 predictor];
    pluggedInPredictor = v2->_pluggedInPredictor;
    v2->_pluggedInPredictor = predictor;

    [(_DASGridDataManager *)v2 monitorPluggedInState];
    v2->_debugNotifyToken = -1;
    v16 = dispatch_get_global_queue(-32768, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003B01C;
    v18[3] = &unk_1001B5B78;
    v19 = v2;
    notify_register_dispatch("com.apple.dasd.testGridDataManager", &v2->_debugNotifyToken, v16, v18);
  }

  return v2;
}

- (void)monitorPluggedInState
{
  v3 = +[_CDContextQueries keyPathForPluginStatus];
  v4 = [_CDContextualPredicate predicateForChangeAtKeyPath:v3];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003B150;
  v6[3] = &unk_1001B58C8;
  v6[4] = self;
  v5 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.das.environmentpolicy.pluggedInState" contextualPredicate:v4 clientIdentifier:@"com.apple.dasd.contextstore-registration" callback:v6];

  [(_CDContext *)self->_context registerCallback:v5];
}

- (void)setupHighCarbonImpactWindow:(double)window
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B354;
  v4[3] = &unk_1001B6250;
  *&v4[5] = window;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

- (BOOL)isCarbonImpactHighForState:(id)state
{
  v4 = [_DASSystemContext isPluggedIn:state];
  if (v4)
  {
    if (!self->_carbonImpactWindowStartDate || ([(NSDate *)self->_carbonImpactWindowFetchTime timeIntervalSinceNow], v5 < -self->_forecastCacheSeconds))
    {
      pluggedInPredictionInterval = self->_pluggedInPredictionInterval;
      if (pluggedInPredictionInterval == -99999.0)
      {
        [(_DASGridDataManager *)self updatePredictedInterval];
        pluggedInPredictionInterval = self->_pluggedInPredictionInterval;
      }

      [(_DASGridDataManager *)self setupHighCarbonImpactWindow:pluggedInPredictionInterval];
    }

    [(NSDate *)self->_carbonImpactWindowStartDate timeIntervalSinceNow];
    LOBYTE(v4) = v7 < 0.0 && ([(NSDate *)self->_carbonImpactWindowEndDate timeIntervalSinceNow], v8 > 0.0);
  }

  return v4;
}

- (id)forecastForTimeInterval:(double)interval from:(id)from
{
  forecastMap = [from forecastMap];
  if ([forecastMap count])
  {
    v6 = +[NSMutableArray array];
    allKeys = [forecastMap allKeys];
    v8 = [allKeys mutableCopy];

    v9 = [[NSSortDescriptor alloc] initWithKey:@"self" ascending:1];
    v17 = v9;
    v10 = [NSArray arrayWithObjects:&v17 count:1];
    [v8 sortUsingDescriptors:v10];

    v11 = [v8 count];
    if (v11 >= (interval / 900.0))
    {
      v12 = (interval / 900.0);
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = [v8 objectAtIndexedSubscript:i];
        v15 = [forecastMap objectForKeyedSubscript:v14];

        [v6 addObject:v15];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)predictedPluggedInterval
{
  pluggedInPredictor = self->_pluggedInPredictor;
  v18 = 0;
  v4 = [(_OSChargingPredictor *)pluggedInPredictor chargePredictionOutputOfScheme:0 withError:&v18];
  v5 = v18;
  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = log;
      localizedDescription = [v5 localizedDescription];
      *buf = 138412290;
      v20 = *&localizedDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error querying the predictor through the client %@", buf, 0xCu);
    }
  }

  [v4 confidence];
  v10 = v9;
  [v4 chargingDuration];
  v12 = v11;
  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v20 = v12;
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "OSIntelligence predicts Interval:%lf, Confidence:%lf", buf, 0x16u);
  }

  v14 = v10 < 0.75;
  v15 = 0.0;
  if (v14)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  if (v16 >= 7200.0)
  {
    v15 = v16;
    if (v16 > 27000.0)
    {
      v15 = 27000.0;
    }
  }

  return v15;
}

- (id)carbonImpactWindowStartForForecast:(id)forecast withStartDate:(id)date windowSize:(double)size
{
  forecastCopy = forecast;
  dateCopy = date;
  if (![forecastCopy count])
  {
    v25 = 0;
    goto LABEL_26;
  }

  v10 = [forecastCopy mutableCopy];
  [v10 sortUsingComparator:&stru_1001B6270];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 doubleValue];
  v13 = v12;
  lastObject = [v10 lastObject];
  [lastObject doubleValue];
  v16 = vabdd_f64(v13, v15);

  if (v16 < 100.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = log;
      v19 = [v10 objectAtIndexedSubscript:0];
      [v19 doubleValue];
      v21 = v20;
      lastObject2 = [v10 lastObject];
      [lastObject2 doubleValue];
      *buf = 134218240;
      v48 = v21;
      v49 = 2048;
      v50 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not enough variation in forecast values (%lf - %lf). Bailing", buf, 0x16u);
    }

    v24 = +[NSDate distantPast];
LABEL_24:
    v25 = v24;
    goto LABEL_25;
  }

  v26 = fmax(floor(size / 900.0) + -1.0, 0.0);
  if ([forecastCopy count] >= v26)
  {
    selfCopy = self;
    v46 = dateCopy;
    v27 = 0;
    if (v26)
    {
      for (i = 0; i != v26; ++i)
      {
        v29 = [forecastCopy objectAtIndexedSubscript:{i, selfCopy}];
        v27 = &v27[[v29 unsignedIntegerValue]];
      }
    }

    if ([forecastCopy count] <= v26 || (v30 = objc_msgSend(forecastCopy, "count"), v30 == v26))
    {
      v31 = 0;
    }

    else
    {
      v32 = v30;
      v33 = 0;
      v31 = 0;
      v34 = 0;
      do
      {
        v35 = [forecastCopy objectAtIndexedSubscript:v26];
        v36 = &v27[[v35 unsignedIntegerValue]];

        if (v36 >= v33)
        {
          v31 = v34;
        }

        if (v36 > v33)
        {
          v33 = v36;
        }

        v37 = [forecastCopy objectAtIndexedSubscript:v34];
        v38 = v27 - [v37 unsignedIntegerValue];

        v39 = [forecastCopy objectAtIndexedSubscript:v26];
        v27 = [v39 unsignedIntegerValue] + v38;

        ++v34;
        ++v26;
      }

      while (v32 != v26);
    }

    v40 = *(v45 + 48);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
      v42 = [forecastCopy objectAtIndexedSubscript:v31];
      *buf = 134218242;
      v48 = v31;
      v49 = 2112;
      v50 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "HighCarbonImpact startIndex %lu, startValue %@", buf, 0x16u);
    }

    dateCopy = v46;
    v24 = [NSDate dateWithTimeInterval:v46 sinceDate:v31 * 900.0];
    goto LABEL_24;
  }

  v25 = 0;
LABEL_25:

LABEL_26:

  return v25;
}

- (void)resetState
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedInPredictionInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"carbonImpactStartDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"carbonImpactEndDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"carbonImpactFetchDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"forecastCacheInterval"];
  self->_pluggedInPredictionInterval = -99999.0;
  carbonImpactWindowStartDate = self->_carbonImpactWindowStartDate;
  self->_carbonImpactWindowStartDate = 0;

  carbonImpactWindowEndDate = self->_carbonImpactWindowEndDate;
  self->_carbonImpactWindowEndDate = 0;

  carbonImpactWindowFetchTime = self->_carbonImpactWindowFetchTime;
  self->_carbonImpactWindowFetchTime = 0;

  self->_forecastCacheSeconds = 14400.0;
}

- (void)loadState
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInPredictionInterval"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    v5 = -99999.0;
  }

  self->_pluggedInPredictionInterval = v5;
  v6 = [(NSUserDefaults *)self->_defaults objectForKey:@"carbonImpactStartDateInterval"];

  if (v6)
  {
    [v6 doubleValue];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    carbonImpactWindowStartDate = self->_carbonImpactWindowStartDate;
    self->_carbonImpactWindowStartDate = v7;
  }

  v9 = [(NSUserDefaults *)self->_defaults objectForKey:@"carbonImpactEndDateInterval"];

  if (v9)
  {
    [v9 doubleValue];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    carbonImpactWindowEndDate = self->_carbonImpactWindowEndDate;
    self->_carbonImpactWindowEndDate = v10;
  }

  v12 = [(NSUserDefaults *)self->_defaults objectForKey:@"carbonImpactFetchDateInterval"];

  if (v12)
  {
    [v12 doubleValue];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    carbonImpactWindowFetchTime = self->_carbonImpactWindowFetchTime;
    self->_carbonImpactWindowFetchTime = v13;
  }

  v15 = [(NSUserDefaults *)self->_defaults objectForKey:@"forecastCacheInterval"];

  if (v15)
  {
    [v15 doubleValue];
    self->_forecastCacheSeconds = fmax(v16, 14400.0);
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_carbonImpactWindowEndDate;
    pluggedInPredictionInterval = self->_pluggedInPredictionInterval;
    v20 = self->_carbonImpactWindowFetchTime;
    forecastCacheSeconds = self->_forecastCacheSeconds;
    v21 = self->_carbonImpactWindowStartDate;
    v23 = 134219010;
    v24 = pluggedInPredictionInterval;
    v25 = 2112;
    v26 = v21;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    v31 = 2048;
    v32 = forecastCacheSeconds;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loaded state: PluggedIn interval %lf, carbonImpactStart %@, carbonImpactEnd %@, FetchDate %@, Forecast Cache internal %f", &v23, 0x34u);
  }
}

- (void)updatePredictedInterval
{
  [(_DASGridDataManager *)self predictedPluggedInterval];
  self->_pluggedInPredictionInterval = v3;
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults setDouble:@"pluggedInPredictionInterval" forKey:?];
}

- (void)saveCarbonImpactWindowState
{
  [(NSDate *)self->_carbonImpactWindowStartDate timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)self->_defaults setDouble:@"carbonImpactStartDateInterval" forKey:?];
  [(NSDate *)self->_carbonImpactWindowEndDate timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)self->_defaults setDouble:@"carbonImpactEndDateInterval" forKey:?];
  [(NSDate *)self->_carbonImpactWindowFetchTime timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)self->_defaults setDouble:@"carbonImpactFetchDateInterval" forKey:?];
  forecastCacheSeconds = self->_forecastCacheSeconds;
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults setDouble:@"forecastCacheInterval" forKey:forecastCacheSeconds];
}

@end
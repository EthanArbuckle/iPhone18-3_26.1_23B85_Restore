@interface _OSIAutoLPMHandler
+ (id)sharedInstance;
- (BOOL)hasPreviouslyEngagedIntoLPM;
- (BOOL)recommendsAutoLPM;
- (_OSIAutoLPMHandler)init;
@end

@implementation _OSIAutoLPMHandler

- (_OSIAutoLPMHandler)init
{
  v13.receiver = self;
  v13.super_class = _OSIAutoLPMHandler;
  v2 = [(_OSIAutoLPMHandler *)&v13 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osintelligence.iblm"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = objc_alloc_init(OSILocationMonitor);
    locationMonitor = v2->_locationMonitor;
    v2->_locationMonitor = v5;

    v7 = os_log_create("com.apple.osintelligence", "autoLPMHandler");
    log = v2->_log;
    v2->_log = v7;

    v9 = [(NSUserDefaults *)v2->_defaults objectForKey:@"lastAutoLPMEvaluationDate"];
    lastEvaluateDate = v2->_lastEvaluateDate;
    v2->_lastEvaluateDate = v9;

    v11 = [(NSUserDefaults *)v2->_defaults objectForKey:@"inTypicalLocation"];
    v2->_inTypicalLocation = [v11 BOOLValue];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000B6948 != -1)
  {
    sub_10005A068();
  }

  v3 = qword_1000B6950;

  return v3;
}

- (BOOL)hasPreviouslyEngagedIntoLPM
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.lowpowermode.state"];
  v3 = [v2 valueForKey:@"wasUsedBefore"];
  v4 = v3;
  v5 = v3 && ([v3 BOOLValue] & 1) != 0;

  return v5;
}

- (BOOL)recommendsAutoLPM
{
  if ([(_OSIAutoLPMHandler *)self supportsAutoLPM])
  {
    v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"autoLPMDisengagedTime"];
    v4 = v3;
    if (v3)
    {
      [v3 timeIntervalSinceNow];
      if (v5 > -7200.0)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v7 = log;
          [v4 timeIntervalSinceNow];
          v23 = 134217984;
          v24 = v8 / -60.0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AutoLPM: Auto LPM was over-ridden in last %lf mins, Skipping Auto LPM", &v23, 0xCu);
        }

LABEL_19:
        v9 = 0;
        goto LABEL_20;
      }
    }

    lastEvaluateDate = self->_lastEvaluateDate;
    if ((lastEvaluateDate || ([(NSUserDefaults *)self->_defaults objectForKey:@"lastAutoLPMEvaluationDate"], v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_lastEvaluateDate, self->_lastEvaluateDate = v11, v12, (lastEvaluateDate = self->_lastEvaluateDate) != 0)) && ([(NSDate *)lastEvaluateDate timeIntervalSinceNow], v13 > -300.0))
    {
      v14 = self->_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        inTypicalLocation = self->_inTypicalLocation;
        v23 = 67109120;
        LODWORD(v24) = inTypicalLocation;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AutoLPM: In typical location: %d", &v23, 8u);
      }
    }

    else
    {
      if (![(_OSIAutoLPMHandler *)self hasPreviouslyEngagedIntoLPM])
      {
        v21 = self->_log;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not engaged in LPM previously. Skipping Auto LPM", &v23, 2u);
        }

        goto LABEL_19;
      }

      self->_inTypicalLocation = [(OSILocationMonitor *)self->_locationMonitor inTypicalChargingLocation];
      v16 = +[NSDate date];
      v17 = self->_lastEvaluateDate;
      self->_lastEvaluateDate = v16;

      [(NSUserDefaults *)self->_defaults setObject:self->_lastEvaluateDate forKey:@"lastAutoLPMEvaluationDate"];
      defaults = self->_defaults;
      v19 = [NSNumber numberWithBool:self->_inTypicalLocation];
      [(NSUserDefaults *)defaults setObject:v19 forKey:@"inTypicalLocation"];

      v14 = self->_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_inTypicalLocation;
        v23 = 67109120;
        LODWORD(v24) = v20;
        goto LABEL_15;
      }
    }

    v9 = !self->_inTypicalLocation;
LABEL_20:

    return v9;
  }

  return 0;
}

@end
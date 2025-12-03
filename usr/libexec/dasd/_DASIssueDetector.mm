@interface _DASIssueDetector
+ (id)sharedInstance;
- (BOOL)hasEnoughTotalPluggedInTimeOfDuration:(int64_t)duration withMinimumSessionDuration:(int64_t)sessionDuration inLastHours:(double)hours;
- (BOOL)libraryExceedsPhotoCount:(int64_t)count;
- (BOOL)shouldGenerateSpotlightProgressTTRForDevice;
- (BOOL)shouldGenerateSpotlightProgressTTRForSamples:(unint64_t)samples initialProcessingCount:(unint64_t)count finalProcessingCount:(unint64_t)processingCount;
- (_DASIssueDetector)init;
- (id)getSpotlightTimeSeries;
- (id)ttrURLWithTitle:(id)title withDescription:(id)description withStateDictionary:(id)dictionary componentID:(unint64_t)d componentName:(id)name componentVersion:(id)version;
- (void)checkProgressForMAD;
- (void)checkProgressForSpotlight;
- (void)computeSpotlightProgressParamsForTimeSeries:(id)series AndReturnNumSamples:(unint64_t *)samples initialProcessingCount:(unint64_t *)count finalProcessingCount:(unint64_t *)processingCount;
- (void)schedule;
@end

@implementation _DASIssueDetector

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8EF4;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B6D8 != -1)
  {
    dispatch_once(&qword_10020B6D8, block);
  }

  v2 = qword_10020B6D0;

  return v2;
}

- (_DASIssueDetector)init
{
  v12.receiver = self;
  v12.super_class = _DASIssueDetector;
  v2 = [(_DASIssueDetector *)&v12 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"issueDetector"];
    log = v2->_log;
    v2->_log = v3;

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.issueDetector"];
    defaults = v2->_defaults;
    v2->_defaults = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.duetactivityscheduler.issueDetector", v8);
    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

- (void)schedule
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 registerForTaskWithIdentifier:@"com.apple.dasd.issueDetector.daily" usingQueue:0 launchHandler:&stru_1001B7B90];
}

- (BOOL)hasEnoughTotalPluggedInTimeOfDuration:(int64_t)duration withMinimumSessionDuration:(int64_t)sessionDuration inLastHours:(double)hours
{
  v9 = +[_DASPPSDataManager sharedInstance];
  v10 = [NSDate dateWithTimeIntervalSinceNow:hours];
  v11 = [NSDateInterval alloc];
  v12 = +[NSDate now];
  v40 = v10;
  v13 = [v11 initWithStartDate:v10 endDate:v12];

  v37 = [NSSet setWithObject:@"IsPluggedIn"];
  v41 = v9;
  v39 = v13;
  v14 = [v9 getPPSTimeSeries:@"BackgroundProcessing" category:@"SystemConditionsBattery" valueFilter:0 metrics:0 timeFilter:? filepath:? error:?];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100127514(v14, log);
  }

  firstObject = [v14 firstObject];
  [firstObject epochTimestamp];
  v18 = v17;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v14;
  v19 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  durationCopy = duration;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v44;
    durationCopy2 = duration;
    v24 = 0.0;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v43 + 1) + 8 * i);
        metricKeysAndValues = [v26 metricKeysAndValues];
        v28 = [metricKeysAndValues objectForKeyedSubscript:@"IsPluggedIn"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v30 = [metricKeysAndValues objectForKeyedSubscript:@"IsPluggedIn"];
          bOOLValue = [v30 BOOLValue];

          if ((v21 & 1) != bOOLValue)
          {
            [v26 epochTimestamp];
            if (bOOLValue)
            {
              v21 = 1;
              v18 = v32;
            }

            else
            {
              v21 = 0;
              v33 = v32 - v18;
              if (v33 > sessionDuration)
              {
                v24 = v24 + v33;
              }
            }
          }

          if (v24 > durationCopy2)
          {

            goto LABEL_20;
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0.0;
  }

LABEL_20:

  v34 = self->_log;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v48 = v24;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "PluggedIn duration %f", buf, 0xCu);
  }

  if (v24 < durationCopy)
  {
    v35 = self->_log;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Not enough plugged in time", buf, 2u);
    }
  }

  return v24 >= durationCopy;
}

- (BOOL)libraryExceedsPhotoCount:(int64_t)count
{
  v4 = +[_DASPPSDataManager sharedInstance];
  v5 = [NSPredicate predicateWithFormat:@"WorkloadType == %@", &off_1001CA2E8];
  [v4 getPPSTimeSeries:@"BackgroundProcessing" category:@"WorkloadInformation" valueFilter:v5 metrics:0 timeFilter:0 filepath:0 error:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = v5;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        metricKeysAndValues = [*(*(&v19 + 1) + 8 * i) metricKeysAndValues];
        v12 = [metricKeysAndValues objectForKeyedSubscript:@"Size"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [metricKeysAndValues objectForKeyedSubscript:@"Size"];
          integerValue = [v14 integerValue];

          if (integerValue > count)
          {

            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_12:
    v5 = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)checkProgressForMAD
{
  if (![(_DASIssueDetector *)self libraryExceedsPhotoCount:1500])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012758C();
    }

    return;
  }

  if (![(_DASIssueDetector *)self hasEnoughTotalPluggedInTimeOfDuration:43200 withMinimumSessionDuration:3600 inLastHours:-172800.0])
  {
    return;
  }

  selfCopy = self;
  v78 = +[NSMutableDictionary dictionary];
  v74 = +[NSMutableDictionary dictionary];
  v77 = +[NSMutableDictionary dictionary];
  v82 = +[NSMutableDictionary dictionary];
  v3 = +[_DASPPSDataManager sharedInstance];
  v4 = [NSDate dateWithTimeIntervalSinceNow:-172800.0];
  v5 = [NSDateInterval alloc];
  v76 = v4;
  v6 = [v4 dateByAddingTimeInterval:-172800.0];
  v7 = +[NSDate date];
  v8 = [v5 initWithStartDate:v6 endDate:v7];

  v71 = v8;
  v72 = v3;
  [v3 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskWorkload" valueFilter:0 metrics:0 timeFilter:v8 filepath:0 error:0];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v99 = 0u;
  v9 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = *v97;
  do
  {
    v12 = 0;
    do
    {
      if (*v97 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v96 + 1) + 8 * v12);
      metricKeysAndValues = [v13 metricKeysAndValues];
      v15 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v17 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];
        if ([v17 containsString:@"mediaanalysis"])
        {
          v18 = [metricKeysAndValues objectForKeyedSubscript:@"SubCategory"];
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();

          if (v19)
          {
            v20 = [metricKeysAndValues objectForKeyedSubscript:@"SubCategory"];
            if ([v20 containsString:@"failed"])
            {
              v21 = [metricKeysAndValues objectForKeyedSubscript:@"CompletedPercentage"];
              [v82 setObject:v21 forKeyedSubscript:v17];
              goto LABEL_13;
            }

            if (!v20)
            {
              [v13 epochTimestamp];
              v21 = [NSDate dateWithTimeIntervalSince1970:?];
              v22 = [metricKeysAndValues objectForKeyedSubscript:@"CompletedPercentage"];
              objc_opt_class();
              v79 = objc_opt_isKindOfClass();

              if (v79)
              {
                v23 = [metricKeysAndValues objectForKeyedSubscript:@"CompletedPercentage"];
                [v21 timeIntervalSinceDate:v76];
                v24 = v77;
                if (v25 >= 0.0)
                {
                  v75 = [v78 objectForKeyedSubscript:v17];
                  +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v75 integerValue] + 1);
                  v26 = v80 = v23;
                  [v78 setObject:v26 forKeyedSubscript:v17];

                  v23 = v80;
                  v24 = v74;
                }

                [v24 setObject:v23 forKeyedSubscript:v17];
              }

LABEL_13:
            }
          }
        }
      }

      v12 = v12 + 1;
    }

    while (v10 != v12);
    v27 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
    v10 = v27;
  }

  while (v27);
LABEL_24:
  v28 = selfCopy;
  log = selfCopy->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v78;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "MAD Progress Count: %@", buf, 0xCu);
  }

  v30 = selfCopy->_log;
  v31 = v77;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v77;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Past MAD Progress: %@", buf, 0xCu);
  }

  v32 = selfCopy->_log;
  v33 = v74;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v74;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Current MAD Progress: %@", buf, 0xCu);
  }

  v34 = selfCopy->_log;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v82;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Current MAD Failed: %@", buf, 0xCu);
  }

  if (![v77 count] || !objc_msgSend(v78, "count"))
  {
    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100127628();
    }

    goto LABEL_78;
  }

  if (![v78 count])
  {
    v81 = &stru_1001BA3C0;
    goto LABEL_69;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  allKeys = [v74 allKeys];
  v36 = [allKeys countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (!v36)
  {
LABEL_43:

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    allKeys2 = [v77 allKeys];
    v46 = [allKeys2 countByEnumeratingWithState:&v88 objects:v103 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v89;
      v81 = &stru_1001BA3C0;
      while (2)
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v89 != v48)
          {
            objc_enumerationMutation(allKeys2);
          }

          v50 = *(*(&v88 + 1) + 8 * i);
          v51 = [v77 objectForKeyedSubscript:v50];
          integerValue = [v51 integerValue];

          if (integerValue <= 89)
          {
            v81 = [NSString stringWithFormat:@"No progress for %@", v50];
            v53 = 1;
            goto LABEL_59;
          }
        }

        v47 = [allKeys2 countByEnumeratingWithState:&v88 objects:v103 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }

      v53 = 0;
    }

    else
    {
      v53 = 0;
      v81 = &stru_1001BA3C0;
    }

LABEL_59:

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    allKeys3 = [v82 allKeys];
    v55 = [allKeys3 countByEnumeratingWithState:&v84 objects:v102 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v85;
      do
      {
        for (j = 0; j != v56; j = j + 1)
        {
          if (*v85 != v57)
          {
            objc_enumerationMutation(allKeys3);
          }

          v59 = *(*(&v84 + 1) + 8 * j);
          v60 = [v82 objectForKeyedSubscript:v59];
          integerValue2 = [v60 integerValue];

          if (integerValue2 >= 36)
          {
            v62 = [NSString stringWithFormat:@"Failed count high for %@", v59];

            v53 = 1;
            v81 = v62;
          }
        }

        v56 = [allKeys3 countByEnumeratingWithState:&v84 objects:v102 count:16];
      }

      while (v56);
    }

    v28 = selfCopy;
    v33 = v74;
    v31 = v77;
    if ((v53 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_69:
    v63 = [(NSUserDefaults *)v28->_defaults valueForKey:@"lastDateForMADProgressTTR"];
    allKeys = v63;
    if (v63 && ([v63 timeIntervalSinceNow], v64 >= -2592000.0))
    {
      if (os_log_type_enabled(v28->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_1001275C0();
      }
    }

    else
    {
      if (os_log_type_enabled(v28->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_1001275F4();
      }

      v100[0] = @"count";
      v100[1] = @"pastProgress";
      v101[0] = v78;
      v101[1] = v31;
      v100[2] = @"currentProgress";
      v100[3] = @"failedProgress";
      v101[2] = v33;
      v101[3] = v82;
      v100[4] = @"trigger";
      v101[4] = v81;
      v65 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:5];
      v66 = [(_DASIssueDetector *)v28 ttrURLWithTitle:@"Tap to file Radar. Slow progress detected for MediaAnalysis background job" withDescription:@"PLEASE ANSWER THESE QUESTIONS TO AID DEBUGGING:\n\n* Is this your regular carry device? \n\n*Were a large number of photos/videos taken in the last 48 hours?\n\n\n" withStateDictionary:v65 componentID:787030 componentName:@"Duet" componentVersion:@"Activity Scheduler"];
      v67 = +[_DASNotificationManager sharedManager];
      v68 = [NSDate dateWithTimeIntervalSinceNow:14400.0];
      [v67 postNotificationAtDate:0 withTitle:@"[Internal] Background Processing Issue" withTextContent:@"Tap to file Radar. Slow progress detected for MediaAnalysis background job" icon:@"TTR" url:v66 expirationDate:v68];

      defaults = v28->_defaults;
      v70 = +[NSDate date];
      [(NSUserDefaults *)defaults setValue:v70 forKey:@"lastDateForMADProgressTTR"];
    }

    goto LABEL_76;
  }

  v37 = v36;
  v38 = *v93;
  v81 = &stru_1001BA3C0;
LABEL_37:
  v39 = 0;
  while (1)
  {
    if (*v93 != v38)
    {
      objc_enumerationMutation(allKeys);
    }

    v40 = *(*(&v92 + 1) + 8 * v39);
    v41 = [v77 objectForKeyedSubscript:v40];
    integerValue3 = [v41 integerValue];

    v43 = [v74 objectForKeyedSubscript:v40];
    integerValue4 = [v43 integerValue];

    if (integerValue4 > integerValue3)
    {
      break;
    }

    if (v37 == ++v39)
    {
      v37 = [allKeys countByEnumeratingWithState:&v92 objects:v104 count:16];
      if (v37)
      {
        goto LABEL_37;
      }

      goto LABEL_43;
    }
  }

LABEL_76:

LABEL_77:
LABEL_78:
}

- (id)getSpotlightTimeSeries
{
  v2 = +[_DASPPSDataManager sharedInstance];
  v3 = [NSDate dateWithTimeIntervalSinceNow:-216000.0];
  v4 = +[NSDate now];
  v5 = [[NSDateInterval alloc] initWithStartDate:v3 endDate:v4];
  v6 = [v2 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskWorkload" valueFilter:0 metrics:0 timeFilter:v5 filepath:0 error:0];

  return v6;
}

- (void)computeSpotlightProgressParamsForTimeSeries:(id)series AndReturnNumSamples:(unint64_t *)samples initialProcessingCount:(unint64_t *)count finalProcessingCount:(unint64_t *)processingCount
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  seriesCopy = series;
  v7 = [seriesCopy countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v35 = 0;
    v37 = 0;
    v38 = 0;
    v40 = seriesCopy;
    v41 = *v43;
    v9 = @"TaskName";
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(seriesCopy);
        }

        metricKeysAndValues = [*(*(&v42 + 1) + 8 * i) metricKeysAndValues];
        v12 = [metricKeysAndValues objectForKeyedSubscript:@"WorkloadCategory"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [metricKeysAndValues objectForKeyedSubscript:@"WorkloadCategory"];
          if ([v14 unsignedIntValue] == 40)
          {
            v15 = [metricKeysAndValues objectForKeyedSubscript:v9];
            objc_opt_class();
            v16 = v9;
            v17 = objc_opt_isKindOfClass();

            if (v17)
            {
              v18 = [metricKeysAndValues objectForKeyedSubscript:v16];
              if ([v18 containsString:@"spotlightknowledged.task"])
              {
                v19 = [metricKeysAndValues objectForKeyedSubscript:@"SubCategory"];
                objc_opt_class();
                v20 = objc_opt_isKindOfClass();

                if (v20)
                {
                  v39 = [metricKeysAndValues objectForKeyedSubscript:@"SubCategory"];
                  if ([v39 containsString:@"Total"] && (objc_msgSend(metricKeysAndValues, "objectForKeyedSubscript:", @"Target"), v21 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v22 = objc_opt_isKindOfClass(), v21, (v22 & 1) != 0))
                  {
                    v23 = [metricKeysAndValues objectForKeyedSubscript:@"Target"];
                    if ([v23 unsignedLongValue] >> 5 < 0x465)
                    {

                      seriesCopy = v40;
                      goto LABEL_32;
                    }

                    v24 = [metricKeysAndValues objectForKeyedSubscript:@"CompletedPercentage"];
                    objc_opt_class();
                    v25 = objc_opt_isKindOfClass();

                    if (v25)
                    {
                      v36 = [metricKeysAndValues objectForKeyedSubscript:@"CompletedPercentage"];
                      v26 = v23;
                      unsignedLongValue = [v23 unsignedLongValue];
                      [v36 doubleValue];
                      v29 = [NSNumber numberWithDouble:v28 * unsignedLongValue / 100.0];
                      unsignedLongValue2 = [v29 unsignedLongValue];

                      v31 = v38;
                      v35 = unsignedLongValue2;
                      if (!v37)
                      {
                        v31 = unsignedLongValue2;
                      }

                      ++v37;
                      v38 = v31;

                      v9 = @"TaskName";
                    }

                    else
                    {
                      v9 = @"TaskName";
                      v26 = v23;
                    }

                    seriesCopy = v40;
                  }

                  else
                  {
                    seriesCopy = v40;
                    v9 = @"TaskName";
                  }
                }

                else
                {
                  seriesCopy = v40;
                  v9 = @"TaskName";
                }
              }

              else
              {
                v9 = v16;
              }
            }

            else
            {
              v9 = v16;
            }
          }
        }
      }

      v8 = [seriesCopy countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v38 = 0;
  }

  *samples = v37;
  *count = v38;
  *processingCount = v35;
LABEL_32:
}

- (BOOL)shouldGenerateSpotlightProgressTTRForDevice
{
  if ([(_DASIssueDetector *)self hasEnoughTotalPluggedInTimeOfDuration:21600 withMinimumSessionDuration:3600 inLastHours:-216000.0])
  {
    v3 = [(NSUserDefaults *)self->_defaults valueForKey:@"lastDateForSpotlightProgressTTR"];
    v4 = v3;
    if (v3 && ([v3 timeIntervalSinceNow], v5 > -259200.0))
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100127690();
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012765C();
    }

    return 0;
  }

  return v6;
}

- (BOOL)shouldGenerateSpotlightProgressTTRForSamples:(unint64_t)samples initialProcessingCount:(unint64_t)count finalProcessingCount:(unint64_t)processingCount
{
  if (samples > 1)
  {
    if (((processingCount - count) / (samples - 1)) >> 5 < 0x465)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    v5 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      sub_1001276C4();
      goto LABEL_7;
    }
  }

  else
  {
    v5 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      sub_1001276F8();
LABEL_7:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)checkProgressForSpotlight
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  if ([(_DASIssueDetector *)self shouldGenerateSpotlightProgressTTRForDevice])
  {
    getSpotlightTimeSeries = [(_DASIssueDetector *)self getSpotlightTimeSeries];
    [(_DASIssueDetector *)self computeSpotlightProgressParamsForTimeSeries:getSpotlightTimeSeries AndReturnNumSamples:&v12 initialProcessingCount:&v14 finalProcessingCount:&v13];
    if ([(_DASIssueDetector *)self shouldGenerateSpotlightProgressTTRForSamples:v12 initialProcessingCount:v14 finalProcessingCount:v13])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_1001275F4();
      }

      v15[0] = @"days";
      v4 = [NSNumber numberWithUnsignedInteger:v12];
      v16[0] = v4;
      v15[1] = @"assets processed per day";
      v5 = [NSNumber numberWithUnsignedInteger:(v13 - v14) / (v12 - 1)];
      v15[2] = @"trigger";
      v16[1] = v5;
      v16[2] = @"Not enough progress for com.apple.spotlightknowledged.task";
      v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

      v7 = [(_DASIssueDetector *)self ttrURLWithTitle:@"Tap to file Radar. Slow progress detected for spotlightknowledged text embedding generation" withDescription:@"PLEASE ANSWER THESE QUESTIONS TO AID DEBUGGING:\n\n Is this your regular carry device?\n\n" withStateDictionary:v6 componentID:185285 componentName:@"Spotlight" componentVersion:@"Backend"];
      v8 = +[_DASNotificationManager sharedManager];
      v9 = [NSDate dateWithTimeIntervalSinceNow:14400.0];
      [v8 postNotificationAtDate:0 withTitle:@"[Internal] Slow Text Embedding Generation Progress" withTextContent:@"Tap to file Radar. Slow progress detected for spotlightknowledged text embedding generation" icon:@"TTR" url:v7 expirationDate:v9];

      defaults = self->_defaults;
      v11 = +[NSDate date];
      [(NSUserDefaults *)defaults setValue:v11 forKey:@"lastDateForSpotlightProgressTTR"];
    }
  }
}

- (id)ttrURLWithTitle:(id)title withDescription:(id)description withStateDictionary:(id)dictionary componentID:(unint64_t)d componentName:(id)name componentVersion:(id)version
{
  versionCopy = version;
  nameCopy = name;
  titleCopy = title;
  dictionary = [NSString stringWithFormat:@"%@ Debug Info:\n %@", description, dictionary];
  v18 = [NSString stringWithFormat:@"tap-to-radar://new?Title=%@&Classification=Serious Bug&ComponentID=%lu&ComponentName=%@&ComponentVersion=%@&Reproducible=Sometimes&Description=%@", titleCopy, d, nameCopy, versionCopy, dictionary];

  v19 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v20 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v19];

  v21 = [NSURL URLWithString:v20];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "TTR URL is %@", buf, 0xCu);
  }

  return v21;
}

@end
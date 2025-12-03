@interface _DASPPSDataManager
+ (id)sharedInstance;
- (BOOL)sendDataToPPS:(id)s subsystem:(id)subsystem category:(id)category;
- (PPSTelemetryIdentifier)ppsIDForSubsystem:(id)subsystem category:(id)category;
- (_DASPPSDataManager)init;
- (id)getPPSData:(id)data filepath:(id)filepath error:(id *)error;
- (id)getPPSHistogram:(id)histogram category:(id)category valueFilter:(id)filter dimensions:(id)dimensions timeFilter:(id)timeFilter filepath:(id)filepath error:(id *)error;
- (id)getPPSTimeIntervalSet:(id)set category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter filepath:(id)filepath error:(id *)error;
- (id)getPPSTimeSeries:(id)series category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter filepath:(id)filepath error:(id *)error;
- (id)getPPSTimeSeries:(id)series category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount filepath:(id)self0 error:(id *)self1;
- (id)getPPSTimeSeries:(id)series category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount readDirection:(unint64_t)self0 filepath:(id)self1 error:(id *)self2;
- (id)getTaskDependencyGraphs:(id)graphs timeFilter:(id)filter filepath:(id)filepath;
- (id)loadBuddyData:(id)data timeFilter:(id)filter filepath:(id)filepath;
- (id)loadConfig:(id)config timeFilter:(id)filter filepath:(id)filepath;
- (id)loadCustomCheckpoints:(id)checkpoints metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)loadFeatureCheckpoints:(id)checkpoints metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)loadIntensiveTaskBlockingReasons:(id)reasons metrics:(id)metrics filepath:(id)filepath;
- (id)loadPluginPrediction:(id)prediction timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTaskBlockingReasons:(id)reasons metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTaskCheckpoints:(id)checkpoints metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTaskDependencies:(id)dependencies metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTaskDependencyGraph:(id)graph timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTaskProgress:(id)progress metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTaskRuntimeAllocation:(id)allocation timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTaskThroughput:(id)throughput metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)loadTasksForFeatures:(id)features metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath;
- (id)valueFilterPredicateForMetric:(id)metric withMetricValues:(id)values predicateModifier:(unint64_t)modifier;
- (void)lockForSubsystemAndCategory:(id)category category:(id)a4;
- (void)sendDataToPPS:(id)s ppsID:(PPSTelemetryIdentifier *)d;
- (void)unlockForSubsystemAndCategory:(id)category category:(id)a4;
@end

@implementation _DASPPSDataManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F848;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B198 != -1)
  {
    dispatch_once(&qword_10020B198, block);
  }

  v2 = qword_10020B190;

  return v2;
}

- (_DASPPSDataManager)init
{
  v14.receiver = self;
  v14.super_class = _DASPPSDataManager;
  v2 = [(_DASPPSDataManager *)&v14 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"ppsDataManager"];
    log = v2->_log;
    v2->_log = v3;

    v5 = +[NSMutableDictionary dictionary];
    ppsIDMapping = v2->_ppsIDMapping;
    v2->_ppsIDMapping = v5;

    v7 = +[NSMutableDictionary dictionary];
    ppsIDLocks = v2->_ppsIDLocks;
    v2->_ppsIDLocks = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("com.apple.das.ppsDataManager", v10);
    bgQueue = v2->_bgQueue;
    v2->_bgQueue = v11;
  }

  return v2;
}

- (void)lockForSubsystemAndCategory:(id)category category:(id)a4
{
  categoryCopy = category;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%@-%@", categoryCopy, v6];
  ppsIDLocks = [(_DASPPSDataManager *)self ppsIDLocks];
  objc_sync_enter(ppsIDLocks);
  ppsIDLocks2 = [(_DASPPSDataManager *)self ppsIDLocks];
  v10 = [ppsIDLocks2 objectForKeyedSubscript:v7];

  if (!v10)
  {
    v10 = objc_alloc_init(NSRecursiveLock);
    ppsIDLocks3 = [(_DASPPSDataManager *)self ppsIDLocks];
    [ppsIDLocks3 setObject:v10 forKeyedSubscript:v7];
  }

  objc_sync_exit(ppsIDLocks);

  [v10 lock];
}

- (void)unlockForSubsystemAndCategory:(id)category category:(id)a4
{
  categoryCopy = category;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%@-%@", categoryCopy, v7];
  ppsIDLocks = [(_DASPPSDataManager *)self ppsIDLocks];
  objc_sync_enter(ppsIDLocks);
  ppsIDLocks2 = [(_DASPPSDataManager *)self ppsIDLocks];
  v11 = [ppsIDLocks2 objectForKeyedSubscript:v8];

  objc_sync_exit(ppsIDLocks);
  if (v11)
  {
    [v11 unlock];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10011F3E4();
  }
}

- (PPSTelemetryIdentifier)ppsIDForSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  categoryCopy = [NSString stringWithFormat:@"%@-%@", subsystemCopy, categoryCopy];
  v19 = 0;
  ppsIDMapping = [(_DASPPSDataManager *)self ppsIDMapping];
  objc_sync_enter(ppsIDMapping);
  ppsIDMapping2 = [(_DASPPSDataManager *)self ppsIDMapping];
  v11 = [ppsIDMapping2 objectForKeyedSubscript:categoryCopy];
  v12 = [v11 copy];

  objc_sync_exit(ppsIDMapping);
  if (v12)
  {
    [v12 getValue:&v19 size:8];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = categoryCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Creating PPS ID for %@", buf, 0xCu);
    }

    v19 = PPSCreateTelemetryIdentifier();
    if (v19)
    {
      v14 = [NSValue value:&v19 withObjCType:"^{PPSTelemetryIdentifier=}"];
      ppsIDMapping3 = [(_DASPPSDataManager *)self ppsIDMapping];
      objc_sync_enter(ppsIDMapping3);
      ppsIDMapping4 = [(_DASPPSDataManager *)self ppsIDMapping];
      [ppsIDMapping4 setObject:v14 forKeyedSubscript:categoryCopy];

      objc_sync_exit(ppsIDMapping3);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011F458();
    }
  }

  v17 = v19;

  return v17;
}

- (id)valueFilterPredicateForMetric:(id)metric withMetricValues:(id)values predicateModifier:(unint64_t)modifier
{
  metricCopy = metric;
  valuesCopy = values;
  v9 = valuesCopy;
  if (metricCopy && [valuesCopy count])
  {
    v10 = @"%K IN %@";
    if (modifier == 1)
    {
      v10 = @"ALL %K IN %@";
    }

    if (modifier == 2)
    {
      v11 = @"ANY %K IN %@";
    }

    else
    {
      v11 = v10;
    }

    v12 = [NSPredicate predicateWithFormat:v11, metricCopy, v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getTaskDependencyGraphs:(id)graphs timeFilter:(id)filter filepath:(id)filepath
{
  obj = graphs;
  v6 = [_DASPPSDataManager loadTaskDependencies:"loadTaskDependencies:metrics:timeFilter:filepath:" metrics:? timeFilter:? filepath:?];
  v41 = +[NSMutableDictionary dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v6;
  array = [v6 array];
  v8 = [array countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(array);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        metricKeysAndValues = [v12 metricKeysAndValues];
        v14 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

        metricKeysAndValues2 = [v12 metricKeysAndValues];
        v16 = [metricKeysAndValues2 objectForKeyedSubscript:@"ProducedResultIdentifiers"];

        metricKeysAndValues3 = [v12 metricKeysAndValues];
        v18 = [metricKeysAndValues3 objectForKeyedSubscript:@"DependencyIdentifiers"];

        v19 = [[_DASTaskDependencies alloc] initWithProducedResultIdentifiers:v16 dependencyIdentifiers:v18];
        [v41 setObject:v19 forKeyedSubscript:v14];
      }

      v9 = [array countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v9);
  }

  v40 = +[NSMutableDictionary dictionary];
  v39 = +[NSMutableArray array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = obj;
  v20 = [obja countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(obja);
        }

        v24 = *(*(&v46 + 1) + 8 * j);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v25 = v39;
        v26 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v43;
LABEL_15:
          v29 = 0;
          while (1)
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v42 + 1) + 8 * v29);
            v31 = [0 nodeForTaskIdentifier:v24];

            if (v31)
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
              if (v27)
              {
                goto LABEL_15;
              }

              goto LABEL_21;
            }
          }

          v32 = v30;

          if (v32)
          {
            goto LABEL_24;
          }
        }

        else
        {
LABEL_21:
        }

        v33 = [_DASTaskDependencyGraph alloc];
        v34 = [(_DASTaskDependencyGraph *)v33 constructTaskDependencyGraphForTask:v24 dependencyDataMap:v41];

        [v25 addObject:v34];
        v32 = 0;
LABEL_24:
        [v40 setObject:v32 forKeyedSubscript:v24];
      }

      v21 = [obja countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v21);
  }

  return v40;
}

- (id)getPPSData:(id)data filepath:(id)filepath error:(id *)error
{
  dataCopy = data;
  filepathCopy = filepath;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  log = selfCopy->_log;
  v12 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (!filepathCopy)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting on-device PPS Data", buf, 2u);
    }

    subsystem = [dataCopy subsystem];
    category = [dataCopy category];
    [(_DASPPSDataManager *)selfCopy lockForSubsystemAndCategory:subsystem category:category];

    onDeviceDispatcher = [(_DASPPSDataManager *)selfCopy onDeviceDispatcher];

    if (!onDeviceDispatcher)
    {
      v21 = [objc_alloc(sub_10005043C()) initWithFilepath:0];
      [(_DASPPSDataManager *)selfCopy setOnDeviceDispatcher:v21];
    }

    onDeviceDispatcher2 = [(_DASPPSDataManager *)selfCopy onDeviceDispatcher];
    v26 = 0;
    v16 = [onDeviceDispatcher2 dataForRequest:dataCopy withError:&v26];
    v17 = v26;

    subsystem2 = [dataCopy subsystem];
    category2 = [dataCopy category];
    [(_DASPPSDataManager *)selfCopy unlockForSubsystemAndCategory:subsystem2 category:category2];
    goto LABEL_11;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting PPS Data from provided filepath", buf, 2u);
  }

  v28 = 0;
  v13 = [filepathCopy checkResourceIsReachableAndReturnError:&v28];
  category2 = v28;
  if (v13)
  {
    subsystem2 = [objc_alloc(sub_10005043C()) initWithFilepath:filepathCopy];
    v27 = category2;
    v16 = [subsystem2 dataForRequest:dataCopy withError:&v27];
    v17 = v27;
LABEL_11:

    category2 = v17;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  objc_sync_exit(selfCopy);

  if (category2)
  {
    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011F498();
      if (error)
      {
        goto LABEL_16;
      }
    }

    else if (error)
    {
LABEL_16:
      v23 = category2;
      v24 = 0;
      *error = category2;
      goto LABEL_20;
    }

    v24 = 0;
  }

  else
  {
    v24 = v16;
  }

LABEL_20:

  return v24;
}

- (id)getPPSTimeSeries:(id)series category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter filepath:(id)filepath error:(id *)error
{
  seriesCopy = series;
  categoryCopy = category;
  filterCopy = filter;
  metricsCopy = metrics;
  timeFilterCopy = timeFilter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138413314;
    v27 = seriesCopy;
    v28 = 2112;
    v29 = categoryCopy;
    v30 = 2112;
    v31 = filterCopy;
    v32 = 2112;
    v33 = metricsCopy;
    v34 = 2112;
    v35 = timeFilterCopy;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeSeries for subsystem: %@ category: %@ with valueFilter: %@ & metrics: %@ & timeFilter:%@", &v26, 0x34u);
  }

  v22 = sub_10000910C(seriesCopy, categoryCopy, filterCopy);
  v23 = [objc_alloc(sub_100009264()) initWithMetrics:metricsCopy predicate:v22 timeFilter:timeFilterCopy];
  v24 = [(_DASPPSDataManager *)self getPPSData:v23 filepath:filepathCopy error:error];

  return v24;
}

- (id)getPPSTimeSeries:(id)series category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount filepath:(id)self0 error:(id *)self1
{
  seriesCopy = series;
  categoryCopy = category;
  filterCopy = filter;
  metricsCopy = metrics;
  timeFilterCopy = timeFilter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v29 = seriesCopy;
    v30 = 2112;
    v31 = categoryCopy;
    v32 = 2112;
    v33 = filterCopy;
    v34 = 2112;
    v35 = metricsCopy;
    v36 = 2112;
    v37 = timeFilterCopy;
    v38 = 2048;
    countCopy = count;
    v40 = 2048;
    offsetCountCopy = offsetCount;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeSeries for subsystem: %@ category: %@ with valueFilter: %@ & metrics: %@ & timeFilter:%@ & limitCount:%lu & offsetCount:%lu", buf, 0x48u);
  }

  v23 = sub_10000910C(seriesCopy, categoryCopy, filterCopy);
  v24 = [objc_alloc(sub_100009264()) initWithMetrics:metricsCopy predicate:v23 timeFilter:timeFilterCopy limitCount:count offsetCount:offsetCount];
  v25 = [(_DASPPSDataManager *)self getPPSData:v24 filepath:filepathCopy error:error];

  return v25;
}

- (id)getPPSTimeSeries:(id)series category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount readDirection:(unint64_t)self0 filepath:(id)self1 error:(id *)self2
{
  seriesCopy = series;
  categoryCopy = category;
  filterCopy = filter;
  metricsCopy = metrics;
  timeFilterCopy = timeFilter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138414082;
    v30 = seriesCopy;
    v31 = 2112;
    v32 = categoryCopy;
    v33 = 2112;
    v34 = filterCopy;
    v35 = 2112;
    v36 = metricsCopy;
    v37 = 2112;
    v38 = timeFilterCopy;
    v39 = 2048;
    countCopy = count;
    v41 = 2048;
    offsetCountCopy = offsetCount;
    v43 = 2048;
    directionCopy = direction;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeSeries for subsystem: %@ category: %@ with valueFilter: %@ & metrics: %@ & timeFilter:%@ & limitCount:%lu & offsetCount:%lu & readDirection: %lu", buf, 0x52u);
  }

  v24 = sub_10000910C(seriesCopy, categoryCopy, filterCopy);
  v25 = [objc_alloc(sub_100009264()) initWithMetrics:metricsCopy predicate:v24 timeFilter:timeFilterCopy limitCount:count offsetCount:offsetCount readDirection:direction];
  v26 = [(_DASPPSDataManager *)self getPPSData:v25 filepath:filepathCopy error:error];

  return v26;
}

- (id)getPPSHistogram:(id)histogram category:(id)category valueFilter:(id)filter dimensions:(id)dimensions timeFilter:(id)timeFilter filepath:(id)filepath error:(id *)error
{
  histogramCopy = histogram;
  categoryCopy = category;
  filterCopy = filter;
  dimensionsCopy = dimensions;
  timeFilterCopy = timeFilter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    *&buf[4] = histogramCopy;
    *&buf[12] = 2112;
    *&buf[14] = categoryCopy;
    *&buf[22] = 2112;
    v34 = filterCopy;
    *v35 = 2112;
    *&v35[2] = dimensionsCopy;
    v36 = 2112;
    v37 = timeFilterCopy;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSHistogram for subsystem: %@ category: %@ with valueFilter: %@ dimensions: %@ timeFilter: %@", buf, 0x34u);
  }

  v22 = sub_10000910C(histogramCopy, categoryCopy, filterCopy);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v23 = qword_10020B1C0;
  v32 = qword_10020B1C0;
  if (!qword_10020B1C0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000531A8;
    v34 = &unk_1001B5798;
    *v35 = &v29;
    sub_1000531A8(buf);
    v23 = v30[3];
  }

  v24 = v23;
  _Block_object_dispose(&v29, 8);
  v25 = [v23 alloc];
  v26 = [v25 initWithDimensions:dimensionsCopy predicate:v22 timeFilter:{timeFilterCopy, v29}];
  v27 = [(_DASPPSDataManager *)self getPPSData:v26 filepath:filepathCopy error:error];

  return v27;
}

- (id)getPPSTimeIntervalSet:(id)set category:(id)category valueFilter:(id)filter metrics:(id)metrics timeFilter:(id)timeFilter filepath:(id)filepath error:(id *)error
{
  setCopy = set;
  categoryCopy = category;
  filterCopy = filter;
  metricsCopy = metrics;
  timeFilterCopy = timeFilter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    *&buf[4] = setCopy;
    *&buf[12] = 2112;
    *&buf[14] = categoryCopy;
    *&buf[22] = 2112;
    v34 = filterCopy;
    *v35 = 2112;
    *&v35[2] = metricsCopy;
    v36 = 2112;
    v37 = timeFilterCopy;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeIntervalSet for subsystem: %@ category: %@ with valueFilter: %@ metrics: %@ timeFilter: %@", buf, 0x34u);
  }

  v22 = sub_10000910C(setCopy, categoryCopy, filterCopy);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v23 = qword_10020B1C8;
  v32 = qword_10020B1C8;
  if (!qword_10020B1C8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100053200;
    v34 = &unk_1001B5798;
    *v35 = &v29;
    sub_100053200(buf);
    v23 = v30[3];
  }

  v24 = v23;
  _Block_object_dispose(&v29, 8);
  v25 = [v23 alloc];
  v26 = [v25 initWithMetrics:metricsCopy predicate:v22 timeFilter:{timeFilterCopy, v29}];
  v27 = [(_DASPPSDataManager *)self getPPSData:v26 filepath:filepathCopy error:error];

  return v27;
}

- (BOOL)sendDataToPPS:(id)s subsystem:(id)subsystem category:(id)category
{
  sCopy = s;
  subsystemCopy = subsystem;
  categoryCopy = category;
  objc_initWeak(&location, self);
  bgQueue = self->_bgQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051070;
  block[3] = &unk_1001B6620;
  objc_copyWeak(&v20, &location);
  v17 = subsystemCopy;
  v18 = categoryCopy;
  v19 = sCopy;
  v12 = sCopy;
  v13 = categoryCopy;
  v14 = subsystemCopy;
  dispatch_async(bgQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  return 1;
}

- (void)sendDataToPPS:(id)s ppsID:(PPSTelemetryIdentifier *)d
{
  sCopy = s;
  if (sCopy)
  {
    log = self->_log;
    if (d)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        sub_10011F50C(sCopy, log);
      }

      PPSSendTelemetry();
    }

    else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011F584();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10011F5C4();
  }
}

- (id)loadTaskCheckpoints:(id)checkpoints metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  checkpointsCopy = checkpoints;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = checkpointsCopy;
    *&buf[12] = 2112;
    *&buf[14] = metricsCopy;
    *&buf[22] = 2112;
    v86 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task checkpoints for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v59 = checkpointsCopy;
  v12 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"Name" withMetricValues:checkpointsCopy predicateModifier:0];
  if ([checkpointsCopy count])
  {
    v13 = v12;
  }

  else
  {
    v14 = [NSPredicate predicateWithFormat:@"IsCPUIntensive = 1 OR IsGPUIntensive = 1 OR IsMemoryIntensive = 1 OR IsANEIntensive = 1 OR IsDiskIntensive = 1 OR Name like '%fastpass%' OR Name like 'com.apple.cloudphotod.sync%' OR Name like 'com.apple.assetsd.backgroundjobservice.urgentresource' OR Name like 'com.apple.spotlightknowledged%'"];

    v13 = v14;
  }

  v57 = v13;
  v15 = [_DASPPSDataManager getPPSTimeSeries:"getPPSTimeSeries:category:valueFilter:metrics:timeFilter:filepath:error:" category:@"BackgroundProcessing" valueFilter:@"TaskMetadata" metrics:0 timeFilter:? filepath:? error:?];
  v16 = +[NSMutableDictionary dictionary];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v17)
  {
    v18 = *v75;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v74 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        metricKeysAndValues = [v20 metricKeysAndValues];
        v23 = [metricKeysAndValues objectForKeyedSubscript:@"TaskID"];

        metricKeysAndValues2 = [v20 metricKeysAndValues];
        v25 = [metricKeysAndValues2 objectForKeyedSubscript:@"Name"];
        [v16 setObject:v25 forKeyedSubscript:v23];

        objc_autoreleasePoolPop(v21);
      }

      v17 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v17);
  }

  if ([v16 count])
  {

    allKeys = [v16 allKeys];
    v27 = [NSSet setWithArray:allKeys];
    v56 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskID" withMetricValues:v27 predicateModifier:0];

    v28 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskInstanceStore" valueFilter:v56 metrics:0 timeFilter:filterCopy filepath:filepathCopy error:0];
    v29 = +[NSMutableDictionary dictionary];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obja = v28;
    v30 = [obja countByEnumeratingWithState:&v70 objects:v83 count:16];
    if (v30)
    {
      v31 = *v71;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v71 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v70 + 1) + 8 * j);
          metricKeysAndValues3 = [v33 metricKeysAndValues];
          v35 = [metricKeysAndValues3 objectForKeyedSubscript:@"TaskID"];

          metricKeysAndValues4 = [v33 metricKeysAndValues];
          v37 = [metricKeysAndValues4 objectForKeyedSubscript:@"TaskInstanceID"];

          v38 = [v16 objectForKeyedSubscript:v35];
          [v29 setObject:v38 forKeyedSubscript:v37];
        }

        v30 = [obja countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v30);
    }

    if ([v29 count])
    {

      allKeys2 = [v29 allKeys];
      v40 = [NSSet setWithArray:allKeys2];
      v55 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskInstanceID" withMetricValues:v40 predicateModifier:0];

      v41 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskCheckpoint" valueFilter:v55 metrics:0 timeFilter:filterCopy filepath:filepathCopy error:0];
      v62 = objc_alloc_init(sub_100051974());
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      objb = v41;
      v42 = [objb countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v42)
      {
        v43 = *v67;
        do
        {
          for (k = 0; k != v42; k = k + 1)
          {
            if (*v67 != v43)
            {
              objc_enumerationMutation(objb);
            }

            v45 = *(*(&v66 + 1) + 8 * k);
            v46 = objc_autoreleasePoolPush();
            metricKeysAndValues5 = [v45 metricKeysAndValues];
            v48 = [NSMutableDictionary dictionaryWithDictionary:metricKeysAndValues5];

            v49 = [v48 objectForKeyedSubscript:@"TaskInstanceID"];
            v50 = [v29 objectForKeyedSubscript:v49];
            [v48 setObject:v50 forKeyedSubscript:@"TaskName"];

            [v45 epochTimestamp];
            [v45 monotonicTimestamp];
            v78 = 0;
            v79 = &v78;
            v80 = 0x2050000000;
            v51 = qword_10020B1D8;
            v81 = qword_10020B1D8;
            if (!qword_10020B1D8)
            {
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_1000532B0;
              v86 = &unk_1001B5798;
              v87 = &v78;
              sub_1000532B0(buf);
              v51 = v79[3];
            }

            v52 = v51;
            _Block_object_dispose(&v78, 8);
            [v45 monotonicTimestamp];
            v53 = [v51 eventWithMonotonicTimestamp:v48 timeOffset:? dictionary:?];
            [v62 addEvent:v53];

            objc_autoreleasePoolPop(v46);
          }

          v42 = [objb countByEnumeratingWithState:&v66 objects:v82 count:16];
        }

        while (v42);
      }

      obja = 0;
      v16 = 0;
    }

    else
    {
      v62 = 0;
    }

    obj = 0;
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

- (id)loadCustomCheckpoints:(id)checkpoints metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  checkpointsCopy = checkpoints;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = checkpointsCopy;
    v20 = 2112;
    v21 = metricsCopy;
    v22 = 2112;
    v23 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting custom checkpoints for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:checkpointsCopy predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"CustomCheckpoint" valueFilter:v15 metrics:metricsCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v16;
}

- (id)loadTaskBlockingReasons:(id)reasons metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  reasonsCopy = reasons;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = reasonsCopy;
    v20 = 2112;
    v21 = metricsCopy;
    v22 = 2112;
    v23 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task blocking reasons for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:reasonsCopy predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskBlockingPolicies" valueFilter:v15 metrics:metricsCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v16;
}

- (id)loadIntensiveTaskBlockingReasons:(id)reasons metrics:(id)metrics filepath:(id)filepath
{
  reasonsCopy = reasons;
  metricsCopy = metrics;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = metricsCopy;
    v16 = 2112;
    v17 = reasonsCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting intensive task blocking reasons with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"IntensiveTasksBlockingPolicies" valueFilter:0 metrics:metricsCopy timeFilter:reasonsCopy filepath:filepathCopy error:0];

  return v12;
}

- (id)loadFeatureCheckpoints:(id)checkpoints metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  checkpointsCopy = checkpoints;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = checkpointsCopy;
    v20 = 2112;
    v21 = metricsCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting feature checkpoints for %@ with metrics: %@", buf, 0x16u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"FeatureCode" withMetricValues:checkpointsCopy predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"FeatureCheckpoint" valueFilter:v15 metrics:metricsCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v16;
}

- (id)loadConfig:(id)config timeFilter:(id)filter filepath:(id)filepath
{
  configCopy = config;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = configCopy;
    v16 = 2112;
    v17 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Config with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"Config" valueFilter:0 metrics:configCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v12;
}

- (id)loadTaskProgress:(id)progress metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  progressCopy = progress;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v37 = progressCopy;
    v38 = 2112;
    v39 = metricsCopy;
    v40 = 2112;
    v41 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task progress for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"Progress" valueFilter:0 metrics:metricsCopy timeFilter:filterCopy filepath:filepathCopy error:0];
  if ([progressCopy count])
  {
    v29 = filepathCopy;
    v30 = filterCopy;
    v16 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = progressCopy;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [NSPredicate predicateWithFormat:@"Identifier CONTAINS[cd] %@", *(*(&v31 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v19);
    }

    v23 = [NSCompoundPredicate orPredicateWithSubpredicates:v16];
    v24 = objc_alloc(sub_100051974());
    array = [v15 array];
    v26 = [array filteredArrayUsingPredicate:v23];
    v27 = [v24 initWithEvents:v26];

    filterCopy = v30;
    filepathCopy = v29;
  }

  else
  {
    v27 = v15;
  }

  return v27;
}

- (id)loadTaskThroughput:(id)throughput metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  throughputCopy = throughput;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = throughputCopy;
    v20 = 2112;
    v21 = metricsCopy;
    v22 = 2112;
    v23 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task progress for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:throughputCopy predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskThroughput" valueFilter:v15 metrics:metricsCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v16;
}

- (id)loadTasksForFeatures:(id)features metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  featuresCopy = features;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = featuresCopy;
    v20 = 2112;
    v21 = metricsCopy;
    v22 = 2112;
    v23 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting tasks for Feature Codes: %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"FeatureCodes" withMetricValues:featuresCopy predicateModifier:2];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskFeatureCodes" valueFilter:v15 metrics:metricsCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v16;
}

- (id)loadTaskDependencies:(id)dependencies metrics:(id)metrics timeFilter:(id)filter filepath:(id)filepath
{
  dependenciesCopy = dependencies;
  metricsCopy = metrics;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = dependenciesCopy;
    v20 = 2112;
    v21 = metricsCopy;
    v22 = 2112;
    v23 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting dependencies for tasks: %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:dependenciesCopy predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskDependencies" valueFilter:v15 metrics:metricsCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v16;
}

- (id)loadTaskDependencyGraph:(id)graph timeFilter:(id)filter filepath:(id)filepath
{
  graphCopy = graph;
  v36 = 0;
  v9 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskDependencies" valueFilter:0 metrics:0 timeFilter:filter filepath:filepath error:&v36];
  v10 = v36;
  v11 = 0;
  if (!v10)
  {
    v31 = +[NSMutableDictionary dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v9;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          metricKeysAndValues = [v16 metricKeysAndValues];
          v18 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

          if (v18)
          {
            metricKeysAndValues2 = [v16 metricKeysAndValues];
            v20 = [metricKeysAndValues2 objectForKeyedSubscript:@"ProducedResultIdentifiers"];

            metricKeysAndValues3 = [v16 metricKeysAndValues];
            v22 = [metricKeysAndValues3 objectForKeyedSubscript:@"DependencyIdentifiers"];

            v23 = [_DASTaskDependencies alloc];
            v24 = [NSSet setWithArray:v20];
            v25 = [NSSet setWithArray:v22];
            v26 = [(_DASTaskDependencies *)v23 initWithProducedResultIdentifiers:v24 dependencyIdentifiers:v25];
            [v31 setObject:v26 forKeyedSubscript:v18];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
    }

    v27 = [_DASTaskDependencyGraph alloc];
    v11 = [(_DASTaskDependencyGraph *)v27 constructTaskDependencyGraphForTask:graphCopy dependencyDataMap:v31];

    v10 = 0;
    v9 = v29;
  }

  return v11;
}

- (id)loadBuddyData:(id)data timeFilter:(id)filter filepath:(id)filepath
{
  dataCopy = data;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = dataCopy;
    v16 = 2112;
    v17 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Buddy Data with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"BuddyData" valueFilter:0 metrics:dataCopy timeFilter:filterCopy filepath:filepathCopy error:0];

  return v12;
}

- (id)loadPluginPrediction:(id)prediction timeFilter:(id)filter filepath:(id)filepath
{
  predictionCopy = prediction;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = predictionCopy;
    v19 = 2112;
    v20 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Plugin Prediction Data with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v16 = 0;
  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"PluginPrediction" valueFilter:0 metrics:0 timeFilter:filterCopy filepath:filepathCopy error:&v16];
  v13 = v12;
  v14 = 0;
  if (!v16)
  {
    v14 = v12;
  }

  return v14;
}

- (id)loadTaskRuntimeAllocation:(id)allocation timeFilter:(id)filter filepath:(id)filepath
{
  allocationCopy = allocation;
  filterCopy = filter;
  filepathCopy = filepath;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = allocationCopy;
    v19 = 2112;
    v20 = filterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Task Runtime Allocations with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v16 = 0;
  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskRuntimeAllocation" valueFilter:0 metrics:0 timeFilter:filterCopy filepath:filepathCopy error:&v16];
  v13 = v12;
  v14 = 0;
  if (!v16)
  {
    v14 = v12;
  }

  return v14;
}

@end
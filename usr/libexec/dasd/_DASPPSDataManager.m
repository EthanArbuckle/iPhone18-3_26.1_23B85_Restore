@interface _DASPPSDataManager
+ (id)sharedInstance;
- (BOOL)sendDataToPPS:(id)a3 subsystem:(id)a4 category:(id)a5;
- (PPSTelemetryIdentifier)ppsIDForSubsystem:(id)a3 category:(id)a4;
- (_DASPPSDataManager)init;
- (id)getPPSData:(id)a3 filepath:(id)a4 error:(id *)a5;
- (id)getPPSHistogram:(id)a3 category:(id)a4 valueFilter:(id)a5 dimensions:(id)a6 timeFilter:(id)a7 filepath:(id)a8 error:(id *)a9;
- (id)getPPSTimeIntervalSet:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 filepath:(id)a8 error:(id *)a9;
- (id)getPPSTimeSeries:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 filepath:(id)a8 error:(id *)a9;
- (id)getPPSTimeSeries:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 limitCount:(unint64_t)a8 offsetCount:(unint64_t)a9 filepath:(id)a10 error:(id *)a11;
- (id)getPPSTimeSeries:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 limitCount:(unint64_t)a8 offsetCount:(unint64_t)a9 readDirection:(unint64_t)a10 filepath:(id)a11 error:(id *)a12;
- (id)getTaskDependencyGraphs:(id)a3 timeFilter:(id)a4 filepath:(id)a5;
- (id)loadBuddyData:(id)a3 timeFilter:(id)a4 filepath:(id)a5;
- (id)loadConfig:(id)a3 timeFilter:(id)a4 filepath:(id)a5;
- (id)loadCustomCheckpoints:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)loadFeatureCheckpoints:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)loadIntensiveTaskBlockingReasons:(id)a3 metrics:(id)a4 filepath:(id)a5;
- (id)loadPluginPrediction:(id)a3 timeFilter:(id)a4 filepath:(id)a5;
- (id)loadTaskBlockingReasons:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)loadTaskCheckpoints:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)loadTaskDependencies:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)loadTaskDependencyGraph:(id)a3 timeFilter:(id)a4 filepath:(id)a5;
- (id)loadTaskProgress:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)loadTaskRuntimeAllocation:(id)a3 timeFilter:(id)a4 filepath:(id)a5;
- (id)loadTaskThroughput:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)loadTasksForFeatures:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6;
- (id)valueFilterPredicateForMetric:(id)a3 withMetricValues:(id)a4 predicateModifier:(unint64_t)a5;
- (void)lockForSubsystemAndCategory:(id)a3 category:(id)a4;
- (void)sendDataToPPS:(id)a3 ppsID:(PPSTelemetryIdentifier *)a4;
- (void)unlockForSubsystemAndCategory:(id)a3 category:(id)a4;
@end

@implementation _DASPPSDataManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F848;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
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

- (void)lockForSubsystemAndCategory:(id)a3 category:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%@-%@", v12, v6];
  v8 = [(_DASPPSDataManager *)self ppsIDLocks];
  objc_sync_enter(v8);
  v9 = [(_DASPPSDataManager *)self ppsIDLocks];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (!v10)
  {
    v10 = objc_alloc_init(NSRecursiveLock);
    v11 = [(_DASPPSDataManager *)self ppsIDLocks];
    [v11 setObject:v10 forKeyedSubscript:v7];
  }

  objc_sync_exit(v8);

  [v10 lock];
}

- (void)unlockForSubsystemAndCategory:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  v9 = [(_DASPPSDataManager *)self ppsIDLocks];
  objc_sync_enter(v9);
  v10 = [(_DASPPSDataManager *)self ppsIDLocks];
  v11 = [v10 objectForKeyedSubscript:v8];

  objc_sync_exit(v9);
  if (v11)
  {
    [v11 unlock];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10011F3E4();
  }
}

- (PPSTelemetryIdentifier)ppsIDForSubsystem:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  v19 = 0;
  v9 = [(_DASPPSDataManager *)self ppsIDMapping];
  objc_sync_enter(v9);
  v10 = [(_DASPPSDataManager *)self ppsIDMapping];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = [v11 copy];

  objc_sync_exit(v9);
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
      v21 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Creating PPS ID for %@", buf, 0xCu);
    }

    v19 = PPSCreateTelemetryIdentifier();
    if (v19)
    {
      v14 = [NSValue value:&v19 withObjCType:"^{PPSTelemetryIdentifier=}"];
      v15 = [(_DASPPSDataManager *)self ppsIDMapping];
      objc_sync_enter(v15);
      v16 = [(_DASPPSDataManager *)self ppsIDMapping];
      [v16 setObject:v14 forKeyedSubscript:v8];

      objc_sync_exit(v15);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011F458();
    }
  }

  v17 = v19;

  return v17;
}

- (id)valueFilterPredicateForMetric:(id)a3 withMetricValues:(id)a4 predicateModifier:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && [v8 count])
  {
    v10 = @"%K IN %@";
    if (a5 == 1)
    {
      v10 = @"ALL %K IN %@";
    }

    if (a5 == 2)
    {
      v11 = @"ANY %K IN %@";
    }

    else
    {
      v11 = v10;
    }

    v12 = [NSPredicate predicateWithFormat:v11, v7, v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getTaskDependencyGraphs:(id)a3 timeFilter:(id)a4 filepath:(id)a5
{
  obj = a3;
  v6 = [_DASPPSDataManager loadTaskDependencies:"loadTaskDependencies:metrics:timeFilter:filepath:" metrics:? timeFilter:? filepath:?];
  v41 = +[NSMutableDictionary dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v6;
  v7 = [v6 array];
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v56 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        v13 = [v12 metricKeysAndValues];
        v14 = [v13 objectForKeyedSubscript:@"TaskName"];

        v15 = [v12 metricKeysAndValues];
        v16 = [v15 objectForKeyedSubscript:@"ProducedResultIdentifiers"];

        v17 = [v12 metricKeysAndValues];
        v18 = [v17 objectForKeyedSubscript:@"DependencyIdentifiers"];

        v19 = [[_DASTaskDependencies alloc] initWithProducedResultIdentifiers:v16 dependencyIdentifiers:v18];
        [v41 setObject:v19 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v50 objects:v56 count:16];
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

- (id)getPPSData:(id)a3 filepath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  log = v10->_log;
  v12 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting on-device PPS Data", buf, 2u);
    }

    v18 = [v8 subsystem];
    v19 = [v8 category];
    [(_DASPPSDataManager *)v10 lockForSubsystemAndCategory:v18 category:v19];

    v20 = [(_DASPPSDataManager *)v10 onDeviceDispatcher];

    if (!v20)
    {
      v21 = [objc_alloc(sub_10005043C()) initWithFilepath:0];
      [(_DASPPSDataManager *)v10 setOnDeviceDispatcher:v21];
    }

    v22 = [(_DASPPSDataManager *)v10 onDeviceDispatcher];
    v26 = 0;
    v16 = [v22 dataForRequest:v8 withError:&v26];
    v17 = v26;

    v15 = [v8 subsystem];
    v14 = [v8 category];
    [(_DASPPSDataManager *)v10 unlockForSubsystemAndCategory:v15 category:v14];
    goto LABEL_11;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting PPS Data from provided filepath", buf, 2u);
  }

  v28 = 0;
  v13 = [v9 checkResourceIsReachableAndReturnError:&v28];
  v14 = v28;
  if (v13)
  {
    v15 = [objc_alloc(sub_10005043C()) initWithFilepath:v9];
    v27 = v14;
    v16 = [v15 dataForRequest:v8 withError:&v27];
    v17 = v27;
LABEL_11:

    v14 = v17;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  objc_sync_exit(v10);

  if (v14)
  {
    if (os_log_type_enabled(v10->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011F498();
      if (a5)
      {
        goto LABEL_16;
      }
    }

    else if (a5)
    {
LABEL_16:
      v23 = v14;
      v24 = 0;
      *a5 = v14;
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

- (id)getPPSTimeSeries:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 filepath:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138413314;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeSeries for subsystem: %@ category: %@ with valueFilter: %@ & metrics: %@ & timeFilter:%@", &v26, 0x34u);
  }

  v22 = sub_10000910C(v15, v16, v17);
  v23 = [objc_alloc(sub_100009264()) initWithMetrics:v18 predicate:v22 timeFilter:v19];
  v24 = [(_DASPPSDataManager *)self getPPSData:v23 filepath:v20 error:a9];

  return v24;
}

- (id)getPPSTimeSeries:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 limitCount:(unint64_t)a8 offsetCount:(unint64_t)a9 filepath:(id)a10 error:(id *)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    v36 = 2112;
    v37 = v20;
    v38 = 2048;
    v39 = a8;
    v40 = 2048;
    v41 = a9;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeSeries for subsystem: %@ category: %@ with valueFilter: %@ & metrics: %@ & timeFilter:%@ & limitCount:%lu & offsetCount:%lu", buf, 0x48u);
  }

  v23 = sub_10000910C(v16, v17, v18);
  v24 = [objc_alloc(sub_100009264()) initWithMetrics:v19 predicate:v23 timeFilter:v20 limitCount:a8 offsetCount:a9];
  v25 = [(_DASPPSDataManager *)self getPPSData:v24 filepath:v21 error:a11];

  return v25;
}

- (id)getPPSTimeSeries:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 limitCount:(unint64_t)a8 offsetCount:(unint64_t)a9 readDirection:(unint64_t)a10 filepath:(id)a11 error:(id *)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a11;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138414082;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2048;
    v40 = a8;
    v41 = 2048;
    v42 = a9;
    v43 = 2048;
    v44 = a10;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeSeries for subsystem: %@ category: %@ with valueFilter: %@ & metrics: %@ & timeFilter:%@ & limitCount:%lu & offsetCount:%lu & readDirection: %lu", buf, 0x52u);
  }

  v24 = sub_10000910C(v17, v18, v19);
  v25 = [objc_alloc(sub_100009264()) initWithMetrics:v20 predicate:v24 timeFilter:v21 limitCount:a8 offsetCount:a9 readDirection:a10];
  v26 = [(_DASPPSDataManager *)self getPPSData:v25 filepath:v22 error:a12];

  return v26;
}

- (id)getPPSHistogram:(id)a3 category:(id)a4 valueFilter:(id)a5 dimensions:(id)a6 timeFilter:(id)a7 filepath:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v34 = v17;
    *v35 = 2112;
    *&v35[2] = v18;
    v36 = 2112;
    v37 = v19;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSHistogram for subsystem: %@ category: %@ with valueFilter: %@ dimensions: %@ timeFilter: %@", buf, 0x34u);
  }

  v22 = sub_10000910C(v15, v16, v17);
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
  v26 = [v25 initWithDimensions:v18 predicate:v22 timeFilter:{v19, v29}];
  v27 = [(_DASPPSDataManager *)self getPPSData:v26 filepath:v20 error:a9];

  return v27;
}

- (id)getPPSTimeIntervalSet:(id)a3 category:(id)a4 valueFilter:(id)a5 metrics:(id)a6 timeFilter:(id)a7 filepath:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v34 = v17;
    *v35 = 2112;
    *&v35[2] = v18;
    v36 = 2112;
    v37 = v19;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Getting PPSTimeIntervalSet for subsystem: %@ category: %@ with valueFilter: %@ metrics: %@ timeFilter: %@", buf, 0x34u);
  }

  v22 = sub_10000910C(v15, v16, v17);
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
  v26 = [v25 initWithMetrics:v18 predicate:v22 timeFilter:{v19, v29}];
  v27 = [(_DASPPSDataManager *)self getPPSData:v26 filepath:v20 error:a9];

  return v27;
}

- (BOOL)sendDataToPPS:(id)a3 subsystem:(id)a4 category:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  bgQueue = self->_bgQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051070;
  block[3] = &unk_1001B6620;
  objc_copyWeak(&v20, &location);
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(bgQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  return 1;
}

- (void)sendDataToPPS:(id)a3 ppsID:(PPSTelemetryIdentifier *)a4
{
  v6 = a3;
  if (v6)
  {
    log = self->_log;
    if (a4)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        sub_10011F50C(v6, log);
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

- (id)loadTaskCheckpoints:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v58 = a4;
  v60 = a5;
  v61 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v58;
    *&buf[22] = 2112;
    v86 = v60;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task checkpoints for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v59 = v10;
  v12 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"Name" withMetricValues:v10 predicateModifier:0];
  if ([v10 count])
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
        v22 = [v20 metricKeysAndValues];
        v23 = [v22 objectForKeyedSubscript:@"TaskID"];

        v24 = [v20 metricKeysAndValues];
        v25 = [v24 objectForKeyedSubscript:@"Name"];
        [v16 setObject:v25 forKeyedSubscript:v23];

        objc_autoreleasePoolPop(v21);
      }

      v17 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v17);
  }

  if ([v16 count])
  {

    v26 = [v16 allKeys];
    v27 = [NSSet setWithArray:v26];
    v56 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskID" withMetricValues:v27 predicateModifier:0];

    v28 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskInstanceStore" valueFilter:v56 metrics:0 timeFilter:v60 filepath:v61 error:0];
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
          v34 = [v33 metricKeysAndValues];
          v35 = [v34 objectForKeyedSubscript:@"TaskID"];

          v36 = [v33 metricKeysAndValues];
          v37 = [v36 objectForKeyedSubscript:@"TaskInstanceID"];

          v38 = [v16 objectForKeyedSubscript:v35];
          [v29 setObject:v38 forKeyedSubscript:v37];
        }

        v30 = [obja countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v30);
    }

    if ([v29 count])
    {

      v39 = [v29 allKeys];
      v40 = [NSSet setWithArray:v39];
      v55 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskInstanceID" withMetricValues:v40 predicateModifier:0];

      v41 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskCheckpoint" valueFilter:v55 metrics:0 timeFilter:v60 filepath:v61 error:0];
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
            v47 = [v45 metricKeysAndValues];
            v48 = [NSMutableDictionary dictionaryWithDictionary:v47];

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

- (id)loadCustomCheckpoints:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting custom checkpoints for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:v10 predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"CustomCheckpoint" valueFilter:v15 metrics:v11 timeFilter:v12 filepath:v13 error:0];

  return v16;
}

- (id)loadTaskBlockingReasons:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task blocking reasons for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:v10 predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskBlockingPolicies" valueFilter:v15 metrics:v11 timeFilter:v12 filepath:v13 error:0];

  return v16;
}

- (id)loadIntensiveTaskBlockingReasons:(id)a3 metrics:(id)a4 filepath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting intensive task blocking reasons with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"IntensiveTasksBlockingPolicies" valueFilter:0 metrics:v9 timeFilter:v8 filepath:v10 error:0];

  return v12;
}

- (id)loadFeatureCheckpoints:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting feature checkpoints for %@ with metrics: %@", buf, 0x16u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"FeatureCode" withMetricValues:v10 predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"FeatureCheckpoint" valueFilter:v15 metrics:v11 timeFilter:v12 filepath:v13 error:0];

  return v16;
}

- (id)loadConfig:(id)a3 timeFilter:(id)a4 filepath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Config with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"Config" valueFilter:0 metrics:v8 timeFilter:v9 filepath:v10 error:0];

  return v12;
}

- (id)loadTaskProgress:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task progress for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"Progress" valueFilter:0 metrics:v11 timeFilter:v12 filepath:v13 error:0];
  if ([v10 count])
  {
    v29 = v13;
    v30 = v12;
    v16 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v10;
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
    v25 = [v15 array];
    v26 = [v25 filteredArrayUsingPredicate:v23];
    v27 = [v24 initWithEvents:v26];

    v12 = v30;
    v13 = v29;
  }

  else
  {
    v27 = v15;
  }

  return v27;
}

- (id)loadTaskThroughput:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting task progress for %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:v10 predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskThroughput" valueFilter:v15 metrics:v11 timeFilter:v12 filepath:v13 error:0];

  return v16;
}

- (id)loadTasksForFeatures:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting tasks for Feature Codes: %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"FeatureCodes" withMetricValues:v10 predicateModifier:2];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskFeatureCodes" valueFilter:v15 metrics:v11 timeFilter:v12 filepath:v13 error:0];

  return v16;
}

- (id)loadTaskDependencies:(id)a3 metrics:(id)a4 timeFilter:(id)a5 filepath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting dependencies for tasks: %@ with metrics: %@ & timeFilter: %@", buf, 0x20u);
  }

  v15 = [(_DASPPSDataManager *)self valueFilterPredicateForMetric:@"TaskName" withMetricValues:v10 predicateModifier:0];
  v16 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskDependencies" valueFilter:v15 metrics:v11 timeFilter:v12 filepath:v13 error:0];

  return v16;
}

- (id)loadTaskDependencyGraph:(id)a3 timeFilter:(id)a4 filepath:(id)a5
{
  v8 = a3;
  v36 = 0;
  v9 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskDependencies" valueFilter:0 metrics:0 timeFilter:a4 filepath:a5 error:&v36];
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
          v17 = [v16 metricKeysAndValues];
          v18 = [v17 objectForKeyedSubscript:@"TaskName"];

          if (v18)
          {
            v19 = [v16 metricKeysAndValues];
            v20 = [v19 objectForKeyedSubscript:@"ProducedResultIdentifiers"];

            v21 = [v16 metricKeysAndValues];
            v22 = [v21 objectForKeyedSubscript:@"DependencyIdentifiers"];

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
    v11 = [(_DASTaskDependencyGraph *)v27 constructTaskDependencyGraphForTask:v8 dependencyDataMap:v31];

    v10 = 0;
    v9 = v29;
  }

  return v11;
}

- (id)loadBuddyData:(id)a3 timeFilter:(id)a4 filepath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Buddy Data with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"BuddyData" valueFilter:0 metrics:v8 timeFilter:v9 filepath:v10 error:0];

  return v12;
}

- (id)loadPluginPrediction:(id)a3 timeFilter:(id)a4 filepath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Plugin Prediction Data with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v16 = 0;
  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"PluginPrediction" valueFilter:0 metrics:0 timeFilter:v9 filepath:v10 error:&v16];
  v13 = v12;
  v14 = 0;
  if (!v16)
  {
    v14 = v12;
  }

  return v14;
}

- (id)loadTaskRuntimeAllocation:(id)a3 timeFilter:(id)a4 filepath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting Task Runtime Allocations with metrics: %@ & timeFilter: %@", buf, 0x16u);
  }

  v16 = 0;
  v12 = [(_DASPPSDataManager *)self getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskRuntimeAllocation" valueFilter:0 metrics:0 timeFilter:v9 filepath:v10 error:&v16];
  v13 = v12;
  v14 = 0;
  if (!v16)
  {
    v14 = v12;
  }

  return v14;
}

@end
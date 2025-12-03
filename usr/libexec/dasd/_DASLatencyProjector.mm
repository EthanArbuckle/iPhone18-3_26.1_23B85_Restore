@interface _DASLatencyProjector
+ (_DASLatencyProjector)sharedInstance;
- ($B199670FBE0645B9BFB90758A78A0F55)initializeCheckpointCounters;
- (BOOL)isDASTaskCheckpoint:(id)checkpoint;
- (BOOL)isDASTaskCheckpoint:(id)checkpoint checkpointState:(unint64_t)state;
- (BOOL)isTerminalEvent:(id)event;
- (_DASLatencyProjector)init;
- (double)computeEligibleSchedulingDelay:(id)delay eligibilityTimeline:(id)timeline;
- (id)computeActivityBlockingReasons:(id)reasons;
- (id)computeActivityTimelines:(id)timelines installationEvents:(id)events;
- (id)computeBlockedDurations:(id)durations;
- (id)computeConditionsPenalties:(id)penalties;
- (id)computeConditionsPenalty:(id)penalty;
- (id)computeContentionPenalties:(id)penalties;
- (id)computeContentionPenalty:(id)penalty;
- (id)computeDeviceConditionsStatus:(id)status gatherMetrics:(id)metrics;
- (id)computeDeviceConditionsStatus:(id)status metric:(id)metric;
- (id)computeElapsedRunTimeFromPairings:(id)pairings endDate:(id)date;
- (id)computeElapsedRunTimeTotals:(id)totals;
- (id)computeElapsedRunTimes:(id)times timeFilter:(id)filter filepath:(id)filepath;
- (id)computeElapsedRunTimesFromCheckpoints:(id)checkpoints endDate:(id)date;
- (id)computeEstimatedMADCompletionTime:(id)time checkpointTimeSeries:(id)series progressTimeSeries:(id)timeSeries blockingReasonsTimeSeries:(id)reasonsTimeSeries activity:(id)activity osUpgradeTimestamp:(id)timestamp endDate:(id)date;
- (id)computeEstimatedMADCompletionTimes:(id)times endDate:(id)date filepath:(id)filepath;
- (id)computeEstimatedRunTime:(id)time elapsedRunTimes:(id)times progressEvents:(id)events activity:(id)activity endDate:(id)date;
- (id)computeEstimatedRunTimes:(id)times timeFilter:(id)filter filepath:(id)filepath;
- (id)computeFeatureDependencyGraphs:(id)graphs timeFilter:(id)filter filepath:(id)filepath;
- (id)computeFeatureTimeline:(id)timeline installationEvents:(id)events;
- (id)computeIntensiveEligibleSessions:(id)sessions;
- (id)computeOnBatteryRunTimes:(id)times plugInCheckpoints:(id)checkpoints;
- (id)computeProgressTimelines:(id)timelines;
- (id)computeThroughputTimelines:(id)timelines;
- (id)constructGroupSizes:(id)sizes;
- (id)convertCountersToNSDictionary:(id *)dictionary;
- (id)exactCheckpointState:(unint64_t)state;
- (id)findActivitiesByName:(id)name;
- (id)getActivityTimelines:(id)timelines timeFilter:(id)filter filepath:(id)filepath;
- (id)getBuddyData:(id)data filepath:(id)filepath;
- (id)getDeviceConditionTimelines:(id)timelines filepath:(id)filepath;
- (id)getEligibilityTimelinesForTasks:(id)tasks timeFilter:(id)filter filepath:(id)filepath;
- (id)getEligibleRuntimeForTask:(id)task deviceConditionTimelines:(id)timelines;
- (id)getFeatureTimelines:(id)timelines timeFilter:(id)filter filepath:(id)filepath;
- (id)getInstallTimeline:(id)timeline filepath:(id)filepath;
- (id)getLastOSUpgradeTimestamp:(id)timestamp endDate:(id)date eraseInstallOnly:(BOOL)only;
- (id)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)metrics filepath:(id)filepath;
- (id)getRecentUniqueInstallationEvents:(id)events timeFilter:(id)filter;
- (id)getRecentUniqueProgressEvents:(id)events;
- (id)getSchedulerEfficiencyMetrics:(id)metrics filepath:(id)filepath;
- (id)getTaskCheckpointPairings:(id)pairings;
- (id)getTasksForFeatures:(id)features timeFilter:(id)filter filepath:(id)filepath;
- (id)stringifyDASTaskCheckpoint:(unint64_t)checkpoint;
- (int64_t)checkCapacityForActivity:(id)activity groupSizes:(id)sizes;
- (unint64_t)computeOverallProgressPercentage:(id)percentage;
- (unint64_t)getBlockingCriteriaBitmask:(id)bitmask;
- (void)decrementCounterForCheckpoint:(unint64_t)checkpoint counters:(id *)counters;
- (void)flushPPSCaches;
- (void)incrementCounterForCheckpoint:(unint64_t)checkpoint counters:(id *)counters;
- (void)initializeDASTaskCheckpointNamesDict;
@end

@implementation _DASLatencyProjector

- (void)flushPPSCaches
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastPPSFlush = [(_DASLatencyProjector *)selfCopy lastPPSFlush];
  [lastPPSFlush timeIntervalSinceNow];
  v5 = v4;

  if (v5 < -3.0)
  {
    log = selfCopy->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012CF20(log);
    }

    dispatch_async(selfCopy->_flushQueue, &stru_1001B8CB8);
    v7 = +[NSDate date];
    [(_DASLatencyProjector *)selfCopy setLastPPSFlush:v7];
  }

  objc_sync_exit(selfCopy);
}

- (_DASLatencyProjector)init
{
  v12.receiver = self;
  v12.super_class = _DASLatencyProjector;
  v2 = [(_DASLatencyProjector *)&v12 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"latencyProjector"];
    log = v2->_log;
    v2->_log = v3;

    v5 = +[NSDate distantPast];
    lastPPSFlush = v2->_lastPPSFlush;
    v2->_lastPPSFlush = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.das.latencyProjector.flushQueue", v8);
    flushQueue = v2->_flushQueue;
    v2->_flushQueue = v9;
  }

  [(_DASLatencyProjector *)v2 initializeDASTaskCheckpointNamesDict];
  return v2;
}

+ (_DASLatencyProjector)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001024DC;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B8E8 != -1)
  {
    dispatch_once(&qword_10020B8E8, block);
  }

  v2 = qword_10020B8E0;

  return v2;
}

- (id)exactCheckpointState:(unint64_t)state
{
  v3 = [NSNumber numberWithUnsignedLong:state];
  v4 = [NSPredicate predicateWithFormat:@"SELF.CheckpointState == %@", v3];

  return v4;
}

- (BOOL)isDASTaskCheckpoint:(id)checkpoint
{
  metricKeysAndValues = [checkpoint metricKeysAndValues];
  v4 = [metricKeysAndValues objectForKeyedSubscript:@"CheckpointState"];
  unsignedLongValue = [v4 unsignedLongValue];

  return (unsignedLongValue < 0x33) & (0x43F0040138C00uLL >> unsignedLongValue);
}

- (BOOL)isDASTaskCheckpoint:(id)checkpoint checkpointState:(unint64_t)state
{
  checkpointCopy = checkpoint;
  if ([(_DASLatencyProjector *)self isDASTaskCheckpoint:checkpointCopy])
  {
    metricKeysAndValues = [checkpointCopy metricKeysAndValues];
    v8 = [metricKeysAndValues objectForKeyedSubscript:@"CheckpointState"];
    unsignedLongValue = [v8 unsignedLongValue];

    v10 = unsignedLongValue == state;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initializeDASTaskCheckpointNamesDict
{
  if (qword_10020B8F0 != -1)
  {
    sub_10012CE98();
  }
}

- (id)stringifyDASTaskCheckpoint:(unint64_t)checkpoint
{
  v4 = qword_10020B8D8;
  v5 = [NSNumber numberWithInt:?];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [NSNumber numberWithUnsignedInteger:checkpoint];
    v6 = [NSString stringWithFormat:@"Unknown State %@", v7];

    v8 = qword_10020B8D8;
    v9 = [NSNumber numberWithInt:checkpoint];
    [v8 setObject:v6 forKeyedSubscript:v9];
  }

  return v6;
}

- (BOOL)isTerminalEvent:(id)event
{
  metricKeysAndValues = [event metricKeysAndValues];
  v4 = [metricKeysAndValues objectForKeyedSubscript:@"CheckpointState"];
  unsignedLongValue = [v4 unsignedLongValue];

  return (unsignedLongValue < 0x33) & (0x40B0040000800uLL >> unsignedLongValue);
}

- ($B199670FBE0645B9BFB90758A78A0F55)initializeCheckpointCounters
{
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  return self;
}

- (void)incrementCounterForCheckpoint:(unint64_t)checkpoint counters:(id *)counters
{
  if (checkpoint > 39)
  {
    if (checkpoint <= 42)
    {
      if (checkpoint == 40)
      {
        counters = (counters + 56);
      }

      else if (checkpoint == 41)
      {
        counters = (counters + 64);
      }

      else
      {
        counters = (counters + 72);
      }
    }

    else if (checkpoint > 44)
    {
      if (checkpoint == 45)
      {
        counters = (counters + 96);
      }

      else
      {
        if (checkpoint != 50)
        {
          return;
        }

        counters = (counters + 104);
      }
    }

    else if (checkpoint == 43)
    {
      counters = (counters + 80);
    }

    else
    {
      counters = (counters + 88);
    }
  }

  else if (checkpoint <= 15)
  {
    if (checkpoint != 10)
    {
      if (checkpoint == 11)
      {
        counters = (counters + 8);
      }

      else
      {
        if (checkpoint != 15)
        {
          return;
        }

        counters = (counters + 16);
      }
    }
  }

  else if (checkpoint > 19)
  {
    if (checkpoint == 20)
    {
      counters = (counters + 40);
    }

    else
    {
      if (checkpoint != 30)
      {
        return;
      }

      counters = (counters + 48);
    }
  }

  else if (checkpoint == 16)
  {
    counters = (counters + 24);
  }

  else
  {
    if (checkpoint != 17)
    {
      return;
    }

    counters = (counters + 32);
  }

  ++counters->var0;
}

- (void)decrementCounterForCheckpoint:(unint64_t)checkpoint counters:(id *)counters
{
  if (checkpoint > 39)
  {
    if (checkpoint <= 42)
    {
      if (checkpoint == 40)
      {
        counters = (counters + 56);
      }

      else if (checkpoint == 41)
      {
        counters = (counters + 64);
      }

      else
      {
        counters = (counters + 72);
      }
    }

    else if (checkpoint > 44)
    {
      if (checkpoint == 45)
      {
        counters = (counters + 96);
      }

      else
      {
        if (checkpoint != 50)
        {
          return;
        }

        counters = (counters + 104);
      }
    }

    else if (checkpoint == 43)
    {
      counters = (counters + 80);
    }

    else
    {
      counters = (counters + 88);
    }
  }

  else if (checkpoint <= 15)
  {
    if (checkpoint != 10)
    {
      if (checkpoint == 11)
      {
        counters = (counters + 8);
      }

      else
      {
        if (checkpoint != 15)
        {
          return;
        }

        counters = (counters + 16);
      }
    }
  }

  else if (checkpoint > 19)
  {
    if (checkpoint == 20)
    {
      counters = (counters + 40);
    }

    else
    {
      if (checkpoint != 30)
      {
        return;
      }

      counters = (counters + 48);
    }
  }

  else if (checkpoint == 16)
  {
    counters = (counters + 24);
  }

  else
  {
    if (checkpoint != 17)
    {
      return;
    }

    counters = (counters + 32);
  }

  --counters->var0;
}

- (id)convertCountersToNSDictionary:(id *)dictionary
{
  v34 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:10];
  v35[0] = v34;
  v33 = [NSNumber numberWithUnsignedInteger:dictionary->var0];
  v36[0] = v33;
  v32 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:11];
  v35[1] = v32;
  v31 = [NSNumber numberWithUnsignedInteger:dictionary->var1];
  v36[1] = v31;
  v30 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:15];
  v35[2] = v30;
  v29 = [NSNumber numberWithUnsignedInteger:dictionary->var2];
  v36[2] = v29;
  v28 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:16];
  v35[3] = v28;
  v27 = [NSNumber numberWithUnsignedInteger:dictionary->var3];
  v36[3] = v27;
  v26 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:17];
  v35[4] = v26;
  v25 = [NSNumber numberWithUnsignedInteger:dictionary->var4];
  v36[4] = v25;
  v24 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:20];
  v35[5] = v24;
  v23 = [NSNumber numberWithUnsignedInteger:dictionary->var5];
  v36[5] = v23;
  v22 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:30];
  v35[6] = v22;
  v21 = [NSNumber numberWithUnsignedInteger:dictionary->var6];
  v36[6] = v21;
  v20 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:40];
  v35[7] = v20;
  v19 = [NSNumber numberWithUnsignedInteger:dictionary->var7];
  v36[7] = v19;
  v18 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:41];
  v35[8] = v18;
  v17 = [NSNumber numberWithUnsignedInteger:dictionary->var8];
  v36[8] = v17;
  v16 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:42];
  v35[9] = v16;
  v5 = [NSNumber numberWithUnsignedInteger:dictionary->var9];
  v36[9] = v5;
  v6 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:43];
  v35[10] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:dictionary->var10];
  v36[10] = v7;
  v8 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:44];
  v35[11] = v8;
  v9 = [NSNumber numberWithUnsignedInteger:dictionary->var11];
  v36[11] = v9;
  v10 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:45];
  v35[12] = v10;
  v11 = [NSNumber numberWithUnsignedInteger:dictionary->var12];
  v36[12] = v11;
  v12 = [(_DASLatencyProjector *)self stringifyDASTaskCheckpoint:50];
  v35[13] = v12;
  v13 = [NSNumber numberWithUnsignedInteger:dictionary->var13];
  v36[13] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:14];

  return v14;
}

- (id)getTaskCheckpointPairings:(id)pairings
{
  pairingsCopy = pairings;
  v18 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = pairingsCopy;
  v5 = [(_DASTaskCheckpointPair *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        metricKeysAndValues = [v10 metricKeysAndValues];
        v12 = [metricKeysAndValues objectForKeyedSubscript:@"CheckpointState"];
        unsignedLongValue = [v12 unsignedLongValue];

        if (unsignedLongValue == 20)
        {
          v14 = v10;
LABEL_11:

          v7 = v14;
          continue;
        }

        if (v7 && [(_DASLatencyProjector *)self isTerminalEvent:v10])
        {
          v15 = [[_DASTaskCheckpointPair alloc] initWithParams:v7 terminalEvent:v10];
          [v18 addObject:v15];

          v14 = 0;
          goto LABEL_11;
        }
      }

      v6 = [(_DASTaskCheckpointPair *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v6)
      {

        if (v7)
        {
          v16 = [[_DASTaskCheckpointPair alloc] initWithParams:v7 terminalEvent:v7];
          [v18 addObject:v16];
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }

  v7 = 0;
  v16 = v4;
LABEL_17:

LABEL_18:

  return v18;
}

- (id)getRecentUniqueProgressEvents:(id)events
{
  eventsCopy = events;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting the recent unique progress events", buf, 2u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableDictionary dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = eventsCopy;
  obj = [eventsCopy reverseObjectEnumerator];
  v24 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v24)
  {
    v23 = *v26;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        metricKeysAndValues = [v9 metricKeysAndValues];
        v12 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

        v13 = [v6 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = +[NSMutableArray array];
          [v6 setObject:v14 forKeyedSubscript:v12];

          v15 = +[NSMutableSet set];
          [v7 setObject:v15 forKeyedSubscript:v12];
        }

        v16 = [v6 objectForKeyedSubscript:v12];
        v17 = [v7 objectForKeyedSubscript:v12];
        metricKeysAndValues2 = [v9 metricKeysAndValues];
        v19 = [metricKeysAndValues2 objectForKeyedSubscript:@"WorkloadCategory"];

        if (([v17 containsObject:v19] & 1) == 0)
        {
          [v17 addObject:v19];
          [v16 insertObject:v9 atIndex:0];
        }

        objc_autoreleasePoolPop(v10);
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v24);
  }

  return v6;
}

- (unint64_t)computeOverallProgressPercentage:(id)percentage
{
  percentageCopy = percentage;
  firstObject = [percentageCopy firstObject];
  metricKeysAndValues = [firstObject metricKeysAndValues];
  v7 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Computing Overall Progress Percentage for %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = percentageCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        metricKeysAndValues2 = [*(*(&v17 + 1) + 8 * i) metricKeysAndValues];
        v15 = [metricKeysAndValues2 objectForKeyedSubscript:@"CompletedPercentage"];

        v11 += [v15 unsignedIntegerValue];
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);

    if (v11)
    {
      v10 = v11 / [v9 count];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
  }

  return v10;
}

- (id)getRecentUniqueInstallationEvents:(id)events timeFilter:(id)filter
{
  eventsCopy = events;
  filterCopy = filter;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Getting the Recent Unique Installation Events", buf, 2u);
  }

  v23 = +[NSMutableArray array];
  v9 = +[NSMutableSet set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = eventsCopy;
  obj = [eventsCopy reverseObjectEnumerator];
  v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        metricKeysAndValues = [v14 metricKeysAndValues];
        v17 = [metricKeysAndValues objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];

        if (filterCopy)
        {
          [v17 doubleValue];
          v18 = [NSDate dateWithTimeIntervalSince1970:?];
          v19 = [filterCopy containsDate:v18];

          v20 = v19 ^ 1;
          if (!v17)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_15;
          }
        }

        if ((v20 & 1) == 0 && ([v9 containsObject:v17] & 1) == 0)
        {
          [v9 addObject:v17];
          [v23 insertObject:v14 atIndex:0];
        }

LABEL_15:

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  return v23;
}

- (id)findActivitiesByName:(id)name
{
  nameCopy = name;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10012CEAC();
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = +[_DASDaemon sharedInstance];
  allTasks = [v6 allTasks];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = allTasks;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        name = [v13 name];
        v15 = [nameCopy containsObject:name];

        if (v15)
        {
          name2 = [v13 name];
          [v5 setObject:v13 forKeyedSubscript:name2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)getTasksForFeatures:(id)features timeFilter:(id)filter filepath:(id)filepath
{
  featuresCopy = features;
  filterCopy = filter;
  filepathCopy = filepath;
  v10 = +[_DASPPSDataManager sharedInstance];
  v35 = filepathCopy;
  v36 = filterCopy;
  v11 = [v10 loadTasksForFeatures:featuresCopy metrics:0 timeFilter:filterCopy filepath:filepathCopy];

  v12 = +[NSMutableDictionary dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v11;
  v39 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v39)
  {
    v38 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v13;
        v14 = *(*(&v46 + 1) + 8 * v13);
        metricKeysAndValues = [v14 metricKeysAndValues];
        v16 = [metricKeysAndValues objectForKeyedSubscript:@"FeatureCodes"];

        metricKeysAndValues2 = [v14 metricKeysAndValues];
        v18 = [metricKeysAndValues2 objectForKeyedSubscript:@"TaskName"];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = v16;
        v19 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v43;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v43 != v21)
              {
                objc_enumerationMutation(v41);
              }

              v23 = *(*(&v42 + 1) + 8 * i);
              if ([featuresCopy containsObject:v23])
              {
                v24 = featuresCopy;
                stringValue = [v23 stringValue];
                v26 = [v12 objectForKeyedSubscript:stringValue];

                if (!v26)
                {
                  v27 = +[NSMutableArray array];
                  stringValue2 = [v23 stringValue];
                  [v12 setObject:v27 forKeyedSubscript:stringValue2];
                }

                stringValue3 = [v23 stringValue];
                v30 = [v12 objectForKeyedSubscript:stringValue3];
                v31 = [v30 containsObject:v18];

                featuresCopy = v24;
                if ((v31 & 1) == 0)
                {
                  stringValue4 = [v23 stringValue];
                  v33 = [v12 objectForKeyedSubscript:stringValue4];
                  [v33 addObject:v18];
                }
              }
            }

            v20 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v20);
        }

        v13 = v40 + 1;
      }

      while ((v40 + 1) != v39);
      v39 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v39);
  }

  return v12;
}

- (id)getLastOSUpgradeTimestamp:(id)timestamp endDate:(id)date eraseInstallOnly:(BOOL)only
{
  onlyCopy = only;
  dateCopy = date;
  v9 = [(_DASLatencyProjector *)self getRecentUniqueInstallationEvents:timestamp timeFilter:0];
  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    v11 = [NSPredicate predicateWithFormat:@"LastUpgradeSystemTimestamp <= %lf", v10];
    v12 = [v9 filteredArrayUsingPredicate:v11];

    v9 = v12;
  }

  if (onlyCopy)
  {
    v13 = [NSPredicate predicateWithFormat:@"InstallType = 0"];
    v14 = [v9 filteredArrayUsingPredicate:v13];

    v9 = v14;
  }

  reverseObjectEnumerator = [v9 reverseObjectEnumerator];
  nextObject = [reverseObjectEnumerator nextObject];

  metricKeysAndValues = [nextObject metricKeysAndValues];
  v18 = [metricKeysAndValues objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
  [v18 doubleValue];
  v19 = [NSDate dateWithTimeIntervalSince1970:?];

  return v19;
}

- (id)computeBlockedDurations:(id)durations
{
  obj = durations;
  v48 = +[NSMutableDictionary dictionary];
  v3 = +[_DASRequiresPluggedInPolicy policyInstance];
  policyName = [v3 policyName];
  v45 = [_DASPolicyManager bitmaskForPolicy:policyName];
  v5 = +[_DASDeviceActivityPolicy policyInstance];
  policyName2 = [v5 policyName];
  v44 = [_DASPolicyManager bitmaskForPolicy:policyName2];

  v50 = [_DASPolicyManager bitmaskForPolicy:@"Incompatibility"];
  v7 = +[_DASPolicyManager allPoliciesForPlatform];
  v8 = [NSMutableSet setWithArray:v7];

  v47 = v8;
  objectEnumerator = [v8 objectEnumerator];
  v10 = +[NSMutableSet set];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v12 = nextObject;
    do
    {
      policyName3 = [v12 policyName];
      [v10 addObject:policyName3];

      nextObject2 = [objectEnumerator nextObject];

      v12 = nextObject2;
    }

    while (nextObject2);
  }

  v46 = objectEnumerator;
  v15 = +[_DASRequiresPluggedInPolicy policyInstance];
  policyName4 = [v15 policyName];
  v63[0] = policyName4;
  v17 = +[_DASDeviceActivityPolicy policyInstance];
  policyName5 = [v17 policyName];
  v63[1] = policyName5;
  v63[2] = @"Incompatibility";
  v19 = [NSArray arrayWithObjects:v63 count:3];
  v20 = [NSSet setWithArray:v19];
  [v10 minusSet:v20];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v58;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v58 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v24 |= [_DASPolicyManager bitmaskForPolicy:*(*(&v57 + 1) + 8 * i)];
      }

      v23 = [v21 countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obja = obj;
  v27 = [obja countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = 0;
    v49 = 0;
    v31 = *v54;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v54 != v31)
        {
          objc_enumerationMutation(obja);
        }

        metricKeysAndValues = [*(*(&v53 + 1) + 8 * j) metricKeysAndValues];
        v34 = [metricKeysAndValues objectForKeyedSubscript:@"Maintenance"];

        if (([v34 unsignedLongValue] & (v44 | v45)) != 0)
        {
          ++v29;
        }

        else if (([v34 unsignedLongValue] & v50) != 0)
        {
          ++v30;
        }

        else
        {
          unsignedLongValue = [v34 unsignedLongValue];
          v36 = v49;
          if ((unsignedLongValue & v24) != 0)
          {
            v36 = v49 + 1;
          }

          v49 = v36;
        }
      }

      v28 = [obja countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v28);
    v37 = 900 * v29;
    v38 = 900 * v30;
    v39 = 900 * v49;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  v40 = [NSNumber numberWithUnsignedInteger:v37];
  [v48 setObject:v40 forKeyedSubscript:@"UnpluggedOrDeviceActive"];

  v41 = [NSNumber numberWithUnsignedInteger:v38];
  [v48 setObject:v41 forKeyedSubscript:@"Incompatibility"];

  v42 = [NSNumber numberWithUnsignedInteger:v39];
  [v48 setObject:v42 forKeyedSubscript:@"SystemConditions"];

  return v48;
}

- (id)computeElapsedRunTimeFromPairings:(id)pairings endDate:(id)date
{
  pairingsCopy = pairings;
  dateCopy = date;
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = pairingsCopy;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v31 = v7;
    v12 = 0;
    v13 = *v33;
    v14 = 0.0;
    do
    {
      v15 = 0;
      v16 = v12;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v32 + 1) + 8 * v15);

        terminalEvent = [v12 terminalEvent];
        startEvent = [v12 startEvent];

        if (terminalEvent == startEvent)
        {
          if (!dateCopy)
          {
            dateCopy = +[NSDate date];
          }

          [dateCopy timeIntervalSince1970];
          v26 = v25;
          startEvent2 = [v12 startEvent];
          [startEvent2 epochTimestamp];
          v24 = v26 - v27;
        }

        else
        {
          startEvent2 = [v12 terminalEvent];
          [startEvent2 epochTimestamp];
          v21 = v20;
          startEvent3 = [v12 startEvent];
          [startEvent3 epochTimestamp];
          v24 = v21 - v23;
        }

        v14 = v14 + v24;
        dictionaryRepresentation = [v12 dictionaryRepresentation];
        [v8 addObject:dictionaryRepresentation];

        v15 = v15 + 1;
        v16 = v12;
      }

      while (v11 != v15);
      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);

    v7 = v31;
  }

  else
  {
    v14 = 0.0;
  }

  v29 = [NSNumber numberWithDouble:v14];
  [v7 setObject:v29 forKeyedSubscript:@"Elapsed Runtime"];

  [v7 setObject:v8 forKeyedSubscript:@"Checkpoint Pairings"];

  return v7;
}

- (id)computeElapsedRunTimeTotals:(id)totals
{
  totalsCopy = totals;
  v4 = +[NSMutableDictionary dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = totalsCopy;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v25 = *v33;
    v5 = 0.0;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"Elapsed Runtime"];
        [v8 doubleValue];
        v10 = v9;

        v11 = [v7 objectForKeyedSubscript:@"Totals"];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              v17 = [v4 objectForKeyedSubscript:v16];
              unsignedLongValue = [v17 unsignedLongValue];
              v19 = [v11 objectForKeyedSubscript:v16];
              v20 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", &unsignedLongValue[[v19 unsignedLongValue]]);
              [v4 setObject:v20 forKeyedSubscript:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v13);
        }

        v5 = v5 + v10;

        v6 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  else
  {
    v5 = 0.0;
  }

  v21 = [NSNumber numberWithDouble:v5];
  [v4 setObject:v21 forKeyedSubscript:@"Run Time"];

  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj count]);
  [v4 setObject:v22 forKeyedSubscript:@"Instances"];

  return v4;
}

- (id)computeElapsedRunTimesFromCheckpoints:(id)checkpoints endDate:(id)date
{
  checkpointsCopy = checkpoints;
  dateCopy = date;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Computing Elapsed Runtimes", buf, 2u);
  }

  v79 = +[NSMutableDictionary dictionary];
  v74 = +[NSMutableDictionary dictionary];
  v73 = +[NSMutableDictionary dictionary];
  v82 = +[NSMutableDictionary dictionary];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v64 = checkpointsCopy;
  obj = [checkpointsCopy reverseObjectEnumerator];
  v65 = dateCopy;
  v72 = [obj countByEnumeratingWithState:&v101 objects:v106 count:16];
  if (v72)
  {
    v71 = *v102;
    do
    {
      for (i = 0; i != v72; i = i + 1)
      {
        if (*v102 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v101 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        metricKeysAndValues = [v10 metricKeysAndValues];
        v12 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

        v13 = [v79 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = +[NSMutableArray array];
          [v79 setObject:v14 forKeyedSubscript:v12];

          v15 = +[NSMutableArray array];
          [v74 setObject:v15 forKeyedSubscript:v12];

          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          *buf = 0u;
          [(_DASLatencyProjector *)self initializeCheckpointCounters];
          v16 = [NSValue valueWithBytes:buf objCType:"{?=QQQQQQQQQQQQQQ}"];
          [v82 setObject:v16 forKeyedSubscript:v12];

          if (v65)
          {
            [v73 setObject:v65 forKeyedSubscript:v12];
          }

          else
          {
            v17 = +[NSDate date];
            [v73 setObject:v17 forKeyedSubscript:v12];
          }
        }

        v18 = [v74 objectForKeyedSubscript:v12];
        objectEnumerator = [v18 objectEnumerator];
        nextObject = [objectEnumerator nextObject];
        v76 = objectEnumerator;
        nextObject2 = [objectEnumerator nextObject];
        metricKeysAndValues2 = [v10 metricKeysAndValues];
        v23 = [metricKeysAndValues2 objectForKeyedSubscript:@"CheckpointState"];
        unsignedLongValue = [v23 unsignedLongValue];

        v80 = nextObject2;
        metricKeysAndValues3 = [nextObject2 metricKeysAndValues];
        v25 = [metricKeysAndValues3 objectForKeyedSubscript:@"CheckpointState"];
        unsignedLongValue2 = [v25 unsignedLongValue];

        metricKeysAndValues4 = [nextObject metricKeysAndValues];
        v28 = [metricKeysAndValues4 objectForKeyedSubscript:@"CheckpointState"];
        unsignedLongValue3 = [v28 unsignedLongValue];

        if (![(_DASLatencyProjector *)self isDASTaskCheckpoint:v10 checkpointState:10]|| ![(_DASLatencyProjector *)self isDASTaskCheckpoint:nextObject checkpointState:10])
        {
          if ([(_DASLatencyProjector *)self isDASTaskCheckpoint:v10 checkpointState:45]&& [(_DASLatencyProjector *)self isDASTaskCheckpoint:nextObject checkpointState:42]&& [(_DASLatencyProjector *)self isDASTaskCheckpoint:v80 checkpointState:40])
          {
            [v18 removeObject:nextObject];
            [v18 removeObject:v80];
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            *buf = 0u;
            v30 = [v82 objectForKeyedSubscript:v12];
            [v30 getValue:buf];

            [(_DASLatencyProjector *)self decrementCounterForCheckpoint:unsignedLongValue2 counters:buf];
            [(_DASLatencyProjector *)self decrementCounterForCheckpoint:unsignedLongValue3 counters:buf];
            v67 = 1;
          }

          else
          {
            if ([(_DASLatencyProjector *)self isDASTaskCheckpoint:v10 checkpointState:40]|| ![(_DASLatencyProjector *)self isDASTaskCheckpoint:nextObject checkpointState:10])
            {
              [v18 insertObject:v10 atIndex:0];
              goto LABEL_27;
            }

            v67 = 0;
          }

          v66 = unsignedLongValue3;
          v31 = [(_DASLatencyProjector *)self getTaskCheckpointPairings:v18];
          v32 = [v73 objectForKeyedSubscript:v12];
          v69 = v31;
          v33 = [(_DASLatencyProjector *)self computeElapsedRunTimeFromPairings:v31 endDate:v32];

          firstObject = [v18 firstObject];
          if ([(_DASLatencyProjector *)self isDASTaskCheckpoint:firstObject checkpointState:10])
          {
            dictionaryRepresentation = [firstObject dictionaryRepresentation];
            [v33 setObject:dictionaryRepresentation forKeyedSubscript:@"Submission Event"];
          }

          v68 = firstObject;
          lastObject = [v18 lastObject];
          dictionaryRepresentation2 = [lastObject dictionaryRepresentation];
          [v33 setObject:dictionaryRepresentation2 forKeyedSubscript:@"Last DAS Checkpoint Event"];

          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          *buf = 0u;
          v38 = [v82 objectForKeyedSubscript:v12];
          [v38 getValue:buf];

          v91 = v98;
          v92 = v99;
          v93 = v100;
          v87 = *buf;
          v88 = v95;
          v89 = v96;
          v90 = v97;
          v39 = [(_DASLatencyProjector *)self convertCountersToNSDictionary:&v87];
          [v33 setObject:v39 forKeyedSubscript:@"Totals"];

          v40 = [v79 objectForKeyedSubscript:v12];
          [v40 insertObject:v33 atIndex:0];

          firstObject2 = [v18 firstObject];
          [firstObject2 epochTimestamp];
          v42 = [NSDate dateWithTimeIntervalSince1970:?];
          [v73 setObject:v42 forKeyedSubscript:v12];

          v43 = +[NSMutableArray array];
          [v74 setObject:v43 forKeyedSubscript:v12];

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v87 = 0u;
          [(_DASLatencyProjector *)self initializeCheckpointCounters];
          if (v67)
          {
            v44 = [v74 objectForKeyedSubscript:v12];
            [v44 insertObject:v80 atIndex:0];

            v45 = [v74 objectForKeyedSubscript:v12];
            [v45 insertObject:nextObject atIndex:0];

            [(_DASLatencyProjector *)self incrementCounterForCheckpoint:unsignedLongValue2 counters:&v87];
            [(_DASLatencyProjector *)self incrementCounterForCheckpoint:v66 counters:&v87];
          }

          v46 = [v74 objectForKeyedSubscript:v12];
          [v46 insertObject:v10 atIndex:0];

          v47 = [NSValue valueWithBytes:&v87 objCType:"{?=QQQQQQQQQQQQQQ}"];
          [v82 setObject:v47 forKeyedSubscript:v12];
        }

LABEL_27:
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *buf = 0u;
        v48 = [v82 objectForKeyedSubscript:v12];
        [v48 getValue:buf];

        [(_DASLatencyProjector *)self incrementCounterForCheckpoint:unsignedLongValue counters:buf];
        v49 = [NSValue valueWithBytes:buf objCType:"{?=QQQQQQQQQQQQQQ}"];
        [v82 setObject:v49 forKeyedSubscript:v12];

        objc_autoreleasePoolPop(context);
      }

      v72 = [obj countByEnumeratingWithState:&v101 objects:v106 count:16];
    }

    while (v72);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v50 = v74;
  v81 = [v50 countByEnumeratingWithState:&v83 objects:v105 count:16];
  if (v81)
  {
    contexta = *v84;
    do
    {
      for (j = 0; j != v81; j = j + 1)
      {
        if (*v84 != contexta)
        {
          objc_enumerationMutation(v50);
        }

        v52 = *(*(&v83 + 1) + 8 * j);
        v53 = objc_autoreleasePoolPush();
        v54 = [v50 objectForKeyedSubscript:v52];
        if ([v54 count])
        {
          v55 = [(_DASLatencyProjector *)self getTaskCheckpointPairings:v54];
          v56 = [v73 objectForKeyedSubscript:v52];
          v57 = [(_DASLatencyProjector *)self computeElapsedRunTimeFromPairings:v55 endDate:v56];

          lastObject2 = [v54 lastObject];
          dictionaryRepresentation3 = [lastObject2 dictionaryRepresentation];
          [v57 setObject:dictionaryRepresentation3 forKeyedSubscript:@"Last DAS Checkpoint Event"];

          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          *buf = 0u;
          v60 = [v82 objectForKeyedSubscript:v52];
          [v60 getValue:buf];

          v91 = v98;
          v92 = v99;
          v93 = v100;
          v87 = *buf;
          v88 = v95;
          v89 = v96;
          v90 = v97;
          v61 = [(_DASLatencyProjector *)self convertCountersToNSDictionary:&v87];
          [v57 setObject:v61 forKeyedSubscript:@"Totals"];

          v62 = [v79 objectForKeyedSubscript:v52];
          [v62 insertObject:v57 atIndex:0];
        }

        objc_autoreleasePoolPop(v53);
      }

      v81 = [v50 countByEnumeratingWithState:&v83 objects:v105 count:16];
    }

    while (v81);
  }

  return v79;
}

- (id)computeElapsedRunTimes:(id)times timeFilter:(id)filter filepath:(id)filepath
{
  timesCopy = times;
  filterCopy = filter;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  v11 = +[_DASPPSDataManager sharedInstance];
  v12 = [v11 loadTaskCheckpoints:timesCopy metrics:0 timeFilter:filterCopy filepath:filepathCopy];

  endDate = [filterCopy endDate];
  if (endDate)
  {
    [filterCopy endDate];
  }

  else
  {
    +[NSDate date];
  }
  v14 = ;

  v15 = [(_DASLatencyProjector *)self computeElapsedRunTimesFromCheckpoints:v12 endDate:v14];

  return v15;
}

- (id)computeEstimatedRunTime:(id)time elapsedRunTimes:(id)times progressEvents:(id)events activity:(id)activity endDate:(id)date
{
  timesCopy = times;
  activityCopy = activity;
  eventsCopy = events;
  v13 = +[NSMutableDictionary dictionary];
  v70 = timesCopy;
  lastObject = [timesCopy lastObject];
  v68 = [lastObject objectForKeyedSubscript:@"Submission Event"];
  v15 = [v68 objectForKeyedSubscript:@"epoch"];
  [v15 doubleValue];
  v17 = v16;

  v67 = [NSPredicate predicateWithFormat:@"epochTimestamp >= %lf", v17];
  v18 = [eventsCopy filteredArrayUsingPredicate:?];

  v19 = [(_DASLatencyProjector *)self computeOverallProgressPercentage:v18];
  v20 = [lastObject objectForKeyedSubscript:@"Elapsed Runtime"];
  [v20 doubleValue];
  v22 = v21;

  v66 = [lastObject objectForKeyedSubscript:@"Last DAS Checkpoint Event"];
  v23 = [v66 objectForKeyedSubscript:@"CheckpointState"];
  unsignedIntegerValue = [v23 unsignedIntegerValue];

  v69 = lastObject;
  [v13 addEntriesFromDictionary:lastObject];
  v71 = activityCopy;
  fastPass = [activityCopy fastPass];
  v26 = fastPass != 0;
  v64 = fastPass;

  v65 = v19;
  v27 = [NSNumber numberWithUnsignedInteger:v19];
  [v13 setObject:v27 forKeyedSubscript:@"Overall Progress"];

  v28 = [NSNumber numberWithBool:0];
  [v13 setObject:v28 forKeyedSubscript:@"hasFastPass"];

  v29 = [NSNumber numberWithBool:v26];
  [v13 setObject:v29 forKeyedSubscript:@"isFastPass"];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v30 = v18;
  v31 = [v30 countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v77;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v77 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v76 + 1) + 8 * i);
        v36 = [v13 objectForKeyedSubscript:@"Recent Progress Events"];

        if (!v36)
        {
          v37 = +[NSMutableArray array];
          [v13 setObject:v37 forKeyedSubscript:@"Recent Progress Events"];
        }

        v38 = [v13 objectForKeyedSubscript:@"Recent Progress Events"];
        dictionaryRepresentation = [v35 dictionaryRepresentation];
        [v38 addObject:dictionaryRepresentation];
      }

      v32 = [v30 countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v32);
  }

  if (unsignedIntegerValue > 0x32)
  {
    goto LABEL_14;
  }

  if (((1 << unsignedIntegerValue) & 0x42A0040020000) != 0)
  {
    goto LABEL_34;
  }

  if (((1 << unsignedIntegerValue) & 0x8400) == 0)
  {
    if (((1 << unsignedIntegerValue) & 0x10000100000) == 0)
    {
LABEL_14:
      v22 = -1.0;
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (v22 != 0.0)
  {
LABEL_29:
    if (v65)
    {
      v22 = v22 / (v65 / 100.0);
    }

    else if (v64)
    {
      v60 = +[_DASRuntimeLimiter sharedLimiter];
      [v60 maximumRuntimeForActivity:v71];
      v22 = v61;
    }

    else
    {
      v22 = v22 + 3600.0;
    }

    goto LABEL_34;
  }

  reverseObjectEnumerator = [v70 reverseObjectEnumerator];
  nextObject = [reverseObjectEnumerator nextObject];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v42 = reverseObjectEnumerator;
  v43 = [v42 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v43)
  {
LABEL_25:

LABEL_28:
    goto LABEL_29;
  }

  v44 = v43;
  v45 = 0;
  v46 = *v73;
LABEL_18:
  v47 = v42;
  v48 = 0;
  v49 = v45;
  while (1)
  {
    if (*v73 != v46)
    {
      objc_enumerationMutation(v47);
    }

    v45 = *(*(&v72 + 1) + 8 * v48);

    v50 = [v45 objectForKeyedSubscript:@"Last DAS Checkpoint Event"];
    v51 = [v50 objectForKeyedSubscript:@"CheckpointState"];
    unsignedIntegerValue2 = [v51 unsignedIntegerValue];

    if (unsignedIntegerValue2 == 30)
    {
      break;
    }

    v48 = v48 + 1;
    v49 = v45;
    if (v44 == v48)
    {
      v42 = v47;
      v44 = [v47 countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v44)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  v53 = [v45 objectForKeyedSubscript:@"Elapsed Runtime"];
  [v53 doubleValue];
  v55 = v54;

  v42 = v47;
  if (!v45)
  {
    goto LABEL_28;
  }

  v56 = [v45 objectForKeyedSubscript:@"Last DAS Checkpoint Event"];
  v57 = [v45 objectForKeyedSubscript:@"Submission Event"];
  v58 = [v57 objectForKeyedSubscript:@"epoch"];
  [v13 setObject:v58 forKeyedSubscript:@"Previous Instance Submission Time"];

  v59 = [v56 objectForKeyedSubscript:@"epoch"];
  [v13 setObject:v59 forKeyedSubscript:@"Previous Instance Completion Time"];

  v22 = v55;
LABEL_34:
  v62 = [NSNumber numberWithDouble:v22];
  [v13 setObject:v62 forKeyedSubscript:@"Estimated Runtime"];

  return v13;
}

- (id)computeEstimatedRunTimes:(id)times timeFilter:(id)filter filepath:(id)filepath
{
  timesCopy = times;
  filterCopy = filter;
  filepathCopy = filepath;
  if (filepathCopy)
  {
    v37 = 0;
  }

  else
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
    v37 = [(_DASLatencyProjector *)self findActivitiesByName:timesCopy];
  }

  v11 = +[_DASPPSDataManager sharedInstance];
  v12 = [v11 loadTaskCheckpoints:timesCopy metrics:0 timeFilter:filterCopy filepath:filepathCopy];
  v30 = v11;
  v13 = [v11 loadTaskProgress:timesCopy metrics:0 timeFilter:filterCopy filepath:filepathCopy];
  endDate = [filterCopy endDate];
  v31 = filepathCopy;
  v32 = filterCopy;
  if (endDate)
  {
    [filterCopy endDate];
  }

  else
  {
    +[NSDate date];
  }
  v15 = ;

  +[NSMutableDictionary dictionary];
  v36 = v35 = v15;
  v29 = v12;
  v34 = [(_DASLatencyProjector *)self computeElapsedRunTimesFromCheckpoints:v12 endDate:v15];
  v28 = v13;
  v16 = [(_DASLatencyProjector *)self getRecentUniqueProgressEvents:v13];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = timesCopy;
  v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = [v34 objectForKeyedSubscript:v21];
        v23 = [v16 objectForKeyedSubscript:v21];
        v24 = [v37 objectForKeyedSubscript:v21];
        [(_DASLatencyProjector *)self computeEstimatedRunTime:v21 elapsedRunTimes:v22 progressEvents:v23 activity:v24 endDate:v35];
        v26 = v25 = self;
        [v36 setObject:v26 forKeyedSubscript:v21];

        self = v25;
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v18);
  }

  return v36;
}

- (unint64_t)getBlockingCriteriaBitmask:(id)bitmask
{
  bitmaskCopy = bitmask;
  requiresSignificantUserInactivity = [bitmaskCopy requiresSignificantUserInactivity];
  if ([bitmaskCopy requiresPlugin])
  {
    requiresSignificantUserInactivity |= 2uLL;
  }

  if ([bitmaskCopy requiresNetwork])
  {
    v5 = requiresSignificantUserInactivity | 4;
  }

  else
  {
    v5 = requiresSignificantUserInactivity;
  }

  fileProtection = [bitmaskCopy fileProtection];
  v7 = +[_DASFileProtection none];

  if (fileProtection == v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 | 8;
  }

  requiresDeviceInactivity = [bitmaskCopy requiresDeviceInactivity];

  if (requiresDeviceInactivity)
  {
    return v8 | 0x10;
  }

  else
  {
    return v8;
  }
}

- (id)computeConditionsPenalty:(id)penalty
{
  penaltyCopy = penalty;
  v5 = +[NSMutableDictionary dictionary];
  if (penaltyCopy)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012CF64(log);
    }

    v7 = [(_DASLatencyProjector *)self getBlockingCriteriaBitmask:penaltyCopy];
    v8 = [NSNumber numberWithUnsignedInteger:v7];
    [v5 setObject:v8 forKeyedSubscript:@"Blocking Criteria Bitmask"];

    if (v7 > 0x1F)
    {
      v9 = &off_1001CA6A8;
    }

    else
    {
      v9 = (&off_1001B8D18)[v7];
    }

    [v5 setObject:v9 forKeyedSubscript:@"Conditions Penalty"];
  }

  return v5;
}

- (id)computeConditionsPenalties:(id)penalties
{
  penaltiesCopy = penalties;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(_DASLatencyProjector *)self findActivitiesByName:penaltiesCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = penaltiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v16}];
        v14 = [(_DASLatencyProjector *)self computeConditionsPenalty:v13];

        [v5 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)constructGroupSizes:(id)sizes
{
  sizesCopy = sizes;
  v4 = +[NSMutableDictionary dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = sizesCopy;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v5 = *v31;
    v22 = *v31;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        if (_os_feature_enabled_impl())
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = v7;
          internalGroupNames = [v7 internalGroupNames];
          v9 = [internalGroupNames countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v27;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v27 != v11)
                {
                  objc_enumerationMutation(internalGroupNames);
                }

                v13 = *(*(&v26 + 1) + 8 * j);
                v14 = [v4 objectForKeyedSubscript:{v13, v22}];
                v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue] + 1);
                [v4 setObject:v15 forKeyedSubscript:v13];
              }

              v10 = [internalGroupNames countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v10);
          }

          v5 = v22;
          v7 = v24;
        }

        groupName = [v7 groupName];

        if (groupName)
        {
          groupName2 = [v7 groupName];
          v18 = [v4 objectForKeyedSubscript:groupName2];
          v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 integerValue] + 1);
          groupName3 = [v7 groupName];
          [v4 setObject:v19 forKeyedSubscript:groupName3];
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  return v4;
}

- (int64_t)checkCapacityForActivity:(id)activity groupSizes:(id)sizes
{
  activityCopy = activity;
  sizesCopy = sizes;
  if (_os_feature_enabled_impl())
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = activityCopy;
    obj = [activityCopy internalGroupNames];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      v10 = 0x7FFFFFFFLL;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = +[_DASDaemon sharedInstance];
          allActivityGroups = [v13 allActivityGroups];
          v15 = [allActivityGroups objectForKeyedSubscript:v12];
          maxConcurrent = [v15 maxConcurrent];
          v17 = [sizesCopy objectForKeyedSubscript:v12];
          v18 = maxConcurrent - [v17 integerValue];

          if (v10 >= v18)
          {
            v10 = v18;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0x7FFFFFFFLL;
    }

    activityCopy = v27;
  }

  else
  {
    v19 = +[_DASDaemon sharedInstance];
    allActivityGroups2 = [v19 allActivityGroups];
    groupName = [activityCopy groupName];
    v22 = [allActivityGroups2 objectForKeyedSubscript:groupName];
    maxConcurrent2 = [v22 maxConcurrent];
    groupName2 = [activityCopy groupName];
    v25 = [sizesCopy objectForKeyedSubscript:groupName2];
    v10 = maxConcurrent2 - [v25 integerValue];
  }

  return v10;
}

- (id)computeContentionPenalty:(id)penalty
{
  penaltyCopy = penalty;
  log = self->_log;
  v203 = penaltyCopy;
  if (penaltyCopy)
  {
    selfCopy = self;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012CFF4(log);
    }

    v186 = +[NSMutableDictionary dictionary];
    v6 = [NSMutableSet alloc];
    v7 = +[_DASDaemon sharedInstance];
    allPendingTasks = [v7 allPendingTasks];
    v9 = [v6 initWithSet:allPendingTasks];

    v10 = [NSMutableSet alloc];
    v11 = +[_DASDaemon sharedInstance];
    startedTasks = [v11 startedTasks];
    v188 = [v10 initWithSet:startedTasks];

    v185 = [(_DASLatencyProjector *)self computeConditionsPenalty:v203];
    v13 = [(_DASLatencyProjector *)self getBlockingCriteriaBitmask:v203];
    v14 = [NSMutableDictionary alloc];
    name = [v203 name];
    v16 = [NSSet setWithObject:name];
    v17 = [(_DASLatencyProjector *)self computeEstimatedRunTimes:v16 timeFilter:0 filepath:0];
    v184 = [v14 initWithDictionary:v17];

    v18 = +[NSDate date];
    startAfter = [v203 startAfter];
    v20 = [startAfter dateByAddingTimeInterval:?];
    v21 = [v18 laterDate:v20];

    v22 = selfCopy;
    v23 = v21;

    [v21 timeIntervalSince1970];
    v24 = +[NSDate date];
    [v24 timeIntervalSince1970];

    v25 = objc_alloc_init(NSMutableSet);
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    obj = v9;
    v26 = [obj countByEnumeratingWithState:&v230 objects:v242 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v231;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v231 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v230 + 1) + 8 * i);
          if (v13 != [(_DASLatencyProjector *)selfCopy getBlockingCriteriaBitmask:v30])
          {
            [v25 addObject:v30];
          }
        }

        v27 = [obj countByEnumeratingWithState:&v230 objects:v242 count:16];
      }

      while (v27);
    }

    v183 = v25;
    [obj minusSet:v25];
    name2 = [v203 name];
    v32 = [v184 objectForKeyedSubscript:name2];
    v33 = [v32 objectForKeyedSubscript:@"Estimated Runtime"];
    [v33 doubleValue];
    v35 = v34;

    v36 = +[NSMutableDictionary dictionary];
    if (v35 > 0.0)
    {
      v187 = 0;
      v197 = _DASClientNameBGST;
      v196 = _DASClientNameXPCActivity;
      *&v37 = 134217984;
      v182 = v37;
      while (1)
      {
        v38 = v22->_log;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = v182;
          v241 = v187;
          _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Starting Contention Penalty Round %lu", buf, 0xCu);
        }

        v39 = [v185 objectForKeyedSubscript:{@"Conditions Penalty", v182}];
        [v39 doubleValue];
        v41 = 86400.0 - v40;

        v42 = +[NSMutableDictionary dictionary];
        v43 = +[NSMutableArray array];
        [v42 setObject:v43 forKeyedSubscript:@"Run Intervals"];

        v44 = 0.0;
        v189 = v42;
        if (v41 > 0.0 && v35 > 0.0)
        {
          break;
        }

LABEL_99:
        v171 = [NSNumber numberWithDouble:v44];
        [v42 setObject:v171 forKeyedSubscript:@"Contention Penalty"];

        if (v41 == 0.0)
        {
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v172 = v188;
          v173 = [v172 countByEnumeratingWithState:&v204 objects:v234 count:16];
          if (v173)
          {
            v174 = v173;
            v175 = *v205;
            do
            {
              for (j = 0; j != v174; j = j + 1)
              {
                if (*v205 != v175)
                {
                  objc_enumerationMutation(v172);
                }

                v177 = *(*(&v204 + 1) + 8 * j);
                [v177 setStartAfter:v23];
                [v177 setStartBefore:v23];
              }

              v174 = [v172 countByEnumeratingWithState:&v204 objects:v234 count:16];
            }

            while (v174);
          }

          [obj unionSet:v172];
          [v172 removeAllObjects];
          v42 = v189;
        }

        v178 = [NSNumber numberWithUnsignedInteger:?];
        stringValue = [v178 stringValue];
        [v186 setObject:v42 forKeyedSubscript:stringValue];

        ++v187;
        if (v35 <= 0.0)
        {
          goto LABEL_109;
        }
      }

      v45 = v23;
      while (1)
      {
        v46 = v22->_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          sub_10012D084(&v228, v229, v46);
        }

        v47 = +[NSMutableDictionary dictionary];
        v48 = +[NSMutableArray array];
        v201 = v47;
        [v47 setObject:v48 forKeyedSubscript:@"Running Tasks"];

        v49 = +[NSMutableSet set];
        v200 = +[NSDate distantFuture];
        v50 = v22->_log;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v241 = obj;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "pendingTasks: %@", buf, 0xCu);
        }

        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v202 = obj;
        v51 = [v202 countByEnumeratingWithState:&v224 objects:v239 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = 0;
          v54 = *v225;
          do
          {
            for (k = 0; k != v52; k = k + 1)
            {
              if (*v225 != v54)
              {
                objc_enumerationMutation(v202);
              }

              v56 = *(*(&v224 + 1) + 8 * k);
              v57 = +[_DASDaemon sharedInstance];
              v58 = [v57 isActivity:v56 timewiseEligibleAt:v45];

              if (v58)
              {
                [v49 addObject:v56];
                name3 = [v203 name];
                name4 = [v56 name];
                v61 = [name3 isEqualToString:name4];

                v53 += v61 ^ 1;
              }

              else
              {
                startAfter2 = [v56 startAfter];
                v63 = [v200 earlierDate:startAfter2];

                v200 = v63;
              }
            }

            v52 = [v202 countByEnumeratingWithState:&v224 objects:v239 count:16];
          }

          while (v52);
        }

        else
        {
          v53 = 0;
        }

        v64 = [NSNumber numberWithUnsignedInteger:v53];
        [v201 setObject:v64 forKeyedSubscript:@"Contending Task Count"];

        v65 = +[_DASDaemon sharedInstance];
        v66 = [v65 sortCandidateActivities:v49];
        v67 = [NSMutableSet setWithArray:v66];

        v68 = [(_DASLatencyProjector *)selfCopy constructGroupSizes:v188];
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        v69 = v67;
        v70 = [v69 countByEnumeratingWithState:&v220 objects:v238 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v221;
          do
          {
            for (m = 0; m != v71; m = m + 1)
            {
              if (*v221 != v72)
              {
                objc_enumerationMutation(v69);
              }

              v74 = *(*(&v220 + 1) + 8 * m);
              if ([(_DASLatencyProjector *)selfCopy checkCapacityForActivity:v74 groupSizes:v68]>= 1)
              {
                [v188 addObject:v74];
                v75 = [(_DASLatencyProjector *)selfCopy constructGroupSizes:v188];

                v68 = v75;
              }
            }

            v71 = [v69 countByEnumeratingWithState:&v220 objects:v238 count:16];
          }

          while (v71);
        }

        v191 = v68;
        v193 = v44;

        [v202 minusSet:v188];
        v192 = v69;
        [v69 minusSet:v188];
        v218 = 0u;
        v219 = 0u;
        v216 = 0u;
        v217 = 0u;
        v76 = v188;
        v77 = [v76 countByEnumeratingWithState:&v216 objects:v237 count:16];
        v78 = v41;
        if (v77)
        {
          v79 = v77;
          v80 = *v217;
          v78 = v41;
          do
          {
            for (n = 0; n != v79; n = n + 1)
            {
              if (*v217 != v80)
              {
                objc_enumerationMutation(v76);
              }

              v82 = *(*(&v216 + 1) + 8 * n);
              name5 = [v82 name];
              v84 = [v36 objectForKeyedSubscript:name5];
              [v84 doubleValue];
              v86 = v85;

              if (v86 == 0.0)
              {
                v87 = +[_DASRuntimeLimiter sharedLimiter];
                [v87 maximumRuntimeForActivity:v82];
                v89 = v88;

                if (v89 == -1.0)
                {
                  v90 = 600.0;
                }

                else
                {
                  v90 = v89;
                }

                v91 = [NSNumber numberWithDouble:v90];
                name6 = [v82 name];
                [v36 setObject:v91 forKeyedSubscript:name6];
              }

              name7 = [v82 name];
              v94 = [v36 objectForKeyedSubscript:name7];
              [v94 doubleValue];
              v96 = v95;

              if (v78 >= v96)
              {
                v78 = v96;
              }

              v97 = [v201 objectForKeyedSubscript:@"Running Tasks"];
              name8 = [v82 name];
              [v97 addObject:name8];
            }

            v79 = [v76 countByEnumeratingWithState:&v216 objects:v237 count:16];
          }

          while (v79);
        }

        if (![v76 count])
        {
          [v200 timeIntervalSince1970];
          v100 = v99;
          [v45 timeIntervalSince1970];
          v78 = v100 - v101 + 0.1;
        }

        v198 = v45;
        v102 = [NSNumber numberWithDouble:v78];
        [v201 setObject:v102 forKeyedSubscript:@"Run Interval"];

        v103 = [NSNumber numberWithDouble:v41];
        [v201 setObject:v103 forKeyedSubscript:@"Opportunity Window"];

        v104 = [NSNumber numberWithDouble:v35];
        [v201 setObject:v104 forKeyedSubscript:@"Remaining Activity Runtime"];

        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v105 = v76;
        v106 = [v105 countByEnumeratingWithState:&v212 objects:v236 count:16];
        if (v106)
        {
          v107 = v106;
          v108 = *v213;
          v109 = 1;
          do
          {
            for (ii = 0; ii != v107; ii = ii + 1)
            {
              if (*v213 != v108)
              {
                objc_enumerationMutation(v105);
              }

              v111 = *(*(&v212 + 1) + 8 * ii);
              name9 = [v111 name];
              name10 = [v203 name];
              v114 = [name9 isEqualToString:name10];

              v109 &= v114 ^ 1;
              name11 = [v111 name];
              v116 = [v36 objectForKeyedSubscript:name11];
              [v116 doubleValue];
              v118 = [NSNumber numberWithDouble:v117 - v78];
              name12 = [v111 name];
              [v36 setObject:v118 forKeyedSubscript:name12];
            }

            v107 = [v105 countByEnumeratingWithState:&v212 objects:v236 count:16];
          }

          while (v107);
        }

        else
        {
          v109 = 1;
        }

        v120 = [v198 dateByAddingTimeInterval:v78];

        v121 = 0.0;
        if (v109)
        {
          v122 = v78;
        }

        else
        {
          v122 = 0.0;
        }

        v190 = v122;
        if ((v109 & 1) == 0)
        {
          v121 = v78;
        }

        v35 = v35 - v121;
        v123 = +[NSMutableSet set];
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        v199 = v105;
        v124 = [v199 countByEnumeratingWithState:&v208 objects:v235 count:16];
        if (v124)
        {
          break;
        }

LABEL_95:
        v41 = v41 - v78;
        v44 = v193 + v190;

        [v199 minusSet:v123];
        v42 = v189;
        v170 = [v189 objectForKeyedSubscript:@"Run Intervals"];
        [v170 addObject:v201];

        if (v41 <= 0.0)
        {
          v22 = selfCopy;
          v23 = v120;
          goto LABEL_99;
        }

        v23 = v120;
        v45 = v120;
        v22 = selfCopy;
        if (v35 <= 0.0)
        {
          goto LABEL_99;
        }
      }

      v125 = v124;
      v126 = *v209;
LABEL_77:
      v127 = 0;
      while (1)
      {
        if (*v209 != v126)
        {
          objc_enumerationMutation(v199);
        }

        v128 = *(*(&v208 + 1) + 8 * v127);
        [v128 interval];
        v130 = v129;
        name13 = [v128 name];
        name14 = [v203 name];
        v133 = [name13 isEqualToString:name14];

        name15 = [v128 name];
        v135 = [v36 objectForKeyedSubscript:name15];
        [v135 doubleValue];
        v137 = v136;

        if (v137 == 0.0)
        {
          [v123 addObject:v128];
          name16 = [v128 name];
          [v36 removeObjectForKey:name16];
        }

        if (v35 == 0.0)
        {
          v139 = 0;
        }

        else
        {
          v139 = v133;
        }

        if (v139 == 1)
        {
          v140 = [v120 dateByAddingTimeInterval:300.0];
          [v128 setStartAfter:v140];

          [v202 addObject:v128];
        }

        if ((v130 == 0.0) | v133 & 1)
        {
          goto LABEL_93;
        }

        clientName = [v128 clientName];
        v142 = [clientName isEqualToString:v197];

        if (v142)
        {
          break;
        }

        clientName2 = [v128 clientName];
        v157 = [clientName2 isEqualToString:v196];

        if (v157)
        {
          [v120 timeIntervalSince1970];
          v159 = v158;
          submitDate = [v128 submitDate];
          [submitDate timeIntervalSince1970];
          v162 = v159 - v161;

          submitDate2 = [v128 submitDate];
          v164 = [submitDate2 dateByAddingTimeInterval:v162];
          [v128 setSubmitDate:v164];

          startAfter3 = [v128 startAfter];
          [v128 interval];
          v166 = [startAfter3 dateByAddingTimeInterval:v162 + v166];
          [v128 setStartAfter:v166];

          startBefore = [v128 startBefore];
          [v128 interval];
          v155 = v162 + v168;
          goto LABEL_92;
        }

LABEL_93:
        if (v125 == ++v127)
        {
          v125 = [v199 countByEnumeratingWithState:&v208 objects:v235 count:16];
          if (!v125)
          {
            goto LABEL_95;
          }

          goto LABEL_77;
        }
      }

      [v128 interval];
      v144 = v143;
      startBefore2 = [v128 startBefore];
      [startBefore2 timeIntervalSince1970];
      v147 = v146;
      startAfter4 = [v128 startAfter];
      [startAfter4 timeIntervalSince1970];
      v150 = v144 - (v147 - v149);

      v151 = [v120 dateByAddingTimeInterval:0.0];
      [v128 setSubmitDate:v151];

      submitDate3 = [v128 submitDate];
      v153 = [submitDate3 dateByAddingTimeInterval:v150];
      [v128 setStartAfter:v153];

      startBefore = [v128 submitDate];
      [v128 interval];
LABEL_92:
      v169 = [startBefore dateByAddingTimeInterval:v155];
      [v128 setStartBefore:v169];

      [v202 addObject:v128];
      goto LABEL_93;
    }

LABEL_109:
    v180 = v186;
  }

  else
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10012D0C4(log);
    }

    v180 = +[NSMutableDictionary dictionary];
  }

  return v180;
}

- (id)computeContentionPenalties:(id)penalties
{
  penaltiesCopy = penalties;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(_DASLatencyProjector *)self findActivitiesByName:penaltiesCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = penaltiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v16}];
        v14 = [(_DASLatencyProjector *)self computeContentionPenalty:v13];

        [v5 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)computeFeatureTimeline:(id)timeline installationEvents:(id)events
{
  timelineCopy = timeline;
  eventsCopy = events;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [eventsCopy count];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = timelineCopy;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v39)
  {
    v9 = v8 - 1;
    v37 = *v43;
    v38 = v7;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        metricKeysAndValues = [v11 metricKeysAndValues];
        v13 = [metricKeysAndValues objectForKeyedSubscript:@"FeatureCode"];

        stringValue = [v13 stringValue];
        v15 = [v7 objectForKeyedSubscript:stringValue];

        if (!v15)
        {
          v16 = +[NSMutableArray array];
          stringValue2 = [v13 stringValue];
          [v7 setObject:v16 forKeyedSubscript:stringValue2];
        }

        stringValue3 = [v13 stringValue];
        v40 = [v7 objectForKeyedSubscript:stringValue3];

        v19 = +[NSMutableDictionary dictionary];
        metricKeysAndValues2 = [v11 metricKeysAndValues];
        v21 = [metricKeysAndValues2 objectForKeyedSubscript:@"FeatureState"];
        [v19 setObject:v21 forKeyedSubscript:@"FeatureState"];

        [v11 epochTimestamp];
        v22 = [NSNumber numberWithDouble:?];
        [v19 setObject:v22 forKeyedSubscript:@"epoch"];

        if (v9 < 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = [eventsCopy objectAtIndex:v9];
        }

        metricKeysAndValues3 = [v23 metricKeysAndValues];
        v25 = [metricKeysAndValues3 objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
        [v25 doubleValue];
        v27 = v26;

        if ((v9 & 0x8000000000000000) == 0)
        {
          while (1)
          {
            [v11 epochTimestamp];
            if (v27 < v28)
            {
              break;
            }

            v29 = v9 - 1;
            if (v9)
            {
              v30 = [eventsCopy objectAtIndex:v9 - 1];
            }

            else
            {
              v30 = 0;
            }

            metricKeysAndValues4 = [v30 metricKeysAndValues];
            v32 = [metricKeysAndValues4 objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
            [v32 doubleValue];
            v27 = v33;

            v23 = v30;
            v9 = v29;
            if (v29 + 1 <= 0)
            {
              v9 = -1;
              goto LABEL_20;
            }
          }

          v34 = [NSNumber numberWithInteger:v9];
          [v19 setObject:v34 forKeyedSubscript:@"InstallationEventIndex"];
        }

        v30 = v23;
LABEL_20:
        [v40 addObject:v19];

        objc_autoreleasePoolPop(context);
        v7 = v38;
      }

      v39 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v39);
  }

  return v7;
}

- (id)computeActivityTimelines:(id)timelines installationEvents:(id)events
{
  timelinesCopy = timelines;
  eventsCopy = events;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Computing Activity Timelines", buf, 2u);
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = [eventsCopy count];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = timelinesCopy;
  v38 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v38)
  {
    v11 = v10 - 1;
    v36 = *v42;
    v37 = v9;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        metricKeysAndValues = [v13 metricKeysAndValues];
        v15 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

        v16 = [v9 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v17 = +[NSMutableArray array];
          [v9 setObject:v17 forKeyedSubscript:v15];
        }

        v39 = [v9 objectForKeyedSubscript:v15];
        v18 = +[NSMutableDictionary dictionary];
        metricKeysAndValues2 = [v13 metricKeysAndValues];
        v20 = [metricKeysAndValues2 objectForKeyedSubscript:@"CheckpointState"];
        [v18 setObject:v20 forKeyedSubscript:@"CheckpointState"];

        [v13 epochTimestamp];
        v21 = [NSNumber numberWithDouble:?];
        [v18 setObject:v21 forKeyedSubscript:@"epoch"];

        if (v11 < 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = [eventsCopy objectAtIndex:v11];
        }

        metricKeysAndValues3 = [v22 metricKeysAndValues];
        v24 = [metricKeysAndValues3 objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
        [v24 doubleValue];
        v26 = v25;

        if ((v11 & 0x8000000000000000) == 0)
        {
          while (1)
          {
            [v13 epochTimestamp];
            if (v26 < v27)
            {
              break;
            }

            v28 = v11 - 1;
            if (v11)
            {
              v29 = [eventsCopy objectAtIndex:v11 - 1];
            }

            else
            {
              v29 = 0;
            }

            metricKeysAndValues4 = [v29 metricKeysAndValues];
            v31 = [metricKeysAndValues4 objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
            [v31 doubleValue];
            v26 = v32;

            v22 = v29;
            v11 = v28;
            if (v28 + 1 <= 0)
            {
              v11 = -1;
              goto LABEL_22;
            }
          }

          v33 = [NSNumber numberWithInteger:v11];
          [v18 setObject:v33 forKeyedSubscript:@"InstallationEventIndex"];
        }

        v29 = v22;
LABEL_22:
        [v39 addObject:v18];

        objc_autoreleasePoolPop(context);
        v9 = v37;
      }

      v38 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v38);
  }

  return v9;
}

- (id)computeDeviceConditionsStatus:(id)status metric:(id)metric
{
  statusCopy = status;
  metricCopy = metric;
  v22 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = statusCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        metricKeysAndValues = [v11 metricKeysAndValues];
        v13 = [metricKeysAndValues objectForKeyedSubscript:metricCopy];
        if (v13)
        {
          v14 = v13;
          metricKeysAndValues2 = [v11 metricKeysAndValues];
          v16 = [metricKeysAndValues2 objectForKeyedSubscript:metricCopy];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          metricKeysAndValues = +[NSMutableDictionary dictionary];
          metricKeysAndValues3 = [v11 metricKeysAndValues];
          v19 = [metricKeysAndValues3 objectForKeyedSubscript:metricCopy];
          [metricKeysAndValues setObject:v19 forKeyedSubscript:metricCopy];

          [v11 epochTimestamp];
          v20 = [NSNumber numberWithDouble:?];
          [metricKeysAndValues setObject:v20 forKeyedSubscript:@"epoch"];

          [v22 addObject:metricKeysAndValues];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return v22;
}

- (id)computeDeviceConditionsStatus:(id)status gatherMetrics:(id)metrics
{
  statusCopy = status;
  metricsCopy = metrics;
  v23 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = statusCopy;
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v24 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        v28 = +[NSMutableDictionary dictionary];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = metricsCopy;
        v8 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v31;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v31 != v10)
              {
                objc_enumerationMutation(v29);
              }

              v12 = *(*(&v30 + 1) + 8 * i);
              metricKeysAndValues = [v7 metricKeysAndValues];
              v14 = [metricKeysAndValues objectForKeyedSubscript:v12];
              if (v14)
              {
                v15 = v14;
                metricKeysAndValues2 = [v7 metricKeysAndValues];
                v17 = [metricKeysAndValues2 objectForKeyedSubscript:v12];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if ((isKindOfClass & 1) == 0)
                {
                  continue;
                }

                metricKeysAndValues = [v7 metricKeysAndValues];
                v19 = [metricKeysAndValues objectForKeyedSubscript:v12];
                [v28 setObject:v19 forKeyedSubscript:v12];
              }
            }

            v9 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v9);
        }

        if ([v28 count])
        {
          [v7 epochTimestamp];
          v20 = [NSNumber numberWithDouble:?];
          [v28 setObject:v20 forKeyedSubscript:@"epoch"];

          [v23 addObject:v28];
        }

        v6 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  return v23;
}

- (id)computeProgressTimelines:(id)timelines
{
  timelinesCopy = timelines;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Computing Progress Timelines", buf, 2u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = timelinesCopy;
  v25 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v25)
  {
    v24 = *v28;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        metricKeysAndValues = [v8 metricKeysAndValues];
        v10 = [metricKeysAndValues objectForKeyedSubscript:@"Identifier"];

        v11 = [v6 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = +[NSMutableArray array];
          [v6 setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [v6 objectForKeyedSubscript:v10];
        v14 = +[NSMutableDictionary dictionary];
        metricKeysAndValues2 = [v8 metricKeysAndValues];
        v16 = [metricKeysAndValues2 objectForKeyedSubscript:@"Identifier"];
        [v14 setObject:v16 forKeyedSubscript:@"Identifier"];

        metricKeysAndValues3 = [v8 metricKeysAndValues];
        v18 = [metricKeysAndValues3 objectForKeyedSubscript:@"ItemsCompleted"];
        [v14 setObject:v18 forKeyedSubscript:@"ItemsCompleted"];

        metricKeysAndValues4 = [v8 metricKeysAndValues];
        v20 = [metricKeysAndValues4 objectForKeyedSubscript:@"TotalItemCount"];
        [v14 setObject:v20 forKeyedSubscript:@"TotalItemCount"];

        [v8 epochTimestamp];
        v21 = [NSNumber numberWithDouble:?];
        [v14 setObject:v21 forKeyedSubscript:@"epoch"];

        [v13 addObject:v14];
        objc_autoreleasePoolPop(context);
      }

      v25 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v25);
  }

  return v6;
}

- (id)computeThroughputTimelines:(id)timelines
{
  timelinesCopy = timelines;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Computing Throughput Timelines", buf, 2u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = timelinesCopy;
  v37 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v37)
  {
    v36 = *v40;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        metricKeysAndValues = [v8 metricKeysAndValues];
        v10 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

        v11 = [v6 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = +[NSMutableArray array];
          [v6 setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [v6 objectForKeyedSubscript:v10];
        v14 = +[NSMutableDictionary dictionary];
        metricKeysAndValues2 = [v8 metricKeysAndValues];
        v16 = [metricKeysAndValues2 objectForKeyedSubscript:@"TaskName"];
        [v14 setObject:v16 forKeyedSubscript:@"TaskName"];

        metricKeysAndValues3 = [v8 metricKeysAndValues];
        v18 = [metricKeysAndValues3 objectForKeyedSubscript:@"Identifier"];
        [v14 setObject:v18 forKeyedSubscript:@"Identifier"];

        metricKeysAndValues4 = [v8 metricKeysAndValues];
        v20 = [metricKeysAndValues4 objectForKeyedSubscript:@"ItemCount"];
        [v14 setObject:v20 forKeyedSubscript:@"ItemCount"];

        metricKeysAndValues5 = [v8 metricKeysAndValues];
        v22 = [metricKeysAndValues5 objectForKeyedSubscript:@"Duration"];
        [v14 setObject:v22 forKeyedSubscript:@"Duration"];

        [v8 epochTimestamp];
        v23 = [NSNumber numberWithDouble:?];
        [v14 setObject:v23 forKeyedSubscript:@"epoch"];

        v24 = [v14 objectForKeyedSubscript:@"Duration"];
        [v24 doubleValue];
        v26 = v25;

        v27 = -1.0;
        if (v26 > 0.0)
        {
          v28 = [v14 objectForKeyedSubscript:@"ItemCount"];
          [v28 doubleValue];
          v30 = v29;
          v31 = [v14 objectForKeyedSubscript:@"Duration"];
          [v31 doubleValue];
          v27 = v30 / v32;
        }

        v33 = [NSNumber numberWithDouble:v27];
        [v14 setObject:v33 forKeyedSubscript:@"Throughput"];

        [v13 addObject:v14];
        objc_autoreleasePoolPop(context);
      }

      v37 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v37);
  }

  return v6;
}

- (id)computeActivityBlockingReasons:(id)reasons
{
  reasonsCopy = reasons;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Computing Activity Blocking Reasons", buf, 2u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = reasonsCopy;
  v22 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v22)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        metricKeysAndValues = [v8 metricKeysAndValues];
        v11 = [metricKeysAndValues objectForKeyedSubscript:@"TaskName"];

        v12 = [v6 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = +[NSMutableArray array];
          [v6 setObject:v13 forKeyedSubscript:v11];
        }

        v14 = [v6 objectForKeyedSubscript:v11];
        v15 = +[NSMutableDictionary dictionary];
        metricKeysAndValues2 = [v8 metricKeysAndValues];
        v17 = [metricKeysAndValues2 objectForKeyedSubscript:@"BlockingPolicies"];
        [v15 setObject:v17 forKeyedSubscript:@"BlockingPolicies"];

        [v8 epochTimestamp];
        v18 = [NSNumber numberWithDouble:?];
        [v15 setObject:v18 forKeyedSubscript:@"timestamp"];

        [v14 addObject:v15];
        objc_autoreleasePoolPop(v9);
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v22);
  }

  return v6;
}

- (id)computeIntensiveEligibleSessions:(id)sessions
{
  sessionsCopy = sessions;
  v29 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v6 = [sessionsCopy objectForKeyedSubscript:@"IsPluggedIn"];
  [v5 addObjectsFromArray:v6];

  v7 = [sessionsCopy objectForKeyedSubscript:@"UserActivityStatus"];
  [v5 addObjectsFromArray:v7];

  v8 = [NSSortDescriptor sortDescriptorWithKey:@"epoch" ascending:1];
  v39 = v8;
  v9 = [NSArray arrayWithObjects:&v39 count:1];
  [v5 sortUsingDescriptors:v9];

  if ([v5 count])
  {
    v28 = sessionsCopy;
    v10 = [v5 objectAtIndexedSubscript:0];
    v11 = [v10 objectForKeyedSubscript:@"epoch"];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      bOOLValue = 0;
      v16 = 0;
      v31 = *v33;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = [v18 objectForKey:@"IsPluggedIn"];

          if (v19)
          {
            v20 = [v18 objectForKeyedSubscript:@"IsPluggedIn"];
            bOOLValue = [v20 BOOLValue];
          }

          v21 = [v18 objectForKey:@"UserActivityStatus"];

          if (v21)
          {
            v22 = [v18 objectForKeyedSubscript:@"UserActivityStatus"];
            v14 = [v22 BOOLValue] ^ 1;
          }

          if ((v16 & 1) != (bOOLValue & v14 & 1))
          {
            v23 = [v18 objectForKeyedSubscript:@"epoch"];
            v24 = v23;
            if (v16)
            {
              v36[0] = @"StartTime";
              v36[1] = @"EndTime";
              v37[0] = v11;
              v37[1] = v23;
              v25 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
              [v29 addObject:v25];
            }

            v11 = v24;
            v16 = bOOLValue & v14;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v13);
    }

    sessionsCopy = v28;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012D108(log);
    }
  }

  return v29;
}

- (id)computeOnBatteryRunTimes:(id)times plugInCheckpoints:(id)checkpoints
{
  timesCopy = times;
  checkpointsCopy = checkpoints;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Computing On Battery Runtimes", buf, 2u);
  }

  v51 = +[NSMutableDictionary dictionary];
  if ([checkpointsCopy count])
  {
    v63 = 0;
    v64 = &v63;
    v65 = 0x2050000000;
    v7 = qword_10020B908;
    v66 = qword_10020B908;
    if (!qword_10020B908)
    {
      *buf = _NSConcreteStackBlock;
      v59 = 3221225472;
      v60 = sub_10010F95C;
      v61 = &unk_1001B5798;
      v62 = &v63;
      sub_10010F95C(buf);
      v7 = v64[3];
    }

    v8 = v7;
    _Block_object_dispose(&v63, 8);
    v9 = objc_alloc_init(v7);
    [v9 mergeWithTimeSeries:timesCopy];
    [v9 mergeWithTimeSeries:checkpointsCopy];
    v10 = +[NSMutableDictionary dictionary];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v9;
    v53 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v53)
    {
      v50 = 0;
      v52 = *v55;
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (*v55 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v54 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [(_DASLatencyProjector *)self isDASTaskCheckpoint:v12];
          metricKeysAndValues = [v12 metricKeysAndValues];
          v16 = [metricKeysAndValues objectForKeyedSubscript:@"IsPluggedIn"];

          if (!v14)
          {
            if (!v16)
            {
              goto LABEL_34;
            }

            metricKeysAndValues2 = [v12 metricKeysAndValues];
            v45 = [metricKeysAndValues2 objectForKeyedSubscript:@"IsPluggedIn"];
            v50 = [v45 BOOLValue] ^ 1;
            goto LABEL_32;
          }

          metricKeysAndValues3 = [v12 metricKeysAndValues];
          metricKeysAndValues2 = [metricKeysAndValues3 objectForKeyedSubscript:@"TaskName"];

          v19 = [v51 objectForKeyedSubscript:metricKeysAndValues2];
          LODWORD(metricKeysAndValues3) = v19 == 0;

          if (metricKeysAndValues3)
          {
            [v51 setObject:&off_1001CA6C0 forKeyedSubscript:metricKeysAndValues2];
          }

          v20 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
          v21 = v20 == 0;

          if (v21)
          {
            v22 = +[NSMutableDictionary dictionary];
            [v10 setObject:v22 forKeyedSubscript:metricKeysAndValues2];

            v23 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
            [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isRunning"];

            v24 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
            [v24 setObject:&__kCFBooleanFalse forKeyedSubscript:@"startedRunningOnBattery"];

            [v12 epochTimestamp];
            v25 = [NSNumber numberWithDouble:?];
            v26 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
            [v26 setObject:v25 forKeyedSubscript:@"onBatteryProcessingStartTime"];
          }

          v27 = &__kCFBooleanTrue;
          if ([(_DASLatencyProjector *)self isDASTaskCheckpoint:v12 checkpointState:20])
          {
            goto LABEL_24;
          }

          if ([(_DASLatencyProjector *)self isDASTaskCheckpoint:v12 checkpointState:11]|| [(_DASLatencyProjector *)self isDASTaskCheckpoint:v12 checkpointState:30]|| [(_DASLatencyProjector *)self isDASTaskCheckpoint:v12 checkpointState:40]|| [(_DASLatencyProjector *)self isDASTaskCheckpoint:v12 checkpointState:41]|| [(_DASLatencyProjector *)self isDASTaskCheckpoint:v12 checkpointState:43]|| [(_DASLatencyProjector *)self isDASTaskCheckpoint:v12 checkpointState:50])
          {
            v27 = &__kCFBooleanFalse;
LABEL_24:
            v28 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
            [v28 setObject:v27 forKeyedSubscript:@"isRunning"];
          }

          v29 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
          v30 = [v29 objectForKeyedSubscript:@"isRunning"];
          bOOLValue = [v30 BOOLValue];

          v32 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
          v33 = [v32 objectForKeyedSubscript:@"startedRunningOnBattery"];
          bOOLValue2 = [v33 BOOLValue];

          if (!(bOOLValue2 & 1 | ((bOOLValue & v50 & 1) == 0)))
          {
            [v12 epochTimestamp];
            v41 = [NSNumber numberWithDouble:?];
            v43 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
            [v43 setObject:v41 forKeyedSubscript:@"onBatteryProcessingStartTime"];
            v44 = &__kCFBooleanTrue;
            goto LABEL_31;
          }

          if (!(bOOLValue & v50 & 1 | ((bOOLValue2 & 1) == 0)))
          {
            [v12 epochTimestamp];
            v36 = v35;
            v37 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
            v38 = [v37 objectForKeyedSubscript:@"onBatteryProcessingStartTime"];
            [v38 doubleValue];
            v40 = v39;

            v41 = [v51 objectForKeyedSubscript:metricKeysAndValues2];
            [v41 doubleValue];
            v43 = [NSNumber numberWithDouble:v36 - v40 + v42];
            [v51 setObject:v43 forKeyedSubscript:metricKeysAndValues2];
            v44 = &__kCFBooleanFalse;
LABEL_31:

            v45 = [v10 objectForKeyedSubscript:metricKeysAndValues2];
            [v45 setObject:v44 forKeyedSubscript:@"startedRunningOnBattery"];
LABEL_32:
          }

LABEL_34:
          objc_autoreleasePoolPop(v13);
        }

        v53 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v53);
    }
  }

  return v51;
}

- (double)computeEligibleSchedulingDelay:(id)delay eligibilityTimeline:(id)timeline
{
  delayCopy = delay;
  timelineCopy = timeline;
  v7 = [delayCopy objectForKeyedSubscript:@"ScheduleAfterDate"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [delayCopy objectForKeyedSubscript:@"StartDate"];
  [v10 doubleValue];
  v12 = v11;

  if (v12 == 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = timelineCopy;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      v17 = 0.0;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v30 + 1) + 8 * v18);
        v20 = [v19 objectForKeyedSubscript:{@"StartTime", v30}];
        [v20 doubleValue];
        v22 = v21;

        v23 = [v19 objectForKeyedSubscript:@"EndTime"];
        [v23 doubleValue];
        v25 = v24;

        if (v9 <= v25)
        {
          v26 = v22 >= v9 ? v22 : v9;
          v27 = v25 >= v12 ? v12 : v25;
          v17 = v17 + v27 - v26;
          if (v25 > v12)
          {
            break;
          }
        }

        if (v15 == ++v18)
        {
          v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v17 = 0.0;
    }

    if (v17 >= 0.0)
    {
      v28 = v17;
    }

    else
    {
      v28 = v12 - v9;
    }
  }

  return v28;
}

- (id)getFeatureTimelines:(id)timelines timeFilter:(id)filter filepath:(id)filepath
{
  timelinesCopy = timelines;
  filterCopy = filter;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  v85 = +[NSMutableDictionary dictionary];
  v89 = +[_DASPPSDataManager sharedInstance];
  v87 = filepathCopy;
  v84 = [v89 loadConfig:0 timeFilter:filterCopy filepath:filepathCopy];
  v88 = filterCopy;
  v10 = [_DASLatencyProjector getRecentUniqueInstallationEvents:"getRecentUniqueInstallationEvents:timeFilter:" timeFilter:?];
  v95 = +[NSMutableArray array];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
  if (v11)
  {
    v12 = v11;
    v101 = *v121;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v121 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v120 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = +[NSMutableDictionary dictionary];
        metricKeysAndValues = [v14 metricKeysAndValues];
        v18 = [metricKeysAndValues objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
        [v16 setObject:v18 forKeyedSubscript:@"LastUpgradeSystemTimestamp"];

        metricKeysAndValues2 = [v14 metricKeysAndValues];
        v20 = [metricKeysAndValues2 objectForKeyedSubscript:@"Build"];
        [v16 setObject:v20 forKeyedSubscript:@"Build"];

        metricKeysAndValues3 = [v14 metricKeysAndValues];
        v22 = [metricKeysAndValues3 objectForKeyedSubscript:@"InstallType"];
        [v16 setObject:v22 forKeyedSubscript:@"InstallType"];

        [v95 addObject:v16];
        objc_autoreleasePoolPop(v15);
      }

      v12 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
    }

    while (v12);
  }

  [v85 setObject:v95 forKeyedSubscript:@"Installation Events"];
  v23 = [(_DASLatencyProjector *)self getBuddyData:v88 filepath:v87];
  [v85 setObject:v23 forKeyedSubscript:@"Buddy Setup Events"];

  v83 = [v89 loadFeatureCheckpoints:timelinesCopy metrics:0 timeFilter:v88 filepath:v87];
  v82 = [_DASLatencyProjector computeFeatureTimeline:"computeFeatureTimeline:installationEvents:" installationEvents:?];
  v24 = [(_DASLatencyProjector *)self getTasksForFeatures:timelinesCopy timeFilter:0 filepath:v87];
  v25 = +[NSMutableSet set];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v97 = v24;
  v26 = [v97 countByEnumeratingWithState:&v116 objects:v127 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v117;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v117 != v28)
        {
          objc_enumerationMutation(v97);
        }

        v30 = *(*(&v116 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        v32 = [v97 objectForKeyedSubscript:v30];
        v33 = [NSSet setWithArray:v32];
        [v25 unionSet:v33];

        objc_autoreleasePoolPop(v31);
      }

      v27 = [v97 countByEnumeratingWithState:&v116 objects:v127 count:16];
    }

    while (v27);
  }

  v94 = v25;
  v34 = [v89 loadTaskCheckpoints:v25 metrics:0 timeFilter:v88 filepath:v87];
  v93 = +[NSMutableArray array];
  v35 = [obj count];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v91 = v34;
  v36 = [v91 countByEnumeratingWithState:&v112 objects:v126 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = v35 - 1;
    v102 = *v113;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v113 != v102)
        {
          objc_enumerationMutation(v91);
        }

        v40 = *(*(&v112 + 1) + 8 * k);
        v41 = objc_autoreleasePoolPush();
        v42 = +[NSMutableDictionary dictionary];
        metricKeysAndValues4 = [v40 metricKeysAndValues];
        v44 = [metricKeysAndValues4 objectForKeyedSubscript:@"CheckpointState"];
        [v42 setObject:v44 forKeyedSubscript:@"CheckpointState"];

        [v40 epochTimestamp];
        v45 = [NSNumber numberWithDouble:?];
        [v42 setObject:v45 forKeyedSubscript:@"epoch"];

        metricKeysAndValues5 = [v40 metricKeysAndValues];
        v47 = [metricKeysAndValues5 objectForKeyedSubscript:@"TaskName"];
        [v42 setObject:v47 forKeyedSubscript:@"TaskName"];

        if (v38 < 0)
        {
          v48 = 0;
        }

        else
        {
          v48 = [obj objectAtIndex:v38];
        }

        metricKeysAndValues6 = [v48 metricKeysAndValues];
        v50 = [metricKeysAndValues6 objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
        [v50 doubleValue];
        v52 = v51;

        if ((v38 & 0x8000000000000000) == 0)
        {
          while (1)
          {
            [v40 epochTimestamp];
            if (v52 < v53)
            {
              break;
            }

            v54 = v38 - 1;
            if (v38)
            {
              v55 = [obj objectAtIndex:v38 - 1];
            }

            else
            {
              v55 = 0;
            }

            metricKeysAndValues7 = [v55 metricKeysAndValues];
            v57 = [metricKeysAndValues7 objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
            [v57 doubleValue];
            v52 = v58;

            v38 = v54;
            v48 = v55;
            if (v54 + 1 <= 0)
            {
              v38 = -1;
              goto LABEL_34;
            }
          }

          v59 = [NSNumber numberWithInteger:v38];
          [v42 setObject:v59 forKeyedSubscript:@"InstallationEventIndex"];
        }

        v55 = v48;
LABEL_34:
        [v93 addObject:v42];

        objc_autoreleasePoolPop(v41);
      }

      v37 = [v91 countByEnumeratingWithState:&v112 objects:v126 count:16];
    }

    while (v37);
  }

  v60 = v25;
  v61 = [v89 loadTaskProgress:v25 metrics:0 timeFilter:v88 filepath:v87];
  v100 = +[NSMutableArray array];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v90 = v61;
  v96 = [v90 countByEnumeratingWithState:&v108 objects:v125 count:16];
  if (v96)
  {
    v92 = *v109;
    do
    {
      v62 = 0;
      do
      {
        if (*v109 != v92)
        {
          objc_enumerationMutation(v90);
        }

        v98 = v62;
        v63 = *(*(&v108 + 1) + 8 * v62);
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v103 = v60;
        v64 = [v103 countByEnumeratingWithState:&v104 objects:v124 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v105;
          do
          {
            for (m = 0; m != v65; m = m + 1)
            {
              if (*v105 != v66)
              {
                objc_enumerationMutation(v103);
              }

              v68 = *(*(&v104 + 1) + 8 * m);
              metricKeysAndValues8 = [v63 metricKeysAndValues];
              v70 = [metricKeysAndValues8 objectForKeyedSubscript:@"Identifier"];
              v71 = [v70 containsString:v68];

              if (v71)
              {
                v72 = objc_autoreleasePoolPush();
                v73 = +[NSMutableDictionary dictionary];
                [v73 setObject:v68 forKeyedSubscript:@"TaskName"];
                [v63 epochTimestamp];
                v74 = [NSNumber numberWithDouble:?];
                [v73 setObject:v74 forKeyedSubscript:@"epoch"];

                metricKeysAndValues9 = [v63 metricKeysAndValues];
                v76 = [metricKeysAndValues9 objectForKeyedSubscript:@"Identifier"];
                [v73 setObject:v76 forKeyedSubscript:@"Identifier"];

                metricKeysAndValues10 = [v63 metricKeysAndValues];
                v78 = [metricKeysAndValues10 objectForKeyedSubscript:@"ItemsCompleted"];
                [v73 setObject:v78 forKeyedSubscript:@"ItemsCompleted"];

                metricKeysAndValues11 = [v63 metricKeysAndValues];
                v80 = [metricKeysAndValues11 objectForKeyedSubscript:@"TotalItemCount"];
                [v73 setObject:v80 forKeyedSubscript:@"TotalItemCount"];

                [v100 addObject:v73];
                objc_autoreleasePoolPop(v72);
              }
            }

            v65 = [v103 countByEnumeratingWithState:&v104 objects:v124 count:16];
          }

          while (v65);
        }

        v62 = v98 + 1;
        v60 = v94;
      }

      while ((v98 + 1) != v96);
      v96 = [v90 countByEnumeratingWithState:&v108 objects:v125 count:16];
    }

    while (v96);
  }

  [v85 setObject:v82 forKeyedSubscript:@"Feature Checkpoints"];
  [v85 setObject:v97 forKeyedSubscript:@"Feature To Tasks Mapping"];
  [v85 setObject:v93 forKeyedSubscript:@"Task Checkpoints"];
  [v85 setObject:v100 forKeyedSubscript:@"Progress Checkpoints"];

  return v85;
}

- (id)getEligibilityTimelinesForTasks:(id)tasks timeFilter:(id)filter filepath:(id)filepath
{
  tasksCopy = tasks;
  filterCopy = filter;
  filepathCopy = filepath;
  v25 = +[NSMutableDictionary dictionary];
  v11 = [(_DASLatencyProjector *)self findActivitiesByName:tasksCopy];
  v23 = filepathCopy;
  v24 = filterCopy;
  v12 = [(_DASLatencyProjector *)self getDeviceConditionTimelines:filterCopy filepath:filepathCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = tasksCopy;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v11 objectForKeyedSubscript:v18];

        if (v19)
        {
          v20 = [v11 objectForKeyedSubscript:v18];
          v21 = [(_DASLatencyProjector *)self getEligibleRuntimeForTask:v20 deviceConditionTimelines:v12];
          [v25 setObject:v21 forKeyedSubscript:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  return v25;
}

- (id)getEligibleRuntimeForTask:(id)task deviceConditionTimelines:(id)timelines
{
  taskCopy = task;
  timelinesCopy = timelines;
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  requiresPlugin = [taskCopy requiresPlugin];
  if (requiresPlugin)
  {
    v11 = [timelinesCopy objectForKeyedSubscript:@"IsPluggedIn"];
    if (![v11 count])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10012D2FC(log);
      }

      goto LABEL_22;
    }

    [v9 addObjectsFromArray:v11];
  }

  requiresDeviceInactivity = [taskCopy requiresDeviceInactivity];
  if (!requiresDeviceInactivity)
  {
    goto LABEL_7;
  }

  v11 = [timelinesCopy objectForKeyedSubscript:@"UserActivityStatus"];
  if (![v11 count])
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10012D26C(v24);
    }

LABEL_22:
    v25 = v8;

    goto LABEL_73;
  }

  [v9 addObjectsFromArray:v11];

LABEL_7:
  LODWORD(v13) = [taskCopy requiresNetwork];
  v79 = taskCopy;
  v80 = v8;
  v78 = timelinesCopy;
  if (v13)
  {
    v14 = [timelinesCopy objectForKeyedSubscript:@"NetworkQuality"];
    if (![v14 count])
    {
      v26 = self->_log;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10012D1DC(v26);
      }

      goto LABEL_72;
    }

    v81 = v13;
    v86 = requiresDeviceInactivity;
    v89 = requiresPlugin;
    v13 = v9;
    v76 = v14;
    if ([taskCopy requiresInexpensiveNetworking])
    {
      v106 = 0uLL;
      v107 = 0uLL;
      v104 = 0uLL;
      v105 = 0uLL;
      obj = v14;
      v15 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v105;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v105 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v104 + 1) + 8 * i);
            v119[0] = @"epoch";
            v20 = [v19 objectForKeyedSubscript:@"epoch"];
            v120[0] = v20;
            v119[1] = @"NetworkQuality";
            v21 = [v19 objectForKeyedSubscript:@"WifiQuality"];
            v120[1] = v21;
            v22 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:2];
            [v13 addObject:v22];
          }

          v16 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v110 = 0uLL;
      v111 = 0uLL;
      v108 = 0uLL;
      v109 = 0uLL;
      obja = v14;
      v27 = [obja countByEnumeratingWithState:&v108 objects:v124 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v109;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v109 != v29)
            {
              objc_enumerationMutation(obja);
            }

            v31 = *(*(&v108 + 1) + 8 * j);
            v32 = [v31 objectForKeyedSubscript:@"WifiQuality"];
            unsignedIntegerValue = [v32 unsignedIntegerValue];

            v34 = [v31 objectForKeyedSubscript:@"CellQuality"];
            unsignedIntegerValue2 = [v34 unsignedIntegerValue];

            v122[0] = @"epoch";
            v36 = [v31 objectForKeyedSubscript:@"epoch"];
            v122[1] = @"NetworkQuality";
            v123[0] = v36;
            if (unsignedIntegerValue <= unsignedIntegerValue2)
            {
              v37 = unsignedIntegerValue2;
            }

            else
            {
              v37 = unsignedIntegerValue;
            }

            v38 = [NSNumber numberWithUnsignedInteger:v37];
            v123[1] = v38;
            v39 = [NSDictionary dictionaryWithObjects:v123 forKeys:v122 count:2];
            [v13 addObject:v39];
          }

          v28 = [obja countByEnumeratingWithState:&v108 objects:v124 count:16];
        }

        while (v28);
      }
    }

    taskCopy = v79;
    v8 = v80;
    timelinesCopy = v78;
    v9 = v13;
    LOBYTE(requiresPlugin) = v89;
    LOBYTE(requiresDeviceInactivity) = v86;
    LOBYTE(v13) = v81;
  }

  dataBudgeted = [taskCopy dataBudgeted];
  if (dataBudgeted)
  {
    v14 = [timelinesCopy objectForKeyedSubscript:@"NetworkQuality"];
    if ([v14 count])
    {
      v82 = v13;
      selfCopy = self;
      v87 = requiresDeviceInactivity;
      v90 = requiresPlugin;
      v41 = v9;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      objb = v14;
      v42 = [objb countByEnumeratingWithState:&v100 objects:v118 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v101;
        do
        {
          for (k = 0; k != v43; k = k + 1)
          {
            if (*v101 != v44)
            {
              objc_enumerationMutation(objb);
            }

            v46 = *(*(&v100 + 1) + 8 * k);
            v116[0] = @"epoch";
            v47 = [v46 objectForKeyedSubscript:@"epoch"];
            v117[0] = v47;
            v116[1] = @"DataBudget";
            v48 = [v46 objectForKeyedSubscript:@"DataBudget"];
            v117[1] = v48;
            v49 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:2];
            [v41 addObject:v49];
          }

          v43 = [objb countByEnumeratingWithState:&v100 objects:v118 count:16];
        }

        while (v43);
      }

      taskCopy = v79;
      v8 = v80;
      timelinesCopy = v78;
      v9 = v41;
      LOBYTE(requiresPlugin) = v90;
      LOBYTE(requiresDeviceInactivity) = v87;
      self = selfCopy;
      LOBYTE(v13) = v82;
      goto LABEL_46;
    }

    v73 = self->_log;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_10012D1DC(v73);
    }

LABEL_72:
    v74 = v8;

    goto LABEL_73;
  }

LABEL_46:
  if ([v9 count])
  {
    v50 = [NSSortDescriptor sortDescriptorWithKey:@"epoch" ascending:1];
    v115 = v50;
    v51 = [NSArray arrayWithObjects:&v115 count:1];
    [v9 sortUsingDescriptors:v51];

    v52 = [v9 objectAtIndexedSubscript:0];
    v91 = [v52 objectForKeyedSubscript:@"epoch"];

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v77 = v9;
    v83 = v9;
    v88 = [v83 countByEnumeratingWithState:&v96 objects:v114 count:16];
    if (v88)
    {
      v53 = 0;
      bOOLValue = requiresPlugin ^ 1;
      LOBYTE(objc) = requiresDeviceInactivity ^ 1;
      v55 = v13 ^ 1;
      v56 = dataBudgeted ^ 1;
      v85 = *v97;
      do
      {
        for (m = 0; m != v88; m = m + 1)
        {
          if (*v97 != v85)
          {
            objc_enumerationMutation(v83);
          }

          v58 = *(*(&v96 + 1) + 8 * m);
          v59 = [v58 objectForKey:@"IsPluggedIn"];

          if (v59)
          {
            v60 = [v58 objectForKeyedSubscript:@"IsPluggedIn"];
            bOOLValue = [v60 BOOLValue];
          }

          v61 = [v58 objectForKey:@"UserActivityStatus"];

          if (v61)
          {
            v62 = [v58 objectForKeyedSubscript:@"UserActivityStatus"];
            objc = [v62 BOOLValue] ^ 1;
          }

          v63 = [v58 objectForKey:@"NetworkQuality"];

          if (v63)
          {
            v64 = [v58 objectForKeyedSubscript:@"NetworkQuality"];
            v55 = [v64 unsignedIntegerValue] > 0x13;
          }

          v65 = [v58 objectForKey:@"DataBudget"];

          if (v65)
          {
            v66 = [v58 objectForKeyedSubscript:@"DataBudget"];
            v56 = [v66 integerValue] > 0;
          }

          if ((v53 & 1) != (bOOLValue & objc & (v55 & v56) & 1))
          {
            v67 = [v58 objectForKeyedSubscript:@"epoch"];
            v68 = v67;
            if (v53)
            {
              v112[0] = @"StartTime";
              v112[1] = @"EndTime";
              v113[0] = v91;
              v113[1] = v67;
              v69 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
              [v80 addObject:v69];
            }

            v53 = bOOLValue & objc & v55 & v56;
            v91 = v68;
          }
        }

        v88 = [v83 countByEnumeratingWithState:&v96 objects:v114 count:16];
      }

      while (v88);
    }

    v8 = v80;
    v70 = v80;

    timelinesCopy = v78;
    taskCopy = v79;
    v9 = v77;
  }

  else
  {
    v71 = self->_log;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_10012D14C(v71);
    }

    v72 = v8;
  }

LABEL_73:

  return v8;
}

- (id)getDeviceConditionTimelines:(id)timelines filepath:(id)filepath
{
  timelinesCopy = timelines;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = +[_DASPPSDataManager sharedInstance];
  v28 = [NSSet setWithObject:@"IsPluggedIn"];
  v27 = [v9 getPPSTimeSeries:@"BackgroundProcessing" category:@"SystemConditionsBattery" valueFilter:0 metrics:0 timeFilter:? filepath:? error:?];
  v26 = [_DASLatencyProjector computeDeviceConditionsStatus:"computeDeviceConditionsStatus:metric:" metric:?];
  [v8 setObject:? forKeyedSubscript:?];
  v25 = [NSSet setWithObject:@"MemoryPressure"];
  v24 = [v9 getPPSTimeSeries:@"BackgroundProcessing" category:@"SystemConditionsOther" valueFilter:0 metrics:0 timeFilter:? filepath:? error:?];
  v23 = [_DASLatencyProjector computeDeviceConditionsStatus:"computeDeviceConditionsStatus:metric:" metric:?];
  [v8 setObject:? forKeyedSubscript:?];
  v10 = [NSSet setWithObjects:@"WifiQuality", @"CellQuality", @"DataBudget", 0];
  v22 = [v9 getPPSTimeSeries:@"BackgroundProcessing" category:@"SystemConditionsNetwork" valueFilter:0 metrics:v10 timeFilter:timelinesCopy filepath:filepathCopy error:0];
  v21 = [_DASLatencyProjector computeDeviceConditionsStatus:"computeDeviceConditionsStatus:gatherMetrics:" gatherMetrics:?];
  [v8 setObject:? forKeyedSubscript:?];
  v11 = [NSSet setWithObjects:@"UserActivityStatus", @"CPUPressure", @"ThermalPressure", 0];
  v29 = v9;
  v30 = filepathCopy;
  v31 = timelinesCopy;
  v12 = [v9 getPPSTimeSeries:@"BackgroundProcessing" category:@"SystemConditionsPowerManagement" valueFilter:0 metrics:v11 timeFilter:timelinesCopy filepath:filepathCopy error:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [(_DASLatencyProjector *)self computeDeviceConditionsStatus:v12 metric:v18];
        [v8 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  return v8;
}

- (id)getSchedulerEfficiencyMetrics:(id)metrics filepath:(id)filepath
{
  metricsCopy = metrics;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  selfCopy = self;
  v116 = +[NSMutableDictionary dictionary];
  +[_DASPPSDataManager sharedInstance];
  v117 = v161 = 0;
  v118 = filepathCopy;
  v119 = metricsCopy;
  v8 = [v117 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskMetadata" valueFilter:0 metrics:0 timeFilter:metricsCopy filepath:filepathCopy error:&v161];
  v9 = v161;
  v145 = +[NSMutableDictionary dictionary];
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v157 objects:v170 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v158;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v158 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v157 + 1) + 8 * i);
        metricKeysAndValues = [v14 metricKeysAndValues];
        metricKeysAndValues2 = [v14 metricKeysAndValues];
        v17 = [metricKeysAndValues2 objectForKeyedSubscript:@"TaskID"];
        [v145 setObject:metricKeysAndValues forKeyedSubscript:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v157 objects:v170 count:16];
    }

    while (v11);
  }

  v156 = v9;
  v18 = [v117 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskInstanceData" valueFilter:0 metrics:0 timeFilter:v119 filepath:v118 error:&v156];
  v19 = v156;

  v155 = v19;
  v20 = [v117 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskInstanceStore" valueFilter:0 metrics:0 timeFilter:v119 filepath:v118 error:&v155];
  v115 = v155;

  v21 = +[NSMutableDictionary dictionary];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v142 = v20;
  v22 = [v142 countByEnumeratingWithState:&v151 objects:v169 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v152;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v152 != v24)
        {
          objc_enumerationMutation(v142);
        }

        v26 = *(*(&v151 + 1) + 8 * j);
        metricKeysAndValues3 = [v26 metricKeysAndValues];
        v28 = [metricKeysAndValues3 objectForKeyedSubscript:@"TaskInstanceID"];

        metricKeysAndValues4 = [v26 metricKeysAndValues];
        v30 = [metricKeysAndValues4 objectForKeyedSubscript:@"TaskID"];

        v31 = [v145 objectForKeyedSubscript:v30];
        [v21 setObject:v31 forKeyedSubscript:v28];
      }

      v23 = [v142 countByEnumeratingWithState:&v151 objects:v169 count:16];
    }

    while (v23);
  }

  v136 = v21;

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v141 = v18;
  v32 = [v141 countByEnumeratingWithState:&v147 objects:v168 count:16];
  if (!v32)
  {
    v140 = 0;
    v34 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v124 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    goto LABEL_74;
  }

  v33 = v32;
  v140 = 0;
  v144 = *v148;
  v34 = 0.0;
  v35 = &NSLocalizedDescriptionKey_ptr;
  v36 = 0.0;
  v37 = 0.0;
  v124 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = selfCopy;
  do
  {
    v41 = 0;
    v139 = v33;
    do
    {
      if (*v148 != v144)
      {
        objc_enumerationMutation(v141);
      }

      v42 = *(*(&v147 + 1) + 8 * v41);
      metricKeysAndValues5 = [v42 metricKeysAndValues];
      v146 = [metricKeysAndValues5 objectForKeyedSubscript:@"TaskInstanceID"];

      metricKeysAndValues6 = [v42 metricKeysAndValues];
      v45 = [metricKeysAndValues6 objectForKeyedSubscript:@"StartDate"];

      metricKeysAndValues7 = [v42 metricKeysAndValues];
      v47 = [metricKeysAndValues7 objectForKeyedSubscript:@"EndDate"];

      null = [(NSErrorUserInfoKey *)v35[124] null];
      if ([v45 isEqual:null])
      {

LABEL_25:
        log = v40->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v52 = log;
          metricKeysAndValues8 = [v42 metricKeysAndValues];
          v54 = [metricKeysAndValues8 objectForKeyedSubscript:@"TaskInstanceID"];
          *buf = 138412802;
          v163 = v54;
          v164 = 2112;
          v165 = v45;
          v166 = 2112;
          v167 = v47;
          _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Task instance %@ has malformed start(%@) or end(%@) date", buf, 0x20u);
        }

        goto LABEL_70;
      }

      null2 = [(NSErrorUserInfoKey *)v35[124] null];
      v50 = [v47 isEqual:null2];

      if (v50)
      {
        goto LABEL_25;
      }

      [v47 doubleValue];
      v56 = v55;
      [v45 doubleValue];
      v58 = v57;
      metricKeysAndValues9 = [v42 metricKeysAndValues];
      v60 = [metricKeysAndValues9 objectForKeyedSubscript:@"IndeedIntensive"];
      v61 = +[NSNull null];
      if ([v60 isEqual:v61])
      {
      }

      else
      {
        metricKeysAndValues10 = [v42 metricKeysAndValues];
        v63 = [metricKeysAndValues10 objectForKeyedSubscript:@"IndeedIntensive"];
        bOOLValue = [v63 BOOLValue];

        if (bOOLValue)
        {
          [v47 doubleValue];
          v66 = v65;
          [v45 doubleValue];
          v124 = v124 + v66 - v67;
        }

        v33 = v139;
      }

      v68 = [v136 objectForKeyedSubscript:v146];

      if (v68)
      {
        v69 = [v136 objectForKeyedSubscript:v146];
        v70 = [v69 objectForKeyedSubscript:@"IsCPUIntensive"];
        v71 = +[NSNull null];
        v137 = [v70 isEqual:v71];
        if ((v137 & 1) == 0)
        {
          v72 = v71;
          v73 = [v69 objectForKeyedSubscript:@"IsCPUIntensive"];
          if ([v73 BOOLValue])
          {

            v74 = v73;
            v40 = selfCopy;
            goto LABEL_63;
          }

          v138 = v73;
          v71 = v72;
        }

        v75 = [v69 objectForKeyedSubscript:@"IsMemoryIntensive"];
        v133 = +[NSNull null];
        v134 = v75;
        v76 = [v75 isEqual:?];
        if ((v76 & 1) == 0)
        {
          v129 = [v69 objectForKeyedSubscript:@"IsMemoryIntensive"];
          if ([v129 BOOLValue])
          {
            v77 = 1;
            v74 = v138;
            v40 = selfCopy;
            goto LABEL_58;
          }
        }

        v132 = v76;
        v78 = [v69 objectForKeyedSubscript:@"IsANEIntensive"];
        v130 = +[NSNull null];
        v131 = v78;
        v79 = [v78 isEqual:?];
        if ((v79 & 1) == 0)
        {
          v123 = [v69 objectForKeyedSubscript:@"IsANEIntensive"];
          if ([v123 BOOLValue])
          {
            v77 = 1;
            v74 = v138;
            v40 = selfCopy;
            goto LABEL_56;
          }
        }

        v127 = v79;
        v128 = v71;
        v80 = [v69 objectForKeyedSubscript:@"IsGPUIntensive"];
        v125 = +[NSNull null];
        v126 = v80;
        v81 = [v80 isEqual:?];
        if ((v81 & 1) == 0)
        {
          v121 = [v69 objectForKeyedSubscript:@"IsGPUIntensive"];
          if ([v121 BOOLValue])
          {
            v77 = 1;
            v74 = v138;
            v40 = selfCopy;
            goto LABEL_54;
          }
        }

        v122 = v70;
        v82 = [v69 objectForKeyedSubscript:@"IsDiskIntensive"];
        v83 = +[NSNull null];
        if ([v82 isEqual:v83])
        {

          v77 = 0;
          v74 = v138;
          if (v81)
          {
            v40 = selfCopy;
            v70 = v122;
            goto LABEL_55;
          }

          v40 = selfCopy;
          v70 = v122;
LABEL_54:
        }

        else
        {
          v84 = [v69 objectForKeyedSubscript:@"IsDiskIntensive"];
          bOOLValue2 = [v84 BOOLValue];

          v74 = v138;
          if ((v81 & 1) == 0)
          {
            v40 = selfCopy;
            v70 = v122;
            v77 = bOOLValue2;
            goto LABEL_54;
          }

          v40 = selfCopy;
          v70 = v122;
          v77 = bOOLValue2;
        }

LABEL_55:

        v71 = v128;
        if ((v127 & 1) == 0)
        {
LABEL_56:
        }

        if ((v132 & 1) == 0)
        {
LABEL_58:
        }

        if (v137)
        {

          if (!v77)
          {
            goto LABEL_64;
          }

LABEL_63:
          [v47 doubleValue];
          v86 = v85;
          [v45 doubleValue];
          v38 = v38 + v86 - v87;
        }

        else
        {

          if (v77)
          {
            goto LABEL_63;
          }
        }

LABEL_64:
        v138 = v74;

        v33 = v139;
        goto LABEL_65;
      }

      v40 = selfCopy;
LABEL_65:
      v39 = v39 + v56 - v58;
      metricKeysAndValues11 = [v42 metricKeysAndValues];
      v89 = [metricKeysAndValues11 objectForKeyedSubscript:@"ScheduleBeforeDate"];

      [v45 doubleValue];
      v91 = v90;
      [v89 doubleValue];
      v93 = v91 - v92;
      if (v93 >= 0.0)
      {
        v37 = v37 + v93;
      }

      [v45 doubleValue];
      v95 = v94;
      metricKeysAndValues12 = [v42 metricKeysAndValues];
      v97 = [metricKeysAndValues12 objectForKeyedSubscript:@"ScheduleAfterDate"];
      [v97 doubleValue];
      v99 = v95 - v98;

      v36 = v36 + v99;
      if (v34 < v99)
      {
        v34 = v99;
      }

      metricKeysAndValues13 = [v42 metricKeysAndValues];
      v101 = [metricKeysAndValues13 objectForKeyedSubscript:@"SuspensionReason"];

      v102 = +[NSNull null];
      v103 = [v101 isEqual:v102];

      v140 += v103;
LABEL_70:

      v41 = v41 + 1;
      v35 = &NSLocalizedDescriptionKey_ptr;
    }

    while (v33 != v41);
    v33 = [v141 countByEnumeratingWithState:&v147 objects:v168 count:16];
  }

  while (v33);
LABEL_74:

  v104 = v37 / [v141 count];
  v105 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v141 count]);
  [v116 setObject:v105 forKeyedSubscript:@"NumberOfTasksRan"];

  v106 = [NSNumber numberWithUnsignedInteger:v140];
  [v116 setObject:v106 forKeyedSubscript:@"NumberOfTasksCompleted"];

  v107 = [NSNumber numberWithDouble:v104];
  [v116 setObject:v107 forKeyedSubscript:@"AverageOverdueDelay"];

  v108 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v36 / [v141 count]);
  [v116 setObject:v108 forKeyedSubscript:@"AverageSchedulingDelay"];

  v109 = [NSNumber numberWithDouble:v34];
  [v116 setObject:v109 forKeyedSubscript:@"LongestSchedulingDelay"];

  v110 = [NSNumber numberWithDouble:v39];
  [v116 setObject:v110 forKeyedSubscript:@"TotalProcessingTime"];

  v111 = [NSNumber numberWithDouble:v38];
  [v116 setObject:v111 forKeyedSubscript:@"TotalIntensiveProcessingTime"];

  v112 = [NSNumber numberWithDouble:v124];
  [v116 setObject:v112 forKeyedSubscript:@"ActualIntensiveProcessingTime"];

  v113 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v142 count]);
  [v116 setObject:v113 forKeyedSubscript:@"SubmittedTasks"];

  return v116;
}

- (id)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)metrics filepath:(id)filepath
{
  metricsCopy = metrics;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  v165 = +[NSMutableDictionary dictionary];
  v174 = +[NSMutableArray array];
  v8 = +[_DASPPSDataManager sharedInstance];
  selfCopy = self;
  taskIsOvernightIntensivePredicate = [(_DASLatencyProjector *)self taskIsOvernightIntensivePredicate];
  v257 = 0;
  v166 = v8;
  v167 = filepathCopy;
  v168 = metricsCopy;
  v10 = [v8 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskMetadata" valueFilter:taskIsOvernightIntensivePredicate metrics:0 timeFilter:metricsCopy filepath:filepathCopy error:&v257];
  v11 = v257;

  v181 = +[NSMutableDictionary dictionary];
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v253 objects:v275 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v254;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v254 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v253 + 1) + 8 * i);
        metricKeysAndValues = [v16 metricKeysAndValues];
        metricKeysAndValues2 = [v16 metricKeysAndValues];
        v19 = [metricKeysAndValues2 objectForKeyedSubscript:@"TaskID"];
        [v181 setObject:metricKeysAndValues forKeyedSubscript:v19];
      }

      v13 = [obj countByEnumeratingWithState:&v253 objects:v275 count:16];
    }

    while (v13);
  }

  v252 = v11;
  v173 = [v166 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskInstanceData" valueFilter:0 metrics:0 timeFilter:v168 filepath:v167 error:&v252];
  v20 = v252;

  v251 = v20;
  v21 = [v166 getPPSTimeSeries:@"BackgroundProcessing" category:@"TaskInstanceStore" valueFilter:0 metrics:0 timeFilter:v168 filepath:v167 error:&v251];
  v164 = v251;

  v203 = +[NSMutableDictionary dictionary];
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v169 = v21;
  v22 = [v169 countByEnumeratingWithState:&v247 objects:v274 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v248;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v248 != v24)
        {
          objc_enumerationMutation(v169);
        }

        v26 = *(*(&v247 + 1) + 8 * j);
        metricKeysAndValues3 = [v26 metricKeysAndValues];
        v28 = [metricKeysAndValues3 objectForKeyedSubscript:@"TaskInstanceID"];

        metricKeysAndValues4 = [v26 metricKeysAndValues];
        v30 = [metricKeysAndValues4 objectForKeyedSubscript:@"TaskID"];

        v31 = [v181 objectForKeyedSubscript:v30];

        if (v31)
        {
          v32 = [v181 objectForKeyedSubscript:v30];
          [v203 setObject:v32 forKeyedSubscript:v28];
        }
      }

      v23 = [v169 countByEnumeratingWithState:&v247 objects:v274 count:16];
    }

    while (v23);
  }

  v197 = +[NSCountedSet set];
  v188 = +[NSCountedSet set];
  v187 = +[NSCountedSet set];
  v163 = [(_DASLatencyProjector *)selfCopy getDeviceConditionTimelines:v168 filepath:v167];
  [(_DASLatencyProjector *)selfCopy computeIntensiveEligibleSessions:?];
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v171 = v246 = 0u;
  v175 = [v171 countByEnumeratingWithState:&v243 objects:v273 count:16];
  if (v175)
  {
    v172 = *v244;
    do
    {
      v33 = 0;
      do
      {
        if (*v244 != v172)
        {
          objc_enumerationMutation(v171);
        }

        v179 = v33;
        v34 = *(*(&v243 + 1) + 8 * v33);
        v35 = [v34 objectForKeyedSubscript:@"StartTime"];
        [v34 objectForKeyedSubscript:@"EndTime"];
        v195 = v182 = v35;
        v178 = [NSPredicate predicateWithFormat:@"ScheduleAfterDate <= %@ && StartDate >= %@", v195, v35];
        v36 = [v173 filteredTimeSeriesUsingPredicate:?];
        v199 = +[NSCountedSet set];
        v190 = +[NSCountedSet set];
        v37 = +[NSCountedSet set];
        v239 = 0u;
        v240 = 0u;
        v241 = 0u;
        v242 = 0u;
        v204 = v36;
        v38 = [v204 countByEnumeratingWithState:&v239 objects:v272 count:16];
        v39 = v203;
        if (v38)
        {
          v40 = v38;
          v41 = *v240;
          v42 = 0.0;
          do
          {
            for (k = 0; k != v40; k = k + 1)
            {
              if (*v240 != v41)
              {
                objc_enumerationMutation(v204);
              }

              v44 = *(*(&v239 + 1) + 8 * k);
              metricKeysAndValues5 = [v44 metricKeysAndValues];
              v46 = [metricKeysAndValues5 objectForKeyedSubscript:@"TaskInstanceID"];
              v47 = [v39 objectForKeyedSubscript:v46];

              if (v47)
              {
                v48 = [v47 objectForKeyedSubscript:@"Name"];
                if (v48)
                {
                  [v199 addObject:v48];
                  [v197 addObject:v48];
                  metricKeysAndValues6 = [v44 metricKeysAndValues];
                  v50 = [metricKeysAndValues6 objectForKeyedSubscript:@"StartDate"];
                  unsignedIntegerValue = [v50 unsignedIntegerValue];

                  if (unsignedIntegerValue)
                  {
                    v52 = unsignedIntegerValue;
                    if (unsignedIntegerValue <= [v195 unsignedIntegerValue])
                    {
                      [v190 addObject:v48];
                      [v188 addObject:v48];
                      metricKeysAndValues7 = [v44 metricKeysAndValues];
                      v54 = [metricKeysAndValues7 objectForKeyedSubscript:@"EndDate"];
                      v42 = v42 + [v54 unsignedIntegerValue] - v52;

                      metricKeysAndValues8 = [v44 metricKeysAndValues];
                      v56 = [metricKeysAndValues8 objectForKeyedSubscript:@"SuspensionReason"];
                      v57 = +[NSNull null];
                      v58 = [v56 isEqual:v57];

                      if (v58)
                      {
                        [v37 addObject:v48];
                        [v187 addObject:v48];
                      }
                    }
                  }

                  v39 = v203;
                }

                else
                {
                  log = selfCopy->_log;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v271 = v47;
                    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Task instance %@ does not have a valid task name", buf, 0xCu);
                  }
                }
              }
            }

            v40 = [v204 countByEnumeratingWithState:&v239 objects:v272 count:16];
          }

          while (v40);
        }

        else
        {
          v42 = 0.0;
        }

        v60 = [v199 count];
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        v61 = v199;
        v62 = [v61 countByEnumeratingWithState:&v235 objects:v269 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = 0;
          v65 = *v236;
          do
          {
            for (m = 0; m != v63; m = m + 1)
            {
              if (*v236 != v65)
              {
                objc_enumerationMutation(v61);
              }

              v64 += [v61 countForObject:*(*(&v235 + 1) + 8 * m)];
            }

            v63 = [v61 countByEnumeratingWithState:&v235 objects:v269 count:16];
          }

          while (v63);
        }

        else
        {
          v64 = 0;
        }

        v200 = [v190 count];
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v234 = 0u;
        v67 = v190;
        v68 = [v67 countByEnumeratingWithState:&v231 objects:v268 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = 0;
          v71 = *v232;
          do
          {
            for (n = 0; n != v69; n = n + 1)
            {
              if (*v232 != v71)
              {
                objc_enumerationMutation(v67);
              }

              v70 += [v67 countForObject:*(*(&v231 + 1) + 8 * n)];
            }

            v69 = [v67 countByEnumeratingWithState:&v231 objects:v268 count:16];
          }

          while (v69);
        }

        else
        {
          v70 = 0;
        }

        v191 = [v37 count];
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v73 = v67;
        v74 = [v73 countByEnumeratingWithState:&v227 objects:v267 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = 0;
          v77 = *v228;
          do
          {
            for (ii = 0; ii != v75; ii = ii + 1)
            {
              if (*v228 != v77)
              {
                objc_enumerationMutation(v73);
              }

              v76 += [v37 countForObject:*(*(&v227 + 1) + 8 * ii)];
            }

            v75 = [v73 countByEnumeratingWithState:&v227 objects:v267 count:16];
          }

          while (v75);
        }

        else
        {
          v76 = 0;
        }

        v265[0] = @"StartTime";
        v265[1] = @"EndTime";
        v266[0] = v182;
        v266[1] = v195;
        v265[2] = @"TasksSubmitted";
        v177 = [NSNumber numberWithUnsignedInteger:v64];
        v266[2] = v177;
        v265[3] = @"UniqueTasksSubmitted";
        v176 = [NSNumber numberWithUnsignedInteger:v60];
        v266[3] = v176;
        v265[4] = @"TasksRun";
        v79 = [NSNumber numberWithUnsignedInteger:v70];
        v266[4] = v79;
        v265[5] = @"UniqueTasksRun";
        v80 = [NSNumber numberWithUnsignedInteger:v200];
        v266[5] = v80;
        v265[6] = @"TasksCompleted";
        v81 = [NSNumber numberWithUnsignedInteger:v76];
        v266[6] = v81;
        v265[7] = @"UniqueTasksCompleted";
        v82 = [NSNumber numberWithUnsignedInteger:v191];
        v266[7] = v82;
        v265[8] = @"IntensiveRuntime";
        v83 = [NSNumber numberWithDouble:v42];
        v266[8] = v83;
        v84 = [NSDictionary dictionaryWithObjects:v266 forKeys:v265 count:9];

        [v174 addObject:v84];
        v33 = v179 + 1;
      }

      while ((v179 + 1) != v175);
      v175 = [v171 countByEnumeratingWithState:&v243 objects:v273 count:16];
    }

    while (v175);
  }

  v185 = [v197 count];
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v85 = v197;
  v86 = [v85 countByEnumeratingWithState:&v223 objects:v264 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = 0;
    v89 = *v224;
    do
    {
      for (jj = 0; jj != v87; jj = jj + 1)
      {
        if (*v224 != v89)
        {
          objc_enumerationMutation(v85);
        }

        v88 += [v85 countForObject:*(*(&v223 + 1) + 8 * jj)];
      }

      v87 = [v85 countByEnumeratingWithState:&v223 objects:v264 count:16];
    }

    while (v87);
  }

  else
  {
    v88 = 0;
  }

  v192 = v85;

  v183 = [v188 count];
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v91 = v188;
  v92 = [v91 countByEnumeratingWithState:&v219 objects:v263 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = 0;
    v95 = *v220;
    do
    {
      for (kk = 0; kk != v93; kk = kk + 1)
      {
        if (*v220 != v95)
        {
          objc_enumerationMutation(v91);
        }

        v94 += [v91 countForObject:*(*(&v219 + 1) + 8 * kk)];
      }

      v93 = [v91 countByEnumeratingWithState:&v219 objects:v263 count:16];
    }

    while (v93);
  }

  else
  {
    v94 = 0;
  }

  v180 = [v187 count];
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v97 = v91;
  v98 = [v97 countByEnumeratingWithState:&v215 objects:v262 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = 0;
    v101 = *v216;
    do
    {
      for (mm = 0; mm != v99; mm = mm + 1)
      {
        if (*v216 != v101)
        {
          objc_enumerationMutation(v97);
        }

        v100 += [v187 countForObject:*(*(&v215 + 1) + 8 * mm)];
      }

      v99 = [v97 countByEnumeratingWithState:&v215 objects:v262 count:16];
    }

    while (v99);
  }

  else
  {
    v100 = 0;
  }

  v189 = v97;

  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v198 = v174;
  v103 = [v198 countByEnumeratingWithState:&v211 objects:v261 count:16];
  v104 = 0.0;
  v105 = 0.0;
  if (v103)
  {
    v106 = v103;
    v107 = *v212;
    do
    {
      for (nn = 0; nn != v106; nn = nn + 1)
      {
        if (*v212 != v107)
        {
          objc_enumerationMutation(v198);
        }

        v109 = *(*(&v211 + 1) + 8 * nn);
        v110 = [v109 objectForKeyedSubscript:@"EndTime"];
        [v110 doubleValue];
        v112 = v111;
        v113 = [v109 objectForKeyedSubscript:@"StartTime"];
        [v113 doubleValue];
        v105 = v105 + v112 - v114;

        v115 = [v109 objectForKeyedSubscript:@"IntensiveRuntime"];
        [v115 doubleValue];
        v104 = v104 + v116;
      }

      v106 = [v198 countByEnumeratingWithState:&v211 objects:v261 count:16];
    }

    while (v106);
  }

  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v196 = v173;
  v117 = [v196 countByEnumeratingWithState:&v207 objects:v260 count:16];
  if (v117)
  {
    v118 = v117;
    v205 = *v208;
    v201 = 0.0;
    v119 = 3.40282347e38;
    v120 = 0.0;
    v121 = 0.0;
    v122 = 0.0;
    v123 = 0.0;
    v124 = v203;
    do
    {
      for (i1 = 0; i1 != v118; i1 = i1 + 1)
      {
        if (*v208 != v205)
        {
          objc_enumerationMutation(v196);
        }

        v126 = *(*(&v207 + 1) + 8 * i1);
        metricKeysAndValues9 = [v126 metricKeysAndValues];
        v128 = [metricKeysAndValues9 objectForKeyedSubscript:@"TaskInstanceID"];
        v129 = [v124 objectForKeyedSubscript:v128];

        if (v129)
        {
          metricKeysAndValues10 = [v126 metricKeysAndValues];
          v131 = [metricKeysAndValues10 objectForKeyedSubscript:@"StartDate"];

          v132 = +[NSNull null];
          v133 = [v131 isEqual:v132];

          if ((v133 & 1) == 0)
          {
            metricKeysAndValues11 = [v126 metricKeysAndValues];
            [(_DASLatencyProjector *)selfCopy computeEligibleSchedulingDelay:metricKeysAndValues11 eligibilityTimeline:v171];
            v136 = v135;

            v123 = v123 + v136;
            if (v136 >= v122)
            {
              v122 = v136;
            }

            if (v136 < v119)
            {
              v119 = v136;
            }

            metricKeysAndValues12 = [v126 metricKeysAndValues];
            v138 = [metricKeysAndValues12 objectForKeyedSubscript:@"ScheduleBeforeDate"];

            [v131 doubleValue];
            v140 = v139;
            [v138 doubleValue];
            v142 = v140 - v141;
            if (v142 >= 0.0)
            {
              v121 = v121 + v142;
            }

            [v131 doubleValue];
            v144 = v143;
            metricKeysAndValues13 = [v126 metricKeysAndValues];
            v146 = [metricKeysAndValues13 objectForKeyedSubscript:@"ScheduleAfterDate"];
            [v146 doubleValue];
            v148 = v144 - v147;

            v201 = v201 + v148;
            if (v120 < v148)
            {
              v120 = v148;
            }
          }

          v124 = v203;
        }
      }

      v118 = [v196 countByEnumeratingWithState:&v207 objects:v260 count:16];
    }

    while (v118);
  }

  else
  {
    v201 = 0.0;
    v119 = 3.40282347e38;
    v120 = 0.0;
    v121 = 0.0;
    v122 = 0.0;
    v123 = 0.0;
  }

  v149 = v123 / v94;
  v150 = v121 / v94;
  v258[0] = @"TasksSubmitted";
  v151 = v201 / v94;
  v206 = [NSNumber numberWithUnsignedInteger:v88];
  v259[0] = v206;
  v258[1] = @"UniqueTasksSubmitted";
  v202 = [NSNumber numberWithUnsignedInteger:v185];
  v259[1] = v202;
  v258[2] = @"TasksRun";
  v194 = [NSNumber numberWithUnsignedInteger:v94];
  v259[2] = v194;
  v258[3] = @"UniqueTasksRun";
  v186 = [NSNumber numberWithUnsignedInteger:v183];
  v259[3] = v186;
  v258[4] = @"TasksCompleted";
  v184 = [NSNumber numberWithUnsignedInteger:v100];
  v259[4] = v184;
  v258[5] = @"UniqueTasksCompleted";
  v152 = [NSNumber numberWithUnsignedInteger:v180];
  v259[5] = v152;
  v258[6] = @"EligibleRuntime";
  v153 = [NSNumber numberWithDouble:v105];
  v259[6] = v153;
  v258[7] = @"IntensiveRuntime";
  v154 = [NSNumber numberWithDouble:v104];
  v259[7] = v154;
  v258[8] = @"MaxEligibleSchedulingDelay";
  v155 = [NSNumber numberWithDouble:v122];
  v259[8] = v155;
  v258[9] = @"MinEligibleSchedulingDelay";
  v156 = [NSNumber numberWithDouble:v119];
  v259[9] = v156;
  v258[10] = @"AvgEligibleSchedulingDelay";
  v157 = [NSNumber numberWithDouble:v149];
  v259[10] = v157;
  v258[11] = @"AvgSchedulingDelay";
  v158 = [NSNumber numberWithDouble:v151];
  v259[11] = v158;
  v258[12] = @"AvgOverdueDelay";
  v159 = [NSNumber numberWithDouble:v150];
  v259[12] = v159;
  v258[13] = @"MaxSchedulingDelay";
  v160 = [NSNumber numberWithDouble:v120];
  v259[13] = v160;
  v161 = [NSDictionary dictionaryWithObjects:v259 forKeys:v258 count:14];

  [v165 setObject:v198 forKeyedSubscript:@"SessionMetrics"];
  [v165 setObject:v161 forKeyedSubscript:@"SummaryMetrics"];

  return v165;
}

- (id)getInstallTimeline:(id)timeline filepath:(id)filepath
{
  timelineCopy = timeline;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  v8 = +[_DASPPSDataManager sharedInstance];
  v25 = filepathCopy;
  v9 = [v8 loadConfig:0 timeFilter:timelineCopy filepath:filepathCopy];

  v24 = v9;
  v26 = timelineCopy;
  v10 = [(_DASLatencyProjector *)self getRecentUniqueInstallationEvents:v9 timeFilter:timelineCopy];
  v29 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = +[NSMutableDictionary dictionary];
        metricKeysAndValues = [v14 metricKeysAndValues];
        v18 = [metricKeysAndValues objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
        [v16 setObject:v18 forKeyedSubscript:@"LastUpgradeSystemTimestamp"];

        metricKeysAndValues2 = [v14 metricKeysAndValues];
        v20 = [metricKeysAndValues2 objectForKeyedSubscript:@"Build"];
        [v16 setObject:v20 forKeyedSubscript:@"Build"];

        metricKeysAndValues3 = [v14 metricKeysAndValues];
        v22 = [metricKeysAndValues3 objectForKeyedSubscript:@"InstallType"];
        [v16 setObject:v22 forKeyedSubscript:@"InstallType"];

        [v29 addObject:v16];
        objc_autoreleasePoolPop(v15);
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  return v29;
}

- (id)getBuddyData:(id)data filepath:(id)filepath
{
  dataCopy = data;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  v8 = +[_DASPPSDataManager sharedInstance];
  v22 = filepathCopy;
  v23 = dataCopy;
  v9 = [v8 loadBuddyData:0 timeFilter:dataCopy filepath:filepathCopy];

  v25 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = +[NSMutableDictionary dictionary];
        metricKeysAndValues = [v14 metricKeysAndValues];
        v18 = [metricKeysAndValues objectForKeyedSubscript:@"SetupDate"];
        [v16 setObject:v18 forKeyedSubscript:@"SetupDate"];

        metricKeysAndValues2 = [v14 metricKeysAndValues];
        v20 = [metricKeysAndValues2 objectForKeyedSubscript:@"TransferMethod"];
        [v16 setObject:v20 forKeyedSubscript:@"TransferMethod"];

        [v25 addObject:v16];
        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  return v25;
}

- (id)getActivityTimelines:(id)timelines timeFilter:(id)filter filepath:(id)filepath
{
  timelinesCopy = timelines;
  filterCopy = filter;
  filepathCopy = filepath;
  if (!filepathCopy)
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
  }

  v59 = +[NSMutableDictionary dictionary];
  v58 = +[_DASPPSDataManager sharedInstance];
  v60 = filepathCopy;
  v55 = [v58 loadConfig:0 timeFilter:filterCopy filepath:filepathCopy];
  selfCopy = self;
  v61 = filterCopy;
  v10 = [_DASLatencyProjector getRecentUniqueInstallationEvents:"getRecentUniqueInstallationEvents:timeFilter:" timeFilter:?];
  v67 = +[NSMutableArray array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v11)
  {
    v12 = v11;
    v65 = *v77;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v77 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v76 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = +[NSMutableDictionary dictionary];
        metricKeysAndValues = [v14 metricKeysAndValues];
        v18 = [metricKeysAndValues objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
        [v16 setObject:v18 forKeyedSubscript:@"LastUpgradeSystemTimestamp"];

        metricKeysAndValues2 = [v14 metricKeysAndValues];
        v20 = [metricKeysAndValues2 objectForKeyedSubscript:@"Build"];
        [v16 setObject:v20 forKeyedSubscript:@"Build"];

        metricKeysAndValues3 = [v14 metricKeysAndValues];
        v22 = [metricKeysAndValues3 objectForKeyedSubscript:@"InstallType"];
        [v16 setObject:v22 forKeyedSubscript:@"InstallType"];

        [v67 addObject:v16];
        objc_autoreleasePoolPop(v15);
      }

      v12 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v12);
  }

  [v59 setObject:v67 forKeyedSubscript:@"Installation Events"];
  v23 = [(_DASLatencyProjector *)selfCopy getBuddyData:v61 filepath:v60];
  [v59 setObject:v23 forKeyedSubscript:@"Buddy Setup Events"];

  v24 = [v58 loadTaskCheckpoints:timelinesCopy metrics:0 timeFilter:v61 filepath:v60];
  v25 = [v58 loadCustomCheckpoints:timelinesCopy metrics:0 timeFilter:v61 filepath:v60];
  [v24 mergeWithTimeSeries:v25];
  endDate = [v61 endDate];
  v53 = [(_DASLatencyProjector *)selfCopy computeElapsedRunTimesFromCheckpoints:v24 endDate:endDate];

  v66 = [(_DASLatencyProjector *)selfCopy computeActivityTimelines:v24 installationEvents:obj];

  v27 = [NSSet setWithObject:@"IsPluggedIn"];
  v28 = [v58 getPPSTimeSeries:@"BackgroundProcessing" category:@"SystemConditionsBattery" valueFilter:0 metrics:v27 timeFilter:v61 filepath:v60 error:0];

  v29 = [(_DASLatencyProjector *)selfCopy computeOnBatteryRunTimes:v24 plugInCheckpoints:v28];

  v30 = [v58 loadTaskBlockingReasons:timelinesCopy metrics:0 timeFilter:v61 filepath:v60];
  obja = [(_DASLatencyProjector *)selfCopy computeActivityBlockingReasons:v30];

  v31 = [v58 loadTaskProgress:timelinesCopy metrics:0 timeFilter:v61 filepath:v60];
  v56 = [(_DASLatencyProjector *)selfCopy computeProgressTimelines:v31];

  v32 = selfCopy;
  v33 = [v58 loadTaskThroughput:timelinesCopy metrics:0 timeFilter:v61 filepath:v60];
  v54 = [(_DASLatencyProjector *)selfCopy computeThroughputTimelines:v33];

  v34 = +[NSMutableDictionary dictionary];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v35 = v53;
  v36 = [v35 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v73;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v73 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v72 + 1) + 8 * j);
        v41 = [v35 objectForKeyedSubscript:v40];
        v42 = [(_DASLatencyProjector *)selfCopy computeElapsedRunTimeTotals:v41];
        [v34 setObject:v42 forKeyedSubscript:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v37);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v43 = v29;
  v44 = [v43 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v69;
    do
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v68 + 1) + 8 * k);
        v49 = [v43 objectForKeyedSubscript:v48];
        if (v49)
        {
          v32 = [v43 objectForKeyedSubscript:v48];
          v50 = v32;
        }

        else
        {
          v50 = &off_1001CA6C0;
        }

        v51 = [v34 objectForKeyedSubscript:v48];
        [v51 setObject:v50 forKeyedSubscript:@"OnBatteryRunTime"];

        if (v49)
        {
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v45);
  }

  [v59 setObject:v66 forKeyedSubscript:@"Activity Checkpoints"];
  [v59 setObject:obja forKeyedSubscript:@"Activity Blocking Reasons"];
  [v59 setObject:v56 forKeyedSubscript:@"Progress Checkpoints"];
  [v59 setObject:v54 forKeyedSubscript:@"Throughput Reports"];
  [v59 setObject:v34 forKeyedSubscript:@"Totals"];

  return v59;
}

- (id)computeEstimatedMADCompletionTime:(id)time checkpointTimeSeries:(id)series progressTimeSeries:(id)timeSeries blockingReasonsTimeSeries:(id)reasonsTimeSeries activity:(id)activity osUpgradeTimestamp:(id)timestamp endDate:(id)date
{
  reasonsTimeSeriesCopy = reasonsTimeSeries;
  timestampCopy = timestamp;
  dateCopy = date;
  activityCopy = activity;
  timeSeriesCopy = timeSeries;
  seriesCopy = series;
  timeCopy = time;
  v20 = +[NSMutableDictionary dictionary];
  v21 = [(_DASLatencyProjector *)self computeElapsedRunTimesFromCheckpoints:seriesCopy endDate:dateCopy];

  v22 = [(_DASLatencyProjector *)self getRecentUniqueProgressEvents:timeSeriesCopy];

  v23 = [v21 objectForKeyedSubscript:timeCopy];
  v24 = [v22 objectForKeyedSubscript:timeCopy];
  v25 = [(_DASLatencyProjector *)self computeEstimatedRunTime:timeCopy elapsedRunTimes:v23 progressEvents:v24 activity:activityCopy endDate:dateCopy];

  if (v25 && ([v25 objectForKeyedSubscript:@"Estimated Runtime"], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "doubleValue"), v28 = v27, v26, v29 = -1.0, v28 != -1.0))
  {
    v31 = [v25 objectForKeyedSubscript:@"Overall Progress"];
    unsignedIntValue = [v31 unsignedIntValue];

    [dateCopy timeIntervalSinceDate:timestampCopy];
    v33 = v32;
    v34 = [v25 objectForKeyedSubscript:@"Estimated Runtime"];
    v35 = [v25 objectForKeyedSubscript:@"Elapsed Runtime"];
    v36 = [(_DASLatencyProjector *)self computeBlockedDurations:reasonsTimeSeriesCopy];
    v37 = [v36 objectForKeyedSubscript:@"UnpluggedOrDeviceActive"];
    unsignedLongValue = [v37 unsignedLongValue];

    v38 = [v36 objectForKeyedSubscript:@"Incompatibility"];
    unsignedLongValue2 = [v38 unsignedLongValue];

    v39 = [v36 objectForKeyedSubscript:@"SystemConditions"];
    unsignedLongValue3 = [v39 unsignedLongValue];

    [v34 doubleValue];
    v41 = v40;
    [v35 doubleValue];
    v43 = [NSNumber numberWithDouble:v41 - v42];
    [v20 setObject:v43 forKeyedSubscript:@"Estimated Runtime Remaining"];

    v44 = [NSNumber numberWithUnsignedInteger:v33];
    [v20 setObject:v44 forKeyedSubscript:@"Time Since Upgrade"];

    v45 = [NSNumber numberWithUnsignedInteger:unsignedIntValue];
    [v20 setObject:v45 forKeyedSubscript:@"Overall Progress"];

    v46 = -1.0;
    v47 = -1.0;
    v48 = -1.0;
    if (unsignedIntValue)
    {
      v49 = unsignedIntValue / (100 - unsignedIntValue);
      v29 = (v33 / v49);
      v46 = ((v33 - unsignedLongValue) / v49);
      v47 = ((v33 - unsignedLongValue2) / v49);
      v48 = ((v33 - unsignedLongValue3) / v49);
    }

    v50 = [NSNumber numberWithDouble:v29];
    [v20 setObject:v50 forKeyedSubscript:@"Remaining Estimated Completion Time"];

    v51 = [NSNumber numberWithDouble:v46];
    [v20 setObject:v51 forKeyedSubscript:@"TimePluggedInOrDeviceInactive"];

    v52 = [NSNumber numberWithDouble:v47];
    [v20 setObject:v52 forKeyedSubscript:@"TimeCompatible"];

    v53 = [NSNumber numberWithDouble:v48];
    [v20 setObject:v53 forKeyedSubscript:@"TimeSystemConditionsFavorable"];

    v30 = v20;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)computeEstimatedMADCompletionTimes:(id)times endDate:(id)date filepath:(id)filepath
{
  timesCopy = times;
  dateCopy = date;
  filepathCopy = filepath;
  if (filepathCopy)
  {
    v39 = 0;
  }

  else
  {
    [(_DASLatencyProjector *)self flushPPSCaches];
    v39 = [(_DASLatencyProjector *)self findActivitiesByName:timesCopy];
  }

  v40 = +[NSMutableDictionary dictionary];
  v11 = +[_DASPPSDataManager sharedInstance];
  if (!dateCopy)
  {
    dateCopy = +[NSDate date];
  }

  v12 = [NSDateInterval alloc];
  v13 = [NSDate dateWithTimeIntervalSince1970:0.0];
  v14 = [v12 initWithStartDate:v13 endDate:dateCopy];

  v31 = v14;
  v30 = [v11 loadConfig:0 timeFilter:v14 filepath:filepathCopy];
  v38 = [_DASLatencyProjector getLastOSUpgradeTimestamp:"getLastOSUpgradeTimestamp:endDate:eraseInstallOnly:" endDate:? eraseInstallOnly:?];
  v15 = [[NSDateInterval alloc] initWithStartDate:v38 endDate:dateCopy];
  v37 = [v11 loadTaskCheckpoints:timesCopy metrics:0 timeFilter:v15 filepath:filepathCopy];
  v36 = [v11 loadTaskProgress:timesCopy metrics:0 timeFilter:v15 filepath:filepathCopy];
  v32 = v11;
  v33 = filepathCopy;
  v29 = v15;
  v35 = [v11 loadIntensiveTaskBlockingReasons:v15 metrics:0 filepath:filepathCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = timesCopy;
  v16 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        v21 = [(_DASLatencyProjector *)self exactTaskNamePredicate:v20];
        v22 = [v37 filteredTimeSeriesUsingPredicate:v21];

        v23 = [(_DASLatencyProjector *)self exactTaskNamePredicate:v20];
        v24 = [v36 filteredTimeSeriesUsingPredicate:v23];

        v25 = [v39 objectForKeyedSubscript:v20];
        [(_DASLatencyProjector *)self computeEstimatedMADCompletionTime:v20 checkpointTimeSeries:v22 progressTimeSeries:v24 blockingReasonsTimeSeries:v35 activity:v25 osUpgradeTimestamp:v38 endDate:dateCopy];
        v27 = v26 = dateCopy;
        [v40 setObject:v27 forKeyedSubscript:v20];

        dateCopy = v26;
      }

      v17 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v17);
  }

  return v40;
}

- (id)computeFeatureDependencyGraphs:(id)graphs timeFilter:(id)filter filepath:(id)filepath
{
  graphsCopy = graphs;
  filterCopy = filter;
  filepathCopy = filepath;
  v11 = filterCopy;
  v47 = filepathCopy;
  v42 = [(_DASLatencyProjector *)self getTasksForFeatures:graphsCopy timeFilter:filterCopy filepath:?];
  v43 = +[NSMutableDictionary dictionary];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = graphsCopy;
  v44 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v44)
  {
    v40 = *v61;
    *&v12 = 138412546;
    v38 = v12;
    v41 = filterCopy;
    do
    {
      v13 = 0;
      do
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v13;
        v14 = *(*(&v60 + 1) + 8 * v13);
        v15 = [v42 objectForKeyedSubscript:{v14, v38}];
        v16 = +[NSMutableSet set];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v56 objects:v69 count:16];
        v45 = v14;
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v57;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v57 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v56 + 1) + 8 * i);
              if (([v16 containsObject:v23] & 1) == 0)
              {
                v24 = +[_DASPPSDataManager sharedInstance];
                v25 = [v24 loadTaskDependencyGraph:v23 timeFilter:v11 filepath:v47];

                allTasks = [v25 allTasks];
                [v16 unionSet:allTasks];

                if (v20)
                {
                  v27 = [v20 unionGraphWith:v25];

                  v20 = v27;
                }

                else
                {
                  v20 = v25;
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v56 objects:v69 count:16];
          }

          while (v19);
        }

        else
        {
          v20 = 0;
        }

        [v20 markRootTaskIdentifier:0];
        v28 = [(_DASLatencyProjector *)self computeEstimatedRunTimes:v16 timeFilter:v11 filepath:v47];
        v29 = +[NSMutableSet set];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v30 = v17;
        v31 = [v30 countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v53;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v53 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v52 + 1) + 8 * j);
              if (([v29 containsObject:v35] & 1) == 0)
              {
                v48[0] = _NSConcreteStackBlock;
                v48[1] = 3221225472;
                v48[2] = sub_10010F5A0;
                v48[3] = &unk_1001B8CE0;
                v49 = v28;
                selfCopy = self;
                v51 = v29;
                [v20 traverseGraphForTask:v35 updatingNodesWith:v48];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v52 objects:v68 count:16];
          }

          while (v32);
        }

        [v43 setObject:v20 forKeyedSubscript:v45];
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v38;
          v65 = v45;
          v66 = 2112;
          v67 = v20;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Feature Dependency Graph for %@: %@", buf, 0x16u);
        }

        v13 = v46 + 1;
        v11 = v41;
      }

      while ((v46 + 1) != v44);
      v44 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v44);
  }

  return v43;
}

@end
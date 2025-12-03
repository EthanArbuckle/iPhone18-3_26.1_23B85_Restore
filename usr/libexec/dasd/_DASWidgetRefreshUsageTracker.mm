@interface _DASWidgetRefreshUsageTracker
+ (id)sharedInstance;
- (_DASWidgetRefreshUsageTracker)init;
- (double)stopTrackingActivity:(id)activity;
- (double)sumOfValuesOfDictionary:(id)dictionary;
- (id)allocatedBudgetsWithAverageViews:(id)views groupTotalBudget:(int)budget individualMaxBudgets:(id)budgets individualMinBudget:(int)minBudget;
- (id)dailyBudgetForWidget:(id)widget;
- (id)dailyBudgetsForAllWidgets;
- (id)getAverageWidgetViewsPerDay;
- (int)allocateBudgetForViewsCurve:(int)curve;
- (void)checkBiomeMigrationState;
- (void)computeBudgetFromHistoryForAllWidgets;
- (void)flushComputedBudgetCache;
- (void)invalidateComputedBudgetCache;
- (void)startTrackingActivity:(id)activity;
- (void)updateTrialParameters;
@end

@implementation _DASWidgetRefreshUsageTracker

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000244DC;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AEB8 != -1)
  {
    dispatch_once(&qword_10020AEB8, block);
  }

  v2 = qword_10020AEC0;

  return v2;
}

- (_DASWidgetRefreshUsageTracker)init
{
  v20.receiver = self;
  v20.super_class = _DASWidgetRefreshUsageTracker;
  v2 = [(_DASWidgetRefreshUsageTracker *)&v20 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "widgetRefresh");
    log = v2->_log;
    v2->_log = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    trackingWidgets = v2->_trackingWidgets;
    v2->_trackingWidgets = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    dailyComputedBudgetsForAllWidgets = v2->_dailyComputedBudgetsForAllWidgets;
    v2->_dailyComputedBudgetsForAllWidgets = v7;

    v9 = +[NSDate distantPast];
    computedBudgetDate = v2->_computedBudgetDate;
    v2->_computedBudgetDate = v9;

    v11 = +[_CDClientContext userContext];
    context = v2->_context;
    v2->_context = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("com.apple.dasd.computeWidgetBudgets", v14);
    queue = v2->_queue;
    v2->_queue = v15;

    [(_DASWidgetRefreshUsageTracker *)v2 checkBiomeMigrationState];
    v17 = +[_DASTrialManager sharedInstance];
    trialManager = v2->_trialManager;
    v2->_trialManager = v17;

    [(_DASTrialManager *)v2->_trialManager addDelegate:v2];
    [(_DASWidgetRefreshUsageTracker *)v2 updateTrialParameters];
  }

  return v2;
}

- (void)updateTrialParameters
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"widgetImprovedAllocStrat"];
  bOOLeanValue = [v3 BOOLeanValue];

  byte_10020AEC8 = bOOLeanValue;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = byte_10020AEC8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Updated allocation strategy: %u", v6, 8u);
  }
}

- (id)dailyBudgetForWidget:(id)widget
{
  widgetCopy = widget;
  if (self->_biomeMigrationComplete)
  {
    goto LABEL_6;
  }

  if (!self->_biomeMigrationStartDate || (+[NSDate now](NSDate, "now"), v5 = objc_claimAutoreleasedReturnValue(), [v5 timeIntervalSinceDate:self->_biomeMigrationStartDate], v7 = v6, v5, v7 >= 259200.0))
  {
    [(_DASWidgetRefreshUsageTracker *)self checkBiomeMigrationState];
  }

  if (self->_biomeMigrationComplete)
  {
LABEL_6:
    [(_DASWidgetRefreshUsageTracker *)self computeBudgetFromHistoryForAllWidgets];
    v8 = [(NSMutableDictionary *)self->_dailyComputedBudgetsForAllWidgets objectForKey:widgetCopy];
  }

  else
  {
    v8 = &off_1001C9730;
  }

  return v8;
}

- (id)dailyBudgetsForAllWidgets
{
  [(_DASWidgetRefreshUsageTracker *)self computeBudgetFromHistoryForAllWidgets];
  allKeys = [(NSMutableDictionary *)self->_dailyComputedBudgetsForAllWidgets allKeys];
  v4 = objc_alloc_init(NSMutableDictionary);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(_DASWidgetRefreshUsageTracker *)self dailyBudgetForWidget:v10, v13];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)computeBudgetFromHistoryForAllWidgets
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self->_computedBudgetDate];
  v5 = v4;

  if (v5 > 60.0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100024A9C;
    v12 = sub_100024AAC;
    v13 = objc_alloc_init(NSMutableDictionary);
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100024AB4;
    v7[3] = &unk_1001B5A68;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);
    objc_storeStrong(&self->_dailyComputedBudgetsForAllWidgets, v9[5]);
    _Block_object_dispose(&v8, 8);
  }
}

- (void)invalidateComputedBudgetCache
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024FC8;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)flushComputedBudgetCache
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025088;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)getAverageWidgetViewsPerDay
{
  v43 = objc_alloc_init(NSMutableDictionary);
  v42 = +[NSDate now];
  v2 = [v42 dateByAddingTimeInterval:-604800.0];
  v3 = [v2 dateByAddingTimeInterval:86400.0];
  v39 = objc_alloc_init(NSMutableDictionary);
  v37 = objc_alloc_init(NSMutableDictionary);
  v4 = 7;
  do
  {
    v5 = v3;
    v6 = v2;
    contexta = objc_autoreleasePoolPush();
    v7 = BiomeLibrary();
    widgets = [v7 Widgets];
    viewed = [widgets Viewed];

    v10 = [[BMPublisherOptions alloc] initWithStartDate:v6 endDate:v5 maxEvents:5000 lastN:0 reversed:0];
    v11 = +[_DASBMUtilityProvider sharedUtilityProvider];
    getConsoleUserUid = [v11 getConsoleUserUid];

    v13 = [viewed publisherWithUser:getConsoleUserUid useCase:@"DuetActivitySchedulerWidgetRefresh" options:v10];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100025614;
    v52[3] = &unk_1001B5570;
    v52[4] = self;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100025674;
    v49[3] = &unk_1001B5AE0;
    v14 = v39;
    v50 = v14;
    v15 = v37;
    v51 = v15;
    v16 = [v13 sinkWithCompletion:v52 receiveInput:v49];

    objc_autoreleasePoolPop(contexta);
    v2 = [v6 dateByAddingTimeInterval:86400.0];

    v3 = [v5 dateByAddingTimeInterval:86400.0];

    --v4;
  }

  while (v4);
  v36 = v3;
  v38 = v2;
  [v15 allKeys];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  context = v48 = 0u;
  v17 = [context countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(context);
        }

        v21 = *(*(&v45 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        v23 = v14;
        v24 = [v14 objectForKeyedSubscript:v21];
        [v24 timeIntervalSinceDate:v42];
        v26 = v25;

        v27 = [v15 objectForKeyedSubscript:v21];
        v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([v27 intValue] / vcvtpd_s64_f64(v26 / -86400.0)));
        [v43 setObject:v28 forKeyedSubscript:v21];

        v29 = [v15 objectForKeyedSubscript:v21];
        if (v29)
        {
          v30 = [v15 objectForKeyedSubscript:v21];
          [v30 doubleValue];
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        log = self->_log;
        v14 = v23;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v54 = v21;
          v55 = 2048;
          v56 = v32;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "widget: %{public}@ - view count: %.2lf", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
      }

      v18 = [context countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v18);
  }

  v34 = self->_log;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = v43;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Average views %@", buf, 0xCu);
  }

  return v43;
}

- (int)allocateBudgetForViewsCurve:(int)curve
{
  result = curve;
  if (curve > 0x1E)
  {
    curveCopy = curve;
    if (byte_10020AEC8)
    {
      return (((curveCopy + -30.0) / 5.0 + 30.0) / 30.0 / (((curveCopy + -30.0) / 5.0 + 30.0) / 30.0 + 1.0) * curveCopy + 5.0);
    }

    else
    {
      return (curveCopy + -59.2305146 + 30.0);
    }
  }

  else if (byte_10020AEC8)
  {
    return llround(curve * 0.66);
  }

  return result;
}

- (id)allocatedBudgetsWithAverageViews:(id)views groupTotalBudget:(int)budget individualMaxBudgets:(id)budgets individualMinBudget:(int)minBudget
{
  viewsCopy = views;
  budgetsCopy = budgets;
  v10 = objc_alloc_init(NSMutableDictionary);
  v42 = viewsCopy;
  [viewsCopy allKeys];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v11 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        v17 = [v42 objectForKeyedSubscript:v16];
        intValue = [v17 intValue];

        v19 = [budgetsCopy objectForKeyedSubscript:v16];
        intValue2 = [v19 intValue];

        v21 = [(_DASWidgetRefreshUsageTracker *)self allocateBudgetForViewsCurve:intValue];
        if (v21 >= intValue2)
        {
          v22 = intValue2;
        }

        else
        {
          v22 = v21;
        }

        if (v22 <= minBudget)
        {
          minBudgetCopy = minBudget;
        }

        else
        {
          minBudgetCopy = v22;
        }

        v24 = [NSNumber numberWithInt:minBudgetCopy];
        [v10 setObject:v24 forKeyedSubscript:v16];

        v14 = v14 + v21;
      }

      v12 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  if (v14 > budget)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = obj;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      v29 = budget / v14;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v44 + 1) + 8 * j);
          v32 = [v10 objectForKeyedSubscript:v31];
          [v32 doubleValue];
          v34 = v33;

          v35 = [budgetsCopy objectForKeyedSubscript:v31];
          intValue3 = [v35 intValue];

          if (v34 <= intValue3)
          {
            v37 = v34;
          }

          else
          {
            v37 = v29 * v34;
          }

          v38 = [NSNumber numberWithDouble:round(v37)];
          [v10 setObject:v38 forKeyedSubscript:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v27);
    }
  }

  return v10;
}

- (void)startTrackingActivity:(id)activity
{
  activityCopy = activity;
  widgetBudgetID = [activityCopy widgetBudgetID];

  if (widgetBudgetID)
  {
    trackingWidgets = self->_trackingWidgets;
    widgetBudgetID2 = [activityCopy widgetBudgetID];
    [(NSMutableDictionary *)trackingWidgets setObject:&off_1001C9748 forKeyedSubscript:widgetBudgetID2];
  }
}

- (double)stopTrackingActivity:(id)activity
{
  activityCopy = activity;
  widgetBudgetID = [activityCopy widgetBudgetID];

  v6 = 0.0;
  if (widgetBudgetID)
  {
    trackingWidgets = self->_trackingWidgets;
    widgetBudgetID2 = [activityCopy widgetBudgetID];
    v9 = [(NSMutableDictionary *)trackingWidgets objectForKeyedSubscript:widgetBudgetID2];

    if (v9)
    {
      v10 = self->_trackingWidgets;
      widgetBudgetID3 = [activityCopy widgetBudgetID];
      [(NSMutableDictionary *)v10 removeObjectForKey:widgetBudgetID3];

      v6 = 1.0;
    }
  }

  return v6;
}

- (double)sumOfValuesOfDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [dictionaryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v9 = [dictionaryCopy objectForKey:*(*(&v12 + 1) + 8 * i)];
        [v9 doubleValue];
        v7 = v7 + v10;
      }

      v5 = [dictionaryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)checkBiomeMigrationState
{
  v14 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v3 = [v14 objectForKey:@"widgetBiomeMigrationComplete"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    self->_biomeMigrationComplete = 1;
    goto LABEL_11;
  }

  v5 = +[NSDate now];
  p_biomeMigrationStartDate = &self->_biomeMigrationStartDate;
  if (self->_biomeMigrationStartDate)
  {
    goto LABEL_7;
  }

  v7 = [v14 objectForKey:@"widgetBiomeMigrationStartDate"];
  [v7 doubleValue];
  v9 = v8;

  if (v9 > 0.0)
  {
    v10 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v9];
    v11 = *p_biomeMigrationStartDate;
    *p_biomeMigrationStartDate = v10;
  }

  if (*p_biomeMigrationStartDate)
  {
LABEL_7:
    [v5 timeIntervalSinceDate:?];
    if (v12 >= 259200.0)
    {
      [v14 setObject:&__kCFBooleanTrue forKey:@"widgetBiomeMigrationComplete"];
      self->_biomeMigrationComplete = 1;
      [(_DASWidgetRefreshUsageTracker *)self invalidateComputedBudgetCache];

      goto LABEL_11;
    }
  }

  else
  {
    [v5 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    [v14 setObject:v13 forKey:@"widgetBiomeMigrationStartDate"];

    objc_storeStrong(&self->_biomeMigrationStartDate, v5);
  }

  self->_biomeMigrationComplete = 0;
LABEL_11:
}

@end
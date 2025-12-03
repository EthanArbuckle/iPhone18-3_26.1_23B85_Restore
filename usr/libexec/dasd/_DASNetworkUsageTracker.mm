@interface _DASNetworkUsageTracker
+ (BOOL)shouldTrackActivity:(id)activity;
+ (id)sharedInstance;
- (_DASNetworkUsageTracker)init;
- (double)dailyBudget;
- (double)dailyDataBudgetFromPlan:(id)plan error:(id)error;
- (double)getDataConsumedFromBytesOnCell:(double)result bytesOnCellExpensive:(double)expensive bytesOnCellInexpensive:(double)inexpensive bytesOnWiFiExpensive:(double)fiExpensive;
- (double)stopTrackingActivity:(id)activity;
- (double)updateDataForActivity:(id)activity bytesOnCell:(double)cell bytesOnCellExpensive:(double)expensive bytesOnCellInexpensive:(double)inexpensive bytesOnWiFiExpensive:(double)fiExpensive bytesOnWiFiInexpensive:(double)fiInexpensive;
- (void)dataPlanMetricsDidChange;
- (void)startTrackingActivity:(id)activity;
@end

@implementation _DASNetworkUsageTracker

- (_DASNetworkUsageTracker)init
{
  v18.receiver = self;
  v18.super_class = _DASNetworkUsageTracker;
  v2 = [(_DASNetworkUsageTracker *)&v18 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "networkbudgeting");
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = +[NSMutableSet set];
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    *(v2 + 2) = 0;
    v7 = +[NSMutableDictionary dictionary];
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    v9 = [AnalyticsWorkspace alloc];
    v10 = [v9 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
    if (!v10 && os_log_type_enabled(*(v2 + 3), OS_LOG_TYPE_ERROR))
    {
      sub_10011CBB0();
    }

    v11 = [[UsageFeed alloc] initWithWorkspace:v10];
    v12 = *(v2 + 6);
    *(v2 + 6) = v11;

    if (!*(v2 + 6) && os_log_type_enabled(*(v2 + 3), OS_LOG_TYPE_ERROR))
    {
      sub_10011CBEC();
    }

    v13 = [CTCarrierSpaceClient alloc];
    v14 = dispatch_get_global_queue(-32768, 0);
    v15 = [v13 initWithQueue:v14];
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    [*(v2 + 7) setDelegate:v2];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002137C;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020AE80 != -1)
  {
    dispatch_once(&qword_10020AE80, block);
  }

  v2 = qword_10020AE88;

  return v2;
}

- (void)dataPlanMetricsDidChange
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Carrier data may have changed", v4, 2u);
  }

  [(_DASNetworkUsageTracker *)self dailyBudget];
  [(_DASBudgetModulator *)self->_modulator updateCapacity:@"com.apple.dasd.systemCellular" forBudgetWithName:?];
}

- (double)dailyDataBudgetFromPlan:(id)plan error:(id)error
{
  planCopy = plan;
  errorCopy = error;
  v8 = errorCopy;
  if (!planCopy || errorCopy)
  {
    log = self->_log;
    v14 = -1.0;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v22 = 138412290;
    v23 = v8;
    v17 = "Error trying to obtain data plan metrics: %@";
    v18 = log;
    v19 = 12;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
    goto LABEL_15;
  }

  domestic = [planCopy domestic];

  if (!domestic)
  {
    v20 = self->_log;
    v14 = -1.0;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(v22) = 0;
    v17 = "No capacity returned. Using default";
    v18 = v20;
    v19 = 2;
    goto LABEL_14;
  }

  domestic2 = [planCopy domestic];
  capacityBytes = [domestic2 capacityBytes];

  [capacityBytes doubleValue];
  v13 = v12 / 100.0;
  if (v13 <= 1073741820.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1073741820.0;
  }

  v15 = self->_log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543618;
    v23 = capacityBytes;
    v24 = 2048;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Data plan budget is for %{public}@ bytes. Discretionary budget is now %lf bytes", &v22, 0x16u);
  }

LABEL_15:
  return v14;
}

- (double)dailyBudget
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0xBFF0000000000000;
  v3 = dispatch_semaphore_create(0);
  carrierSpaceClient = self->_carrierSpaceClient;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021740;
  v9[3] = &unk_1001B59D0;
  v11 = &v12;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(CTCarrierSpaceClient *)carrierSpaceClient fetchDataPlanMetrics:v9];
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  if (v13[3] >= 0.0)
  {
    v7 = v13[3];
  }

  else
  {
    v7 = 52428800.0;
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

+ (BOOL)shouldTrackActivity:(id)activity
{
  activityCopy = activity;
  clientDataBudgetName = [activityCopy clientDataBudgetName];
  if (!clientDataBudgetName)
  {
    schedulingPriority = [activityCopy schedulingPriority];
    v8 = _DASSchedulingPriorityUserInitiated;
    if (schedulingPriority < _DASSchedulingPriorityUserInitiated)
    {
      widgetID = [activityCopy widgetID];
      if (widgetID)
      {
        v6 = 1;
        goto LABEL_20;
      }
    }

    if (([activityCopy budgeted] & 1) != 0 || objc_msgSend(activityCopy, "dataBudgeted"))
    {
      requiresNetwork = [activityCopy requiresNetwork];
      if (requiresNetwork)
      {
        userInfo = [activityCopy userInfo];
        v11 = [userInfo objectForKeyedSubscript:kNWEndpointKey];
        if (v11)
        {

          v6 = 1;
LABEL_18:
          if (schedulingPriority >= v8)
          {
            goto LABEL_21;
          }

          widgetID = 0;
LABEL_20:

          goto LABEL_21;
        }

        if (([activityCopy requestsApplicationLaunch] & 1) == 0)
        {
          v6 = 0;
LABEL_17:

          goto LABEL_18;
        }

LABEL_14:
        relatedApplications = [activityCopy relatedApplications];
        v6 = [relatedApplications count] != 0;

        if (!requiresNetwork)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if ([activityCopy requestsApplicationLaunch])
      {
        goto LABEL_14;
      }
    }

    v6 = 0;
    goto LABEL_18;
  }

  v6 = 1;
LABEL_21:

  return v6;
}

- (void)startTrackingActivity:(id)activity
{
  activityCopy = activity;
  if ([_DASNetworkUsageTracker shouldTrackActivity:activityCopy])
  {
    os_unfair_lock_lock(&self->_lock);
    startedActivites = self->_startedActivites;
    name = [activityCopy name];
    [(NSMutableSet *)startedActivites addObject:name];

    os_unfair_lock_unlock(&self->_lock);
    clientDataBudgetName = [activityCopy clientDataBudgetName];
    if (clientDataBudgetName)
    {
      goto LABEL_3;
    }

    clientDataBudgetName = [activityCopy relatedApplications];
    if (![clientDataBudgetName count])
    {
LABEL_34:

      goto LABEL_35;
    }

    if ([activityCopy requestsApplicationLaunch])
    {
LABEL_3:
    }

    else
    {
      widgetID = [activityCopy widgetID];

      if (!widgetID)
      {
        goto LABEL_35;
      }
    }

    os_unfair_lock_lock(&self->_lock);
    clientDataBudgetName = [(NSMutableDictionary *)self->_activityToDataMap objectForKeyedSubscript:activityCopy];
    if (!clientDataBudgetName)
    {
      clientDataBudgetName = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_activityToDataMap setObject:clientDataBudgetName forKeyedSubscript:activityCopy];
    }

    os_unfair_lock_unlock(&self->_lock);
    if ([activityCopy pid])
    {
      v9 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [activityCopy pid]);
    }

    else
    {
      v9 = 0;
    }

    requestsApplicationLaunch = [activityCopy requestsApplicationLaunch];
    if ((requestsApplicationLaunch & 1) != 0 || ([activityCopy widgetID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      relatedApplications = [activityCopy relatedApplications];
      v13 = [NSSet setWithArray:relatedApplications];

      if (requestsApplicationLaunch)
      {
        if (!v13)
        {
          goto LABEL_33;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v9)
      {
        v13 = [NSSet setWithObject:v9];
      }

      else
      {
        v13 = 0;
      }

      v3 = 0;
    }

    if (!v13)
    {
LABEL_33:

      goto LABEL_34;
    }

LABEL_23:
    if ([activityCopy requestsApplicationLaunch])
    {
      v14 = kUsageProcessBundleName;
    }

    else
    {
      widgetID2 = [activityCopy widgetID];
      v16 = &kUsageProcessProcName;
      if (widgetID2)
      {
        v16 = &kUsageProcessBundleName;
      }

      v14 = *v16;
    }

    v26 = kSymptomAnalyticsServiceRefreshUsage;
    v27 = &__kCFBooleanTrue;
    v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = dispatch_semaphore_create(0);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100021CC8;
    v22[3] = &unk_1001B59F8;
    v22[4] = self;
    v23 = clientDataBudgetName;
    v24 = activityCopy;
    v19 = v18;
    v25 = v19;
    v20 = objc_retainBlock(v22);
    if (([(UsageFeed *)self->_symptomsFeed usageToDateWithOptionsFor:v13 nameKind:v14 options:v17 reply:v20]& 1) != 0)
    {
      v21 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v19, v21);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011CC28();
    }

    goto LABEL_33;
  }

LABEL_35:
}

- (double)stopTrackingActivity:(id)activity
{
  activityCopy = activity;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (![_DASNetworkUsageTracker shouldTrackActivity:activityCopy])
  {
    goto LABEL_10;
  }

  os_unfair_lock_lock(&self->_lock);
  startedActivites = self->_startedActivites;
  name = [activityCopy name];
  LODWORD(startedActivites) = [(NSMutableSet *)startedActivites containsObject:name];

  if (!startedActivites)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011CCD8();
    }

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_10;
  }

  v7 = self->_startedActivites;
  name2 = [activityCopy name];
  [(NSMutableSet *)v7 removeObject:name2];

  os_unfair_lock_unlock(&self->_lock);
  clientDataBudgetName = [activityCopy clientDataBudgetName];
  if (clientDataBudgetName)
  {
LABEL_4:

    goto LABEL_5;
  }

  clientDataBudgetName = [activityCopy relatedApplications];
  if (![(__objc2_class *)clientDataBudgetName count])
  {

    goto LABEL_10;
  }

  if ([activityCopy requestsApplicationLaunch])
  {
    goto LABEL_4;
  }

  widgetID = [activityCopy widgetID];
  v12 = widgetID == 0;

  if (v12)
  {
LABEL_10:
    v10 = v43[3];
    goto LABEL_43;
  }

LABEL_5:
  if ([activityCopy pid])
  {
    clientDataBudgetName = _DASUtils;
    v37 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [activityCopy pid]);
  }

  else
  {
    v37 = 0;
  }

  requestsApplicationLaunch = [activityCopy requestsApplicationLaunch];
  if ((requestsApplicationLaunch & 1) != 0 || ([activityCopy widgetID], (clientDataBudgetName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    relatedApplications = [activityCopy relatedApplications];
    v15 = [NSSet setWithArray:relatedApplications];

    if (requestsApplicationLaunch)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v37)
    {
      v15 = [NSSet setWithObject:?];
    }

    else
    {
      v15 = 0;
    }

    clientDataBudgetName = 0;
  }

LABEL_26:
  if (v15)
  {
    if ([activityCopy requestsApplicationLaunch])
    {
      v16 = kUsageProcessBundleName;
    }

    else
    {
      widgetID2 = [activityCopy widgetID];
      v19 = &kUsageProcessProcName;
      if (widgetID2)
      {
        v19 = &kUsageProcessBundleName;
      }

      v16 = *v19;
    }

    v52 = kSymptomAnalyticsServiceRefreshUsage;
    v53 = &__kCFBooleanTrue;
    v35 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v20 = dispatch_semaphore_create(0);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100022544;
    v38[3] = &unk_1001B5A20;
    v38[4] = self;
    v21 = activityCopy;
    v39 = v21;
    v41 = &v42;
    dsema = v20;
    v40 = dsema;
    v36 = objc_retainBlock(v38);
    if (([(UsageFeed *)self->_symptomsFeed usageToDateWithOptionsFor:v15 nameKind:v16 options:v35 reply:v36]& 1) != 0)
    {
      v22 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(dsema, v22);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011CD48();
    }

    widgetID3 = [v21 widgetID];

    if (widgetID3)
    {
      relatedApplications2 = [v21 relatedApplications];
      firstObject = [relatedApplications2 firstObject];
      v26 = [NSString stringWithFormat:@"com.apple.dasd.bytes.widgets.%@", firstObject];

      v51[0] = @"com.apple.dasd.bytes.widgets";
      v51[1] = v26;
      v27 = [NSArray arrayWithObjects:v51 count:2];
      v28 = [NSNumber numberWithDouble:v43[3]];
      v50[0] = v28;
      v29 = [NSNumber numberWithDouble:v43[3]];
      v50[1] = v29;
      v30 = [NSArray arrayWithObjects:v50 count:2];
      [_DASMetricRecorder incrementOccurrencesForKeys:v27 byCounts:v30];
    }

    v31 = self->_log;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [NSNumber numberWithDouble:v43[3]];
      *buf = 138412546;
      v47 = v21;
      v48 = 2112;
      v49 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Data consumed for %@: %@", buf, 0x16u);
    }

    v10 = v43[3];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    activityToDataMap = [(_DASNetworkUsageTracker *)self activityToDataMap];
    [activityToDataMap removeObjectForKey:activityCopy];

    os_unfair_lock_unlock(&self->_lock);
    v10 = 0.0;
  }

LABEL_43:
  _Block_object_dispose(&v42, 8);

  return v10;
}

- (double)getDataConsumedFromBytesOnCell:(double)result bytesOnCellExpensive:(double)expensive bytesOnCellInexpensive:(double)inexpensive bytesOnWiFiExpensive:(double)fiExpensive
{
  v6 = expensive + inexpensive + fiExpensive;
  v7 = inexpensive * 0.05 + expensive + fiExpensive;
  if (v6 != 0.0)
  {
    return v7;
  }

  return result;
}

- (double)updateDataForActivity:(id)activity bytesOnCell:(double)cell bytesOnCellExpensive:(double)expensive bytesOnCellInexpensive:(double)inexpensive bytesOnWiFiExpensive:(double)fiExpensive bytesOnWiFiInexpensive:(double)fiInexpensive
{
  activityCopy = activity;
  v15 = [_DASPhotosPolicy isiCPLActivity:activityCopy];
  relatedApplications = [activityCopy relatedApplications];
  v17 = [relatedApplications sortedArrayUsingSelector:"compare:"];
  firstObject = [v17 firstObject];

  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority <= _DASSchedulingPriorityDefault)
  {
    v20 = @"disc";
  }

  else
  {
    v20 = @"non-disc";
  }

  v21 = [NSString stringWithFormat:@"com.apple.dasd.bytes.%@.%@.cell", firstObject, v20];
  schedulingPriority2 = [activityCopy schedulingPriority];
  if (schedulingPriority2 <= _DASSchedulingPriorityDefault)
  {
    v23 = @"disc";
  }

  else
  {
    v23 = @"non-disc";
  }

  v24 = [NSString stringWithFormat:@"com.apple.dasd.bytes.%@.%@.wifi", firstObject, v23];
  v25 = v24;
  if (expensive + inexpensive + fiExpensive + fiInexpensive > 0.0)
  {
    v88[0] = v24;
    v88[1] = v21;
    v26 = [NSArray arrayWithObjects:v88 count:2];
    v27 = activityCopy;
    v28 = v15;
    selfCopy = self;
    v30 = firstObject;
    v31 = v25;
    v32 = v21;
    fiInexpensive = [NSNumber numberWithDouble:fiExpensive + fiInexpensive];
    v87[0] = fiInexpensive;
    inexpensive = [NSNumber numberWithDouble:expensive + inexpensive];
    v87[1] = inexpensive;
    v35 = [NSArray arrayWithObjects:v87 count:2];
    [_DASMetricRecorder incrementOccurrencesForKeys:v26 byCounts:v35];

    v21 = v32;
    v25 = v31;
    firstObject = v30;
    self = selfCopy;
    v15 = v28;
    activityCopy = v27;
  }

  if (v15)
  {
    v36 = self->_log;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v72 = v25;
      v37 = v21;
      v38 = v36;
      v39 = [NSNumber numberWithDouble:expensive];
      v40 = [NSNumber numberWithDouble:inexpensive];
      v41 = [NSNumber numberWithDouble:fiExpensive];
      v42 = [NSNumber numberWithDouble:fiInexpensive];
      v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activityCopy schedulingPriority]);
      *buf = 138544386;
      v76 = v39;
      v77 = 2114;
      v78 = v40;
      v79 = 2114;
      v80 = v41;
      v81 = 2114;
      v82 = v42;
      v83 = 2114;
      v84 = v43;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Cell Expensive Bytes: %{public}@, Cell Inexpensive Bytes: %{public}@, WiFi Expensive Bytes: %{public}@, WiFi Inexpensive Bytes: %{public}@, Priority: %{public}@, Applications: com.apple.mobileslideshow", buf, 0x34u);

      v21 = v37;
      v25 = v72;
    }
  }

  else
  {
    relatedApplications2 = [activityCopy relatedApplications];
    v45 = [relatedApplications2 count];

    v46 = self->_log;
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if (v45 == 1)
    {
      if (v47)
      {
        log = v46;
        v67 = [NSNumber numberWithDouble:expensive];
        v48 = [NSNumber numberWithDouble:inexpensive];
        v49 = [NSNumber numberWithDouble:fiExpensive];
        [NSNumber numberWithDouble:fiInexpensive];
        v70 = v21;
        v50 = v73 = v25;
        v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activityCopy schedulingPriority]);
        relatedApplications3 = [activityCopy relatedApplications];
        firstObject2 = [relatedApplications3 firstObject];
        *buf = 138544642;
        v76 = v67;
        v77 = 2114;
        v78 = v48;
        v79 = 2114;
        v80 = v49;
        v81 = 2114;
        v82 = v50;
        v83 = 2114;
        v84 = v51;
        v85 = 2112;
        v86 = firstObject2;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Cell Expensive Bytes: %{public}@, Cell Inexpensive Bytes: %{public}@, WiFi Expensive Bytes: %{public}@, WiFi Inexpensive Bytes: %{public}@, Priority: %{public}@, Applications: %@", buf, 0x3Eu);

        v21 = v70;
        v25 = v73;
      }
    }

    else if (v47)
    {
      loga = v46;
      v54 = [NSNumber numberWithDouble:expensive];
      v55 = [NSNumber numberWithDouble:inexpensive];
      v56 = [NSNumber numberWithDouble:fiExpensive];
      [NSNumber numberWithDouble:fiInexpensive];
      v71 = v21;
      v57 = v74 = v25;
      v58 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activityCopy schedulingPriority]);
      relatedApplications4 = [activityCopy relatedApplications];
      *buf = 138544642;
      v76 = v54;
      v77 = 2114;
      v78 = v55;
      v79 = 2114;
      v80 = v56;
      v81 = 2114;
      v82 = v57;
      v83 = 2114;
      v84 = v58;
      v85 = 2112;
      v86 = relatedApplications4;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "Cell Expensive Bytes: %{public}@, Cell Inexpensive Bytes: %{public}@, WiFi Expensive Bytes: %{public}@, WiFi Inexpensive Bytes: %{public}@, Priority: %{public}@, Applications: %@", buf, 0x3Eu);

      v21 = v71;
      v25 = v74;
    }
  }

  v60 = 0.0;
  if ([_DASNetworkUsageTracker shouldTrackActivity:activityCopy])
  {
    os_unfair_lock_lock(&self->_lock);
    startedActivites = self->_startedActivites;
    name = [activityCopy name];
    LOBYTE(startedActivites) = [(NSMutableSet *)startedActivites containsObject:name];

    if ((startedActivites & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10011CDF8();
      }

      v63 = self->_startedActivites;
      name2 = [activityCopy name];
      [(NSMutableSet *)v63 addObject:name2];
    }

    os_unfair_lock_unlock(&self->_lock);
    [(_DASNetworkUsageTracker *)self getDataConsumedFromBytesOnCell:cell bytesOnCellExpensive:expensive bytesOnCellInexpensive:inexpensive bytesOnWiFiExpensive:fiExpensive];
    v60 = v65;
  }

  return v60;
}

@end
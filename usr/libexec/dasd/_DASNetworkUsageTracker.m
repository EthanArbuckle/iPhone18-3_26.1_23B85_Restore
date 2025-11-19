@interface _DASNetworkUsageTracker
+ (BOOL)shouldTrackActivity:(id)a3;
+ (id)sharedInstance;
- (_DASNetworkUsageTracker)init;
- (double)dailyBudget;
- (double)dailyDataBudgetFromPlan:(id)a3 error:(id)a4;
- (double)getDataConsumedFromBytesOnCell:(double)result bytesOnCellExpensive:(double)a4 bytesOnCellInexpensive:(double)a5 bytesOnWiFiExpensive:(double)a6;
- (double)stopTrackingActivity:(id)a3;
- (double)updateDataForActivity:(id)a3 bytesOnCell:(double)a4 bytesOnCellExpensive:(double)a5 bytesOnCellInexpensive:(double)a6 bytesOnWiFiExpensive:(double)a7 bytesOnWiFiInexpensive:(double)a8;
- (void)dataPlanMetricsDidChange;
- (void)startTrackingActivity:(id)a3;
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
  block[4] = a1;
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

- (double)dailyDataBudgetFromPlan:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || v7)
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

  v9 = [v6 domestic];

  if (!v9)
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

  v10 = [v6 domestic];
  v11 = [v10 capacityBytes];

  [v11 doubleValue];
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
    v23 = v11;
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

+ (BOOL)shouldTrackActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 clientDataBudgetName];
  if (!v5)
  {
    v7 = [v4 schedulingPriority];
    v8 = _DASSchedulingPriorityUserInitiated;
    if (v7 < _DASSchedulingPriorityUserInitiated)
    {
      v9 = [v4 widgetID];
      if (v9)
      {
        v6 = 1;
        goto LABEL_20;
      }
    }

    if (([v4 budgeted] & 1) != 0 || objc_msgSend(v4, "dataBudgeted"))
    {
      v10 = [v4 requiresNetwork];
      if (v10)
      {
        v3 = [v4 userInfo];
        v11 = [v3 objectForKeyedSubscript:kNWEndpointKey];
        if (v11)
        {

          v6 = 1;
LABEL_18:
          if (v7 >= v8)
          {
            goto LABEL_21;
          }

          v9 = 0;
LABEL_20:

          goto LABEL_21;
        }

        if (([v4 requestsApplicationLaunch] & 1) == 0)
        {
          v6 = 0;
LABEL_17:

          goto LABEL_18;
        }

LABEL_14:
        v12 = [v4 relatedApplications];
        v6 = [v12 count] != 0;

        if (!v10)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if ([v4 requestsApplicationLaunch])
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

- (void)startTrackingActivity:(id)a3
{
  v5 = a3;
  if ([_DASNetworkUsageTracker shouldTrackActivity:v5])
  {
    os_unfair_lock_lock(&self->_lock);
    startedActivites = self->_startedActivites;
    v7 = [v5 name];
    [(NSMutableSet *)startedActivites addObject:v7];

    os_unfair_lock_unlock(&self->_lock);
    v8 = [v5 clientDataBudgetName];
    if (v8)
    {
      goto LABEL_3;
    }

    v8 = [v5 relatedApplications];
    if (![v8 count])
    {
LABEL_34:

      goto LABEL_35;
    }

    if ([v5 requestsApplicationLaunch])
    {
LABEL_3:
    }

    else
    {
      v10 = [v5 widgetID];

      if (!v10)
      {
        goto LABEL_35;
      }
    }

    os_unfair_lock_lock(&self->_lock);
    v8 = [(NSMutableDictionary *)self->_activityToDataMap objectForKeyedSubscript:v5];
    if (!v8)
    {
      v8 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_activityToDataMap setObject:v8 forKeyedSubscript:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
    if ([v5 pid])
    {
      v9 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [v5 pid]);
    }

    else
    {
      v9 = 0;
    }

    v11 = [v5 requestsApplicationLaunch];
    if ((v11 & 1) != 0 || ([v5 widgetID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [v5 relatedApplications];
      v13 = [NSSet setWithArray:v12];

      if (v11)
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
    if ([v5 requestsApplicationLaunch])
    {
      v14 = kUsageProcessBundleName;
    }

    else
    {
      v15 = [v5 widgetID];
      v16 = &kUsageProcessProcName;
      if (v15)
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
    v23 = v8;
    v24 = v5;
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

- (double)stopTrackingActivity:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (![_DASNetworkUsageTracker shouldTrackActivity:v4])
  {
    goto LABEL_10;
  }

  os_unfair_lock_lock(&self->_lock);
  startedActivites = self->_startedActivites;
  v6 = [v4 name];
  LODWORD(startedActivites) = [(NSMutableSet *)startedActivites containsObject:v6];

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
  v8 = [v4 name];
  [(NSMutableSet *)v7 removeObject:v8];

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v4 clientDataBudgetName];
  if (v9)
  {
LABEL_4:

    goto LABEL_5;
  }

  v9 = [v4 relatedApplications];
  if (![(__objc2_class *)v9 count])
  {

    goto LABEL_10;
  }

  if ([v4 requestsApplicationLaunch])
  {
    goto LABEL_4;
  }

  v11 = [v4 widgetID];
  v12 = v11 == 0;

  if (v12)
  {
LABEL_10:
    v10 = v43[3];
    goto LABEL_43;
  }

LABEL_5:
  if ([v4 pid])
  {
    v9 = _DASUtils;
    v37 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [v4 pid]);
  }

  else
  {
    v37 = 0;
  }

  v13 = [v4 requestsApplicationLaunch];
  if ((v13 & 1) != 0 || ([v4 widgetID], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = [v4 relatedApplications];
    v15 = [NSSet setWithArray:v14];

    if (v13)
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

    v9 = 0;
  }

LABEL_26:
  if (v15)
  {
    if ([v4 requestsApplicationLaunch])
    {
      v16 = kUsageProcessBundleName;
    }

    else
    {
      v18 = [v4 widgetID];
      v19 = &kUsageProcessProcName;
      if (v18)
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
    v21 = v4;
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

    v23 = [v21 widgetID];

    if (v23)
    {
      v24 = [v21 relatedApplications];
      v25 = [v24 firstObject];
      v26 = [NSString stringWithFormat:@"com.apple.dasd.bytes.widgets.%@", v25];

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
    v17 = [(_DASNetworkUsageTracker *)self activityToDataMap];
    [v17 removeObjectForKey:v4];

    os_unfair_lock_unlock(&self->_lock);
    v10 = 0.0;
  }

LABEL_43:
  _Block_object_dispose(&v42, 8);

  return v10;
}

- (double)getDataConsumedFromBytesOnCell:(double)result bytesOnCellExpensive:(double)a4 bytesOnCellInexpensive:(double)a5 bytesOnWiFiExpensive:(double)a6
{
  v6 = a4 + a5 + a6;
  v7 = a5 * 0.05 + a4 + a6;
  if (v6 != 0.0)
  {
    return v7;
  }

  return result;
}

- (double)updateDataForActivity:(id)a3 bytesOnCell:(double)a4 bytesOnCellExpensive:(double)a5 bytesOnCellInexpensive:(double)a6 bytesOnWiFiExpensive:(double)a7 bytesOnWiFiInexpensive:(double)a8
{
  v14 = a3;
  v15 = [_DASPhotosPolicy isiCPLActivity:v14];
  v16 = [v14 relatedApplications];
  v17 = [v16 sortedArrayUsingSelector:"compare:"];
  v18 = [v17 firstObject];

  v19 = [v14 schedulingPriority];
  if (v19 <= _DASSchedulingPriorityDefault)
  {
    v20 = @"disc";
  }

  else
  {
    v20 = @"non-disc";
  }

  v21 = [NSString stringWithFormat:@"com.apple.dasd.bytes.%@.%@.cell", v18, v20];
  v22 = [v14 schedulingPriority];
  if (v22 <= _DASSchedulingPriorityDefault)
  {
    v23 = @"disc";
  }

  else
  {
    v23 = @"non-disc";
  }

  v24 = [NSString stringWithFormat:@"com.apple.dasd.bytes.%@.%@.wifi", v18, v23];
  v25 = v24;
  if (a5 + a6 + a7 + a8 > 0.0)
  {
    v88[0] = v24;
    v88[1] = v21;
    v26 = [NSArray arrayWithObjects:v88 count:2];
    v27 = v14;
    v28 = v15;
    v29 = self;
    v30 = v18;
    v31 = v25;
    v32 = v21;
    v33 = [NSNumber numberWithDouble:a7 + a8];
    v87[0] = v33;
    v34 = [NSNumber numberWithDouble:a5 + a6];
    v87[1] = v34;
    v35 = [NSArray arrayWithObjects:v87 count:2];
    [_DASMetricRecorder incrementOccurrencesForKeys:v26 byCounts:v35];

    v21 = v32;
    v25 = v31;
    v18 = v30;
    self = v29;
    v15 = v28;
    v14 = v27;
  }

  if (v15)
  {
    v36 = self->_log;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v72 = v25;
      v37 = v21;
      v38 = v36;
      v39 = [NSNumber numberWithDouble:a5];
      v40 = [NSNumber numberWithDouble:a6];
      v41 = [NSNumber numberWithDouble:a7];
      v42 = [NSNumber numberWithDouble:a8];
      v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 schedulingPriority]);
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
    v44 = [v14 relatedApplications];
    v45 = [v44 count];

    v46 = self->_log;
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if (v45 == 1)
    {
      if (v47)
      {
        log = v46;
        v67 = [NSNumber numberWithDouble:a5];
        v48 = [NSNumber numberWithDouble:a6];
        v49 = [NSNumber numberWithDouble:a7];
        [NSNumber numberWithDouble:a8];
        v70 = v21;
        v50 = v73 = v25;
        v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 schedulingPriority]);
        v52 = [v14 relatedApplications];
        v53 = [v52 firstObject];
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
        v86 = v53;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Cell Expensive Bytes: %{public}@, Cell Inexpensive Bytes: %{public}@, WiFi Expensive Bytes: %{public}@, WiFi Inexpensive Bytes: %{public}@, Priority: %{public}@, Applications: %@", buf, 0x3Eu);

        v21 = v70;
        v25 = v73;
      }
    }

    else if (v47)
    {
      loga = v46;
      v54 = [NSNumber numberWithDouble:a5];
      v55 = [NSNumber numberWithDouble:a6];
      v56 = [NSNumber numberWithDouble:a7];
      [NSNumber numberWithDouble:a8];
      v71 = v21;
      v57 = v74 = v25;
      v58 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 schedulingPriority]);
      v59 = [v14 relatedApplications];
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
      v86 = v59;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "Cell Expensive Bytes: %{public}@, Cell Inexpensive Bytes: %{public}@, WiFi Expensive Bytes: %{public}@, WiFi Inexpensive Bytes: %{public}@, Priority: %{public}@, Applications: %@", buf, 0x3Eu);

      v21 = v71;
      v25 = v74;
    }
  }

  v60 = 0.0;
  if ([_DASNetworkUsageTracker shouldTrackActivity:v14])
  {
    os_unfair_lock_lock(&self->_lock);
    startedActivites = self->_startedActivites;
    v62 = [v14 name];
    LOBYTE(startedActivites) = [(NSMutableSet *)startedActivites containsObject:v62];

    if ((startedActivites & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10011CDF8();
      }

      v63 = self->_startedActivites;
      v64 = [v14 name];
      [(NSMutableSet *)v63 addObject:v64];
    }

    os_unfair_lock_unlock(&self->_lock);
    [(_DASNetworkUsageTracker *)self getDataConsumedFromBytesOnCell:a4 bytesOnCellExpensive:a5 bytesOnCellInexpensive:a6 bytesOnWiFiExpensive:a7];
    v60 = v65;
  }

  return v60;
}

@end
@interface _DASNetworkQualityPolicy
+ (id)policyInstance;
+ (int64_t)currentNetworkQualityWithContext:(id)a3 interface:(int64_t *)a4;
- (BOOL)inDiscountedHoursAtDate:(id)a3;
- (BOOL)inLowCongestionHoursAtDate:(id)a3;
- (BOOL)isiCloudKeychainActivity:(id)a3;
- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4;
- (BOOL)unconstrainedNetworkAvailableForActivity:(id)a3 withContext:(id)a4 withRationale:(id)a5;
- (NSDictionary)discountedHours;
- (NSDictionary)lowCongestionHours;
- (_DASNetworkQualityPolicy)init;
- (double)predictedScoreForActivity:(id)a3 atDate:(id)a4;
- (double)scoreWithInexpensiveCellForActivity:(id)a3 networkQuality:(int64_t)a4 interface:(int64_t)a5 radioHot:(BOOL)a6;
- (id)initializeCoreTelephonyClient;
- (id)initializeTriggers;
- (id)responseForActivity:(id)a3 withState:(id)a4;
- (int)transferSizeIndex:(unint64_t)a3;
- (int64_t)companionMinimumQualityForActivity:(id)a3 interface:(int64_t)a4 loiStatus:(int64_t)a5;
- (void)clearOffPeakDiscountedHours;
- (void)loadCTInformationWithSDM:(BOOL)a3;
- (void)parseCTCongestionHoursDictionary:(id)a3 atDate:(id)a4;
- (void)preferredDataSimChanged:(id)a3;
- (void)registerForPredictionChanges;
- (void)setDiscountedHours:(id)a3;
- (void)setLowCongestionHours:(id)a3;
- (void)updatePNWStatus:(BOOL)a3;
- (void)updateSystemConstraintsWithContext:(id)a3;
@end

@implementation _DASNetworkQualityPolicy

+ (id)policyInstance
{
  if (qword_10020B348 != -1)
  {
    sub_1001209F8();
  }

  v3 = qword_10020B350;

  return v3;
}

- (id)initializeTriggers
{
  v10 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_wifiStatus];
  v9 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_wiredStatus];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:self->_cellStatus];
  v15[0] = @"identifier";
  v15[1] = @"predicate";
  v16[0] = @"com.apple.duetactivityscheduler.nwstatus.wifi";
  v16[1] = v10;
  v15[2] = @"deviceSet";
  v15[3] = @"mustWake";
  v16[2] = &off_1001C9A78;
  v16[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v17[0] = v4;
  v13[0] = @"identifier";
  v13[1] = @"predicate";
  v14[0] = @"com.apple.duetactivityscheduler.nwstatus.wired";
  v14[1] = v9;
  v13[2] = @"deviceSet";
  v13[3] = @"mustWake";
  v14[2] = &off_1001C9A78;
  v14[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v17[1] = v5;
  v11[0] = @"identifier";
  v11[1] = @"predicate";
  v12[0] = @"com.apple.duetactivityscheduler.nwstatus.cell";
  v12[1] = v3;
  v11[2] = @"deviceSet";
  v11[3] = @"mustWake";
  v12[2] = &off_1001C9A78;
  v12[3] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v17[2] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:3];

  return v7;
}

- (void)registerForPredictionChanges
{
  v3 = +[_CDClientContext userContext];
  v4 = [v3 objectForKeyedSubscript:self->_wifiStatus];

  v5 = +[_CDNetworkContext predictionKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  objc_storeStrong(&self->_wifiPredictionTimeline, v6);
  v7 = [_DASDaemonLogger logForCategory:@"predictions"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10012078C();
  }

  [(_DASPredictionManager *)self->_predictionManager setObject:v6 forKeyedSubscript:@"wifiPredictions"];
  v8 = +[_DASPLLogger sharedInstance];
  [v8 recordPrediction:v6 key:@"wiFiAssociatedPrediction" valueMultiplier:1];

  v9 = +[_CDClientContext userContext];
  v10 = [v9 objectForKeyedSubscript:self->_cellStatus];

  v11 = +[_CDNetworkContext predictionKey];
  v12 = [v10 objectForKeyedSubscript:v11];

  objc_storeStrong(&self->_cellPredictionTimeline, v12);
  v13 = [_DASDaemonLogger logForCategory:@"predictions"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100120800();
  }

  [(_DASPredictionManager *)self->_predictionManager setObject:v12 forKeyedSubscript:@"cellPredictions"];
  v14 = +[_DASPLLogger sharedInstance];
  [v14 recordPrediction:v12 key:@"cellQualityPrediction" valueMultiplier:1];

  v15 = +[_CDContextPredictionQueries keyPathForWiFiQualityPrediction];
  v16 = [_CDContextualPredicate predicateForChangeAtKeyPath:v15];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100064664;
  v25[3] = &unk_1001B6B50;
  v25[4] = self;
  v26 = v15;
  v17 = v15;
  v18 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.duetactivityscheduler.wifiqualityprediction" contextualPredicate:v16 callback:v25];

  [(_CDContext *)self->_userContext registerCallback:v18];
  v19 = +[_CDContextPredictionQueries keyPathForCellQualityPrediction];
  v20 = [_CDContextualPredicate predicateForChangeAtKeyPath:v19];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100064774;
  v23[3] = &unk_1001B6B50;
  v23[4] = self;
  v24 = v19;
  v21 = v19;
  v22 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.duetactivityscheduler.cellqualityprediction" contextualPredicate:v20 callback:v23];

  [(_CDContext *)self->_userContext registerCallback:v22];
}

- (_DASNetworkQualityPolicy)init
{
  v32.receiver = self;
  v32.super_class = _DASNetworkQualityPolicy;
  v2 = [(_DASNetworkQualityPolicy *)&v32 init];
  v3 = v2;
  if (v2)
  {
    policyName = v2->_policyName;
    v2->_policyName = @"Network Quality Policy";

    v5 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
    wifiStatus = v3->_wifiStatus;
    v3->_wifiStatus = v5;

    v7 = +[_DASNetworkEvaluationMonitor sharedInstance];
    networkEvaluator = v3->_networkEvaluator;
    v3->_networkEvaluator = v7;

    v9 = +[_DASPredictionManager sharedManager];
    predictionManager = v3->_predictionManager;
    v3->_predictionManager = v9;

    v11 = +[_CDClientContext userContext];
    userContext = v3->_userContext;
    v3->_userContext = v11;

    v13 = +[_CDNetworkContext keyPathForWiredConnectionStatus];
    wiredStatus = v3->_wiredStatus;
    v3->_wiredStatus = v13;

    v15 = +[_CDNetworkContext keyPathForCellConnectionStatus];
    cellStatus = v3->_cellStatus;
    v3->_cellStatus = v15;

    v17 = [(_DASNetworkQualityPolicy *)v3 initializeTriggers];
    triggers = v3->_triggers;
    v3->_triggers = v17;

    [(_DASNetworkQualityPolicy *)v3 clearOffPeakDiscountedHours];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.dasd.networkqualitypolicy.telephony", v19);
    telephonyQueue = v3->_telephonyQueue;
    v3->_telephonyQueue = v20;

    v22 = [(_DASNetworkQualityPolicy *)v3 initializeCoreTelephonyClient];
    v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3->_telephonyQueue);
    refreshHoursTimer = v3->_refreshHoursTimer;
    v3->_refreshHoursTimer = v23;

    v25 = v3->_refreshHoursTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100064AC4;
    handler[3] = &unk_1001B5668;
    v26 = v3;
    v31 = v26;
    dispatch_source_set_event_handler(v25, handler);
    v27 = v3->_refreshHoursTimer;
    v28 = dispatch_walltime(0, 21600000000000);
    dispatch_source_set_timer(v27, v28, 0x13A52453C000uLL, 0x3B9ACA00uLL);
    dispatch_activate(v3->_refreshHoursTimer);
    [(_DASNetworkQualityPolicy *)v26 loadCTInformationWithSDM:1];
  }

  return v3;
}

- (void)clearOffPeakDiscountedHours
{
  [(_DASNetworkQualityPolicy *)self setLowCongestionHours:&__NSDictionary0__struct];

  [(_DASNetworkQualityPolicy *)self setDiscountedHours:&__NSDictionary0__struct];
}

- (void)parseCTCongestionHoursDictionary:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!qword_10020B340)
  {
    v8 = +[NSCalendar currentCalendar];
    v9 = qword_10020B340;
    qword_10020B340 = v8;
  }

  v10 = +[NSDate distantFuture];
  v11 = [v6 objectForKeyedSubscript:@"ExpirationDate"];
  if (v11)
  {
    v12 = objc_alloc_init(NSISO8601DateFormatter);
    v13 = [v12 dateFromString:v11];
    v14 = v13;
    if (v13)
    {
      v15 = v7;
      v16 = v13;

      v17 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Expiration Date is %@", buf, 0xCu);
      }

      v10 = v16;
      v7 = v15;
    }
  }

  [v10 timeIntervalSinceDate:v7];
  if (v18 >= 0.0)
  {
    v69 = v10;
    v70 = self;
    v71 = v11;
    v75 = [qword_10020B340 components:540 fromDate:v7];
    v72 = v6;
    v73 = [v6 objectForKeyedSubscript:@"TimeWindows"];
    v20 = +[NSMutableDictionary dictionary];
    v74 = +[NSMutableDictionary dictionary];
    v80 = objc_alloc_init(NSDateFormatter);
    [v80 setDateFormat:@"HH:mm:SS"];
    v21 = 0;
    v78 = v20;
    v77 = v7;
    do
    {
      v76 = v21;
      v22 = (v21 + [v75 weekday] - 1) % 7;
      v23 = [&off_1001CAD98 objectAtIndexedSubscript:v22];
      v24 = [v73 objectForKeyedSubscript:v23];

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = v24;
      v85 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
      if (v85)
      {
        v83 = v22;
        v84 = *v88;
        do
        {
          for (i = 0; i != v85; i = i + 1)
          {
            if (*v88 != v84)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v87 + 1) + 8 * i);
            v27 = [v26 objectForKeyedSubscript:@"WindowType"];
            v28 = [v26 objectForKeyedSubscript:@"StartTime"];
            v29 = [v26 objectForKeyedSubscript:@"EndTime"];
            v30 = v29;
            if (v28)
            {
              v31 = v29 == 0;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
              v32 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                [&off_1001CAD98 objectAtIndexedSubscript:v22];
                v33 = v20;
                v34 = v7;
                v36 = v35 = v27;
                *buf = 138412802;
                v92 = v36;
                v93 = 2112;
                v94 = v28;
                v95 = 2112;
                v96 = v30;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Error reading times for %@ (%@-%@)", buf, 0x20u);

                v27 = v35;
                v7 = v34;
                v20 = v33;
                v22 = v83;
              }
            }

            else
            {
              v86 = v27;
              v37 = [v80 dateFromString:v28];
              v38 = [v80 dateFromString:v30];
              v39 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
              v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
              if (v37)
              {
                v41 = v38 == 0;
              }

              else
              {
                v41 = 1;
              }

              if (v41)
              {
                if (v40)
                {
                  v42 = [&off_1001CAD98 objectAtIndexedSubscript:v22];
                  *buf = 138412802;
                  v92 = v42;
                  v93 = 2112;
                  v94 = v28;
                  v95 = 2112;
                  v96 = v30;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Error parsing times for %@ (%@-%@)", buf, 0x20u);
                }

                v32 = v37;
                v27 = v86;
              }

              else
              {
                if (v40)
                {
                  v43 = [&off_1001CAD98 objectAtIndexedSubscript:v22];
                  *buf = 138413058;
                  v92 = v86;
                  v93 = 2112;
                  v94 = v28;
                  v95 = 2112;
                  v96 = v30;
                  v97 = 2112;
                  v98 = v43;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@ hours are %@-%@ for %@", buf, 0x2Au);
                }

                v39 = [v75 copy];
                -[NSObject setDay:](v39, "setDay:", [v75 day] + v76);
                -[NSObject setHour:](v39, "setHour:", [qword_10020B340 component:32 fromDate:v37]);
                -[NSObject setMinute:](v39, "setMinute:", [qword_10020B340 component:64 fromDate:v37]);
                -[NSObject setSecond:](v39, "setSecond:", [qword_10020B340 component:128 fromDate:v37]);
                v32 = [qword_10020B340 dateFromComponents:v39];

                -[NSObject setHour:](v39, "setHour:", [qword_10020B340 component:32 fromDate:v38]);
                -[NSObject setMinute:](v39, "setMinute:", [qword_10020B340 component:64 fromDate:v38]);
                -[NSObject setSecond:](v39, "setSecond:", [qword_10020B340 component:128 fromDate:v38]);
                v44 = [qword_10020B340 dateFromComponents:v39];

                [v44 timeIntervalSinceDate:v32];
                if (v45 >= 0.0)
                {
                  v38 = v44;
                }

                else
                {
                  v38 = [v44 dateByAddingTimeInterval:86400.0];
                }

                [v38 timeIntervalSinceDate:v32];
                v47 = round(v46 * 0.5);
                if (v47 > 10800.0)
                {
                  v47 = 10800.0;
                }

                v48 = [v32 dateByAddingTimeInterval:arc4random_uniform(fmax(v47, 0.0))];
                [v7 timeIntervalSinceDate:v38];
                v50 = v49;
                v51 = [NSDateInterval alloc];
                v52 = v51;
                v79 = v48;
                if (v50 <= 0.0)
                {
                  v82 = [v51 initWithStartDate:v48 endDate:v38];
                }

                else
                {
                  [v48 dateByAddingTimeInterval:604800.0];
                  v54 = v53 = v7;
                  v55 = [v38 dateByAddingTimeInterval:604800.0];
                  v82 = [v52 initWithStartDate:v54 endDate:v55];

                  v7 = v53;
                }

                v27 = v86;
                v20 = v78;
                if (([v86 isEqualToString:@"OffPeak"] & 1) != 0 || objc_msgSend(v86, "isEqualToString:", @"DiscountedRateAndOffPeak"))
                {
                  v56 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  v57 = [v78 objectForKeyedSubscript:v56];

                  if (!v57)
                  {
                    v57 = +[NSMutableArray array];
                  }

                  [v57 addObject:v82];
                  v58 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  [v78 setObject:v57 forKeyedSubscript:v58];

                  v20 = v78;
                  v7 = v77;
                  v27 = v86;
                }

                if (([v27 isEqualToString:@"DiscountedRate"] & 1) != 0 || objc_msgSend(v27, "isEqualToString:", @"DiscountedRateAndOffPeak"))
                {
                  v59 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  v60 = [v74 objectForKeyedSubscript:v59];

                  if (!v60)
                  {
                    v60 = +[NSMutableArray array];
                  }

                  [v60 addObject:v82];
                  v61 = [NSNumber numberWithUnsignedInteger:v83 + 1];
                  [v74 setObject:v60 forKeyedSubscript:v61];

                  v20 = v78;
                  v7 = v77;
                  v27 = v86;
                }

                v22 = v83;
              }
            }
          }

          v85 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
        }

        while (v85);
      }

      v21 = v76 + 1;
    }

    while (v76 != 6);
    v62 = [v20 copy];
    [(_DASNetworkQualityPolicy *)v70 setLowCongestionHours:v62];

    v63 = [v74 copy];
    [(_DASNetworkQualityPolicy *)v70 setDiscountedHours:v63];

    v64 = [v7 dateByAddingTimeInterval:21600.0];
    v10 = v69;
    v65 = [v69 earlierDate:v64];

    refreshHoursTimer = v70->_refreshHoursTimer;
    [v65 timeIntervalSinceDate:v7];
    v68 = dispatch_walltime(0, (v67 * 1000000000.0 + 1.0e10));
    dispatch_source_set_timer(refreshHoursTimer, v68, 0x13A52453C000uLL, 0x2540BE400uLL);

    v11 = v71;
    v6 = v72;
  }

  else
  {
    v19 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Expiration Date in the past (%@). Exiting", buf, 0xCu);
    }

    [(_DASNetworkQualityPolicy *)self clearOffPeakDiscountedHours];
  }
}

- (id)initializeCoreTelephonyClient
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (!coreTelephonyClient)
  {
    v4 = [[CoreTelephonyClient alloc] initWithQueue:self->_telephonyQueue];
    v5 = self->_coreTelephonyClient;
    self->_coreTelephonyClient = v4;

    [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:self];
    coreTelephonyClient = self->_coreTelephonyClient;
  }

  return coreTelephonyClient;
}

- (void)loadCTInformationWithSDM:(BOOL)a3
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065720;
  v4[3] = &unk_1001B6BA0;
  v4[4] = self;
  v5 = a3;
  [(CoreTelephonyClient *)coreTelephonyClient getPreferredDataSubscriptionContext:v4];
}

- (void)updatePNWStatus:(BOOL)a3
{
  if (a3)
  {
    objc_initWeak(&location, self);
    coreTelephonyClient = self->_coreTelephonyClient;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100065BD0;
    v5[3] = &unk_1001B6BC8;
    objc_copyWeak(&v6, &location);
    [(CoreTelephonyClient *)coreTelephonyClient isPrivateNetworkSIM:0 completion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_privateNetworkCellConnection = 0;
  }
}

- (BOOL)inLowCongestionHoursAtDate:(id)a3
{
  v4 = a3;
  v5 = qword_10020B340;
  if (!qword_10020B340)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = qword_10020B340;
    qword_10020B340 = v6;

    v5 = qword_10020B340;
  }

  v8 = [v5 component:512 fromDate:v4];
  v9 = 0;
  v10 = v8 - 1;
  v11 = 1;
  do
  {
    v12 = v11;
    v10 = (v9 + v10 + 7) % 7;
    v13 = [(_DASNetworkQualityPolicy *)self lowCongestionHours];
    v14 = [NSNumber numberWithInteger:v10 + 1];
    v15 = [v13 objectForKeyedSubscript:v14];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v23 + 1) + 8 * i) containsDate:v4])
          {

            v21 = 1;
            goto LABEL_15;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
    v21 = 0;
    v9 = -1;
  }

  while ((v12 & 1) != 0);
LABEL_15:

  return v21;
}

- (BOOL)inDiscountedHoursAtDate:(id)a3
{
  v4 = a3;
  v5 = qword_10020B340;
  if (!qword_10020B340)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = qword_10020B340;
    qword_10020B340 = v6;

    v5 = qword_10020B340;
  }

  v8 = [v5 component:512 fromDate:v4];
  v9 = 0;
  v10 = v8 - 1;
  v11 = 1;
  do
  {
    v12 = v11;
    v10 = (v9 + v10 + 7) % 7;
    v13 = [(_DASNetworkQualityPolicy *)self discountedHours];
    v14 = [NSNumber numberWithInteger:v10 + 1];
    v15 = [v13 objectForKeyedSubscript:v14];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v23 + 1) + 8 * i) containsDate:v4])
          {

            v21 = 1;
            goto LABEL_15;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
    v21 = 0;
    v9 = -1;
  }

  while ((v12 & 1) != 0);
LABEL_15:

  return v21;
}

+ (int64_t)currentNetworkQualityWithContext:(id)a3 interface:(int64_t *)a4
{
  v5 = a3;
  v6 = [_CDNetworkContext wiredQuality:v5];
  if (v6 < 1)
  {
    v9 = [_CDNetworkContext wifiQuality:v5];
    if (v9)
    {
      v7 = v9;
      if (a4)
      {
        v8 = [_CDNetworkContext wifiInterfaceClass:v5];
        goto LABEL_7;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = [_CDNetworkContext cellInterfaceClass:v5];
      }

      v7 = [_CDNetworkContext cellQuality:v5];
    }
  }

  else
  {
    v7 = v6;
    if (a4)
    {
      v8 = [_CDNetworkContext wiredInterfaceClass:v5];
LABEL_7:
      *a4 = v8;
    }
  }

  return v7;
}

- (void)updateSystemConstraintsWithContext:(id)a3
{
  v3 = a3;
  v4 = [_CDNetworkContext wiredQuality:v3];
  v5 = [_CDNetworkContext wifiQuality:v3];
  v6 = [_CDNetworkContext cellQuality:v3];

  v9 = +[_DASDaemon sharedInstance];
  if (v5 > 20 || v4 >= 21)
  {
    [v9 removeConstraint:16 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
    [v9 removeConstraint:16 forSchedulingPriority:_DASSchedulingPriorityUtility];
    v8 = _DASSchedulingPriorityMaintenance;
LABEL_7:
    [v9 removeConstraint:32 forSchedulingPriority:v8];
    [v9 removeConstraint:32 forSchedulingPriority:_DASSchedulingPriorityUtility];
    goto LABEL_9;
  }

  [v9 addConstraint:16 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  [v9 addConstraint:16 forSchedulingPriority:_DASSchedulingPriorityUtility];
  v8 = _DASSchedulingPriorityMaintenance;
  if (v6 >= 21)
  {
    goto LABEL_7;
  }

  [v9 addConstraint:32 forSchedulingPriority:_DASSchedulingPriorityMaintenance];
  [v9 addConstraint:32 forSchedulingPriority:_DASSchedulingPriorityUtility];
LABEL_9:
}

- (BOOL)shouldIgnoreTrigger:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_CDNetworkContext wiredQuality:v7];
  v9 = [_CDNetworkContext wifiQuality:v7];
  v10 = [_CDNetworkContext cellQuality:v7];
  v11 = [_CDNetworkContext cellInterfaceUp:v7];
  v12 = v9 > 0 || v10 < 1;
  v13 = !v12 && ((byte_10020B358 & 1) != 0 || byte_10020B359 != 1);
  [(_DASNetworkQualityPolicy *)self updatePNWStatus:v13];
  byte_10020B359 = v10 > 0;
  byte_10020B358 = v9 > 0;
  [(_DASNetworkQualityPolicy *)self updateSystemConstraintsWithContext:v7];
  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.nwstatus.wired"])
  {
    v14 = v8 < 21;
LABEL_16:
    v16 = v14;
    goto LABEL_27;
  }

  if ([v6 isEqualToString:@"com.apple.duetactivityscheduler.nwstatus.wifi"])
  {
    v15 = +[_DASPLLogger sharedInstance];
    [v15 reportNewStatus:v9 > 20 forTrigger:off_10020ACD8];

    v14 = v8 > 20 || v9 < 21;
    goto LABEL_16;
  }

  v17 = [v6 isEqualToString:@"com.apple.duetactivityscheduler.nwstatus.cell"];
  v18 = (v10 < 21) | v11 ^ 1;
  if (v9 > 20)
  {
    v18 = 1;
  }

  if (v8 <= 20)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (v17)
  {
    v16 = v19;
  }

  else
  {
    v16 = 0;
  }

LABEL_27:

  return v16 & 1;
}

- (int64_t)companionMinimumQualityForActivity:(id)a3 interface:(int64_t)a4 loiStatus:(int64_t)a5
{
  v7 = a3;
  v8 = [v7 schedulingPriority];
  if (v8 >= _DASSchedulingPriorityUserInitiated)
  {
    v10 = 20;
  }

  else
  {
    v9 = [v7 deferred];
    v10 = 20;
    if (a4 != 3 && (v9 & 1) == 0)
    {
      if (a4 == 1)
      {
        v11 = [v7 startBefore];
        [v11 timeIntervalSinceNow];
        if (v12 < 0.0)
        {

LABEL_20:
          v10 = 50;
          goto LABEL_26;
        }

        v18 = [v7 requestsImmediateRuntime];

        if (v18)
        {
          goto LABEL_20;
        }

        v19 = [v7 transferSize];
        v13 = v19;
        if (a5 == 1 && v19 < _DASActivityTransferSizeLarge)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = [v7 transferSize];
      }

      v14 = [v7 schedulingPriority];
      if (v14 > _DASSchedulingPriorityMaintenance || ([v7 launchReason], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", _DASLaunchReasonBackgroundRemoteNotification), v15, (v16 & 1) != 0))
      {
LABEL_11:
        v17 = [v7 schedulingPriority];
        if (v17 > _DASSchedulingPriorityUtility || (a4 != 2 || v13 < _DASActivityTransferSizeLarge) && (a4 != 1 || v13 < _DASActivityTransferSizeVeryLarge))
        {
          goto LABEL_20;
        }

LABEL_25:
        v10 = 100;
        goto LABEL_26;
      }

      v20 = [v7 noTransferSizeSpecified];
      v10 = 100;
      if (a4 != 2 && (v20 & 1) == 0)
      {
        if (a4 == 1 && v13 > _DASActivityTransferSizeLarge)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_26:

  return v10;
}

- (int)transferSizeIndex:(unint64_t)a3
{
  if (_DASActivityTransferSizeVerySmall >= a3)
  {
    return 0;
  }

  if (_DASActivityTransferSizeSmall >= a3)
  {
    return 1;
  }

  if (_DASActivityTransferSizeModerate >= a3)
  {
    return 2;
  }

  if (_DASActivityTransferSizeLarge >= a3)
  {
    return 3;
  }

  if (_DASActivityTransferSizeVeryLarge >= a3)
  {
    return 4;
  }

  return 5;
}

- (double)scoreWithInexpensiveCellForActivity:(id)a3 networkQuality:(int64_t)a4 interface:(int64_t)a5 radioHot:(BOOL)a6
{
  result = 0.0;
  if (a4 >= 50)
  {
    v7 = a6;
    v11 = -[_DASNetworkQualityPolicy transferSizeIndex:](self, "transferSizeIndex:", [a3 transferSize]);
    v12 = v11;
    if (a5 == 1)
    {
      v13 = a4 != 100;
      v14 = &unk_100158AD8 + 16 * v11;
    }

    else
    {
      if (+[_DASNetworkEvaluationMonitor inexpensivePathAvailable])
      {
        v15 = (&unk_100158BF8 + 64 * v12 + 32 * [(_DASNetworkQualityPolicy *)self smartDataModeEnabled]+ 16 * v7 + 8 * (a4 != 100));
        return *v15;
      }

      v13 = a4 != 100;
      v14 = &unk_100158B38 + 32 * v12 + 16 * v7;
    }

    v15 = &v14[8 * v13];
    return *v15;
  }

  return result;
}

- (BOOL)isiCloudKeychainActivity:(id)a3
{
  v3 = a3;
  if ([v3 requiresNetwork])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 relatedApplications];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) lowercaseString];
          if ([v9 containsString:@"securityd"])
          {

LABEL_15:
            v11 = 1;
            goto LABEL_16;
          }

          v10 = [v9 containsString:@"trustedpeershelper"];

          if (v10)
          {
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v11 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_16:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)unconstrainedNetworkAvailableForActivity:(id)a3 withContext:(id)a4 withRationale:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_DASNetworkEvaluationMonitor sharedInstance];
  v12 = [v11 isUnconstrainedPathAvailableForActivity:v8];

  if (v12)
  {
    goto LABEL_9;
  }

  if ([v8 requiresUnconstrainedNetworking])
  {
    v13 = @"requiresUnconstrainedNetworking == YES";
LABEL_15:
    v21 = [NSPredicate predicateWithFormat:v13];
    [v10 addRationaleWithCondition:v21];

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if ([(_DASNetworkQualityPolicy *)self isiCloudKeychainActivity:v8])
  {
    v14 = [_DASDaemonLogger logForCategory:@"lowDataMode"];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 67109120;
      LODWORD(v35) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "iCloudKeychainActivity=%u", &v34, 8u);
    }

    v15 = @"isiCloudKeychainActivity == YES";
LABEL_8:
    v16 = [NSPredicate predicateWithFormat:v15];
    [v10 addRationaleWithCondition:v16];

LABEL_9:
    v17 = 1;
    goto LABEL_17;
  }

  if ([_DASPhotosPolicy isiCPLActivity:v8])
  {
    v18 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v19 = [v9 objectForKeyedSubscript:v18];
    v20 = [v19 unsignedIntegerValue];

    if ((v20 & 0x10) != 0)
    {
      v23 = [_DASDaemonLogger logForCategory:@"lowDataMode"];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "shouldOverrideLDM == YES", &v34, 2u);
      }

      v15 = @"shouldOverrideLDM == YES";
      goto LABEL_8;
    }
  }

  if (([v8 requestsApplicationLaunch] & 1) != 0 || objc_msgSend(v8, "requestsExtensionLaunch"))
  {
    v13 = @"requestsLaunch == YES";
    goto LABEL_15;
  }

  v24 = [v8 startBefore];
  v25 = [v8 startAfter];
  [v24 timeIntervalSinceDate:v25];
  v27 = v26;

  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  v28 = [v8 startAfter];
  [v28 timeIntervalSinceNow];
  v30 = -v29;

  v31 = v30 / v27;
  if (v31 < 0.9)
  {
    goto LABEL_16;
  }

  v32 = [NSPredicate predicateWithFormat:@"isNearingDeadline == YES"];
  [v10 addRationaleWithCondition:v32];

  v33 = [_DASDaemonLogger logForCategory:@"lowDataMode"];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 134217984;
    v35 = v31 * 100.0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "isNearingDeadline == YES (%2.0f%% complete)", &v34, 0xCu);
  }

  v17 = 1;
  [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.ldm.nearingDeadline" byCount:1];
LABEL_17:

  return v17;
}

- (id)responseForActivity:(id)a3 withState:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000676C8;
  block[3] = &unk_1001B56E0;
  block[4] = self;
  v7 = a4;
  v67 = v7;
  if (qword_10020B360 != -1)
  {
    dispatch_once(&qword_10020B360, block);
  }

  v8 = [[_DASNetworkQualityPolicyResponseRationale alloc] initWithPolicyName:self->_policyName];
  if ([v6 isUpload])
  {
    v9 = [v6 uploadSize];
  }

  else
  {
    v9 = [v6 downloadSize];
  }

  [(_DASNetworkQualityPolicyResponseRationale *)v8 setActivityTransferSize:v9];
  v10 = [(_DASNetworkQualityPolicyResponseRationale *)v8 activityTransferSize];
  if (!v10)
  {
    v10 = [v6 transferSize];
  }

  [(_DASNetworkQualityPolicyResponseRationale *)v8 setActivityTransferSize:v10];
  v11 = objc_autoreleasePoolPush();
  v12 = [(_DASNetworkEvaluationMonitor *)self->_networkEvaluator isNetworkPathAvailableForActivity:v6];
  objc_autoreleasePoolPop(v11);
  if ((v12 & 1) == 0)
  {
    [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"networkPathAvailability" withRequiredValue:1.0 withCurrentValue:0.0];
    v26 = [v6 requiresInexpensiveNetworking];
    v27 = [(_DASPolicyResponseRationale *)v8 responseOptions];
    v28 = 256;
    if (!v26)
    {
      v28 = 1;
    }

    [(_DASPolicyResponseRationale *)v8 setResponseOptions:v27 | v28];
    goto LABEL_18;
  }

  v13 = [v6 schedulingPriority];
  if (v13 < _DASSchedulingPriorityUtility && ([v6 deferred] & 1) == 0 && !-[_DASNetworkQualityPolicy unconstrainedNetworkAvailableForActivity:withContext:withRationale:](self, "unconstrainedNetworkAvailableForActivity:withContext:withRationale:", v6, v7, v8))
  {
    [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 2];
    [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"unconstrainedNetworkAvailable" withRequiredValue:1.0 withCurrentValue:0.0];
LABEL_18:
    v24 = 0x384uLL;
    v25 = 100;
    goto LABEL_30;
  }

  v14 = [v6 userInfo];
  v15 = [v14 objectForKeyedSubscript:_DASCTSMailFetchKey];
  if ([v15 BOOLValue])
  {
    v16 = +[NSDate date];
    v17 = [v6 startBefore];
    [v16 timeIntervalSinceDate:v17];
    v19 = v18;
    v20 = [v6 startBefore];
    v21 = [v6 startAfter];
    [v20 timeIntervalSinceDate:v21];
    v23 = v22;

    if (v19 > v23)
    {
      v24 = 0x384uLL;
      v25 = 67;
LABEL_30:
      v34 = [_DASPolicyResponse policyResponseWithDecision:v25 validityDuration:v8 rationale:v24];
      goto LABEL_31;
    }
  }

  else
  {
  }

  v29 = [v6 schedulingPriority];
  if (v29 >= _DASSchedulingPriorityUserInitiated)
  {
    goto LABEL_25;
  }

  v30 = [v6 launchReason];
  if ([v30 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
  {
    v31 = [v6 submitDate];
    [v31 timeIntervalSinceNow];
    v33 = v32;

    if (v33 < 0.0)
    {
      v33 = -v33;
    }

    if (v33 < 60.0)
    {
LABEL_25:
      v24 = 0x384uLL;
LABEL_29:
      v25 = 0;
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ([_CDNetworkContext wiredQuality:v7]>= 1)
  {
    v24 = 86400.0;
    goto LABEL_29;
  }

  v36 = [_CDNetworkContext wifiQuality:v7];
  v37 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
  v38 = [v7 objectForKeyedSubscript:v37];

  v39 = +[_CDNetworkContext loiKey];
  v63 = v38;
  v40 = [v38 objectForKeyedSubscript:v39];
  v41 = [v40 integerValue];

  v42 = [(_DASNetworkQualityPolicy *)self minimumQualityForActivity:v6 interface:1 interfaceSubtype:0 loiStatus:v41];
  v43 = +[_CDContextQueries keyPathForPluginStatus];
  v44 = [v7 objectForKeyedSubscript:v43];
  v45 = [v44 BOOLValue];

  v65 = 1;
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setWifiLQMObserved:v36];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setWifiLQMRequired:v42];
  [(_DASNetworkQualityPolicy *)self scoreForActivity:v6 networkQuality:v36 interface:1 interfaceSubtype:0 pluginStatus:v45 radioHot:0 linkAvailable:&v65 loiStatus:v41];
  v47 = v46;
  [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"wifiQuality" withRequiredValue:v42 withCurrentValue:v36];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setInterfaceType:@"wifi"];
  if (v47 > 0.0)
  {
    goto LABEL_36;
  }

  if ([_DASPhotosPolicy isiCPLActivity:v6])
  {
    v49 = +[_DASPhotosPolicy keyPathForPhotosBudgetOverride];
    v50 = [v7 objectForKeyedSubscript:v49];
    v51 = [v50 unsignedIntegerValue];

    if ((v51 & 2) != 0)
    {
      [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"photosOverrideEnergy" withRequiredValue:1.0 withCurrentValue:1.0];
      v59 = 0x384uLL;
      v60 = 0;
LABEL_52:
      v48 = [_DASPolicyResponse policyResponseWithDecision:v60 validityDuration:v8 rationale:v59];
      goto LABEL_53;
    }
  }

  v52 = [_CDNetworkContext cellQuality:v7];
  v53 = [(_DASNetworkQualityPolicy *)self minimumQualityForActivity:v6 interface:2 interfaceSubtype:0 loiStatus:0];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setCellLQMObserved:v52];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setCellLQMRequired:v53];
  [(_DASPolicyResponseRationale *)v8 addRationaleForCondition:@"cellQuality" withRequiredValue:v53 withCurrentValue:v52];
  v54 = [_CDNetworkContext cellInterfaceUp:v7];
  [(_DASNetworkQualityPolicyResponseRationale *)v8 setInterfaceType:@"cell"];
  v64 = 1;
  [(_DASNetworkQualityPolicy *)self scoreForActivity:v6 networkQuality:v52 interface:2 interfaceSubtype:0 pluginStatus:v45 radioHot:v54 linkAvailable:&v64 loiStatus:0];
  if (v55 <= 0.0)
  {
    if ((v65 & 1) != 0 || v64 == 1 && ([v6 requiresInexpensiveNetworking] & 1) == 0)
    {
      v61 = 4;
    }

    else
    {
      v61 = 8;
    }

    [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| v61];
    v59 = 0x384uLL;
    v60 = 33;
    goto LABEL_52;
  }

  v47 = v55;
  if ([v6 uploadSize])
  {
    v56 = [_CDNetworkContext cellUploadCost:v7];
    v57 = v56;
    if (v56 == 2)
    {
      v58 = 0.5;
      goto LABEL_55;
    }

    if (v56 == 3)
    {
      v58 = 0.1;
LABEL_55:
      v47 = v47 * v58;
      [(_DASPolicyResponseRationale *)v8 setResponseOptions:[(_DASPolicyResponseRationale *)v8 responseOptions]| 0x10];
      v62 = [NSPredicate predicateWithFormat:@"powerCost == %ld", v57];
      [(_DASPolicyResponseRationale *)v8 addRationaleWithCondition:v62];
    }
  }

LABEL_36:
  v48 = [_DASPolicyResponse policyResponseWithScore:v8 validityDuration:v47 rationale:0x384uLL];
LABEL_53:
  v34 = v48;

LABEL_31:

  return v34;
}

- (NSDictionary)lowCongestionHours
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_lowCongestionHours copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setLowCongestionHours:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  lowCongestionHours = obj->_lowCongestionHours;
  obj->_lowCongestionHours = v4;

  objc_sync_exit(obj);
}

- (NSDictionary)discountedHours
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_discountedHours copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setDiscountedHours:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  discountedHours = obj->_discountedHours;
  obj->_discountedHours = v4;

  objc_sync_exit(obj);
}

- (double)predictedScoreForActivity:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASNetworkQualityPolicy *)self wifiPredictionTimeline];
  v9 = [v8 valueAtDate:v7];
  v10 = [v9 integerValue];

  v11 = [(_DASPredictionManager *)self->_predictionManager objectForKeyedSubscript:@"plugin"];
  v12 = [v11 valueAtDate:v7];
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
    v15 = v14 > 0.5;
  }

  else
  {
    v15 = 0;
  }

  [(_DASNetworkQualityPolicy *)self scoreForActivity:v6 networkQuality:v10 interface:1 interfaceSubtype:0 pluginStatus:v15 radioHot:0 linkAvailable:0 loiStatus:0];
  v17 = v16;
  if (![v6 requiresInexpensiveNetworking] || (v18 = v17, -[_DASNetworkQualityPolicy inDiscountedHoursAtDate:](self, "inDiscountedHoursAtDate:", v7)))
  {
    v19 = [(_DASNetworkQualityPolicy *)self cellPredictionTimeline];
    v20 = [v19 valueAtDate:v7];
    v21 = [v20 integerValue];

    if (v13)
    {
      [v13 doubleValue];
      v23 = v22 > 0.5;
    }

    else
    {
      v23 = 0;
    }

    [(_DASNetworkQualityPolicy *)self scoreForActivity:v6 networkQuality:v21 interface:2 interfaceSubtype:0 pluginStatus:v23 radioHot:0 linkAvailable:0 loiStatus:0];
    v25 = v24;
    if (v24 <= 0.0 || (v18 = 1.0, ![(_DASNetworkQualityPolicy *)self inLowCongestionHoursAtDate:v7]))
    {
      if (v17 >= v25)
      {
        v18 = v17;
      }

      else
      {
        v18 = v25;
      }
    }
  }

  return v18;
}

- (void)preferredDataSimChanged:(id)a3
{
  v4 = a3;
  v5 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preferred data SIM changed for context: %@", &v7, 0xCu);
  }

  [(_DASNetworkQualityPolicy *)self loadCTInformationWithSDM:1];
}

@end
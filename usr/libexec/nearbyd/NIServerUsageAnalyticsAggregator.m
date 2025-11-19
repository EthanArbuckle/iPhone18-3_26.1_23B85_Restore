@interface NIServerUsageAnalyticsAggregator
+ (id)sharedInstance;
- (BOOL)_shouldRecordUsage;
- (double)_backgroundTaskInterval;
- (id)_initInternal;
- (id)_internalPrintableState;
- (id)_loadUsageRecords;
- (id)_usageRecordsFilePath;
- (id)printableState;
- (int)_dayNumberFromDate:(id)a3;
- (void)_aggregationTaskHandler:(id)a3;
- (void)_saveUsageRecords:(id)a3;
- (void)notifyDeviceUnlockedSinceBoot;
- (void)recordUWBUsage:(int)a3 date:(id)a4;
@end

@implementation NIServerUsageAnalyticsAggregator

+ (id)sharedInstance
{
  if (qword_1009F2B80 != -1)
  {
    sub_1004B73C8();
  }

  v3 = qword_1009F2B78;

  return v3;
}

- (id)_initInternal
{
  v3 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Init", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = NIServerUsageAnalyticsAggregator;
  v4 = [(NIServerUsageAnalyticsAggregator *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.nearbyd.usageAnalyticsAggregator", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"EnableStateDump"], v7, v8))
    {
      v9 = v4->_queue;
      v11 = v4;
      os_state_add_handler();
    }
  }

  return v4;
}

- (void)notifyDeviceUnlockedSinceBoot
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002989F4;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)recordUWBUsage:(int)a3 date:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100298D2C;
  block[3] = &unk_1009A1A18;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100299180;
  v10 = sub_100299190;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100299198;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_internalPrintableState
{
  v3 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NIServerUsageAnalyticsAggregator *)self _loadUsageRecords];
  v5 = [v4 allValues];
  v6 = [v5 sortedArrayUsingComparator:&stru_1009A22D8];

  v7 = [(NIServerUsageAnalyticsAggregator *)self _shouldRecordUsage];
  firstUnlock = self->_firstUnlock;
  v9 = +[NSDate now];
  v10 = [(NIServerUsageAnalyticsAggregator *)self _dayNumberFromDate:v9];
  [(NIServerUsageAnalyticsAggregator *)self _backgroundTaskInterval];
  v12 = [NSString stringWithFormat:@"First unlock: %d. Day number: %d. Task interval: %0.1f. Should record: %d", firstUnlock, v10, v11, v7];
  [v3 addObject:v12];

  v13 = [v6 count];
  v14 = &stru_1009B1428;
  if (!v7 && [v6 count])
  {
    v14 = @" (deleting on next task)";
  }

  v15 = [NSString stringWithFormat:@"Usage records (%d)%@", v13, v14];
  [v3 addObject:v15];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002994D8;
  v18[3] = &unk_1009A2300;
  v16 = v3;
  v19 = v16;
  [v6 enumerateObjectsUsingBlock:v18];

  return v16;
}

- (void)_aggregationTaskHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [v4 setExpirationHandler:&stru_1009A2320];
  v5 = +[NSDate now];
  v6 = [(NIServerUsageAnalyticsAggregator *)self _dayNumberFromDate:v5];

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 integerForKey:@"UsageAnalyticsAggregatorDayNumberOfLastCAPush"];

  v9 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v68 = v6;
    *&v68[4] = 1024;
    *&v68[6] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task handler (day %d, last pushed %d)", buf, 0xEu);
  }

  if (![(NIServerUsageAnalyticsAggregator *)self _shouldRecordUsage])
  {
    v11 = [(NIServerUsageAnalyticsAggregator *)self _loadUsageRecords];
    v12 = [v11 count];
    v13 = qword_1009F2B70;
    if (v12)
    {
      v14 = qword_1009F2B70;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 count];
        *buf = 67109120;
        *v68 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Not recording usage - deleting %d old records", buf, 8u);
      }

      [(NIServerUsageAnalyticsAggregator *)self _saveUsageRecords:&__NSDictionary0__struct];
    }

    else if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Not recording usage - nothing to do", buf, 2u);
    }

    [v4 setTaskCompleted];
    goto LABEL_20;
  }

  if (v6 != v8)
  {
    if (v6 < v8)
    {
      v16 = qword_1009F2B70;
      if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
      {
        sub_1004B750C(v6, v8, v16);
      }

      v17 = +[NSUserDefaults standardUserDefaults];
      [v17 setInteger:v6 forKey:@"UsageAnalyticsAggregatorDayNumberOfLastCAPush"];

      goto LABEL_16;
    }

    v18 = +[NSUserDefaults standardUserDefaults];
    [v18 setInteger:v6 forKey:@"UsageAnalyticsAggregatorDayNumberOfLastCAPush"];

    v11 = [(NIServerUsageAnalyticsAggregator *)self _loadUsageRecords];
    v19 = [[_UWBUsageRecord alloc] initWithDayNumber:(v6 - 1)];
    v20 = [[_UWBUsageRecord alloc] initWithDayNumber:(v6 - 7)];
    v40 = [[_UWBUsageRecord alloc] initWithDayNumber:(v6 - 30), v20, v19];
    v21 = objc_opt_new();
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100299F08;
    v61[3] = &unk_1009A2348;
    v66 = v6;
    v22 = v19;
    v62 = v22;
    v23 = v20;
    v63 = v23;
    v24 = v40;
    v64 = v24;
    v25 = v21;
    v65 = v25;
    v41 = v25;
    [v11 enumerateKeysAndObjectsUsingBlock:v61];
    [v25 sortUsingComparator:&stru_1009A2368];
    v26 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregated usage:", buf, 2u);
    }

    v28 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v68 = v22;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#ca-aggr,    Yesterday: %@", buf, 0xCu);
    }

    v29 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v68 = v23;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#ca-aggr,    Last week: %@", buf, 0xCu);
    }

    v30 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v68 = v24;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ca-aggr,    Last month: %@", buf, 0xCu);
    }

    v31 = qword_1009F2B70;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v41 count];
      *buf = 67109120;
      *v68 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#ca-aggr,    Individual records: %d", buf, 8u);
    }

    [v41 enumerateObjectsUsingBlock:&stru_1009A23A8];
    v56 = _NSConcreteStackBlock;
    v57 = 3221225472;
    v58 = sub_10029A154;
    v59 = &unk_10098AED8;
    v33 = v22;
    v60 = v33;
    AnalyticsSendEventLazy();
    v51 = _NSConcreteStackBlock;
    v52 = 3221225472;
    v53 = sub_10029A15C;
    v54 = &unk_10098AED8;
    v34 = v23;
    v55 = v34;
    AnalyticsSendEventLazy();
    v46 = _NSConcreteStackBlock;
    v47 = 3221225472;
    v48 = sub_10029A164;
    v49 = &unk_10098AED8;
    v35 = v24;
    v50 = v35;
    AnalyticsSendEventLazy();
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10029A16C;
    v44[3] = &unk_1009A23C8;
    v45 = v6;
    v36 = [v11 keysOfEntriesPassingTest:v44];
    if ([v36 count])
    {
      v37 = qword_1009F2B70;
      if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Cleaning up the following records:", buf, 2u);
      }

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10029A1E0;
      v42[3] = &unk_1009A23F0;
      v38 = v11;
      v43 = v38;
      [v36 enumerateObjectsUsingBlock:v42];
      [(NIServerUsageAnalyticsAggregator *)self _saveUsageRecords:v38];
    }

    v39 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task handler complete", buf, 2u);
    }

    [v4 setTaskCompleted];

LABEL_20:
    goto LABEL_21;
  }

  v10 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Already pushed to CA today, not pushing again", buf, 2u);
  }

LABEL_16:
  [v4 setTaskCompleted];
LABEL_21:
}

- (id)_loadUsageRecords
{
  v3 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  v4 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Loading usage records...", buf, 2u);
  }

  if (self->_firstUnlock)
  {
    v5 = [(NIServerUsageAnalyticsAggregator *)self _usageRecordsFilePath];
    v6 = [NSData dataWithContentsOfFile:v5];

    if (v6)
    {
      v22 = 0;
      v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v22];
      v8 = v22;
      if (v8)
      {
        if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
        {
          sub_1004B75D4();
        }
      }

      else if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_10029A628;
        v20 = &unk_1009A2418;
        v12 = v3;
        v21 = v12;
        [v7 enumerateObjectsUsingBlock:&v17];
        v13 = qword_1009F2B70;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 count];
          *buf = 67109120;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Loading usage records done (%d loaded)", buf, 8u);
        }
      }

      else if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
      {
        sub_1004B7644();
      }

      v15 = v3;
    }

    else
    {
      v10 = qword_1009F2B70;
      if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ca-aggr,No usage records loaded (empty file)", buf, 2u);
      }

      v11 = v3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
    {
      sub_1004B7594();
    }

    v9 = v3;
  }

  return v3;
}

- (void)_saveUsageRecords:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Saving usage records...", buf, 2u);
  }

  if (self->_firstUnlock)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10029A964;
    v14[3] = &unk_1009A2440;
    v6 = objc_opt_new();
    v15 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v14];
    v13 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
      {
        sub_1004B76C4();
      }
    }

    else
    {
      v10 = [(NIServerUsageAnalyticsAggregator *)self _usageRecordsFilePath];
      v12 = 0;
      [v7 writeToFile:v10 options:0x40000000 error:&v12];
      v9 = v12;

      v11 = qword_1009F2B70;
      if (!v9)
      {
        if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Saving usage records done", buf, 2u);
        }

        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
      {
        sub_1004B7734();
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7684();
  }

LABEL_14:
}

- (id)_usageRecordsFilePath
{
  sub_1000054A8();
  sub_10000561C(&v7);
  v2 = std::string::append(&v7, "UsageAggregation.json");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [NSString stringWithUTF8String:v4];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v5;
}

- (double)_backgroundTaskInterval
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"UsageAnalyticsAggregatorDebugBackgroundTaskInterval"];
  v4 = v3;

  result = 28800.0;
  if (v4 > 0.0)
  {
    return v4;
  }

  return result;
}

- (int)_dayNumberFromDate:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 doubleForKey:@"UsageAnalyticsAggregatorDebugNumberOfSecondsInDay"];
  v6 = v5;

  [v3 timeIntervalSinceReferenceDate];
  if (v6 == 0.0)
  {
    v8 = v7 / 86400.0;
  }

  else
  {
    v8 = v7 / v6;
  }

  v9 = v8;

  return v9;
}

- (BOOL)_shouldRecordUsage
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"UsageAnalyticsAggregatorDisable"];

  if (v3)
  {
    return 0;
  }

  v5 = +[OSASystemConfiguration sharedInstance];
  v4 = [v5 optInApple];

  return v4;
}

@end
@interface MSDStoreHoursManager
+ (id)sharedInstance;
- (BOOL)evaluateStoreStatusAgainstCurrentTime;
- (BOOL)evaluateStoreStatusAgainstPointInTime:(id)a3;
- (MSDStoreHoursManager)init;
- (id)parseRawStoreHours:(id)a3;
- (id)screenSaverShouldRunUntil;
- (void)populateStoreHourFromDefaultSettingsForDate:(id)a3;
- (void)populateStoreHourFromHubSuppliedSettingsForDate:(id)a3;
- (void)setupStoreCloseTimer:(id)a3;
- (void)setupStoreHourSettingsExpirationTimer:(id)a3;
- (void)setupStoreOpenCloseTimers;
- (void)setupStoreOpenTimer:(id)a3;
- (void)storeCloseHandler:(id)a3;
- (void)storeHourSettingsExpirationHandler:(id)a3;
- (void)storeOpenHandler:(id)a3;
- (void)updateStoreHours:(id)a3 lastSettingsUpdatedDate:(id)a4;
@end

@implementation MSDStoreHoursManager

+ (id)sharedInstance
{
  if (qword_1001A5900 != -1)
  {
    sub_1000DCB94();
  }

  v3 = qword_1001A58F8;

  return v3;
}

- (MSDStoreHoursManager)init
{
  v13.receiver = self;
  v13.super_class = MSDStoreHoursManager;
  v2 = [(MSDStoreHoursManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(MSDStoreHoursManager *)v2 setStoreHourRecords:0];
    [(MSDStoreHoursManager *)v3 setExpirationTimer:0];
    [(MSDStoreHoursManager *)v3 setStoreOpenTimer:0];
    [(MSDStoreHoursManager *)v3 setStoreCloseTimer:0];
    [(MSDStoreHoursManager *)v3 setUseDefaultStoreHours:1];
    v4 = +[NSDate date];
    [(MSDStoreHoursManager *)v3 populateStoreHourFromDefaultSettingsForDate:v4];

    if (os_variant_has_internal_content())
    {
      objc_initWeak(&location, v3);
      v5 = +[NSDistributedNotificationCenter defaultCenter];
      v6 = +[NSOperationQueue mainQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10007D87C;
      v10[3] = &unk_10016B760;
      objc_copyWeak(&v11, &location);
      v7 = [v5 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.FireExpiration" object:0 queue:v6 usingBlock:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    v8 = v3;
  }

  return v3;
}

- (void)updateStoreHours:(id)a3 lastSettingsUpdatedDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (+[NSDate distantPast](NSDate, "distantPast"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToDate:v8], v8, v9))
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCCEC();
    }

    v11 = 0;
LABEL_7:

    [(MSDStoreHoursManager *)self setStoreHourRecords:0];
    [(MSDStoreHoursManager *)self setUseDefaultStoreHours:1];
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCD5C();
    }

    goto LABEL_17;
  }

  v13 = [v7 endOfDay];
  v11 = [v13 newDateByAddingOneWeek];

  [v11 timeIntervalSinceNow];
  if (v14 < 300.0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCC58(v11, v10);
    }

    goto LABEL_7;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 count])
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCBE8();
    }

    goto LABEL_7;
  }

  v15 = [(MSDStoreHoursManager *)self parseRawStoreHours:v6];
  if (!v15)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000DCBA8();
    }

    goto LABEL_7;
  }

  v12 = v15;
  [(MSDStoreHoursManager *)self setStoreHourRecords:v15];
  [(MSDStoreHoursManager *)self setUseDefaultStoreHours:0];
  [(MSDStoreHoursManager *)self setupStoreHourSettingsExpirationTimer:v11];
  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "New store hours successfully loaded!", v17, 2u);
  }

LABEL_17:
}

- (BOOL)evaluateStoreStatusAgainstCurrentTime
{
  v3 = +[NSDate date];
  LOBYTE(self) = [(MSDStoreHoursManager *)self evaluateStoreStatusAgainstPointInTime:v3];

  return self;
}

- (BOOL)evaluateStoreStatusAgainstPointInTime:(id)a3
{
  v4 = a3;
  v5 = [(MSDStoreHoursManager *)self isStoreOpenNow];
  v6 = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  v7 = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  v8 = [(MSDStoreHoursManager *)self nextContentRevertDate];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 toString];
    v29 = 138543362;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Evaluating store status against time: %{public}@", &v29, 0xCu);
  }

  if ([(MSDStoreHoursManager *)self useDefaultStoreHours])
  {
    [(MSDStoreHoursManager *)self populateStoreHourFromDefaultSettingsForDate:v4];
  }

  else
  {
    [(MSDStoreHoursManager *)self populateStoreHourFromHubSuppliedSettingsForDate:v4];
  }

  if (v5 != [(MSDStoreHoursManager *)self isStoreOpenNow])
  {
    goto LABEL_15;
  }

  v11 = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  if (![v11 isEqualToDate:v6])
  {
    goto LABEL_14;
  }

  v12 = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  if (([v12 isEqualToDate:v7] & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  v13 = [(MSDStoreHoursManager *)self nextContentRevertDate];
  v14 = [v13 isEqualToDate:v8];

  if (v14)
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No change in store open-closed status.", &v29, 2u);
    }

    v16 = 0;
    goto LABEL_26;
  }

LABEL_15:
  v17 = sub_100063A54();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "New store open-closed status:", &v29, 2u);
  }

  v18 = sub_100063A54();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(MSDStoreHoursManager *)self isStoreOpenNow];
    v29 = 67109120;
    LODWORD(v30) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "    Is store open now: %{BOOL}d", &v29, 8u);
  }

  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(MSDStoreHoursManager *)self nextStoreOpenDate];
    v22 = [v21 toString];
    v29 = 138543362;
    v30 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "    Next store open date: %{public}@", &v29, 0xCu);
  }

  v23 = sub_100063A54();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(MSDStoreHoursManager *)self nextStoreClosedDate];
    v25 = [v24 toString];
    v29 = 138543362;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "    Next store close date: %{public}@", &v29, 0xCu);
  }

  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(MSDStoreHoursManager *)self nextContentRevertDate];
    v27 = [v26 toString];
    v29 = 138543362;
    v30 = v27;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "    Next content revert date: %{public}@", &v29, 0xCu);
  }

  v16 = 1;
LABEL_26:

  return v16;
}

- (id)screenSaverShouldRunUntil
{
  v3 = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  v4 = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  if (!os_variant_has_internal_content())
  {
    v6 = 0;
LABEL_6:
    v7 = [NSNumber numberWithInteger:60];

    goto LABEL_7;
  }

  v5 = +[MSDTestPreferences sharedInstance];
  v6 = [v5 screenSaverIdleDelay];

  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  v7 = v6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Screen saver idle delay: %{public}@ (minutes)", &v19, 0xCu);
  }

  if ([(MSDStoreHoursManager *)self isStoreOpenNow])
  {
    v9 = v4;
    [v9 timeIntervalSinceNow];
    if (v10 >= (60 * [v7 integerValue]))
    {
      goto LABEL_21;
    }

    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Store will be closing soon!", &v19, 2u);
    }

    v12 = (60 * [v7 integerValue]);
  }

  else
  {
    v9 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", (60 * [v7 integerValue]));
    if ([v9 compare:v3] == 1)
    {
      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Store will be opening soon!", &v19, 2u);
      }

      v14 = v4;
      goto LABEL_20;
    }

    v12 = 300.0;
  }

  v14 = [NSDate dateWithTimeIntervalSinceNow:v12];
LABEL_20:
  v15 = v14;

  v9 = v15;
LABEL_21:
  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 toString];
    v19 = 138543362;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Screen saver should run until: %{public}@", &v19, 0xCu);
  }

  return v9;
}

- (void)setupStoreOpenCloseTimers
{
  v3 = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  [(MSDStoreHoursManager *)self setupStoreOpenTimer:v3];

  v4 = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  [(MSDStoreHoursManager *)self setupStoreCloseTimer:v4];
}

- (id)parseRawStoreHours:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    obj = v5;
    v25 = *v27;
    while (2)
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v11 count] != 3)
        {
          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000DCD9C();
          }

          goto LABEL_18;
        }

        v12 = v4;
        v13 = [v11 objectAtIndex:0];
        v14 = [NSDate dateFromString:v13];

        v15 = [v11 objectAtIndex:1];
        v16 = [NSDate dateFromString:v15];

        v17 = [v11 objectAtIndex:2];
        v18 = [NSDate dateFromString:v17];

        if (!v14 || !v16 || !v18)
        {
          sub_1000DCE0C(v11, v18, v16);
          v4 = v12;
LABEL_18:
          v5 = obj;

          v22 = 0;
          goto LABEL_19;
        }

        v8 = objc_alloc_init(MSDStoreHourRecord);

        [(MSDStoreHourRecord *)v8 setClosedDate:v14];
        [(MSDStoreHourRecord *)v8 setRevertDate:v16];
        [(MSDStoreHourRecord *)v8 setOpenDate:v18];
        v4 = v12;
        [v12 addObject:v8];

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v7 != v9);
      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_alloc_init(MSDStoreHourRecord);
  v19 = +[NSDate distantFuture];
  [(MSDStoreHourRecord *)v10 setClosedDate:v19];

  v20 = +[NSDate distantFuture];
  [(MSDStoreHourRecord *)v10 setRevertDate:v20];

  v21 = +[NSDate distantFuture];
  [(MSDStoreHourRecord *)v10 setOpenDate:v21];

  [v4 addObject:v10];
  v22 = v4;
LABEL_19:

  return v22;
}

- (void)populateStoreHourFromDefaultSettingsForDate:(id)a3
{
  v14 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = objc_alloc_init(NSDateComponents);
  v6 = [v4 startOfDayForDate:v14];
  [v5 setHour:8];
  [v5 setMinute:0];
  v7 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  [v5 setHour:8];
  [v5 setMinute:30];
  v8 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  [v5 setHour:23];
  [v5 setMinute:0];
  v9 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  if ([v14 isEarlierDateThan:v7])
  {
    [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:v8];
    [(MSDStoreHoursManager *)self setNextStoreClosedDate:v9];
    [(MSDStoreHoursManager *)self setNextContentRevertDate:v7];
    goto LABEL_10;
  }

  if ([v14 isEarlierDateThan:v8])
  {
    [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:v8];
  }

  else
  {
    if (![v14 isEarlierDateThan:v9])
    {
      [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
      v11 = [v8 newDateByAddingOneDay];
      [(MSDStoreHoursManager *)self setNextStoreOpenDate:v11];

      v12 = [v9 newDateByAddingOneDay];
      [(MSDStoreHoursManager *)self setNextStoreClosedDate:v12];

      goto LABEL_9;
    }

    [(MSDStoreHoursManager *)self setIsStoreOpenNow:1];
    v10 = [v8 newDateByAddingOneDay];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:v10];
  }

  [(MSDStoreHoursManager *)self setNextStoreClosedDate:v9];
LABEL_9:
  v13 = [v7 newDateByAddingOneDay];
  [(MSDStoreHoursManager *)self setNextContentRevertDate:v13];

LABEL_10:
}

- (void)populateStoreHourFromHubSuppliedSettingsForDate:(id)a3
{
  v26 = a3;
  v4 = [(MSDStoreHoursManager *)self storeHourRecords];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v6;
      v9 = [(MSDStoreHoursManager *)self storeHourRecords];
      v6 = [v9 objectAtIndex:v7 - 1];

      v10 = [v6 closedDate];
      LODWORD(v8) = [v26 isLaterDateThan:v10];

      if (!v8)
      {
        [(MSDStoreHoursManager *)self setIsStoreOpenNow:1];
        v16 = [v6 closedDate];
        [(MSDStoreHoursManager *)self setNextStoreClosedDate:v16];

        v17 = [v6 revertDate];
        [(MSDStoreHoursManager *)self setNextContentRevertDate:v17];

        v18 = [v6 openDate];
        [(MSDStoreHoursManager *)self setNextStoreOpenDate:v18];
        goto LABEL_13;
      }

      v11 = [v6 openDate];
      v12 = [v26 isEarlierDateThan:v11];

      if (v12)
      {
        break;
      }

      v13 = [(MSDStoreHoursManager *)self storeHourRecords];
      v14 = [v13 count];

      if (v7++ >= v14)
      {
        goto LABEL_14;
      }
    }

    v19 = [(MSDStoreHoursManager *)self storeHourRecords];
    v18 = [v19 objectAtIndex:v7];

    [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
    v20 = [v18 closedDate];
    [(MSDStoreHoursManager *)self setNextStoreClosedDate:v20];

    v21 = [v6 openDate];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:v21];

    v22 = [v6 revertDate];
    v23 = [v26 isLaterDateThan:v22];

    if (v23)
    {
      v24 = v18;
    }

    else
    {
      v24 = v6;
    }

    v25 = [v24 revertDate];
    [(MSDStoreHoursManager *)self setNextContentRevertDate:v25];

LABEL_13:
LABEL_14:
  }
}

- (void)setupStoreHourSettingsExpirationTimer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007EBEC;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeHourSettingsExpirationHandler:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Store hour settings are now expired!", v6, 2u);
  }

  [(MSDStoreHoursManager *)self setStoreHourRecords:0];
  [(MSDStoreHoursManager *)self setUseDefaultStoreHours:1];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"com.apple.MobileStoreDemo.StoreHours.Expired" object:0 userInfo:0];
}

- (void)setupStoreOpenTimer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007EF40;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeOpenHandler:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Store is open!", v6, 2u);
  }

  [(MSDStoreHoursManager *)self evaluateStoreStatusAgainstCurrentTime];
  [(MSDStoreHoursManager *)self setupStoreOpenCloseTimers];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"com.apple.MobileStoreDemo.StoreHours.StoreOpen" object:0 userInfo:0];
}

- (void)setupStoreCloseTimer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F20C;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeCloseHandler:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Store is closed!", v6, 2u);
  }

  [(MSDStoreHoursManager *)self evaluateStoreStatusAgainstCurrentTime];
  [(MSDStoreHoursManager *)self setupStoreOpenCloseTimers];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"com.apple.MobileStoreDemo.StoreHours.StoreClosed" object:0 userInfo:0];
}

@end
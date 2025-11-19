@interface MSDCellularHelper
+ (id)sharedInstance;
- (BOOL)embeddedSIMInstalled;
- (BOOL)hasObserver:(id)a3;
- (MSDCellularHelper)init;
- (NSDictionary)cellularInfo;
- (id)getCellularSimInfo;
- (void)_fetchCellularPlanItems;
- (void)_handleCellularPlanInfoDidChange:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation MSDCellularHelper

+ (id)sharedInstance
{
  if (qword_1001A5760 != -1)
  {
    sub_1000D1B7C();
  }

  v3 = qword_1001A5758;

  return v3;
}

- (MSDCellularHelper)init
{
  v9.receiver = self;
  v9.super_class = MSDCellularHelper;
  v2 = [(MSDCellularHelper *)&v9 init];
  if (v2)
  {
    v3 = +[NSArray array];
    [(MSDCellularHelper *)v2 setCellularSlotsInfo:v3];

    v4 = dispatch_queue_create("com.apple.msd.cellular", 0);
    [(MSDCellularHelper *)v2 setCellularQueue:v4];

    v5 = MGCopyAnswer();
    [(MSDCellularHelper *)v2 setCellularCapable:CFBooleanGetValue(v5) != 0];
    v6 = objc_opt_new();
    [(MSDCellularHelper *)v2 setObservers:v6];

    if ([(MSDCellularHelper *)v2 cellularCapable])
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:v2 selector:"_handleCellularPlanInfoDidChange:" name:CTCellularPlanInfoDidChangeNotification object:0];

      [(MSDCellularHelper *)v2 _fetchCellularPlanItems];
    }
  }

  return v2;
}

- (NSDictionary)cellularInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000445C0;
  v11 = sub_1000445D0;
  v12 = 0;
  if ([(MSDCellularHelper *)self cellularCapable])
  {
    v3 = [(MSDCellularHelper *)self cellularQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000445D8;
    v6[3] = &unk_10016A948;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v3, v6);

    v4 = v8[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)getCellularSimInfo
{
  v2 = [(MSDCellularHelper *)self cellularInfo];
  v3 = [v2 objectForKey:@"Slots"];

  return v3;
}

- (BOOL)embeddedSIMInstalled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(MSDCellularHelper *)self cellularCapable])
  {
    v3 = [(MSDCellularHelper *)self cellularQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000447A8;
    v6[3] = &unk_10016ACE8;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v3, v6);

    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDCellularHelper *)v5 observers];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding cellular oberver: %{public}@", &v10, 0xCu);
    }

    v9 = [(MSDCellularHelper *)v5 observers];
    [v9 addObject:v4];
  }

  objc_sync_exit(v5);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDCellularHelper *)v5 observers];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing cellular oberver: %{public}@", &v10, 0xCu);
    }

    v9 = [(MSDCellularHelper *)v5 observers];
    [v9 removeObject:v4];
  }

  objc_sync_exit(v5);
}

- (BOOL)hasObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDCellularHelper *)v5 observers];
  v7 = [v6 containsObject:v4];

  objc_sync_exit(v5);
  return v7;
}

- (void)_fetchCellularPlanItems
{
  v2 = [NSMutableArray arrayWithCapacity:0];
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching cellular plan items...", buf, 2u);
  }

  v4 = +[CTCellularPlanManager sharedManager];
  v23 = [v4 planItemsShouldUpdate:0];

  if (v23 && [v23 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = v23;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v6)
    {
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = sub_100063A54();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found cellular plan item: %{public}@", buf, 0xCu);
          }

          if (![v9 type] || objc_msgSend(v9, "type") == 2)
          {
            v11 = objc_alloc_init(NSMutableDictionary);
            if ([v9 type])
            {
              v12 = &off_10017AFF0;
            }

            else
            {
              v12 = &off_10017B008;
            }

            [v11 setObject:v12 forKey:@"SimType"];
            v13 = [v9 carrierName];
            v14 = v13;
            if (v13 && [v13 length])
            {
              [v11 setObject:v14 forKey:@"Provider"];
            }

            else
            {
              v15 = +[NSNull null];
              [v11 setObject:v15 forKey:@"Provider"];
            }

            [v2 addObject:v11];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v6);
    }

    v16 = self;
    objc_sync_enter(v16);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [(MSDCellularHelper *)v16 observers];
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v18)
    {
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v24 + 1) + 8 * j) cellularPlanDidChange:v2];
        }

        v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    objc_sync_exit(v16);
  }

  else
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_DEFAULT, "No cellular plan items found.", buf, 2u);
    }
  }

  v21 = [NSArray arrayWithArray:v2];
  [(MSDCellularHelper *)self setCellularSlotsInfo:v21];
}

- (void)_handleCellularPlanInfoDidChange:(id)a3
{
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification for cellular plan info change!", buf, 2u);
  }

  v5 = [(MSDCellularHelper *)self cellularQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000450D4;
  block[3] = &unk_100169B70;
  block[4] = self;
  dispatch_async(v5, block);
}

@end
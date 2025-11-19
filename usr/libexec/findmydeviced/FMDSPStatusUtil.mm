@interface FMDSPStatusUtil
+ (id)sharedInstance;
- (FMDSPStatusUtil)init;
- (NSDate)beaconLastKeyRollDate;
- (NSDate)beaconZoneCreationDate;
- (NSNumber)beaconZoneCreationErrorCode;
- (NSString)mteStatus;
- (NSString)mteStatusError;
- (NSString)octStatus;
- (NSString)octStatusError;
- (void)_refreshDetailedStats:(BOOL)a3;
- (void)_requestDetailedStatsFromUserAgent;
- (void)_serialQueue_refreshBeaconStats;
- (void)_userDidLogIn:(id)a3;
- (void)cancelRefresh;
- (void)clearCache;
- (void)refreshBeaconStats;
- (void)updateDetailedSPStats:(id)a3;
@end

@implementation FMDSPStatusUtil

+ (id)sharedInstance
{
  if (qword_100314A60 != -1)
  {
    sub_10022F910();
  }

  v3 = qword_100314A58;

  return v3;
}

- (NSDate)beaconZoneCreationDate
{
  v2 = [(FMDSPStatusUtil *)self rawStats];
  v3 = [v2 objectForKeyedSubscript:@"beaconZoneCreationDate"];

  return v3;
}

- (NSNumber)beaconZoneCreationErrorCode
{
  v2 = [(FMDSPStatusUtil *)self rawStats];
  v3 = [v2 objectForKeyedSubscript:@"beaconZoneCreationErrorCode"];

  return v3;
}

- (NSDate)beaconLastKeyRollDate
{
  v2 = [(FMDSPStatusUtil *)self rawStats];
  v3 = [v2 objectForKeyedSubscript:@"beaconLastKeyRollDate"];

  return v3;
}

- (NSString)octStatus
{
  v2 = [(FMDSPStatusUtil *)self rawStats];
  v3 = [v2 objectForKeyedSubscript:@"octStatus"];

  return v3;
}

- (NSString)octStatusError
{
  v2 = [(FMDSPStatusUtil *)self rawStats];
  v3 = [v2 objectForKeyedSubscript:@"octStatusError"];

  return v3;
}

- (NSString)mteStatus
{
  v2 = [(FMDSPStatusUtil *)self rawStats];
  v3 = [v2 objectForKeyedSubscript:@"mteStatus"];

  return v3;
}

- (NSString)mteStatusError
{
  v2 = [(FMDSPStatusUtil *)self rawStats];
  v3 = [v2 objectForKeyedSubscript:@"mteStatusError"];

  return v3;
}

- (FMDSPStatusUtil)init
{
  v12.receiver = self;
  v12.super_class = FMDSPStatusUtil;
  v2 = [(FMDSPStatusUtil *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [v3 fmipRegisterInfo];
    spFmipRegisterInfo = v2->_spFmipRegisterInfo;
    v2->_spFmipRegisterInfo = v4;

    v6 = dispatch_queue_create("com.apple.icloud.spstats.queue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    v8 = [FMPreferencesUtil dictionaryForKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];
    rawStats = v2->_rawStats;
    v2->_rawStats = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_userDidLogIn:" name:@"FMDUserLoggedInLocalNotification" object:0];

    if (!v2->_rawStats)
    {
      v2->_rawStats = &__NSDictionary0__struct;
    }
  }

  return v2;
}

- (void)cancelRefresh
{
  objc_initWeak(&location, self);
  v3 = [(FMDSPStatusUtil *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E243C;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)clearCache
{
  [(FMDSPStatusUtil *)self setRawStats:&__NSDictionary0__struct];
  v2 = off_1003139B8;
  v3 = kFMDNotBackedUpPrefDomain;

  [FMPreferencesUtil removeKey:v2 inDomain:v3];
}

- (void)refreshBeaconStats
{
  objc_initWeak(&location, self);
  v3 = [(FMDSPStatusUtil *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E25B4;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_serialQueue_refreshBeaconStats
{
  objc_initWeak(&location, self);
  v3 = [(FMDSPStatusUtil *)self timer];
  [v3 cancel];

  v4 = [FMPreferencesUtil integerForKey:@"SPStatusRecheckInterval" inDomain:kFMDNotBackedUpPrefDomain];
  if (v4 >= 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1800.0;
  }

  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting timer to refresh beacon stats in %ld seconds", buf, 0xCu);
  }

  v7 = [FMDispatchTimer alloc];
  v8 = [(FMDSPStatusUtil *)self serialQueue];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001E2C04;
  v36[3] = &unk_1002CD518;
  objc_copyWeak(&v37, &location);
  v9 = [v7 initWithQueue:v8 timeout:v36 completion:v5];
  [(FMDSPStatusUtil *)self setTimer:v9];

  v10 = [(FMDSPStatusUtil *)self timer];
  [v10 start];

  if (MKBDeviceUnlockedSinceBoot())
  {
    v11 = [(FMDSPStatusUtil *)self rawStats];
    v12 = [v11 copy];

    v13 = [v12 mutableCopy];
    v14 = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    v15 = [v14 beaconZoneCreationErrorCode];
    [v13 fm_safelyMapKey:@"beaconZoneCreationErrorCode" toObject:v15];

    v16 = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    v17 = [v16 beaconZoneCreationDate];
    [v13 fm_safelyMapKey:@"beaconZoneCreationDate" toObject:v17];

    v18 = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    v19 = [v18 lastKeyRollDate];
    [v13 fm_safelyMapKey:@"lastKeyRollDate" toObject:v19];

    v20 = [v13 copy];
    [(FMDSPStatusUtil *)self setRawStats:v20];

    v21 = [v12 isEqualToDictionary:v13];
    v22 = [(FMDSPStatusUtil *)self rawStats];
    [FMPreferencesUtil setDictionary:v22 forKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];

    v23 = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    v24 = [v23 serviceState];

    v25 = [(FMDSPStatusUtil *)self beaconZoneCreationErrorCode];
    if (v25)
    {
    }

    else if (v24 != SPServiceStateEnabled || ([(FMDSPStatusUtil *)self beaconZoneCreationDate], v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 == 0, v27, !v28))
    {
      if (v21)
      {
        v29 = sub_100002880();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Basic beacon stats do not show any failure. Server already has the latest stats.", buf, 2u);
        }
      }

      else
      {
        v30 = sub_100002880();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Basic beacon stats do not show any failure. Sending the updated stats to the server", buf, 2u);
        }

        v29 = [(FMDSPStatusUtil *)self statsChangeHandler];
        if (v29)
        {
          v31 = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001E2C44;
          block[3] = &unk_1002CE250;
          v29 = v29;
          v35 = v29;
          dispatch_async(v31, block);
        }
      }

      v32 = sub_100002880();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Canceling beacon stats refresh timer", buf, 2u);
      }

      v33 = [(FMDSPStatusUtil *)self timer];
      [v33 cancel];

      [(FMDSPStatusUtil *)self setTimer:0];
      goto LABEL_26;
    }

    v26 = sub_100002880();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Basic beacon stats is reporting a failure. Fetching detailed stats", buf, 2u);
    }

    [(FMDSPStatusUtil *)self _refreshDetailedStats:v21 ^ 1];
LABEL_26:

    goto LABEL_27;
  }

  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device not unlocked since boot. Will refresh beacon stats on next timer trigger.", buf, 2u);
  }

LABEL_27:

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (void)_refreshDetailedStats:(BOOL)a3
{
  v5 = +[NSDate date];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_10000AB74;
  v31[4] = sub_100002B84;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_10000AB74;
  v29[4] = sub_100002B84;
  v30 = 0;
  objc_initWeak(&location, self);
  v6 = [(FMDSPStatusUtil *)self rawStats];
  v7 = [v6 copy];

  v8 = [v7 mutableCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001E2F10;
  v20[3] = &unk_1002D13B0;
  objc_copyWeak(&v26, &location);
  v24 = v31;
  v9 = v5;
  v21 = v9;
  v25 = v29;
  v10 = v8;
  v22 = v10;
  v11 = v7;
  v23 = v11;
  v27 = a3;
  v12 = objc_retainBlock(v20);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E316C;
  v15[3] = &unk_1002D13D8;
  v13 = v10;
  v19 = v29;
  v16 = v13;
  v17 = self;
  v14 = v12;
  v18 = v14;
  [FMDMteStatusUtil fetchMteStatusWithCompletion:v15];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
}

- (void)_requestDetailedStatsFromUserAgent
{
  [(FMDSPStatusUtil *)self setWaitingForDetailedStats:1];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.findmydeviced.fetch_spstats", 0, 0, 1u);
}

- (void)updateDetailedSPStats:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDSPStatusUtil *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E339C;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_userDidLogIn:(id)a3
{
  if ([(FMDSPStatusUtil *)self waitingForDetailedStats])
  {
    v3 = dispatch_time(0, 5000000000);
    v4 = dispatch_get_global_queue(0, 0);
    dispatch_after(v3, v4, &stru_1002D13F8);
  }
}

@end
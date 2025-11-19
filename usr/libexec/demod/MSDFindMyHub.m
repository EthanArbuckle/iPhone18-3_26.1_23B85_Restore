@interface MSDFindMyHub
+ (id)sharedInstance;
- (BOOL)askFindMyHubForHubInfo:(id *)a3;
- (BOOL)compareSavedHubHostNameWithNewHostName;
- (BOOL)compareSavedHubHostsWithNewHosts;
- (BOOL)discoverAndEnrollWithHub:(id *)a3;
- (BOOL)enrollAndSetup:(id *)a3;
- (BOOL)verifyDeviceEligibility:(BOOL *)a3 error:(id *)a4;
- (id)prepareBundleInfoDictionary;
- (id)prepareHubOfflineDurationString;
- (int64_t)getDefaultRetryDelay;
- (unint64_t)queryFindMyHubAndDetermineLogicSyncResult;
- (void)cancelOfflineModeEnrollmentRetry;
- (void)cellularPlanDidChange:(id)a3;
- (void)checkInWithCompletion:(id)a3;
- (void)handleEnrollmentRetryUponFirstLaunch;
- (void)handleRetryTimerFireForEnrollment:(id)a3;
- (void)markAsNotDemoWithCompletion:(id)a3;
- (void)retryEnrollmentWithHub:(BOOL)a3;
- (void)scheduleRetryTimerForEnrollmentAtDate:(id)a3 isFirstLaunch:(BOOL)a4;
- (void)searchStoreWithOptions:(id)a3 completion:(id)a4;
- (void)setAutoEnrollmentInfo:(double)a3 withStoreId:(id)a4 withHelpMenuRowSelection:(id)a5;
- (void)setupOfflineModeEnrollmentRetry;
- (void)tryScheduleDefaultEnrollmentRetry;
@end

@implementation MSDFindMyHub

+ (id)sharedInstance
{
  if (qword_1001A5790 != -1)
  {
    sub_1000D4BC4();
  }

  v3 = qword_1001A5788;

  return v3;
}

- (void)handleEnrollmentRetryUponFirstLaunch
{
  v3 = [(MSDFindMyHub *)self device];
  v4 = [v3 typeOfDemoDevice];

  v24 = 0;
  v5 = [(MSDFindMyHub *)self device];
  v6 = [v5 isDemoEligible];

  v7 = [(MSDFindMyHub *)self device];
  v8 = [v7 getDemoEnrollmentFlag];
  v9 = [v8 isEqualToString:@"enrollmentSuccess"];

  v10 = +[MSDDemoUpdateController sharedInstance];
  [v10 getDemoUpdateInProgress:&v24 + 1 operationAllowed:&v24];

  if ((v6 & 1) == 0)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v12 = "Device is not demo eligible, skipping enrollment retry";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if (v4 == 3)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v12 = "Device is factory demo SKU device; skipping enrollment retry";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v23, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v11 = sub_100063A54();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *v23 = 0;
    v12 = "Device is already enrolled; skipping enrollment retry";
    goto LABEL_7;
  }

  if (HIBYTE(v24) == 1)
  {
    v11 = sub_100063A54();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *v23 = 0;
    v12 = "Content update is in progress, skipping enrollment retry";
    goto LABEL_7;
  }

  if (v4 != 5)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v22 = "Unconditionally retry enrollment upon first launch!";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, v23, 2u);
    }

LABEL_26:

    [(MSDFindMyHub *)self retryEnrollmentWithHub:1];
    return;
  }

  v13 = [(MSDFindMyHub *)self device];
  v14 = [v13 findMyHubRetryAtTime];

  if (v14 <= 0)
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      v22 = "No FMH retry time set? Retry enrollment anyways.";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:v14];
  v16 = +[NSDate date];
  [v15 timeIntervalSinceDate:v16];
  v18 = v17;

  v19 = sub_100063A54();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18 <= 300.0)
  {
    if (v20)
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FMH retry timer is already expired or is about to expire. Retry now!", v23, 2u);
    }

    [(MSDFindMyHub *)self retryEnrollmentWithHub:1];
  }

  else
  {
    if (v20)
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FMH retry timer will be scheduled.", v23, 2u);
    }

    [(MSDFindMyHub *)self scheduleRetryTimerForEnrollmentAtDate:v15 isFirstLaunch:1];
  }
}

- (void)setAutoEnrollmentInfo:(double)a3 withStoreId:(id)a4 withHelpMenuRowSelection:(id)a5
{
  v8 = a4;
  v9 = a5;
  self->_autoEnrollmentTimeStamp = a3;
  autoEnrollmentStoreId = self->_autoEnrollmentStoreId;
  self->_autoEnrollmentStoreId = v8;
  v12 = v8;

  helpMenuUserTapped = self->_helpMenuUserTapped;
  self->_helpMenuUserTapped = v9;
}

- (BOOL)discoverAndEnrollWithHub:(id *)a3
{
  v5 = [(MSDFindMyHub *)self device];
  v6 = [v5 typeOfDemoDevice];

  v7 = +[NSMutableDictionary dictionary];
  [(MSDFindMyHub *)self setIsLogicSync:0];
  if (v6 == 5)
  {
    v8 = [NSDate dateWithTimeIntervalSince1970:self->_autoEnrollmentTimeStamp];
    [v7 setObject:v8 forKey:@"AutoEnrollmentTimeStamp"];

    autoEnrollmentStoreId = self->_autoEnrollmentStoreId;
    if (autoEnrollmentStoreId)
    {
      [v7 setObject:autoEnrollmentStoreId forKey:@"AutoEnrollmentSelectedStoreID"];
    }

    helpMenuUserTapped = self->_helpMenuUserTapped;
    if (helpMenuUserTapped)
    {
      [v7 setObject:helpMenuUserTapped forKey:@"AutoEnrollmentHelpMenuUserTapped"];
    }

    v11 = +[MSDLanguageAndRegionManager sharedInstance];
    v12 = [v11 getCurrentDeviceLanguage];
    [v7 setObject:v12 forKey:@"AutoEnrollmentLanguageCodeInfo"];

    v13 = +[MSDLanguageAndRegionManager sharedInstance];
    v14 = [v13 getCurrentDeviceRegion];
    [v7 setObject:v14 forKey:@"AutoEnrollmentCountryCodeInfo"];

    storesSearched = self->_storesSearched;
    if (storesSearched)
    {
      [v7 setObject:storesSearched forKey:@"AutoEnrollmentStoresSearchedInfo"];
    }

    v16 = +[MSDCellularHelper sharedInstance];
    v17 = [v16 getCellularSimInfo];

    if (!v17)
    {
      v17 = objc_opt_new();
    }

    [v7 setObject:v17 forKey:@"AutoEnrollmentNetworkInfo"];
    v18 = +[MSDWiFiHelper sharedInstance];
    v19 = [v18 getCurrentWiFiSsid];

    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = &stru_10016D9D8;
    }

    [v7 setObject:v20 forKey:@"AutoEnrollmentWiFiSSID"];
  }

  v49 = 0;
  v48 = 0;
  v21 = [(MSDFindMyHub *)self verifyDeviceEligibility:&v49 error:&v48];
  v22 = v48;
  v23 = v22;
  if (!v21)
  {
    goto LABEL_26;
  }

  if ((v49 & 1) == 0)
  {
    sub_1000D4BD8(v22, &v47, buf);
    v23 = *buf;
    goto LABEL_26;
  }

  v46 = v22;
  v24 = [(MSDFindMyHub *)self askFindMyHubForHubInfo:&v46];
  v25 = v46;

  if (!v24)
  {
    v23 = v25;
    goto LABEL_26;
  }

  v45 = v25;
  v26 = [(MSDFindMyHub *)self enrollAndSetup:&v45];
  v23 = v45;

  if (!v26)
  {
LABEL_26:
    if (a3)
    {
      v34 = v23;
      *a3 = v23;
    }

    v35 = [(MSDFindMyHub *)self device];
    v36 = [v35 isOfflineMode];

    if (v36)
    {
      v37 = [(MSDFindMyHub *)self device];
      v38 = [v37 cachedBundleInstallAttempted];

      if (v38)
      {
        v39 = [(MSDFindMyHub *)self device];
        v40 = [v39 dcotaOfflineModeDevice];

        if (v40)
        {
          [(MSDFindMyHub *)self setupOfflineModeEnrollmentRetry];
        }
      }

      else
      {
        v41 = sub_100063A54();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Installing cached bundle from enrollment failure", buf, 2u);
        }

        v42 = [(MSDFindMyHub *)self device];
        [v42 kickOffCachedBundleInstall];
      }
    }

    if (v6 != 5)
    {
      v27 = 0;
      goto LABEL_23;
    }

    v43 = [NSNumber numberWithBool:0];
    [v7 setObject:v43 forKey:@"AutoEnrollmentStatus"];

    v44 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 code]);
    [v7 setObject:v44 forKey:@"ErrorCode"];

    v27 = 0;
LABEL_20:
    v31 = [v23 localizedDescription];
    [v7 setObject:v31 forKey:@"ErrorMessage"];

    goto LABEL_21;
  }

  if (v6 != 5)
  {
    v27 = 1;
    goto LABEL_23;
  }

  v27 = 1;
  v28 = [NSNumber numberWithBool:1];
  [v7 setObject:v28 forKey:@"AutoEnrollmentStatus"];

  v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 code]);
  [v7 setObject:v29 forKey:@"ErrorCode"];

  v30 = [v23 localizedDescription];

  if (v30)
  {
    goto LABEL_20;
  }

LABEL_21:
  v32 = +[MSDAnalyticsEventHandler sharedInstance];
  [v32 sendAutoEnrollmentResults:v7];

LABEL_23:
  return v27;
}

- (void)checkInWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking in device with DU...", buf, 2u);
  }

  v6 = objc_alloc_init(MSDCheckInRequest);
  v7 = [(MSDFindMyHub *)self device];
  v8 = [v7 OSVersion];
  [(MSDCheckInRequest *)v6 setOsVersion:v8];

  v9 = [(MSDFindMyHub *)self device];
  v10 = [v9 serialNumber];
  [(MSDCheckInRequest *)v6 setSerialNumber:v10];

  v11 = +[MSDLanguageAndRegionManager sharedInstance];
  v12 = [v11 getCurrentDeviceLanguage];
  [(MSDCheckInRequest *)v6 setLanguage:v12];

  v13 = +[MSDLanguageAndRegionManager sharedInstance];
  v14 = [v13 getCurrentDeviceRegion];
  [(MSDCheckInRequest *)v6 setCountryCode:v14];

  v15 = [(MSDFindMyHub *)self device];
  -[MSDCheckInRequest setHasFactoryContent:](v6, "setHasFactoryContent:", [v15 typeOfDemoDevice] == 5);

  if (os_variant_has_internal_content())
  {
    v16 = +[MSDTestPreferences sharedInstance];
    v17 = [v16 demoUnitServerURL];

    if (v17)
    {
      v18 = [v17 host];
      [(MSDCommandServerRequest *)v6 setServer:v18];

      v19 = [v17 port];
      v20 = [v19 stringValue];
      [(MSDCommandServerRequest *)v6 setPort:v20];

      [(MSDDemoUnitServerRequest *)v6 setUrlOverride:v17];
    }
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100057448;
  v23[3] = &unk_10016AF38;
  v24 = v4;
  v21 = v4;
  [(MSDServerRequest *)v6 setCompletion:v23];
  v22 = +[MSDServerRequestHandler sharedInstance];
  [v22 handleRequestAsync:v6];
}

- (void)markAsNotDemoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MSDNotDemoRequest);
  v6 = [(MSDFindMyHub *)self device];
  v7 = [v6 serialNumber];
  [(MSDNotDemoRequest *)v5 setSerialNumber:v7];

  if (os_variant_has_internal_content())
  {
    v8 = +[MSDTestPreferences sharedInstance];
    v9 = [v8 demoUnitServerURL];

    if (v9)
    {
      v10 = [v9 host];
      [(MSDCommandServerRequest *)v5 setServer:v10];

      v11 = [v9 port];
      v12 = [v11 stringValue];
      [(MSDCommandServerRequest *)v5 setPort:v12];

      [(MSDDemoUnitServerRequest *)v5 setUrlOverride:v9];
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100057740;
  v15[3] = &unk_10016AF38;
  v16 = v4;
  v13 = v4;
  [(MSDServerRequest *)v5 setCompletion:v15];
  v14 = +[MSDServerRequestHandler sharedInstance];
  [v14 handleRequestAsync:v5];
}

- (void)searchStoreWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MSDStoreSearchRequest);
  v9 = [v7 objectForKey:@"Longitude"];
  [(MSDStoreSearchRequest *)v8 setLongitude:v9];

  v10 = [v7 objectForKey:@"Latitude"];
  [(MSDStoreSearchRequest *)v8 setLatitude:v10];

  v11 = [v7 objectForKey:@"Text"];
  [(MSDStoreSearchRequest *)v8 setText:v11];

  v12 = [v7 objectForKey:@"MaxResults"];

  [(MSDStoreSearchRequest *)v8 setMaxStoreResults:v12];
  v13 = [(MSDStoreSearchRequest *)v8 text];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(MSDFindMyHub *)self storesSearched];
    v16 = [(MSDStoreSearchRequest *)v8 text];
    [v15 appendString:v16];

    v17 = [(MSDFindMyHub *)self storesSearched];
    [v17 appendString:{@", "}];
  }

  if (os_variant_has_internal_content())
  {
    v18 = +[MSDTestPreferences sharedInstance];
    v19 = [v18 demoUnitServerURL];

    if (v19)
    {
      v20 = [v19 host];
      [(MSDCommandServerRequest *)v8 setServer:v20];

      v21 = [v19 port];
      v22 = [v21 stringValue];
      [(MSDCommandServerRequest *)v8 setPort:v22];

      [(MSDDemoUnitServerRequest *)v8 setUrlOverride:v19];
    }
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100057A50;
  v25[3] = &unk_10016AF38;
  v26 = v6;
  v23 = v6;
  [(MSDServerRequest *)v8 setCompletion:v25];
  v24 = +[MSDServerRequestHandler sharedInstance];
  [v24 handleRequestAsync:v8];
}

- (void)setupOfflineModeEnrollmentRetry
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[MSDCellularHelper sharedInstance];
  v4 = [v3 hasObserver:v2];

  if ((v4 & 1) == 0)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting cellular plan monitor for enrollment retry", v7, 2u);
    }

    v6 = +[MSDCellularHelper sharedInstance];
    [v6 addObserver:v2];
  }

  objc_sync_exit(v2);
}

- (int64_t)getDefaultRetryDelay
{
  if (!os_variant_has_internal_content())
  {
    return 3600;
  }

  v2 = +[MSDTestPreferences sharedInstance];
  v3 = [v2 findMyHubRetryDelay];

  if (v3 < 1)
  {
    return 3600;
  }

  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding FMH retry delay to: %ld", &v6, 0xCu);
  }

  return v3;
}

- (BOOL)verifyDeviceEligibility:(BOOL *)a3 error:(id *)a4
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10005810C;
  v31 = sub_10005811C;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10005810C;
  v25 = sub_10005811C;
  v26 = dispatch_semaphore_create(0);
  v7 = +[MSDPreferencesFile sharedInstance];
  v8 = [v7 objectForKey:@"DemoEligible"];

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Verifying device eligibility...", buf, 2u);
  }

  if (v8)
  {
    *a3 = [v8 BOOLValue];
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a3;
      *buf = 67109120;
      LODWORD(v34) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DU CheckIn completed, eligibility is %d", buf, 8u);
    }
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100058124;
    v20[3] = &unk_10016AF60;
    v20[4] = &v27;
    v20[5] = &v21;
    v20[6] = a3;
    [(MSDFindMyHub *)self checkInWithCompletion:v20];
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Waiting for CheckIn to complete...", buf, 2u);
    }

    dispatch_semaphore_wait(v22[5], 0xFFFFFFFFFFFFFFFFLL);
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a3;
      *buf = 67109120;
      LODWORD(v34) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CheckIn to completed; eligibility is %{BOOL}d", buf, 8u);
    }

    if (v28[5])
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v28[5];
        *buf = 136315394;
        v34 = "[MSDFindMyHub verifyDeviceEligibility:error:]";
        v35 = 2114;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: checkIn failed with error: %{public}@", buf, 0x16u);
      }

      [(MSDFindMyHub *)self tryScheduleDefaultEnrollmentRetry];
    }
  }

  v17 = v28;
  if (a4)
  {
    *a4 = v28[5];
    v17 = v28;
  }

  v18 = v17[5] == 0;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v18;
}

- (BOOL)askFindMyHubForHubInfo:(id *)a3
{
  v5 = objc_alloc_init(MSDFMHRequest);
  [(MSDFMHRequest *)v5 setLogicSync:[(MSDFindMyHub *)self isLogicSync]];
  v6 = [(MSDFindMyHub *)self prepareBundleInfoDictionary];
  [(MSDFMHRequest *)v5 setBundleInfo:v6];

  v7 = [(MSDFindMyHub *)self prepareHubOfflineDurationString];
  [(MSDFMHRequest *)v5 setOfflineDuration:v7];

  v8 = +[MSDLanguageAndRegionManager sharedInstance];
  v9 = [v8 getCurrentDeviceLanguage];
  [(MSDFMHRequest *)v5 setLanguage:v9];

  v10 = +[MSDLanguageAndRegionManager sharedInstance];
  v11 = [v10 getCurrentDeviceRegion];
  [(MSDFMHRequest *)v5 setCountryCode:v11];

  if (![(MSDFindMyHub *)self isLogicSync])
  {
    v12 = [(MSDFindMyHub *)self device];
    v13 = [v12 preferredStoreID];
    [(MSDFMHRequest *)v5 setStoreId:v13];
  }

  if (os_variant_has_internal_content())
  {
    v14 = +[MSDTestPreferences sharedInstance];
    v15 = [v14 demoUnitServerURL];

    if (v15)
    {
      v16 = [v15 host];
      [(MSDCommandServerRequest *)v5 setServer:v16];

      v17 = [v15 port];
      v18 = [v17 stringValue];
      [(MSDCommandServerRequest *)v5 setPort:v18];

      [(MSDDemoUnitServerRequest *)v5 setUrlOverride:v15];
    }
  }

  v19 = +[MSDServerRequestHandler sharedInstance];
  v20 = [v19 handleRequestSync:v5];

  v21 = [v20 error];
  if (v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v39 = sub_100063A54();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4C84();
    }

    v22 = 0;
    goto LABEL_25;
  }

  v22 = [v20 retryAfter];
  v23 = [v20 fmhDict];
  v24 = sub_100063A54();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "FindMyHub returned: %{public}@", buf, 0xCu);
  }

  if (!v23)
  {
    if (v22 && [v22 integerValue] >= 1)
    {
      v45 = sub_100063A54();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v54 = v22;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "FindMyHub asked for retry in %{public}@ seconds.", buf, 0xCu);
      }

      v46 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [v22 integerValue]);
      if (![(MSDFindMyHub *)self isLogicSync])
      {
        [(MSDFindMyHub *)self scheduleRetryTimerForEnrollmentAtDate:v46 isFirstLaunch:0];
      }

      v47 = [(MSDFindMyHub *)self device];
      [v46 timeIntervalSinceReferenceDate];
      [v47 saveFindMyHubRetryAtTime:v48];

      if ([v22 integerValue] >= 31536000)
      {
        v49 = sub_100063A54();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [v22 integerValue];
          *buf = 134218240;
          v54 = 31536000;
          v55 = 2048;
          v56 = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "FindMyHub retry value %lu is greater than or equal to threshold %lu, returning unrecoverable error", buf, 0x16u);
        }

        v21 = 0;
      }

      else
      {
        v52 = 0;
        sub_1000C1390(&v52, 3727740936, @"Server requested retry at a later time.");
        v21 = v52;
      }

      goto LABEL_26;
    }

LABEL_25:
    [(MSDFindMyHub *)self tryScheduleDefaultEnrollmentRetry];
LABEL_26:
    v40 = sub_100063A54();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4E3C();
    }

    v23 = 0;
    v35 = 0;
    v26 = 0;
    v28 = 0;
    goto LABEL_29;
  }

  v25 = [(MSDFindMyHub *)self device];
  [v25 saveFindMyHubRetryAtTime:0];

  v26 = [v23 objectForKeyedSubscript:@"URL"];
  if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v40 = sub_100063A54();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4DBC();
    }

    v35 = 0;
    v28 = 0;
    goto LABEL_45;
  }

  v27 = [NSURL URLWithString:v26];
  v28 = v27;
  if (!v27 || ([v27 host], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
  {
    v40 = sub_100063A54();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4D34();
    }

    v35 = 0;
    goto LABEL_45;
  }

  v30 = [v28 host];
  [(MSDFindMyHub *)self setHubHostName:v30];

  v31 = [(MSDFindMyHub *)self hubHostName];
  v32 = [NSArray arrayWithObject:v31];
  [(MSDFindMyHub *)self setServerList:v32];

  v33 = [v28 port];
  v34 = [v33 stringValue];
  [(MSDFindMyHub *)self setHubPort:v34];

  v35 = [v23 objectForKeyedSubscript:@"device_info"];
  v36 = [(MSDFindMyHub *)self hubHostName];

  if (!v36)
  {
    v40 = sub_100063A54();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4CF8();
    }

LABEL_45:
    v21 = 0;
LABEL_29:

    if (a3)
    {
      v51 = v21;
      sub_1000C1424(&v51, 3727744512, @"Cannot enroll the device with DemoUnit.");
      v41 = v51;

      v42 = v41;
      *a3 = v41;
      v21 = v41;
    }

    v43 = +[MSDAnalyticsEventHandler sharedInstance];
    [v43 sendFMHFailureEvent:v21];
    v38 = 0;
    goto LABEL_32;
  }

  v37 = [(MSDFindMyHub *)self hubPort];

  if (!v37)
  {
    [(MSDFindMyHub *)self setHubPort:@"443"];
  }

  if (v35)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = +[MSDNPIMaskValues sharedInstance];
      [v43 saveDeviceInfo:v35];
      v21 = 0;
      v38 = 1;
LABEL_32:

      goto LABEL_33;
    }
  }

  v21 = 0;
  v38 = 1;
LABEL_33:

  return v38;
}

- (id)prepareBundleInfoDictionary
{
  v3 = objc_alloc_init(NSDictionary);
  if (![(MSDFindMyHub *)self isLogicSync])
  {
    v4 = [(MSDFindMyHub *)self device];
    v5 = [v4 typeOfDemoDevice];

    if (v5 == 5)
    {
      v6 = +[MSDHelperAgent sharedInstance];
      v7 = [v6 readPlistFile:@"/private/var/demo_backup/Metadata/Content.plist"];

      v3 = v7;
      if (!v7)
      {
        v8 = sub_100063A54();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000D4E78();
        }

        v3 = objc_alloc_init(NSDictionary);
      }

      if (![NSJSONSerialization isValidJSONObject:v3])
      {
        v9 = sub_100063A54();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000D4EB4();
        }

        v10 = objc_alloc_init(NSDictionary);
        v3 = v10;
      }
    }
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Bundle Info for FindMyHub: %{public}@", &v13, 0xCu);
  }

  return v3;
}

- (id)prepareHubOfflineDurationString
{
  if ([(MSDFindMyHub *)self isLogicSync])
  {
    v3 = [(MSDFindMyHub *)self device];
    v4 = [v3 hubLastOnlineTime];

    v5 = +[NSDate date];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    if (v4 < 1 || (v8 = v7 - v4, v7 <= v4))
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to calculate hub last online time. Use system-up time instead.", buf, 2u);
      }

      v10 = +[NSProcessInfo processInfo];
      [v10 systemUptime];
      v8 = v11;
    }

    v12 = [NSString stringWithFormat:@"%ld", v8];
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Hub has been offline for %{public}@ seconds.", buf, 0xCu);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)scheduleRetryTimerForEnrollmentAtDate:(id)a3 isFirstLaunch:(BOOL)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100058D50;
  block[3] = &unk_10016AF88;
  v9 = a4;
  v7 = a3;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleRetryTimerFireForEnrollment:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"isFirstLaunch"];
  v6 = [v5 BOOLValue];

  v7 = +[MSDWorkQueueSet sharedInstance];
  v8 = [v7 demoUpdateQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059044;
  v9[3] = &unk_10016AFB0;
  v9[4] = self;
  v10 = v6;
  dispatch_async(v8, v9);
}

- (void)retryEnrollmentWithHub:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MSDFindMyHub *)v4 device];
  v6 = [v5 isOfflineMode];

  v7 = [(MSDFindMyHub *)v4 device];
  v8 = [v7 getDemoEnrollmentFlag];

  if ([v8 isEqualToString:@"enrollmentSuccess"])
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enrollment successful, ignoring enrollment retry", buf, 2u);
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      v10 = +[MSDUIHelper sharedInstance];
      [v10 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:0];
    }

    if (v3)
    {
      v11 = [(MSDFindMyHub *)v4 device];
      [v11 configureNetworkInterface];

      v12 = [(MSDFindMyHub *)v4 device];
      [v12 waitForNetworkReachability];
    }

    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MSDFindMyHub *)v4 device];
      v15 = [v14 getDemoEnrollmentFlag];
      *buf = 136315394;
      v23 = "[MSDFindMyHub retryEnrollmentWithHub:]";
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: requesting discoverAndEnrollWithHub, currentEnrollFlag:%{public}@", buf, 0x16u);
    }

    v21 = 0;
    v16 = [(MSDFindMyHub *)v4 discoverAndEnrollWithHub:&v21];
    v9 = v21;
    if (v16)
    {
      [(MSDFindMyHub *)v4 cancelOfflineModeEnrollmentRetry];
      v17 = [(MSDFindMyHub *)v4 device];
      [v17 setDemoEnrollmentFlag:@"enrollmentSuccess"];
    }

    else
    {
      v18 = [(MSDFindMyHub *)v4 device];
      [v18 setDemoEnrollmentFlag:@"enrollmentFailed"];

      if ((v6 & 1) == 0)
      {
        v19 = +[MSDUIHelper sharedInstance];
        [v19 stopFullScreenUI:v9];
      }

      v20 = sub_100063A54();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enrollment retry failed with error: %{public}@", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(v4);
}

- (BOOL)enrollAndSetup:(id *)a3
{
  v5 = [(MSDFindMyHub *)self hubHostName];
  if (v5 && (v6 = v5, [(MSDFindMyHub *)self hubPort], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = +[MSDDemoUpdateController sharedInstance];
    v9 = [(MSDFindMyHub *)self device];
    [v9 configureNetworkInterface];

    v10 = [(MSDFindMyHub *)self device];
    [v10 waitForNetworkReachability];

    v11 = [(MSDFindMyHub *)self hubHostName];
    v12 = [(MSDFindMyHub *)self hubPort];
    v24 = 0;
    v13 = [v8 enrollForDeviceName:0 pairingCredential:0 hubHostName:v11 hubPort:v12 error:&v24];
    v14 = v24;

    if (v13)
    {
      v15 = [(MSDFindMyHub *)self device];
      v16 = [(MSDFindMyHub *)self serverList];
      [v15 saveHubHostNameList:v16];

      v17 = 1;
      goto LABEL_14;
    }

    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[MSDFindMyHub enrollAndSetup:]";
      v27 = 2114;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: enrollment failed with error: %{public}@", buf, 0x16u);
    }

    [(MSDFindMyHub *)self tryScheduleDefaultEnrollmentRetry];
    v18 = [NSError errorDomainMSDWithCode:3727741088 message:@"Cannot enroll the device with vHub."];
  }

  else
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4EF0(self, v14);
    }

    v8 = 0;
    v18 = 0;
  }

  v23 = v18;
  sub_1000C1424(&v23, 3727744512, @"Cannot enroll the device with vHub.");
  v14 = v23;

  v20 = +[MSDAnalyticsEventHandler sharedInstance];
  [v20 sendEnrollmentFailureEvent:v14];

  if (a3)
  {
    v21 = v14;
    v17 = 0;
    *a3 = v14;
  }

  else
  {
    v17 = 0;
  }

LABEL_14:

  return v17;
}

- (BOOL)compareSavedHubHostNameWithNewHostName
{
  v3 = [(MSDFindMyHub *)self device];
  v4 = [v3 hubHostNameList];

  v5 = [(MSDFindMyHub *)self device];
  v6 = [v5 hubHostName];
  v7 = [v6 lowercaseString];

  if ([v7 hasSuffix:@"."])
  {
    v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];

    v7 = v8;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) lowercaseString];
        if ([v14 hasSuffix:@"."])
        {
          v15 = [v14 substringToIndex:{objc_msgSend(v14, "length") - 1}];

          v14 = v15;
        }

        v16 = [v14 isEqualToString:v7];

        if (v16)
        {
          v17 = 1;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (BOOL)compareSavedHubHostsWithNewHosts
{
  v3 = +[NSMutableSet set];
  v4 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(MSDFindMyHub *)self device];
  v6 = [v5 hubHostNameList];

  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([v11 hasSuffix:@"."])
        {
          v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];
        }

        else
        {
          v12 = v11;
        }

        v13 = v12;
        v14 = [v12 lowercaseString];
        [v3 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [(MSDFindMyHub *)self serverList];
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        if ([v20 hasSuffix:@"."])
        {
          v21 = [v20 substringToIndex:{objc_msgSend(v20, "length") - 1}];
        }

        else
        {
          v21 = v20;
        }

        v22 = v21;
        v23 = [v21 lowercaseString];
        [v4 addObject:v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  v24 = [v3 isEqualToSet:v4];
  return v24;
}

- (void)tryScheduleDefaultEnrollmentRetry
{
  v3 = [(MSDFindMyHub *)self device];
  v4 = [v3 dcotaOfflineModeDevice];

  if (v4)
  {

    [(MSDFindMyHub *)self setupOfflineModeEnrollmentRetry];
  }

  else if ([(MSDFindMyHub *)self isLogicSync])
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[MSDFindMyHub tryScheduleDefaultEnrollmentRetry]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: not scheduling default enrollment retry for logic sync", &v12, 0xCu);
    }
  }

  else
  {
    v6 = [(MSDFindMyHub *)self getDefaultRetryDelay];
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[MSDFindMyHub tryScheduleDefaultEnrollmentRetry]";
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: retrying enrollment in %ld seconds", &v12, 0x16u);
    }

    v8 = [NSDate dateWithTimeIntervalSinceNow:v6];
    [(MSDFindMyHub *)self scheduleRetryTimerForEnrollmentAtDate:v8 isFirstLaunch:0];
    v9 = [(MSDFindMyHub *)self device];
    v10 = +[NSDate date];
    [v10 timeIntervalSinceReferenceDate];
    [v9 saveFindMyHubRetryAtTime:v11];
  }
}

- (void)cancelOfflineModeEnrollmentRetry
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[MSDCellularHelper sharedInstance];
  v4 = [v3 hasObserver:v2];

  if (v4)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Terminating cellular plan monitor for enrollment retry", v7, 2u);
    }

    v6 = +[MSDCellularHelper sharedInstance];
    [v6 removeObserver:v2];
  }

  objc_sync_exit(v2);
}

- (unint64_t)queryFindMyHubAndDetermineLogicSyncResult
{
  [(MSDFindMyHub *)self setIsLogicSync:1];
  if ([(MSDFindMyHub *)self askFindMyHubForHubInfo:0])
  {
    if ([(MSDFindMyHub *)self compareSavedHubHostNameWithNewHostName])
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    if ([(MSDFindMyHub *)self compareSavedHubHostsWithNewHosts])
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 | 4;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Logic sync completed with result - %lu", &v7, 0xCu);
  }

  return v4;
}

- (void)cellularPlanDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MSDFindMyHub *)self device];
  v6 = [v5 dcotaOfflineModeDevice];

  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) objectForKey:@"SimType"];
          if ([v12 isEqualToNumber:&off_10017B098])
          {
            v13 = dispatch_get_global_queue(21, 0);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100057BD4;
            block[3] = &unk_100169B70;
            block[4] = self;
            dispatch_async(v13, block);

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

@end
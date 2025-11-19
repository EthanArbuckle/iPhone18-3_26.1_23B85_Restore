@interface PowerTableManager
+ (BOOL)assetSupportedOnCurrentBuild:(id)a3;
+ (BOOL)build:(id)a3 inRangeStarting:(id)a4 ending:(id)a5;
+ (id)newPowerTableResultAsString:(int64_t)a3;
+ (id)restoreVersionFromOSVersion:(id)a3;
+ (int64_t)assetCheckTaskInterval;
- (BOOL)bluetoothAudioStreamingActive;
- (BOOL)discoverBluetoothAudioStreaming;
- (NSArray)pathsToUse;
- (NSString)btAssetVersion;
- (NSString)wifiAssetVersion;
- (PowerTableManager)initWithQueue:(id)a3 delegate:(id)a4;
- (int64_t)performChipLevelValidationForPowerTableEvaluationSession:(id)a3 reason:(id *)a4;
- (void)activate;
- (void)checkForNewPowerTablesWithCompletion:(id)a3;
- (void)log;
- (void)powerTableEvaluationSessionDidEnd:(id)a3 state:(int64_t)a4;
- (void)powerTableEvaluationSessionWillEnd:(id)a3 state:(int64_t)a4 reason:(id)a5;
- (void)purgeUnsupportedAssetsFromStore:(id)a3;
- (void)reportEvaluationOutcome:(id)a3 reason:(id)a4 newAssetVersions:(id)a5 previousAssetVersions:(id)a6;
- (void)runBackgroundTaskWithIdentifier:(id)a3 completion:(id)a4;
- (void)validateNewAssets:(id)a3 completion:(id)a4;
@end

@implementation PowerTableManager

- (PowerTableManager)initWithQueue:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (_os_feature_enabled_impl())
  {
    v22.receiver = self;
    v22.super_class = PowerTableManager;
    v10 = [(PowerTableManager *)&v22 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_dispatchQueue, a3);
      objc_storeWeak(&v11->_delegate, v9);
      v12 = [[PowerTableAssetStore alloc] initWithSubsystem:0];
      v23[0] = v12;
      v13 = [[PowerTableAssetStore alloc] initWithSubsystem:1];
      v23[1] = v13;
      v14 = [NSArray arrayWithObjects:v23 count:2];
      assetStores = v11->_assetStores;
      v11->_assetStores = v14;

      v16 = -[BackgroundTaskScheduler initWithIdentifier:interval:queue:delegate:]([BackgroundTaskScheduler alloc], "initWithIdentifier:interval:queue:delegate:", @"com.apple.centaurid.PowerTableAssetCheck", [objc_opt_class() assetCheckTaskInterval], v11->_dispatchQueue, v11);
      assetCheckTaskScheduler = v11->_assetCheckTaskScheduler;
      v11->_assetCheckTaskScheduler = v16;

      [(BackgroundTaskScheduler *)v11->_assetCheckTaskScheduler setRequiresUserInactivity:1];
    }
  }

  else
  {
    v18 = sub_100025204();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [objc_opt_class() description];
      v20 = NSStringFromSelector(a2);
      *buf = 138543618;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: feature disabled", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)activate
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_assetStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        [v12 activate];
        [(PowerTableManager *)self purgeUnsupportedAssetsFromStore:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  objc_initWeak(buf, self);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004AD0;
  block[3] = &unk_10005C750;
  objc_copyWeak(&v15, buf);
  dispatch_async(dispatchQueue, block);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)checkForNewPowerTablesWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_evaluationSession)
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002916C(self, a2);
    }

    [(PowerTableEvaluationSession *)self->_evaluationSession log];
    v5[2](v5, 3);
  }

  else
  {
    v29 = os_transaction_create();
    if (!v29)
    {
      sub_100029228(self, a2);
    }

    v10 = +[NSDate now];
    lastCheckDate = self->_lastCheckDate;
    self->_lastCheckDate = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    if ([(NSArray *)self->_assetStores count])
    {
      v13 = 0;
      do
      {
        v14 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
        [v14 refresh];

        v15 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
        [(PowerTableManager *)self purgeUnsupportedAssetsFromStore:v15];

        v16 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
        v17 = [v16 availableAsset];

        if (v17)
        {
          v18 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
          v19 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
          v20 = [v19 availableAsset];
          v21 = [v18 stageAsset:v20];

          if (v21)
          {
            v22 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
            v23 = [v22 stagedAsset];
            v24 = [NSNumber numberWithUnsignedInteger:v13];
            [v12 setObject:v23 forKey:v24];
          }
        }

        ++v13;
      }

      while (v13 < [(NSArray *)self->_assetStores count]);
    }

    if ([v12 count])
    {
      objc_initWeak(buf, self);
      v25 = [v12 copy];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100004F98;
      v30[3] = &unk_10005C778;
      objc_copyWeak(&v32, buf);
      v31 = v5;
      [(PowerTableManager *)self validateNewAssets:v25 completion:v30];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }

    else
    {
      v26 = sub_100025204();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [objc_opt_class() description];
        v28 = NSStringFromSelector(a2);
        *buf = 138543618;
        v34 = v27;
        v35 = 2114;
        v36 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no new assets", buf, 0x16u);
      }

      self->_lastCheckResult = 0;
      v5[2](v5, 0);
    }
  }
}

- (void)log
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    lastCheckDate = self->_lastCheckDate;
    if (lastCheckDate)
    {
      v8 = [objc_opt_class() newPowerTableResultAsString:self->_lastCheckResult];
    }

    else
    {
      v8 = @"n/a";
    }

    btDiscoveryInProgress = self->_btDiscoveryInProgress;
    btDiscoveryResult = self->_btDiscoveryResult;
    v11 = self->_evaluationSession != 0;
    v18 = 138544898;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = lastCheckDate;
    v24 = 2112;
    v25 = v8;
    v26 = 1024;
    v27 = btDiscoveryInProgress;
    v28 = 1024;
    v29 = btDiscoveryResult;
    v30 = 1024;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: last check: %{public}@, result %@, discovery in progress %u, last discovery result %u, evaluation in progress %u", &v18, 0x3Cu);
    if (lastCheckDate)
    {
    }
  }

  v12 = sub_100025204();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    v15 = [(PowerTableManager *)self pathsToUse];
    v18 = 138543874;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: paths to use: %{public}@", &v18, 0x20u);
  }

  if ([(NSArray *)self->_assetStores count])
  {
    v16 = 0;
    do
    {
      v17 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v16];
      [v17 log];

      ++v16;
    }

    while (v16 < [(NSArray *)self->_assetStores count]);
  }

  [(BackgroundTaskScheduler *)self->_assetCheckTaskScheduler log];
  [(PowerTableEvaluationSession *)self->_evaluationSession log];
}

- (NSArray)pathsToUse
{
  v3 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_assetStores;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = *v19;
  do
  {
    v8 = 0;
    do
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      if (self->_evaluationSession && ([*(*(&v18 + 1) + 8 * v8) stagedAsset], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v11 = [v9 stagedAsset];
      }

      else
      {
        v12 = [v9 activeAsset];

        if (!v12)
        {
          goto LABEL_12;
        }

        v11 = [v9 activeAsset];
      }

      v13 = v11;
      v14 = [v9 pathForAsset:v11];
      [(NSArray *)v3 addObject:v14];

LABEL_12:
      v8 = v8 + 1;
    }

    while (v6 != v8);
    v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v6);
LABEL_14:

  if ([(NSArray *)v3 count])
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (NSString)wifiAssetVersion
{
  v3 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:0];
  v4 = v3;
  if (self->_evaluationSession)
  {
    v5 = [v3 stagedAsset];

    if (v5)
    {
      v6 = [v4 stagedAsset];
LABEL_6:
      v8 = v6;
      v9 = [v6 version];

      goto LABEL_8;
    }
  }

  v7 = [v4 activeAsset];

  if (v7)
  {
    v6 = [v4 activeAsset];
    goto LABEL_6;
  }

  v9 = &stru_10005D038;
LABEL_8:

  return v9;
}

- (NSString)btAssetVersion
{
  v3 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:1];
  v4 = v3;
  if (self->_evaluationSession)
  {
    v5 = [v3 stagedAsset];

    if (v5)
    {
      v6 = [v4 stagedAsset];
LABEL_6:
      v8 = v6;
      v9 = [v6 version];

      goto LABEL_8;
    }
  }

  v7 = [v4 activeAsset];

  if (v7)
  {
    v6 = [v4 activeAsset];
    goto LABEL_6;
  }

  v9 = &stru_10005D038;
LABEL_8:

  return v9;
}

- (void)validateNewAssets:(id)a3 completion:(id)a4
{
  v7 = a3;
  v45 = a4;
  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    *buf = 138543874;
    v48 = v9;
    v49 = 2114;
    v50 = v10;
    v51 = 2048;
    v52 = [v7 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %lu new asset(s) need validation", buf, 0x20u);
  }

  aSelector = a2;

  v11 = objc_alloc_init(NSMutableArray);
  v12 = objc_alloc_init(NSMutableArray);
  if ([(NSArray *)self->_assetStores count])
  {
    v13 = 0;
    do
    {
      v14 = [NSNumber numberWithUnsignedInteger:v13];
      v15 = [v7 objectForKey:v14];

      if (v15)
      {
        v16 = [v15 version];
        [v11 addObject:v16];
      }

      else
      {
        v17 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
        v18 = [v17 activeAsset];

        if (v18)
        {
          v19 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
          v20 = [v19 activeAsset];
          v21 = [v20 version];
          [v11 addObject:v21];
        }

        else
        {
          [v11 addObject:&stru_10005D038];
        }
      }

      v22 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
      v23 = [v22 activeAsset];

      if (v23)
      {
        v24 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
        v25 = [v24 activeAsset];
        v26 = [v25 version];
        [v12 addObject:v26];
      }

      else
      {
        [v12 addObject:&stru_10005D038];
      }

      ++v13;
    }

    while (v13 < [(NSArray *)self->_assetStores count]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v28 = WeakRetained;
  if (WeakRetained)
  {
    v46 = 0;
    v29 = [WeakRetained readyForNewPowerTableValidationWithReason:&v46];
    v30 = v46;
    if (v29)
    {
      if ([(PowerTableManager *)self bluetoothAudioStreamingActive])
      {
        v31 = sub_100025204();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [objc_opt_class() description];
          v33 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v48 = v32;
          v49 = 2114;
          v50 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: bailing due to active audio streaming", buf, 0x16u);
        }

        [(PowerTableManager *)self reportEvaluationOutcome:@"Aborted" reason:@"chipLevelNotReady:btAudioStreaming" newAssetVersions:v11 previousAssetVersions:v12];
        v34 = v45;
        (*(v45 + 2))(v45, 3);
      }

      else
      {
        v34 = v45;
        v40 = objc_retainBlock(v45);
        clientCompletionForNewPowerTableCheck = self->_clientCompletionForNewPowerTableCheck;
        self->_clientCompletionForNewPowerTableCheck = v40;

        v42 = [[PowerTableEvaluationSession alloc] initWithQueue:self->_dispatchQueue newAssetVersions:v11 previousAssetVersions:v12 delegate:self];
        evaluationSession = self->_evaluationSession;
        self->_evaluationSession = v42;

        [(PowerTableEvaluationSession *)self->_evaluationSession activate];
      }
    }

    else
    {
      v36 = sub_100025204();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [objc_opt_class() description];
        v38 = NSStringFromSelector(aSelector);
        *buf = 138543618;
        v48 = v37;
        v49 = 2114;
        v50 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: delegate not ready", buf, 0x16u);
      }

      v34 = v45;
      if (v30)
      {
        v39 = [@"chipLevelNotReady" stringByAppendingFormat:@":%@", v30];
      }

      else
      {
        v39 = @"chipLevelNotReady";
      }

      [(PowerTableManager *)self reportEvaluationOutcome:@"Aborted" reason:v39 newAssetVersions:v11 previousAssetVersions:v12];
      (*(v45 + 2))(v45, 3);
    }
  }

  else
  {
    v35 = sub_100025204();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }

    v34 = v45;
    (*(v45 + 2))(v45, 3);
  }
}

- (void)purgeUnsupportedAssetsFromStore:(id)a3
{
  v3 = a3;
  v4 = [v3 availableAsset];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = [v3 availableAsset];
    LOBYTE(v6) = [v6 assetSupportedOnCurrentBuild:v7];

    if ((v6 & 1) == 0)
    {
      v8 = [v3 availableAsset];
      [v3 purgeAsset:v8];
    }
  }

  v9 = [v3 activeAsset];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = [v3 activeAsset];
    LOBYTE(v11) = [v11 assetSupportedOnCurrentBuild:v12];

    if ((v11 & 1) == 0)
    {
      v13 = [v3 activeAsset];
      [v3 purgeAsset:v13];
    }
  }

  v14 = [v3 stagedAsset];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_class();
    v17 = [v3 stagedAsset];
    LOBYTE(v16) = [v16 assetSupportedOnCurrentBuild:v17];

    if ((v16 & 1) == 0)
    {
      v18 = [v3 stagedAsset];
      [v3 purgeAsset:v18];
    }
  }

  v19 = [v3 rejectedAssets];

  if (v19)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = [v3 rejectedAssets];
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        v24 = 0;
        do
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v26 + 1) + 8 * v24);
          if (([objc_opt_class() assetSupportedOnCurrentBuild:v25] & 1) == 0)
          {
            [v3 purgeAsset:v25];
          }

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v22);
    }
  }
}

- (BOOL)discoverBluetoothAudioStreaming
{
  v2 = sub_100025204();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [objc_opt_class() description];
    v4 = NSStringFromSelector(a2);
    *buf = 138543618;
    v41 = v3;
    v42 = 2114;
    v43 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: starting discovery", buf, 0x16u);
  }

  v38 = 0;
  v5 = [CBDiscovery devicesWithDiscoveryFlags:0x200000 error:&v38];
  v6 = v38;
  if (v6)
  {
    v7 = sub_100025204();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      *buf = 138543874;
      v41 = v30;
      v42 = 2114;
      v43 = v31;
      v44 = 2114;
      v45 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: discovery failed: %{public}@", buf, 0x20u);
    }
  }

  v8 = sub_100025204();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v11 = [v5 count];
    *buf = 138543874;
    v41 = v9;
    v42 = 2114;
    v43 = v10;
    v44 = 2048;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: discovered %lu connected devices", buf, 0x20u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = v6;
    v15 = 0;
    v16 = *v35;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v34 + 1) + 8 * i) audioStreamState];
        if ((v18 & 0xFFFFFFFE) == 2)
        {
          v19 = v18;
          v20 = sub_100025204();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [objc_opt_class() description];
            v22 = NSStringFromSelector(a2);
            v23 = v22;
            *buf = 138543874;
            v24 = "A2DP";
            if (v19 == 3)
            {
              v24 = "SCO";
            }

            v41 = v21;
            v42 = 2114;
            v43 = v22;
            v44 = 2080;
            v45 = v24;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: found a device streaming audio with %s", buf, 0x20u);
          }

          v15 = 1;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v14);

    v6 = v32;
    if (v15)
    {
      v25 = 1;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v26 = sub_100025204();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [objc_opt_class() description];
    v28 = NSStringFromSelector(a2);
    *buf = 138543618;
    v41 = v27;
    v42 = 2114;
    v43 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no devices streaming audio", buf, 0x16u);
  }

  v25 = 0;
LABEL_28:

  return v25;
}

- (BOOL)bluetoothAudioStreamingActive
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (!objc_opt_class())
  {
    v4 = sub_100025204();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10002940C();
    }

    goto LABEL_17;
  }

  v4 = self;
  objc_sync_enter(v4);
  if (v4->_btDiscoveryInProgress)
  {
    v14 = sub_100025204();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1000293C0();
    }

    goto LABEL_16;
  }

  v5 = dispatch_semaphore_create(0);
  if (!v5)
  {
    v14 = sub_100025204();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029374();
    }

LABEL_16:

    objc_sync_exit(v4);
LABEL_17:
    v11 = 0;
    goto LABEL_9;
  }

  v6 = v5;
  v4->_btDiscoveryInProgress = 1;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000068BC;
  block[3] = &unk_10005C7A0;
  block[4] = v4;
  v23 = &v24;
  v8 = v6;
  v22 = v8;
  dispatch_async(v7, block);

  objc_sync_exit(v4);
  v9 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v17 = sub_100025204();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1000292DC();
    }

    v11 = 0;
  }

  else
  {
    v10 = v4;
    objc_sync_enter(v10);
    if (v4->_btDiscoveryInProgress)
    {
      v19 = sub_100025204();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029328();
      }

      v11 = 0;
    }

    else
    {
      v11 = *(v25 + 24);
    }

    objc_sync_exit(v10);
  }

  v4 = v8;
LABEL_9:

  _Block_object_dispose(&v24, 8);
  return v11 & 1;
}

- (void)reportEvaluationOutcome:(id)a3 reason:(id)a4 newAssetVersions:(id)a5 previousAssetVersions:(id)a6
{
  v10 = a3;
  v23 = a4;
  v11 = a5;
  v22 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [v11 componentsJoinedByString:@""];;
  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 dictionaryForKey:@"PowerTableValidationAttempts"];

  v16 = [v15 objectForKeyedSubscript:v13];
  v17 = [v16 unsignedIntegerValue];
  LODWORD(a4) = [v10 isEqualToString:@"Aborted"];
  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = v18;
  if (a4)
  {
    v24 = v13;
    v20 = [NSNumber numberWithUnsignedInteger:v17 + 1];
    v25 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v19 setObject:v21 forKey:@"PowerTableValidationAttempts"];
  }

  else
  {
    [v18 removeObjectForKey:@"PowerTableValidationAttempts"];
  }

  if (WeakRetained)
  {
    [WeakRetained reportNewPowerTableEvaluationOutcome:v10 reason:v23 attempts:v17 + 1 newAssetVersions:v11 previousAssetVersions:v22];
  }
}

+ (BOOL)assetSupportedOnCurrentBuild:(id)a3
{
  v5 = a3;
  v6 = +[SUCoreDevice sharedDevice];
  v7 = [v6 productVersion];

  v8 = v7;
  if (!v7)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000294F8();
    }

    goto LABEL_23;
  }

  v9 = [a1 restoreVersionFromOSVersion:v7];
  if (!v9)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      v33 = v25;
      v35 = v34 = v7;
      v36 = NSStringFromSelector(a2);
      *buf = 138543874;
      v57 = v35;
      v58 = 2114;
      v59 = v36;
      v60 = 2114;
      v61 = v34;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid current OS: %{public}@", buf, 0x20u);

      v8 = v34;
      v25 = v33;
    }

LABEL_23:
    v24 = 0;
    v21 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v12 = 0;
    v55 = 0;
LABEL_44:

    v29 = 0;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = [v5 firstSupportedOS];
  v12 = [a1 restoreVersionFromOSVersion:v11];

  v55 = v10;
  if (!v12)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v37 = [objc_opt_class() description];
      v38 = NSStringFromSelector(a2);
      v39 = [v5 firstSupportedOS];
      *buf = 138543874;
      v57 = v37;
      v58 = 2114;
      v59 = v38;
      v60 = 2114;
      v61 = v39;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid firstSupportedOS: %{public}@", buf, 0x20u);
    }

    v24 = 0;
    v21 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_44;
  }

  v13 = [v5 lastSupportedOS];
  v14 = [a1 restoreVersionFromOSVersion:v13];

  if (!v14)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v40 = [objc_opt_class() description];
      v41 = NSStringFromSelector(a2);
      v42 = [v5 lastSupportedOS];
      *buf = 138543874;
      v57 = v40;
      v58 = 2114;
      v59 = v41;
      v60 = 2114;
      v61 = v42;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid lastSupportedOS: %{public}@", buf, 0x20u);
    }

    v24 = 0;
    v21 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    goto LABEL_44;
  }

  if (([a1 build:v10 inRangeStarting:v12 ending:v14] & 1) == 0)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [objc_opt_class() description];
      v32 = NSStringFromSelector(a2);
      *buf = 138543618;
      v57 = v31;
      v58 = 2114;
      v59 = v32;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: out of OS range", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v15 = [v5 firstSupportedBuild];
  if (!v15)
  {
    v24 = 0;
    v21 = 0;
    v16 = 0;
    goto LABEL_17;
  }

  v16 = [v5 lastSupportedBuild];

  if (!v16)
  {
    v24 = 0;
    v21 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v17 = +[SUCoreDevice sharedDevice];
  v15 = [v17 restoreVersion];

  if (!v15)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100029458();
    }

LABEL_34:
    v24 = 0;
    v21 = 0;
    v16 = 0;
    v15 = 0;
    goto LABEL_44;
  }

  v54 = v8;
  v18 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v15];
  if (!v18)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v43 = [objc_opt_class() description];
      v44 = NSStringFromSelector(a2);
      *buf = 138543874;
      v57 = v43;
      v58 = 2114;
      v59 = v44;
      v60 = 2114;
      v61 = v15;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid current build: %{public}@", buf, 0x20u);
    }

    v24 = 0;
    v21 = 0;
    v16 = 0;
    goto LABEL_44;
  }

  v16 = v18;
  aSelector = a2;
  v19 = [SUCoreRestoreVersion alloc];
  v20 = [v5 firstSupportedBuild];
  v21 = [v19 initWithRestoreVersion:v20];

  if (!v21)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      v46 = v45 = v25;
      v47 = NSStringFromSelector(aSelector);
      v48 = [v5 firstSupportedBuild];
      *buf = 138543874;
      v57 = v46;
      v58 = 2114;
      v59 = v47;
      v60 = 2114;
      v61 = v48;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid firstSupportedBuild: %{public}@", buf, 0x20u);

      v25 = v45;
    }

    v24 = 0;
    v21 = 0;
    goto LABEL_44;
  }

  v22 = [SUCoreRestoreVersion alloc];
  v23 = [v5 lastSupportedBuild];
  v24 = [v22 initWithRestoreVersion:v23];

  if (!v24)
  {
    v25 = sub_100025204();
    v8 = v54;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      v50 = v49 = v25;
      v51 = NSStringFromSelector(aSelector);
      v52 = [v5 lastSupportedBuild];
      *buf = 138543874;
      v57 = v50;
      v58 = 2114;
      v59 = v51;
      v60 = 2114;
      v61 = v52;
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid lastSupportedBuild: %{public}@", buf, 0x20u);

      v8 = v54;
      v25 = v49;
    }

    v24 = 0;
    goto LABEL_44;
  }

  v8 = v54;
  if (([a1 build:v16 inRangeStarting:v21 ending:v24] & 1) == 0)
  {
    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [objc_opt_class() description];
      v27 = v26 = v25;
      v28 = NSStringFromSelector(aSelector);
      *buf = 138543618;
      v57 = v27;
      v58 = 2114;
      v59 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: out of specific build range", buf, 0x16u);

      v8 = v54;
      v25 = v26;
    }

    goto LABEL_44;
  }

LABEL_17:
  v29 = 1;
LABEL_18:

  return v29;
}

+ (BOOL)build:(id)a3 inRangeStarting:(id)a4 ending:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 isComparable:v9] & 1) == 0)
  {
    v12 = sub_100025204();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v21 = [objc_opt_class() description];
    v22 = NSStringFromSelector(a2);
    v23 = [v8 summary];
    v24 = [v9 summary];
    v28 = 138544130;
    v29 = v21;
    v30 = 2114;
    v31 = v22;
    v32 = 2114;
    v33 = v23;
    v34 = 2114;
    v35 = v24;
    v25 = "%{public}@::%{public}@: %{public}@ not comparible with range start %{public}@";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v25, &v28, 0x2Au);
LABEL_19:

    goto LABEL_20;
  }

  if (([v8 isComparable:v10] & 1) == 0)
  {
    v12 = sub_100025204();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v21 = [objc_opt_class() description];
    v22 = NSStringFromSelector(a2);
    v23 = [v8 summary];
    v24 = [v10 summary];
    v28 = 138544130;
    v29 = v21;
    v30 = 2114;
    v31 = v22;
    v32 = 2114;
    v33 = v23;
    v34 = 2114;
    v35 = v24;
    v25 = "%{public}@::%{public}@: %{public}@ not comparible with range end %{public}@";
    goto LABEL_13;
  }

  if ([v8 compare:v9] == -1)
  {
    v12 = sub_100025204();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      v23 = [v8 summary];
      v24 = [v9 summary];
      v26 = [v10 summary];
      v28 = 138544386;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      v32 = 2114;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      v36 = 2114;
      v37 = v26;
      v27 = "%{public}@::%{public}@: %{public}@ older than range [%{public}@, %{public}@]";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v27, &v28, 0x34u);

      goto LABEL_19;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_8;
  }

  v11 = [v8 compare:v10];
  v12 = sub_100025204();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 == 1)
  {
    if (v13)
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      v23 = [v8 summary];
      v24 = [v9 summary];
      v26 = [v10 summary];
      v28 = 138544386;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      v32 = 2114;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      v36 = 2114;
      v37 = v26;
      v27 = "%{public}@::%{public}@: %{public}@ newer than range [%{public}@, %{public}@]";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (v13)
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = [v8 summary];
    v17 = [v9 summary];
    v18 = [v10 summary];
    v28 = 138544386;
    v29 = v14;
    v30 = 2114;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = v17;
    v36 = 2114;
    v37 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@ in range [%{public}@, %{public}@]", &v28, 0x34u);
  }

  v19 = 1;
LABEL_8:

  return v19;
}

+ (id)restoreVersionFromOSVersion:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    sub_100029750(a1);
LABEL_14:
    v13 = 0;
    v12 = 0;
    v7 = 0;
    v6 = 0;
LABEL_16:
    v14 = 0;
    goto LABEL_11;
  }

  if ([v5 containsString:{@", "}])
  {
    sub_100029690(a1);
    goto LABEL_14;
  }

  v6 = [v5 componentsSeparatedByString:@"."];
  if ([v6 count] >= 6)
  {
    sub_100029598(a1, a2);
    v13 = 0;
    v12 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v7 = [NSMutableArray arrayWithCapacity:5];
  for (i = 0; i != 5; ++i)
  {
    if (i >= [v6 count] || (objc_msgSend(v6, "objectAtIndexedSubscript:", i), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", &stru_10005D038), v9, (v10 & 1) != 0))
    {
      [v7 addObject:@"0"];
    }

    else
    {
      v11 = [v6 objectAtIndexedSubscript:i];
      [v7 addObject:v11];
    }
  }

  v12 = [v7 componentsJoinedByString:@"."];
  v13 = [NSString stringWithFormat:@"%@, 0", v12];
  v14 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v13];
LABEL_11:
  v15 = v14;

  return v14;
}

+ (int64_t)assetCheckTaskInterval
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"PowerTableAssetCheckTaskInterval"];

  v5 = sub_100025204();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v6)
    {
      v4 = 3600;
      goto LABEL_8;
    }

    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2048;
    v4 = 3600;
    v16 = 3600;
    v9 = "%{public}@::%{public}@: defaulting to %ld seconds";
    goto LABEL_6;
  }

  if (v6)
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2048;
    v16 = v4;
    v9 = "%{public}@::%{public}@: overriding to %ld seconds";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x20u);
  }

LABEL_8:

  return v4;
}

+ (id)newPowerTableResultAsString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"NoNewPowerTablesAvailable";
  }

  else
  {
    return *(&off_10005C7E8 + a3 - 1);
  }
}

- (void)runBackgroundTaskWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == @"com.apple.centaurid.PowerTableAssetCheck")
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007C8C;
    v8[3] = &unk_10005C7C8;
    v9 = v6;
    [(PowerTableManager *)self checkForNewPowerTablesWithCompletion:v8];
  }
}

- (int64_t)performChipLevelValidationForPowerTableEvaluationSession:(id)a3 reason:(id *)a4
{
  v7 = a3;
  if (([v7 isEqual:self->_evaluationSession] & 1) == 0)
  {
    sub_100029810(self);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    v15 = sub_100025204();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }

    *a4 = @"noDelegate";
    goto LABEL_16;
  }

  v29 = 0;
  v10 = [WeakRetained readyForNewPowerTableValidationWithReason:&v29];
  v11 = v29;
  if ((v10 & 1) == 0)
  {
    v16 = sub_100025204();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [objc_opt_class() description];
      v18 = NSStringFromSelector(a2);
      *buf = 138543618;
      v31 = v17;
      v32 = 2114;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: delegate not ready", buf, 0x16u);
    }

    *a4 = @"chipLevelNotReady";
    if (!v11)
    {
      goto LABEL_16;
    }

    *a4 = [@"chipLevelNotReady" stringByAppendingFormat:@":%@", v11];
LABEL_15:

LABEL_16:
    v19 = 2;
    goto LABEL_17;
  }

  if ([(PowerTableManager *)self bluetoothAudioStreamingActive])
  {
    v12 = sub_100025204();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_opt_class() description];
      v14 = NSStringFromSelector(a2);
      *buf = 138543618;
      v31 = v13;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: bailing due to active audio streaming", buf, 0x16u);
    }

    *a4 = @"btAudioStreaming";
    goto LABEL_15;
  }

  v28 = v11;
  v21 = [v9 validateNewPowerTables:&v28];
  v22 = v28;

  v23 = sub_100025204();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [objc_opt_class() description];
    v25 = NSStringFromSelector(a2);
    v26 = v25;
    v27 = @"failed";
    *buf = 138543874;
    v31 = v24;
    if (v21)
    {
      v27 = @"passed";
    }

    v32 = 2114;
    v33 = v25;
    v34 = 2112;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: validation %@", buf, 0x20u);
  }

  if ((v21 & 1) == 0)
  {
    *a4 = @"chipLevelFailed";
    if (v22)
    {
      *a4 = [@"chipLevelFailed" stringByAppendingFormat:@":%@", v22];
    }
  }

  v19 = v21 ^ 1;

LABEL_17:
  return v19;
}

- (void)powerTableEvaluationSessionWillEnd:(id)a3 state:(int64_t)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v8 isEqual:self->_evaluationSession])
  {
    switch(a4)
    {
      case 4:
        if ([(NSArray *)self->_assetStores count])
        {
          v24 = 0;
          do
          {
            v25 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v24];
            v26 = [v25 stagedAsset];

            if (v26)
            {
              v27 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v24];
              v28 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v24];
              v29 = [v28 stagedAsset];
              [v27 rejectStagedAsset:v29];
            }

            ++v24;
          }

          while (v24 < [(NSArray *)self->_assetStores count]);
        }

        if (WeakRetained)
        {
          [WeakRetained reloadPowerTables];
        }

        else
        {
          v30 = sub_100025204();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1000298B8();
          }
        }

        v12 = @"Rejected";
        goto LABEL_30;
      case 5:
        if ([(NSArray *)self->_assetStores count])
        {
          v18 = 0;
          v12 = @"Accepted";
          do
          {
            v19 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v18];
            v20 = [v19 stagedAsset];

            if (v20)
            {
              v21 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v18];
              v22 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v18];
              v23 = [v22 stagedAsset];
              [v21 commitStagedAsset:v23];
            }

            ++v18;
          }

          while (v18 < [(NSArray *)self->_assetStores count]);
        }

        else
        {
          v12 = @"Accepted";
        }

        goto LABEL_30;
      case 6:
        if ([(NSArray *)self->_assetStores count])
        {
          v11 = 0;
          v12 = @"Aborted";
          do
          {
            v13 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v11];
            v14 = [v13 stagedAsset];

            if (v14)
            {
              v15 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v11];
              v16 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v11];
              v17 = [v16 stagedAsset];
              [v15 unstageStagedAsset:v17];
            }

            ++v11;
          }

          while (v11 < [(NSArray *)self->_assetStores count]);
        }

        else
        {
          v12 = @"Aborted";
        }

LABEL_30:
        v31 = [v8 assetVersionsUnderEvaluation];
        v32 = [v8 previousKnownGoodAssetVersions];
        [(PowerTableManager *)self reportEvaluationOutcome:v12 reason:v9 newAssetVersions:v31 previousAssetVersions:v32];

        return;
    }
  }

  else
  {
    sub_100029810(self);
  }

  v33 = sub_100025204();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_100028EEC();
  }

  v34 = abort_report_np();
  [(PowerTableManager *)v34 powerTableEvaluationSessionDidEnd:v35 state:v36, v37];
}

- (void)powerTableEvaluationSessionDidEnd:(id)a3 state:(int64_t)a4
{
  v12 = a3;
  if (([v12 isEqual:self->_evaluationSession] & 1) == 0)
  {
    sub_100029810(self);
    goto LABEL_8;
  }

  clientCompletionForNewPowerTableCheck = self->_clientCompletionForNewPowerTableCheck;
  if (!clientCompletionForNewPowerTableCheck)
  {
LABEL_8:
    sub_100029958(self);
    goto LABEL_9;
  }

  if ((a4 - 4) < 3)
  {
    clientCompletionForNewPowerTableCheck[2](clientCompletionForNewPowerTableCheck, qword_100036458[a4 - 4]);
    evaluationSession = self->_evaluationSession;
    self->_evaluationSession = 0;

    v8 = self->_clientCompletionForNewPowerTableCheck;
    self->_clientCompletionForNewPowerTableCheck = 0;

    [(PowerTableManager *)self log];

    return;
  }

LABEL_9:
  v9 = sub_100025204();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100028EEC();
  }

  v10 = abort_report_np();
  [(PowerTableManager *)v10 .cxx_destruct];
}

@end
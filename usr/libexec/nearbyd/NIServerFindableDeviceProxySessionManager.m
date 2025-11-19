@interface NIServerFindableDeviceProxySessionManager
+ (id)sharedInstance;
+ (int)_queryNumPairedFinderWatches_r121951698;
- (BOOL)_isTokenFindable:(id)a3;
- (BOOL)_shouldApplyBTScanMitigation_r121951698;
- (BOOL)_shouldHoldOSTransactionWhileFindable;
- (id).cxx_construct;
- (id)_enableInteractionWithPersistedTokens;
- (id)_initInternal;
- (id)_internalPrepareTokenCache;
- (id)_internalPrintableState;
- (id)_internalSetFindableDiscoveryTokens:(id)a3 tokenGroup:(id)a4 logInEventBuffer:(BOOL)a5;
- (id)_setTokenCacheForGroup:(id)a3;
- (id)_tokensFromAllGroups;
- (id)findableDiscoveryTokensForGroup:(id)a3;
- (id)interactingFinderDiscoveryTokensForGroup:(id)a3;
- (id)printableState;
- (id)setFindableDiscoveryTokens:(id)a3 tokenGroup:(id)a4;
- (id)setLocalDeviceDebugParameters:(id)a3;
- (id)startBeingFindableWithDiscoveryTokens:(id)a3 tokenGroup:(id)a4;
- (id)stopBeingFindableWithDiscoveryTokens:(id)a3 tokenGroup:(id)a4;
- (int)_selectedTechnology;
- (void)DataCallback:(id)a3;
- (void)_activateAssertionsWhileFindable;
- (void)_activateAssertionsWhileInteracting;
- (void)_activateProvidersLazy;
- (void)_activateSensors;
- (void)_advertiseAndRangeWithPeer:(id)a3 peerAdvertisement:(id)a4;
- (void)_deactivateAssertionsWhileFindable;
- (void)_deactivateAssertionsWhileInteracting;
- (void)_deactivateSensors;
- (void)_disableInteractionAndKeepPersistedTokens;
- (void)_handleRangingTerminatedCallbackForPeer:(id)a3;
- (void)_kickKeepAliveForPeer:(id)a3;
- (void)_logDeviceFindingUsageAnalyticsForToken:(id)a3;
- (void)_nanoRegistryDevicePairingChanged_r121951698:(id)a3;
- (void)_nearbydLogRange:(double)a3 token:(id)a4;
- (void)_setUpAlgorithmsContainerForToken:(id)a3;
- (void)_startAltitudeUpdates;
- (void)_startDeviceMotionUpdates;
- (void)_startDevicePDRUpdates;
- (void)_startMotionActivityUpdates;
- (void)_startPedometerDataUpdates;
- (void)_startPedometerEventUpdates;
- (void)_tearDownAlgorithmsContainerForToken:(id)a3;
- (void)_updatePeerTrackingForToken:(id)a3 newKeepAliveTimeout:(id)a4;
- (void)_updatePeerTrackingForToken:(id)a3 newNbUwbAcquisitionChannelIdx:(id)a4;
- (void)_updatePeerTrackingForToken:(id)a3 newNbUwbAcquisitionUseLowPriorityDutyCycle:(id)a4;
- (void)_updatePeerTrackingForToken:(id)a3 newOOBRefreshPeriod:(id)a4;
- (void)_updatePeerTrackingForToken:(id)a3 newTrackingState:(id)a4;
- (void)addObserver:(id)a3;
- (void)bluetoothDiscoveryBecameAvailable;
- (void)bluetoothDiscoveryBecameUnavailable;
- (void)bluetoothDiscoveryFinishedActivating;
- (void)didAttemptRangingWithPeer:(id)a3 unsuccessfulSolution:(const void *)a4;
- (void)didLosePeer:(id)a3;
- (void)didRangeWithPeer:(id)a3 newSolution:(const void *)a4;
- (void)didRangingAuthorizationFailForPeer:(id)a3;
- (void)didReceiveRangingDataForPeer:(id)a3 algorithmAidingData:(const void *)a4 signallingData:(const void *)a5;
- (void)didStopAdvertisingToPeer:(id)a3;
- (void)didStopRangingWithPeer:(id)a3;
- (void)didUpdateAdvertisement:(id)a3 toSendOOBToPeer:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)notifyDeviceUnlockedSinceBoot;
- (void)processClientDiscoveryEventForToken:(id)a3 sharedConfigurationData:(id)a4;
- (void)processClientRemovePeerEventForToken:(id)a3;
- (void)processVisionInput:(id)a3;
- (void)rangingBecameAvailable;
- (void)rangingBecameUnavailable;
- (void)removeObserver:(id)a3;
- (void)updatesEngine:(id)a3 didUpdateFindeeData:(const void *)a4 forToken:(id)a5;
@end

@implementation NIServerFindableDeviceProxySessionManager

+ (id)sharedInstance
{
  if (qword_1009F1398 != -1)
  {
    sub_1004AC24C();
  }

  v3 = qword_1009F1390;

  return v3;
}

- (void)notifyDeviceUnlockedSinceBoot
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,notifyDeviceUnlockedSinceBoot", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100214178;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_internalPrepareTokenCache
{
  dispatch_assert_queue_V2(self->_queue);
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    if (self->_preparedTokenCache)
    {
      v3 = 0;
      goto LABEL_34;
    }

    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 removeObjectForKey:@"FindingLocalDeviceLastUnlockUUID"];

    memset(v38, 0, sizeof(v38));
    v30 = 37;
    if (sysctlbyname("kern.bootsessionuuid", v38, &v30, 0, 0))
    {
      v6 = 0;
    }

    else
    {
      v6 = [NSString stringWithUTF8String:v38];
    }

    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 stringForKey:@"FindableDeviceProxyTokenCacheBootUUID"];

    if (v6)
    {
      if (v8)
      {
        v9 = [v8 isEqualToString:v6] ^ 1;
      }

      else
      {
        v9 = 1;
      }

      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#find-proxy,Prepare token cache (once per launch). First time after reboot: %d", buf, 8u);
      }

      if (!v9)
      {
        v16 = +[NIServerKeychainManager sharedInstance];
        v10 = [v16 readAllItemsWithService:@"FindingTokens" synchronizable:0 systemKeychain:0];

        *buf = 0;
        v32[0] = buf;
        v32[1] = 0x3032000000;
        v32[2] = sub_1002148C0;
        v32[3] = sub_1002148D0;
        v33 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1002148D8;
        v21[3] = &unk_10099EC68;
        v21[4] = self;
        v21[5] = buf;
        v21[6] = &v26;
        v21[7] = &v22;
        [v10 enumerateObjectsUsingBlock:v21];
        if (*(v32[0] + 40))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004AC30C(v32);
          }

          v17 = [NSString stringWithFormat:@"Prepare token cache: error restoring from cache: %@", *(v32[0] + 40)];
          sub_1003466C0(v17, &self->_tokenEventLogBuffer.__map_.__first_);

          v3 = *(v32[0] + 40);
        }

        else
        {
          v18 = +[NSUserDefaults standardUserDefaults];
          [v18 setObject:v6 forKey:@"FindableDeviceProxyTokenCacheBootUUID"];

          self->_preparedTokenCache = 1;
          v19 = [NSString stringWithFormat:@"Prepare token cache: restore success (%d groups, %d tokens)", *(v27 + 6), *(v23 + 6)];
          sub_1003466C0(v19, &self->_tokenEventLogBuffer.__map_.__first_);

          v3 = 0;
        }

        _Block_object_dispose(&v22, 8);
        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_32;
      }

      v13 = +[NIServerKeychainManager sharedInstance];
      v14 = [v13 deleteAllItemsWithService:@"FindingTokens" synchronizable:0 systemKeychain:0];

      if (v14)
      {
        v15 = +[NSUserDefaults standardUserDefaults];
        [v15 setObject:v6 forKey:@"FindableDeviceProxyTokenCacheBootUUID"];

        self->_preparedTokenCache = 1;
        sub_1003466C0(@"Prepare token cache: reset success", &self->_tokenEventLogBuffer.__map_.__first_);
        v3 = 0;
LABEL_33:

        goto LABEL_34;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AC380();
      }

      sub_1003466C0(@"Prepare token cache: reset failed", &self->_tokenEventLogBuffer.__map_.__first_);
      v34 = NSLocalizedFailureReasonErrorKey;
      v35 = @"Prepare token cache: reset failed";
      v10 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AC3BC();
      }

      sub_1003466C0(@"Prepare token cache: could not get current boot UUID", &self->_tokenEventLogBuffer.__map_.__first_);
      v36 = NSLocalizedFailureReasonErrorKey;
      v37 = @"Prepare token cache: could not get current boot UUID";
      v10 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
    }

    v3 = v11;
LABEL_32:

    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004AC2D0();
  }

  sub_1003466C0(@"Prepare token cache: not ready", &self->_tokenEventLogBuffer.__map_.__first_);
  v39 = NSLocalizedFailureReasonErrorKey;
  v40 = @"Prepare token cache: not ready";
  v4 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v4];

LABEL_34:

  return v3;
}

- (id)_internalSetFindableDiscoveryTokens:(id)a3 tokenGroup:(id)a4 logInEventBuffer:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v44 = a4;
  v42 = v8;
  dispatch_assert_queue_V2(self->_queue);
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1002148C0;
  v56 = sub_1002148D0;
  v57 = 0;
  [(NIServerFindableDeviceProxySessionManager *)self _activateProvidersLazy];
  v41 = [NSSet setWithArray:v8];
  v40 = [(NSMutableDictionary *)self->_groupedFindableTokens objectForKey:v44];
  v39 = objc_opt_new();
  v9 = objc_opt_new();
  v43 = v5;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100215204;
  v49[3] = &unk_10099EC90;
  v10 = v41;
  v50 = v10;
  v11 = v39;
  v51 = v11;
  [v40 enumerateObjectsUsingBlock:v49];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100215278;
  v46[3] = &unk_10099EC90;
  v12 = v40;
  v47 = v12;
  v13 = v9;
  v48 = v13;
  [v10 enumerateObjectsUsingBlock:v46];
  v14 = qword_1009F9820;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 allObjects];
    v16 = sub_100346A18(v15, 10, 0);
    *buf = 138478083;
    v59 = v44;
    v60 = 2113;
    v61 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-proxy,_internalSetFindableDiscoveryTokens. Group: %{private}@. New tokens: %{private}@", buf, 0x16u);
  }

  v17 = qword_1009F9820;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v12 allObjects];
    v19 = sub_100346A18(v18, 10, 0);
    *buf = 138477827;
    v59 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#find-proxy,Old tokens: %{private}@.", buf, 0xCu);
  }

  v20 = qword_1009F9820;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v13 allObjects];
    v22 = sub_100346A18(v21, 10, 0);
    *buf = 138477827;
    v59 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#find-proxy,Tokens added: %{private}@.", buf, 0xCu);
  }

  v23 = qword_1009F9820;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v11 allObjects];
    v25 = sub_100346A18(v24, 10, 0);
    *buf = 138477827;
    v59 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#find-proxy,Tokens removed: %{private}@.", buf, 0xCu);
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1002152EC;
  v45[3] = &unk_10099ECB8;
  v45[4] = self;
  v45[5] = &v52;
  [v11 enumerateObjectsUsingBlock:v45];
  v26 = [v10 count];
  groupedFindableTokens = self->_groupedFindableTokens;
  if (v26)
  {
    v28 = [v10 mutableCopy];
    [(NSMutableDictionary *)groupedFindableTokens setObject:v28 forKey:v44];
  }

  else
  {
    [(NSMutableDictionary *)self->_groupedFindableTokens removeObjectForKey:v44];
  }

  v29 = [(NIServerFindableDeviceProxySessionManager *)self _setTokenCacheForGroup:v44];
  if (v29)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AC3F8();
    }

    objc_storeStrong(v53 + 5, v29);
  }

  if ([(NIServerFindableDeviceProxySessionManager *)self _shouldInteract])
  {
    v30 = [(NIServerFindableDeviceProxySessionManager *)self _enableInteractionWithPersistedTokens];
    if (v30)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AC468();
      }

      objc_storeStrong(v53 + 5, v30);
    }
  }

  if ([(NIServerFindableDeviceProxySessionManager *)self _shouldHoldOSTransactionWhileFindable])
  {
    if ([(NSMutableDictionary *)self->_groupedFindableTokens count])
    {
      [(NIServerFindableDeviceProxySessionManager *)self _activateAssertionsWhileFindable];
    }

    else
    {
      [(NIServerFindableDeviceProxySessionManager *)self _deactivateAssertionsWhileFindable];
    }
  }

  if (v43)
  {
    v31 = [v13 count];
    if ([v11 count] + v31)
    {
      v32 = [v10 count];
      v33 = [v12 count];
      v34 = [v13 count];
      v35 = [v11 count];
      v36 = [NSString stringWithFormat:@"Set tokens. Group: %@. New: %d. Old: %d. Added: %d. Removed: %d. Error: %@", v44, v32, v33, v34, v35, v53[5]];
      sub_1003466C0(v36, &self->_tokenEventLogBuffer.__map_.__first_);
    }
  }

  v37 = v53[5];

  _Block_object_dispose(&v52, 8);

  return v37;
}

- (id)setFindableDiscoveryTokens:(id)a3 tokenGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109379;
    *&buf[4] = [v6 count];
    LOWORD(v19) = 2113;
    *(&v19 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-proxy,setFindableDiscoveryTokens (%d tokens). Group: %{private}@", buf, 0x12u);
  }

  *buf = 0;
  *&v19 = buf;
  *(&v19 + 1) = 0x3032000000;
  v20 = sub_1002148C0;
  v21 = sub_1002148D0;
  v22 = 0;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100215640;
  v14[3] = &unk_10099ECE0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v17 = buf;
  v10 = v7;
  v11 = v6;
  dispatch_sync(queue, v14);
  v12 = *(v19 + 40);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (id)startBeingFindableWithDiscoveryTokens:(id)a3 tokenGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109379;
    *&buf[4] = [v6 count];
    LOWORD(v19) = 2113;
    *(&v19 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-proxy,startBeingFindableWithDiscoveryTokens (%d tokens to add). Group: %{private}@", buf, 0x12u);
  }

  *buf = 0;
  *&v19 = buf;
  *(&v19 + 1) = 0x3032000000;
  v20 = sub_1002148C0;
  v21 = sub_1002148D0;
  v22 = 0;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002158D8;
  v14[3] = &unk_10099ECE0;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v17 = buf;
  v10 = v6;
  v11 = v7;
  dispatch_sync(queue, v14);
  v12 = *(v19 + 40);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (id)stopBeingFindableWithDiscoveryTokens:(id)a3 tokenGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109379;
    *&buf[4] = [v6 count];
    LOWORD(v19) = 2113;
    *(&v19 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-proxy,stopBeingFindableWithDiscoveryTokens (%d tokens to remove). Group: %{private}@", buf, 0x12u);
  }

  *buf = 0;
  *&v19 = buf;
  *(&v19 + 1) = 0x3032000000;
  v20 = sub_1002148C0;
  v21 = sub_1002148D0;
  v22 = 0;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100215C10;
  v14[3] = &unk_10099ECE0;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v17 = buf;
  v10 = v6;
  v11 = v7;
  dispatch_sync(queue, v14);
  v12 = *(v19 + 40);

  _Block_object_dispose(buf, 8);

  return v12;
}

- (id)setLocalDeviceDebugParameters:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,setLocalDeviceDebugParameters", buf, 2u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100215E80;
  v9[3] = &unk_10098A2E8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(queue, v9);

  return 0;
}

- (void)processClientDiscoveryEventForToken:(id)a3 sharedConfigurationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100215F88;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

- (void)processClientRemovePeerEventForToken:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002163A0;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)findableDiscoveryTokensForGroup:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,findableDiscoveryTokensForGroup: %{private}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = sub_1002148C0;
  v16 = sub_1002148D0;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021668C;
  block[3] = &unk_10099CF68;
  v11 = v4;
  p_buf = &buf;
  block[4] = self;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v8;
}

- (id)interactingFinderDiscoveryTokensForGroup:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,interactingFinderDiscoveryTokensForGroup: %{private}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = sub_1002148C0;
  v16 = sub_1002148D0;
  v17 = objc_opt_new();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002168CC;
  block[3] = &unk_10099ED58;
  block[4] = self;
  v11 = v4;
  p_buf = &buf;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v8;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100216AD4;
  v7[3] = &unk_10098A2E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100216DFC;
  v7[3] = &unk_10098A2E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002148C0;
  v10 = sub_1002148D0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100216F80;
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
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = sub_1002148C0;
  v91 = sub_1002148D0;
  v92 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = v88[5];
  v5 = +[NSDate now];
  v6 = sub_1003465F0(v5);
  v7 = sub_1003465F0(self->_initDate);
  [(NSDate *)self->_initDate timeIntervalSinceNow];
  v9 = [NSString stringWithFormat:@"Now: %@. Init: %@. Runtime: %.0f s. Cache: %d. Observers: %d", v6, v7, -v8, self->_preparedTokenCache, [(NSHashTable *)self->_observers count]];
  [v4 addObject:v9];

  v10 = v88[5];
  v11 = [NSString stringWithFormat:@"Sensors: %d. Assertions: OST-interacting %d, PA-interacting %d, OST-findable %d.", self->_sensorsOn, self->_osTransactionWhileInteracting != 0, self->_powerAssertionWhileInteracting != 0, self->_osTransactionWhileFindable != 0];
  [v10 addObject:v11];

  v12 = v88[5];
  v13 = [NSString stringWithFormat:@"BT available: %d. Ranging available: %d. Should interact: %d.", self->_bluetoothDiscoveryAvailable, self->_rangingAvailable, [(NIServerFindableDeviceProxySessionManager *)self _shouldInteract]];
  [v12 addObject:v13];

  v14 = v88[5];
  v15 = [NSString stringWithFormat:@"Paired finder watches: %d. Should apply BT scan mitigation [r121951698]: %d.", self->_numPairedFinderWatches_r121951698, [(NIServerFindableDeviceProxySessionManager *)self _shouldApplyBTScanMitigation_r121951698]];
  [v14 addObject:v15];

  v16 = v88[5];
  v17 = [NSString stringWithFormat:@"Findable tokens (%d groups)", [(NSMutableDictionary *)self->_groupedFindableTokens count]];
  [v16 addObject:v17];

  groupedFindableTokens = self->_groupedFindableTokens;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_100217A20;
  v86[3] = &unk_10099EDA8;
  v86[4] = &v87;
  [(NSMutableDictionary *)groupedFindableTokens enumerateKeysAndObjectsUsingBlock:v86];
  v19 = v88[5];
  v20 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider printableState];
  [v19 addObjectsFromArray:v20];

  v21 = v88[5];
  v22 = [(NIServerFindingRangingProvider *)self->_rangingProvider printableState];
  [v21 addObjectsFromArray:v22];

  v23 = v88[5];
  v24 = [NSString stringWithFormat:@"Tracking state for %d peers", [(NSMutableDictionary *)self->_peerTracking count]];
  [v23 addObject:v24];

  peerTracking = self->_peerTracking;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_100217B48;
  v85[3] = &unk_10099EDD0;
  v85[4] = &v87;
  [(NSMutableDictionary *)peerTracking enumerateKeysAndObjectsUsingBlock:v85];
  v26 = v88[5];
  v27 = [NSString stringWithFormat:@"Algorithm containers for %d peers", [(NSMutableDictionary *)self->_peerAlgorithmContainers count]];
  [v26 addObject:v27];

  v28 = v88[5];
  v29 = [(NSMutableDictionary *)self->_peerAlgorithmContainers allKeys];
  v30 = sub_100346A18(v29, 10, 1);
  [v28 addObjectsFromArray:v30];

  v31 = v88[5];
  v32 = [NSString stringWithFormat:@"Keep-alive timeout timers for %d peers", [(NSMutableDictionary *)self->_keepAliveTimeoutTimers count]];
  [v31 addObject:v32];

  v33 = v88[5];
  v34 = [(NSMutableDictionary *)self->_keepAliveTimeoutTimers allKeys];
  v35 = sub_100346A18(v34, 10, 1);
  [v33 addObjectsFromArray:v35];

  v36 = v88[5];
  v37 = [NSString stringWithFormat:@"Last discovery event: %@", self->_lastDiscoveryEvent];
  [v36 addObject:v37];

  v38 = v88[5];
  v39 = [NSString stringWithFormat:@"Last range measurement: %@", self->_lastRangingMeasurement];
  [v38 addObject:v39];

  v40 = v88[5];
  v41 = [NSString stringWithFormat:@"Last range poll: %@", self->_lastRangingPoll];
  [v40 addObject:v41];

  v42 = v88[5];
  v43 = [NSString stringWithFormat:@"Token events (max %d)", self->_tokenEventLogBuffer.__size_];
  [v42 addObject:v43];

  begin = self->_tokenEventLogBuffer.__map_.__begin_;
  if (self->_tokenEventLogBuffer.__map_.__end_ != begin)
  {
    start = self->_tokenEventLogBuffer.__start_;
    v46 = begin[start / 0xAA] + 24 * (start % 0xAA);
    v47 = begin[(self->_tokenEventLogBuffer.__size_ + start) / 0xAA] + 24 * ((self->_tokenEventLogBuffer.__size_ + start) % 0xAA);
    if (v46 != v47)
    {
      v48 = &begin[start / 0xAA];
      do
      {
        if (*(v46 + 23) < 0)
        {
          sub_1000056BC(__p, *v46, *(v46 + 8));
        }

        else
        {
          v49 = *v46;
          v84 = *(v46 + 16);
          *__p = v49;
        }

        if (SHIBYTE(v84) < 0)
        {
          if (!__p[1])
          {
            goto LABEL_13;
          }

          v51 = v88;
          v50 = __p[0];
        }

        else
        {
          if (!HIBYTE(v84))
          {
            goto LABEL_14;
          }

          v50 = __p;
          v51 = v88;
        }

        v52 = v51[5];
        v53 = [NSString stringWithFormat:@"    %s", v50];
        [v52 addObject:v53];

        if (SHIBYTE(v84) < 0)
        {
LABEL_13:
          operator delete(__p[0]);
        }

LABEL_14:
        v46 += 24;
        if (v46 - *v48 == 4080)
        {
          v54 = v48[1];
          ++v48;
          v46 = v54;
        }
      }

      while (v46 != v47);
    }
  }

  v55 = v88[5];
  v56 = [NSString stringWithFormat:@"Session events (max %d)", self->_sessionEventLogBuffer.__size_];
  [v55 addObject:v56];

  v57 = self->_sessionEventLogBuffer.__map_.__begin_;
  if (self->_sessionEventLogBuffer.__map_.__end_ != v57)
  {
    v58 = self->_sessionEventLogBuffer.__start_;
    v59 = v57[v58 / 0xAA] + 24 * (v58 % 0xAA);
    v60 = v57[(self->_sessionEventLogBuffer.__size_ + v58) / 0xAA] + 24 * ((self->_sessionEventLogBuffer.__size_ + v58) % 0xAA);
    if (v59 != v60)
    {
      v61 = &v57[v58 / 0xAA];
      do
      {
        if (*(v59 + 23) < 0)
        {
          sub_1000056BC(__p, *v59, *(v59 + 8));
        }

        else
        {
          v62 = *v59;
          v84 = *(v59 + 16);
          *__p = v62;
        }

        if (SHIBYTE(v84) < 0)
        {
          if (!__p[1])
          {
            goto LABEL_29;
          }

          v64 = v88;
          v63 = __p[0];
        }

        else
        {
          if (!HIBYTE(v84))
          {
            goto LABEL_30;
          }

          v63 = __p;
          v64 = v88;
        }

        v65 = v64[5];
        v66 = [NSString stringWithFormat:@"    %s", v63];
        [v65 addObject:v66];

        if (SHIBYTE(v84) < 0)
        {
LABEL_29:
          operator delete(__p[0]);
        }

LABEL_30:
        v59 += 24;
        if (v59 - *v61 == 4080)
        {
          v67 = v61[1];
          ++v61;
          v59 = v67;
        }
      }

      while (v59 != v60);
    }
  }

  v68 = v88[5];
  v69 = [NSString stringWithFormat:@"Misc events (max %d)", self->_miscEventLogBuffer.__size_];
  [v68 addObject:v69];

  v70 = self->_miscEventLogBuffer.__map_.__begin_;
  if (self->_miscEventLogBuffer.__map_.__end_ != v70)
  {
    v71 = self->_miscEventLogBuffer.__start_;
    v72 = v70[v71 / 0xAA] + 24 * (v71 % 0xAA);
    v73 = v70[(self->_miscEventLogBuffer.__size_ + v71) / 0xAA] + 24 * ((self->_miscEventLogBuffer.__size_ + v71) % 0xAA);
    if (v72 != v73)
    {
      v74 = &v70[v71 / 0xAA];
      do
      {
        if (*(v72 + 23) < 0)
        {
          sub_1000056BC(__p, *v72, *(v72 + 8));
        }

        else
        {
          v75 = *v72;
          v84 = *(v72 + 16);
          *__p = v75;
        }

        if (SHIBYTE(v84) < 0)
        {
          if (!__p[1])
          {
            goto LABEL_45;
          }

          v77 = v88;
          v76 = __p[0];
        }

        else
        {
          if (!HIBYTE(v84))
          {
            goto LABEL_46;
          }

          v76 = __p;
          v77 = v88;
        }

        v78 = v77[5];
        v79 = [NSString stringWithFormat:@"    %s", v76];
        [v78 addObject:v79];

        if (SHIBYTE(v84) < 0)
        {
LABEL_45:
          operator delete(__p[0]);
        }

LABEL_46:
        v72 += 24;
        if (v72 - *v74 == 4080)
        {
          v80 = v74[1];
          ++v74;
          v72 = v80;
        }
      }

      while (v72 != v73);
    }
  }

  objc_autoreleasePoolPop(v3);
  v81 = v88[5];
  _Block_object_dispose(&v87, 8);

  return v81;
}

- (id)_initInternal
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,_initInternal", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = NIServerFindableDeviceProxySessionManager;
  v4 = [(NIServerFindableDeviceProxySessionManager *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v6 = dispatch_queue_create("com.apple.nearbyd.finding.proxy-session", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = v4->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100217D68;
    block[3] = &unk_10098BD28;
    v11 = v4;
    dispatch_sync(v8, block);
  }

  return v4;
}

- (void)_activateSensors
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_sensorsOn)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,turning on sensors for findee algorithms.", buf, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NILocalDeviceActivatingSensors", 0, 0, 1u);
    if ([(NIServerFindableDeviceProxySessionManager *)self supportsCameraAssistance])
    {
      v5 = +[NIServerVisionDataDistributor sharedProvider];
      [v5 registerForVisionInput:self];
    }

    v6 = objc_alloc_init(CMMotionManager);
    motionManager = self->_motionManager;
    self->_motionManager = v6;

    if (self->_motionManager)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _startDeviceMotionUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC5B8();
    }

    v8 = objc_alloc_init(CMAltimeter);
    altimeterManager = self->_altimeterManager;
    self->_altimeterManager = v8;

    if (self->_altimeterManager)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _startAltitudeUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC5F4();
    }

    v10 = objc_alloc_init(CMPedometer);
    pedometerManager = self->_pedometerManager;
    self->_pedometerManager = v10;

    if (self->_pedometerManager)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _startPedometerDataUpdates];
      [(NIServerFindableDeviceProxySessionManager *)self _startPedometerEventUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC630();
    }

    v12 = objc_alloc_init(CMMotionActivityManager);
    motionActivityManager = self->_motionActivityManager;
    self->_motionActivityManager = v12;

    if (self->_motionActivityManager)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _startMotionActivityUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC66C();
    }

    v14 = objc_alloc_init(CMOdometryManager);
    pdrManager = self->_pdrManager;
    self->_pdrManager = v14;

    if (self->_pdrManager)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _startDevicePDRUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC6A8();
    }

    v16 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/PrivateFrameworks/FMF.framework" delegate:self onQueue:self->_queue];
    locationManager = self->_locationManager;
    self->_locationManager = v16;

    v18 = self->_locationManager;
    if (v18)
    {
      [(CLLocationManager *)v18 setActivityType:3];
      [(CLLocationManager *)self->_locationManager setDistanceFilter:kCLDistanceFilterNone];
      [(CLLocationManager *)self->_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
      [(CLLocationManager *)self->_locationManager setDelegate:self];
      [(CLLocationManager *)self->_locationManager startUpdatingLocation];
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#find-proxy,startUpdatingLocation", v23, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC6E4();
    }

    v20 = [[NSBundle alloc] initWithPath:@"/System/Library/PrivateFrameworks/FMF.framework"];
    if (!self->_gnssExtensionsManager)
    {
      v21 = [[NIGnssExtensionsManager alloc] initWithQueue:self->_queue bundle:v20 reason:@"NIServerFindableDeviceProxySessionManager"];
      gnssExtensionsManager = self->_gnssExtensionsManager;
      self->_gnssExtensionsManager = v21;

      [(NIGnssExtensionsManager *)self->_gnssExtensionsManager setDelegate:self];
    }

    self->_sensorsOn = 1;
  }
}

- (void)_deactivateSensors
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_sensorsOn)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,turning off sensors for findee algorithms.  ", v14, 2u);
    }

    [(CMAltimeter *)self->_altimeterManager stopRelativeAltitudeUpdates];
    altimeterManager = self->_altimeterManager;
    self->_altimeterManager = 0;

    [(CMPedometer *)self->_pedometerManager stopPedometerUpdates];
    [(CMPedometer *)self->_pedometerManager stopPedometerEventUpdates];
    pedometerManager = self->_pedometerManager;
    self->_pedometerManager = 0;

    [(CMMotionActivityManager *)self->_motionActivityManager stopActivityUpdates];
    motionActivityManager = self->_motionActivityManager;
    self->_motionActivityManager = 0;

    [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
    motionManager = self->_motionManager;
    self->_motionManager = 0;

    [(CMOdometryManager *)self->_pdrManager stopOdometryUpdates];
    pdrManager = self->_pdrManager;
    self->_pdrManager = 0;

    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    [(CLLocationManager *)self->_locationManager setDelegate:0];
    locationManager = self->_locationManager;
    self->_locationManager = 0;

    gnssExtensionsManager = self->_gnssExtensionsManager;
    if (gnssExtensionsManager)
    {
      [(NIGnssExtensionsManager *)gnssExtensionsManager invalidate];
      v11 = self->_gnssExtensionsManager;
      self->_gnssExtensionsManager = 0;
    }

    if ([(NIServerFindableDeviceProxySessionManager *)self supportsCameraAssistance])
    {
      v12 = +[NIServerVisionDataDistributor sharedProvider];
      [v12 unregisterForVisionInput:self];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NILocalDeviceDeactivatingSensors", 0, 0, 1u);
    self->_sensorsOn = 0;
  }
}

- (void)_activateAssertionsWhileFindable
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_osTransactionWhileFindable)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,Activate OS transaction while findable", v6, 2u);
    }

    v4 = os_transaction_create();
    osTransactionWhileFindable = self->_osTransactionWhileFindable;
    self->_osTransactionWhileFindable = v4;

    if (!self->_osTransactionWhileFindable && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC720();
    }
  }
}

- (void)_deactivateAssertionsWhileFindable
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_osTransactionWhileFindable)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,Deactivate OS transaction (no longer findable)", v5, 2u);
    }

    osTransactionWhileFindable = self->_osTransactionWhileFindable;
    self->_osTransactionWhileFindable = 0;
  }
}

- (void)_activateAssertionsWhileInteracting
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_osTransactionWhileInteracting)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,Activate OS transaction while interacting", buf, 2u);
    }

    v4 = os_transaction_create();
    osTransactionWhileInteracting = self->_osTransactionWhileInteracting;
    self->_osTransactionWhileInteracting = v4;

    if (!self->_osTransactionWhileInteracting && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC75C();
    }
  }

  powerAssertionWhileInteracting = self->_powerAssertionWhileInteracting;
  p_powerAssertionWhileInteracting = &self->_powerAssertionWhileInteracting;
  if (!powerAssertionWhileInteracting)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-proxy,Activate power assertion while interacting", v9, 2u);
    }

    if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.nearbyd.finding.proxy-session.while-interacting", p_powerAssertionWhileInteracting) || !*p_powerAssertionWhileInteracting)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AC798();
      }

      *p_powerAssertionWhileInteracting = 0;
    }
  }
}

- (void)_deactivateAssertionsWhileInteracting
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_osTransactionWhileInteracting)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,Deactivate OS transaction (no longer interacting)", buf, 2u);
    }

    osTransactionWhileInteracting = self->_osTransactionWhileInteracting;
    self->_osTransactionWhileInteracting = 0;
  }

  if (self->_powerAssertionWhileInteracting)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,Deactivate power assertion while interacting", v7, 2u);
    }

    v6 = IOPMAssertionRelease(self->_powerAssertionWhileInteracting);
    self->_powerAssertionWhileInteracting = 0;
    if (v6)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AC80C();
      }
    }
  }
}

- (void)_activateProvidersLazy
{
  dispatch_assert_queue_V2(self->_queue);
  [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider activate];
  rangingProvider = self->_rangingProvider;

  [(NIServerFindingRangingProvider *)rangingProvider activate];
}

- (void)_updatePeerTrackingForToken:(id)a3 newNbUwbAcquisitionChannelIdx:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
    v9 = [v8 copy];
  }

  else
  {
    v9 = +[NIServerFindingPeerTracking peerTrackingInitialState];
  }

  [v9 setNbUwbAcquisitionChannelIdx:v6];
  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v10 newTrackingState:v9];
}

- (void)_updatePeerTrackingForToken:(id)a3 newNbUwbAcquisitionUseLowPriorityDutyCycle:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
    v9 = [v8 copy];
  }

  else
  {
    v9 = +[NIServerFindingPeerTracking peerTrackingInitialState];
  }

  [v9 setNbUwbAcquisitionUseLowPriorityDutyCycle:v6];
  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v10 newTrackingState:v9];
}

- (void)_updatePeerTrackingForToken:(id)a3 newOOBRefreshPeriod:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
    v9 = [v8 copy];
  }

  else
  {
    v9 = +[NIServerFindingPeerTracking peerTrackingInitialState];
  }

  [v9 setOobRefreshPeriodSeconds:v6];
  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v10 newTrackingState:v9];
}

- (void)_updatePeerTrackingForToken:(id)a3 newKeepAliveTimeout:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v10];
    v9 = [v8 copy];
  }

  else
  {
    v9 = +[NIServerFindingPeerTracking peerTrackingInitialState];
  }

  [v9 setKeepAliveTimeoutSeconds:v6];
  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v10 newTrackingState:v9];
}

- (void)_updatePeerTrackingForToken:(id)a3 newTrackingState:(id)a4
{
  v6 = a3;
  v116 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [v116 copy];
  v8 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v6];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v6];
    v10 = [v9 copy];
  }

  else
  {
    v9 = +[NIServerFindingPeerTracking peerTrackingInitialState];
    v10 = v9;
  }

  if ([v10 rangingState] == 3 && (objc_msgSend(v7, "rangingState") == 1 || objc_msgSend(v7, "rangingState") == 2))
  {
    [v7 setRangingState:{objc_msgSend(v10, "rangingState")}];
  }

  if ([v10 rangingState] == 2 && objc_msgSend(v7, "rangingState") == 1)
  {
    [v7 setRangingState:{objc_msgSend(v10, "rangingState")}];
  }

  if ([v10 discoveryState] == 3 && (objc_msgSend(v7, "discoveryState") == 1 || objc_msgSend(v7, "discoveryState") == 2))
  {
    [v7 setDiscoveryState:{objc_msgSend(v10, "discoveryState")}];
  }

  if (([v10 isDoingAnything] & 1) == 0 && (objc_msgSend(v7, "isDoingAnything") & 1) == 0)
  {
    v11 = [v10 copy];

    v7 = v11;
  }

  if ([v10 discoveryState] == 1 && objc_msgSend(v7, "discoveryState") == 2 || objc_msgSend(v10, "discoveryState") == 2 && objc_msgSend(v7, "discoveryState") == 1)
  {
    [v7 setDiscoveryState:3];
  }

  if ([v7 hasReceivedRangingData] && (objc_msgSend(v7, "receivedSignalFlags") & 1) != 0)
  {
    [v7 setTellClientAboutPeer:1];
  }

  if (![v7 isDoingAnything] || (objc_msgSend(v7, "receivedSignalFlags") & 1) == 0)
  {
    [v7 setTellClientAboutPeer:0];
  }

  if (([v10 isEqual:v7] & 1) == 0)
  {
    v12 = [v7 isDoingAnything];
    peerTracking = self->_peerTracking;
    if (v12)
    {
      [(NSMutableDictionary *)peerTracking setObject:v7 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)peerTracking removeObjectForKey:v6];
    }

    if (([v10 isDoingAnything] & 1) == 0 && objc_msgSend(v7, "isDoingAnything"))
    {
      v14 = qword_1009F9820;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = sub_1003464D4("SessionStarted", 0, v6, 0);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &buf, 0xCu);
      }

      v16 = [v6 descriptionInternal];
      v17 = [NSString stringWithFormat:@"%@: SessionStarted", v16];
      sub_1003466C0(v17, &self->_sessionEventLogBuffer.__map_.__first_);
    }

    v18 = qword_1009F9820;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [NSString stringWithFormat:@"Change: %@ -> %@", v10, v7];
      v20 = sub_1003464D4("StateChange", 0, v6, v19);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &buf, 0xCu);
    }

    v21 = [v6 descriptionInternal];
    v22 = [NSString stringWithFormat:@"%@: %@", v21, v7];
    sub_1003466C0(v22, &self->_sessionEventLogBuffer.__map_.__first_);

    *&buf = 0;
    *(&buf + 1) = &buf;
    v127 = 0x2020000000;
    v128 = 0;
    v120 = 0;
    v121 = &v120;
    v122 = 0x2020000000;
    v123 = 0;
    v23 = self->_peerTracking;
    v119[0] = _NSConcreteStackBlock;
    v119[1] = 3221225472;
    v119[2] = sub_10021A9B0;
    v119[3] = &unk_10099EDF8;
    v119[4] = &buf;
    v119[5] = &v120;
    [(NSMutableDictionary *)v23 enumerateKeysAndObjectsUsingBlock:v119];
    if (*(*(&buf + 1) + 24) == 1)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _activateAssertionsWhileInteracting];
    }

    if (*(v121 + 24) == 1)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _activateSensors];
    }

    else
    {
      [(NIServerFindableDeviceProxySessionManager *)self _deactivateSensors];
    }

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _deactivateAssertionsWhileInteracting];
    }

    if (([v10 hasReceivedRangingData] & 1) == 0 && objc_msgSend(v7, "hasReceivedRangingData"))
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10021AA3C;
      block[3] = &unk_10098A2E8;
      block[4] = self;
      v118 = v6;
      dispatch_async(queue, block);
    }

    if (([v10 isDoingAnything] & 1) == 0 && objc_msgSend(v7, "isDoingAnything"))
    {
      [(NIServerFindableDeviceProxySessionManager *)self _setUpAlgorithmsContainerForToken:v6];
    }

    if ([v10 isDoingAnything] && (objc_msgSend(v7, "isDoingAnything") & 1) == 0)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _tearDownAlgorithmsContainerForToken:v6];
    }

    if (([v10 hasReceivedRangingData] & 1) == 0 && objc_msgSend(v7, "hasReceivedRangingData"))
    {
      v25 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
      v26 = [v25 updatesEngine];
      [v26 acceptDiscoveryEventForPeer:v6];

      v27 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
      v28 = [v27 analyticsManager];
      v29 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
      v30 = [v29 configuration];
      [v28 sessionSuccessfullyRanWithConfig:v30 withTimestamp:sub_100005288()];
    }

    if ([v10 isAttemptingToRange] && (objc_msgSend(v7, "isAttemptingToRange") & 1) == 0)
    {
      [(NIServerFindableDeviceProxySessionManager *)self _tearDownAlgorithmsContainerForToken:v6];
      [(NIServerFindableDeviceProxySessionManager *)self _setUpAlgorithmsContainerForToken:v6];
    }

    v31 = [v7 nbUwbAcquisitionUseLowPriorityDutyCycle];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = [v10 nbUwbAcquisitionUseLowPriorityDutyCycle];
      v34 = v33 == 0;

      if (v34)
      {
        v39 = qword_1009F9820;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v7 nbUwbAcquisitionUseLowPriorityDutyCycle];
          v46 = [v45 BOOLValue];
          v47 = "High";
          if (v46)
          {
            v47 = "Low";
          }

          v48 = [NSString stringWithFormat:@"Configure. Priority: [Default] -> %s", v47];
          v49 = sub_1003464D4("AcqDutyCycle", 0, v6, v48);
          *v124 = 138412290;
          v125 = v49;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
        }
      }

      else
      {
        v35 = [v7 nbUwbAcquisitionUseLowPriorityDutyCycle];
        v36 = [v35 BOOLValue];
        v37 = [v10 nbUwbAcquisitionUseLowPriorityDutyCycle];
        v38 = [v37 BOOLValue];

        if (v36 == v38)
        {
          goto LABEL_78;
        }

        v39 = qword_1009F9820;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v115 = [v10 nbUwbAcquisitionUseLowPriorityDutyCycle];
          if ([v115 BOOLValue])
          {
            v40 = "Low";
          }

          else
          {
            v40 = "High";
          }

          v41 = [v7 nbUwbAcquisitionUseLowPriorityDutyCycle];
          if ([v41 BOOLValue])
          {
            v42 = "Low";
          }

          else
          {
            v42 = "High";
          }

          v43 = [NSString stringWithFormat:@"Reconfigure. Priority: %s -> %s", v40, v42];
          v44 = sub_1003464D4("AcqDutyCycle", 0, v6, v43);
          *v124 = 138412290;
          v125 = v44;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
        }
      }
    }

LABEL_78:
    v50 = [v7 oobRefreshPeriodSeconds];
    v51 = v50 == 0;

    if (v51)
    {
      goto LABEL_86;
    }

    v52 = [v10 oobRefreshPeriodSeconds];
    v53 = v52 == 0;

    if (v53)
    {
      v60 = qword_1009F9820;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [v7 oobRefreshPeriodSeconds];
        [v68 doubleValue];
        v70 = [NSString stringWithFormat:@"Configure. Period: [Default] -> %0.1f s", v69];
        v71 = sub_1003464D4("OOBRefresh", 0, v6, v70);
        *v124 = 138412290;
        v125 = v71;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
      }
    }

    else
    {
      v54 = [v7 oobRefreshPeriodSeconds];
      [v54 doubleValue];
      v56 = v55;
      v57 = [v10 oobRefreshPeriodSeconds];
      [v57 doubleValue];
      v59 = v56 != v58;

      if (!v59)
      {
        goto LABEL_86;
      }

      v60 = qword_1009F9820;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [v10 oobRefreshPeriodSeconds];
        [v61 doubleValue];
        v63 = v62;
        v64 = [v7 oobRefreshPeriodSeconds];
        [v64 doubleValue];
        v66 = [NSString stringWithFormat:@"Reconfigure. Period: %0.1f s -> %0.1f s", v63, v65];
        v67 = sub_1003464D4("OOBRefresh", 0, v6, v66);
        *v124 = 138412290;
        v125 = v67;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
      }
    }

LABEL_86:
    v72 = [v7 keepAliveTimeoutSeconds];
    v73 = v72 == 0;

    if (!v73)
    {
      v74 = [v10 keepAliveTimeoutSeconds];
      v75 = v74 == 0;

      if (v75)
      {
        v82 = qword_1009F9820;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v90 = [v7 keepAliveTimeoutSeconds];
          [v90 doubleValue];
          v92 = [NSString stringWithFormat:@"Configure. Timeout: [None] -> %0.1f s", v91];
          v93 = sub_1003464D4("KeepAlive", 0, v6, v92);
          *v124 = 138412290;
          v125 = v93;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
        }

        goto LABEL_93;
      }

      v76 = [v7 keepAliveTimeoutSeconds];
      [v76 doubleValue];
      v78 = v77;
      v79 = [v10 keepAliveTimeoutSeconds];
      [v79 doubleValue];
      v81 = v78 != v80;

      if (v81)
      {
        v82 = qword_1009F9820;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = [v10 keepAliveTimeoutSeconds];
          [v83 doubleValue];
          v85 = v84;
          v86 = [v7 keepAliveTimeoutSeconds];
          [v86 doubleValue];
          v88 = [NSString stringWithFormat:@"Reconfigure. Timeout: %0.1f s -> %0.1f s", v85, v87];
          v89 = sub_1003464D4("KeepAlive", 0, v6, v88);
          *v124 = 138412290;
          v125 = v89;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
        }

LABEL_93:
      }
    }

    if ([v10 discoveryState] || !objc_msgSend(v7, "discoveryState"))
    {
LABEL_95:
      if (([v10 tellClientAboutPeer] & 1) == 0 && objc_msgSend(v7, "tellClientAboutPeer"))
      {
        v94 = qword_1009F9820;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          v95 = [NSString stringWithFormat:@"Sent: %@", @"NILocalDeviceStartedInteractingWithTokenNotification"];
          v96 = sub_1003464D4("NotifiedClient", 0, v6, v95);
          *v124 = 138412290;
          v125 = v96;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NILocalDeviceStartedInteractingWithTokenNotification", 0, 0, 1u);
      }

      if ([v10 tellClientAboutPeer] && (objc_msgSend(v7, "tellClientAboutPeer") & 1) == 0)
      {
        v98 = qword_1009F9820;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          v99 = [NSString stringWithFormat:@"Sent: %@", @"NILocalDeviceStoppedInteractingWithTokenNotification"];
          v100 = sub_1003464D4("NotifiedClient", 0, v6, v99);
          *v124 = 138412290;
          v125 = v100;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
        }

        v101 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(v101, @"NILocalDeviceStoppedInteractingWithTokenNotification", 0, 0, 1u);
      }

      if ([v10 isDoingAnything] && (objc_msgSend(v7, "isDoingAnything") & 1) == 0)
      {
        v102 = qword_1009F9820;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = sub_1003464D4("SessionStopped", 0, v6, 0);
          *v124 = 138412290;
          v125 = v103;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", v124, 0xCu);
        }

        v104 = [v6 descriptionInternal];
        v105 = [NSString stringWithFormat:@"%@: SessionStopped", v104];
        sub_1003466C0(v105, &self->_sessionEventLogBuffer.__map_.__first_);

        [(NIServerFindableDeviceProxySessionManager *)self _logDeviceFindingUsageAnalyticsForToken:v6];
      }

      _Block_object_dispose(&v120, 8);
      _Block_object_dispose(&buf, 8);
      goto LABEL_111;
    }

    if ([v7 discoveryState] == 2)
    {
      v106 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
      v107 = [v106 analyticsManager];
      [v107 updateWithAcquisitionReason:1];
    }

    else
    {
      if ([v7 discoveryState] != 1)
      {
        goto LABEL_118;
      }

      v106 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
      v107 = [v106 analyticsManager];
      [v107 updateWithAcquisitionReason:3];
    }

LABEL_118:
    v108 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider discoveredPeers];
    v109 = [v108 objectForKeyedSubscript:v6];
    v110 = [v109 useCase] == 1;

    if (v110)
    {
      deviceFindingUsageAnalyticsInfo = self->_deviceFindingUsageAnalyticsInfo;
      v112 = objc_opt_new();
      [(NSMutableDictionary *)deviceFindingUsageAnalyticsInfo setObject:v112 forKey:v6];

      v113 = +[NSDate now];
      v114 = [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo objectForKeyedSubscript:v6];
      [v114 setSessionStartTimestamp:v113];
    }

    goto LABEL_95;
  }

LABEL_111:
}

- (void)_advertiseAndRangeWithPeer:(id)a3 peerAdvertisement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NIServerFindableDeviceProxySessionManager *)self _selectedTechnology];
  v9 = [(NIServerFindingRangingProvider *)self->_rangingProvider canRangeWithPeer:v6 technology:v8];
  v52 = [v7 canRange];
  if (v7)
  {
    [v7 supportedTechnologies];
  }

  else
  {
    memset(__p, 0, sizeof(__p));
  }

  LODWORD(v49) = sub_100346F20(__p, v8);
  v54 = v8;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v10 = [NIServerFindingAdvertisement alloc];
  v11 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider advertisingAddress];
  LODWORD(__p[0]) = v11;
  WORD2(__p[0]) = WORD2(v11);
  v12 = [(NIServerFindingAdvertisement *)v10 initForFinder:0 address:__p];
  [v12 setCanRange:v9];
  [v12 setUseCase:{objc_msgSend(v7, "useCase")}];
  LODWORD(__p[0]) = v54;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  sub_1002216D0(&v59, __p, __p + 4, 1uLL);
  [v12 setSupportedTechnologies:&v59];
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  [v12 setProtocolVersion:{2, v49}];
  v13 = sub_10035D02C();
  v14 = *(v13 + 406);
  v15 = *(v13 + 407);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100329F3C(v14);
  v16 = sub_100428064(v58);
  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  if (v15)
  {
    sub_10000AD84(v15);
  }

  if ([v7 narrowBandMask])
  {
    v17 = [v7 narrowBandMask];
  }

  else
  {
    LOBYTE(__p[0]) = 1;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    sub_10019ECC8(&v55, __p, __p + 1, 1);
    v17 = sub_100428064(&v55);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }

  v18 = v17 & v16;
  [v12 setNarrowBandMask:v17 & v16];
  v19 = sub_10035D02C();
  v20 = *(v19 + 406);
  v21 = *(v19 + 407);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_100329F8C(v20);
  v23 = sub_1004285B0(v22);
  if (v21)
  {
    sub_10000AD84(v21);
  }

  v24 = sub_1004285C8(v23, [v7 mmsNumFragmentsOOB]);
  [v12 setMmsNumFragmentsOOB:v24];
  v25 = qword_1009F9820;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v7 mmsNumFragmentsOOB];
    LODWORD(__p[0]) = 67109632;
    HIDWORD(__p[0]) = v26;
    LOWORD(__p[1]) = 1024;
    *(&__p[1] + 2) = v23;
    HIWORD(__p[1]) = 1024;
    LODWORD(__p[2]) = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#find-proxy,Finder advertisement.mmsNumFragmentsOOB %hu, localMmsNumFragmentsOOB %hu, sharedMmsNumFragmentsOOB %hu", __p, 0x14u);
  }

  v27 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v6];
  v28 = [v27 nbUwbAcquisitionChannelIdx];
  v29 = v28 == 0;

  if (v29)
  {
    v30 = [v6 getIRK];
    v31 = [NSNumber numberWithInt:sub_100347044(5u, 0xBu, v30)];

    [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v6 newNbUwbAcquisitionChannelIdx:v31];
  }

  v32 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v6];
  v33 = [v32 nbUwbAcquisitionChannelIdx];
  if (!v33)
  {
    __assert_rtn("[NIServerFindableDeviceProxySessionManager _advertiseAndRangeWithPeer:peerAdvertisement:]", "NIServerFindableDeviceProxySessionManager.mm", 1548, "[_peerTracking objectForKey:token].nbUwbAcquisitionChannelIdx != nil");
  }

  v34 = [(NSMutableDictionary *)self->_peerTracking objectForKeyedSubscript:v6];
  v35 = [v34 nbUwbAcquisitionChannelIdx];
  [v12 setNbUwbAcquisitionChannelIdx:v35];

  v36 = [(NSMutableDictionary *)self->_peerTracking objectForKeyedSubscript:v6];
  v37 = [v36 oobRefreshPeriodSeconds];
  [v12 setOobRefreshPeriodSeconds:v37];

  v38 = sub_100346034(@"FindingBTAdvertisingTimeoutSecondsOverride", 120.0);
  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v6 newAdvertisingState:1];
  v39 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider startAdvertisingToPeer:v6 advertisement:v12 timeout:v38];
  if (v39 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004AC880();
  }

  if (v18)
  {
    v40 = v50;
  }

  else
  {
    v40 = 0;
  }

  if (v9 & v52 && (v40 & 1) != 0)
  {
    [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v6 newRangingState:1];
    v53 = [(NSMutableDictionary *)self->_peerTracking objectForKey:v6];
    v41 = [v53 nbUwbAcquisitionChannelIdx];
    LOBYTE(__p[0]) = [v41 intValue];
    BYTE1(__p[0]) = v18;
    BYTE2(__p[0]) = v24;
    v42 = [(NSMutableDictionary *)self->_peerTracking objectForKeyedSubscript:v6];
    if ([v42 hasReceivedRangingData])
    {
      BYTE3(__p[0]) = 0;
    }

    else
    {
      v51 = [(NSMutableDictionary *)self->_peerTracking objectForKeyedSubscript:v6];
      v45 = [v51 nbUwbAcquisitionUseLowPriorityDutyCycle];
      if (v45)
      {
        v46 = [(NSMutableDictionary *)self->_peerTracking objectForKeyedSubscript:v6];
        v47 = [v46 nbUwbAcquisitionUseLowPriorityDutyCycle];
        BYTE3(__p[0]) = [v47 BOOLValue];
      }

      else
      {
        BYTE3(__p[0]) = 0;
      }
    }

    v48 = [(NIServerFindingRangingProvider *)self->_rangingProvider startRangingWithPeer:v6 technology:v54 peerAdvertisement:v7 OOBRangingParameters:__p];
    if (v48)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AC8F0();
      }

      [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v6 newRangingState:4];
    }
  }

  else
  {
    v43 = qword_1009F9820;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = sub_100346EF4(v54);
      LODWORD(__p[0]) = 136316162;
      *(__p + 4) = v44;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v9;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v52;
      v63 = 1024;
      v64 = v50;
      v65 = 1024;
      v66 = v18;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#find-proxy,Not attempting to range (selectedTech: %s). localDeviceCanRange: %d. peerDeviceCanRange: %d. peerDeviceSupportsTech: %d. sharedNBMask: %d", __p, 0x24u);
    }
  }
}

- (int)_selectedTechnology
{
  rangingProvider = self->_rangingProvider;
  if (rangingProvider)
  {
    [(NIServerFindingRangingProvider *)rangingProvider supportedTechnologies];
  }

  else
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
  }

  if (sub_100346F20(&__p, 1))
  {
    v3 = 1;
  }

  else if (+[NIPlatformInfo isInternalBuild]&& sub_100346F20(&__p, 2))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

- (id)_setTokenCacheForGroup:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_groupedFindableTokens objectForKey:v4];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [NIServerKeychainItem alloc];
    v8 = [(NSMutableDictionary *)self->_groupedFindableTokens objectForKey:v4];
    v9 = [NIDiscoveryToken serialize:v8];
    v10 = [(NIServerKeychainItem *)v7 initWithService:@"FindingTokens" account:v4 data:v9];

    v11 = +[NIServerKeychainManager sharedInstance];
    LOBYTE(v7) = [v11 writeItem:v10 synchronizable:0 systemKeychain:0];

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v17 = NSLocalizedFailureReasonErrorKey;
      v18 = @"Tokens not fully cached";
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v15];
    }
  }

  else
  {
    v13 = +[NIServerKeychainManager sharedInstance];
    v14 = [v13 deleteItemWithService:@"FindingTokens" account:v4 synchronizable:0 systemKeychain:0];

    if (v14)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v19 = NSLocalizedFailureReasonErrorKey;
    v20 = @"Tokens not fully deleted";
    v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
  }

LABEL_9:

  return v12;
}

- (id)_tokensFromAllGroups
{
  v3 = objc_opt_new();
  groupedFindableTokens = self->_groupedFindableTokens;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021B820;
  v7[3] = &unk_10099EE20;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)groupedFindableTokens enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (BOOL)_isTokenFindable:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  groupedFindableTokens = self->_groupedFindableTokens;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021B914;
  v8[3] = &unk_10099EE48;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  [(NSMutableDictionary *)groupedFindableTokens enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(groupedFindableTokens) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return groupedFindableTokens;
}

- (BOOL)_shouldHoldOSTransactionWhileFindable
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = 1;
  v3 = sub_1000086B0(1);
  if (v3 != 19)
  {
    if (v3 != 26)
    {
      sub_1004AC960();
    }

    return 0;
  }

  return v2;
}

- (void)_setUpAlgorithmsContainerForToken:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v7];

  if (!v4)
  {
    peerAlgorithmContainers = self->_peerAlgorithmContainers;
    v6 = [[_FindableDeviceAlgorithmsContainer alloc] initWithToken:v7 queue:self->_queue delegate:self];
    [(NSMutableDictionary *)peerAlgorithmContainers setObject:v6 forKey:v7];
  }
}

- (void)_tearDownAlgorithmsContainerForToken:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v7];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v7];
    v6 = [v5 updatesEngine];
    [v6 invalidate];

    [(NSMutableDictionary *)self->_peerAlgorithmContainers removeObjectForKey:v7];
  }
}

- (void)_logDeviceFindingUsageAnalyticsForToken:(id)a3
{
  v26 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo objectForKeyedSubscript:v26];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 firstDistance];
    if (v6)
    {
      v7 = [v5 sessionStartTimestamp];
      if (!v7)
      {
LABEL_11:

        goto LABEL_12;
      }

      v8 = [v5 firstDistanceTimestamp];
      if (!v8)
      {
LABEL_10:

        goto LABEL_11;
      }

      v9 = [v5 mostRecentDistanceTimestamp];

      if (v9)
      {
        v10 = [v5 firstDistance];
        [v10 doubleValue];
        v12 = v11;
        v13 = [v5 mostRecentDistanceTimestamp];
        v14 = [v5 firstDistanceTimestamp];
        [v13 timeIntervalSinceDate:v14];
        v16 = sub_1003463A0(0, v12, v15);

        if (v16)
        {
          v17 = +[NIServerUsageAnalyticsAggregator sharedInstance];
          v18 = [v5 sessionStartTimestamp];
          [v17 recordUWBUsage:5 date:v18];
        }

        v19 = [v5 firstDistance];
        [v19 doubleValue];
        v21 = v20;
        v22 = [v5 mostRecentDistanceTimestamp];
        v23 = [v5 firstDistanceTimestamp];
        [v22 timeIntervalSinceDate:v23];
        v25 = sub_1003463A0(1u, v21, v24);

        if (v25)
        {
          v6 = +[NIServerUsageAnalyticsAggregator sharedInstance];
          v7 = [v5 sessionStartTimestamp];
          [v6 recordUWBUsage:6 date:v7];
          goto LABEL_10;
        }
      }
    }
  }

LABEL_12:
  [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo removeObjectForKey:v26];
}

- (void)_nanoRegistryDevicePairingChanged_r121951698:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10021BE7C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

+ (int)_queryNumPairedFinderWatches_r121951698
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_10099EE88];

  LODWORD(v2) = [v3 count];
  return v2;
}

- (BOOL)_shouldApplyBTScanMitigation_r121951698
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"r121951698_DisableMitigation"];

  if (v4)
  {
    v5 = qword_1009F9820;
    LOBYTE(v6) = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,rdar://121951698: mitigation disabled via defaults write", &v18, 2u);
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 objectForKey:@"r121951698_TokenGroupOverride"];

    if (v8)
    {
      objc_opt_class();
      v9 = @"com.apple.findmy.findmylocated";
      if (objc_opt_isKindOfClass())
      {
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          *v19 = @"com.apple.findmy.findmylocated";
          *&v19[8] = 2112;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-proxy,rdar://121951698: override token group %@ to defaults write %@", &v18, 0x16u);
        }

        v9 = v8;
      }
    }

    else
    {
      v9 = @"com.apple.findmy.findmylocated";
    }

    v11 = [(NIServerFindableDeviceProxySessionManager *)self _tokensFromAllGroups];
    v12 = [v11 count];

    v13 = [(NSMutableDictionary *)self->_groupedFindableTokens objectForKey:v9];
    v14 = [v13 count];

    v6 = 0;
    if (v12 == 1 && v14 == 1)
    {
      v6 = self->_numPairedFinderWatches_r121951698 == 0;
    }

    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      numPairedFinderWatches_r121951698 = self->_numPairedFinderWatches_r121951698;
      v18 = 67109888;
      *v19 = v6;
      *&v19[4] = 1024;
      *&v19[6] = v12;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v14;
      HIWORD(v20) = 1024;
      v21 = numPairedFinderWatches_r121951698;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#find-proxy,rdar://121951698: should apply BT scan mitigation: %d. Total tokens: %d. Tokens from group: %d. Paired finder watches: %d", &v18, 0x1Au);
    }
  }

  return v6;
}

- (void)_kickKeepAliveForPeer:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_peerTracking objectForKeyedSubscript:v4];
  v6 = [v5 keepAliveTimeoutSeconds];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_keepAliveTimeoutTimers objectForKey:v4];
    v8 = v7;
    if (v7)
    {
      dispatch_source_cancel(v7);
      [(NSMutableDictionary *)self->_keepAliveTimeoutTimers removeObjectForKey:v4];
    }

    else
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_1003464D4("KeepAlive", 0, v4, @"Started");
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", buf, 0xCu);
      }
    }

    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);

    [v6 doubleValue];
    v13 = dispatch_time(0, (v12 * 1000000000.0));
    dispatch_source_set_timer(v11, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(buf, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10021C710;
    v18 = &unk_10098B940;
    objc_copyWeak(&v20, buf);
    v14 = v4;
    v19 = v14;
    dispatch_source_set_event_handler(v11, &v15);
    dispatch_resume(v11);
    [(NSMutableDictionary *)self->_keepAliveTimeoutTimers setObject:v11 forKey:v14, v15, v16, v17, v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (id)_enableInteractionWithPersistedTokens
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,Enable interaction with persisted tokens", buf, 2u);
  }

  if ([(NIServerFindableDeviceProxySessionManager *)self _shouldInteract])
  {
    v4 = [(NIServerFindableDeviceProxySessionManager *)self _tokensFromAllGroups];
    v5 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider setPeersEligibleForDiscovery:v4 requestScan:[(NIServerFindableDeviceProxySessionManager *)self _shouldApplyBTScanMitigation_r121951698]^ 1];
    if (v5)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004ACAA8();
      }

      v6 = v5;
    }

    v7 = [(NIServerFindingRangingProvider *)self->_rangingProvider rangingTriggerType];
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7 ? "TriggerRequired" : "NoTriggerRequired";
      sub_100004A08(buf, v9);
      v10 = v14 >= 0 ? buf : *buf;
      *v15 = 136315138;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-proxy,ranging trigger type = %s", v15, 0xCu);
      if (v14 < 0)
      {
        operator delete(*buf);
      }
    }

    if (!v7)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10021CBCC;
      v12[3] = &unk_10099EEB0;
      v12[4] = self;
      [v4 enumerateObjectsUsingBlock:v12];
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004ACA6C();
    }

    v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:0];
  }

  return v5;
}

- (void)_disableInteractionAndKeepPersistedTokens
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,Disable all interaction. Keep persisted tokens.", buf, 2u);
  }

  if ([(NIServerFindableDeviceProxySessionManager *)self _shouldInteract])
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004ACB8C();
    }
  }

  else
  {
    *buf = 0;
    v7[0] = buf;
    v7[1] = 0x3032000000;
    v7[2] = sub_1002148C0;
    v7[3] = sub_1002148D0;
    v8 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider setPeersEligibleForDiscovery:0 requestScan:0];
    if (*(v7[0] + 40) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ACB18(v7);
    }

    v4 = [(NIServerFindableDeviceProxySessionManager *)self _tokensFromAllGroups];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10021CFE4;
    v5[3] = &unk_10099EED8;
    v5[4] = self;
    v5[5] = buf;
    [v4 enumerateObjectsUsingBlock:v5];

    _Block_object_dispose(buf, 8);
  }
}

- (void)didLosePeer:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1003464D4("LostPeer", 0, v4, 0);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &v8, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider stopAdvertisingToPeer:v4];
  if (v7 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004AC98C();
  }

  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v4 newAdvertisingState:2];
  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v4 newDiscoveryState:4];
}

- (void)didStopAdvertisingToPeer:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1003464D4("NotifyStopAdv", 0, v4, 0);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v4 newAdvertisingState:2];
}

- (void)didUpdateAdvertisement:(id)a3 toSendOOBToPeer:(id)a4
{
  v16 = a3;
  v17 = a4;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSString stringWithFormat:@"SelfAdv: %@", v16];
    v8 = sub_1003464D4("UpdatedAdv", 0, v17, v7);
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v9 = [v16 byteRepresentation];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        if (v14)
        {
          v15 = [*(*(&v21 + 1) + 8 * v13) getQueueForInputingData];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10021DAB0;
          block[3] = &unk_10099BB28;
          block[4] = v14;
          v19 = v9;
          v20 = v17;
          dispatch_async(v15, block);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)bluetoothDiscoveryFinishedActivating
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1003464D4("DiscActivated", 0, 0, 0);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &v5, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
}

- (void)bluetoothDiscoveryBecameUnavailable
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSString stringWithFormat:@"Previous: %d", self->_bluetoothDiscoveryAvailable];
    v5 = sub_1003464D4("DiscUnavailable", 0, 0, v4);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (self->_bluetoothDiscoveryAvailable)
  {
    self->_bluetoothDiscoveryAvailable = 0;
    v6 = [NSString stringWithFormat:@"BT available: %d", 0];
    sub_1003466C0(v6, &self->_miscEventLogBuffer.__map_.__first_);

    if (![(NIServerFindableDeviceProxySessionManager *)self _shouldInteract])
    {
      [(NIServerFindableDeviceProxySessionManager *)self _disableInteractionAndKeepPersistedTokens];
    }
  }
}

- (void)bluetoothDiscoveryBecameAvailable
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSString stringWithFormat:@"Previous: %d", self->_bluetoothDiscoveryAvailable];
    v5 = sub_1003464D4("DiscAvailable", 0, 0, v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!self->_bluetoothDiscoveryAvailable)
  {
    self->_bluetoothDiscoveryAvailable = 1;
    v6 = [NSString stringWithFormat:@"BT available: %d", 1];
    sub_1003466C0(v6, &self->_miscEventLogBuffer.__map_.__first_);

    if ([(NIServerFindableDeviceProxySessionManager *)self _shouldInteract])
    {
      v7 = [(NIServerFindableDeviceProxySessionManager *)self _enableInteractionWithPersistedTokens];
    }
  }
}

- (void)didRangeWithPeer:(id)a3 newSolution:(const void *)a4
{
  v6 = a3;
  if (*(a4 + 8) != 1)
  {
    v25 = "solution.type == rose::RoseSolutionType::RoseRawOnly";
    v26 = 2158;
    goto LABEL_15;
  }

  if ((*(a4 + 600) & 1) == 0)
  {
    v25 = "solution.raw_rose_measurement.has_value()";
    v26 = 2159;
LABEL_15:
    __assert_rtn("[NIServerFindableDeviceProxySessionManager didRangeWithPeer:newSolution:]", "NIServerFindableDeviceProxySessionManager.mm", v26, v25);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (v6)
  {
    if ((*(a4 + 600) & 1) == 0)
    {
      sub_1000195BC();
    }

    v7 = *(a4 + 44);
    v8 = +[NSDate now];
    v9 = sub_1003465F0(v8);
    v10 = [v6 descriptionInternal];
    v11 = [NSString stringWithFormat:@"%@: Peer: %@. Range: %0.2f m", v9, v10, *&v7];
    lastRangingMeasurement = self->_lastRangingMeasurement;
    self->_lastRangingMeasurement = v11;

    [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v6 newRangingState:3];
    [(NIServerFindableDeviceProxySessionManager *)self _nearbydLogRange:v6 token:v7];
    v13 = *(a4 + 5);
    v14 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
    [v14 setCurrentSolutionMacAddress:v13];

    v15 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
    v16 = [v15 updatesEngine];
    [v16 acceptRoseSolution:a4];

    v17 = [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo objectForKeyedSubscript:v6];

    if (v17)
    {
      v18 = +[NSDate now];
      v19 = [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo objectForKeyedSubscript:v6];
      v20 = [v19 firstDistance];

      if (!v20)
      {
        v21 = [NSNumber numberWithDouble:v7];
        v22 = [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo objectForKeyedSubscript:v6];
        [v22 setFirstDistance:v21];

        v23 = [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo objectForKeyedSubscript:v6];
        [v23 setFirstDistanceTimestamp:v18];
      }

      v24 = [(NSMutableDictionary *)self->_deviceFindingUsageAnalyticsInfo objectForKeyedSubscript:v6];
      [v24 setMostRecentDistanceTimestamp:v18];
    }

    [(NIServerFindableDeviceProxySessionManager *)self _kickKeepAliveForPeer:v6];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACCB8();
  }
}

- (void)didAttemptRangingWithPeer:(id)a3 unsuccessfulSolution:(const void *)a4
{
  v6 = a3;
  if ((*(a4 + 600) & 1) == 0)
  {
    __assert_rtn("[NIServerFindableDeviceProxySessionManager didAttemptRangingWithPeer:unsuccessfulSolution:]", "NIServerFindableDeviceProxySessionManager.mm", 2198, "solution.raw_rose_measurement.has_value()");
  }

  dispatch_assert_queue_V2(self->_queue);
  if (v6)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_1003464D4("RangeFailure", 0, v6, 0);
      sub_1004ACCF4(v8, buf, v7);
    }

    if (*(a4 + 600) == 1 && *(a4 + 72) == 96)
    {
      v9 = +[NSDate now];
      v10 = sub_1003465F0(v9);
      v11 = [v6 descriptionInternal];
      v12 = [NSString stringWithFormat:@"%@: Peer: %@", v10, v11];
      lastRangingPoll = self->_lastRangingPoll;
      self->_lastRangingPoll = v12;

      [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v6 newRangingState:2];
      [(NIServerFindableDeviceProxySessionManager *)self _kickKeepAliveForPeer:v6];
    }

    v14 = *(a4 + 5);
    v15 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
    [v15 setCurrentSolutionMacAddress:v14];

    v16 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v6];
    v17 = [v16 updatesEngine];
    [v17 acceptUnsuccessfulRoseSolution:a4];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACD4C();
  }
}

- (void)_nearbydLogRange:(double)a3 token:(id)a4
{
  v6 = a4;
  v7 = sub_100005288();
  v8 = [NSString stringWithFormat:@"Range: %0.2f m", *&a3];
  v9 = sub_1003464D4("RangeSuccess", 0, v6, v8);

  v10 = qword_1009F9820;
  if (v7 - self->_lastLogMachContTime <= 5.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004ACD88();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", buf, 0xCu);
    }

    self->_lastLogMachContTime = v7;
  }
}

- (void)didStopRangingWithPeer:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1003464D4("NotifyStopRange", 0, v4, 0);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NIServerFindableDeviceProxySessionManager *)self _handleRangingTerminatedCallbackForPeer:v4];
}

- (void)didRangingAuthorizationFailForPeer:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1003464D4("NotifyAuthFail", 0, v4, 0);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NIServerFindableDeviceProxySessionManager *)self _handleRangingTerminatedCallbackForPeer:v4];
}

- (void)_handleRangingTerminatedCallbackForPeer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider stopAdvertisingToPeer:v4];
    if (v5 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC98C();
    }

    [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v4 newAdvertisingState:2];
    v6 = [(NIServerFindingRangingProvider *)self->_rangingProvider stopRangingWithPeer:v4];
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC9FC();
    }

    [(NIServerFindableDeviceProxySessionManager *)self _updatePeerTrackingForToken:v4 newRangingState:4];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ACDF8();
  }
}

- (void)didReceiveRangingDataForPeer:(id)a3 algorithmAidingData:(const void *)a4 signallingData:(const void *)a5
{
  v10 = a3;
  if (*(a5 + 7) == 1)
  {
    [(NIServerFindableDeviceProxySessionManager *)self _updateReceivedSignalFlags:*(a5 + 6) toPeerTrackingForToken:v10];
  }

  v7 = *(a5 + 8);
  v8 = [(NSMutableDictionary *)self->_peerAlgorithmContainers objectForKeyedSubscript:v10];
  v9 = [v8 updatesEngine];
  [v9 acceptPeerDeviceType:v7];
}

- (void)rangingBecameUnavailable
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSString stringWithFormat:@"Previous: %d", self->_rangingAvailable];
    v5 = sub_1003464D4("RangeUnavailable", 0, 0, v4);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (self->_rangingAvailable)
  {
    self->_rangingAvailable = 0;
    v6 = [NSString stringWithFormat:@"Ranging available: %d", 0];
    sub_1003466C0(v6, &self->_miscEventLogBuffer.__map_.__first_);

    if (![(NIServerFindableDeviceProxySessionManager *)self _shouldInteract])
    {
      [(NIServerFindableDeviceProxySessionManager *)self _disableInteractionAndKeepPersistedTokens];
    }
  }
}

- (void)rangingBecameAvailable
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSString stringWithFormat:@"Previous: %d", self->_rangingAvailable];
    v5 = sub_1003464D4("RangeAvailable", 0, 0, v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-proxy,%@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!self->_rangingAvailable)
  {
    self->_rangingAvailable = 1;
    v6 = [NSString stringWithFormat:@"Ranging available: %d", 1];
    sub_1003466C0(v6, &self->_miscEventLogBuffer.__map_.__first_);

    if ([(NIServerFindableDeviceProxySessionManager *)self _shouldInteract])
    {
      v7 = [(NIServerFindableDeviceProxySessionManager *)self _enableInteractionWithPersistedTokens];
    }
  }
}

- (void)_startAltitudeUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10021EE18;
  v7 = &unk_10099EF20;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMAltimeter *)self->_altimeterManager startRelativeAltitudeUpdatesToQueue:self->_deviceOperationQueue withHandler:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_startPedometerDataUpdates
{
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10021F128;
  v9 = &unk_10099EF68;
  objc_copyWeak(&v10, &location);
  v3 = objc_retainBlock(&v6);
  pedometerManager = self->_pedometerManager;
  v5 = [NSDate now:v6];
  [(CMPedometer *)pedometerManager startPedometerUpdatesFromDate:v5 withHandler:v3];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_startPedometerEventUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10021F5B4;
  v7 = &unk_10099EFB0;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMPedometer *)self->_pedometerManager startPedometerEventUpdatesWithHandler:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_startMotionActivityUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10021F8FC;
  v7 = &unk_10099EFF8;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMMotionActivityManager *)self->_motionActivityManager startActivityUpdatesToQueue:self->_deviceOperationQueue withHandler:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_startDevicePDRUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10021FBFC;
  v7 = &unk_10099F040;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMOdometryManager *)self->_pdrManager setOdometryUpdateInterval:0.1, v4, v5, v6, v7];
  [(CMOdometryManager *)self->_pdrManager startOdometryUpdatesToQueue:self->_deviceOperationQueue withHandler:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_startDeviceMotionUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1002202EC;
  v7 = &unk_10099F088;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:0.01, v4, v5, v6, v7];
  [(CMMotionManager *)self->_motionManager startDeviceMotionUpdatesToQueue:self->_deviceOperationQueue withHandler:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)updatesEngine:(id)a3 didUpdateFindeeData:(const void *)a4 forToken:(id)a5
{
  v7 = a5;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AD278();
  }

  [(NIServerFindingRangingProvider *)self->_rangingProvider setAlgorithmAidingData:a4 forPeer:v7];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v5)
  {
    v6 = [v5 lastObject];
    v7 = v6;
    if (v6)
    {
      [v6 coordinate];
      v35 = v8;
      [v7 coordinate];
      v34 = v9;
      v10 = [v7 timestamp];
      [v10 timeIntervalSinceReferenceDate];
      v33 = v11;
      [v7 course];
      v13 = v12;
      [v7 courseAccuracy];
      v15 = v14;
      [v7 speed];
      v17 = v16;
      [v7 speedAccuracy];
      v19 = v18;
      [v7 horizontalAccuracy];
      v21 = v20;
      [v7 verticalAccuracy];
      v23 = v22;
      [v7 altitude];
      v25 = v24;
      [v7 ellipsoidalAltitude];
      v27 = v26;
      v28 = [v7 floor];
      v29 = [v28 level];
      v30 = [v7 type];
      v31 = [v7 signalEnvironmentType];

      peerAlgorithmContainers = self->_peerAlgorithmContainers;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1002209CC;
      v36[3] = &unk_10099F0A8;
      v36[4] = v35;
      v36[5] = v34;
      v36[6] = v33;
      v36[7] = v13;
      v36[8] = v15;
      v36[9] = v17;
      v36[10] = v19;
      v36[11] = v21;
      v36[12] = v23;
      v36[13] = v25;
      v36[14] = v27;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      [(NSMutableDictionary *)peerAlgorithmContainers enumerateKeysAndObjectsUsingBlock:v36];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AD2B4();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AD2F0();
  }
}

- (void)DataCallback:(id)a3
{
  v4 = a3;
  peerAlgorithmContainers = self->_peerAlgorithmContainers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100220AE4;
  v7[3] = &unk_10099F0D0;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)peerAlgorithmContainers enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [v5 code];
  v7 = qword_1009F9820;
  if (v6)
  {
    if (v6 == 1)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004AD32C();
      }

      [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AD368();
      }

      [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
      [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-proxy,location is unknown", v8, 2u);
  }
}

- (void)processVisionInput:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  peerAlgorithmContainers = self->_peerAlgorithmContainers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100220D4C;
  v7[3] = &unk_10099F0D0;
  v6 = v4;
  v8 = v6;
  [(NSMutableDictionary *)peerAlgorithmContainers enumerateKeysAndObjectsUsingBlock:v7];
}

- (id).cxx_construct
{
  sub_1002FE758(&self->_machTimeConverter, a2);
  *&self->_miscEventLogBuffer.__map_.__end_ = 0u;
  *&self->_miscEventLogBuffer.__start_ = 0u;
  *&self->_sessionEventLogBuffer.__start_ = 0u;
  *&self->_miscEventLogBuffer.__map_.__first_ = 0u;
  *&self->_sessionEventLogBuffer.__map_.__first_ = 0u;
  *&self->_sessionEventLogBuffer.__map_.__end_ = 0u;
  *&self->_tokenEventLogBuffer.__map_.__end_ = 0u;
  *&self->_tokenEventLogBuffer.__start_ = 0u;
  *&self->_tokenEventLogBuffer.__map_.__first_ = 0u;
  return self;
}

@end
@interface TVRDServer
- (BOOL)_hasNowPlayingControlsForButtons:(id)a3;
- (BOOL)clientConnection:(id)a3 isConnectedToDeviceWithIdentifier:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TVRDServer)init;
- (TVRXDevice)lastConnectedDevice;
- (id)_cachedDeviceForIdentifier:(id)a3;
- (id)_deviceForIdentifierInDeviceQuery:(id)a3;
- (id)_deviceForKeyboardController:(id)a3;
- (id)_findCachedDeviceForIdentifier:(id)a3;
- (id)_interestedClientProcessConnectionsForDevice:(id)a3;
- (id)countedSetDescriptionFor:(id)a3;
- (void)_activateIRSessionManager;
- (void)_becameInterestedInDeviceWithIdentifier:(id)a3;
- (void)_connectToDeviceIfNeeded:(id)a3;
- (void)_informClientCouldNotLocateDeviceWithIdentifier:(id)a3;
- (void)_invalidateIRSessionManager;
- (void)_lostInterestInDeviceWithIdentifier:(id)a3;
- (void)_publishUserPresenceForDevice:(id)a3;
- (void)_startGeneralDeviceQuery;
- (void)_stopGeneralDeviceQuery;
- (void)_switchToCurrentUserProfileForDevice:(id)a3;
- (void)_updateClientConnectionsForDevice:(id)a3 oldIdentifier:(id)a4;
- (void)_updateDevicesWithRecommendations:(id)a3;
- (void)clientConnection:(id)a3 addItemForDeviceWithIdentifier:(id)a4 mediaIdentifier:(id)a5 completion:(id)a6;
- (void)clientConnection:(id)a3 addedInterestedDeviceIdentifier:(id)a4 connectionContext:(int64_t)a5;
- (void)clientConnection:(id)a3 cancelledAuthChallengeForDeviceIdentifier:(id)a4;
- (void)clientConnection:(id)a3 fetchLaunchableAppsForDeviceWithIdentifier:(id)a4 completion:(id)a5;
- (void)clientConnection:(id)a3 fetchUpNextInfoForDeviceWithIdentifier:(id)a4 paginationToken:(id)a5 completion:(id)a6;
- (void)clientConnection:(id)a3 launchAppForDeviceWithIdentifier:(id)a4 bundleID:(id)a5 completion:(id)a6;
- (void)clientConnection:(id)a3 markAsWatchedForDeviceWithIdentifier:(id)a4 mediaIdentifier:(id)a5 completion:(id)a6;
- (void)clientConnection:(id)a3 playItem:(id)a4 deviceIdentifier:(id)a5 completion:(id)a6;
- (void)clientConnection:(id)a3 receivedAuthChallengeLocallyEnteredCode:(id)a4 forDeviceIdentifier:(id)a5;
- (void)clientConnection:(id)a3 reiteratedInterestInDeviceIdentifier:(id)a4 connectionContext:(int64_t)a5;
- (void)clientConnection:(id)a3 removeItemForDeviceWithIdentifier:(id)a4 mediaIdentifier:(id)a5 completion:(id)a6;
- (void)clientConnection:(id)a3 removedInterestedDeviceIdentifier:(id)a4;
- (void)clientConnection:(id)a3 requestsEnablingFindingSession:(BOOL)a4 forDeviceWithIdentifier:(id)a5;
- (void)clientConnection:(id)a3 requestsEnablingRemoteOnLockscreen:(BOOL)a4 forDeviceWithIdentifier:(id)a5;
- (void)clientConnection:(id)a3 requestsSendingButtonEvent:(id)a4 toDeviceIdentifier:(id)a5;
- (void)clientConnection:(id)a3 requestsSendingEvent:(id)a4 toDeviceWithIdentifier:(id)a5 options:(id)a6 response:(id)a7;
- (void)clientConnection:(id)a3 requestsSendingGameControllerEvent:(id)a4 toDeviceIdentifier:(id)a5;
- (void)clientConnection:(id)a3 requestsSendingInputDataPayload:(id)a4 toDeviceIdentifier:(id)a5;
- (void)clientConnection:(id)a3 requestsSendingInputReturnKeyToDeviceIdentifier:(id)a4;
- (void)clientConnection:(id)a3 requestsSendingInputText:(id)a4 toDeviceIdentifier:(id)a5;
- (void)clientConnection:(id)a3 requestsSendingTouchEvent:(id)a4 toDeviceIdentifier:(id)a5;
- (void)clientConnection:(id)a3 requestsSuggestedDeviceWithResponse:(id)a4;
- (void)clientConnectionRequestsEndingDeviceQuery:(id)a3;
- (void)clientConnectionRequestsStartingDeviceQuery:(id)a3 withResponse:(id)a4;
- (void)clientConnectionSeveredConnection:(id)a3;
- (void)dealloc;
- (void)device:(id)a3 didUpdateNameFrom:(id)a4;
- (void)device:(id)a3 disconnectedForReason:(int64_t)a4 error:(id)a5;
- (void)device:(id)a3 encounteredAuthenticationChallenge:(id)a4;
- (void)device:(id)a3 supportsFindMyRemote:(BOOL)a4;
- (void)device:(id)a3 updatedAttentionState:(int64_t)a4;
- (void)device:(id)a3 updatedNowPlayingInfo:(id)a4;
- (void)device:(id)a3 updatedPairedRemoteInfo:(id)a4;
- (void)device:(id)a3 updatedSiriRemoteFindingState:(int64_t)a4;
- (void)device:(id)a3 updatedSupportedButtons:(id)a4;
- (void)deviceBeganConnecting:(id)a3;
- (void)deviceConnected:(id)a3;
- (void)devicePoweredOff:(id)a3;
- (void)deviceQueryDidUpdateDevices:(id)a3;
- (void)keyboardController:(id)a3 beganTextEditingWithAttributes:(id)a4;
- (void)keyboardController:(id)a3 didUpdateAttributes:(id)a4;
- (void)keyboardController:(id)a3 didUpdateText:(id)a4;
- (void)keyboardControllerEndedTextEditing:(id)a3;
@end

@implementation TVRDServer

- (TVRDServer)init
{
  v31.receiver = self;
  v31.super_class = TVRDServer;
  v2 = [(TVRDServer *)&v31 init];
  if (v2)
  {
    v3 = +[TVRXManagedConfigManager sharedInstance];
    [v3 refreshState];

    v4 = objc_alloc_init(NSMutableDictionary);
    authChallengesByID = v2->_authChallengesByID;
    v2->_authChallengesByID = v4;

    v6 = objc_alloc_init(NSMutableSet);
    cachedDevices = v2->_cachedDevices;
    v2->_cachedDevices = v6;

    v8 = objc_alloc_init(NSMutableSet);
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    connectionContextByID = v2->_connectionContextByID;
    v2->_connectionContextByID = v10;

    v12 = objc_alloc_init(NSCountedSet);
    deviceIdentifiers = v2->_deviceIdentifiers;
    v2->_deviceIdentifiers = v12;

    v14 = objc_alloc_init(NSMutableSet);
    deviceQueryObservers = v2->_deviceQueryObservers;
    v2->_deviceQueryObservers = v14;

    v16 = objc_alloc_init(TVRXDeviceLocator);
    deviceSearch = v2->_deviceSearch;
    v2->_deviceSearch = v16;

    v18 = objc_alloc_init(NSMutableSet);
    identifiersRequestingConnection = v2->_identifiersRequestingConnection;
    v2->_identifiersRequestingConnection = v18;

    v20 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = v2->_systemMonitor;
    v2->_systemMonitor = v20;

    objc_initWeak(&location, v2);
    v22 = v2->_systemMonitor;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __18__TVRDServer_init__block_invoke;
    v28[3] = &unk_100020610;
    objc_copyWeak(&v29, &location);
    [(CUSystemMonitor *)v22 setScreenLockedChangedHandler:v28];
    [(CUSystemMonitor *)v2->_systemMonitor activateWithCompletion:&__block_literal_global_4];
    v23 = v2->_systemMonitor;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __18__TVRDServer_init__block_invoke_14;
    v26[3] = &unk_100020610;
    objc_copyWeak(&v27, &location);
    [(CUSystemMonitor *)v23 setFirstUnlockHandler:v26];
    objc_copyWeak(&v25, &location);
    _TVRCAddStateHandlerWithName();
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __18__TVRDServer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained systemMonitor];
    v4 = [v3 screenLocked];

    v5 = _TVRDXPCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"unlocked";
      if (v4)
      {
        v6 = @"locked";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Screen is now %@", &v7, 0xCu);
    }
  }
}

void __18__TVRDServer_init__block_invoke_13(id a1)
{
  v1 = _TVRDXPCLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Screen lock monitor activated", v2, 2u);
  }
}

void __18__TVRDServer_init__block_invoke_14(uint64_t a1)
{
  v2 = _TVRDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "First unlock. Activating IRSessionManager", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained systemMonitor];
  v5 = [v4 firstUnlocked];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _activateIRSessionManager];
  }
}

id __18__TVRDServer_init__block_invoke_16(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSMutableDictionary dictionary];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = WeakRetained[4];
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [v10 stateDictionary];
          v12 = [v10 identifier];
          [v4 setObject:v11 forKeyedSubscript:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v7);
    }

    v13 = [WeakRetained[7] copy];
    v14 = [WeakRetained[2] copy];
    [v2 setObject:v4 forKeyedSubscript:@"cachedDevices"];
    v27 = v13;
    v15 = [v13 description];
    [v2 setObject:v15 forKeyedSubscript:@"deviceQueryObservers"];

    v26 = v14;
    v16 = [v14 description];
    [v2 setObject:v16 forKeyedSubscript:@"clientConnections"];

    v17 = +[NSMutableDictionary dictionary];
    v18 = +[NSMutableArray array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [WeakRetained[10] devices];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v28 + 1) + 8 * j) stateDictionary];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v21);
    }

    [v17 setObject:v18 forKeyedSubscript:@"devices"];
    [v2 setObject:v17 forKeyedSubscript:@"deviceQueryResults"];
  }

  return v2;
}

- (void)dealloc
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocating TVRDServer", buf, 2u);
  }

  v4 = [(TVRDServer *)self systemMonitor];
  [v4 invalidate];

  [(TVRDServer *)self _invalidateIRSessionManager];
  v5.receiver = self;
  v5.super_class = TVRDServer;
  [(TVRDServer *)&v5 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = _TVRDXPCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection: %{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __49__TVRDServer_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_100020820;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v9);

  return 1;
}

void __49__TVRDServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [[TVRDClientProcessConnection alloc] initWithXPCConnection:*(a1 + 32) delegate:*(a1 + 40)];
  [*(*(a1 + 40) + 16) addObject:v2];
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 40) + 16);
    v5 = 138543618;
    v6 = v2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Added new %{public}@. Total connections: %@", &v5, 0x16u);
  }
}

- (void)clientConnection:(id)a3 addedInterestedDeviceIdentifier:(id)a4 connectionContext:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _TVRDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ requested connection to %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke;
  block[3] = &unk_100020890;
  block[4] = self;
  v13 = v9;
  v14 = a5;
  v11 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke(uint64_t a1)
{
  v2 = [NSNumber numberWithInteger:*(a1 + 48)];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) connectionContextByID];
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  [v4 setObject:v2 forKeyedSubscript:v6];

  v7 = [*(*v3 + 3) countForObject:*v5];
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*v3 + 3);
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[TVRDServer] deviceIdentifiers: %{public}@", &v14, 0xCu);
  }

  if (v7)
  {
    if (v7 >= 1)
    {
      v10 = [*v3 _cachedDeviceForIdentifier:*v5];
      v11 = _TVRDXPCLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*v3 + 4);
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[TVRDServer] cachedDevices: %{public}@", &v14, 0xCu);
      }

      if (v10)
      {
        [*v3 _connectToDeviceIfNeeded:v10];
      }

      else
      {
        v13 = _TVRDXPCLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke_cold_1(v5, v3, v13);
        }

        [*v3 _informClientCouldNotLocateDeviceWithIdentifier:*v5];
      }
    }
  }

  else
  {
    [*v3 _becameInterestedInDeviceWithIdentifier:*v5];
  }
}

- (void)clientConnection:(id)a3 reiteratedInterestInDeviceIdentifier:(id)a4 connectionContext:(int64_t)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __86__TVRDServer_clientConnection_reiteratedInterestInDeviceIdentifier_connectionContext___block_invoke;
  v11[3] = &unk_1000208B8;
  v11[4] = self;
  v12 = a4;
  v13 = v8;
  v14 = a5;
  v9 = v8;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

void __86__TVRDServer_clientConnection_reiteratedInterestInDeviceIdentifier_connectionContext___block_invoke(uint64_t a1)
{
  v2 = [NSNumber numberWithInteger:*(a1 + 56)];
  v3 = [*(a1 + 32) connectionContextByID];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    [v5 _connectToDeviceIfNeeded:v4];
  }

  else
  {
    if ([v5[3] countForObject:*(a1 + 40)] >= 1)
    {
      v6 = 0;
      do
      {
        [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
        ++v6;
      }

      while (v6 < [*(*(a1 + 32) + 24) countForObject:*(a1 + 40)]);
    }

    [*(a1 + 32) clientConnection:*(a1 + 48) addedInterestedDeviceIdentifier:*(a1 + 40) connectionContext:*(a1 + 56)];
  }
}

- (void)clientConnection:(id)a3 removedInterestedDeviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ requested disconnection to %{public}@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __65__TVRDServer_clientConnection_removedInterestedDeviceIdentifier___block_invoke;
  v10[3] = &unk_100020820;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v10);
}

void __65__TVRDServer_clientConnection_removedInterestedDeviceIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) countForObject:*(a1 + 40)];
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 24);
    v5 = *(*(a1 + 32) + 32);
    *buf = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cachedDevices: %{public}@ _deviceIdentifiers: %{public}@", buf, 0x16u);
  }

  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v2 allIdentifiers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(a1 + 32) + 24) removeObject:*(*(&v11 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  }

  if (![*(*(a1 + 32) + 24) countForObject:*(a1 + 40)])
  {
    [*(a1 + 32) _lostInterestInDeviceWithIdentifier:*(a1 + 40)];
  }
}

- (void)clientConnection:(id)a3 receivedAuthChallengeLocallyEnteredCode:(id)a4 forDeviceIdentifier:(id)a5
{
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __91__TVRDServer_clientConnection_receivedAuthChallengeLocallyEnteredCode_forDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  v11 = a5;
  v12 = v7;
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void __91__TVRDServer_clientConnection_receivedAuthChallengeLocallyEnteredCode_forDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 48);
    v5 = [v2 identifier];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      [v6 userEnteredCodeLocally:*(a1 + 48)];
      v7 = *(*(a1 + 32) + 48);
      v8 = [v3 identifier];
      [v7 removeObjectForKey:v8];
    }

    else
    {
      v8 = _TVRDXPCLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client attempted to fulfill an auth challenge that appears to no longer exist, for device with identifier %@. Ignoring.", &v11, 0xCu);
      }
    }
  }

  else
  {
    v6 = _TVRDXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client attempted to fulfill an auth challenge for a device that appears to no longer exist, device identifier %@. Ignoring.", &v11, 0xCu);
    }
  }
}

- (void)clientConnection:(id)a3 cancelledAuthChallengeForDeviceIdentifier:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __73__TVRDServer_clientConnection_cancelledAuthChallengeForDeviceIdentifier___block_invoke;
  v5[3] = &unk_100020820;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

void __73__TVRDServer_clientConnection_cancelledAuthChallengeForDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 48);
    v5 = [v2 identifier];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      [v6 cancel];
      v7 = *(*(a1 + 32) + 48);
      v8 = [v3 identifier];
      [v7 removeObjectForKey:v8];
    }

    else
    {
      v8 = _TVRDXPCLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client attempted to cancel an auth challenge that appears to no longer exist, for device with identifier %@. Ignoring.", &v11, 0xCu);
      }
    }
  }

  else
  {
    v6 = _TVRDXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client attempted to fulfill an auth challenge for a device that appears to no longer exist, device identifier %@. Ignoring.", &v11, 0xCu);
    }
  }
}

- (void)clientConnection:(id)a3 requestsSendingButtonEvent:(id)a4 toDeviceIdentifier:(id)a5
{
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  v11 = a5;
  v12 = v7;
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 sendButtonEvent:*(a1 + 48)];
    v5 = [*(a1 + 48) button];
    v6 = [v5 buttonType];

    if (v6 <= 0x1E && ((1 << v6) & 0x4000000C) != 0)
    {
      [*v2 _publishUserPresenceForDevice:v4];
      [*v2 _switchToCurrentUserProfileForDevice:v4];
    }

    if ([*(a1 + 48) eventType] != 1)
    {
      v8 = [*v2 irSessionManager];
      [v8 didInteractWithDevice:v4];
    }
  }

  else
  {
    v9 = _TVRDXPCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke_cold_1((v2 + 8), v2);
    }
  }
}

- (void)clientConnection:(id)a3 requestsSendingGameControllerEvent:(id)a4 toDeviceIdentifier:(id)a5
{
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__TVRDServer_clientConnection_requestsSendingGameControllerEvent_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  v11 = a5;
  v12 = v7;
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void __85__TVRDServer_clientConnection_requestsSendingGameControllerEvent_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    [v2 sendGameControllerEvent:*(a1 + 48)];
    v3 = [*(a1 + 32) irSessionManager];
    [v3 didInteractWithDevice:v4];

    v2 = v4;
  }
}

- (void)clientConnection:(id)a3 requestsSendingTouchEvent:(id)a4 toDeviceIdentifier:(id)a5
{
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  v11 = a5;
  v12 = v7;
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 sendTouchEvent:*(a1 + 48)];
    if ([*(a1 + 48) phase] == 1)
    {
      v5 = [*v2 irSessionManager];
      [v5 didInteractWithDevice:v4];
    }
  }

  else
  {
    v6 = _TVRDXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke_cold_1((v2 + 8), v2);
    }
  }
}

- (void)clientConnection:(id)a3 fetchUpNextInfoForDeviceWithIdentifier:(id)a4 paginationToken:(id)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __97__TVRDServer_clientConnection_fetchUpNextInfoForDeviceWithIdentifier_paginationToken_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __97__TVRDServer_clientConnection_fetchUpNextInfoForDeviceWithIdentifier_paginationToken_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 fetchUpNextInfoWithPaginationToken:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)a3 addItemForDeviceWithIdentifier:(id)a4 mediaIdentifier:(id)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __89__TVRDServer_clientConnection_addItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __89__TVRDServer_clientConnection_addItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 addItemWithMediaIdentifier:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)a3 markAsWatchedForDeviceWithIdentifier:(id)a4 mediaIdentifier:(id)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __95__TVRDServer_clientConnection_markAsWatchedForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __95__TVRDServer_clientConnection_markAsWatchedForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 markAsWatchedWithMediaIdentifier:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)a3 removeItemForDeviceWithIdentifier:(id)a4 mediaIdentifier:(id)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __92__TVRDServer_clientConnection_removeItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __92__TVRDServer_clientConnection_removeItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 removeItemWithMediaIdentifier:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)a3 playItem:(id)a4 deviceIdentifier:(id)a5 completion:(id)a6
{
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __68__TVRDServer_clientConnection_playItem_deviceIdentifier_completion___block_invoke;
  v13[3] = &unk_100020908;
  v13[4] = self;
  v14 = a5;
  v15 = v9;
  v16 = a6;
  v10 = v16;
  v11 = v9;
  v12 = v14;
  dispatch_async(&_dispatch_main_q, v13);
}

uint64_t __68__TVRDServer_clientConnection_playItem_deviceIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    if (objc_opt_respondsToSelector())
    {
      v3 = [[TVRCButton alloc] _initWithButtonType:21];
      v4 = [TVRCButtonEvent buttonEventForButton:v3 eventType:2];
      [v6 sendButtonEvent:v4];

      [v6 playItem:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x2();
}

- (void)clientConnection:(id)a3 fetchLaunchableAppsForDeviceWithIdentifier:(id)a4 completion:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__TVRDServer_clientConnection_fetchLaunchableAppsForDeviceWithIdentifier_completion___block_invoke;
  block[3] = &unk_100020930;
  block[4] = self;
  v9 = a4;
  v10 = a5;
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t __85__TVRDServer_clientConnection_fetchLaunchableAppsForDeviceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 fetchLaunchableAppsWithCompletion:*(a1 + 48)];
    }
  }

  return _objc_release_x3();
}

- (void)clientConnection:(id)a3 launchAppForDeviceWithIdentifier:(id)a4 bundleID:(id)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __84__TVRDServer_clientConnection_launchAppForDeviceWithIdentifier_bundleID_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __84__TVRDServer_clientConnection_launchAppForDeviceWithIdentifier_bundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    if (objc_opt_respondsToSelector())
    {
      v3 = [[TVRCButton alloc] _initWithButtonType:21];
      v4 = [TVRCButtonEvent buttonEventForButton:v3 eventType:2];
      [v6 sendButtonEvent:v4];

      [v6 launchAppWithBundleID:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x2();
}

- (void)clientConnection:(id)a3 requestsSendingInputText:(id)a4 toDeviceIdentifier:(id)a5
{
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__TVRDServer_clientConnection_requestsSendingInputText_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  v11 = a5;
  v12 = v7;
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

void __75__TVRDServer_clientConnection_requestsSendingInputText_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 keyboardController];
    [v3 setText:*(a1 + 48)];

    v2 = v4;
  }
}

- (void)clientConnection:(id)a3 requestsSendingInputReturnKeyToDeviceIdentifier:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __79__TVRDServer_clientConnection_requestsSendingInputReturnKeyToDeviceIdentifier___block_invoke;
  v5[3] = &unk_100020820;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

void __79__TVRDServer_clientConnection_requestsSendingInputReturnKeyToDeviceIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v1)
  {
    v3 = v1;
    v2 = [v1 keyboardController];
    [v2 sendReturnKey];

    v1 = v3;
  }
}

- (void)clientConnection:(id)a3 requestsSendingInputDataPayload:(id)a4 toDeviceIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __82__TVRDServer_clientConnection_requestsSendingInputDataPayload_toDeviceIdentifier___block_invoke;
  v13[3] = &unk_100020958;
  v13[4] = self;
  v14 = a5;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = v14;
  dispatch_async(&_dispatch_main_q, v13);
}

void __82__TVRDServer_clientConnection_requestsSendingInputDataPayload_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v2;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending inputDataPayload: %{public}@ to device: %{public}@ from: %{public}@", &v7, 0x20u);
  }

  if (v2)
  {
    v6 = [v2 keyboardController];
    [v6 sendTextActionPayload:*(a1 + 48)];
  }
}

- (void)clientConnectionRequestsStartingDeviceQuery:(id)a3 withResponse:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __71__TVRDServer_clientConnectionRequestsStartingDeviceQuery_withResponse___block_invoke;
  block[3] = &unk_100020930;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void __71__TVRDServer_clientConnectionRequestsStartingDeviceQuery_withResponse___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested starting general device query", &v8, 0xCu);
  }

  [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }

  if ([*(*(a1 + 40) + 56) count] == 1)
  {
    [*(a1 + 40) _startGeneralDeviceQuery];
  }

  else
  {
    v5 = [*(*(a1 + 40) + 80) devices];
    v6 = [TVRCDeviceState setOfStatesFromDevices:v5];

    v7 = [*(a1 + 32) remoteObjectProxy];
    [v7 deviceQueryUpdatedDiscoveredDevices:v6];
  }
}

- (void)clientConnectionRequestsEndingDeviceQuery:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __56__TVRDServer_clientConnectionRequestsEndingDeviceQuery___block_invoke;
  v5[3] = &unk_100020820;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

void __56__TVRDServer_clientConnectionRequestsEndingDeviceQuery___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested ending general device query", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 56) removeObject:*(a1 + 32)];
  if ([*(*(a1 + 40) + 56) count])
  {
    v4 = _TVRDXPCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 40) + 56);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not ending device query - %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) _stopGeneralDeviceQuery];
  }
}

- (void)clientConnection:(id)a3 requestsSuggestedDeviceWithResponse:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__TVRDServer_clientConnection_requestsSuggestedDeviceWithResponse___block_invoke;
  block[3] = &unk_100020930;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void __67__TVRDServer_clientConnection_requestsSuggestedDeviceWithResponse___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested suggested device", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) irSessionManager];
  v5 = [v4 suggestedDevices];

  v6 = [TVRCDeviceState arrayOfStatesFromDevices:v5];
  (*(*(a1 + 48) + 16))();
}

- (void)clientConnectionSeveredConnection:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __48__TVRDServer_clientConnectionSeveredConnection___block_invoke;
  v4[3] = &unk_100020820;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void __48__TVRDServer_clientConnectionSeveredConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clientConnectionRequestsEndingDeviceQuery:*(a1 + 40)];
  v2 = [*(a1 + 32) clientConnections];
  [v2 removeObject:*(a1 + 40)];

  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) clientConnections];
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removed %{public}@. Total connections: %ld", &v6, 0x16u);
  }
}

- (void)clientConnection:(id)a3 requestsSendingEvent:(id)a4 toDeviceWithIdentifier:(id)a5 options:(id)a6 response:(id)a7
{
  v11 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __92__TVRDServer_clientConnection_requestsSendingEvent_toDeviceWithIdentifier_options_response___block_invoke;
  block[3] = &unk_100020980;
  block[4] = self;
  v17 = a5;
  v18 = v11;
  v19 = a6;
  v20 = a7;
  v12 = v20;
  v13 = v19;
  v14 = v11;
  v15 = v17;
  dispatch_async(&_dispatch_main_q, block);
}

void __92__TVRDServer_clientConnection_requestsSendingEvent_toDeviceWithIdentifier_options_response___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 sendEvent:*(a1 + 48) options:*(a1 + 56) response:*(a1 + 64)];
    v2 = v3;
  }
}

- (void)clientConnection:(id)a3 requestsEnablingRemoteOnLockscreen:(BOOL)a4 forDeviceWithIdentifier:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __90__TVRDServer_clientConnection_requestsEnablingRemoteOnLockscreen_forDeviceWithIdentifier___block_invoke;
  v9[3] = &unk_1000209A8;
  v13 = a4;
  v10 = a3;
  v11 = a5;
  v12 = self;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

void __90__TVRDServer_clientConnection_requestsEnablingRemoteOnLockscreen_forDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"disable";
    if (*(a1 + 56))
    {
      v4 = @"enable";
    }

    *buf = 138543618;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested to %@ remote on lockscreen", buf, 0x16u);
  }

  if (*(a1 + 40))
  {
    v5 = [*(a1 + 48) _cachedDeviceForIdentifier:?];
    v6 = v5;
    v7 = !v5 || [v5 connectionType] != 1 || objc_msgSend(v6, "attentionState") == 3;
    v8 = _TVRDXPCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 attentionState];
      if ((v9 - 1) >= 3)
      {
        v10 = [NSString stringWithFormat:@"(unknown: %ld)", v9];
      }

      else
      {
        v10 = off_100020A68[(v9 - 1)];
      }

      [v6 connectionType];
      v12 = TVRCDeviceConnectionTypeDescription();
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AttentionState:%{public}@ connectionType:%{public}@", buf, 0x16u);
    }

    if (v7 || (*(a1 + 56) & 1) == 0)
    {
      if ((*(a1 + 56) & 1) == 0)
      {
LABEL_22:
        v13 = +[TVRDAssertionManager sharedInstance];
        [v13 releaseLockScreenAssertion];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v14 = [*(a1 + 48) systemMonitor];
      v15 = [v14 screenLocked];

      if ((v15 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v13 = +[TVRDAssertionManager sharedInstance];
    [v13 acquireLockScreenAssertion];
    goto LABEL_25;
  }

  if (*(a1 + 56) == 1)
  {
    v11 = _TVRDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client requested to enable lock screen assertion for nil device identifier. Releasing lock screen assertion", buf, 2u);
    }
  }

  v6 = +[TVRDAssertionManager sharedInstance];
  [v6 releaseLockScreenAssertion];
LABEL_26:
}

- (BOOL)clientConnection:(id)a3 isConnectedToDeviceWithIdentifier:(id)a4
{
  v4 = [(TVRDServer *)self _cachedDeviceForIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 connectionState] == 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connection to %{public}@ : %d", &v9, 0x12u);
  }

  return v6;
}

- (void)clientConnection:(id)a3 requestsEnablingFindingSession:(BOOL)a4 forDeviceWithIdentifier:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke;
  v9[3] = &unk_1000209A8;
  v13 = a4;
  v10 = a3;
  v11 = self;
  v12 = a5;
  v7 = v12;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

void __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = _TVRDXPCLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v11 = 138543362;
      v12 = v5;
      v6 = "Client connection %{public}@ requested to start finding session";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, &v11, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    v11 = 138543362;
    v12 = v7;
    v6 = "Client connection %{public}@ requested to stop finding session";
    goto LABEL_6;
  }

  v8 = [*(a1 + 40) _cachedDeviceForIdentifier:*(a1 + 48)];
  v9 = v8;
  if (v8 && [v8 connectionType] == 1)
  {
    [v9 _enableFindingSession:*(a1 + 56)];
  }

  else
  {
    v10 = _TVRDXPCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke_cold_1(v9);
    }
  }
}

- (void)deviceBeganConnecting:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device started connecting: %{public}@", buf, 0xCu);
  }

  v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = _TVRDXPCLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v4 extendedDescription];
          *buf = 138543618;
          v21 = v11;
          v22 = 2114;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device started connecting: %{public}@", buf, 0x16u);
        }

        v14 = [v11 remoteObjectProxy];
        v15 = [TVRCDeviceState deviceStateFromDevice:v4];
        [v14 deviceUpdatedState:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }
}

- (void)device:(id)a3 encounteredAuthenticationChallenge:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 extendedDescription];
    *buf = 138543362;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Encountered auth challenge for device: %{public}@", buf, 0xCu);
  }

  authChallengesByID = self->_authChallengesByID;
  v11 = [v6 identifier];
  v12 = [(NSMutableDictionary *)authChallengesByID objectForKey:v11];

  if (v12)
  {
    v13 = _TVRDXPCLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 extendedDescription];
      *buf = 138412290;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Already a pending auth challenge for device %@, cancelling.", buf, 0xCu);
    }

    [v12 cancel];
  }

  v30 = v12;
  v15 = self->_authChallengesByID;
  v16 = [v6 identifier];
  [(NSMutableDictionary *)v15 setObject:v7 forKey:v16];

  v17 = self;
  v18 = v6;
  [(TVRDServer *)v17 _interestedClientProcessConnectionsForDevice:v6];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        v24 = _TVRDXPCLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v38 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending auth challenge to interested client %{public}@", buf, 0xCu);
        }

        v25 = [v23 remoteObjectProxy];
        v26 = [TVRCDeviceState deviceStateFromDevice:v18];
        v27 = [v7 challengeType];
        v28 = [v7 challengeAttributes];
        v29 = [v7 codeToEnterOnDevice];
        [v25 deviceWithState:v26 encounteredAuthChallengeOfType:v27 attributes:v28 codeToEnterOnDevice:v29 throttleSeconds:{objc_msgSend(v7, "throttleSeconds")}];
      }

      v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }
}

- (void)deviceConnected:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device became connected: %{public}@", buf, 0xCu);
  }

  authChallengesByID = self->_authChallengesByID;
  v7 = [v4 identifier];
  [(NSMutableDictionary *)authChallengesByID removeObjectForKey:v7];

  deviceIdentifiers = self->_deviceIdentifiers;
  v9 = [v4 identifier];
  LOBYTE(deviceIdentifiers) = [(NSCountedSet *)deviceIdentifiers containsObject:v9];

  if ((deviceIdentifiers & 1) == 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v4 allIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(NSCountedSet *)self->_deviceIdentifiers addObject:*(*(&v31 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v12);
    }
  }

  v15 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        v21 = _TVRDXPCLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v4 extendedDescription];
          *buf = 138543618;
          v36 = v20;
          v37 = 2114;
          v38 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device became connected: %{public}@", buf, 0x16u);
        }

        v23 = [v20 remoteObjectProxy];
        v24 = [TVRCDeviceState deviceStateFromDevice:v4];
        [v23 deviceUpdatedState:v24];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v17);
  }

  objc_storeWeak(&self->_lastConnectedDevice, v4);
  v25 = +[NSDate date];
  lastConnectionTimestamp = self->_lastConnectionTimestamp;
  self->_lastConnectionTimestamp = v25;

  [(TVRDServer *)self _publishUserPresenceForDevice:v4];
  [(TVRDServer *)self _switchToCurrentUserProfileForDevice:v4];
}

- (void)_publishUserPresenceForDevice:(id)a3
{
  v3 = a3;
  v4 = +[ACAccountStore defaultStore];
  v5 = [v4 ams_activeiCloudAccount];
  v6 = [v5 aa_altDSID];

  if (v6)
  {
    v12 = TVRCiCloudAltDSID;
    v13 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  v8 = TVRCPublishPresenceEvent;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __44__TVRDServer__publishUserPresenceForDevice___block_invoke;
  v10[3] = &unk_1000209D0;
  v11 = v6;
  v9 = v6;
  [v3 sendEvent:v8 options:v7 response:v10];
}

void __44__TVRDServer__publishUserPresenceForDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = _TVRDXPCLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__TVRDServer__publishUserPresenceForDevice___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      v8 = @"guest";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully published user presence %@", &v9, 0xCu);
  }
}

- (void)_switchToCurrentUserProfileForDevice:(id)a3
{
  v3 = a3;
  if ([v3 attentionState] == 1)
  {
    v4 = +[ACAccountStore defaultStore];
    v5 = [v4 ams_activeiCloudAccount];
    v6 = [v5 aa_altDSID];

    if (v6)
    {
      v7 = TVRCSwitchActiveUserAccountEvent;
      v15 = TVRCiCloudAltDSID;
      v16 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __51__TVRDServer__switchToCurrentUserProfileForDevice___block_invoke;
      v11[3] = &unk_1000209D0;
      v6 = v6;
      v12 = v6;
      [v3 sendEvent:v7 options:v8 response:v11];
    }
  }

  else
  {
    v6 = _TVRDXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 attentionState];
      if ((v9 - 1) >= 3)
      {
        v10 = [NSString stringWithFormat:@"(unknown: %ld)", v9];
      }

      else
      {
        v10 = off_100020A68[(v9 - 1)];
      }

      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device is: %{public}@. Ignore switching users", buf, 0xCu);
    }
  }
}

void __51__TVRDServer__switchToCurrentUserProfileForDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = _TVRDXPCLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__TVRDServer__switchToCurrentUserProfileForDevice___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully switched to account %@", &v9, 0xCu);
  }
}

- (void)device:(id)a3 disconnectedForReason:(int64_t)a4 error:(id)a5
{
  v7 = a3;
  v31 = a5;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device disconnected: %{public}@", buf, 0xCu);
  }

  authChallengesByID = self->_authChallengesByID;
  v10 = [v7 identifier];
  [(NSMutableDictionary *)authChallengesByID removeObjectForKey:v10];

  [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v7];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v29 = *v37;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [v14 deviceIdentifiers];
        v16 = [NSString stringWithFormat:@"%@ - identifiers: %@", v14, v15];

        v17 = _TVRDXPCLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v7 extendedDescription];
          *buf = 138543618;
          v42 = v16;
          v43 = 2114;
          v44 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device disconnected: %{public}@", buf, 0x16u);
        }

        v19 = [TVRCDeviceState deviceStateFromDevice:v7];
        [v19 setDisconnectReason:a4];
        [v19 setDisconnectError:v31];
        v20 = [v14 remoteObjectProxy];
        [v20 deviceUpdatedState:v19];

        v21 = [v7 identifier];
        [v14 removeInterestForDeviceWithIdentifier:v21];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v22 = [v7 alternateIdentifiers];
        v23 = [v22 allValues];

        v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v33;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v33 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [v14 removeInterestForDeviceWithIdentifier:*(*(&v32 + 1) + 8 * j)];
            }

            v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v25);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v12);
  }
}

- (void)device:(id)a3 didUpdateNameFrom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 name];
    *buf = 138543618;
    v31 = v7;
    v32 = 2114;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating device's name from: %{public}@ to: %{public}@", buf, 0x16u);
  }

  [(TVRDServer *)self _updateClientConnectionsForDevice:v6 oldIdentifier:v7];
  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v6];
  if (![v10 count])
  {
    v11 = _TVRDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TVRDServer device:v11 didUpdateNameFrom:?];
    }
  }

  v23 = v7;
  v24 = self;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = _TVRDXPCLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v6 extendedDescription];
          *buf = 138543618;
          v31 = v17;
          v32 = 2114;
          v33 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device name changed: %{public}@", buf, 0x16u);
        }

        v20 = [v17 remoteObjectProxy];
        v21 = [TVRCDeviceState deviceStateFromDevice:v6];
        [v20 deviceUpdatedState:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  generalDeviceQuery = v24->_generalDeviceQuery;
  if (generalDeviceQuery && [(TVRXDeviceQuery *)generalDeviceQuery isRunning])
  {
    [(TVRDServer *)v24 deviceQueryDidUpdateDevices:v24->_generalDeviceQuery];
  }
}

- (void)device:(id)a3 updatedSupportedButtons:(id)a4
{
  v5 = a3;
  v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = _TVRDXPCLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v5 extendedDescription];
          *buf = 138543618;
          v21 = v11;
          v22 = 2114;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device updated supported buttons: %{public}@", buf, 0x16u);
        }

        v14 = [v11 remoteObjectProxy];
        v15 = [TVRCDeviceState deviceStateFromDevice:v5];
        [v14 deviceUpdatedState:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }
}

- (void)device:(id)a3 updatedAttentionState:(int64_t)a4
{
  v6 = a3;
  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 name];
    if ((a4 - 1) >= 3)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %ld)", a4];
    }

    else
    {
      v9 = off_100020A68[a4 - 1];
    }

    *buf = 138543618;
    v28 = v8;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ updated attentionState to: %{public}@", buf, 0x16u);
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v10 = +[TVRDAssertionManager sharedInstance];
      [v10 startAssertionExpirationTimer];
      goto LABEL_14;
    }

    if (a4 != 3)
    {
      goto LABEL_15;
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_15;
    }

    v10 = +[TVRDAssertionManager sharedInstance];
    [v10 releaseLockScreenAssertion];
    goto LABEL_14;
  }

  v11 = +[TVRDAssertionManager sharedInstance];
  [v11 invalidateAssertionExpirationTimer];

  v10 = +[TVRDAssertionManager sharedInstance];
  [v10 acquireLockScreenAssertion];
LABEL_14:

LABEL_15:
  v12 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v6];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = _TVRDXPCLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v6 extendedDescription];
          *buf = 138543618;
          v28 = v17;
          v29 = 2114;
          v30 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device's attention state updated: %{public}@", buf, 0x16u);
        }

        v20 = [v17 remoteObjectProxy];
        v21 = [TVRCDeviceState deviceStateFromDevice:v6];
        [v20 deviceUpdatedState:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)device:(id)a3 updatedSiriRemoteFindingState:(int64_t)a4
{
  v6 = a3;
  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 < 7 && ((0x77u >> a4) & 1) != 0)
    {
      v8 = off_100020A80[a4];
    }

    else
    {
      v9 = [NSNumber numberWithInteger:a4];
      v8 = [NSString stringWithFormat:@"Unknown %@", v9];
    }

    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updated remote finding state to: %{public}@", buf, 0xCu);
  }

  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v6];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = _TVRDXPCLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v6 extendedDescription];
          *buf = 138543618;
          v25 = v15;
          v26 = 2114;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that siri remote finding session was updated: %{public}@", buf, 0x16u);
        }

        v18 = [(__CFString *)v15 remoteObjectProxy];
        v19 = [TVRCDeviceState deviceStateFromDevice:v6];
        [v18 deviceUpdatedState:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }
}

- (void)device:(id)a3 updatedPairedRemoteInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 extendedDescription];
    *buf = 138543618;
    v27 = v9;
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "'%{public}@' pairedRemoteInfo: %{public}@", buf, 0x16u);
  }

  v20 = v7;

  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v6];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = _TVRDXPCLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v6 extendedDescription];
          *buf = 138543618;
          v27 = v15;
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that paired remote was updated: %{public}@", buf, 0x16u);
        }

        v18 = [v15 remoteObjectProxy];
        v19 = [TVRCDeviceState deviceStateFromDevice:v6];
        [v18 deviceUpdatedState:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)device:(id)a3 updatedNowPlayingInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 extendedDescription];
    *buf = 138543618;
    v27 = v9;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "'%{public}@' nowPlayingInfo: %@", buf, 0x16u);
  }

  v20 = v7;

  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v6];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = _TVRDXPCLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v6 extendedDescription];
          *buf = 138543618;
          v27 = v15;
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that now playing info was updated: %{public}@", buf, 0x16u);
        }

        v18 = [v15 remoteObjectProxy];
        v19 = [TVRCDeviceState deviceStateFromDevice:v6];
        [v18 deviceUpdatedState:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)device:(id)a3 supportsFindMyRemote:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = _TVRDXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 extendedDescription];
    v9 = v8;
    v10 = "no";
    if (v4)
    {
      v10 = "yes";
    }

    *buf = 138543618;
    v35 = v8;
    v36 = 2080;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "'%{public}@' supports find my remote: %s", buf, 0x16u);
  }

  generalDeviceQuery = self->_generalDeviceQuery;
  if (generalDeviceQuery && [(TVRXDeviceQuery *)generalDeviceQuery isRunning])
  {
    [(TVRDServer *)self deviceQueryDidUpdateDevices:self->_generalDeviceQuery];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_clientConnections;
  v12 = [(NSMutableSet *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v30;
    *&v13 = 138543618;
    v27 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v6 allIdentifiers];
        v19 = [v17 deviceIdentifiers];
        v20 = [v6 identifier];
        if ([v19 containsObject:v20])
        {
        }

        else
        {
          v21 = [v17 deviceIdentifiers];
          v22 = [v21 intersectsSet:v18];

          if (!v22)
          {
            goto LABEL_19;
          }
        }

        v23 = _TVRDXPCLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v6 extendedDescription];
          *buf = v27;
          v35 = v17;
          v36 = 2114;
          v37 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that paired remote was updated: %{public}@", buf, 0x16u);
        }

        v25 = [v17 remoteObjectProxy];
        v26 = [TVRCDeviceState deviceStateFromDevice:v6];
        [v25 deviceUpdatedState:v26];

LABEL_19:
      }

      v14 = [(NSMutableSet *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }
}

- (void)devicePoweredOff:(id)a3
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRDServer devicePoweredOff:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = +[TVRDAssertionManager sharedInstance];
  [v4 releaseLockScreenAssertion];
}

- (void)keyboardController:(id)a3 beganTextEditingWithAttributes:(id)a4
{
  v5 = [(TVRDServer *)self _deviceForKeyboardController:a3, a4];
  if (v5)
  {
    v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = _TVRDXPCLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v5 extendedDescription];
            *buf = 138543618;
            v24 = v11;
            v25 = 2114;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BeganTextEditing - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          v14 = [v11 remoteObjectProxy];
          v15 = [TVRCDeviceState deviceStateFromDevice:v5];
          [v14 deviceUpdatedState:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v8);
    }

    [(NSDate *)self->_lastConnectionTimestamp timeIntervalSinceNow];
    if (fabs(v16) < 5.0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_lastConnectedDevice);

      if (WeakRetained == v5)
      {
        lastConnectionTimestamp = self->_lastConnectionTimestamp;
        self->_lastConnectionTimestamp = 0;

        objc_storeWeak(&self->_lastConnectedDevice, 0);
      }
    }
  }
}

- (void)keyboardControllerEndedTextEditing:(id)a3
{
  v4 = [(TVRDServer *)self _deviceForKeyboardController:a3];
  if (v4)
  {
    v5 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = _TVRDXPCLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v4 extendedDescription];
            *buf = 138543618;
            v20 = v10;
            v21 = 2114;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EndedTextEditing - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          v13 = [v10 remoteObjectProxy];
          v14 = [TVRCDeviceState deviceStateFromDevice:v4];
          [v13 deviceUpdatedState:v14];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v7);
    }
  }
}

- (void)keyboardController:(id)a3 didUpdateText:(id)a4
{
  v5 = [(TVRDServer *)self _deviceForKeyboardController:a3, a4];
  if (v5)
  {
    v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v5];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = _TVRDXPCLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v5 extendedDescription];
            *buf = 138543618;
            v21 = v11;
            v22 = 2114;
            v23 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DidUpdateText - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          v14 = [v11 remoteObjectProxy];
          v15 = [TVRCDeviceState deviceStateFromDevice:v5];
          [v14 deviceUpdatedState:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v8);
    }
  }
}

- (void)keyboardController:(id)a3 didUpdateAttributes:(id)a4
{
  v5 = [(TVRDServer *)self _deviceForKeyboardController:a3, a4];
  if (v5)
  {
    v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v5];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = _TVRDXPCLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v5 extendedDescription];
            *buf = 138543618;
            v21 = v11;
            v22 = 2114;
            v23 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DidUpdateAttributes - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          v14 = [v11 remoteObjectProxy];
          v15 = [TVRCDeviceState deviceStateFromDevice:v5];
          [v14 deviceUpdatedState:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v8);
    }
  }
}

- (void)_becameInterestedInDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Server became interested in %{public}@", buf, 0xCu);
  }

  v6 = [(TVRDServer *)self _deviceForIdentifierInDeviceQuery:v4];
  if (v6)
  {
    v7 = _TVRDXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(TVRDServer *)self cachedDevices];
      *buf = 138543618;
      v19 = v6;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device Query contains device %{public}@. Adding to cachedDevices: %@", buf, 0x16u);
    }

    [(NSMutableSet *)self->_cachedDevices addObject:v6];
    v9 = _TVRDXPCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(TVRDServer *)self cachedDevices];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "After adding interested device to cachedDevices: %@", buf, 0xCu);
    }

    [(TVRDServer *)self _connectToDeviceIfNeeded:v6];
  }

  else
  {
    v11 = [(TVRXDeviceQuery *)self->_generalDeviceQuery isRunning];
    v12 = _TVRDXPCLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 138412546;
        v19 = 0;
        v20 = 2048;
        v21 = 0x4024000000000000;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device Query does not contain device %@, but device query is running. Putting a %.1f second timer to find the device", buf, 0x16u);
      }

      [(NSMutableSet *)self->_identifiersRequestingConnection addObject:v4];
      [(TVRDServer *)self performSelector:"_informClientCouldNotLocateDeviceWithIdentifier:" withObject:v4 afterDelay:10.0];
    }

    else
    {
      if (v13)
      {
        *buf = 138543362;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No device query running. Will attempt to locate device with ID %{public}@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      deviceSearch = self->_deviceSearch;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __54__TVRDServer__becameInterestedInDeviceWithIdentifier___block_invoke;
      v15[3] = &unk_1000209F8;
      objc_copyWeak(&v17, buf);
      v15[4] = self;
      v16 = v4;
      [(TVRXDeviceLocator *)deviceSearch findDeviceWithIdentifier:v16 timeout:v15 completion:10.0];

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }
}

void __54__TVRDServer__becameInterestedInDeviceWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _TVRDXPCLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) cachedDevices];
      v14 = 138543618;
      v15 = v3;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Search found device %{public}@. Adding to cachedDevices: %@", &v14, 0x16u);
    }

    [WeakRetained[4] addObject:v3];
    [WeakRetained _connectToDeviceIfNeeded:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__TVRDServer__becameInterestedInDeviceWithIdentifier___block_invoke_cold_1(a1, v6, v8, v9, v10, v11, v12, v13);
    }

    [WeakRetained _informClientCouldNotLocateDeviceWithIdentifier:*(a1 + 40)];
  }
}

- (void)_informClientCouldNotLocateDeviceWithIdentifier:(id)a3
{
  identifiersRequestingConnection = self->_identifiersRequestingConnection;
  v5 = a3;
  [(NSMutableSet *)identifiersRequestingConnection removeObject:v5];
  v7 = [[TVRXDevice alloc] _init];
  [v7 _setIdentifier:v5 name:0 supportedButtons:0];

  v6 = TVRCMakeError();
  [(TVRDServer *)self device:v7 disconnectedForReason:3 error:v6];
}

- (id)_deviceForIdentifierInDeviceQuery:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TVRXDeviceQuery *)self->_generalDeviceQuery devices];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsIdentifier:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_lostInterestInDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TVRDServer] lost interest in %{public}@", &v12, 0xCu);
  }

  [(TVRXDeviceLocator *)self->_deviceSearch cancelSearchForDeviceWithIdentifier:v4];
  v6 = [(NSMutableDictionary *)self->_authChallengesByID objectForKey:v4];
  [v6 cancel];
  [(NSMutableDictionary *)self->_authChallengesByID removeObjectForKey:v4];
  v7 = [(TVRDServer *)self _cachedDeviceForIdentifier:v4];
  if (v7)
  {
    v8 = _TVRDXPCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cachedDevices = self->_cachedDevices;
      v12 = 138543874;
      v13 = v4;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = cachedDevices;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Server lost interest in %{public}@, disconnecting and removing device %{public}@ from cachedDevices: %{public}@", &v12, 0x20u);
    }

    v10 = [v7 keyboardController];
    [v10 setDelegate:0];

    [v7 disconnect];
    [(NSMutableSet *)self->_cachedDevices removeObject:v7];
  }

  if ([(NSMutableSet *)self->_identifiersRequestingConnection containsObject:v4])
  {
    v11 = _TVRDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Server lost interest in %{public}@, removing identifier", &v12, 0xCu);
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_informClientCouldNotLocateDeviceWithIdentifier:" object:v4];
    [(NSMutableSet *)self->_identifiersRequestingConnection removeObject:v4];
  }
}

- (id)countedSetDescriptionFor:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 countForObject:v10];
        v12 = [NSString stringWithFormat:@"'%@' = %ld", v10, v11, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_updateClientConnectionsForDevice:(id)a3 oldIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRDXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    *buf = 138543618;
    v31 = v7;
    v32 = 2114;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating all client connections' deviceIdentifiers from: %{public}@ to %{public}@", buf, 0x16u);
  }

  v10 = _TVRDXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(TVRDServer *)self countedSetDescriptionFor:self->_deviceIdentifiers];
    *buf = 138543362;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Before updating identifiers: %{public}@", buf, 0xCu);
  }

  [(NSCountedSet *)self->_deviceIdentifiers removeObject:v7];
  deviceIdentifiers = self->_deviceIdentifiers;
  v13 = [v6 identifier];
  LOBYTE(deviceIdentifiers) = [(NSCountedSet *)deviceIdentifiers containsObject:v13];

  if ((deviceIdentifiers & 1) == 0)
  {
    v14 = self->_deviceIdentifiers;
    v15 = [v6 identifier];
    [(NSCountedSet *)v14 addObject:v15];
  }

  v16 = _TVRDXPCLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(TVRDServer *)self countedSetDescriptionFor:self->_deviceIdentifiers];
    *buf = 138543362;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated Identifiers: %{public}@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_clientConnections;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        v24 = [v6 identifier];
        [v23 updateDeviceIdentifier:v7 to:v24];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }
}

- (id)_interestedClientProcessConnectionsForDevice:(id)a3
{
  v4 = a3;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = +[NSMutableDictionary dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_clientConnections;
  v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v4 alternateIdentifiers];
        v11 = [v10 allValues];
        v12 = [NSSet setWithArray:v11];

        v13 = [v9 deviceIdentifiers];
        v14 = [v4 identifier];
        if ([v13 containsObject:v14])
        {
        }

        else
        {
          v15 = [v9 deviceIdentifiers];
          v16 = [v15 intersectsSet:v12];

          if (!v16)
          {
            goto LABEL_10;
          }
        }

        [v23 addObject:v9];
LABEL_10:
        v17 = [NSString stringWithFormat:@"%p", v9];
        v18 = [v9 deviceIdentifiers];
        v19 = [v18 allObjects];
        [v24 setObject:v19 forKeyedSubscript:v17];
      }

      v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  if (![v23 count])
  {
    v20 = _TVRDXPCLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [TVRDServer _interestedClientProcessConnectionsForDevice:v4];
    }
  }

  return v23;
}

- (id)_deviceForKeyboardController:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cachedDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 keyboardController];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_hasNowPlayingControlsForButtons:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [(TVRDServer *)self _isButtonOfNowPlayingType:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (void)_connectToDeviceIfNeeded:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 extendedDescription];
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting to device: %{public}@", buf, 0xCu);
  }

  [v4 setDelegate:self];
  v7 = [v4 keyboardController];
  [v7 setDelegate:self];

  if ([v4 connectionState] == 2)
  {
    v8 = _TVRDXPCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 extendedDescription];
      *buf = 138543362;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is already connected, informing clients...", buf, 0xCu);
    }

    [(TVRDServer *)self deviceConnected:v4];
  }

  else if ([v4 connectionState] == 1)
  {
    v10 = _TVRDXPCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 extendedDescription];
      *buf = 138543362;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is connecting, informing clients again...", buf, 0xCu);
    }

    [(TVRDServer *)self deviceBeganConnecting:v4];
  }

  else
  {
    [v4 setDelegate:self];
    [v4 connect];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v4 allIdentifiers];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        v18 = [(TVRDServer *)self connectionContextByID];
        v19 = [v18 allKeys];
        v20 = [v19 containsObject:v17];

        if (v20)
        {
          v21 = [(TVRDServer *)self connectionContextByID];
          v22 = [v21 objectForKeyedSubscript:v17];
          v23 = [v22 integerValue];

          v24 = [(TVRDServer *)self irSessionManager];
          [v24 updateDevice:v4 withConnectionContext:v23];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }
}

- (id)_cachedDeviceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRDServer *)self _findCachedDeviceForIdentifier:v4];
  if (!v5)
  {
    v6 = [(TVRDServer *)self _deviceForIdentifierInDeviceQuery:v4];
    v7 = [v6 idsIdentifier];
    v5 = [(TVRDServer *)self _findCachedDeviceForIdentifier:v7];

    if (!v5)
    {
      v8 = [v6 name];
      v5 = [(TVRDServer *)self _findCachedDeviceForIdentifier:v8];
    }

    if ([v5 isEqual:v6])
    {
      [(NSMutableSet *)self->_cachedDevices removeObject:v5];
      [(NSMutableSet *)self->_cachedDevices addObject:v6];
      v9 = _TVRDXPCLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        cachedDevices = self->_cachedDevices;
        v12 = 138543874;
        v13 = v5;
        v14 = 2114;
        v15 = v6;
        v16 = 2114;
        v17 = cachedDevices;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Replaced cached device: %{public}@ with device: %{public}@. cachedDevices: %{public}@", &v12, 0x20u);
      }
    }
  }

  return v5;
}

- (id)_findCachedDeviceForIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cachedDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsIdentifier:{v4, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_startGeneralDeviceQuery
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting general device query", &v9, 2u);
  }

  v4 = _TVRDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TVRDServer *)self cachedDevices];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Existing cachedDevices: %{public}@", &v9, 0xCu);
  }

  generalDeviceQuery = self->_generalDeviceQuery;
  if (!generalDeviceQuery)
  {
    v7 = objc_alloc_init(TVRXDeviceQuery);
    v8 = self->_generalDeviceQuery;
    self->_generalDeviceQuery = v7;

    [(TVRXDeviceQuery *)self->_generalDeviceQuery setDelegate:self];
    generalDeviceQuery = self->_generalDeviceQuery;
  }

  [(TVRXDeviceQuery *)generalDeviceQuery start];
  [(TVRDServer *)self _activateIRSessionManager];
}

- (void)_activateIRSessionManager
{
  irSessionManager = self->_irSessionManager;
  if (!irSessionManager)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(TVRDIRSessionManager);
    v5 = self->_irSessionManager;
    self->_irSessionManager = v4;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __39__TVRDServer__activateIRSessionManager__block_invoke;
    v7[3] = &unk_100020A20;
    objc_copyWeak(&v8, &location);
    [(TVRDIRSessionManager *)self->_irSessionManager setFilteredDeviceListHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    irSessionManager = self->_irSessionManager;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __39__TVRDServer__activateIRSessionManager__block_invoke_90;
  v6[3] = &unk_100020A48;
  v6[4] = self;
  [(TVRDIRSessionManager *)irSessionManager activateWithCompletion:v6];
}

void __39__TVRDServer__activateIRSessionManager__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = [WeakRetained generalDeviceQuery];
      v7 = [v6 devices];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [TVRCDeviceState arrayOfStatesFromDevices:v3];
        v10 = _TVRDXPCLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IRSessionManager updated devices with deviceStates %{public}@", buf, 0xCu);
        }

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = [v5 deviceQueryObservers];
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            v15 = 0;
            do
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v17 + 1) + 8 * v15) remoteObjectProxy];
              [v16 suggestedDevices:v9];

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v13);
        }
      }
    }
  }
}

void __39__TVRDServer__activateIRSessionManager__block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRDXPCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__TVRDServer__activateIRSessionManager__block_invoke_90_cold_1();
    }
  }

  else
  {
    v4 = [*(a1 + 32) irSessionManager];
    [v4 requestCurrentRecommendedDevices];
  }
}

- (void)_invalidateIRSessionManager
{
  v3 = [(TVRDServer *)self irSessionManager];
  [v3 invalidate];

  [(TVRDServer *)self setIrSessionManager:0];
}

- (void)_stopGeneralDeviceQuery
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping general device query", v6, 2u);
  }

  [(TVRXDeviceQuery *)self->_generalDeviceQuery stop];
  [(TVRXDeviceQuery *)self->_generalDeviceQuery setDelegate:0];
  generalDeviceQuery = self->_generalDeviceQuery;
  self->_generalDeviceQuery = 0;

  v5 = [(TVRDServer *)self irSessionManager];
  [v5 pause];
}

- (void)_updateDevicesWithRecommendations:(id)a3
{
  v4 = a3;
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[TVRDServer _updateDevicesWithRecommendations:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(TVRDServer *)self irSessionManager];
  v7 = [v6 suggestedDevices];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(TVRDServer *)self irSessionManager];
    v10 = [v9 suggestedDevices];
    v11 = [NSMutableSet setWithArray:v10];

    v12 = [v4 mutableCopy];
    v13 = _TVRDXPCLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [TVRDServer _updateDevicesWithRecommendations:];
    }

    v14 = _TVRDXPCLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [TVRDServer _updateDevicesWithRecommendations:];
    }

    v33 = v4;

    [v12 intersectSet:v11];
    v15 = _TVRDXPCLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [TVRDServer _updateDevicesWithRecommendations:];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      v19 = &TVRCDeviceConnectionTypeDescription_ptr;
      v34 = *v37;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = v19[110];
          v23 = [v21 identifier];
          v24 = [v22 predicateWithFormat:@"identifier ==[c] %@", v23];
          v25 = [v11 filteredSetUsingPredicate:v24];

          v26 = [v25 anyObject];
          if (v26)
          {
            v27 = _TVRDXPCLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              [v26 extendedDescription];
              v28 = v11;
              v30 = v29 = v19;
              [v21 extendedDescription];
              v32 = v31 = v17;
              *buf = 138543618;
              v41 = v30;
              v42 = 2114;
              v43 = v32;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Assigning classification from suggestedDevice: %{public}@ to device: %{public}@", buf, 0x16u);

              v17 = v31;
              v19 = v29;
              v11 = v28;
              v18 = v34;
            }

            [v21 setClassification:{objc_msgSend(v26, "classification")}];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v17);
    }

    v4 = v33;
  }

  else
  {
    v11 = _TVRDXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "There are no suggested devices. Skipping updating devices with recommendations", buf, 2u);
    }
  }
}

- (void)deviceQueryDidUpdateDevices:(id)a3
{
  v4 = [a3 devices];
  v5 = _TVRDXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v62 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "General device query updated set of devices %{public}@", buf, 0xCu);
  }

  [TVRCDeviceState setOfStatesFromDevices:v4];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v6 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = _TVRDXPCLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v62 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated deviceState: %{public}@", buf, 0xCu);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v7);
  }

  v12 = [(TVRDServer *)self irSessionManager];
  [v12 processNewDevices:v4];

  [(TVRDServer *)self _updateDevicesWithRecommendations:v4];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = self->_deviceQueryObservers;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v53;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v52 + 1) + 8 * j) remoteObjectProxy];
        [v18 deviceQueryUpdatedDiscoveredDevices:obj];
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v15);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v41 = v4;
  v19 = [v41 countByEnumeratingWithState:&v48 objects:v65 count:16];
  if (v19)
  {
    v21 = v19;
    v42 = *v49;
    *&v20 = 138543362;
    v40 = v20;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(v41);
        }

        v23 = *(*(&v48 + 1) + 8 * k);
        [v23 setDelegate:{self, v40}];
        v24 = [v23 identifier];
        v25 = [(TVRDServer *)self _cachedDeviceForIdentifier:v24];

        if (v25)
        {
          if ([v25 connectionState] != 2 && v25 != v23)
          {
            v27 = _TVRDXPCLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [(TVRDServer *)self cachedDevices];
              *buf = 138543618;
              v62 = v28;
              v63 = 2114;
              v64 = v23;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating stale device in cachedDevices:%{public}@ with %{public}@", buf, 0x16u);
            }

            [(NSMutableSet *)self->_cachedDevices removeObject:v25];
            [(NSMutableSet *)self->_cachedDevices addObject:v23];
            v29 = _TVRDXPCLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [(TVRDServer *)self cachedDevices];
              *buf = v40;
              v62 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updated cachedDevices:%{public}@", buf, 0xCu);
            }
          }
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = [v23 allIdentifiers];
        v32 = [v31 countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          while (2)
          {
            for (m = 0; m != v33; m = m + 1)
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v44 + 1) + 8 * m);
              if ([(NSMutableSet *)self->_identifiersRequestingConnection containsObject:v36])
              {
                [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_informClientCouldNotLocateDeviceWithIdentifier:" object:v36];
                [(NSMutableSet *)self->_identifiersRequestingConnection removeObject:v36];
                v37 = _TVRDXPCLog();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [v23 extendedDescription];
                  v39 = [(TVRDServer *)self cachedDevices];
                  *buf = 138543618;
                  v62 = v38;
                  v63 = 2114;
                  v64 = v39;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to cachedDevices: %{public}@", buf, 0x16u);
                }

                [(NSMutableSet *)self->_cachedDevices addObject:v23];
                [(TVRDServer *)self _connectToDeviceIfNeeded:v23];
                goto LABEL_46;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

LABEL_46:
      }

      v21 = [v41 countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v21);
  }
}

- (TVRXDevice)lastConnectedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnectedDevice);

  return WeakRetained;
}

void __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(*a2 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not find cached device with ID %{public}@, even though someone is already interested in that device. All cachedDevices - %{public}@", &v5, 0x16u);
}

void __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke_cold_1(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 cachedDevices];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke_cold_1(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 cachedDevices];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke_cold_1(void *a1)
{
  v1 = [a1 extendedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_interestedClientProcessConnectionsForDevice:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 allIdentifiers];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end
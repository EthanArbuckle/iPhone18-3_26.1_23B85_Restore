@interface NIServerSessionLifeCycleManager
- (BOOL)doesClientWantSessionToRun;
- (BOOL)isDiscoveryActive;
- (BOOL)isPositioningSensorActive;
- (BOOL)isSessionInvalidated;
- (BOOL)isTracking;
- (BOOL)isTrackingPeer:(id)peer;
- (NIServerSessionLifeCycleManager)initWithSessionIdentifier:(id)identifier cycleRate:(duration<long)long updatesQueue:()std:(1000>>)std :(id)a5 ratio<1 analyticsManager:(id)manager;
- (NIServerSessionLifeCycleObserver)observer;
- (NSArray)peers;
- (id).cxx_construct;
- (void)_printStats;
- (void)_removeAllPeers;
- (void)_removePeer:(id)peer;
- (void)_startMonitoringPeersActivity:(id)activity;
- (void)_watchdogLoop;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)failedToAddPeer;
- (void)failedToRemovePeer;
- (void)invalidateCalled;
- (void)measurementReceivedForToken:(id)token contTimestamp:(double)timestamp;
- (void)pauseCalled;
- (void)peerHangupReceived:(id)received;
- (void)peerLostCallbackReceived:(id)received;
- (void)positioningSensorSessionStarted;
- (void)positioningSensorSessionStopped;
- (void)removeObserver:(id)observer;
- (void)runWithConfigurationCalled;
- (void)startedDiscoveringPeersWithTokens:(id)tokens;
- (void)stoppedDiscoveringAllPeers;
- (void)stoppedDiscoveringPeersWithTokens:(id)tokens;
@end

@implementation NIServerSessionLifeCycleManager

- (void)_watchdogLoop
{
  dispatch_assert_queue_V2(self->_watchdogQueue);
  if (!self->_clientWantsSessionToRun || self->_sessionInvalidated)
  {
    return;
  }

  v42 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = self->_nearbyObjectsCache;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  v5 = &unk_100548000;
  if (!v3)
  {
    goto LABEL_52;
  }

  v43 = 0;
  v46 = *v68;
  *&v4 = 138412546;
  v41 = v4;
  do
  {
    v47 = 0;
    v44 = v3;
    do
    {
      if (*v68 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v67 + 1) + 8 * v47);
      v48 = [(NSMutableDictionary *)self->_nearbyObjectsCache objectForKeyedSubscript:v6, v41];
      [v48 latestActivityTimestamp];
      v8 = sub_100005288() - v7;
      if ([v48 latestActivityType])
      {
        if ([v48 latestActivityType] != 1)
        {
          goto LABEL_41;
        }

        if ([(NIServerSessionLifeCycleManager *)self timeoutOnPeerInactivity])
        {
          [(NIServerSessionLifeCycleManager *)self maxInactivityAfterTrackingBeganSeconds];
          if (v8 > v9)
          {
            [(NSUUID *)v42 addObject:v6];
            v10 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              sessionIdentifier = self->_sessionIdentifier;
              *buf = v41;
              v75 = sessionIdentifier;
              v76 = 2112;
              v77 = v6;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#lifecycle,(ses id: %@) TRACKING timed out for %@", buf, 0x16u);
            }

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v12 = self->_observers;
            v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v57 objects:v72 count:16];
            if (v13)
            {
              v14 = *v58;
              do
              {
                for (i = 0; i != v13; i = i + 1)
                {
                  if (*v58 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v57 + 1) + 8 * i);
                  updatesQueue = self->_updatesQueue;
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_100271E54;
                  block[3] = &unk_10098A2E8;
                  block[4] = v16;
                  block[5] = v6;
                  dispatch_async(updatesQueue, block);
                }

                v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v57 objects:v72 count:16];
              }

              while (v13);
            }

            v5 = &unk_100548000;
            v3 = v44;
            v18 = self->_updatesQueue;
            v55[0] = _NSConcreteStackBlock;
            v55[1] = 3221225472;
            v55[2] = sub_100271E60;
            v55[3] = &unk_10098A2E8;
            v55[4] = self;
            v55[5] = v6;
            v19 = v55;
LABEL_34:
            dispatch_async(v18, v19);
            goto LABEL_41;
          }
        }

        v31 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          v32 = self->_sessionIdentifier;
          *buf = v41;
          v75 = v32;
          v76 = 2112;
          v77 = v6;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#lifecycle,(ses id: %@) TRACKING active for %@", buf, 0x16u);
        }

        ++v43;
      }

      else
      {
        if ([(NIServerSessionLifeCycleManager *)self timeoutOnPeerInactivity])
        {
          [(NIServerSessionLifeCycleManager *)self maxInactivityBeforeTrackingBeganSeconds];
          if (v8 > v20)
          {
            [(NSUUID *)v42 addObject:v6];
            v21 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              v22 = self->_sessionIdentifier;
              *buf = v41;
              v75 = v22;
              v76 = 2112;
              v77 = v6;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#lifecycle,(ses id: %@) DISCOVERY timed out for %@", buf, 0x16u);
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v23 = self->_observers;
            v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v63 objects:v73 count:16];
            if (v24)
            {
              v25 = *v64;
              do
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v64 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v63 + 1) + 8 * j);
                  v28 = self->_updatesQueue;
                  v62[0] = _NSConcreteStackBlock;
                  v62[1] = 3221225472;
                  v62[2] = sub_100271DE0;
                  v62[3] = &unk_10098A2E8;
                  v62[4] = v27;
                  v62[5] = v6;
                  dispatch_async(v28, v62);
                }

                v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v63 objects:v73 count:16];
              }

              while (v24);
            }

            v5 = &unk_100548000;
            v3 = v44;
            v18 = self->_updatesQueue;
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = sub_100271DEC;
            v61[3] = &unk_10098A2E8;
            v61[4] = self;
            v61[5] = v6;
            v19 = v61;
            goto LABEL_34;
          }
        }

        v29 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          v30 = self->_sessionIdentifier;
          *buf = v41;
          v75 = v30;
          v76 = 2112;
          v77 = v6;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "#lifecycle,(ses id: %@) DISCOVERY active for %@", buf, 0x16u);
        }
      }

      v3 = v44;
LABEL_41:

      v47 = v47 + 1;
    }

    while (v47 != v3);
    v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  }

  while (v3);

  if (v43 >= 1)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = self->_observers;
    v33 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v51 objects:v71 count:16];
    if (v33)
    {
      v34 = *v52;
      do
      {
        for (k = 0; k != v33; k = k + 1)
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v51 + 1) + 8 * k);
          v37 = self->_updatesQueue;
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100271EC8;
          v50[3] = &unk_10098BD28;
          v50[4] = v36;
          dispatch_async(v37, v50);
        }

        v33 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v51 objects:v71 count:16];
      }

      while (v33);
      v5 = &unk_100548000;
    }

LABEL_52:
  }

  if ([(NSUUID *)v42 count])
  {
    v38 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v42;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#lifecycle,Removing tokens from cache: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_nearbyObjectsCache removeObjectsForKeys:v42];
  }

  v39 = dispatch_time(0, 1000000 * self->_cycleRate.__rep_);
  watchdogQueue = self->_watchdogQueue;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = v5[354];
  v49[2] = sub_100271ED0;
  v49[3] = &unk_10098BD28;
  v49[4] = self;
  dispatch_after(v39, watchdogQueue, v49);
}

- (void)failedToAddPeer
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000140E0;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
}

- (NIServerSessionLifeCycleManager)initWithSessionIdentifier:(id)identifier cycleRate:(duration<long)long updatesQueue:()std:(1000>>)std :(id)a5 ratio<1 analyticsManager:(id)manager
{
  identifierCopy = identifier;
  v13 = a5;
  managerCopy = manager;
  if (identifierCopy)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:
    v31 = +[NSAssertionHandler currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"NIServerSessionLifeCycleManager.mm" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"updatesQueue"}];

    if (managerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v30 = +[NSAssertionHandler currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"NIServerSessionLifeCycleManager.mm" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier"}];

  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (managerCopy)
  {
    goto LABEL_4;
  }

LABEL_17:
  v32 = +[NSAssertionHandler currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"NIServerSessionLifeCycleManager.mm" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"analyticsManager"}];

LABEL_4:
  v33.receiver = self;
  v33.super_class = NIServerSessionLifeCycleManager;
  v15 = [(NIServerSessionLifeCycleManager *)&v33 init];
  if (v15)
  {
    v16 = +[NSHashTable weakObjectsHashTable];
    observers = v15->_observers;
    v15->_observers = v16;

    objc_storeStrong(&v15->_sessionIdentifier, identifier);
    v15->_cycleRate = std;
    objc_storeStrong(&v15->_updatesQueue, a5);
    v18 = dispatch_queue_create("com.apple.nearbyd.sessionLifeCycleWatchdog", 0);
    watchdogQueue = v15->_watchdogQueue;
    v15->_watchdogQueue = v18;

    v20 = objc_opt_new();
    nearbyObjectsCache = v15->_nearbyObjectsCache;
    v15->_nearbyObjectsCache = v20;

    objc_storeWeak(&v15->_analyticsManager, managerCopy);
    [(NIServerSessionLifeCycleManager *)v15 setTimeoutOnPeerInactivity:1];
    [(NIServerSessionLifeCycleManager *)v15 setMaxInactivityAfterTrackingBeganSeconds:60.0];
    [(NIServerSessionLifeCycleManager *)v15 setMaxInactivityBeforeTrackingBeganSeconds:120.0];
    v22 = +[NSUserDefaults standardUserDefaults];
    [v22 doubleForKey:@"MaxInactivityAfterTrackingBeganSeconds"];
    v24 = v23;
    [v22 doubleForKey:@"MaxInactivityBeforeTrackingBeganSeconds"];
    v26 = v25;
    if (v24 > 0.0)
    {
      v27 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v35 = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#lifecycle,* MaxInactivityAfterTrackingBeganSeconds from default write: %f", buf, 0xCu);
      }

      [(NIServerSessionLifeCycleManager *)v15 setMaxInactivityAfterTrackingBeganSeconds:v24];
    }

    if (v26 > 0.0)
    {
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#lifecycle,* MaxInactivityBeforeTrackingBeganSeconds from default write: %f", buf, 0xCu);
      }

      [(NIServerSessionLifeCycleManager *)v15 setMaxInactivityBeforeTrackingBeganSeconds:v26];
    }
  }

  return v15;
}

- (void)dealloc
{
  [(NIServerSessionLifeCycleManager *)self _printStats];
  v3.receiver = self;
  v3.super_class = NIServerSessionLifeCycleManager;
  [(NIServerSessionLifeCycleManager *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  sub_100004A08(__p, "addObserver");
  v8 = __p;
  v5 = sub_100014680(&self->_callCounter.__table_.__bucket_list_.__ptr_, __p);
  v5[5] = v5[5] + 1;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  [(NSHashTable *)self->_observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  sub_100004A08(__p, "removeObserver");
  v8 = __p;
  v5 = sub_100014680(&self->_callCounter.__table_.__bucket_list_.__ptr_, __p);
  v5[5] = v5[5] + 1;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (NSArray)peers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100270318;
  v10 = sub_100270328;
  v11 = 0;
  watchdogQueue = self->_watchdogQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100270330;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(watchdogQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)runWithConfigurationCalled
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100270448;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
  v4 = self->_watchdogQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100270600;
  v5[3] = &unk_10098BD28;
  v5[4] = self;
  dispatch_async(v4, v5);
}

- (void)pauseCalled
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027067C;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
}

- (void)invalidateCalled
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100270840;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
}

- (void)failedToRemovePeer
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100270A08;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
}

- (void)startedDiscoveringPeersWithTokens:(id)tokens
{
  tokensCopy = tokens;
  watchdogQueue = self->_watchdogQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100270BE0;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = tokensCopy;
  v6 = tokensCopy;
  dispatch_sync(watchdogQueue, v7);
}

- (void)stoppedDiscoveringPeersWithTokens:(id)tokens
{
  tokensCopy = tokens;
  watchdogQueue = self->_watchdogQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100270DCC;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = tokensCopy;
  v6 = tokensCopy;
  dispatch_sync(watchdogQueue, v7);
}

- (void)stoppedDiscoveringAllPeers
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100271014;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
}

- (void)peerLostCallbackReceived:(id)received
{
  receivedCopy = received;
  watchdogQueue = self->_watchdogQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002711FC;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = receivedCopy;
  v6 = receivedCopy;
  dispatch_sync(watchdogQueue, v7);
}

- (void)positioningSensorSessionStarted
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002713F4;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
}

- (void)positioningSensorSessionStopped
{
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002715B4;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(watchdogQueue, block);
}

- (void)measurementReceivedForToken:(id)token contTimestamp:(double)timestamp
{
  tokenCopy = token;
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002717A4;
  block[3] = &unk_1009A1358;
  block[4] = self;
  v10 = tokenCopy;
  timestampCopy = timestamp;
  v8 = tokenCopy;
  dispatch_sync(watchdogQueue, block);
}

- (void)peerHangupReceived:(id)received
{
  receivedCopy = received;
  watchdogQueue = self->_watchdogQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100271920;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = receivedCopy;
  v6 = receivedCopy;
  dispatch_sync(watchdogQueue, v7);
}

- (BOOL)isTrackingPeer:(id)peer
{
  peerCopy = peer;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  watchdogQueue = self->_watchdogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100271A98;
  block[3] = &unk_1009A1380;
  v9 = peerCopy;
  v10 = &v11;
  block[4] = self;
  v6 = peerCopy;
  dispatch_sync(watchdogQueue, block);
  LOBYTE(watchdogQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return watchdogQueue;
}

- (void)_startMonitoringPeersActivity:(id)activity
{
  activityCopy = activity;
  dispatch_assert_queue_V2(self->_watchdogQueue);
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = activityCopy;
  v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        activityCopy = [PRPeerActivityEntry entryWithActivityType:0, activityCopy];
        v10 = [[NINearbyObject alloc] initWithToken:v8];
        [v4 addObject:v10];
        [(NSMutableDictionary *)self->_nearbyObjectsCache setObject:activityCopy forKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_removePeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_watchdogQueue);
  [(NSMutableDictionary *)self->_nearbyObjectsCache removeObjectForKey:peerCopy];
}

- (void)_removeAllPeers
{
  dispatch_assert_queue_V2(self->_watchdogQueue);
  nearbyObjectsCache = self->_nearbyObjectsCache;

  [(NSMutableDictionary *)nearbyObjectsCache removeAllObjects];
}

- (BOOL)isDiscoveryActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  watchdogQueue = self->_watchdogQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100272028;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(watchdogQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)doesClientWantSessionToRun
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  watchdogQueue = self->_watchdogQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100272118;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(watchdogQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isPositioningSensorActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  watchdogQueue = self->_watchdogQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100272208;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(watchdogQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isTracking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  watchdogQueue = self->_watchdogQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002722F8;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(watchdogQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isSessionInvalidated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  watchdogQueue = self->_watchdogQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002723E8;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(watchdogQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_printStats
{
  v3 = objc_opt_new();
  for (i = &self->_callCounter.__table_.__first_node_; ; [v3 appendFormat:@"%s : %llu times\n", v5, i[5].__next_])
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }

    v5 = i + 2;
    if (SHIBYTE(i[4].__next_) < 0)
    {
      v5 = v5->__next_;
    }
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138412546;
    v9 = sessionIdentifier;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#lifecycle,\n============================\nStats for session ID %@\n%@\n============================", buf, 0x16u);
  }
}

- (NIServerSessionLifeCycleObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end
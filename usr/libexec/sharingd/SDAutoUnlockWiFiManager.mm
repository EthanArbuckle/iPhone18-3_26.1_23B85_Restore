@interface SDAutoUnlockWiFiManager
+ (id)sharedManager;
- (BOOL)_addWiFiRequest:(id)request;
- (BOOL)_peerFoundInStateInfo:(id)info;
- (SDAutoUnlockWiFiManager)init;
- (void)__handleAWDLDisabledIfNeededForRequest:(id)request;
- (void)_addObservers;
- (void)_cancelWiFiRequest:(id)request;
- (void)_createNISession;
- (void)_disableRangeableNI;
- (void)_enableRangeableIfNeededNI;
- (void)_handleAWDLTimerFired;
- (void)_handleNetworkStarted:(id)started request:(id)request error:(int64_t)error;
- (void)_handleNetworkStoppedWithError:(id)error error:(int64_t)a4;
- (void)_handleVirtualInterfacesChanged:(id)changed;
- (void)_invalidateAWDLTimer;
- (void)_invalidateCurrentRequest;
- (void)_invalidateWiFiRequest:(id)request;
- (void)_processRequestQueue;
- (void)_resetManagerState;
- (void)_restartAWDLTimer;
- (void)_startAWDLWithInfo:(id)info;
- (void)_startRangingWithNI;
- (void)_stopAWDL;
- (void)cancelWiFiRequest:(id)request;
- (void)handleNetworkStarted:(id)started request:(id)request error:(int64_t)error;
- (void)handleNetworkStoppedWithError:(id)error error:(int64_t)a4;
- (void)handleVirtualInterfacesChanged:(id)changed;
- (void)rangingReportEventForWiFiInterfaceWithName:(id)name data:(id)data error:(id)error;
- (void)scheduleWiFiRequest:(id)request;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didReceiveRangingAuthRecommendation:(BOOL)recommendation forObject:(id)object;
- (void)start;
- (void)updateWiFiRequest:(id)request setRangingPeer:(id)peer;
@end

@implementation SDAutoUnlockWiFiManager

+ (id)sharedManager
{
  if (qword_10098A1F0 != -1)
  {
    sub_1001E9A20();
  }

  v3 = qword_10098A1E8;

  return v3;
}

- (SDAutoUnlockWiFiManager)init
{
  v8.receiver = self;
  v8.super_class = SDAutoUnlockWiFiManager;
  v2 = [(SDAutoUnlockWiFiManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.sharing.SDAutoUnlockWiFiManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_opt_new();
    wifiRequestQueue = v2->_wifiRequestQueue;
    v2->_wifiRequestQueue = v5;
  }

  return v2;
}

- (void)start
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E57D8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(queue, block);

  [(SDAutoUnlockWiFiManager *)self _createNISession];
}

- (void)_createNISession
{
  v3 = SFMainQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E589C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_addObservers
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleVirtualInterfacesChanged:" name:@"com.apple.sharingd.VirtualInterfacesChanged" object:0];
}

- (BOOL)_addWiFiRequest:(id)request
{
  requestCopy = request;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    v12 = 136315650;
    v13 = "[SDAutoUnlockWiFiManager _addWiFiRequest:]";
    v14 = 2112;
    v15 = requestCopy;
    v16 = 2112;
    v17 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s request: %@ identifier: %@", &v12, 0x20u);
  }

  wifiRequestQueue = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
  v9 = [wifiRequestQueue containsObject:requestCopy];

  if ((v9 & 1) == 0)
  {
    wifiRequestQueue2 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
    [wifiRequestQueue2 addObject:requestCopy];

    [(SDAutoUnlockWiFiManager *)self _processRequestQueue];
  }

  return 1;
}

- (void)_invalidateWiFiRequest:(id)request
{
  requestCopy = request;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(__CFString *)requestCopy identifier];
    *buf = 136315650;
    v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
    v29 = 2112;
    v30 = requestCopy;
    v31 = 2112;
    v32 = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s request: %@ identifier: %@", buf, 0x20u);
  }

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v8 = [currentRequest isEqual:requestCopy];

  if (v8)
  {
    if (![(SDAutoUnlockWiFiManager *)self awdlStarting])
    {
LABEL_8:
      [(SDAutoUnlockWiFiManager *)self _disableRangeableNI];
      [(SDAutoUnlockWiFiManager *)self _stopAWDL];
      [(SDAutoUnlockWiFiManager *)self setCurrentRequest:0];
      [(SDAutoUnlockWiFiManager *)self _processRequestQueue];
      goto LABEL_16;
    }

    awdlNetwork = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
    if (awdlNetwork || [(SDAutoUnlockWiFiManager *)self awdlStartFailed])
    {

      goto LABEL_8;
    }

    if ([(SDAutoUnlockWiFiManager *)self awdlTimerFired])
    {
      goto LABEL_8;
    }

    v20 = auto_unlock_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if ([(SDAutoUnlockWiFiManager *)self awdlStarting])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      awdlNetwork2 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
      if ([(SDAutoUnlockWiFiManager *)self awdlStartFailed])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      awdlTimerFired = [(SDAutoUnlockWiFiManager *)self awdlTimerFired];
      *buf = 136316162;
      v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
      if (awdlTimerFired)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = awdlNetwork2;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Waiting for network before disable. awdlStarting: %@, awdlNetwork: %@, awdlStartFailed: %@, awdlTimerFired: %@", buf, 0x34u);
    }

    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    [currentRequest2 setWaitingForNetworkToDisable:1];
  }

  else
  {
    identifier2 = [(__CFString *)requestCopy identifier];
    v11 = [NSPredicate predicateWithFormat:@"identifier == %@", identifier2];

    wifiRequestQueue = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
    v13 = [wifiRequestQueue filteredArrayUsingPredicate:v11];
    firstObject = [v13 firstObject];

    wifiRequestQueue2 = auto_unlock_log();
    v16 = os_log_type_enabled(wifiRequestQueue2, OS_LOG_TYPE_DEFAULT);
    if (firstObject)
    {
      if (v16)
      {
        identifier3 = [(__CFString *)firstObject identifier];
        waitingForNetworkToDisable = [(__CFString *)firstObject waitingForNetworkToDisable];
        *buf = 136315906;
        v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
        v29 = 2112;
        v30 = firstObject;
        v31 = 2112;
        v32 = identifier3;
        v33 = 1024;
        LODWORD(v34) = waitingForNetworkToDisable;
        _os_log_impl(&_mh_execute_header, wifiRequestQueue2, OS_LOG_TYPE_DEFAULT, "%s removing  non current request: %@ identifier: %@ waitingForNetworkToDisable: %d", buf, 0x26u);
      }

      wifiRequestQueue2 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
      [wifiRequestQueue2 removeObject:firstObject];
    }

    else if (v16)
    {
      identifier4 = [(__CFString *)requestCopy identifier];
      *buf = 136315650;
      v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
      v29 = 2112;
      v30 = requestCopy;
      v31 = 2112;
      v32 = identifier4;
      _os_log_impl(&_mh_execute_header, wifiRequestQueue2, OS_LOG_TYPE_DEFAULT, "%s request(%@) not found !! identifier: %@", buf, 0x20u);
    }
  }

LABEL_16:
}

- (void)scheduleWiFiRequest:(id)request
{
  requestCopy = request;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E608C;
  block[3] = &unk_1008CF8F0;
  selfCopy = self;
  v11 = a2;
  v9 = requestCopy;
  v7 = requestCopy;
  dispatch_async(queue, block);
}

- (void)cancelWiFiRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    queue = [(SDAutoUnlockWiFiManager *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001E62A8;
    v6[3] = &unk_1008CE028;
    v6[4] = self;
    v7 = requestCopy;
    dispatch_async(queue, v6);
  }
}

- (void)updateWiFiRequest:(id)request setRangingPeer:(id)peer
{
  requestCopy = request;
  peerCopy = peer;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E6388;
  v11[3] = &unk_1008CE028;
  v12 = requestCopy;
  v13 = peerCopy;
  v9 = peerCopy;
  v10 = requestCopy;
  dispatch_async(queue, v11);
}

- (void)_processRequestQueue
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];

  if (currentRequest)
  {
    firstObject = auto_unlock_log();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      currentRequest3 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      identifier = [currentRequest3 identifier];
      *buf = 136315906;
      v23 = "[SDAutoUnlockWiFiManager _processRequestQueue]";
      v24 = 1024;
      *v25 = 324;
      *&v25[4] = 2112;
      *&v25[6] = currentRequest2;
      v26 = 2112;
      v27 = identifier;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, "%s: %d Already processing request: %@ identifier: %@", buf, 0x26u);
    }
  }

  else
  {
    wifiRequestQueue = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
    firstObject = [wifiRequestQueue firstObject];

    if (firstObject)
    {
      wifiRequestQueue2 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
      [wifiRequestQueue2 removeObjectAtIndex:0];

      [(SDAutoUnlockWiFiManager *)self setCurrentRequest:firstObject];
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        wifiRequestQueue3 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
        *buf = 67109120;
        LODWORD(v23) = [wifiRequestQueue3 count];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Processing current request, with %d items in the request queue", buf, 8u);
      }

      currentRequest4 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      queueAvailableHandler = [currentRequest4 queueAvailableHandler];

      if (queueAvailableHandler)
      {
        objc_initWeak(buf, self);
        currentRequest5 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        queueAvailableHandler2 = [currentRequest5 queueAvailableHandler];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1001E6720;
        v19[3] = &unk_1008D3B00;
        v19[4] = self;
        firstObject = firstObject;
        v20 = firstObject;
        objc_copyWeak(&v21, buf);
        (queueAvailableHandler2)[2](queueAvailableHandler2, v19);

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }

      else
      {
        v17 = auto_unlock_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          currentRequest6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          *buf = 136315394;
          v23 = "[SDAutoUnlockWiFiManager _processRequestQueue]";
          v24 = 2112;
          *v25 = currentRequest6;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s no queueAvailableHandler. Invalidating current request %@", buf, 0x16u);
        }

        [(SDAutoUnlockWiFiManager *)self _invalidateCurrentRequest];
      }
    }
  }
}

- (void)_cancelWiFiRequest:(id)request
{
  requestCopy = request;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SDAutoUnlockWiFiManager _cancelWiFiRequest:]";
    v10 = 2112;
    v11 = requestCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  if (requestCopy)
  {
    [requestCopy setInvalidationHandler:0];
    v7 = +[SDAutoUnlockWiFiManager sharedManager];
    [v7 _invalidateWiFiRequest:requestCopy];

    if (([requestCopy invalidateCalled] & 1) == 0)
    {
      [requestCopy setInvalidateCalled:1];
      [requestCopy _invalidate];
    }
  }
}

- (void)_resetManagerState
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SDAutoUnlockWiFiManager _resetManagerState]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(SDAutoUnlockWiFiManager *)self setAwdlStartFailed:0];
  [(SDAutoUnlockWiFiManager *)self setAwdlStarting:0];
  [(SDAutoUnlockWiFiManager *)self setAwdlTimerFired:0];
}

- (void)_invalidateCurrentRequest
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    identifier = [currentRequest2 identifier];
    v9 = 136315650;
    v10 = "[SDAutoUnlockWiFiManager _invalidateCurrentRequest]";
    v11 = 2112;
    v12 = currentRequest;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s current Request: %@ identifier: %@", &v9, 0x20u);
  }

  [(SDAutoUnlockWiFiManager *)self _resetManagerState];
  currentRequest3 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  [(SDAutoUnlockWiFiManager *)self _cancelWiFiRequest:currentRequest3];

  [(SDAutoUnlockWiFiManager *)self setCurrentRequest:0];
  [(SDAutoUnlockWiFiManager *)self _processRequestQueue];
}

- (void)_startRangingWithNI
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  rangingPeer = [currentRequest rangingPeer];
  niRangingPeer = [rangingPeer niRangingPeer];
  v25 = niRangingPeer;
  v7 = [NSArray arrayWithObjects:&v25 count:1];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    niSession = [(SDAutoUnlockWiFiManager *)self niSession];
    v10 = @"YES";
    v20 = "[SDAutoUnlockWiFiManager _startRangingWithNI]";
    v19 = 136315650;
    if (!niSession)
    {
      v10 = @"NO";
    }

    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Starting ranging (manager: %@, peers: %@)", &v19, 0x20u);
  }

  currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  [currentRequest2 rangingTimeout];

  v12 = [NIRangingAuthConfiguration alloc];
  v13 = [v7 objectAtIndexedSubscript:0];
  macAddress = [v13 macAddress];
  v15 = [v7 objectAtIndexedSubscript:0];
  secureRangingKeyID = [v15 secureRangingKeyID];
  v17 = [v12 initAsResponder:0 macAddress:macAddress key:secureRangingKeyID];

  niSession2 = [(SDAutoUnlockWiFiManager *)self niSession];
  [niSession2 runWithConfiguration:v17];

  kdebug_trace();
}

- (void)_enableRangeableIfNeededNI
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  isRangingInitiator = [currentRequest isRangingInitiator];

  if ((isRangingInitiator & 1) == 0)
  {
    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    rangingPeer = [currentRequest2 rangingPeer];

    if (rangingPeer)
    {
      currentRequest3 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      rangingPeer2 = [currentRequest3 rangingPeer];
      niRangingPeer = [rangingPeer2 niRangingPeer];

      if (niRangingPeer)
      {
        currentRequest4 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        rangingPeer3 = [currentRequest4 rangingPeer];
        niRangingPeer2 = [rangingPeer3 niRangingPeer];
        v32 = niRangingPeer2;
        v14 = [NSArray arrayWithObjects:&v32 count:1];

        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          niSession = [(SDAutoUnlockWiFiManager *)self niSession];
          v17 = @"YES";
          v27 = "[SDAutoUnlockWiFiManager _enableRangeableIfNeededNI]";
          v26 = 136315650;
          if (!niSession)
          {
            v17 = @"NO";
          }

          v28 = 2112;
          v29 = v17;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s startRangingFromPeers (manager: %@, peers: %@)", &v26, 0x20u);
        }

        v18 = [NIRangingAuthConfiguration alloc];
        v19 = [v14 objectAtIndexedSubscript:0];
        macAddress = [v19 macAddress];
        v21 = [v14 objectAtIndexedSubscript:0];
        secureRangingKeyID = [v21 secureRangingKeyID];
        v23 = [v18 initAsResponder:1 macAddress:macAddress key:secureRangingKeyID];

        niSession2 = [(SDAutoUnlockWiFiManager *)self niSession];
        [niSession2 runWithConfiguration:v23];

        currentRequest5 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        [currentRequest5 setRangeable:1];
      }

      else
      {
        v14 = auto_unlock_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1001E9A74();
        }
      }
    }

    else
    {
      v14 = auto_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1001E9AA8();
      }
    }
  }
}

- (void)_disableRangeableNI
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  rangeable = [currentRequest rangeable];

  if (rangeable)
  {
    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    rangingPeer = [currentRequest2 rangingPeer];
    niRangingPeer = [rangingPeer niRangingPeer];
    v20 = niRangingPeer;
    v9 = [NSArray arrayWithObjects:&v20 count:1];

    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      niSession = [(SDAutoUnlockWiFiManager *)self niSession];
      v12 = @"YES";
      v15 = "[SDAutoUnlockWiFiManager _disableRangeableNI]";
      v14 = 136315650;
      if (!niSession)
      {
        v12 = @"NO";
      }

      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s stopRangingFromPeers (manager: %@, peers: %@)", &v14, 0x20u);
    }

    niSession2 = [(SDAutoUnlockWiFiManager *)self niSession];
    [niSession2 invalidate];

    [(SDAutoUnlockWiFiManager *)self _createNISession];
  }
}

- (void)session:(id)session didReceiveRangingAuthRecommendation:(BOOL)recommendation forObject:(id)object
{
  recommendationCopy = recommendation;
  objectCopy = object;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (recommendationCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
    rangingPeer = [currentRequest rangingPeer];
    niRangingPeer = [rangingPeer niRangingPeer];
    [objectCopy distance];
    *buf = 136315906;
    v23 = "[SDAutoUnlockWiFiManager session:didReceiveRangingAuthRecommendation:forObject:]";
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = niRangingPeer;
    v28 = 2048;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s should authenticate: %@, peer: %@, distance: %fm", buf, 0x2Au);
  }

  currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  rangingPeer2 = [currentRequest2 rangingPeer];
  niRangingPeer2 = [rangingPeer2 niRangingPeer];

  if (niRangingPeer2)
  {
    queue = [(SDAutoUnlockWiFiManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E75BC;
    block[3] = &unk_1008CF940;
    block[4] = self;
    v20 = objectCopy;
    v21 = recommendationCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1001E9ADC();
    }
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E77EC;
  v8[3] = &unk_1008CE028;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NI session invalidated, restarting session", buf, 2u);
  }

  [(SDAutoUnlockWiFiManager *)self _createNISession];
  if ([errorCopy code] == -10008)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NI session is invalidated after completing the one-shot ranging, so ignoring the completed error", buf, 2u);
    }
  }

  else
  {
    queue = [(SDAutoUnlockWiFiManager *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001E79FC;
    v9[3] = &unk_1008CE028;
    v9[4] = self;
    v10 = errorCopy;
    dispatch_async(queue, v9);
  }
}

- (void)_startAWDLWithInfo:(id)info
{
  infoCopy = info;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  awdlInfo = [infoCopy awdlInfo];
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [infoCopy identifier];
    v18 = 136315906;
    v19 = "[SDAutoUnlockWiFiManager _startAWDLWithInfo:]";
    v20 = 2112;
    v21 = infoCopy;
    v22 = 2112;
    v23 = identifier;
    v24 = 2112;
    v25 = awdlInfo;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Starting AWDL request: %@ identifier: %@ info: %@", &v18, 0x2Au);
  }

  v9 = +[SDStatusMonitor sharedMonitor];
  awdlDevice = [v9 awdlDevice];

  if (!awdlDevice)
  {
    currentRequest2 = auto_unlock_log();
    if (os_log_type_enabled(currentRequest2, OS_LOG_TYPE_ERROR))
    {
      sub_1001E9BD8(infoCopy);
    }

    goto LABEL_11;
  }

  [[SDAutoUnlockWiFiManagerContext alloc] initWithRequest:infoCopy wiFiManager:self];
  started = WiFiDeviceClientStartNetwork();
  if (!started)
  {
    [(SDAutoUnlockWiFiManager *)self _enableRangeableIfNeededNI];
    [(SDAutoUnlockWiFiManager *)self _restartAWDLTimer];
    goto LABEL_13;
  }

  v12 = started;
  v13 = auto_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1001E9B10(infoCopy);
  }

  [(SDAutoUnlockWiFiManager *)self setAwdlStartFailed:1];
  [(SDAutoUnlockWiFiManager *)self setAwdlStarting:0];
  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  awdlStartedHandler = [currentRequest awdlStartedHandler];

  if (awdlStartedHandler)
  {
    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    awdlStartedHandler2 = [currentRequest2 awdlStartedHandler];
    awdlStartedHandler2[2](awdlStartedHandler2, 0, v12);

LABEL_11:
  }

LABEL_13:
}

- (void)_stopAWDL
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  awdlNetwork = [(SDAutoUnlockWiFiManager *)self awdlNetwork];

  if (awdlNetwork)
  {
    v5 = +[SDStatusMonitor sharedMonitor];
    [v5 awdlDevice];

    v6 = [SDAutoUnlockWiFiManagerContext alloc];
    currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
    [(SDAutoUnlockWiFiManagerContext *)v6 initWithRequest:currentRequest wiFiManager:self];

    awdlNetwork2 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
    v9 = WiFiDeviceClientStopNetwork();

    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      awdlNetwork3 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
      v13 = 136315906;
      v14 = "[SDAutoUnlockWiFiManager _stopAWDL]";
      v15 = 2112;
      v16 = currentRequest2;
      v17 = 2112;
      v18 = awdlNetwork3;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Stopping AWDL currentRequest: %@ network %@, error %d", &v13, 0x26u);
    }

    [(SDAutoUnlockWiFiManager *)self setAwdlNetwork:0];
  }

  [(SDAutoUnlockWiFiManager *)self _resetManagerState];
}

- (void)__handleAWDLDisabledIfNeededForRequest:(id)request
{
  requestCopy = request;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(SDAutoUnlockWiFiManager *)self _invalidateAWDLTimer];
  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  if (currentRequest)
  {
    v7 = currentRequest;
    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v9 = [requestCopy isEqual:currentRequest2];

    if (v9)
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [requestCopy identifier];
        v12 = 136315650;
        v13 = "[SDAutoUnlockWiFiManager __handleAWDLDisabledIfNeededForRequest:]";
        v14 = 2112;
        v15 = requestCopy;
        v16 = 2112;
        v17 = identifier;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s AWDL went down. Invalidating current request: %@ identifier: %@", &v12, 0x20u);
      }

      [(SDAutoUnlockWiFiManager *)self _invalidateCurrentRequest];
    }
  }
}

- (void)_restartAWDLTimer
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[SDAutoUnlockWiFiManager _restartAWDLTimer]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Restarting AWDL bring up timer", buf, 0xCu);
  }

  awdlTimer = [(SDAutoUnlockWiFiManager *)self awdlTimer];
  v6 = awdlTimer == 0;

  if (v6)
  {
    objc_initWeak(buf, self);
    queue2 = [(SDAutoUnlockWiFiManager *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E84EC;
    v12[3] = &unk_1008CDD98;
    objc_copyWeak(&v13, buf);
    v8 = sub_1001F0548(0, queue2, v12);
    [(SDAutoUnlockWiFiManager *)self setAwdlTimer:v8];

    awdlTimer2 = [(SDAutoUnlockWiFiManager *)self awdlTimer];
    dispatch_resume(awdlTimer2);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  awdlTimer3 = [(SDAutoUnlockWiFiManager *)self awdlTimer];
  v11 = sub_1001F0530(30.0);
  sub_1001F05F0(awdlTimer3, v11);
}

- (void)_invalidateAWDLTimer
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  awdlTimer = [(SDAutoUnlockWiFiManager *)self awdlTimer];

  if (awdlTimer)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SDAutoUnlockWiFiManager _invalidateAWDLTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Invalidating AWDL bring up timer", &v7, 0xCu);
    }

    awdlTimer2 = [(SDAutoUnlockWiFiManager *)self awdlTimer];
    dispatch_source_cancel(awdlTimer2);

    [(SDAutoUnlockWiFiManager *)self setAwdlTimer:0];
  }
}

- (void)_handleAWDLTimerFired
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SDAutoUnlockWiFiManager _handleAWDLTimerFired]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s AWDL bring up timer fired", &v8, 0xCu);
  }

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  waitingForNetworkToDisable = [currentRequest waitingForNetworkToDisable];

  if (waitingForNetworkToDisable)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SDAutoUnlockWiFiManager _handleAWDLTimerFired]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Disabling ranging and awdl for timer", &v8, 0xCu);
    }

    [(SDAutoUnlockWiFiManager *)self _invalidateCurrentRequest];
  }

  else
  {
    [(SDAutoUnlockWiFiManager *)self setAwdlTimerFired:1];
  }
}

- (BOOL)_peerFoundInStateInfo:(id)info
{
  infoCopy = info;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
  rangingPeer = [currentRequest rangingPeer];
  macAddressData = [rangingPeer macAddressData];

  v9 = [infoCopy objectForKeyedSubscript:@"LINK_CHANGED_PEER_LIST"];
  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[SDAutoUnlockWiFiManager _peerFoundInStateInfo:]";
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Received peer list: %@", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{@"STATION_MAC", v20}];
        v17 = [macAddressData isEqualToData:v16];

        if (v17)
        {
          v18 = 1;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (void)handleVirtualInterfacesChanged:(id)changed
{
  changedCopy = changed;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E8D34;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)_handleVirtualInterfacesChanged:(id)changed
{
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];

  if (currentRequest)
  {
    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    isRangingInitiator = [currentRequest2 isRangingInitiator];

    if (isRangingInitiator)
    {
      v8 = +[SDStatusMonitor sharedMonitor];
      awdlState = [v8 awdlState];

      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 136315394;
        *&v26[4] = "[SDAutoUnlockWiFiManager _handleVirtualInterfacesChanged:]";
        *&v26[12] = 2112;
        *&v26[14] = awdlState;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Received state from awdl: %@", v26, 0x16u);
      }

      v11 = [awdlState objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
      bOOLValue = [v11 BOOLValue];

      currentRequest3 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      calledAWDLStarted = [currentRequest3 calledAWDLStarted];

      v15 = auto_unlock_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"YES";
        if (bOOLValue)
        {
          v17 = @"NO";
        }

        else
        {
          v17 = @"YES";
        }

        *v26 = 136315650;
        *&v26[4] = "[SDAutoUnlockWiFiManager _handleVirtualInterfacesChanged:]";
        *&v26[12] = 2112;
        *&v26[14] = v17;
        if (!calledAWDLStarted)
        {
          v16 = @"NO";
        }

        *&v26[22] = 2112;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s linkup: %@, calledAWDLStarted: %@", v26, 0x20u);
      }

      if (bOOLValue)
      {
        if ([(SDAutoUnlockWiFiManager *)self awdlStarting])
        {
          v18 = auto_unlock_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignore linkdown notification while starting AWDL", v26, 2u);
          }
        }

        else
        {
          currentRequest4 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          [(SDAutoUnlockWiFiManager *)self __handleAWDLDisabledIfNeededForRequest:currentRequest4];
        }
      }

      else
      {
        if (calledAWDLStarted)
        {
          v19 = 0;
        }

        else
        {
          currentRequest5 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          [currentRequest5 setCalledAWDLStarted:1];

          currentRequest6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          awdlStartedHandler = [currentRequest6 awdlStartedHandler];

          v19 = awdlStartedHandler != 0;
          if (awdlStartedHandler)
          {
            currentRequest7 = [(SDAutoUnlockWiFiManager *)self currentRequest];
            awdlStartedHandler2 = [currentRequest7 awdlStartedHandler];
            (awdlStartedHandler2)[2](awdlStartedHandler2, awdlState, 0);
          }

          else
          {
            currentRequest7 = auto_unlock_log();
            if (os_log_type_enabled(currentRequest7, OS_LOG_TYPE_ERROR))
            {
              sub_1001E9CD0(self);
            }
          }
        }

        [(SDAutoUnlockWiFiManager *)self _startRangingIfPeerFoundInStateInfo:awdlState awdlUpSameTime:v19, *v26, *&v26[16]];
      }
    }

    else
    {
      awdlState = auto_unlock_log();
      if (os_log_type_enabled(awdlState, OS_LOG_TYPE_DEBUG))
      {
        sub_1001E9C90();
      }
    }
  }
}

- (void)rangingReportEventForWiFiInterfaceWithName:(id)name data:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E9184;
  block[3] = &unk_1008CE900;
  v13 = dataCopy;
  v14 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  v11 = dataCopy;
  dispatch_async(queue, block);
}

- (void)handleNetworkStarted:(id)started request:(id)request error:(int64_t)error
{
  startedCopy = started;
  requestCopy = request;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001E93BC;
  v13[3] = &unk_1008D08B8;
  v13[4] = self;
  v14 = startedCopy;
  v15 = requestCopy;
  errorCopy = error;
  v11 = requestCopy;
  v12 = startedCopy;
  dispatch_async(queue, v13);
}

- (void)_handleNetworkStarted:(id)started request:(id)request error:(int64_t)error
{
  startedCopy = started;
  requestCopy = request;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    v24 = 136315650;
    v25 = "[SDAutoUnlockWiFiManager _handleNetworkStarted:request:error:]";
    v26 = 2112;
    v27 = requestCopy;
    v28 = 2112;
    v29 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s request: %@ identifier: %@", &v24, 0x20u);
  }

  [(SDAutoUnlockWiFiManager *)self _invalidateAWDLTimer];
  currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];

  if (currentRequest == requestCopy)
  {
    [(SDAutoUnlockWiFiManager *)self setAwdlNetwork:startedCopy];
    [(SDAutoUnlockWiFiManager *)self setAwdlStarting:0];
    currentRequest2 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    waitingForNetworkToDisable = [currentRequest2 waitingForNetworkToDisable];

    if (waitingForNetworkToDisable)
    {
      [(SDAutoUnlockWiFiManager *)self _invalidateCurrentRequest];
    }

    else
    {
      currentRequest3 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      calledAWDLStarted = [currentRequest3 calledAWDLStarted];

      if ((calledAWDLStarted & 1) == 0)
      {
        if (error)
        {
          [(SDAutoUnlockWiFiManager *)self setAwdlStartFailed:1];
          v18 = auto_unlock_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1001E9D74(error, v18);
          }
        }

        currentRequest4 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        [currentRequest4 setCalledAWDLStarted:1];

        currentRequest5 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        awdlStartedHandler = [currentRequest5 awdlStartedHandler];

        if (awdlStartedHandler)
        {
          currentRequest6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          awdlStartedHandler2 = [currentRequest6 awdlStartedHandler];
          awdlStartedHandler2[2](awdlStartedHandler2, 0, error);
        }
      }
    }
  }
}

- (void)handleNetworkStoppedWithError:(id)error error:(int64_t)a4
{
  errorCopy = error;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E96E4;
  block[3] = &unk_1008CF8F0;
  block[4] = self;
  v10 = errorCopy;
  v11 = a4;
  v8 = errorCopy;
  dispatch_async(queue, block);
}

- (void)_handleNetworkStoppedWithError:(id)error error:(int64_t)a4
{
  errorCopy = error;
  queue = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentRequest = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v9 = 136315650;
    v10 = "[SDAutoUnlockWiFiManager _handleNetworkStoppedWithError:error:]";
    v11 = 2112;
    v12 = errorCopy;
    v13 = 2112;
    v14 = currentRequest;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s AWDL disabled request: %@ currentRequest: %@", &v9, 0x20u);
  }

  [(SDAutoUnlockWiFiManager *)self __handleAWDLDisabledIfNeededForRequest:errorCopy];
}

@end
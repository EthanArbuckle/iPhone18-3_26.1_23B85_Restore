@interface SDAutoUnlockWiFiManager
+ (id)sharedManager;
- (BOOL)_addWiFiRequest:(id)a3;
- (BOOL)_peerFoundInStateInfo:(id)a3;
- (SDAutoUnlockWiFiManager)init;
- (void)__handleAWDLDisabledIfNeededForRequest:(id)a3;
- (void)_addObservers;
- (void)_cancelWiFiRequest:(id)a3;
- (void)_createNISession;
- (void)_disableRangeableNI;
- (void)_enableRangeableIfNeededNI;
- (void)_handleAWDLTimerFired;
- (void)_handleNetworkStarted:(id)a3 request:(id)a4 error:(int64_t)a5;
- (void)_handleNetworkStoppedWithError:(id)a3 error:(int64_t)a4;
- (void)_handleVirtualInterfacesChanged:(id)a3;
- (void)_invalidateAWDLTimer;
- (void)_invalidateCurrentRequest;
- (void)_invalidateWiFiRequest:(id)a3;
- (void)_processRequestQueue;
- (void)_resetManagerState;
- (void)_restartAWDLTimer;
- (void)_startAWDLWithInfo:(id)a3;
- (void)_startRangingWithNI;
- (void)_stopAWDL;
- (void)cancelWiFiRequest:(id)a3;
- (void)handleNetworkStarted:(id)a3 request:(id)a4 error:(int64_t)a5;
- (void)handleNetworkStoppedWithError:(id)a3 error:(int64_t)a4;
- (void)handleVirtualInterfacesChanged:(id)a3;
- (void)rangingReportEventForWiFiInterfaceWithName:(id)a3 data:(id)a4 error:(id)a5;
- (void)scheduleWiFiRequest:(id)a3;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didReceiveRangingAuthRecommendation:(BOOL)a4 forObject:(id)a5;
- (void)start;
- (void)updateWiFiRequest:(id)a3 setRangingPeer:(id)a4;
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
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E57D8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);

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
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleVirtualInterfacesChanged:" name:@"com.apple.sharingd.VirtualInterfacesChanged" object:0];
}

- (BOOL)_addWiFiRequest:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 identifier];
    v12 = 136315650;
    v13 = "[SDAutoUnlockWiFiManager _addWiFiRequest:]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s request: %@ identifier: %@", &v12, 0x20u);
  }

  v8 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
  v9 = [v8 containsObject:v4];

  if ((v9 & 1) == 0)
  {
    v10 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
    [v10 addObject:v4];

    [(SDAutoUnlockWiFiManager *)self _processRequestQueue];
  }

  return 1;
}

- (void)_invalidateWiFiRequest:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(__CFString *)v4 identifier];
    *buf = 136315650;
    v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
    v29 = 2112;
    v30 = v4;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s request: %@ identifier: %@", buf, 0x20u);
  }

  v7 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v8 = [v7 isEqual:v4];

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

    v9 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
    if (v9 || [(SDAutoUnlockWiFiManager *)self awdlStartFailed])
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

      v22 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
      if ([(SDAutoUnlockWiFiManager *)self awdlStartFailed])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = [(SDAutoUnlockWiFiManager *)self awdlTimerFired];
      *buf = 136316162;
      v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
      if (v24)
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
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Waiting for network before disable. awdlStarting: %@, awdlNetwork: %@, awdlStartFailed: %@, awdlTimerFired: %@", buf, 0x34u);
    }

    v26 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    [v26 setWaitingForNetworkToDisable:1];
  }

  else
  {
    v10 = [(__CFString *)v4 identifier];
    v11 = [NSPredicate predicateWithFormat:@"identifier == %@", v10];

    v12 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
    v13 = [v12 filteredArrayUsingPredicate:v11];
    v14 = [v13 firstObject];

    v15 = auto_unlock_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = [(__CFString *)v14 identifier];
        v18 = [(__CFString *)v14 waitingForNetworkToDisable];
        *buf = 136315906;
        v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v17;
        v33 = 1024;
        LODWORD(v34) = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s removing  non current request: %@ identifier: %@ waitingForNetworkToDisable: %d", buf, 0x26u);
      }

      v15 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
      [v15 removeObject:v14];
    }

    else if (v16)
    {
      v19 = [(__CFString *)v4 identifier];
      *buf = 136315650;
      v28 = "[SDAutoUnlockWiFiManager _invalidateWiFiRequest:]";
      v29 = 2112;
      v30 = v4;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s request(%@) not found !! identifier: %@", buf, 0x20u);
    }
  }

LABEL_16:
}

- (void)scheduleWiFiRequest:(id)a3
{
  v5 = a3;
  v6 = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E608C;
  block[3] = &unk_1008CF8F0;
  v10 = self;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)cancelWiFiRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SDAutoUnlockWiFiManager *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001E62A8;
    v6[3] = &unk_1008CE028;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)updateWiFiRequest:(id)a3 setRangingPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAutoUnlockWiFiManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E6388;
  v11[3] = &unk_1008CE028;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)_processRequestQueue
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDAutoUnlockWiFiManager *)self currentRequest];

  if (v4)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      v7 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      v8 = [v7 identifier];
      *buf = 136315906;
      v23 = "[SDAutoUnlockWiFiManager _processRequestQueue]";
      v24 = 1024;
      *v25 = 324;
      *&v25[4] = 2112;
      *&v25[6] = v6;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %d Already processing request: %@ identifier: %@", buf, 0x26u);
    }
  }

  else
  {
    v9 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
    v5 = [v9 firstObject];

    if (v5)
    {
      v10 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
      [v10 removeObjectAtIndex:0];

      [(SDAutoUnlockWiFiManager *)self setCurrentRequest:v5];
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(SDAutoUnlockWiFiManager *)self wifiRequestQueue];
        *buf = 67109120;
        LODWORD(v23) = [v12 count];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Processing current request, with %d items in the request queue", buf, 8u);
      }

      v13 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      v14 = [v13 queueAvailableHandler];

      if (v14)
      {
        objc_initWeak(buf, self);
        v15 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        v16 = [v15 queueAvailableHandler];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1001E6720;
        v19[3] = &unk_1008D3B00;
        v19[4] = self;
        v5 = v5;
        v20 = v5;
        objc_copyWeak(&v21, buf);
        (v16)[2](v16, v19);

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }

      else
      {
        v17 = auto_unlock_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          *buf = 136315394;
          v23 = "[SDAutoUnlockWiFiManager _processRequestQueue]";
          v24 = 2112;
          *v25 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s no queueAvailableHandler. Invalidating current request %@", buf, 0x16u);
        }

        [(SDAutoUnlockWiFiManager *)self _invalidateCurrentRequest];
      }
    }
  }
}

- (void)_cancelWiFiRequest:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SDAutoUnlockWiFiManager _cancelWiFiRequest:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  if (v4)
  {
    [v4 setInvalidationHandler:0];
    v7 = +[SDAutoUnlockWiFiManager sharedManager];
    [v7 _invalidateWiFiRequest:v4];

    if (([v4 invalidateCalled] & 1) == 0)
    {
      [v4 setInvalidateCalled:1];
      [v4 _invalidate];
    }
  }
}

- (void)_resetManagerState
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

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
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v7 = [v6 identifier];
    v9 = 136315650;
    v10 = "[SDAutoUnlockWiFiManager _invalidateCurrentRequest]";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s current Request: %@ identifier: %@", &v9, 0x20u);
  }

  [(SDAutoUnlockWiFiManager *)self _resetManagerState];
  v8 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  [(SDAutoUnlockWiFiManager *)self _cancelWiFiRequest:v8];

  [(SDAutoUnlockWiFiManager *)self setCurrentRequest:0];
  [(SDAutoUnlockWiFiManager *)self _processRequestQueue];
}

- (void)_startRangingWithNI
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v5 = [v4 rangingPeer];
  v6 = [v5 niRangingPeer];
  v25 = v6;
  v7 = [NSArray arrayWithObjects:&v25 count:1];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SDAutoUnlockWiFiManager *)self niSession];
    v10 = @"YES";
    v20 = "[SDAutoUnlockWiFiManager _startRangingWithNI]";
    v19 = 136315650;
    if (!v9)
    {
      v10 = @"NO";
    }

    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Starting ranging (manager: %@, peers: %@)", &v19, 0x20u);
  }

  v11 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  [v11 rangingTimeout];

  v12 = [NIRangingAuthConfiguration alloc];
  v13 = [v7 objectAtIndexedSubscript:0];
  v14 = [v13 macAddress];
  v15 = [v7 objectAtIndexedSubscript:0];
  v16 = [v15 secureRangingKeyID];
  v17 = [v12 initAsResponder:0 macAddress:v14 key:v16];

  v18 = [(SDAutoUnlockWiFiManager *)self niSession];
  [v18 runWithConfiguration:v17];

  kdebug_trace();
}

- (void)_enableRangeableIfNeededNI
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v5 = [v4 isRangingInitiator];

  if ((v5 & 1) == 0)
  {
    v6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v7 = [v6 rangingPeer];

    if (v7)
    {
      v8 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      v9 = [v8 rangingPeer];
      v10 = [v9 niRangingPeer];

      if (v10)
      {
        v11 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        v12 = [v11 rangingPeer];
        v13 = [v12 niRangingPeer];
        v32 = v13;
        v14 = [NSArray arrayWithObjects:&v32 count:1];

        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(SDAutoUnlockWiFiManager *)self niSession];
          v17 = @"YES";
          v27 = "[SDAutoUnlockWiFiManager _enableRangeableIfNeededNI]";
          v26 = 136315650;
          if (!v16)
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
        v20 = [v19 macAddress];
        v21 = [v14 objectAtIndexedSubscript:0];
        v22 = [v21 secureRangingKeyID];
        v23 = [v18 initAsResponder:1 macAddress:v20 key:v22];

        v24 = [(SDAutoUnlockWiFiManager *)self niSession];
        [v24 runWithConfiguration:v23];

        v25 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        [v25 setRangeable:1];
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
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v5 = [v4 rangeable];

  if (v5)
  {
    v6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v7 = [v6 rangingPeer];
    v8 = [v7 niRangingPeer];
    v20 = v8;
    v9 = [NSArray arrayWithObjects:&v20 count:1];

    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SDAutoUnlockWiFiManager *)self niSession];
      v12 = @"YES";
      v15 = "[SDAutoUnlockWiFiManager _disableRangeableNI]";
      v14 = 136315650;
      if (!v11)
      {
        v12 = @"NO";
      }

      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s stopRangingFromPeers (manager: %@, peers: %@)", &v14, 0x20u);
    }

    v13 = [(SDAutoUnlockWiFiManager *)self niSession];
    [v13 invalidate];

    [(SDAutoUnlockWiFiManager *)self _createNISession];
  }
}

- (void)session:(id)a3 didReceiveRangingAuthRecommendation:(BOOL)a4 forObject:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v11 = [v10 rangingPeer];
    v12 = [v11 niRangingPeer];
    [v7 distance];
    *buf = 136315906;
    v23 = "[SDAutoUnlockWiFiManager session:didReceiveRangingAuthRecommendation:forObject:]";
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v12;
    v28 = 2048;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s should authenticate: %@, peer: %@, distance: %fm", buf, 0x2Au);
  }

  v14 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v15 = [v14 rangingPeer];
  v16 = [v15 niRangingPeer];

  if (v16)
  {
    v17 = [(SDAutoUnlockWiFiManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E75BC;
    block[3] = &unk_1008CF940;
    block[4] = self;
    v20 = v7;
    v21 = v5;
    dispatch_async(v17, block);
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

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(SDAutoUnlockWiFiManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E77EC;
  v8[3] = &unk_1008CE028;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NI session invalidated, restarting session", buf, 2u);
  }

  [(SDAutoUnlockWiFiManager *)self _createNISession];
  if ([v5 code] == -10008)
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
    v8 = [(SDAutoUnlockWiFiManager *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001E79FC;
    v9[3] = &unk_1008CE028;
    v9[4] = self;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

- (void)_startAWDLWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 awdlInfo];
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 identifier];
    v18 = 136315906;
    v19 = "[SDAutoUnlockWiFiManager _startAWDLWithInfo:]";
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Starting AWDL request: %@ identifier: %@ info: %@", &v18, 0x2Au);
  }

  v9 = +[SDStatusMonitor sharedMonitor];
  v10 = [v9 awdlDevice];

  if (!v10)
  {
    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001E9BD8(v4);
    }

    goto LABEL_11;
  }

  [[SDAutoUnlockWiFiManagerContext alloc] initWithRequest:v4 wiFiManager:self];
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
    sub_1001E9B10(v4);
  }

  [(SDAutoUnlockWiFiManager *)self setAwdlStartFailed:1];
  [(SDAutoUnlockWiFiManager *)self setAwdlStarting:0];
  v14 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v15 = [v14 awdlStartedHandler];

  if (v15)
  {
    v16 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v17 = [v16 awdlStartedHandler];
    v17[2](v17, 0, v12);

LABEL_11:
  }

LABEL_13:
}

- (void)_stopAWDL
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];

  if (v4)
  {
    v5 = +[SDStatusMonitor sharedMonitor];
    [v5 awdlDevice];

    v6 = [SDAutoUnlockWiFiManagerContext alloc];
    v7 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    [(SDAutoUnlockWiFiManagerContext *)v6 initWithRequest:v7 wiFiManager:self];

    v8 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
    v9 = WiFiDeviceClientStopNetwork();

    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      v12 = [(SDAutoUnlockWiFiManager *)self awdlNetwork];
      v13 = 136315906;
      v14 = "[SDAutoUnlockWiFiManager _stopAWDL]";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Stopping AWDL currentRequest: %@ network %@, error %d", &v13, 0x26u);
    }

    [(SDAutoUnlockWiFiManager *)self setAwdlNetwork:0];
  }

  [(SDAutoUnlockWiFiManager *)self _resetManagerState];
}

- (void)__handleAWDLDisabledIfNeededForRequest:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v5);

  [(SDAutoUnlockWiFiManager *)self _invalidateAWDLTimer];
  v6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  if (v6)
  {
    v7 = v6;
    v8 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 identifier];
        v12 = 136315650;
        v13 = "[SDAutoUnlockWiFiManager __handleAWDLDisabledIfNeededForRequest:]";
        v14 = 2112;
        v15 = v4;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s AWDL went down. Invalidating current request: %@ identifier: %@", &v12, 0x20u);
      }

      [(SDAutoUnlockWiFiManager *)self _invalidateCurrentRequest];
    }
  }
}

- (void)_restartAWDLTimer
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[SDAutoUnlockWiFiManager _restartAWDLTimer]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Restarting AWDL bring up timer", buf, 0xCu);
  }

  v5 = [(SDAutoUnlockWiFiManager *)self awdlTimer];
  v6 = v5 == 0;

  if (v6)
  {
    objc_initWeak(buf, self);
    v7 = [(SDAutoUnlockWiFiManager *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E84EC;
    v12[3] = &unk_1008CDD98;
    objc_copyWeak(&v13, buf);
    v8 = sub_1001F0548(0, v7, v12);
    [(SDAutoUnlockWiFiManager *)self setAwdlTimer:v8];

    v9 = [(SDAutoUnlockWiFiManager *)self awdlTimer];
    dispatch_resume(v9);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v10 = [(SDAutoUnlockWiFiManager *)self awdlTimer];
  v11 = sub_1001F0530(30.0);
  sub_1001F05F0(v10, v11);
}

- (void)_invalidateAWDLTimer
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDAutoUnlockWiFiManager *)self awdlTimer];

  if (v4)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SDAutoUnlockWiFiManager _invalidateAWDLTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Invalidating AWDL bring up timer", &v7, 0xCu);
    }

    v6 = [(SDAutoUnlockWiFiManager *)self awdlTimer];
    dispatch_source_cancel(v6);

    [(SDAutoUnlockWiFiManager *)self setAwdlTimer:0];
  }
}

- (void)_handleAWDLTimerFired
{
  v3 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SDAutoUnlockWiFiManager _handleAWDLTimerFired]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s AWDL bring up timer fired", &v8, 0xCu);
  }

  v5 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v6 = [v5 waitingForNetworkToDisable];

  if (v6)
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

- (BOOL)_peerFoundInStateInfo:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
  v7 = [v6 rangingPeer];
  v8 = [v7 macAddressData];

  v9 = [v4 objectForKeyedSubscript:@"LINK_CHANGED_PEER_LIST"];
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
        v17 = [v8 isEqualToData:v16];

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

- (void)handleVirtualInterfacesChanged:(id)a3
{
  v4 = a3;
  v5 = [(SDAutoUnlockWiFiManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E8D34;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleVirtualInterfacesChanged:(id)a3
{
  v4 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SDAutoUnlockWiFiManager *)self currentRequest];

  if (v5)
  {
    v6 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v7 = [v6 isRangingInitiator];

    if (v7)
    {
      v8 = +[SDStatusMonitor sharedMonitor];
      v9 = [v8 awdlState];

      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 136315394;
        *&v26[4] = "[SDAutoUnlockWiFiManager _handleVirtualInterfacesChanged:]";
        *&v26[12] = 2112;
        *&v26[14] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Received state from awdl: %@", v26, 0x16u);
      }

      v11 = [v9 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
      v12 = [v11 BOOLValue];

      v13 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      v14 = [v13 calledAWDLStarted];

      v15 = auto_unlock_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"YES";
        if (v12)
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
        if (!v14)
        {
          v16 = @"NO";
        }

        *&v26[22] = 2112;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s linkup: %@, calledAWDLStarted: %@", v26, 0x20u);
      }

      if (v12)
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
          v20 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          [(SDAutoUnlockWiFiManager *)self __handleAWDLDisabledIfNeededForRequest:v20];
        }
      }

      else
      {
        if (v14)
        {
          v19 = 0;
        }

        else
        {
          v21 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          [v21 setCalledAWDLStarted:1];

          v22 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          v23 = [v22 awdlStartedHandler];

          v19 = v23 != 0;
          if (v23)
          {
            v24 = [(SDAutoUnlockWiFiManager *)self currentRequest];
            v25 = [v24 awdlStartedHandler];
            (v25)[2](v25, v9, 0);
          }

          else
          {
            v24 = auto_unlock_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1001E9CD0(self);
            }
          }
        }

        [(SDAutoUnlockWiFiManager *)self _startRangingIfPeerFoundInStateInfo:v9 awdlUpSameTime:v19, *v26, *&v26[16]];
      }
    }

    else
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1001E9C90();
      }
    }
  }
}

- (void)rangingReportEventForWiFiInterfaceWithName:(id)a3 data:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E9184;
  block[3] = &unk_1008CE900;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)handleNetworkStarted:(id)a3 request:(id)a4 error:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SDAutoUnlockWiFiManager *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001E93BC;
  v13[3] = &unk_1008D08B8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_handleNetworkStarted:(id)a3 request:(id)a4 error:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 identifier];
    v24 = 136315650;
    v25 = "[SDAutoUnlockWiFiManager _handleNetworkStarted:request:error:]";
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s request: %@ identifier: %@", &v24, 0x20u);
  }

  [(SDAutoUnlockWiFiManager *)self _invalidateAWDLTimer];
  v13 = [(SDAutoUnlockWiFiManager *)self currentRequest];

  if (v13 == v9)
  {
    [(SDAutoUnlockWiFiManager *)self setAwdlNetwork:v8];
    [(SDAutoUnlockWiFiManager *)self setAwdlStarting:0];
    v14 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v15 = [v14 waitingForNetworkToDisable];

    if (v15)
    {
      [(SDAutoUnlockWiFiManager *)self _invalidateCurrentRequest];
    }

    else
    {
      v16 = [(SDAutoUnlockWiFiManager *)self currentRequest];
      v17 = [v16 calledAWDLStarted];

      if ((v17 & 1) == 0)
      {
        if (a5)
        {
          [(SDAutoUnlockWiFiManager *)self setAwdlStartFailed:1];
          v18 = auto_unlock_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1001E9D74(a5, v18);
          }
        }

        v19 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        [v19 setCalledAWDLStarted:1];

        v20 = [(SDAutoUnlockWiFiManager *)self currentRequest];
        v21 = [v20 awdlStartedHandler];

        if (v21)
        {
          v22 = [(SDAutoUnlockWiFiManager *)self currentRequest];
          v23 = [v22 awdlStartedHandler];
          v23[2](v23, 0, a5);
        }
      }
    }
  }
}

- (void)handleNetworkStoppedWithError:(id)a3 error:(int64_t)a4
{
  v6 = a3;
  v7 = [(SDAutoUnlockWiFiManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E96E4;
  block[3] = &unk_1008CF8F0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_handleNetworkStoppedWithError:(id)a3 error:(int64_t)a4
{
  v5 = a3;
  v6 = [(SDAutoUnlockWiFiManager *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SDAutoUnlockWiFiManager *)self currentRequest];
    v9 = 136315650;
    v10 = "[SDAutoUnlockWiFiManager _handleNetworkStoppedWithError:error:]";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s AWDL disabled request: %@ currentRequest: %@", &v9, 0x20u);
  }

  [(SDAutoUnlockWiFiManager *)self __handleAWDLDisabledIfNeededForRequest:v5];
}

@end
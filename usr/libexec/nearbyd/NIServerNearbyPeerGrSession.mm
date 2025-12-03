@interface NIServerNearbyPeerGrSession
- (NIServerNearbyPeerGrSession)initWithDataSource:(id)source delegate:(id)delegate clientQueue:(id)queue;
- (id).cxx_construct;
- (id)configure;
- (id)printableState;
- (id)run;
- (optional<rose::RoseServiceRequest>)_prepareServiceRequest;
- (shared_ptr<rose::objects::GRSession>)_buildRoseSession:(const void *)session;
- (unint64_t)sipHashForIRK:(id)k;
- (void)_grSessionInvalidatedWithReason:(int)reason;
- (void)_triggerRanging:(id)ranging;
- (void)device:(id)device rediscovered:(id)rediscovered;
- (void)deviceDiscovered:(id)discovered;
- (void)didReceiveNewSolution:(const void *)solution;
- (void)didReceiveRemoteData:(const void *)data;
- (void)invalidate;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status;
- (void)updatePeerData:(const void *)data;
@end

@implementation NIServerNearbyPeerGrSession

- (NIServerNearbyPeerGrSession)initWithDataSource:(id)source delegate:(id)delegate clientQueue:(id)queue
{
  sourceCopy = source;
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = NIServerNearbyPeerGrSession;
  v11 = [(NIServerNearbyPeerGrSession *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_clientQueue, queue);
    getResourcesManager = [sourceCopy getResourcesManager];
    v14 = getResourcesManager;
    if (getResourcesManager)
    {
      [getResourcesManager protobufLogger];
      v15 = v19;
    }

    else
    {
      v15 = 0;
    }

    cntrl = v12->_pbLogger.__cntrl_;
    v12->_pbLogger = v15;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }

    v17 = v12;
  }

  return v12;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  getResourcesManager = [WeakRetained getResourcesManager];
  lifecycleSupervisor = [getResourcesManager lifecycleSupervisor];

  [lifecycleSupervisor setTimeoutOnPeerInactivity:1];
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 doubleForKey:@"NIPeerGR_MaxInactivityBeforeTrackingBeganSeconds"];
  v8 = v7;

  if (v8 <= 0.0)
  {
    v8 = 600.0;
  }

  else
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#peer-gr,NIPeerGR_MaxInactivityBeforeTrackingBeganSeconds from default write: %f", &v15, 0xCu);
    }
  }

  [lifecycleSupervisor setMaxInactivityBeforeTrackingBeganSeconds:v8];
  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 doubleForKey:@"NIPeerGR_MaxInactivityAfterTrackingBeganSeconds"];
  v12 = v11;

  if (v12 <= 0.0)
  {
    v12 = 120.0;
  }

  else
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#peer-gr,NIPeerGR_MaxInactivityAfterTrackingBeganSeconds from default write: %f", &v15, 0xCu);
    }
  }

  [lifecycleSupervisor setMaxInactivityAfterTrackingBeganSeconds:v12];

  return 0;
}

- (id)run
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  dispatch_assert_queue_V2(self->_clientQueue);
  getResourcesManager = [WeakRetained getResourcesManager];
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 doubleForKey:@"PeerInitialScanBurstDurationSecondsOverride"];
  v7 = v6;

  v8 = 30.0;
  if (v7 > 0.0)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#peer-gr,Scan burst duration [initial] set from defaults write: %0.2f seconds", &v14, 0xCu);
    }

    v8 = v7;
  }

  btResource = [getResourcesManager btResource];
  [btResource startAdvertising];

  btResource2 = [getResourcesManager btResource];
  [btResource2 allowScreenOffOperation:1];

  btResource3 = [getResourcesManager btResource];
  [btResource3 startScanningWithBurstPeriod:v8];

  return 0;
}

- (void)deviceDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 138412290;
    *(__p + 4) = discoveredCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#peer-gr,Device discovered for the first time (ranging will be triggered). Device: %@", __p, 0xCu);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    getResourcesManager = [WeakRetained getResourcesManager];
    lifecycleSupervisor = [getResourcesManager lifecycleSupervisor];
    doesClientWantSessionToRun = [lifecycleSupervisor doesClientWantSessionToRun];

    if (doesClientWantSessionToRun)
    {
      getResourcesManager2 = [v7 getResourcesManager];
      lifecycleSupervisor2 = [getResourcesManager2 lifecycleSupervisor];
      isSessionInvalidated = [lifecycleSupervisor2 isSessionInvalidated];

      if (isSessionInvalidated)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004ABE04();
        }
      }

      else
      {
        if (self->_pbLogger.__ptr_)
        {
          v14 = sub_100005288();
          v15 = [NINearbyObject objectFromBluetoothDevice:discoveredCopy];
          if (v15)
          {
            ptr = self->_pbLogger.__ptr_;
            u64Identifier = [discoveredCopy u64Identifier];
            sub_1002D63A8(v15, __p);
            sub_1002E1DCC(ptr, u64Identifier, __p, v14);
            if (*&__p[0])
            {
              *(&__p[0] + 1) = *&__p[0];
              operator delete(*&__p[0]);
            }
          }
        }

        [(NIServerNearbyPeerGrSession *)self _triggerRanging:discoveredCopy];
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ABDD0();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ABE38();
  }
}

- (void)device:(id)device rediscovered:(id)rediscovered
{
  deviceCopy = device;
  rediscoveredCopy = rediscovered;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = rediscoveredCopy;
    v25 = 2112;
    v26 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#peer-gr,Device re-discovered, ranging (re)trigger decision pending. New device: %@. Old device: %@", &v23, 0x16u);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    getResourcesManager = [WeakRetained getResourcesManager];
    lifecycleSupervisor = [getResourcesManager lifecycleSupervisor];
    doesClientWantSessionToRun = [lifecycleSupervisor doesClientWantSessionToRun];

    if (doesClientWantSessionToRun)
    {
      getResourcesManager2 = [v10 getResourcesManager];
      lifecycleSupervisor2 = [getResourcesManager2 lifecycleSupervisor];
      isSessionInvalidated = [lifecycleSupervisor2 isSessionInvalidated];

      if (isSessionInvalidated)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004ABEA0();
        }

        goto LABEL_27;
      }

      if (!self->_grSession.__ptr_)
      {
        v20 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#peer-gr,#retrigger ranging decision: YES. Reason: new session", &v23, 2u);
        }

        goto LABEL_24;
      }

      isLongRangeEnabled = [v10 isLongRangeEnabled];
      if (isLongRangeEnabled)
      {
        u64Identifier = [rediscoveredCopy u64Identifier];
        if (u64Identifier != [deviceCopy u64Identifier])
        {
          v19 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v23) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#peer-gr,#retrigger ranging decision: YES. Reason: ADV address changed in an ND session", &v23, 2u);
          }

LABEL_24:
          [(NIServerNearbyPeerGrSession *)self _triggerRanging:rediscoveredCopy];
          goto LABEL_27;
        }
      }

      else if (*(self->_grSession.__ptr_ + 33))
      {
        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#peer-gr,#retrigger ranging decision: YES. Reason: device is responder in a DATA session", &v23, 2u);
        }

        goto LABEL_24;
      }

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 67109120;
        LODWORD(v24) = isLongRangeEnabled ^ 1;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#peer-gr,#retrigger ranging decision: NO. UAPs available: %d", &v23, 8u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ABE6C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004ABED4();
  }

LABEL_27:
}

- (void)updatePeerData:(const void *)data
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004ABF08();
  }

  if (self->_grSession.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    isLongRangeEnabled = [WeakRetained isLongRangeEnabled];

    if ((isLongRangeEnabled & 1) == 0)
    {
      sub_100340788(self->_grSession.__ptr_, data);
    }
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v2 = objc_opt_new();

  return v2;
}

- (void)didReceiveNewSolution:(const void *)solution
{
  v3 = (solution + 32);
  if ((*(solution + 8) - 1) >= 3)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004ABF48(v3, v6);
    }
  }

  else
  {
    dispatch_assert_queue_V2(self->_clientQueue);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveNewSolution:solution];
  }
}

- (void)didReceiveRemoteData:(const void *)data
{
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didReceiveRemoteData:data];
}

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status
{
  var2 = status.var2;
  v4 = *&status.var0;
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didServiceRequestUpdateStatus:{v4, var2}];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  ptr = self->_grSession.__ptr_;
  if (ptr)
  {
    sub_10033B864(ptr);
    cntrl = self->_grSession.__cntrl_;
    self->_grSession.__ptr_ = 0;
    self->_grSession.__cntrl_ = 0;
    if (cntrl)
    {

      sub_10000AD84(cntrl);
    }
  }
}

- (void)_grSessionInvalidatedWithReason:(int)reason
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(reason, v7);
    sub_1004ABFC4(v7);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didInvalidateUWBSession];
}

- (shared_ptr<rose::objects::GRSession>)_buildRoseSession:(const void *)session
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  dispatch_assert_queue_V2(self->_clientQueue);
  selfCopy = self;
  getContainerUniqueIdentifier = [WeakRetained getContainerUniqueIdentifier];
  sub_100004A08(&__p, [getContainerUniqueIdentifier UTF8String]);

  getResourcesManager = [WeakRetained getResourcesManager];
  if (getResourcesManager)
  {
    [getResourcesManager protobufLogger];
  }

  operator new();
}

- (unint64_t)sipHashForIRK:(id)k
{
  kCopy = k;
  [kCopy bytes];
  v4 = SipHash();

  return v4;
}

- (optional<rose::RoseServiceRequest>)_prepareServiceRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  dispatch_assert_queue_V2(self->_clientQueue);
  getNIConfiguration = [WeakRetained getNIConfiguration];
  v7 = [getNIConfiguration copy];

  debugParameters = [v7 debugParameters];
  if (debugParameters && ([v7 debugParameters], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", @"enableAdditionalUWBSignalFeatures"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, debugParameters, v10))
  {
    debugParameters2 = [v7 debugParameters];
    v12 = [debugParameters2 objectForKey:@"enableAdditionalUWBSignalFeatures"];

    if (v12)
    {
      if ([v12 BOOLValue])
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }
    }

    else
    {
      v13 = 4;
    }
  }

  else
  {
    v13 = 4;
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    getContainerUniqueIdentifier = [WeakRetained getContainerUniqueIdentifier];
    buf[0] = 138412546;
    *&buf[1] = @"no";
    LOWORD(buf[3]) = 2112;
    *(&buf[3] + 2) = getContainerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#peer-gr,Prepare service request. avoidDedicatedAntennas = [%@], Container ID: %@. ", buf, 0x16u);
  }

  v45 = 0;
  v46 = 0;
  v47 = 68354305;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 3;
  v53 = v13;
  v54 = 3;
  v56 = 0;
  v55 = 0;
  v57 = 0;
  v58 = 1;
  v59 = 257;
  v60 = 0;
  v61 = 0;
  v62 = 6;
  v16 = sub_10035D02C();
  v17 = *(v16 + 406);
  v18 = *(v16 + 407);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v17)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AC0E8();
    }

    goto LABEL_36;
  }

  if (!sub_1003299D8(v17, &v45, &v45 + 1, 0))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC074();
    }

LABEL_36:
    retstr->var0.__null_state_ = 0;
    retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    goto LABEL_48;
  }

  debugParameters3 = [v7 debugParameters];
  if (debugParameters3)
  {
    debugParameters4 = [v7 debugParameters];
    v21 = [debugParameters4 objectForKey:@"forceAntennaDiversity"];
    v22 = v21 == 0;

    if (!v22)
    {
      debugParameters5 = [v7 debugParameters];
      v24 = [debugParameters5 objectForKey:@"forceAntennaDiversity"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        debugParameters6 = [v7 debugParameters];
        v27 = [debugParameters6 objectForKey:@"forceAntennaDiversity"];
        bOOLValue = [v27 BOOLValue];

        if (bOOLValue)
        {
          v29 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#peer-gr,* Antenna diversity turned ON from default writes.", buf, 2u);
          }

          LOWORD(v60) = 257;
        }
      }
    }
  }

  if ([WeakRetained isLongRangeEnabled])
  {
    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#peer-gr,Long range enabled.", buf, 2u);
    }

    HIBYTE(v47) = 5;
    BYTE1(v47) = 0;
    BYTE2(v60) = 1;
    v58 = 1;
  }

  getResourcesManager = [WeakRetained getResourcesManager];
  discoveryToken = [getResourcesManager discoveryToken];

  if (discoveryToken)
  {
    peerDiscoveryToken = [v7 peerDiscoveryToken];
    v43 = 0;
    v34 = [WeakRetained shouldInitiate:discoveryToken peerDiscoveryToken:peerDiscoveryToken error:&v43];
    v35 = v43;

    v36 = qword_1009F9820;
    if (!v35)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v38 = @"No";
        if (v34)
        {
          v38 = @"Yes";
        }

        buf[0] = 138412290;
        *&buf[1] = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#peer-gr,Should initiate: %@.", buf, 0xCu);
      }

      if (v34)
      {
        sub_10019C5B4(&v45, buf);
        operator new();
      }

      sub_10019CB3C(&v45, buf);
      operator new();
    }

    v37 = qword_1009F9820;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v40 = [v35 description];
      v41 = v40;
      uTF8String = [v40 UTF8String];
      buf[0] = 136315138;
      *&buf[1] = uTF8String;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#peer-gr,unable to determine initiator: %s", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AC0B4();
    }

    v35 = 0;
  }

  retstr->var0.__null_state_ = 0;
  retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;

LABEL_48:
  if (v18)
  {
    sub_10000AD84(v18);
  }

  return result;
}

- (void)_triggerRanging:(id)ranging
{
  rangingCopy = ranging;
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    getResourcesManager = [WeakRetained getResourcesManager];
    if (self->_grSession.__ptr_)
    {
LABEL_11:
      v11 = +[NSUserDefaults standardUserDefaults];
      [v11 doubleForKey:@"PeerRangingTriggerScanBurstDurationSecondsOverride"];
      v13 = v12;

      if (v13 <= 0.0)
      {
        v13 = 60.0;
      }

      else
      {
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#peer-gr,Scan burst duration [ranging trigger] set from defaults write: %0.2f seconds", buf, 0xCu);
        }
      }

      btResource = [getResourcesManager btResource];
      [btResource startScanningWithBurstPeriod:v13];

      if (sub_10033BEE8(self->_grSession.__ptr_))
      {
        dispatch_assert_queue_V2(self->_clientQueue);
        if ([v6 isLongRangeEnabled])
        {
          btAdvertisingAddress = [rangingCopy btAdvertisingAddress];
          v25 = btAdvertisingAddress;
          v26 = WORD2(btAdvertisingAddress);
          *buf = 2;
          buf[4] = 0;
          v23 = 0;
          v24 = 0;
          v27 = 1;
          v28 = 1;
        }

        else
        {
          buf[0] = 0;
          v28 = 0;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0;
        v17 = sub_10034024C(self->_grSession.__ptr_, buf);
      }

      else
      {
        btAdvertisingAddress2 = [rangingCopy btAdvertisingAddress];
        v25 = btAdvertisingAddress2;
        v26 = WORD2(btAdvertisingAddress2);
        *buf = 2;
        buf[4] = 0;
        v23 = 0;
        v24 = 0;
        v27 = 1;
        v28 = 1;
        v29 = 0;
        v30 = 0;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0;
        v17 = sub_10034024C(self->_grSession.__ptr_, buf);
      }

      v19 = v17;
      if (v17)
      {
        v20 = qword_1009F9820;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100342F8C(v19, buf);
          sub_1004AC150(buf);
        }
      }

LABEL_25:

      goto LABEL_26;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AC11C();
    }

    [(NIServerNearbyPeerGrSession *)self _prepareServiceRequest];
    if (v35 == 1)
    {
      [(NIServerNearbyPeerGrSession *)self _buildRoseSession:buf];
      v8 = v21;
      v21 = 0;
      cntrl = self->_grSession.__cntrl_;
      self->_grSession = v8;
      if (cntrl)
      {
        sub_10000AD84(cntrl);
      }
    }

    else
    {
      v10 = self->_grSession.__cntrl_;
      self->_grSession.__ptr_ = 0;
      self->_grSession.__cntrl_ = 0;
      if (!v10)
      {
        goto LABEL_27;
      }

      sub_10000AD84(v10);
    }

    if (self->_grSession.__ptr_)
    {
      goto LABEL_11;
    }

LABEL_27:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AC1A8();
    }

    goto LABEL_25;
  }

LABEL_26:
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
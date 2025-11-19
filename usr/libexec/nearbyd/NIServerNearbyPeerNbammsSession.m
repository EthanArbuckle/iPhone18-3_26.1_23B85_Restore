@interface NIServerNearbyPeerNbammsSession
+ (void)generateSOSBeaconDataForSubject:(BOOL)a3 matchingPeerData:(id)a4 completion:(id)a5;
- (NIServerNearbyPeerNbammsSession)initWithDataSource:(id)a3 delegate:(id)a4 clientQueue:(id)a5;
- (float)_adjustDutyCycleForInterfaceDelays:(float)a3 schedulingInterval:(unsigned int)a4;
- (float)_getDutyCycleForTriggeredDutyCycledAcquisition;
- (id).cxx_construct;
- (id)_configureForGenericUseCase;
- (id)_configureForSOSBeacon;
- (id)_triggerRanging;
- (id)configure;
- (id)printableState;
- (id)run;
- (optional<SecondarySchedulingParameters>)_getSecondarySchedulingParameters;
- (optional<unsigned)_getDitherConst;
- (shared_ptr<rose::objects::NBAMMSSession>)_buildRoseSession:(const void *)a3;
- (unsigned)_getNbUwbAcquisitionBandChannel:(id)a3;
- (unsigned)_getNumMMSFragments:(id)a3;
- (unsigned)_getRangingTimeoutWithKey:(id)a3 timeoutIfNoOverride:(unsigned __int16)a4;
- (unsigned)_getSchedulingIntervalForTriggeredDutyCycledAcquisition;
- (void)_initializeCryptoSessionsWithSessionKey:(id)a3 andSessionIdentifier:(id)a4;
- (void)_nbammsSessionInvalidatedWithReason:(int)a3;
- (void)didReceiveNewSolution:(const void *)a3;
- (void)didReceiveRemoteData:(const void *)a3;
- (void)didReceiveUnsuccessfulSolution:(const void *)a3;
- (void)invalidate;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)a3;
- (void)updatePeerData:(const void *)a3;
@end

@implementation NIServerNearbyPeerNbammsSession

- (NIServerNearbyPeerNbammsSession)initWithDataSource:(id)a3 delegate:(id)a4 clientQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = NIServerNearbyPeerNbammsSession;
  v11 = [(NIServerNearbyPeerNbammsSession *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, v8);
    objc_storeWeak(&v12->_delegate, v9);
    objc_storeStrong(&v12->_clientQueue, a5);
    v13 = [v8 getResourcesManager];
    v14 = v13;
    if (v13)
    {
      [v13 protobufLogger];
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

    *&v12->_useTestNbammsMode = 0;
    v17 = v12;
  }

  return v12;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained getNIConfiguration];
  v5 = [v4 useCase];

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [(NIServerNearbyPeerNbammsSession *)self _configureForSOSBeacon];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB310();
      }

      v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    }
  }

  else
  {
    v6 = [(NIServerNearbyPeerNbammsSession *)self _configureForGenericUseCase];
  }

  return v6;
}

- (id)_configureForGenericUseCase
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_nbammsSession.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained getNIConfiguration];
    v6 = [v5 copy];

    if (([v6 isExtendedDistanceMeasurementEnabled] & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB378();
      }

      v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      goto LABEL_44;
    }

    v7 = [WeakRetained getResourcesManager];
    v8 = [v7 lifecycleSupervisor];

    [v8 setTimeoutOnPeerInactivity:1];
    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 doubleForKey:@"NIPeerEDM_MaxInactivityBeforeTrackingBeganSeconds"];
    v11 = v10;

    if (v11 <= 0.0)
    {
      v11 = 600.0;
    }

    else
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#peer-nba,NIPeerEDM_MaxInactivityBeforeTrackingBeganSeconds from default write: %f", buf, 0xCu);
      }
    }

    [v8 setMaxInactivityBeforeTrackingBeganSeconds:v11];
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 doubleForKey:@"NIPeerEDM_MaxInactivityAfterTrackingBeganSeconds"];
    v15 = v14;

    if (v15 <= 0.0)
    {
      v15 = 120.0;
    }

    else
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#peer-nba,NIPeerEDM_MaxInactivityAfterTrackingBeganSeconds from default write: %f", buf, 0xCu);
      }
    }

    [v8 setMaxInactivityAfterTrackingBeganSeconds:v15];
    v17 = [v6 debugParameters];
    v18 = [v17 objectForKey:@"useTestNbammsMode"];
    v19 = v18 == 0;

    if (!v19)
    {
      v20 = [v6 debugParameters];
      v21 = [v20 objectForKey:@"useTestNbammsMode"];
      self->_useTestNbammsMode = [v21 BOOLValue];

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_useTestNbammsMode)
        {
          v23 = "Y";
        }

        else
        {
          v23 = "N";
        }

        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#peer-nba,NBAMMS test mode used: %s", buf, 0xCu);
      }
    }

    v24 = sub_1000054A8();
    v25 = sub_1000149D4(v24);
    v26 = +[NSUserDefaults standardUserDefaults];
    v27 = [v26 BOOLForKey:@"DisableNIPeerExtendedDistanceOverride"];

    if (v27)
    {
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#peer-nba,* disable extended distance measurement through default writes.", buf, 2u);
      }

      goto LABEL_39;
    }

    if (!v25)
    {
LABEL_39:
      v42 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#peer-nba,Invalidating NBAMMS session configuration - device does not support NBAMMS", buf, 2u);
      }

      v43 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
      goto LABEL_42;
    }

    v29 = [v6 peerDiscoveryToken];
    v30 = [v29 deviceCapabilities];
    v31 = [v30 supportsExtendedDistanceMeasurement];

    v32 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v33 = "N";
      if (v31)
      {
        v33 = "Y";
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#peer-nba,Peer supports NBAMMS %s", buf, 0xCu);
    }

    if ((v31 & 1) != 0 || self->_useTestNbammsMode)
    {
      v34 = [v6 peerDiscoveryToken];
      v35 = v34 == 0;

      if (!v35)
      {
        v36 = [WeakRetained getResourcesManager];
        v37 = [v36 discoveryToken];

        if (!v37)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BB414();
          }

          v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
          goto LABEL_83;
        }

        v38 = [v6 peerDiscoveryToken];
        v64 = 0;
        v39 = [WeakRetained shouldInitiate:v37 peerDiscoveryToken:v38 error:&v64];
        v63 = v64;
        self->_isInitiator = v39;

        if (v63)
        {
          v40 = qword_1009F9820;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v59 = [v63 description];
            v60 = v59;
            v61 = [v59 UTF8String];
            *buf = 136315138;
            *&buf[4] = v61;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "#peer-nba,Unable to determine initiator: %s", buf, 0xCu);
          }

          v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
        }

        else
        {
          isInitiator = self->_isInitiator;
          v49 = v37;
          if (!isInitiator)
          {
            v49 = [v6 peerDiscoveryToken];
          }

          v62 = [(NIServerNearbyPeerNbammsSession *)self _getNbUwbAcquisitionBandChannel:v49];
          if (!isInitiator)
          {
          }

          v50 = [(NIServerNearbyPeerNbammsSession *)self _getNumMMSFragments:v37];
          v51 = [v6 peerDiscoveryToken];
          v52 = [(NIServerNearbyPeerNbammsSession *)self _getNumMMSFragments:v51];

          if (v52 >= v50)
          {
            v53 = v50;
          }

          else
          {
            v53 = v52;
          }

          v54 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *&buf[4] = v50;
            *&buf[8] = 1024;
            *&buf[10] = v52;
            *&buf[14] = 1024;
            *&buf[16] = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#peer-nba,selfMMSNumFragments: %d, peerMMSNumFragments: %d, sharedMMSNumFragments: %d", buf, 0x14u);
          }

          v55 = [v6 peerDiscoveryToken];
          [(NIServerNearbyPeerNbammsSession *)self _prepareGenericUseCaseServiceRequestForDiscoveryToken:v55 nbUwbAcquisitionBandChannel:v62 mmsNumFragments:v53];
          memcpy(buf, __src, 0x241uLL);

          if (buf[576] == 1)
          {
            [(NIServerNearbyPeerNbammsSession *)self _buildRoseSession:buf];
            v56 = __src[0];
            __src[0] = 0uLL;
            cntrl = self->_nbammsSession.__cntrl_;
            self->_nbammsSession = v56;
            if (cntrl)
            {
              sub_10000AD84(cntrl);
              if (*(&__src[0] + 1))
              {
                sub_10000AD84(*(&__src[0] + 1));
              }

              ptr = self->_nbammsSession.__ptr_;
            }

            else
            {
              ptr = v56.__ptr_;
            }

            if (ptr)
            {
              v3 = 0;
LABEL_82:

LABEL_83:
              goto LABEL_43;
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
            {
              sub_1004BB3E0();
            }
          }

          else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004BB3AC();
          }

          v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
        }

        v3 = v41;
        goto LABEL_82;
      }

      v45 = -5888;
    }

    else
    {
      v46 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_useTestNbammsMode)
        {
          v47 = "Y";
        }

        else
        {
          v47 = "N";
        }

        *buf = 136315138;
        *&buf[4] = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#peer-nba,Invalidating NBAMMS session configuration - peer does not support NBAMMS; testNbammsMode = %s", buf, 0xCu);
      }

      v45 = -5881;
    }

    v43 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v45 userInfo:0];
LABEL_42:
    v3 = v43;
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB344();
  }

  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5880 userInfo:0];
LABEL_45:

  return v3;
}

- (id)_configureForSOSBeacon
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB448();
  }

  v5 = NSLocalizedDescriptionKey;
  v6 = @"configure for unsupported use case.";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v2];

  return v3;
}

- (id)run
{
  if (self->_nbammsSession.__ptr_)
  {
    dispatch_assert_queue_V2(self->_clientQueue);
    v3 = [(NIServerNearbyPeerNbammsSession *)self _triggerRanging];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BB4C8();
    }

    v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
  }

  return v3;
}

- (void)updatePeerData:(const void *)a3
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BB4FC();
  }

  ptr = self->_nbammsSession.__ptr_;
  if (ptr && !self->_useTestNbammsMode)
  {
    if (self->_selfEncryptionSession)
    {
      v6 = [NSData dataWithBytes:*a3 length:*(a3 + 1) - *a3];
      v7 = [(NIServerCryptoSession *)self->_selfEncryptionSession encrypt:v6];
      v8 = v7;
      if (v7 && [v7 length])
      {
        sub_100025100(__p, [v8 length]);
        [v8 getBytes:__p[0] length:{objc_msgSend(v8, "length")}];
        sub_100340788(self->_nbammsSession.__ptr_, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB530();
      }
    }

    else
    {
      sub_100340788(ptr, a3);
    }
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = objc_opt_new();
  selfEncryptionSession = self->_selfEncryptionSession;
  if (selfEncryptionSession)
  {
    selfEncryptionSession = (self->_peerDecryptionSession != 0);
  }

  v5 = [NSString stringWithFormat:@"Test-NBAMMS: %d. Initiator: %d. Crypto enabled: %d", self->_useTestNbammsMode, self->_isInitiator, selfEncryptionSession];
  [v3 addObject:v5];

  ptr = self->_nbammsSession.__ptr_;
  if (ptr)
  {
    [v3 addObject:@"NBAMMS misc session params:"];
    sub_1002EC4A4(*(ptr + 47), __p);
    if (v42 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = [NSString stringWithFormat:@"    use_case: %s", v7];
    [v3 addObject:v8];

    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(ptr + 545) == 1)
    {
      v9 = *(ptr + 544);
    }

    else
    {
      v9 = 255;
    }

    if (*(ptr + 547) == 1)
    {
      v10 = *(ptr + 546);
    }

    else
    {
      v10 = 255;
    }

    v11 = [NSString stringWithFormat:@"    nb_ant_mask: tx %d, rx %d", v9, v10];
    [v3 addObject:v11];

    if (*(ptr + 131) == 1)
    {
      v12 = *(ptr + 130);
    }

    else
    {
      v12 = 255;
    }

    if (*(ptr + 133) == 1)
    {
      v13 = *(ptr + 132);
    }

    else
    {
      v13 = 255;
    }

    if (*(ptr + 135) == 1)
    {
      v14 = *(ptr + 134);
    }

    else
    {
      v14 = 255;
    }

    v15 = [NSString stringWithFormat:@"    mms_ant_mask: tx %d, rx %d, sync %d", v12, v13, v14];
    [v3 addObject:v15];

    if (*(ptr + 195) == 1)
    {
      v16 = *(ptr + 194);
    }

    else
    {
      v16 = 255;
    }

    if (*(ptr + 197) == 1)
    {
      v17 = *(ptr + 196);
    }

    else
    {
      v17 = 255;
    }

    if (*(ptr + 199) == 1)
    {
      v18 = *(ptr + 198);
    }

    else
    {
      v18 = 255;
    }

    v19 = [NSString stringWithFormat:@"    mms_ant_mask2: tx %d, rx %d, sync %d", v16, v17, v18];
    [v3 addObject:v19];

    if (*(ptr + 601) == 1)
    {
      v20 = *(ptr + 600);
    }

    else
    {
      v20 = 255;
    }

    v21 = [NSString stringWithFormat:@"    mms_antenna_diversity_pattern: %d", v20];
    [v3 addObject:v21];

    if (*(ptr + 560) == 1)
    {
      v22 = *(ptr + 279);
    }

    else
    {
      v22 = 0xFFFFLL;
    }

    v23 = [NSString stringWithFormat:@"    mms_pkt_type: %d", v22];
    [v3 addObject:v23];

    if (*(ptr + 554) == 1)
    {
      v24 = *(ptr + 276);
    }

    else
    {
      v24 = 0xFFFFLL;
    }

    v25 = [NSString stringWithFormat:@"    nb_bch: %d", v24];
    [v3 addObject:v25];

    if (*(ptr + 578) == 1)
    {
      v26 = *(ptr + 288);
    }

    else
    {
      v26 = 0xFFFFLL;
    }

    v27 = [NSString stringWithFormat:@"    nb_ch_sel_mask: %d", v26];
    [v3 addObject:v27];

    if (*(ptr + 575) == 1)
    {
      v28 = *(ptr + 574);
    }

    else
    {
      v28 = 255;
    }

    v29 = [NSString stringWithFormat:@"    mms_nfragments: %d", v28];
    [v3 addObject:v29];

    if (*(ptr + 573) == 1)
    {
      v30 = *(ptr + 572);
    }

    else
    {
      v30 = 255;
    }

    v31 = [NSString stringWithFormat:@"    mms_slot_sz_250us: %d", v30];
    [v3 addObject:v31];

    if (*(ptr + 152) == 1)
    {
      v32 = *(ptr + 75);
    }

    else
    {
      v32 = 0xFFFFLL;
    }

    v33 = [NSString stringWithFormat:@"    debug_flags: %d", v32];
    [v3 addObject:v33];

    if (*(ptr + 603) == 1)
    {
      v34 = *(ptr + 602);
    }

    else
    {
      v34 = 255;
    }

    v35 = [NSString stringWithFormat:@"    misc_settings: %d", v34];
    [v3 addObject:v35];

    v36 = [NSString stringWithFormat:@"    discoveryTimeout: %d s", *(ptr + 52)];
    [v3 addObject:v36];

    v37 = [NSString stringWithFormat:@"    reacquistionTimeout: %d s", *(ptr + 53)];
    [v3 addObject:v37];

    v38 = [NSString stringWithFormat:@"    eventWatchdogTimeout: %d ms", *(ptr + 119)];
    [v3 addObject:v38];

    v39 = [NSString stringWithFormat:@"    jobOptions: 0x%08x", *(ptr + 25)];
    [v3 addObject:v39];
  }

  else
  {
    [v3 addObject:@"No NBAMMS session"];
  }

  return v3;
}

- (void)didReceiveNewSolution:(const void *)a3
{
  v3 = (a3 + 32);
  if (((*(a3 + 8) - 1) & 0xFFFFFFFD) != 0)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BB564(v3, v4);
    }
  }

  else
  {
    dispatch_assert_queue_V2(self->_clientQueue);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveNewSolution:a3];
  }
}

- (void)didReceiveUnsuccessfulSolution:(const void *)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didReceiveUnsuccessfulSolution:a3];
}

- (void)didReceiveRemoteData:(const void *)a3
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BB5E0();
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (self->_peerDecryptionSession)
  {
    v7 = [NSData dataWithBytes:*(a3 + 1) length:*(a3 + 2) - *(a3 + 1)];
    v8 = [(NIServerCryptoSession *)self->_peerDecryptionSession decrypt:v7];
    v9 = v8;
    if (v8 && [v8 length])
    {
      v13 = *a3;
      v15 = 0;
      v16 = 0;
      __p = 0;
      sub_100009A48(&__p, *(a3 + 1), *(a3 + 2), *(a3 + 2) - *(a3 + 1));
      v17 = *(a3 + 2);
      v10 = [v9 length];
      v12 = 0;
      v11 = __p;
      if (v10 <= v15 - __p)
      {
        if (v10 < v15 - __p)
        {
          v15 = &v10[__p];
        }
      }

      else
      {
        sub_100250E48(&__p, &v10[-(v15 - __p)], &v12);
        v11 = __p;
      }

      [v9 getBytes:v11 length:{objc_msgSend(v9, "length")}];
      [v6 didReceiveRemoteData:&v13];
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BB614();
    }
  }

  else
  {
    [WeakRetained didReceiveRemoteData:a3];
  }
}

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)a3
{
  var2 = a3.var2;
  v4 = *&a3.var0;
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didServiceRequestUpdateStatus:{v4, var2}];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  ptr = self->_nbammsSession.__ptr_;
  if (ptr)
  {
    sub_10033B864(ptr);
    cntrl = self->_nbammsSession.__cntrl_;
    self->_nbammsSession.__ptr_ = 0;
    self->_nbammsSession.__cntrl_ = 0;
    if (cntrl)
    {

      sub_10000AD84(cntrl);
    }
  }
}

- (id)_triggerRanging
{
  if (self->_nbammsSession.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v3 = [WeakRetained getNIConfiguration];
    v4 = [v3 copy];

    v37 = v4;
    dispatch_assert_queue_V2(self->_clientQueue);
    v5 = [v4 debugParameters];
    v38 = 10000000;

    if (v5)
    {
      v6 = [v4 debugParameters];
      v7 = [v6 objectForKey:@"startTimeUncertainty"];

      if (v7)
      {
        v38 = [v7 intValue];
      }
    }

    v8 = [(NIServerNearbyPeerNbammsSession *)self _getSchedulingIntervalForTriggeredDutyCycledAcquisition];
    [(NIServerNearbyPeerNbammsSession *)self _getDutyCycleForTriggeredDutyCycledAcquisition];
    v10 = v9;
    v11 = [(NIServerNearbyPeerNbammsSession *)self _getSecondarySchedulingParameters];
    v14 = v13;
    v15 = *&v13;
    v16 = HIDWORD(v13) & 1;
    if (!v8 || v10 > 1.0)
    {
      goto LABEL_19;
    }

    *&v12 = v10;
    [(NIServerNearbyPeerNbammsSession *)self _adjustDutyCycleForInterfaceDelays:v8 schedulingInterval:v12];
    v10 = v17;
    if ((v14 & 0x100000000) != 0)
    {
      v18 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#peer-nba,Requested backoff acquisition policy, processing secondary scheduling parameters", buf, 2u);
      }

      if (v10 >= v15)
      {
        LODWORD(v16) = 1;
        goto LABEL_19;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB648();
      }
    }

    LODWORD(v16) = 0;
LABEL_19:
    if (self->_isInitiator)
    {
      v20 = [(NIServerNearbyPeerNbammsSession *)self _getDitherConst];
      v21 = v20;
      v22 = HIBYTE(v20);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v21;
      *buf = 67109632;
      if ((v22 & 1) == 0)
      {
        v24 = 0;
      }

      v57 = v8;
      v58 = 2048;
      *v59 = v10;
      *&v59[8] = 1024;
      *&v59[10] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#peer-nba,Primary scheduling params: Interval(us)=%d, Duty Cycle=%f, Dither const=%d", buf, 0x18u);
    }

    if (v16)
    {
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v57 = v11;
        v58 = 1024;
        *v59 = HIDWORD(v11);
        *&v59[4] = 2048;
        *&v59[6] = v15;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#peer-nba,Secondary scheduling params: Delay(us)=%d, Interval(us)=%d, Duty Cycle=%f", buf, 0x18u);
      }
    }

    buf[0] = 0;
    v60 = 0;
    v61 = 17000;
    v62 = 1;
    v63 = v38;
    v64 = v8;
    v65 = v10;
    v66 = 0;
    v67 = v21 | (v22 << 8);
    v68 = 0;
    memset(v70, 0, sizeof(v70));
    v69 = 0;
    v45 = 0;
    v44 = 0;
    v40 = 2;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v46 = 1;
    v47 = 1;
    v48 = 17000;
    v49 = 1;
    v50 = v38;
    v51 = v8;
    v52 = v10;
    v53 = 0;
    v54 = v67;
    memset(v55, 0, sizeof(v55));
    if (v16)
    {
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#peer-nba,Resetting NBAMMSStartOptions", v39, 2u);
      }

      v45 = 0;
      v44 = 0;
      v40 = 2;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v46 = 1;
      v47 = 1;
      v48 = 17000;
      v49 = 1;
      v50 = v38;
      v51 = v8;
      v52 = v10;
      v53 = 0;
      v54 = v21 | (v22 << 8);
      *v55 = 0;
      *&v55[4] = 0;
      *&v55[6] = &_mh_execute_header & 0xFFFFFFFF00000000 | v11;
      *&v55[14] = &_mh_execute_header & 0xFFFFFFFF00000000 | HIDWORD(v11);
      *&v55[22] = v14;
      v55[26] = 1;
    }

    useTestNbammsMode = self->_useTestNbammsMode;
    v28 = qword_1009F9820;
    v29 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (useTestNbammsMode)
    {
      if (v29)
      {
        v30 = v21;
        if ((v22 & 1) == 0)
        {
          v30 = 0;
        }

        *v39 = 67109120;
        *&v39[4] = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#peer-nba,startRanging dither = %d", v39, 8u);
      }

      v31 = buf;
    }

    else
    {
      if (v29)
      {
        v32 = v21;
        if ((v22 & 1) == 0)
        {
          v32 = 0;
        }

        *v39 = 67109120;
        *&v39[4] = v32;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#peer-nba,startRanging dither = %d", v39, 8u);
      }

      v31 = &v40;
    }

    v33 = sub_10034024C(self->_nbammsSession.__ptr_, v31);
    if (v33)
    {
      v34 = qword_1009F9820;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100342F8C(v33, v39);
        sub_1004BB67C(v39);
      }

      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004BB6D4();
  }

  v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
LABEL_50:

  return v19;
}

- (void)_nbammsSessionInvalidatedWithReason:(int)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(a3, v7);
    sub_1004BB708(v7);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didInvalidateUWBSession];
}

- (shared_ptr<rose::objects::NBAMMSSession>)_buildRoseSession:(const void *)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&v3->_dataSource);
  dispatch_assert_queue_V2(v3->_clientQueue);
  v5 = [WeakRetained getContainerUniqueIdentifier];
  sub_100004A08(&__p, [v5 UTF8String]);

  operator new();
}

- (unsigned)_getRangingTimeoutWithKey:(id)a3 timeoutIfNoOverride:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:v5];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 intValue];
    v9 = qword_1009F9820;
    v10 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v8 < 0x10000)
    {
      if (v10)
      {
        v16 = 138412546;
        v17 = v5;
        v18 = 1024;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#peer-nba,Timeout override found for key %@. Returning %d", &v16, 0x12u);
      }

      LOWORD(v4) = v8;
    }

    else
    {
      LOWORD(v4) = -1;
      if (v10)
      {
        v16 = 138412802;
        v17 = v5;
        v18 = 1024;
        v19 = v8;
        v20 = 1024;
        v21 = 0xFFFF;
        v11 = "#peer-nba,Timeout override found for key %@. Override value %d exceeds max value %d. Returning max value.";
        v12 = v9;
        v13 = 24;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
      }
    }
  }

  else
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 1024;
      v19 = v4;
      v11 = "#peer-nba,No timeout override found for key %@. Returning timeout %d";
      v12 = v14;
      v13 = 18;
      goto LABEL_8;
    }
  }

  return v4;
}

- (unsigned)_getSchedulingIntervalForTriggeredDutyCycledAcquisition
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained getNIConfiguration];
  v5 = [v4 copy];

  if (self->_isInitiator)
  {
    v6 = 30000;
  }

  else
  {
    v6 = 29000;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 objectForKey:@"FindingSchedulingInterval"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v11 intValue];
    }
  }

  v12 = [v5 debugParameters];

  if (v12)
  {
    v13 = [v5 debugParameters];
    v14 = [v13 objectForKey:@"schedulingInterval"];

    if (v14)
    {
      v9 = [v14 intValue];
    }
  }

  return v9;
}

- (float)_getDutyCycleForTriggeredDutyCycledAcquisition
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained getNIConfiguration];
  v5 = [v4 copy];

  isInitiator = self->_isInitiator;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];

  if ((v8 | isInitiator))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 0.1034;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 objectForKey:@"FindingDutyCycle"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      v9 = v12;
    }
  }

  v13 = [v5 debugParameters];

  if (v13)
  {
    v14 = [v5 debugParameters];
    v15 = [v14 objectForKey:@"dutyCycle"];

    if (v15)
    {
      [v15 floatValue];
      v9 = v16;
    }
  }

  return v9;
}

- (float)_adjustDutyCycleForInterfaceDelays:(float)a3 schedulingInterval:(unsigned int)a4
{
  v5 = ((a4 - 17000) - 2000);
  if ((a4 * a3) > v5)
  {
    v6 = qword_1009F9820;
    a3 = v5 / a4;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#peer-nba,Provided duty cycle leads to scan window > scheduling interval - (start time offset + interface delays), using entire available scan window", v8, 2u);
    }
  }

  return a3;
}

- (optional<unsigned)_getDitherConst
{
  if (!self->_isInitiator)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#peer-nba,Dithered duty cycled acquisition not valid for responder";
      v7 = buf;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    v9 = 0;
    return (v9 | (v8 << 8));
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"FindingDisableDitheredAcq"];

  if (v4)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v6 = "#peer-nba,Dithered duty cycled acquisition is disabled using defaults write";
      v7 = &v19;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v11 = [WeakRetained getNIConfiguration];
  v12 = [v11 copy];

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 objectForKey:@"FindingDitherConst"];

  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v14 intValue];
  }

  else
  {
    v9 = 3;
  }

  v15 = [v12 debugParameters];

  if (v15)
  {
    v16 = [v12 debugParameters];
    v17 = [v16 objectForKey:@"ditherConst"];

    if (v17)
    {
      v9 = [v17 intValue];
    }
  }

  v8 = 1;
  return (v9 | (v8 << 8));
}

- (optional<SecondarySchedulingParameters>)_getSecondarySchedulingParameters
{
  if (self->_isInitiator)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BB854();
    }

    v2 = 0;
    v3 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained getNIConfiguration];
    v7 = [v6 copy];

    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];

    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v47 = WeakRetained;
      v15 = +[NSUserDefaults standardUserDefaults];
      v16 = [v15 objectForKey:@"FindingSecondarySchedulingDelay"];

      v45 = v16;
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = [v16 intValue];
        v18 = 1;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v19 = [v7 debugParameters];

      if (v19)
      {
        v20 = [v7 debugParameters];
        v21 = [v20 objectForKey:@"secondarySchedulingDelay"];

        if (v21)
        {
          v17 = [v21 intValue];
          v18 = 1;
        }
      }

      if ((v18 & (v17 != 0)) != 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = 30000000;
      }

      v23 = +[NSUserDefaults standardUserDefaults];
      v24 = [v23 objectForKey:@"FindingSecondarySchedulingInterval"];

      if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v25 = [v24 intValue];
        v26 = 1;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      v27 = [v7 debugParameters];

      if (v27)
      {
        v28 = [v7 debugParameters];
        v29 = [v28 objectForKey:@"secondarySchedulingInterval"];

        if (v29)
        {
          v25 = [v29 intValue];
          v26 = 1;
        }
      }

      if ((v26 & (v25 != 0)) != 0)
      {
        v30 = v25;
      }

      else
      {
        v30 = 59000;
      }

      v31 = +[NSUserDefaults standardUserDefaults];
      v32 = [v31 objectForKey:@"FindingSecondaryDutyCycle"];

      v33 = 0.0;
      if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v32 floatValue];
        v33 = v34;
        v35 = 1;
      }

      else
      {
        v35 = 0;
      }

      v36 = [v7 debugParameters];

      if (v36)
      {
        v37 = [v7 debugParameters];
        v38 = [v37 objectForKey:@"secondaryDutyCycle"];

        if (v38)
        {
          [v38 floatValue];
          v33 = v39;
          v35 = 1;
        }
      }

      HIDWORD(v40) = 0;
      v42 = v33 <= 1.0 && v33 > 0.0;
      LODWORD(v40) = 1028658089;
      if ((v35 & v42) != 0)
      {
        *&v40 = v33;
      }

      [(NIServerNearbyPeerNbammsSession *)self _adjustDutyCycleForInterfaceDelays:v30 schedulingInterval:v40];
      v44 = v43;
      v14 = v22 & 0xFFFFFF00;

      v13 = v22;
      v10 = v30 << 32;
      v11 = v44;
      v12 = &_mh_execute_header;
      WeakRetained = v47;
    }

    v2 = v10 | v14 | v13;
    v3 = v12 | v11;
  }

  *&result.var0.var1.var2 = v3;
  *&result.var0.var0 = v2;
  return result;
}

- (unsigned)_getNbUwbAcquisitionBandChannel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_useTestNbammsMode)
  {
    v6 = 5;
  }

  else
  {
    v7 = [v4 objectInRawTokenOPACKDictForKey:&off_1009C40D0];

    if (v7)
    {
      v8 = [v5 objectInRawTokenOPACKDictForKey:&off_1009C40D0];
      v6 = [v8 integerValue];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB888();
      }

      v6 = 2;
    }
  }

  if (self->_useTestNbammsMode)
  {
    v9 = 1;
  }

  else
  {
    v9 = 6;
  }

  LOBYTE(v15) = v9;
  *(&v15 + 1) = 0;
  LOWORD(v16) = v6;
  BYTE2(v16) = 1;
  v10 = sub_100428478(&v15);
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    useTestNbammsMode = self->_useTestNbammsMode;
    isInitiator = self->_isInitiator;
    v15 = 67109888;
    v16 = useTestNbammsMode;
    v17 = 1024;
    v18 = isInitiator;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#peer-nba,startRangingWithPeer: testMode: %d, isInitiator: %d, NapChIdx: %d, NapBch: %d", &v15, 0x1Au);
  }

  return v10;
}

- (unsigned)_getNumMMSFragments:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_useTestNbammsMode)
  {
    v7 = [v4 objectInRawTokenOPACKDictForKey:&off_1009C40E8];

    if (v7)
    {
      v8 = [v5 objectInRawTokenOPACKDictForKey:&off_1009C40E8];
      v6 = [v8 integerValue];

      goto LABEL_6;
    }

    v6 = 16;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    sub_1004BB904();
  }

  v6 = 16;
LABEL_6:

  return v6;
}

- (void)_initializeCryptoSessionsWithSessionKey:(id)a3 andSessionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 BOOLForKey:@"FindingDisableCrypto"], v8, v9))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#peer-nba,#crypto Initialization disabled", &v18, 2u);
    }
  }

  else if (!self->_selfEncryptionSession || !self->_peerDecryptionSession)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = CUPrintNSObjectMasked();
      v13 = CUPrintNSObjectMasked();
      v18 = 138478083;
      v19 = v12;
      v20 = 2113;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#peer-nba,#crypto Initialize. Session key: %{private}@. Session ID: %{private}@", &v18, 0x16u);
    }

    v14 = [[NIServerCryptoSession alloc] initWithKeyDerivationKey:v6 sessionIdentifier:v7 encrypt:1];
    selfEncryptionSession = self->_selfEncryptionSession;
    self->_selfEncryptionSession = v14;

    v16 = [[NIServerCryptoSession alloc] initWithKeyDerivationKey:v6 sessionIdentifier:v7 encrypt:0];
    peerDecryptionSession = self->_peerDecryptionSession;
    self->_peerDecryptionSession = v16;
  }
}

+ (void)generateSOSBeaconDataForSubject:(BOOL)a3 matchingPeerData:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB980();
  }

  v10 = NSLocalizedDescriptionKey;
  v11 = @"generateData for unsupported use case.";
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v8];
  v7[2](v7, 0, v9);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
@interface NIServerNearbyPeerSession
- (BOOL)_longRangeEnabled;
- (BOOL)_peerSupportsLongRange;
- (BOOL)_shouldBypassBluetoothDiscovery;
- (BOOL)isExtendedDistanceMeasurementEnabled;
- (BOOL)isLegacyDiscoveryToken:(id)a3;
- (BOOL)shouldInitiate:(id)a3 peerDiscoveryToken:(id)a4 error:(id *)a5;
- (NIServerNearbyPeerSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)_addPeers:(id)a3;
- (id)_disableAllServicesAndSendHangupSignal:(BOOL)a3;
- (id)_processFindingEvent:(id)a3;
- (id)configure;
- (id)getResourcesManager;
- (id)objectFromIdentifier:(unint64_t)a3;
- (id)pauseWithSource:(int64_t)a3;
- (id)printableState;
- (id)run;
- (id)setDataFrame:(const void *)a3 forPeer:(id)a4;
- (optional<unsigned)identifierFromDiscoveryToken:(id)a3;
- (unint64_t)requiresNarrowbandToRun;
- (unint64_t)requiresUWBToRun;
- (void)_activateSensors;
- (void)_deactivateSensors;
- (void)_peerHungUp:(id)a3;
- (void)_removePeerObject:(id)a3 withReason:(unint64_t)a4;
- (void)_startAltitudeUpdates;
- (void)_startDeviceMotionUpdates;
- (void)_startDevicePDRUpdates;
- (void)_startMotionActivityUpdates;
- (void)_startPedometerDataUpdates;
- (void)_startPedometerEventUpdates;
- (void)device:(id)a3 rediscovered:(id)a4;
- (void)deviceDiscovered:(id)a3;
- (void)didInvalidateUWBSession;
- (void)didReceiveNewSolution:(const void *)a3;
- (void)didReceiveRemoteData:(const void *)a3;
- (void)didReceiveUnsuccessfulSolution:(const void *)a3;
- (void)didServiceRequestUpdateStatus:(ServiceRequestStatusUpdate)a3;
- (void)invalidate;
- (void)peerInactivityPeriodExceeded:(id)a3;
- (void)processVisionInput:(id)a3;
- (void)updatesEngine:(id)a3 didUpdateAlgorithmConvergenceState:(id)a4 forObject:(id)a5;
- (void)updatesEngine:(id)a3 didUpdateFindeeData:(const void *)a4 forToken:(id)a5;
- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4;
@end

@implementation NIServerNearbyPeerSession

- (NIServerNearbyPeerSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v45 = a4;
  v10 = objc_opt_class();
  if (v10 != objc_opt_class())
  {
    v43 = +[NSAssertionHandler currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"NIServerNearbyPeerSession.mm" lineNumber:105 description:@"NIServerNearbyPeerSession given invalid configuration."];
  }

  v11 = [v9 serverSessionIdentifier];

  if (!v11)
  {
    v44 = +[NSAssertionHandler currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"NIServerNearbyPeerSession.mm" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v48.receiver = self;
  v48.super_class = NIServerNearbyPeerSession;
  v12 = [(NIServerBaseSession *)&v48 initWithResourcesManager:v9 configuration:v45 error:a5];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = [v9 clientConnectionQueue];
  v15 = *(v12 + 8);
  *(v12 + 8) = v14;

  v16 = [v45 copy];
  v17 = *(v12 + 54);
  *(v12 + 54) = v16;

  v18 = [v9 serverSessionIdentifier];
  v19 = [v18 UUIDString];
  v20 = *(v12 + 9);
  *(v12 + 9) = v19;

  [*(v12 + 54) setSupportsCameraAssistance:{+[NIPlatformInfo supportsSyntheticAperture](NIPlatformInfo, "supportsSyntheticAperture")}];
  v21 = [NINearbyUpdatesEngine alloc];
  v22 = *(v12 + 54);
  v23 = *(v12 + 8);
  v24 = [v9 analytics];
  if (v9)
  {
    [v9 protobufLogger];
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v25 = [(NINearbyUpdatesEngine *)v21 initWithConfiguration:v22 queue:v23 delegate:v12 dataSource:v12 analyticsManager:v24 protobufLogger:&v46 error:a5];
  v26 = *(v12 + 6);
  *(v12 + 6) = v25;

  if (v47)
  {
    sub_10000AD84(v47);
  }

  if (!*(v12 + 6))
  {
    v30 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Failed to create updates engine, cannot create session.", buf, 2u);
    }

LABEL_16:
    v31 = 0;
    goto LABEL_33;
  }

  v27 = objc_alloc_init(NSOperationQueue);
  v28 = *(v12 + 16);
  *(v12 + 16) = v27;

  [*(v12 + 16) setUnderlyingQueue:*(v12 + 8)];
  v12[224] = 0;
  if (v9)
  {
    [v9 powerBudgetProvider];
    v29 = *buf;
  }

  else
  {
    v29 = 0uLL;
  }

  memset(buf, 0, sizeof(buf));
  v32 = *(v12 + 12);
  *(v12 + 88) = v29;
  if (v32)
  {
    sub_10000AD84(v32);
    if (*&buf[8])
    {
      sub_10000AD84(*&buf[8]);
    }
  }

  v33 = qword_1009F9820;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = sub_1001A8770();
    v35 = @"No";
    if (v34)
    {
      v35 = @"Yes";
    }

    *buf = 138412290;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Power budget reporting to CPMS is supported: %@", buf, 0xCu);
  }

  v36 = [v13[54] isExtendedDistanceMeasurementEnabled];
  v37 = qword_1009F9820;
  v38 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v36)
  {
    if (v38)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,extended distance measurement is enabled. Using NMI session", buf, 2u);
    }

    v39 = off_1009894E0;
  }

  else
  {
    if (v38)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,extended distance measurement not enabled. Using GR session", buf, 2u);
    }

    v39 = off_1009894D8;
  }

  v40 = [objc_alloc(*v39) initWithDataSource:v13 delegate:v13 clientQueue:v13[8]];
  v41 = v13[10];
  v13[10] = v40;

  v13[14] = 0;
  v31 = v13;
LABEL_33:

  return v31;
}

- (unint64_t)requiresUWBToRun
{
  if ([(NINearbyPeerConfiguration *)self->_configuration useCase]== 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)requiresNarrowbandToRun
{
  result = [(NINearbyPeerConfiguration *)self->_configuration useCase];
  if (result != 1)
  {
    if (!self->_subspecializedPeerSession)
    {
      sub_1004B77B8();
    }

    if ([(NIServerNearbyPeerSession *)self isExtendedDistanceMeasurementEnabled])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  configuration = self->_configuration;
  if (!configuration)
  {
    sub_1004B78F8();
  }

  v4 = [(NINearbyPeerConfiguration *)configuration peerDiscoveryToken];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
  v6 = [v5 rawToken];
  v7 = [v6 length];

  if (v7 <= 0xF)
  {
LABEL_4:
    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"Peer discovery token nil or invalid.";
    v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v8];
LABEL_26:
    v22 = v9;
    goto LABEL_27;
  }

  v10 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
  v11 = sub_1003005A0(v10);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:&off_1009C4088];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v12 objectForKeyedSubscript:&off_1009C40A0];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Discovery token is valid.", v26, 2u);
        }

        v16 = v12;
        v17 = 0;
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B77E4();
        }

        v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
        v20 = v17;
        v16 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B7820();
      }

      v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      v18 = v17;
      v16 = 0;
    }
  }

  else
  {
    v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    v19 = v17;
    v16 = 0;
  }

  v8 = v17;
  peerTokenDict = self->_peerTokenDict;
  self->_peerTokenDict = v16;

  if (v8)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B785C();
    }

    v9 = v8;
    v8 = v9;
    goto LABEL_26;
  }

  if (!self->_peerTokenDict)
  {
    sub_1004B78CC();
  }

  if ([(NIServerNearbyPeerSession *)self _peerSupportsLongRange])
  {
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Peer supports long range.", v26, 2u);
    }
  }

  if (![(NINearbyPeerConfiguration *)self->_configuration backgroundMode])
  {
    v9 = [(NIServerNearbyPeerSubspecializationProtocol *)self->_subspecializedPeerSession configure];
    goto LABEL_26;
  }

  v27 = NSLocalizedFailureReasonErrorKey;
  v28 = @"Invalid background mode.";
  v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v25];

LABEL_27:

  return v22;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
  v16 = v3;
  v4 = [NSArray arrayWithObjects:&v16 count:1];
  v5 = [(NIServerNearbyPeerSession *)self _addPeers:v4];

  if (!v5)
  {
    v5 = [(NIServerNearbyPeerSubspecializationProtocol *)self->_subspecializedPeerSession run];
    if (!v5)
    {
      v6 = [(NIServerNearbyPeerSession *)self getResourcesManager];
      v7 = [v6 lifecycleSupervisor];
      v8 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
      v15 = v8;
      v9 = [NSArray arrayWithObjects:&v15 count:1];
      [v7 startedDiscoveringPeersWithTokens:v9];

      v10 = [(NIServerNearbyPeerSession *)self getResourcesManager];
      v11 = [v10 lifecycleSupervisor];
      [v11 runWithConfigurationCalled];

      if (![(NINearbyPeerConfiguration *)self->_configuration useCase])
      {
        v12 = +[NIServerUsageAnalyticsAggregator sharedInstance];
        v13 = +[NSDate now];
        [v12 recordUWBUsage:2 date:v13];
      }

      v5 = 0;
      self->_shouldDeliverUpdates = 1;
      self->_firstSolutionReceived = 0;
    }
  }

  return v5;
}

- (id)pauseWithSource:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  self->_shouldDeliverUpdates = 0;
  v4 = [(NIServerNearbyPeerSession *)self _disableAllServicesAndSendHangupSignal:0];
  v8.receiver = self;
  v8.super_class = NIServerNearbyPeerSession;
  v5 = [(NIServerBaseSession *)&v8 resourcesManager];
  v6 = [v5 lifecycleSupervisor];
  [v6 pauseCalled];

  return v4;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = [(NIServerNearbyPeerSession *)self disableAllServices];
  v4.receiver = self;
  v4.super_class = NIServerNearbyPeerSession;
  [(NIServerBaseSession *)&v4 invalidate];
  self->_shouldDeliverUpdates = 0;
}

- (void)deviceDiscovered:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (![(NIServerNearbyPeerSession *)self _shouldBypassBluetoothDiscovery])
  {
    subspecializedPeerSession = self->_subspecializedPeerSession;
    if (objc_opt_respondsToSelector())
    {
      [(NIServerNearbyPeerSubspecializationProtocol *)self->_subspecializedPeerSession deviceDiscovered:v5];
    }
  }
}

- (void)device:(id)a3 rediscovered:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_clientQueue);
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138478083;
    v11 = v7;
    v12 = 2113;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,discoveredDevice:didUpdate: new: %{private}@, cached: %{private}@", &v10, 0x16u);
  }

  if (![(NIServerNearbyPeerSession *)self _shouldBypassBluetoothDiscovery])
  {
    subspecializedPeerSession = self->_subspecializedPeerSession;
    if (objc_opt_respondsToSelector())
    {
      [(NIServerNearbyPeerSubspecializationProtocol *)self->_subspecializedPeerSession device:v6 rediscovered:v7];
    }
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = objc_opt_new();
  subspecializedPeerSession = self->_subspecializedPeerSession;
  v5 = [NSString stringWithFormat:@"Subspecialized session: %@", objc_opt_class()];
  [v3 addObject:v5];

  v6 = [(NIServerNearbyPeerSubspecializationProtocol *)self->_subspecializedPeerSession printableState];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (BOOL)isExtendedDistanceMeasurementEnabled
{
  subspecializedPeerSession = self->_subspecializedPeerSession;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (id)getResourcesManager
{
  v4.receiver = self;
  v4.super_class = NIServerNearbyPeerSession;
  v2 = [(NIServerBaseSession *)&v4 resourcesManager];

  return v2;
}

- (BOOL)isLegacyDiscoveryToken:(id)a3
{
  v3 = [a3 objectInRawTokenOPACKDictForKey:&off_1009C4058];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shouldInitiate:(id)a3 peerDiscoveryToken:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_clientQueue);
  v10 = [(NINearbyPeerConfiguration *)self->_configuration debugParameters];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [(NINearbyPeerConfiguration *)self->_configuration debugParameters];
  v12 = [v11 objectForKey:@"role"];

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = [(NINearbyPeerConfiguration *)self->_configuration debugParameters];
  v14 = [v13 objectForKey:@"role"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = [(NINearbyPeerConfiguration *)self->_configuration debugParameters];
    v17 = [v16 objectForKey:@"role"];
    v18 = [v17 intValue];

    v19 = v18 == 0;
    if (v18 >= 2)
    {
      v61 = NSLocalizedFailureReasonErrorKey;
      v62 = @"Invalid debugParameters role";
      v20 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      *a5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v20];

      goto LABEL_26;
    }
  }

  else
  {
LABEL_6:
    v21 = [v8 rawToken];
    v22 = [v9 rawToken];
    v23 = [v21 isEqualToData:v22];

    if (v23)
    {
      v59 = NSLocalizedFailureReasonErrorKey;
      v60 = @"Peer and local discovery token are identical";
      v24 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      *a5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:v24];

      goto LABEL_26;
    }

    v25 = [v8 objectInRawTokenOPACKDictForKey:&off_1009C4058];
    if (!v25 || ([v9 objectInRawTokenOPACKDictForKey:&off_1009C4058], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, !v26))
    {
      v30 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,shouldInitiate using legacy initiator selection logic", buf, 2u);
      }

      v31 = [v8 rawToken];
      if ([v31 length] <= 7)
      {
      }

      else
      {
        v32 = [v9 rawToken];
        v33 = [v32 length] < 8;

        if (!v33)
        {
          v34 = [v8 rawToken];
          v35 = v34;
          v36 = *[v34 bytes];

          v37 = [v9 rawToken];
          v38 = v37;
          v39 = *[v37 bytes];

          if (v36 == v39)
          {
            v40 = [v8 rawToken];
            v41 = [v40 _reverse];

            v42 = [v9 rawToken];
            v43 = [v42 _reverse];

            v44 = v41;
            v36 = *[v41 bytes];
            v45 = v43;
            v39 = *[v43 bytes];
            if (v36 == v39)
            {
              v55 = NSLocalizedFailureReasonErrorKey;
              v56 = @"Relevant parts of discovery token are identical to local token";
              v46 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
              *a5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:v46];

              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
              {
                sub_1004B7924();
              }

              goto LABEL_26;
            }
          }

          v19 = v36 > v39;
          goto LABEL_27;
        }
      }

      v57 = NSLocalizedFailureReasonErrorKey;
      v58 = @"Discovery token are too short";
      v47 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *a5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10012 userInfo:v47];

LABEL_26:
      v19 = 0;
      goto LABEL_27;
    }

    v27 = [v8 getIRK];
    v28 = [v9 getIRK];
    if ([v27 length] == 16 && objc_msgSend(v28, "length") == 16 && !objc_msgSend(v27, "isEqualToData:", v28))
    {
      v51 = 0;
      *buf = 0;
      v49 = 0;
      v50 = 0;
      [v27 getBytes:&v51 range:{0, 8}];
      [v27 getBytes:buf range:{8, 8}];
      [v28 getBytes:&v49 range:{0, 8}];
      [v28 getBytes:&v50 range:{8, 8}];
      if (*buf == v50)
      {
        v19 = v51 > v49;
      }

      else
      {
        v19 = *buf > v50;
      }
    }

    else
    {
      v53 = NSLocalizedFailureReasonErrorKey;
      v54 = @"Peer and local discovery token IRKs are identical or invalid";
      v29 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *a5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v29];

      v19 = 0;
    }
  }

LABEL_27:

  return v19;
}

- (void)didReceiveNewSolution:(const void *)a3
{
  if (*(a3 + 24))
  {
    v5 = *(a3 + 2);
    self->_cachedSolutionMacAddr = *(a3 + 5);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B7994(&self->_cachedSolutionMacAddr);
    }

    v6 = [(NIServerNearbyPeerSession *)self discoveryTokenFromIdentifier:self->_cachedSolutionMacAddr];
    if (v6)
    {
      v21.receiver = self;
      v21.super_class = NIServerNearbyPeerSession;
      v7 = [(NIServerBaseSession *)&v21 resourcesManager];
      v8 = [v7 lifecycleSupervisor];
      v9 = [v8 isTrackingPeer:v6];

      if (v9)
      {
        v10 = [(NINearbyPeerConfiguration *)self->_configuration debugParameters];
        if (!v10)
        {
          goto LABEL_13;
        }

        v11 = [(NINearbyPeerConfiguration *)self->_configuration debugParameters];
        v12 = [v11 objectForKey:@"enableAdditionalUWBSignalFeatures"];

        if (!v12)
        {
          goto LABEL_13;
        }

        v13 = [(NINearbyPeerConfiguration *)self->_configuration debugParameters];
        v14 = [v13 objectForKey:@"enableAdditionalUWBSignalFeatures"];

        if (v14 && (v15 = [v14 BOOLValue], v14, (v15 & 1) != 0))
        {
          v19 = xmmword_1005691B8;
          v20 = 1;
          [(NINearbyUpdatesEngine *)self->_updatesEngine acceptRoseSolution:a3 withProcessingOptions:&v19];
        }

        else
        {
LABEL_13:
          [(NINearbyUpdatesEngine *)self->_updatesEngine acceptRoseSolution:a3];
        }

        v16 = [v7 lifecycleSupervisor];
        [v16 measurementReceivedForToken:v6 contTimestamp:v5];

        if (self->_shouldDeliverUpdates && !self->_firstSolutionReceived)
        {
          self->_firstSolutionReceived = 1;
          v17 = [v7 remote];
          v18 = [[NINearbyObject alloc] initWithToken:v6];
          [v17 didDiscoverNearbyObject:v18];
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7958();
  }
}

- (void)didReceiveUnsuccessfulSolution:(const void *)a3
{
  if (*(a3 + 24) == 1)
  {
    v5 = [(NIServerNearbyPeerSession *)self discoveryTokenFromIdentifier:*(a3 + 5)];
    if (v5)
    {
      v9.receiver = self;
      v9.super_class = NIServerNearbyPeerSession;
      v6 = [(NIServerBaseSession *)&v9 resourcesManager];
      v7 = [v6 lifecycleSupervisor];
      v8 = [v7 isTrackingPeer:v5];

      if (v8)
      {
        [(NINearbyUpdatesEngine *)self->_updatesEngine acceptUnsuccessfulRoseSolution:a3];
      }
    }
  }
}

- (void)didReceiveRemoteData:(const void *)a3
{
  if (self->_configuration)
  {
    if ([(NIServerNearbyPeerSession *)self isExtendedDistanceMeasurementEnabled])
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004B7A44();
      }

      v5 = [(NIServerNearbyPeerSession *)self discoveryTokenFromIdentifier:*(a3 + 5)];
      if (v5)
      {
        v6 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
        v7 = [v5 isEqual:v6];

        if (v7)
        {
          sub_100004A08(__p, "Receive");
          sub_10026EDAC(__p, a3 + 1);
          if (v25 < 0)
          {
            operator delete(*__p);
          }

          __p[0] = 0;
          BYTE2(v24) = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v8 = sub_1000054A8();
          v9 = sub_100003AA8(v8[144]);
          v20 = 0;
          v21 = v9;
          if (sub_10026E5F4(a3 + 1, __p, &v20))
          {
            v30 = *(a3 + 4);
            LOBYTE(v31) = 1;
            [(NINearbyUpdatesEngine *)self->_updatesEngine acceptPeerData:__p fromPeer:v5];
            if (BYTE1(v20) == 1 && v20 == 1)
            {
              v10 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                *v19 = 0;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Received hangup signal", v19, 2u);
              }

              [(NIServerNearbyPeerSession *)self _peerHungUp:v5];
            }
          }

          else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B7B80();
          }
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B7A78(a3 + 5);
      }
    }

    else
    {
      v11 = *(a3 + 1);
      if (*(a3 + 2) - v11 > 0xFuLL)
      {
        if (*v11 == 2)
        {
          v13 = v11[1];
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
          {
            sub_1004B7A44();
          }

          v15 = *(a3 + 5);
          v14 = (a3 + 40);
          v16 = [(NIServerNearbyPeerSession *)self discoveryTokenFromIdentifier:v15];
          if (v16)
          {
            if (v13)
            {
              v17 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *v14;
                *__p = 134283779;
                *&__p[4] = v18;
                v23 = 2113;
                v24 = v16;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,#hangup Received hangup from 0x%{private}llx. Token: %{private}@", __p, 0x16u);
              }

              [(NIServerNearbyPeerSession *)self _peerHungUp:v16];
            }
          }

          else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B7A78(v14);
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B7A08();
        }
      }

      else
      {
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B7AE8(a3 + 4, a3 + 2, v12);
        }
      }
    }
  }
}

- (void)didServiceRequestUpdateStatus:(ServiceRequestStatusUpdate)a3
{
  var2 = a3.var2;
  v4 = *&a3.var0;
  v21.receiver = self;
  v21.super_class = NIServerNearbyPeerSession;
  v6 = [(NIServerBaseSession *)&v21 resourcesManager];
  v7 = [v6 lifecycleSupervisor];

  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(v19, off_1009A25B8[v4 >> 32]);
    v9 = v20;
    v10 = v19[0];
    sub_100004A08(__p, off_1009A2630[var2]);
    v11 = v19;
    if (v9 < 0)
    {
      v11 = v10;
    }

    if (v18 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,serviceRequestDidUpdateStatus - update: %s, reason: %s", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  if (HIDWORD(v4) == 3)
  {
    [v7 positioningSensorSessionStopped];
  }

  else if (HIDWORD(v4) == 1)
  {
    [v7 positioningSensorSessionStarted];
    if ([(NIServerNearbyPeerSession *)self isExtendedDistanceMeasurementEnabled])
    {
      [(NIServerNearbyPeerSession *)self _activateSensors];
    }
  }

  if (var2 == 8)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      v14 = [(NINearbyPeerConfiguration *)configuration peerDiscoveryToken];
      v22 = v14;
      v15 = [NSArray arrayWithObjects:&v22 count:1];
      [v7 stoppedDiscoveringPeersWithTokens:v15];

      v16 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
      [(NIServerNearbyPeerSession *)self peerInactivityPeriodExceeded:v16];
    }
  }
}

- (void)didInvalidateUWBSession
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Invalidating ni peer session", buf, 2u);
  }

  [(NIServerNearbyPeerSession *)self invalidate];
  v6.receiver = self;
  v6.super_class = NIServerNearbyPeerSession;
  v4 = [(NIServerBaseSession *)&v6 invalidationHandler];
  v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (v4)[2](v4, v5);
}

- (BOOL)_longRangeEnabled
{
  v3 = [(NIServerBaseSession *)self resourcesManager];
  v4 = [v3 longRangeEnabled];

  v5 = [(NINearbyPeerConfiguration *)self->_configuration isLongRangeEnabled];
  v6 = [(NIServerNearbyPeerSession *)self _peerSupportsLongRange];
  v7 = v6;
  if ((v4 & v5 & 1) == 0)
  {
    if (v6)
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,WARNING: longRange is disabled locally, but the peer supports it.", buf, 2u);
      }
    }
  }

  if (((v4 & v5 ^ 1 | v7) & 1) == 0)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,longRange is supported locally, but the peer does NOT support it.", v11, 2u);
    }
  }

  return v4 & v7 & v5;
}

- (BOOL)_peerSupportsLongRange
{
  if (self->_configuration)
  {
    v2 = [(NSDictionary *)self->_peerTokenDict objectForKeyedSubscript:&off_1009C4070];
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = [v2 unsignedIntValue] & 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)_disableAllServicesAndSendHangupSignal:(BOOL)a3
{
  if (self->_configuration)
  {
    v3 = a3;
    v24.receiver = self;
    v24.super_class = NIServerNearbyPeerSession;
    v5 = [(NIServerBaseSession *)&v24 disableAllServices];
    if ([(NIServerNearbyPeerSession *)self isExtendedDistanceMeasurementEnabled])
    {
      if (v3)
      {
        if (!self->_currentFindeeData.__engaged_)
        {
          memset(&__p[7], 0, 17);
          self->_currentFindeeData.var0.__null_state_ = 0;
          self->_currentFindeeData.var0.__val_.bounded_displacement.__engaged_ = 0;
          self->_currentFindeeData.var0.__val_.measured_displacement.var0.__null_state_ = 0;
          self->_currentFindeeData.var0.__val_.measured_displacement.__engaged_ = 0;
          self->_currentFindeeData.var0.__val_.measured_velocity_change.var0.__null_state_ = 0;
          self->_currentFindeeData.var0.__val_.measured_velocity_change.__engaged_ = 0;
          *(&self->_currentFindeeData.var0.__val_.measured_velocity_change.__engaged_ + 1) = *__p;
          *(&self->_currentFindeeData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ + 1) = *&__p[16];
          self->_currentFindeeData.var0.__val_.location_data.__engaged_ = 0;
          self->_currentFindeeData.var0.__val_.good_gnss_conditions_detected = 0;
          self->_currentFindeeData.__engaged_ = 1;
        }

        p_currentSignallingData = &self->_currentSignallingData;
        engaged = self->_currentSignallingData.__engaged_;
        if (engaged || (v8 = sub_1000054A8(), v9 = sub_100003AA8(v8[144]), engaged = self->_currentSignallingData.__engaged_, *&p_currentSignallingData->var0.__null_state_ = 0, self->_currentSignallingData.var0.__val_.isPhone = v9, engaged))
        {
          if (!engaged)
          {
            sub_1000195BC();
          }
        }

        else
        {
          self->_currentSignallingData.__engaged_ = 1;
        }

        *&p_currentSignallingData->var0.__null_state_ = 257;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004B7BBC();
        }

        v14 = +[NSUserDefaults standardUserDefaults];
        v15 = [v14 BOOLForKey:@"FindingDisableHangup"];

        if (v15)
        {
          v16 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Would set hangup bit, but it's disabled in defaults writes", __p, 2u);
          }

          if (!self->_currentSignallingData.__engaged_)
          {
            sub_1000195BC();
          }

          *&p_currentSignallingData->var0.__null_state_ = 256;
        }

        if (!self->_currentFindeeData.__engaged_)
        {
          sub_1000195BC();
        }

        v17 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
        v18 = [(NIServerNearbyPeerSession *)self setDataFrame:&self->_currentFindeeData forPeer:v17];

        v19.__rep_ = [(NIServerNearbyPeerSession *)self nominalCycleRate];
        if (v19.__rep_ >= 1)
        {
          v20 = 1000000 * v19.__rep_;
          if (v19.__rep_ >= 0x8637BD057A0)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *__p = v20;
          std::this_thread::sleep_for (__p);
        }
      }

      if (self->_currentFindeeData.__engaged_)
      {
        self->_currentFindeeData.__engaged_ = 0;
      }

      if (self->_currentSignallingData.__engaged_)
      {
        self->_currentSignallingData.__engaged_ = 0;
      }

      [(NIServerNearbyPeerSession *)self _deactivateSensors];
    }

    else if (![(NIServerNearbyPeerSession *)self _longRangeEnabled]&& v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004B7BBC();
      }

      LOBYTE(__ns.__rep_) = 0;
      sub_100025100(__p, 16);
      v10 = *__p;
      **__p = 258;
      *(v10 + 2) = 0;
      *(v10 + 8) = 0;
      subspecializedPeerSession = self->_subspecializedPeerSession;
      if (subspecializedPeerSession)
      {
        [(NIServerNearbyPeerSubspecializationProtocol *)subspecializedPeerSession updatePeerData:__p];
        v12.__rep_ = [(NIServerNearbyPeerSession *)self nominalCycleRate];
        if (v12.__rep_ >= 1)
        {
          v13 = 1000000 * v12.__rep_;
          if (v12.__rep_ >= 0x8637BD057A0)
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          __ns.__rep_ = v13;
          std::this_thread::sleep_for (&__ns);
        }
      }

      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }
    }

    v21 = self->_subspecializedPeerSession;
    if (v21)
    {
      [(NIServerNearbyPeerSubspecializationProtocol *)v21 invalidate];
    }

    configuration = self->_configuration;
    self->_configuration = 0;

    self->_cachedSolutionMacAddr = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_addPeers:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NIServerNearbyPeerSession;
  v5 = [(NIServerBaseSession *)&v19 resourcesManager];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v5 btResource];
      v12 = [v10 rawToken];
      v13 = [v11 addPeerDiscoveryToken:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13;
}

- (void)_peerHungUp:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NIServerNearbyPeerSession;
  v5 = [(NIServerBaseSession *)&v11 resourcesManager];
  v6 = [v5 btResource];
  v7 = [v6 deviceCache];
  v8 = [v4 rawToken];
  v9 = [v7 isCachedByTokenData:v8];

  if (v9)
  {
    v10 = [v5 lifecycleSupervisor];
    [v10 peerHangupReceived:v4];

    [(NIServerNearbyPeerSession *)self _removePeerObject:v4 withReason:1];
  }
}

- (void)_removePeerObject:(id)a3 withReason:(unint64_t)a4
{
  v6 = a3;
  [(NINearbyUpdatesEngine *)self->_updatesEngine clearStateForToken:v6];
  v22.receiver = self;
  v22.super_class = NIServerNearbyPeerSession;
  v7 = [(NIServerBaseSession *)&v22 resourcesManager];
  v8 = [v7 btResource];
  v9 = [v8 deviceCache];
  v10 = [v6 rawToken];
  v11 = [v9 uncacheDeviceByTokenData:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [v7 lifecycleSupervisor];
    v13 = [v12 isTracking];

    if (v13)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B7BF0();
      }
    }
  }

  v14 = [[NINearbyObject alloc] initWithToken:v6];
  v15 = [v7 remote];
  v27 = v14;
  v16 = [NSArray arrayWithObjects:&v27 count:1];
  [v15 didRemoveNearbyObjects:v16 withReason:a4];

  if (a4)
  {
    if (a4 == 1)
    {
      v17 = @"Hangup";
    }

    else
    {
      if (a4 == 2)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004B7C60();
        }

        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v24 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerNearbyPeerSession.mm";
          v25 = 1024;
          *v26 = 806;
          *&v26[4] = 2080;
          *&v26[6] = "[NIServerNearbyPeerSession _removePeerObject:withReason:]";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#ses-nrby-peer,%s:%d: assertion failure in %s", buf, 0x1Cu);
        }

        abort();
      }

      v17 = &stru_1009B1428;
    }
  }

  else
  {
    v17 = @"Timeout";
  }

  v18 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 138412802;
    v24 = v14;
    v25 = 2112;
    *v26 = v17;
    *&v26[8] = 2112;
    *&v26[10] = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,_removePeerObject: %@ with reason: %@ for session identifier: %@", buf, 0x20u);
  }

  v20 = [(NIServerNearbyPeerSession *)self _disableAllServicesAndSendHangupSignal:a4 != 1];
  if (v20 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7C94();
  }
}

- (BOOL)_shouldBypassBluetoothDiscovery
{
  v2 = [(NIServerNearbyPeerSubspecializationProtocol *)self->_subspecializedPeerSession shouldBypassBleDiscovery];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = v2 | [v3 BOOLForKey:@"FindingBypassDiscovery"];

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,Should bypass Ble discovery %d", v7, 8u);
  }

  return v4;
}

- (id)setDataFrame:(const void *)a3 forPeer:(id)a4
{
  v6 = a4;
  v7 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    p_currentFindeeData = &self->_currentFindeeData;
    v10 = *a3;
    v11 = *(a3 + 2);
    if (self->_currentFindeeData.__engaged_)
    {
      *&self->_currentFindeeData.var0.__val_.bounded_displacement.__engaged_ = *(a3 + 1);
      *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp = v11;
      *&p_currentFindeeData->var0.__null_state_ = v10;
      v12 = *(a3 + 3);
      v13 = *(a3 + 4);
      v14 = *(a3 + 6);
      *&self->_currentFindeeData.var0.__val_.measured_velocity_change.var0.__null_state_ = *(a3 + 5);
      *&self->_currentFindeeData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1 = v14;
      *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.displacementH1 = v12;
      *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.displacementV = v13;
      v15 = *(a3 + 7);
      v16 = *(a3 + 8);
      v17 = *(a3 + 9);
      *(&self->_currentFindeeData.var0.__val_.location_data.var0.__val_.uncertainty + 2) = *(a3 + 154);
      *&self->_currentFindeeData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ = v16;
      *&self->_currentFindeeData.var0.__val_.location_data.var0.__val_.easterlyOffsetM = v17;
      *&self->_currentFindeeData.var0.__val_.measured_velocity_change.__engaged_ = v15;
    }

    else
    {
      *&self->_currentFindeeData.var0.__val_.bounded_displacement.__engaged_ = *(a3 + 1);
      *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp = v11;
      *&p_currentFindeeData->var0.__null_state_ = v10;
      v20 = *(a3 + 3);
      v21 = *(a3 + 4);
      v22 = *(a3 + 6);
      *&self->_currentFindeeData.var0.__val_.measured_velocity_change.var0.__null_state_ = *(a3 + 5);
      *&self->_currentFindeeData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1 = v22;
      *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.displacementH1 = v20;
      *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.displacementV = v21;
      v23 = *(a3 + 7);
      v24 = *(a3 + 8);
      v25 = *(a3 + 10);
      *&self->_currentFindeeData.var0.__val_.location_data.var0.__val_.easterlyOffsetM = *(a3 + 9);
      *&self->_currentFindeeData.var0.__val_.location_data.__engaged_ = v25;
      *&self->_currentFindeeData.var0.__val_.measured_velocity_change.__engaged_ = v23;
      *&self->_currentFindeeData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_ = v24;
      self->_currentFindeeData.__engaged_ = 1;
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    v26 = *&self->_currentFindeeData.var0.__val_.location_data.var0.__val_.easterlyOffsetM;
    v46 = *&self->_currentFindeeData.var0.__val_.mach_absolute_receipt_timestamp.__engaged_;
    v47[0] = v26;
    *(v47 + 10) = *(&self->_currentFindeeData.var0.__val_.location_data.var0.__val_.uncertainty + 2);
    v27 = *&self->_currentFindeeData.var0.__val_.measured_velocity_change.var0.__null_state_;
    v42 = *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.displacementV;
    v43 = v27;
    v28 = *&self->_currentFindeeData.var0.__val_.measured_velocity_change.__engaged_;
    v44 = *&self->_currentFindeeData.var0.__val_.measured_velocity_change.var0.__val_.velocityChangeH1;
    v45 = v28;
    v29 = *&self->_currentFindeeData.var0.__val_.bounded_displacement.__engaged_;
    *__p = *&p_currentFindeeData->var0.__null_state_;
    v39 = v29;
    v30 = *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.displacementH1;
    v40 = *&self->_currentFindeeData.var0.__val_.measured_displacement.var0.__val_.applicabilityTimestamp;
    v41 = v30;
    if (self->_currentSignallingData.__engaged_)
    {
      v36 = *&self->_currentSignallingData.var0.__null_state_;
      LOBYTE(v37) = self->_currentSignallingData.var0.__val_.isPhone;
    }

    else
    {
      v31 = sub_1000054A8();
      v32 = sub_100003AA8(v31[144]);
      v36 = 0;
      LOBYTE(v37) = v32;
    }

    if (sub_10026DBDC(&v48, __p, &v36))
    {
      sub_100004A08(__p, "Send");
      sub_10026EDAC(__p, &v48);
      if (SBYTE7(v39) < 0)
      {
        operator delete(__p[0]);
      }

      subspecializedPeerSession = self->_subspecializedPeerSession;
      if (subspecializedPeerSession)
      {
        [(NIServerNearbyPeerSubspecializationProtocol *)subspecializedPeerSession updatePeerData:&v48, v36, v37];
      }

      v19 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B7D40();
      }

      v51 = NSLocalizedFailureReasonErrorKey;
      v52 = @"FindingDataFrameFormat::encode failed";
      v34 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1, v36, v37, __p[0], __p[1], v39, v40, v41, v42, v43, v44, v45, v46, v47[0], v47[1]];
      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v34];
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B7D04();
    }

    v53 = NSLocalizedFailureReasonErrorKey;
    v54 = @"Not Ranging with specified peer";
    v18 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v18];
  }

  return v19;
}

- (void)_startAltitudeUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1002BA3E0;
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
  v8 = sub_1002BA648;
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
  v6 = sub_1002BAA94;
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
  v6 = sub_1002BADB4;
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
  v6 = sub_1002BB05C;
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
  v6 = sub_1002BB6B4;
  v7 = &unk_10099F088;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:0.01, v4, v5, v6, v7];
  [(CMMotionManager *)self->_motionManager startDeviceMotionUpdatesToQueue:self->_deviceOperationQueue withHandler:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_activateSensors
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,turning on sensors for peer algorithms.", buf, 2u);
  }

  sensorsOn = self->_sensorsOn;
  v5 = qword_1009F9820;
  v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (sensorsOn)
  {
    if (!v6)
    {
      return;
    }

    v25 = 0;
    v7 = "#ses-nrby-peer,sensors already ON";
    v8 = &v25;
    v9 = v5;
    goto LABEL_32;
  }

  if (v6)
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,turning on motion sensors for peer algorithms.", v24, 2u);
  }

  v10 = objc_alloc_init(CMMotionManager);
  motionManager = self->_motionManager;
  self->_motionManager = v10;

  if (self->_motionManager)
  {
    [(NIServerNearbyPeerSession *)self _startDeviceMotionUpdates];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004B82C0();
  }

  v12 = objc_alloc_init(CMAltimeter);
  altimeterManager = self->_altimeterManager;
  self->_altimeterManager = v12;

  if (self->_altimeterManager)
  {
    [(NIServerNearbyPeerSession *)self _startAltitudeUpdates];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004B82F4();
  }

  v14 = objc_alloc_init(CMPedometer);
  pedometerManager = self->_pedometerManager;
  self->_pedometerManager = v14;

  if (self->_pedometerManager)
  {
    [(NIServerNearbyPeerSession *)self _startPedometerDataUpdates];
    [(NIServerNearbyPeerSession *)self _startPedometerEventUpdates];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004B8328();
  }

  v16 = objc_alloc_init(CMMotionActivityManager);
  motionActivityManager = self->_motionActivityManager;
  self->_motionActivityManager = v16;

  if (self->_motionActivityManager)
  {
    [(NIServerNearbyPeerSession *)self _startMotionActivityUpdates];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004B835C();
  }

  v18 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,turning on PDR for peer algorithms.", v23, 2u);
  }

  v19 = objc_alloc_init(CMOdometryManager);
  pdrManager = self->_pdrManager;
  self->_pdrManager = v19;

  if (self->_pdrManager)
  {
    [(NIServerNearbyPeerSession *)self _startDevicePDRUpdates];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B8390();
  }

  self->_sensorsOn = 1;
  v21 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 0;
    v7 = "#ses-nrby-peer,turned on sensors for peer algorithms.";
    v8 = &v22;
    v9 = v21;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }
}

- (void)_deactivateSensors
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,turning off sensors for findee algorithms.  ", v9, 2u);
  }

  if (self->_sensorsOn)
  {
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

    self->_sensorsOn = 0;
  }
}

- (void)processVisionInput:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NINearbyUpdatesEngine *)self->_updatesEngine acceptVisionInput:v4];
}

- (id)_processFindingEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!v4)
  {
    __assert_rtn("[NIServerNearbyPeerSession _processFindingEvent:]", "NIServerNearbyPeerSession.mm", 1232, "event");
  }

  configuration = self->_configuration;
  if (configuration)
  {
    if ([(NINearbyPeerConfiguration *)configuration useCase])
    {
      v6 = [v4 objectForKeyedSubscript:@"FindingEventDictKey_EventType"];
      v7 = [v6 integerValue];

      v8 = [v4 objectForKeyedSubscript:@"FindingEventDictKey_ObjectDiscoveryToken"];
      v9 = [v4 objectForKeyedSubscript:@"FindingEventDictKey_Location"];
      v10 = [v4 objectForKeyedSubscript:@"FindingEventDictKey_Heading"];
      v11 = v10;
      if (v7 == 2)
      {
        if (v9)
        {
          [v9 latitude];
          v66 = v41;
          [v9 longitude];
          v64 = v42;
          v43 = [v9 timestamp];
          [v43 timeIntervalSinceReferenceDate];
          v62 = v44;
          [v9 course];
          v46 = v45;
          [v9 courseAccuracy];
          v48 = v47;
          [v9 speed];
          v50 = v49;
          [v9 speedAccuracy];
          v52 = v51;
          [v9 horizontalAccuracy];
          v54 = v53;
          [v9 verticalAccuracy];
          v56 = v55;
          [v9 altitude];
          v58 = v57;
          [v9 ellipsoidalAltitude];
          v67 = v66;
          v68 = v64;
          v69 = v62;
          v70 = v46;
          v71 = v48;
          v72 = v50;
          v73 = v52;
          v74 = v54;
          v75 = v56;
          v76 = v58;
          v77 = v59;
          v78 = [v9 floor];
          v79 = [v9 locationType];
          v80 = [v9 signalEnvironment];

          [(NINearbyUpdatesEngine *)self->_updatesEngine acceptSelfLocationData:&v67];
        }
      }

      else if (v7 == 3)
      {
        if (v10)
        {
          [v10 magneticHeading];
          v34 = v33;
          [v11 trueHeading];
          v36 = v35;
          [v11 headingAccuracy];
          v38 = v37;
          v39 = [v11 timestamp];
          [v39 timeIntervalSinceReferenceDate];
          v67 = v34;
          v68 = v36;
          v69 = v38;
          v70 = v40;

          [(NINearbyUpdatesEngine *)self->_updatesEngine acceptHeadingData:&v67];
        }
      }

      else if (v7 == 4)
      {
        if (v9)
        {
          v12 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
          v13 = [v12 isEqual:v8];

          if (v13)
          {
            [v9 latitude];
            v65 = v14;
            [v9 longitude];
            v63 = v15;
            v16 = [v9 timestamp];
            [v16 timeIntervalSinceReferenceDate];
            v61 = v17;
            [v9 course];
            v19 = v18;
            [v9 courseAccuracy];
            v21 = v20;
            [v9 speed];
            v23 = v22;
            [v9 speedAccuracy];
            v25 = v24;
            [v9 horizontalAccuracy];
            v27 = v26;
            [v9 verticalAccuracy];
            v29 = v28;
            [v9 altitude];
            v31 = v30;
            [v9 ellipsoidalAltitude];
            v67 = v65;
            v68 = v63;
            v69 = v61;
            v70 = v19;
            v71 = v21;
            v72 = v23;
            v73 = v25;
            v74 = v27;
            v75 = v29;
            v76 = v31;
            v77 = v32;
            v78 = [v9 floor];
            v79 = [v9 locationType];
            v80 = [v9 signalEnvironment];

            [(NINearbyUpdatesEngine *)self->_updatesEngine acceptPeerLocationData:&v67 forPeer:v8];
          }
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B83CC();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B8408();
  }

  return 0;
}

- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_updatesEngine != v6)
  {
    __assert_rtn("[NIServerNearbyPeerSession updatesEngine:didUpdateNearbyObjects:]", "NIServerNearbyPeerSession.mm", 1317, "engine == _updatesEngine");
  }

  clientQueue = self->_clientQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002BC478;
  v10[3] = &unk_10098A2E8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(clientQueue, v10);
}

- (void)updatesEngine:(id)a3 didUpdateAlgorithmConvergenceState:(id)a4 forObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_updatesEngine != v8)
  {
    __assert_rtn("[NIServerNearbyPeerSession updatesEngine:didUpdateAlgorithmConvergenceState:forObject:]", "NIServerNearbyPeerSession.mm", 1361, "engine == _updatesEngine");
  }

  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002BC654;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(clientQueue, block);
}

- (void)updatesEngine:(id)a3 didUpdateFindeeData:(const void *)a4 forToken:(id)a5
{
  v7 = a5;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B8444();
  }

  v8 = [(NIServerNearbyPeerSession *)self setDataFrame:a4 forPeer:v7];
  if (v8)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 description];
      v11 = v10;
      v12 = 136315138;
      v13 = [v10 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-nrby-peer,sent peer data to ranging provider with error: %s", &v12, 0xCu);
    }
  }
}

- (id)objectFromIdentifier:(unint64_t)a3
{
  v3 = [(NINearbyPeerConfiguration *)self->_configuration peerDiscoveryToken];
  if (v3)
  {
    v4 = [[NINearbyObject alloc] initWithToken:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)a3
{
  cachedSolutionMacAddr = self->_cachedSolutionMacAddr;
  v4 = 1;
  result.__engaged_ = v4;
  result.var0 = cachedSolutionMacAddr;
  return result;
}

- (void)peerInactivityPeriodExceeded:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NIServerNearbyPeerSession *)self _removePeerObject:v4 withReason:0];
}

- (id).cxx_construct
{
  self->_powerBudgetProvider.__ptr_ = 0;
  self->_powerBudgetProvider.__cntrl_ = 0;
  sub_1002FE758(&self->_machTimeConverter, a2);
  self->_currentFindeeData.var0.__null_state_ = 0;
  self->_currentFindeeData.__engaged_ = 0;
  self->_currentSignallingData.var0.__null_state_ = 0;
  self->_currentSignallingData.__engaged_ = 0;
  return self;
}

@end
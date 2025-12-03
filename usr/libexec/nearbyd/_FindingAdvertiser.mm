@interface _FindingAdvertiser
+ (id)sharedInstance;
- (id)_configureAdvertiserForType:(int)type toPeer:(id)peer withAdvertisement:(id)advertisement;
- (id)_configureNearbyActionNoWakeAdvertiserWithPeer:(id)peer advertisement:(id)advertisement;
- (id)_configureSpatialInteractionAdvertiserWithPeer:(id)peer advertisement:(id)advertisement;
- (id)_initInternal;
- (id)printableState;
- (id)startAdvertisingAsFinder:(BOOL)finder toPeer:(id)peer withAdvertisement:(id)advertisement;
- (id)stopAdvertisingAsFinder:(BOOL)finder toPeer:(id)peer;
- (unint64_t)_peerIndexReferenceForAdvertisementType:(int)type outPeers:(id *)peers outAdvertisements:(id *)advertisements;
- (void)_cbAdvertisingAddressChanged;
- (void)_resetAdvertiserForType:(int)type;
- (void)_resetNearbyActionNoWakeAdvertiser;
- (void)_resetSpatialInteractionAdvertiser;
- (void)_roundRobinTimerHandler;
- (void)_startRoundRobinTimer;
- (void)_stopRoundRobinTimer;
- (void)payloadDidChange;
@end

@implementation _FindingAdvertiser

+ (id)sharedInstance
{
  if (qword_1009F74F8 != -1)
  {
    sub_1004C510C();
  }

  v3 = qword_1009F74F0;

  return v3;
}

- (id)startAdvertisingAsFinder:(BOOL)finder toPeer:(id)peer withAdvertisement:(id)advertisement
{
  peerCopy = peer;
  advertisementCopy = advertisement;
  if (!peerCopy)
  {
    v15 = "token";
    v16 = 126;
    goto LABEL_8;
  }

  if (!advertisementCopy)
  {
    v15 = "advertisement";
    v16 = 127;
LABEL_8:
    __assert_rtn("[_FindingAdvertiser startAdvertisingAsFinder:toPeer:withAdvertisement:]", "NIServerFindingDiscovery.mm", v16, v15);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1003735D8;
  v26 = sub_1003735E8;
  v27 = 0;
  selfQueue = self->_selfQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003735F0;
  block[3] = &unk_1009A83B8;
  finderCopy = finder;
  block[4] = self;
  v18 = peerCopy;
  v19 = advertisementCopy;
  v20 = &v22;
  v11 = advertisementCopy;
  v12 = peerCopy;
  dispatch_sync(selfQueue, block);
  v13 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v13;
}

- (id)stopAdvertisingAsFinder:(BOOL)finder toPeer:(id)peer
{
  peerCopy = peer;
  if (!peerCopy)
  {
    sub_1004C5120();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1003735D8;
  v19 = sub_1003735E8;
  v20 = 0;
  selfQueue = self->_selfQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003738D4;
  v11[3] = &unk_1009A83E0;
  finderCopy = finder;
  v11[4] = self;
  v12 = peerCopy;
  v13 = &v15;
  v8 = peerCopy;
  dispatch_sync(selfQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)printableState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1003735D8;
  v11 = sub_1003735E8;
  v12 = objc_opt_new();
  selfQueue = self->_selfQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100373B94;
  v6[3] = &unk_10098A310;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(selfQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_initInternal
{
  v18.receiver = self;
  v18.super_class = _FindingAdvertiser;
  v2 = [(_FindingAdvertiser *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.nearbyd.finding.advertiser-self", v3);
    selfQueue = v2->_selfQueue;
    v2->_selfQueue = v4;

    roundRobinTimer = v2->_roundRobinTimer;
    v2->_roundRobinTimer = 0;

    nearbyActionNoWakeAdvertiser = v2->_nearbyActionNoWakeAdvertiser;
    v2->_nearbyActionNoWakeAdvertiser = 0;

    v2->_activatedNearbyActionNoWake = 0;
    spatialInteractionAdvertiser = v2->_spatialInteractionAdvertiser;
    v2->_spatialInteractionAdvertiser = 0;

    v2->_activatedSpatialInteraction = 0;
    v9 = objc_opt_new();
    nearbyActionNoWakePeers = v2->_nearbyActionNoWakePeers;
    v2->_nearbyActionNoWakePeers = v9;

    v11 = objc_opt_new();
    nearbyActionNoWakeAdvertisements = v2->_nearbyActionNoWakeAdvertisements;
    v2->_nearbyActionNoWakeAdvertisements = v11;

    v2->_nearbyActionNoWakeCurrentPeerIndex = 0;
    v13 = objc_opt_new();
    spatialInteractionPeers = v2->_spatialInteractionPeers;
    v2->_spatialInteractionPeers = v13;

    v15 = objc_opt_new();
    spatialInteractionAdvertisements = v2->_spatialInteractionAdvertisements;
    v2->_spatialInteractionAdvertisements = v15;

    v2->_spatialInteractionCurrentPeerIndex = 0;
  }

  return v2;
}

- (unint64_t)_peerIndexReferenceForAdvertisementType:(int)type outPeers:(id *)peers outAdvertisements:(id *)advertisements
{
  if (type == 19)
  {
    *peers = self->_spatialInteractionPeers;
    *advertisements = self->_spatialInteractionAdvertisements;
    v8 = [*peers count];
    if (v8 != [*advertisements count])
    {
      sub_1004C51A4();
    }

    if ([*peers count])
    {
      spatialInteractionCurrentPeerIndex = self->_spatialInteractionCurrentPeerIndex;
      if (spatialInteractionCurrentPeerIndex >= [*peers count])
      {
        sub_1004C51D0();
      }
    }

    v10 = 96;
  }

  else
  {
    *peers = self->_nearbyActionNoWakePeers;
    *advertisements = self->_nearbyActionNoWakeAdvertisements;
    v11 = [*peers count];
    if (v11 != [*advertisements count])
    {
      sub_1004C514C();
    }

    if ([*peers count])
    {
      nearbyActionNoWakeCurrentPeerIndex = self->_nearbyActionNoWakeCurrentPeerIndex;
      if (nearbyActionNoWakeCurrentPeerIndex >= [*peers count])
      {
        sub_1004C5178();
      }
    }

    v10 = 72;
  }

  return (self + v10);
}

- (id)_configureAdvertiserForType:(int)type toPeer:(id)peer withAdvertisement:(id)advertisement
{
  peerCopy = peer;
  advertisementCopy = advertisement;
  if (type == 26)
  {
    v11 = [(_FindingAdvertiser *)self _configureNearbyActionNoWakeAdvertiserWithPeer:peerCopy advertisement:advertisementCopy];
  }

  else
  {
    if (type != 19)
    {
      goto LABEL_6;
    }

    v11 = [(_FindingAdvertiser *)self _configureSpatialInteractionAdvertiserWithPeer:peerCopy advertisement:advertisementCopy];
  }

  v5 = v11;
LABEL_6:

  return v5;
}

- (void)_resetAdvertiserForType:(int)type
{
  if (type == 26)
  {
    [(_FindingAdvertiser *)self _resetNearbyActionNoWakeAdvertiser];
  }

  else if (type == 19)
  {
    [(_FindingAdvertiser *)self _resetSpatialInteractionAdvertiser];
  }
}

- (id)_configureNearbyActionNoWakeAdvertiserWithPeer:(id)peer advertisement:(id)advertisement
{
  peerCopy = peer;
  advertisementCopy = advertisement;
  dispatch_assert_queue_V2(self->_selfQueue);
  if (!peerCopy)
  {
    v31 = "peerToken";
    v32 = 389;
    goto LABEL_39;
  }

  if (!advertisementCopy)
  {
    v31 = "advertisement";
    v32 = 390;
LABEL_39:
    __assert_rtn("[_FindingAdvertiser _configureNearbyActionNoWakeAdvertiserWithPeer:advertisement:]", "NIServerFindingDiscovery.mm", v32, v31);
  }

  nearbyActionNoWakeAdvertiser = self->_nearbyActionNoWakeAdvertiser;
  if (!nearbyActionNoWakeAdvertiser)
  {
    v19 = objc_opt_new();
    v20 = self->_nearbyActionNoWakeAdvertiser;
    self->_nearbyActionNoWakeAdvertiser = v19;

    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setDispatchQueue:self->_selfQueue];
    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setLabel:@"nearbydFinding"];
    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setAdvertiseRate:50];
    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setEnableEPAForLEAdvertisement:1];
    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setUseCase:458752];
    objc_initWeak(location, self);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100374D74;
    v37[3] = &unk_10098AB18;
    objc_copyWeak(&v38, location);
    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setAdvertisingAddressChangedHandler:v37];
    self->_activatedNearbyActionNoWake = 0;
    v21 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: activating advertiser", buf, 2u);
    }

    v22 = sub_100005288();
    v23 = self->_nearbyActionNoWakeAdvertiser;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100374DD0;
    v34[3] = &unk_10098AB88;
    v35[1] = *&v22;
    objc_copyWeak(v35, location);
    v34[4] = self;
    [(CBAdvertiser *)v23 activateWithCompletion:v34];
    objc_destroyWeak(v35);
    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
    goto LABEL_23;
  }

  if (!self->_activatedNearbyActionNoWake)
  {
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: advertiser still activating", location, 2u);
    }

LABEL_23:
    v25 = 0;
    goto LABEL_34;
  }

  advertisingAddressDataConnectable = [(CBAdvertiser *)nearbyActionNoWakeAdvertiser advertisingAddressDataConnectable];
  v10 = advertisingAddressDataConnectable;
  if (!advertisingAddressDataConnectable || [advertisingAddressDataConnectable length] <= 5)
  {
    WORD2(location[0]) = 0;
    LODWORD(location[0]) = 0;
    v11 = [NSData dataWithBytes:location length:6];

    v10 = v11;
  }

  v12 = sub_100374F1C(peerCopy, v10);
  if (!v12)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C51FC();
    }

    v25 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:0];
    goto LABEL_33;
  }

  if ([(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser nearbyActionNoWakeType]!= 1)
  {
    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setNearbyActionNoWakeType:1];
  }

  nearbyActionNoWakeAuthTagData = [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser nearbyActionNoWakeAuthTagData];
  v14 = [v12 isEqualToData:nearbyActionNoWakeAuthTagData];

  if ((v14 & 1) == 0)
  {
    [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setNearbyActionNoWakeAuthTagData:v12];
  }

  payload = [advertisementCopy payload];
  if (payload || ([(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser nearbyActionNoWakeConfigData], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    payload2 = [advertisementCopy payload];
    nearbyActionNoWakeConfigData = [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser nearbyActionNoWakeConfigData];
    v18 = [payload2 isEqualToData:nearbyActionNoWakeConfigData];

    if (payload)
    {

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if ((v18 & 1) == 0)
      {
LABEL_29:
        [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setNearbyActionNWPrecisionFindingStatus:0];
        payload3 = [advertisementCopy payload];
        [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser setNearbyActionNoWakeConfigData:payload3];

        -[CBAdvertiser setNearbyActionNWPrecisionFindingStatus:](self->_nearbyActionNoWakeAdvertiser, "setNearbyActionNWPrecisionFindingStatus:", -[CBAdvertiser nearbyActionNWPrecisionFindingStatus](self->_nearbyActionNoWakeAdvertiser, "nearbyActionNWPrecisionFindingStatus") | [advertisementCopy statusFlags]);
        goto LABEL_30;
      }
    }
  }

  nearbyActionNWPrecisionFindingStatus = [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser nearbyActionNWPrecisionFindingStatus];
  if (nearbyActionNWPrecisionFindingStatus != [advertisementCopy statusFlags])
  {
    goto LABEL_29;
  }

LABEL_30:
  v28 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_nearbyActionNoWakeAdvertiser;
    LODWORD(location[0]) = 138477827;
    *(location + 4) = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: configured advertiser: %{private}@", location, 0xCu);
  }

  v25 = 0;
LABEL_33:

LABEL_34:

  return v25;
}

- (id)_configureSpatialInteractionAdvertiserWithPeer:(id)peer advertisement:(id)advertisement
{
  peerCopy = peer;
  advertisementCopy = advertisement;
  dispatch_assert_queue_V2(self->_selfQueue);
  if (!peerCopy)
  {
    v45 = "peerToken";
    v46 = 486;
    goto LABEL_36;
  }

  if (!advertisementCopy)
  {
    v45 = "advertisement";
    v46 = 487;
LABEL_36:
    __assert_rtn("[_FindingAdvertiser _configureSpatialInteractionAdvertiserWithPeer:advertisement:]", "NIServerFindingDiscovery.mm", v46, v45);
  }

  getIRK = [peerCopy getIRK];
  if (getIRK)
  {
    getSessionIdentifier = [peerCopy getSessionIdentifier];
    if (getSessionIdentifier)
    {
      v51 = 0;
      v50 = 0;
      payload = [advertisementCopy payload];

      if (payload)
      {
        for (i = 0; ; ++i)
        {
          payload2 = [advertisementCopy payload];
          v13 = [payload2 length];

          if (v13 <= i)
          {
            break;
          }

          payload3 = [advertisementCopy payload];
          *(&v50 + i) = *([payload3 bytes] + i);
        }
      }

      statusFlags = [advertisementCopy statusFlags];
      v16 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v16 setFindingStatus:statusFlags];

      v17 = v50;
      v18 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v18 setFindingConfig:v17];

      v19 = BYTE1(v50);
      v20 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v20 setFindingConfig2:v19];

      v21 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v21 setFindingEnabled:1];

      v22 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v22 commitChange];

      v23 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      aggregatedUWBData = [v23 aggregatedUWBData];

      spatialInteractionAdvertiser = self->_spatialInteractionAdvertiser;
      if (spatialInteractionAdvertiser)
      {
        clientIrkData = [(CBSpatialInteractionSession *)spatialInteractionAdvertiser clientIrkData];
        if ([clientIrkData isEqualToData:getIRK])
        {
          clientIdentifierData = [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser clientIdentifierData];
          v28 = [clientIdentifierData isEqual:getSessionIdentifier];

          if (v28)
          {
            if (self->_activatedSpatialInteraction)
            {
              uwbConfigData = [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser uwbConfigData];
              v30 = [aggregatedUWBData isEqualToData:uwbConfigData];

              if ((v30 & 1) == 0)
              {
                [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setControlFlags:[(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser controlFlags]| 8];
                [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setUwbConfigData:aggregatedUWBData];
                [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setControlFlags:[(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser controlFlags]& 0xFFFFFFF7];
              }

              v31 = qword_1009F9820;
              if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_27;
              }

              v32 = self->_spatialInteractionAdvertiser;
              LODWORD(location[0]) = 138477827;
              *(location + 4) = v32;
              v33 = "#find-disc,SpatialInteraction: configured advertiser: %{private}@";
              v34 = v31;
              v35 = 12;
            }

            else
            {
              v44 = qword_1009F9820;
              if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
LABEL_27:

                v36 = 0;
                goto LABEL_28;
              }

              LOWORD(location[0]) = 0;
              v33 = "#find-disc,SpatialInteraction: advertiser still activating";
              v34 = v44;
              v35 = 2;
            }

            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, location, v35);
            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser invalidate];
      v38 = objc_opt_new();
      v39 = self->_spatialInteractionAdvertiser;
      self->_spatialInteractionAdvertiser = v38;

      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setDispatchQueue:self->_selfQueue];
      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setLabel:@"nearbydFinding"];
      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setClientIrkData:getIRK];
      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setClientIdentifierData:getSessionIdentifier];
      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setControlFlags:4115];
      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setEnableEPAForLEAdvertisement:1];
      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setAdvertiseRate:50];
      [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setUwbConfigData:aggregatedUWBData];
      self->_activatedSpatialInteraction = 0;
      objc_initWeak(location, self);
      v40 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: activating advertiser", buf, 2u);
      }

      v41 = sub_100005288();
      v42 = self->_spatialInteractionAdvertiser;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1003757E8;
      v47[3] = &unk_10098AB88;
      v48[1] = *&v41;
      objc_copyWeak(v48, location);
      v47[4] = self;
      [(CBSpatialInteractionSession *)v42 activateWithCompletion:v47];
      objc_destroyWeak(v48);
      objc_destroyWeak(location);
      goto LABEL_27;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C52F8();
    }

    v53 = NSLocalizedFailureReasonErrorKey;
    v54 = @"Discovery token doesn't contain valid session identifier";
    v37 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v36 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v37];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C52F8();
    }

    v55 = NSLocalizedFailureReasonErrorKey;
    v56 = @"Discovery token doesn't contain valid IRK";
    getSessionIdentifier = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v36 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:getSessionIdentifier];
  }

LABEL_28:

  return v36;
}

- (void)_resetNearbyActionNoWakeAdvertiser
{
  dispatch_assert_queue_V2(self->_selfQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: reset advertising", v5, 2u);
  }

  [(CBAdvertiser *)self->_nearbyActionNoWakeAdvertiser invalidate];
  nearbyActionNoWakeAdvertiser = self->_nearbyActionNoWakeAdvertiser;
  self->_nearbyActionNoWakeAdvertiser = 0;

  self->_activatedNearbyActionNoWake = 0;
}

- (void)_resetSpatialInteractionAdvertiser
{
  dispatch_assert_queue_V2(self->_selfQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: reset advertising", v7, 2u);
  }

  [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser invalidate];
  spatialInteractionAdvertiser = self->_spatialInteractionAdvertiser;
  self->_spatialInteractionAdvertiser = 0;

  self->_activatedSpatialInteraction = 0;
  v5 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
  [v5 setFindingEnabled:0];

  v6 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
  [v6 commitChange];
}

- (void)_startRoundRobinTimer
{
  dispatch_assert_queue_V2(self->_selfQueue);
  roundRobinTimer = self->_roundRobinTimer;
  if (roundRobinTimer)
  {
    dispatch_source_cancel(roundRobinTimer);
    v4 = self->_roundRobinTimer;
    self->_roundRobinTimer = 0;
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_selfQueue);
  v6 = self->_roundRobinTimer;
  self->_roundRobinTimer = v5;

  v7 = self->_roundRobinTimer;
  v8 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v7, v8, 0x12A05F200uLL, 0x989680uLL);
  objc_initWeak(&location, self);
  v9 = self->_roundRobinTimer;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100375D2C;
  v10[3] = &unk_10098AB18;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_roundRobinTimer);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_stopRoundRobinTimer
{
  dispatch_assert_queue_V2(self->_selfQueue);
  roundRobinTimer = self->_roundRobinTimer;
  if (roundRobinTimer)
  {
    dispatch_source_cancel(roundRobinTimer);
    v4 = self->_roundRobinTimer;
    self->_roundRobinTimer = 0;
  }
}

- (void)_roundRobinTimerHandler
{
  dispatch_assert_queue_V2(self->_selfQueue);
  *buf = 0x1A00000013;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_10037E3DC(&v19, buf, &buf[8], 2uLL);
  v4 = v19;
  v5 = v20;
  if (v19 != v20)
  {
    *&v3 = 136315651;
    v16 = v3;
    do
    {
      v6 = *v4;
      v17 = 0;
      v18 = 0;
      v7 = [(_FindingAdvertiser *)self _peerIndexReferenceForAdvertisementType:v6 outPeers:&v18 outAdvertisements:&v17, v16];
      v8 = v18;
      v9 = v17;
      if ([v8 count] >= 2)
      {
        v10 = *v7;
        *v7 = (v10 + 1) % [v8 count];
        v11 = [v8 objectAtIndexedSubscript:?];
        v12 = [v9 objectAtIndexedSubscript:*v7];
        v13 = [(_FindingAdvertiser *)self _configureAdvertiserForType:v6 toPeer:v11 withAdvertisement:v12];
        v14 = qword_1009F9820;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_100346ED8(v6);
          *buf = v16;
          *&buf[4] = v15;
          v23 = 2113;
          v24 = v11;
          v25 = 2113;
          v26 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-disc,Round robin: re-configured advertiser (%s). New peer: %{private}@. New advertisement: %{private}@.", buf, 0x20u);
        }
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v19;
  }

  if (v4)
  {
    v20 = v4;
    operator delete(v4);
  }
}

- (void)_cbAdvertisingAddressChanged
{
  dispatch_assert_queue_V2(self->_selfQueue);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-disc,BT adv address changed", buf, 2u);
  }

  v15 = 26;
  v17 = 0;
  v18 = 0;
  *buf = 0;
  sub_10037E3DC(buf, &v15, buf, 1uLL);
  v4 = *buf;
  v5 = v17;
  if (*buf != v17)
  {
    do
    {
      v6 = *v4;
      v13 = 0;
      v14 = 0;
      v7 = [(_FindingAdvertiser *)self _peerIndexReferenceForAdvertisementType:v6 outPeers:&v14 outAdvertisements:&v13];
      v8 = v14;
      v9 = v13;
      if ([v8 count])
      {
        v10 = [v8 objectAtIndexedSubscript:*v7];
        v11 = [v9 objectAtIndexedSubscript:*v7];
        v12 = [(_FindingAdvertiser *)self _configureAdvertiserForType:v6 toPeer:v10 withAdvertisement:v11];
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = *buf;
  }

  if (v4)
  {
    v17 = v4;
    operator delete(v4);
  }
}

- (void)payloadDidChange
{
  dispatch_assert_queue_V2(self->_selfQueue);
  if (self->_spatialInteractionAdvertiser)
  {
    v3 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
    aggregatedUWBData = [v3 aggregatedUWBData];

    uwbConfigData = [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser uwbConfigData];
    v6 = [uwbConfigData isEqualToData:aggregatedUWBData];

    if ((v6 & 1) == 0)
    {
      if (([(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser controlFlags]& 8) != 0)
      {
        [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setUwbConfigData:aggregatedUWBData];
        v8 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          v10 = aggregatedUWBData;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: payload did change: %@. Advertiser updated, but not currently advertising", &v9, 0xCu);
        }
      }

      else
      {
        [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setControlFlags:[(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser controlFlags]| 8];
        [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setUwbConfigData:aggregatedUWBData];
        v7 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          v10 = aggregatedUWBData;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: payload did change: %@. Advertiser updated, and control flags toggled for it to take effect", &v9, 0xCu);
        }

        [(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser setControlFlags:[(CBSpatialInteractionSession *)self->_spatialInteractionAdvertiser controlFlags]& 0xFFFFFFF7];
      }
    }
  }
}

@end
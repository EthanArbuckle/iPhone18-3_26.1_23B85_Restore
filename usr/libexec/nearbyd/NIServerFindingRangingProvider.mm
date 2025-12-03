@interface NIServerFindingRangingProvider
- (BOOL)_doesWantTriggeredDutyCycledAcquisition;
- (BOOL)canRangeWithPeer:(id)peer technology:(int)technology;
- (NIServerFindingRangingProvider)initWithIdentifier:(const void *)identifier isFinder:(BOOL)finder consumer:(id)consumer queue:(id)queue pbLogger:(shared_ptr<rose::protobuf::Logger>)logger;
- (NSArray)rangingPeers;
- (float)_adjustDutyCycleForInterfaceDelays:(float)delays schedulingInterval:(unsigned int)interval;
- (float)_getDutyCycleForTriggeredDutyCycledAcquisitionRunningAtLowPriority:(BOOL)priority;
- (id).cxx_construct;
- (id)_getDefaultNbammsRangingConfigParameters;
- (id)printableState;
- (id)startRangingWithPeer:(id)peer technology:(int)technology peerAdvertisement:(id)advertisement OOBRangingParameters:(const OOBRangingParameters *)parameters;
- (id)stopRangingWithPeer:(id)peer;
- (int)rangingAcquisitionType;
- (optional<SecondarySchedulingParameters>)_getFindingSecondarySchedulingParameters;
- (optional<unsigned)_getDitherConst;
- (unint64_t)_macAddressForIRK:(id)k;
- (unsigned)_getSchedulingIntervalForTriggeredDutyCycledAcquisitionRunningAtLowPriority:(BOOL)priority;
- (vector<rose::finding::Technology,)supportedTechnologies;
- (void)_assignDebugParametersIfAvailable:(id)available;
- (void)_resetRangingStateForToken:(id)token;
- (void)_sendHangup:(BOOL)hangup finderGone:(BOOL)gone findeeGone:(BOOL)findeeGone token:(id)token;
- (void)_setInitiator;
- (void)activate;
- (void)dealloc;
- (void)didFailCryptoWithToken:(id)token;
- (void)didFailMutualAuthWithToken:(id)token;
- (void)didInvalidateNbammsSessionWithReason:(int)reason token:(id)token;
- (void)didReceiveNbammsPeerAlgorithmAidingData:(const void *)data signallingData:(const void *)signallingData token:(id)token;
- (void)didReceiveNbammsSessionStatusUpdate:(const ServiceRequestStatusUpdate *)update token:(id)token;
- (void)didReceiveNewNbammsSolution:(const void *)solution token:(id)token;
- (void)didReceiveUnsuccessfulNbammsSolution:(const void *)solution token:(id)token;
- (void)invalidate;
- (void)rangingServiceDidUpdateState:(int)state cause:(int)cause;
- (void)setAlgorithmAidingData:(const void *)data forPeer:(id)peer;
- (void)setDebugParameters:(id)parameters;
- (void)setSignallingData:(const void *)data forPeer:(id)peer;
@end

@implementation NIServerFindingRangingProvider

- (NIServerFindingRangingProvider)initWithIdentifier:(const void *)identifier isFinder:(BOOL)finder consumer:(id)consumer queue:(id)queue pbLogger:(shared_ptr<rose::protobuf::Logger>)logger
{
  ptr = logger.__ptr_;
  finderCopy = finder;
  consumerCopy = consumer;
  queueCopy = queue;
  if (!consumerCopy)
  {
    __assert_rtn("[NIServerFindingRangingProvider initWithIdentifier:isFinder:consumer:queue:pbLogger:]", "NIServerFindingRanging.mm", 3453, "consumer");
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = sub_100009210(finderCopy);
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] init", buf, 0xCu);
  }

  v34.receiver = self;
  v34.super_class = NIServerFindingRangingProvider;
  v15 = [(NIServerFindingRangingProvider *)&v34 init];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    std::string::operator=((v15 + 8), identifier);
    v17->_isFinder = finderCopy;
    v17->_isInitiator = 0;
    objc_storeWeak(v16 + 5, consumerCopy);
    objc_storeStrong(v16 + 6, queue);
    v19 = *ptr;
    v18 = *(ptr + 1);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v17->_pbLogger.__cntrl_;
    v17->_pbLogger.__ptr_ = v19;
    v17->_pbLogger.__cntrl_ = v18;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }

    v17->_activated = 0;
    v21 = objc_opt_new();
    debugParameters = v17->_debugParameters;
    v17->_debugParameters = v21;

    v23 = +[NSUserDefaults standardUserDefaults];
    v24 = [v23 BOOLForKey:@"UseTestNbammsMode"];

    v25 = qword_1009F9820;
    v26 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v26)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#find-range,Using Test Nbamms MAC mode", buf, 2u);
      }

      v27 = 1;
    }

    else
    {
      if (v26)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#find-range,Using POR Nbamms MAC mode", buf, 2u);
      }

      v27 = 0;
    }

    v17->_useTestNbammsMode = v27;
    [(NIServerFindingRangingProvider *)v17 _setInitiator];
    v28 = sub_1000054A8();
    if (sub_1000149D4(v28))
    {
      _getDefaultNbammsRangingConfigParameters = [(NIServerFindingRangingProvider *)v17 _getDefaultNbammsRangingConfigParameters];
      v30 = v17->_debugParameters;
      v17->_debugParameters = _getDefaultNbammsRangingConfigParameters;
    }

    v31 = objc_alloc_init(NSMutableDictionary);
    trackingPeers = v17->_trackingPeers;
    v17->_trackingPeers = v31;
  }

  return v17;
}

- (void)activate
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (!self->_activated)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_100009210(self->_isFinder);
      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] activate", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-range,Consumer is listening for ranging availability", buf, 2u);
      }

      sub_10029787C();
    }

    if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004B6ED0();
      }
    }

    else
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-range,Consumer is NOT listening for ranging availability", buf, 2u);
      }
    }

    selfCopy->_activated = 1;
  }
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-range,invalidate", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  [(NSMutableDictionary *)self->_trackingPeers allKeys];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [(NIServerFindingRangingProvider *)self _sendHangup:1 finderGone:self->_isFinder findeeGone:!self->_isFinder token:v8];
        [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  if (self->_uwbSystemListener.__ptr_)
  {
    v9 = sub_10035D02C();
    cntrl = self->_uwbSystemListener.__cntrl_;
    ptr = self->_uwbSystemListener.__ptr_;
    v13 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    sub_100361200(v9, &ptr);
    if (v13)
    {
      sub_10000AD84(v13);
    }

    v11 = self->_uwbSystemListener.__cntrl_;
    self->_uwbSystemListener.__ptr_ = 0;
    self->_uwbSystemListener.__cntrl_ = 0;
    if (v11)
    {
      sub_10000AD84(v11);
    }
  }

  self->_activated = 0;
}

- (void)dealloc
{
  if (self->_uwbSystemListener.__ptr_)
  {
    v3 = sub_10035D02C();
    cntrl = self->_uwbSystemListener.__cntrl_;
    ptr = self->_uwbSystemListener.__ptr_;
    v8 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    sub_100361200(v3, &ptr);
    if (v8)
    {
      sub_10000AD84(v8);
    }

    v5 = self->_uwbSystemListener.__cntrl_;
    self->_uwbSystemListener.__ptr_ = 0;
    self->_uwbSystemListener.__cntrl_ = 0;
    if (v5)
    {
      sub_10000AD84(v5);
    }
  }

  v6.receiver = self;
  v6.super_class = NIServerFindingRangingProvider;
  [(NIServerFindingRangingProvider *)&v6 dealloc];
}

- (BOOL)canRangeWithPeer:(id)peer technology:(int)technology
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (!peerCopy)
  {
    __assert_rtn("[NIServerFindingRangingProvider canRangeWithPeer:technology:]", "NIServerFindingRanging.mm", 3553, "token");
  }

  if (!self->_activated)
  {
    goto LABEL_16;
  }

  if (technology != 1)
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_100009210(self->_isFinder);
      v21 = 136315138;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] Do not support UWB only based finding", &v21, 0xCu);
    }

    goto LABEL_16;
  }

  v7 = sub_1000054A8();
  v8 = sub_1000149D4(v7);
  v9 = sub_10035D02C();
  v10 = (*(*v9[814] + 72))(v9[814]);
  if (v10 != 1 || !v8)
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_100009210(self->_isFinder);
      v21 = 136315650;
      v22 = v16;
      v23 = 1024;
      v24 = v8;
      v25 = 1024;
      v26 = v10 == 1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] Can't range yet, UWB system not ready. Supports NMI: %d, state: %d", &v21, 0x18u);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if ([(NSMutableDictionary *)self->_trackingPeers count]>= 2)
  {
    if (!self->_isFinder)
    {
      v18 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];

      if (!v18)
      {
        v19 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
        [v19 logUnservableRangingRequestWithToken:peerCopy isFinder:self->_isFinder];
      }
    }

    v20 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];
    v12 = v20 != 0;
  }

  else
  {
    v12 = 1;
  }

LABEL_17:

  return v12;
}

- (id)startRangingWithPeer:(id)peer technology:(int)technology peerAdvertisement:(id)advertisement OOBRangingParameters:(const OOBRangingParameters *)parameters
{
  peerCopy = peer;
  advertisementCopy = advertisement;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_100009210(self->_isFinder);
    descriptionInternal = [peerCopy descriptionInternal];
    v14 = sub_100346EF4(technology);
    v15 = [NSString stringWithFormat:@"<nbAcqChIdx: %d, nbMask: %d, lowPrioDutyCycle: %d>", parameters->nbAcqChIdx, parameters->nbMask, parameters->useLowPriorityDutyCycle];
    *buf = 136315907;
    *&buf[4] = v12;
    *&buf[12] = 2113;
    *&buf[14] = descriptionInternal;
    *&buf[22] = 2080;
    *&buf[24] = v14;
    LOWORD(v68) = 2112;
    *(&v68 + 2) = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] startRangingWithPeer: %{private}@. Technology: %s. OOBParams: %@", buf, 0x2Au);
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (!peerCopy)
  {
    __assert_rtn("[NIServerFindingRangingProvider startRangingWithPeer:technology:peerAdvertisement:OOBRangingParameters:]", "NIServerFindingRanging.mm", 3592, "token");
  }

  if (!self->_activated)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6F10();
    }

    v80 = NSLocalizedFailureReasonErrorKey;
    v81 = @"Ranging not activated";
    v20 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v21 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v20];
    goto LABEL_14;
  }

  if (technology != 1)
  {
    v78 = NSLocalizedFailureReasonErrorKey;
    v79 = @"Specified technology not supported";
    v20 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v21 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v20];
LABEL_14:
    v22 = v21;
    goto LABEL_15;
  }

  v16 = sub_1000054A8();
  if (!sub_1000149D4(v16))
  {
    v76 = NSLocalizedFailureReasonErrorKey;
    v77 = @"Device does not support specified technology";
    v20 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v21 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v20];
    goto LABEL_14;
  }

  if (self->_useTestNbammsMode)
  {
    mmsNumFragmentsOOB = sub_1004285B0(16);
    nbMask = 0;
    nbAcqChIdx = 5;
  }

  else if (sub_1003471DC())
  {
    mmsNumFragmentsOOB = sub_1004285B0(16);
    nbAcqChIdx = 2;
    nbMask = 1;
  }

  else
  {
    nbAcqChIdx = parameters->nbAcqChIdx;
    nbMask = parameters->nbMask;
    mmsNumFragmentsOOB = parameters->mmsNumFragmentsOOB;
  }

  if (self->_useTestNbammsMode)
  {
    v24 = 1;
  }

  else
  {
    v24 = 6;
  }

  buf[0] = v24;
  *&buf[1] = 0;
  *&buf[4] = nbAcqChIdx;
  buf[6] = 1;
  v62 = sub_100428478(buf);
  v25 = sub_100428594(mmsNumFragmentsOOB);
  v26 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];
  v27 = v26 == 0;

  if (!v27)
  {
    v28 = [(NSMutableDictionary *)self->_trackingPeers objectForKeyedSubscript:peerCopy];
    getOOBRangingParameters = [v28 getOOBRangingParameters];
    v30 = 1;
    if (__PAIR64__(parameters->nbMask, parameters->nbAcqChIdx) == __PAIR64__(BYTE1(getOOBRangingParameters), getOOBRangingParameters))
    {
      v30 = parameters->useLowPriorityDutyCycle != HIBYTE(getOOBRangingParameters);
    }

    uniqueIdentifier = [advertisementCopy uniqueIdentifier];
    if (uniqueIdentifier)
    {
      uniqueIdentifier2 = [advertisementCopy uniqueIdentifier];
      v33 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];
      advertisement = [v33 advertisement];
      uniqueIdentifier3 = [advertisement uniqueIdentifier];
      v36 = [uniqueIdentifier2 isEqualToData:uniqueIdentifier3];

      if (!v30)
      {
        if ((v36 & 1) == 0)
        {
          v37 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
          buf[0] = 0;
          v73 = 0;
          [v37 refreshRangingForToken:peerCopy withNewStartOptions:buf];
        }

        goto LABEL_42;
      }
    }

    else if (!v30)
    {
LABEL_42:
      v56 = [(NSMutableDictionary *)self->_trackingPeers objectForKeyedSubscript:peerCopy];
      [v56 setAdvertisement:advertisementCopy];

      v20 = [(NSMutableDictionary *)self->_trackingPeers objectForKeyedSubscript:peerCopy];
      [(NIServerFindingRangingProviderPeerInfo *)v20 setOOBRangingParameters:parameters];
      v22 = 0;
      goto LABEL_15;
    }

    v52 = [(NSMutableDictionary *)self->_trackingPeers objectForKeyedSubscript:peerCopy];
    advertisement2 = [v52 advertisement];
    address = [advertisement2 address];
    *buf = address;
    *&buf[4] = WORD2(address);
    [(NIServerFindingRangingProvider *)self _prepareStartRangingOptionsWithPeerBTAdvAddress:buf nbUwbAcquisitionBandChannel:v62 useLowPriorityDutyCycle:parameters->useLowPriorityDutyCycle];

    v55 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
    v70 = v75[4];
    v71 = v75[5];
    v72 = v75[6];
    *buf = v75[0];
    *&buf[16] = v75[1];
    v68 = v75[2];
    v69 = v75[3];
    v73 = 1;
    [v55 refreshRangingForToken:peerCopy withNewStartOptions:buf];

    goto LABEL_42;
  }

  v20 = [[NIServerFindingRangingProviderPeerInfo alloc] initWithAdvertisement:advertisementCopy OOBRangingParameters:parameters];
  [(NSMutableDictionary *)self->_trackingPeers setObject:v20 forKey:peerCopy];
  protocolVersion = [advertisementCopy protocolVersion];
  if (protocolVersion >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = protocolVersion;
  }

  v61 = v39;
  v40 = dword_1005690A8[v39];
  v41 = qword_1009F9820;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v60 = nbMask;
    isFinder = self->_isFinder;
    protocolVersion2 = [advertisementCopy protocolVersion];
    *buf = 67110400;
    *&buf[4] = isFinder;
    *&buf[8] = 1024;
    *&buf[10] = nbAcqChIdx;
    *&buf[14] = 1024;
    *&buf[16] = v62;
    *&buf[20] = 1024;
    *&buf[22] = 2;
    *&buf[26] = 1024;
    *&buf[28] = protocolVersion2;
    LOWORD(v68) = 1024;
    *(&v68 + 2) = v61;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#find-range,startRangingWithPeer: isFinder = %d, NapChIdx = %d, NapBch = %d, selfProtoVer: %d, peerProtoVer: %d, sharedProtoVer: %d", buf, 0x26u);
    nbMask = v60;
  }

  LODWORD(v59) = v40;
  -[NIServerFindingRangingProvider _prepareServiceRequestForDiscoveryToken:technology:useCase:nbMask:nbUwbAcquisitionBandChannel:mmsNumFragments:mmsSlotSizeMsec:](self, "_prepareServiceRequestForDiscoveryToken:technology:useCase:nbMask:nbUwbAcquisitionBandChannel:mmsNumFragments:mmsSlotSizeMsec:", peerCopy, 1, [advertisementCopy useCase], nbMask, v62, v25, v59);
  if (v74)
  {
    v44 = [(NSMutableDictionary *)self->_trackingPeers objectForKeyedSubscript:peerCopy];
    advertisement3 = [v44 advertisement];
    address2 = [advertisement3 address];
    LODWORD(location) = address2;
    WORD2(location) = WORD2(address2);
    [(NIServerFindingRangingProvider *)self _prepareStartRangingOptionsWithPeerBTAdvAddress:&location nbUwbAcquisitionBandChannel:v62 useLowPriorityDutyCycle:parameters->useLowPriorityDutyCycle];

    objc_initWeak(&location, self);
    v47 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
    v48 = self->_isFinder;
    v49 = objc_loadWeakRetained(&location);
    if ((v74 & 1) == 0)
    {
      sub_1000195BC();
    }

    v22 = [v47 registerNBAMMSSessionWithToken:peerCopy isFinder:v48 client:v49 serviceRequest:buf startRangingOptions:v75 sharedProtocol:v61];

    trackingPeers = self->_trackingPeers;
    if (v22)
    {
      [(NSMutableDictionary *)trackingPeers removeObjectForKey:peerCopy];
      v51 = v22;
    }

    else
    {
      v58 = [(NSMutableDictionary *)trackingPeers objectForKey:peerCopy];
      [v58 setRangingActive:1];
    }

    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6F44();
    }

    v65 = NSLocalizedFailureReasonErrorKey;
    v66 = @"Could not build ranging service request";
    v57 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v22 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v57];
  }

LABEL_15:

  return v22;
}

- (id)stopRangingWithPeer:(id)peer
{
  peerCopy = peer;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100009210(self->_isFinder);
    *buf = 136315395;
    v17 = v6;
    v18 = 2113;
    v19 = peerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] stopRangingWithPeer: %{private}@.", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (!peerCopy)
  {
    __assert_rtn("[NIServerFindingRangingProvider stopRangingWithPeer:]", "NIServerFindingRanging.mm", 3730, "token");
  }

  if (self->_activated)
  {
    v7 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];
    v8 = v7 == 0;

    if (!v8)
    {
      v9 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];
      v10 = v9 == 0;

      if (!v10)
      {
        [(NIServerFindingRangingProvider *)self _sendHangup:1 finderGone:self->_isFinder findeeGone:!self->_isFinder token:peerCopy];
        [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:peerCopy];
      }
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6F78();
    }

    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"Ranging not activated";
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v12];
  }

  return v11;
}

- (void)setAlgorithmAidingData:(const void *)data forPeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    v7 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];
      [v8 setAlgorithmAidingData:data];

      v9 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
      [v9 updateAlgorithmAidingData:data token:peerCopy];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B6FE0();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B6FAC();
  }
}

- (void)setSignallingData:(const void *)data forPeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    v7 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:peerCopy];
      [v8 setSignallingData:data];

      v9 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
      [v9 updateSignallingData:data token:peerCopy];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B7048();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7014();
  }
}

- (void)_resetRangingStateForToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      descriptionInternal = [tokenCopy descriptionInternal];
      v8 = 138412290;
      v9 = descriptionInternal;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-range,Reset ranging state for token %@", &v8, 0xCu);
    }

    v7 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
    [v7 unregisterNBAMMSSessionForToken:tokenCopy];

    [(NSMutableDictionary *)self->_trackingPeers removeObjectForKey:tokenCopy];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B707C();
  }
}

- (void)_sendHangup:(BOOL)hangup finderGone:(BOOL)gone findeeGone:(BOOL)findeeGone token:(id)token
{
  findeeGoneCopy = findeeGone;
  goneCopy = gone;
  hangupCopy = hangup;
  tokenCopy = token;
  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 BOOLForKey:@"FindingDisableHangup"];

  if (!v12)
  {
    if (!hangupCopy && !goneCopy && !findeeGoneCopy)
    {
      goto LABEL_17;
    }

    v14 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:tokenCopy];

    if (!v14)
    {
LABEL_16:
      *buf = 250000000;
      std::this_thread::sleep_for (buf);
      goto LABEL_17;
    }

    v15 = [(NSMutableDictionary *)self->_trackingPeers objectForKey:tokenCopy];
    *buf = [v15 getSignallingData];
    v25 = v16;
    if ((v16 & 0x100) != 0)
    {
      v17 = (v16 >> 8) & 1;
    }

    else
    {
      v18 = sub_1000054A8();
      v19 = sub_100003AA8(v18[144]);
      *buf = 0;
      LOBYTE(v25) = v19;
      LOBYTE(v17) = 1;
      HIBYTE(v25) = 1;
    }

    if (hangupCopy)
    {
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#find-range,Setting hangup bit", v23, 2u);
      }

      *buf = 257;
      if (!goneCopy)
      {
LABEL_13:
        if (!findeeGoneCopy)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }
    }

    else if (!goneCopy)
    {
      goto LABEL_13;
    }

    v21 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#find-range,Setting finder_gone bit", v23, 2u);
    }

    *&buf[2] = 257;
    if (!findeeGoneCopy)
    {
LABEL_14:
      if (v17)
      {
LABEL_15:
        [(NIServerFindingRangingProvider *)self setSignallingData:buf forPeer:tokenCopy];

        goto LABEL_16;
      }

LABEL_27:
      sub_1000195BC();
    }

LABEL_24:
    v22 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#find-range,Setting findee_gone bit", v23, 2u);
    }

    *&buf[4] = 257;
    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-range,Would set hangup bit, but it's disabled in defaults writes", buf, 2u);
  }

LABEL_17:
}

- (vector<rose::finding::Technology,)supportedTechnologies
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  if (self->_activated)
  {
    v6 = sub_1000054A8();
    result = sub_1000149D4(v6);
    if (result)
    {
      sub_10004F51C(retstr, 1uLL);
    }
  }

  return result;
}

- (NSArray)rangingPeers
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    allKeys = [(NSMutableDictionary *)self->_trackingPeers allKeys];
  }

  else
  {
    allKeys = 0;
  }

  return allKeys;
}

- (void)setDebugParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (parametersCopy)
  {
    v6 = [parametersCopy objectForKey:@"useTestNbammsMode"];

    if (v6)
    {
      v7 = [v5 objectForKey:@"useTestNbammsMode"];
      self->_useTestNbammsMode = [v7 BOOLValue];

      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_useTestNbammsMode)
        {
          v9 = "Y";
        }

        else
        {
          v9 = "N";
        }

        v11 = 136315138;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-range,Overriding value in _useTestNbammsMode with value provided by client = %s", &v11, 0xCu);
      }

      [(NIServerFindingRangingProvider *)self _setInitiator];
    }

    [(NIServerFindingRangingProvider *)self _assignDebugParametersIfAvailable:v5];
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-range,Set debug config params", &v11, 2u);
    }
  }
}

- (int)rangingAcquisitionType
{
  if (sub_1003471DC())
  {
    return 0;
  }

  else
  {
    return ![(NIServerFindingRangingProvider *)self _doesWantTriggeredDutyCycledAcquisition];
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_consumerQueue);
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_10028DC50;
  v90 = sub_10028DC60;
  v91 = objc_opt_new();
  v2 = v87[5];
  v3 = sub_100009210(self->_isFinder);
  activated = self->_activated;
  isInitiator = self->_isInitiator;
  useTestNbammsMode = self->_useTestNbammsMode;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Ranging provider (%s). Activated: %d. Initiator: %d. Test-NBAMMS: %d. FC3: %d", v3, activated, isInitiator, useTestNbammsMode, [v7 BOOLForKey:@"FindingUseFC3"]);
  [v2 addObject:v8];

  v9 = v87[5];
  v10 = [NSString stringWithFormat:@"    Trigger type: %d. Acquisition type: %d", [(NIServerFindingRangingProvider *)self rangingTriggerType], [(NIServerFindingRangingProvider *)self rangingAcquisitionType]];
  [v9 addObject:v10];

  if ([(NIServerFindingRangingProvider *)self _doesWantTriggeredDutyCycledAcquisition])
  {
    [(NIServerFindingRangingProvider *)self _getDutyCycleForTriggeredDutyCycledAcquisitionRunningAtLowPriority:0];
    v12 = [NSString stringWithFormat:@"%0.1f%% per %0.1f ms", v11 * 100.0, [(NIServerFindingRangingProvider *)self _getSchedulingIntervalForTriggeredDutyCycledAcquisitionRunningAtLowPriority:0]/ 1000.0];
    [(NIServerFindingRangingProvider *)self _getDutyCycleForTriggeredDutyCycledAcquisitionRunningAtLowPriority:1];
    v14 = [NSString stringWithFormat:@"%0.1f%% per %0.1f ms", v13 * 100.0, [(NIServerFindingRangingProvider *)self _getSchedulingIntervalForTriggeredDutyCycledAcquisitionRunningAtLowPriority:1]/ 1000.0];
    _getDitherConst = [(NIServerFindingRangingProvider *)self _getDitherConst];
    if ((_getDitherConst & 0x100) != 0)
    {
      v16 = [NSString stringWithFormat:@"%d ms", _getDitherConst];
    }

    else
    {
      v16 = @"not enabled";
    }

    v17 = v87[5];
    v18 = [NSString stringWithFormat:@"    Duty cycled acquisition: ON. Default: %@. Low: %@. Dither: %@", v12, v14, v16];
    [v17 addObject:v18];

    _getFindingSecondarySchedulingParameters = [(NIServerFindingRangingProvider *)self _getFindingSecondarySchedulingParameters];
    if ((v20 & 0x100000000) != 0)
    {
      v21 = v87[5];
      v22 = [NSString stringWithFormat:@"    Duty cycled acquisition secondary: %0.1f%% per %0.1f ms (after %0.1f s)", *&v20 * 100.0, HIDWORD(_getFindingSecondarySchedulingParameters) / 1000.0, _getFindingSecondarySchedulingParameters / 1000.0 / 1000.0];
      [v21 addObject:v22];
    }

    else
    {
      [v87[5] addObject:@"    Duty cycled acquisition secondary: OFF"];
    }
  }

  else
  {
    [v87[5] addObject:@"    Duty cycled acquisition: OFF"];
  }

  v23 = v87[5];
  v24 = sub_1003461E0(@"FindingUWBTotalTimeoutSecondsOverride", 0x708u);
  v25 = [NSString stringWithFormat:@"    Ranging watchdogs: total %d s, event %d ms", v24, sub_1003461E0(@"FindingUWBEventWatchdogTimeoutMillisecondsOverride", 0x7D0u)];
  [v23 addObject:v25];

  v26 = v87[5];
  v27 = self->_uwbSystemListener.__ptr_ != 0;
  v28 = sub_10035D02C();
  v29 = (*(*v28[814] + 72))(v28[814]);
  v30 = v69;
  sub_100004A08(v69, (&off_1009A2208)[v29]);
  if (SBYTE7(v70) < 0)
  {
    v30 = v69[0];
  }

  v31 = sub_10035D02C();
  v32 = (*(*v31[814] + 72))(v31[814]);
  sub_100004A08(&__p, (&off_1009A2230)[v32 >> 32]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v34 = [NSString stringWithFormat:@"    System listener: %d. State: %s. Cause: %s", v27, v30, p_p];
  [v26 addObject:v34];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v70) < 0)
  {
    operator delete(v69[0]);
  }

  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = self->_trackingPeers;
  v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v35)
  {
    v62 = *v82;
    do
    {
      v64 = v35;
      for (i = 0; i != v64; i = i + 1)
      {
        if (*v82 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v81 + 1) + 8 * i);
        v37 = [(NSMutableDictionary *)self->_trackingPeers objectForKeyedSubscript:?];
        v38 = v37;
        if (v37)
        {
          [v37 getAlgorithmAidingData];
        }

        else
        {
          v80 = 0;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          *v69 = 0u;
        }

        getSignallingData = [v38 getSignallingData];
        v68 = v39;
        advertisement = [v38 advertisement];
        getRangingActive = [v38 getRangingActive];
        getOOBRangingParameters = [v38 getOOBRangingParameters];
        v43 = v87[5];
        descriptionInternal = [v65 descriptionInternal];
        v45 = v80;
        v46 = HIBYTE(v68);
        v47 = "0";
        if (HIBYTE(v68) == 1)
        {
          sub_100287280(&getSignallingData, &__p);
          v47 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v47 = __p.__r_.__value_.__r.__words[0];
          }
        }

        v48 = [NSString stringWithFormat:@"    Peer: %@. NBAMMS active: %d. Aiding: %d. Signalling: %s", descriptionInternal, getRangingActive, v45, v47];
        [v43 addObject:v48];

        if (v46 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v49 = v87[5];
        v50 = [NSString stringWithFormat:@"        Adv: %@", advertisement];
        [v49 addObject:v50];

        v51 = v87[5];
        v52 = [NSString stringWithFormat:@"        OOB parameters: nbMask %d, nbChIdx %d, lowPriorityDutyCycle %d", BYTE1(getOOBRangingParameters), getOOBRangingParameters, HIBYTE(getOOBRangingParameters) & 1];
        [v51 addObject:v52];
      }

      v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v35);
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v53 = v87[5];
    v54 = [NSString stringWithFormat:@"    Debug params (%d)", [(NSDictionary *)self->_debugParameters count]];
    [v53 addObject:v54];

    debugParameters = self->_debugParameters;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100292920;
    v66[3] = &unk_1009A1B08;
    v66[4] = &v86;
    [(NSDictionary *)debugParameters enumerateKeysAndObjectsUsingBlock:v66];
  }

  v56 = v87[5];
  v57 = +[NIServerFindingNBAMMSSessionManager sharedInstance];
  printableState = [v57 printableState];
  [v56 addObjectsFromArray:printableState];

  v59 = v87[5];
  _Block_object_dispose(&v86, 8);

  return v59;
}

- (void)didReceiveNewNbammsSolution:(const void *)solution token:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained didRangeWithPeer:tokenCopy newSolution:solution];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B70B0();
  }
}

- (void)didReceiveUnsuccessfulNbammsSolution:(const void *)solution token:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained didAttemptRangingWithPeer:tokenCopy unsuccessfulSolution:solution];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B70E4();
  }
}

- (void)didReceiveNbammsSessionStatusUpdate:(const ServiceRequestStatusUpdate *)update token:(id)token
{
  tokenCopy = token;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100009210(self->_isFinder);
    sub_100004A08(v16, (&off_1009A20F0)[update->var1]);
    v9 = v17;
    v10 = v16[0];
    sub_100004A08(__p, (&off_1009A2168)[update->var2]);
    v11 = v16;
    if (v9 < 0)
    {
      v11 = v10;
    }

    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315650;
    v19 = v8;
    v20 = 2080;
    v21 = v11;
    v22 = 2080;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] serviceRequestDidUpdateStatus. Type: %s. Reason: %s", buf, 0x20u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    if (update->var2 == 8 || update->var1 == 4)
    {
      [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:tokenCopy];
      WeakRetained = objc_loadWeakRetained(&self->_consumer);
      [WeakRetained didStopRangingWithPeer:tokenCopy];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7118();
  }
}

- (void)didReceiveNbammsPeerAlgorithmAidingData:(const void *)data signallingData:(const void *)signallingData token:(id)token
{
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_consumerQueue);
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (self->_activated)
    {
      [WeakRetained didReceiveRangingDataForPeer:tokenCopy algorithmAidingData:data signallingData:signallingData];
      if (!self->_isFinder)
      {
        goto LABEL_10;
      }

      if (*(signallingData + 5) == 1 && *(signallingData + 4) == 1)
      {
        v11 = qword_1009F9820;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          descriptionInternal = [tokenCopy descriptionInternal];
          v15 = 138412290;
          v16 = descriptionInternal;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-range,Received findee_gone signal for token %@", &v15, 0xCu);
        }

        [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:tokenCopy];
        [v10 didStopRangingWithPeer:tokenCopy];
        if (!self->_isFinder)
        {
LABEL_10:
          if (*(signallingData + 3) == 1 && *(signallingData + 2) == 1)
          {
            v13 = qword_1009F9820;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              descriptionInternal2 = [tokenCopy descriptionInternal];
              v15 = 138412290;
              v16 = descriptionInternal2;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-range,Received finder_gone signal for token %@", &v15, 0xCu);
            }

            [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:tokenCopy];
            [v10 didStopRangingWithPeer:tokenCopy];
          }
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B714C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7180();
  }
}

- (void)didInvalidateNbammsSessionWithReason:(int)reason token:(id)token
{
  tokenCopy = token;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100009210(self->_isFinder);
    sub_100342FC8(reason, v9);
    sub_1004B71B4();
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:tokenCopy];
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained didStopRangingWithPeer:tokenCopy];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7208();
  }
}

- (void)didFailCryptoWithToken:(id)token
{
  tokenCopy = token;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = sub_100009210(self->_isFinder);
    sub_1004B723C(v6, &v8);
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:tokenCopy];
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained didRangingAuthorizationFailForPeer:tokenCopy];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7280();
  }
}

- (void)didFailMutualAuthWithToken:(id)token
{
  tokenCopy = token;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = sub_100009210(self->_isFinder);
    sub_1004B72B4(v6, &v8);
  }

  dispatch_assert_queue_V2(self->_consumerQueue);
  if (self->_activated)
  {
    [(NIServerFindingRangingProvider *)self _resetRangingStateForToken:tokenCopy];
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained didRangingAuthorizationFailForPeer:tokenCopy];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B72F8();
  }
}

- (void)rangingServiceDidUpdateState:(int)state cause:(int)cause
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100009210(self->_isFinder);
    sub_100004A08(v24, (&off_1009A2208)[state]);
    v9 = v25;
    v10 = v24[0];
    sub_100004A08(__p, (&off_1009A2230)[cause]);
    v11 = v24;
    if (v9 < 0)
    {
      v11 = v10;
    }

    if (v23 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315650;
    v27 = v8;
    v28 = 2080;
    v29 = v11;
    v30 = 2080;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-range,[%s] Ranging service updated state: %s. Cause: %s", buf, 0x20u);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(buf, self);
        consumerQueue = self->_consumerQueue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100293600;
        v17[3] = &unk_1009A1B30;
        objc_copyWeak(&v20, buf);
        stateCopy = state;
        v18 = WeakRetained;
        selfCopy = self;
        dispatch_async(consumerQueue, v17);

        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);
        goto LABEL_17;
      }

      v15 = "[sConsumer respondsToSelector:@selector(rangingBecameUnavailable)]";
      v16 = 4173;
    }

    else
    {
      v15 = "[sConsumer respondsToSelector:@selector(rangingBecameAvailable)]";
      v16 = 4172;
    }

    __assert_rtn("[NIServerFindingRangingProvider rangingServiceDidUpdateState:cause:]", "NIServerFindingRanging.mm", v16, v15);
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B7180();
  }

LABEL_17:
}

- (BOOL)_doesWantTriggeredDutyCycledAcquisition
{
  v3 = [(NIServerFindingRangingProvider *)self _getSchedulingIntervalForTriggeredDutyCycledAcquisitionRunningAtLowPriority:0];
  [(NIServerFindingRangingProvider *)self _getDutyCycleForTriggeredDutyCycledAcquisitionRunningAtLowPriority:0];
  return v4 <= 1.0 && v3 != 0;
}

- (unsigned)_getSchedulingIntervalForTriggeredDutyCycledAcquisitionRunningAtLowPriority:(BOOL)priority
{
  priorityCopy = priority;
  isInitiator = self->_isInitiator;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];
  if (priorityCopy)
  {
    v8 = 120000;
  }

  else
  {
    v8 = 30000;
  }

  if (priorityCopy)
  {
    v9 = 59000;
  }

  else
  {
    v9 = 29000;
  }

  if (isInitiator)
  {
    intValue = v8;
  }

  else
  {
    intValue = v9;
  }

  if (v7)
  {
    intValue = 0;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 objectForKey:@"FindingSchedulingInterval"];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v12 intValue];
    }
  }

  debugParameters = self->_debugParameters;
  if (debugParameters)
  {
    v14 = [(NSDictionary *)debugParameters objectForKey:@"schedulingInterval"];
    v15 = v14;
    if (v14)
    {
      intValue = [v14 intValue];
    }
  }

  return intValue;
}

- (float)_getDutyCycleForTriggeredDutyCycledAcquisitionRunningAtLowPriority:(BOOL)priority
{
  priorityCopy = priority;
  isInitiator = self->_isInitiator;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];
  if (priorityCopy)
  {
    v8 = 0.0508;
  }

  else
  {
    v8 = 0.1034;
  }

  if ((v7 | isInitiator))
  {
    v8 = 0.0;
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 objectForKey:@"FindingDutyCycle"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      v8 = v11;
    }
  }

  debugParameters = self->_debugParameters;
  if (debugParameters)
  {
    v13 = [(NSDictionary *)debugParameters objectForKey:@"dutyCycle"];
    v14 = v13;
    if (v13)
    {
      [v13 floatValue];
      v8 = v15;
    }
  }

  return v8;
}

- (float)_adjustDutyCycleForInterfaceDelays:(float)delays schedulingInterval:(unsigned int)interval
{
  v5 = ((interval - 17000) - 2000);
  if ((interval * delays) > v5)
  {
    v6 = qword_1009F9820;
    delays = v5 / interval;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-range,Provided duty cycle leads to scan window > scheduling interval - (start time offset + interface delays), using entire available scan window", v8, 2u);
    }
  }

  return delays;
}

- (optional<unsigned)_getDitherConst
{
  if (!self->_isInitiator)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#find-range,Dithered duty cycled acquisition not valid for responder";
      v7 = buf;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    intValue = 0;
    return (intValue | (v8 << 8));
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"FindingDisableDitheredAcq"];

  if (v4)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v6 = "#find-range,Dithered duty cycled acquisition is disabled using defaults write";
      v7 = &v16;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 objectForKey:@"FindingDitherConst"];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v11 intValue];
  }

  else
  {
    intValue = 3;
  }

  debugParameters = self->_debugParameters;
  if (debugParameters)
  {
    v13 = [(NSDictionary *)debugParameters objectForKey:@"ditherConst"];
    v14 = v13;
    if (v13)
    {
      intValue = [v13 intValue];
    }
  }

  v8 = 1;
  return (intValue | (v8 << 8));
}

- (optional<SecondarySchedulingParameters>)_getFindingSecondarySchedulingParameters
{
  if (self->_isInitiator)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B7394();
    }

    goto LABEL_5;
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];

  if (v4)
  {
LABEL_5:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_45;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 objectForKey:@"FindingSecondarySchedulingDelay"];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v11 intValue];
    v13 = 1;
  }

  else
  {
    intValue = 0;
    v13 = 0;
  }

  debugParameters = self->_debugParameters;
  if (debugParameters)
  {
    v15 = [(NSDictionary *)debugParameters objectForKey:@"secondarySchedulingDelay"];
    v16 = v15;
    if (v15)
    {
      intValue = [v15 intValue];
      v13 = 1;
    }
  }

  if ((v13 & (intValue != 0)) != 0)
  {
    v17 = intValue;
  }

  else
  {
    v17 = 30000000;
  }

  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = [v18 objectForKey:@"FindingSecondarySchedulingInterval"];

  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue2 = [v19 intValue];
    v21 = 1;
  }

  else
  {
    intValue2 = 0;
    v21 = 0;
  }

  v22 = self->_debugParameters;
  if (v22)
  {
    v23 = [(NSDictionary *)v22 objectForKey:@"secondarySchedulingInterval"];
    v24 = v23;
    if (v23)
    {
      intValue2 = [v23 intValue];
      v21 = 1;
    }
  }

  if ((v21 & (intValue2 != 0)) != 0)
  {
    v25 = intValue2;
  }

  else
  {
    v25 = 59000;
  }

  v26 = +[NSUserDefaults standardUserDefaults];
  v27 = [v26 objectForKey:@"FindingSecondaryDutyCycle"];

  v28 = 0.0;
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v27 floatValue];
    v28 = v29;
    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = self->_debugParameters;
  if (v31)
  {
    v32 = [(NSDictionary *)v31 objectForKey:@"secondaryDutyCycle"];
    v33 = v32;
    if (v32)
    {
      [v32 floatValue];
      v28 = v34;
      v30 = 1;
    }
  }

  HIDWORD(v35) = 0;
  v37 = v28 <= 1.0 && v28 > 0.0;
  LODWORD(v35) = 1028658089;
  if ((v30 & v37) != 0)
  {
    *&v35 = v28;
  }

  [(NIServerFindingRangingProvider *)self _adjustDutyCycleForInterfaceDelays:v25 schedulingInterval:v35];
  v39 = v38;
  v9 = v17 & 0xFFFFFF00;

  v8 = v17;
  v5 = v25 << 32;
  v6 = v39;
  v7 = &_mh_execute_header;
LABEL_45:
  v40 = v5 | v9 | v8;
  v41 = v7 | v6;
  *&result.var0.var1.var2 = v41;
  *&result.var0.var0 = v40;
  return result;
}

- (unint64_t)_macAddressForIRK:(id)k
{
  kCopy = k;
  [kCopy bytes];
  v4 = SipHash();

  return v4;
}

- (id)_getDefaultNbammsRangingConfigParameters
{
  useTestNbammsMode = self->_useTestNbammsMode;
  v4 = qword_1009F9820;
  v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (useTestNbammsMode)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v29 = 0;
    v6 = "#find-range,Setting default ranging params for Test Nbamms MAC Mode";
    v7 = &v29;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    LOWORD(v28) = 0;
    v6 = "#find-range,Setting default ranging params for POR Nbamms MAC Mode";
    v7 = &v28;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
LABEL_7:
  v8 = objc_opt_new();
  v9 = sub_1000054A8();
  if (sub_1000149D4(v9))
  {
    v10 = [NSNumber numberWithInt:4097];
    [v8 setObject:v10 forKeyedSubscript:@"nbPacketType"];

    v11 = [NSNumber numberWithInt:9];
    [v8 setObject:v11 forKeyedSubscript:@"mmsBandChannel"];

    v12 = [NSNumber numberWithInt:4];
    [v8 setObject:v12 forKeyedSubscript:@"nbSlotSize"];

    if (self->_useTestNbammsMode)
    {
      v13 = [NSNumber numberWithInt:72];
      [v8 setObject:v13 forKeyedSubscript:@"mmsSlotSize"];
    }

    v14 = [NSNumber numberWithInt:10000000, v28];
    [v8 setObject:v14 forKeyedSubscript:@"startTimeUncertainty"];

    v15 = [NSNumber numberWithInt:99];
    [v8 setObject:v15 forKeyedSubscript:@"interval"];

    v16 = [NSNumber numberWithBool:0];
    [v8 setObject:v16 forKeyedSubscript:@"enableNonInterlacedMMS"];

    v17 = sub_1000054A8();
    v18 = [NSNumber numberWithBool:sub_100460ADC(v17)];
    [v8 setObject:v18 forKeyedSubscript:@"enableAntennaDiversity"];

    v19 = [NSNumber numberWithBool:0];
    [v8 setObject:v19 forKeyedSubscript:@"overrideDefaultAntenna"];

    v20 = [NSNumber numberWithBool:0];
    [v8 setObject:v20 forKeyedSubscript:@"useDedicatedAntennas"];

    v21 = [NSNumber numberWithInt:6];
    [v8 setObject:v21 forKeyedSubscript:@"napSlotSize"];

    v22 = [NSNumber numberWithInt:10];
    [v8 setObject:v22 forKeyedSubscript:@"dataSlotSize"];

    v23 = [NSNumber numberWithBool:1];
    [v8 setObject:v23 forKeyedSubscript:@"useType2Addr"];

    v24 = +[NSUserDefaults standardUserDefaults];
    v25 = [v24 objectForKey:@"enforceNBBandChannel"];

    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 intValue]);
        [v8 setObject:v26 forKeyedSubscript:@"nbBandChannel"];
      }
    }
  }

  return v8;
}

- (void)_setInitiator
{
  v3 = sub_1000054A8();
  if (sub_1000149D4(v3))
  {
    isFinder = self->_isFinder;
    if (self->_useTestNbammsMode)
    {
      goto LABEL_6;
    }
  }

  else
  {
    isFinder = self->_isFinder;
  }

  isFinder ^= 1u;
LABEL_6:
  self->_isInitiator = isFinder;
}

- (void)_assignDebugParametersIfAvailable:(id)available
{
  availableCopy = available;
  if (!availableCopy)
  {
    __assert_rtn("[NIServerFindingRangingProvider _assignDebugParametersIfAvailable:]", "NIServerFindingRanging.mm", 4888, "debugParameters != nil");
  }

  _getDefaultNbammsRangingConfigParameters = [(NIServerFindingRangingProvider *)self _getDefaultNbammsRangingConfigParameters];
  v5 = [_getDefaultNbammsRangingConfigParameters mutableCopy];

  v6 = [availableCopy objectForKey:@"nbTxAntenna"];

  if (v6)
  {
    v7 = [availableCopy objectForKey:@"nbTxAntenna"];
    [(NSDictionary *)v5 setObject:v7 forKeyedSubscript:@"nbTxAntenna"];
  }

  v8 = [availableCopy objectForKey:@"nbRxAntenna"];

  if (v8)
  {
    v9 = [availableCopy objectForKey:@"nbRxAntenna"];
    [(NSDictionary *)v5 setObject:v9 forKeyedSubscript:@"nbRxAntenna"];
  }

  v10 = [availableCopy objectForKey:@"nbPacketType"];

  if (v10)
  {
    v11 = [availableCopy objectForKey:@"nbPacketType"];
    [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:@"nbPacketType"];
  }

  v12 = [availableCopy objectForKey:@"nbBandChannel"];

  if (v12)
  {
    v13 = [availableCopy objectForKey:@"nbBandChannel"];
    [(NSDictionary *)v5 setObject:v13 forKeyedSubscript:@"nbBandChannel"];
  }

  v14 = [availableCopy objectForKey:@"mmsTxAntenna"];

  if (v14)
  {
    v15 = [availableCopy objectForKey:@"mmsTxAntenna"];
    [(NSDictionary *)v5 setObject:v15 forKeyedSubscript:@"mmsTxAntenna"];
  }

  v16 = [availableCopy objectForKey:@"mmsRxAntenna"];

  if (v16)
  {
    v17 = [availableCopy objectForKey:@"mmsRxAntenna"];
    [(NSDictionary *)v5 setObject:v17 forKeyedSubscript:@"mmsRxAntenna"];
  }

  v18 = [availableCopy objectForKey:@"mmsRxSyncAntenna"];

  if (v18)
  {
    v19 = [availableCopy objectForKey:@"mmsRxSyncAntenna"];
    [(NSDictionary *)v5 setObject:v19 forKeyedSubscript:@"mmsRxSyncAntenna"];
  }

  v20 = [availableCopy objectForKey:@"mmsPacketType"];

  if (v20)
  {
    v21 = [availableCopy objectForKey:@"mmsPacketType"];
    [(NSDictionary *)v5 setObject:v21 forKeyedSubscript:@"mmsPacketType"];
  }

  v22 = [availableCopy objectForKey:@"mmsPSR"];

  if (v22)
  {
    v23 = [availableCopy objectForKey:@"mmsPSR"];
    [(NSDictionary *)v5 setObject:v23 forKeyedSubscript:@"mmsPSR"];
  }

  v24 = [availableCopy objectForKey:@"mmsGap"];

  if (v24)
  {
    v25 = [availableCopy objectForKey:@"mmsGap"];
    [(NSDictionary *)v5 setObject:v25 forKeyedSubscript:@"mmsGap"];
  }

  v26 = [availableCopy objectForKey:@"mmsSeqIdx"];

  if (v26)
  {
    v27 = [availableCopy objectForKey:@"mmsSeqIdx"];
    [(NSDictionary *)v5 setObject:v27 forKeyedSubscript:@"mmsSeqIdx"];
  }

  v28 = [availableCopy objectForKey:@"mmsBandChannel"];

  if (v28)
  {
    v29 = [availableCopy objectForKey:@"mmsBandChannel"];
    [(NSDictionary *)v5 setObject:v29 forKeyedSubscript:@"mmsBandChannel"];
  }

  v30 = [availableCopy objectForKey:@"nbSlotSize"];

  if (v30)
  {
    v31 = [availableCopy objectForKey:@"nbSlotSize"];
    [(NSDictionary *)v5 setObject:v31 forKeyedSubscript:@"nbSlotSize"];
  }

  v32 = [availableCopy objectForKey:@"mmsSlotSize"];

  if (v32)
  {
    v33 = [availableCopy objectForKey:@"mmsSlotSize"];
    [(NSDictionary *)v5 setObject:v33 forKeyedSubscript:@"mmsSlotSize"];
  }

  v34 = [availableCopy objectForKey:@"mmsNumFragments"];

  if (v34)
  {
    v35 = [availableCopy objectForKey:@"mmsNumFragments"];
    [(NSDictionary *)v5 setObject:v35 forKeyedSubscript:@"mmsNumFragments"];
  }

  v36 = [availableCopy objectForKey:@"interval"];

  if (v36)
  {
    v37 = [availableCopy objectForKey:@"interval"];
    [(NSDictionary *)v5 setObject:v37 forKeyedSubscript:@"interval"];
  }

  v38 = [availableCopy objectForKey:@"enableNonInterlacedMMS"];

  if (v38)
  {
    v39 = [availableCopy objectForKey:@"enableNonInterlacedMMS"];
    [(NSDictionary *)v5 setObject:v39 forKeyedSubscript:@"enableNonInterlacedMMS"];
  }

  v40 = [availableCopy objectForKey:@"enableAntennaDiversity"];

  if (v40)
  {
    v41 = [availableCopy objectForKey:@"enableAntennaDiversity"];
    [(NSDictionary *)v5 setObject:v41 forKeyedSubscript:@"enableAntennaDiversity"];
  }

  v42 = [availableCopy objectForKey:@"useDedicatedAntennas"];

  if (v42)
  {
    v43 = [availableCopy objectForKey:@"useDedicatedAntennas"];
    [(NSDictionary *)v5 setObject:v43 forKeyedSubscript:@"useDedicatedAntennas"];
  }

  v44 = [availableCopy objectForKey:@"overrideDefaultAntenna"];

  if (v44)
  {
    v45 = [availableCopy objectForKey:@"overrideDefaultAntenna"];
    [(NSDictionary *)v5 setObject:v45 forKeyedSubscript:@"overrideDefaultAntenna"];
  }

  v46 = [availableCopy objectForKey:@"nbChannelSelectionMask"];

  if (v46)
  {
    v47 = [availableCopy objectForKey:@"nbChannelSelectionMask"];
    [(NSDictionary *)v5 setObject:v47 forKeyedSubscript:@"nbChannelSelectionMask"];
  }

  v48 = [availableCopy objectForKey:@"napSlotSize"];

  if (v48)
  {
    v49 = [availableCopy objectForKey:@"napSlotSize"];
    [(NSDictionary *)v5 setObject:v49 forKeyedSubscript:@"napSlotSize"];
  }

  v50 = [availableCopy objectForKey:@"dataSlotSize"];

  if (v50)
  {
    v51 = [availableCopy objectForKey:@"dataSlotSize"];
    [(NSDictionary *)v5 setObject:v51 forKeyedSubscript:@"dataSlotSize"];
  }

  v52 = [availableCopy objectForKey:@"useType2Addr"];

  if (v52)
  {
    v53 = [availableCopy objectForKey:@"useType2Addr"];
    [(NSDictionary *)v5 setObject:v53 forKeyedSubscript:@"useType2Addr"];
  }

  v54 = [availableCopy objectForKey:@"schedulingInterval"];

  if (v54)
  {
    v55 = [availableCopy objectForKey:@"schedulingInterval"];
    [(NSDictionary *)v5 setObject:v55 forKeyedSubscript:@"schedulingInterval"];
  }

  v56 = [availableCopy objectForKey:@"dutyCycle"];

  if (v56)
  {
    v57 = [availableCopy objectForKey:@"dutyCycle"];
    [(NSDictionary *)v5 setObject:v57 forKeyedSubscript:@"dutyCycle"];
  }

  v58 = [availableCopy objectForKey:@"antennaDiversityMask"];

  if (v58)
  {
    v59 = [availableCopy objectForKey:@"antennaDiversityMask"];
    [(NSDictionary *)v5 setObject:v59 forKeyedSubscript:@"antennaDiversityMask"];
  }

  v60 = [availableCopy objectForKey:@"ditherConst"];

  if (v60)
  {
    v61 = [availableCopy objectForKey:@"ditherConst"];
    [(NSDictionary *)v5 setObject:v61 forKeyedSubscript:@"ditherConst"];
  }

  v62 = [availableCopy objectForKey:@"secondarySchedulingDelay"];

  if (v62)
  {
    v63 = [availableCopy objectForKey:@"secondarySchedulingDelay"];
    [(NSDictionary *)v5 setObject:v63 forKeyedSubscript:@"secondarySchedulingDelay"];
  }

  v64 = [availableCopy objectForKey:@"secondarySchedulingInterval"];

  if (v64)
  {
    v65 = [availableCopy objectForKey:@"secondarySchedulingInterval"];
    [(NSDictionary *)v5 setObject:v65 forKeyedSubscript:@"secondarySchedulingInterval"];
  }

  v66 = [availableCopy objectForKey:@"secondaryDutyCycle"];

  if (v66)
  {
    v67 = [availableCopy objectForKey:@"secondaryDutyCycle"];
    [(NSDictionary *)v5 setObject:v67 forKeyedSubscript:@"secondaryDutyCycle"];
  }

  debugParameters = self->_debugParameters;
  self->_debugParameters = v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end
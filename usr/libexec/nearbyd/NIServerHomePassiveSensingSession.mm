@interface NIServerHomePassiveSensingSession
- (BOOL)_shouldRespondToDevice:(id)device;
- (BOOL)updateConfiguration:(id)configuration;
- (NIServerHomePassiveSensingSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (id).cxx_construct;
- (id)configure;
- (id)disableAllServices;
- (id)lastConfiguration;
- (id)objectFromIdentifier:(unint64_t)identifier;
- (id)pauseWithSource:(int64_t)source;
- (id)printableState;
- (id)run;
- (void)_notifyPeerRemoval:(id)removal withReason:(unint64_t)reason;
- (void)_peerHungUp:(unint64_t)up;
- (void)_removePeerObject:(id)object uwbIdentifier:(unint64_t)identifier withReason:(unint64_t)reason;
- (void)_roseSession:(shared_ptr<rose:(int)session :objects::RoseBaseSession>)a3 invalidatedWithReason:;
- (void)dealloc;
- (void)device:(id)device rediscovered:(id)rediscovered;
- (void)deviceDiscovered:(id)discovered;
- (void)deviceLost:(id)lost;
- (void)didReceiveNewSolution:(const void *)solution;
- (void)didReceiveRemoteData:(const void *)data;
- (void)invalidate;
- (void)responderServiceTicketId:(unsigned __int16)id didChangeRangingUpdateRate:(int)rate newThrottleRate:(float)throttleRate prevThrottleRate:(float)prevThrottleRate effectiveSinceCycleInde:(int)inde;
- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects;
@end

@implementation NIServerHomePassiveSensingSession

- (NIServerHomePassiveSensingSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4070(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v19 = objc_opt_class();
  if (v19 != objc_opt_class())
  {
    v35 = +[NSAssertionHandler currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"NIServerHomePassiveSensingSession.mm" lineNumber:98 description:@"NIServerhomePassiveSensingSession given invalid configuration."];
  }

  serverSessionIdentifier = [managerCopy serverSessionIdentifier];

  if (!serverSessionIdentifier)
  {
    v36 = +[NSAssertionHandler currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"NIServerHomePassiveSensingSession.mm" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v38.receiver = self;
  v38.super_class = NIServerHomePassiveSensingSession;
  v21 = [(NIServerBaseSession *)&v38 initWithResourcesManager:managerCopy configuration:configurationCopy error:error];
  if (v21)
  {
    uwbResource = [managerCopy uwbResource];
    v23 = *(v21 + 19);
    *(v21 + 19) = uwbResource;

    if (managerCopy)
    {
      [managerCopy protobufLogger];
      v24 = v37;
    }

    else
    {
      v24 = 0uLL;
    }

    v25 = *(v21 + 7);
    *(v21 + 3) = v24;
    if (v25)
    {
      sub_10000AD84(v25);
    }

    clientConnectionQueue = [managerCopy clientConnectionQueue];
    v27 = *(v21 + 10);
    *(v21 + 10) = clientConnectionQueue;

    v28 = [configurationCopy copy];
    v29 = *(v21 + 28);
    *(v21 + 28) = v28;

    serverSessionIdentifier2 = [managerCopy serverSessionIdentifier];
    uUIDString = [serverSessionIdentifier2 UUIDString];
    v32 = *(v21 + 11);
    *(v21 + 11) = uUIDString;

    *(v21 + 18) = 3;
    *(v21 + 10) = xmmword_10056DAC8;
    *(v21 + 22) = 1;
    v33 = v21;
  }

  return v21;
}

- (id)lastConfiguration
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C40E8(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  configuration = self->_configuration;

  return configuration;
}

- (id)configure
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4160(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004C4214();
  }

  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    *buf = 138412290;
    v31 = configuration;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-hps,Configure. Configuration given: %@", buf, 0xCu);
  }

  v13 = +[NSUserDefaults standardUserDefaults];
  if ([v13 BOOLForKey:@"NIHomePassiveSensingDisable"])
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "#ses-hps,NIHomePassiveSensingDisable set in defaults. Skip configuring session";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (self->_isRunning)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "#ses-hps,Session is running, skip re-configure";
      goto LABEL_12;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_23;
  }

  v29.receiver = self;
  v29.super_class = NIServerHomePassiveSensingSession;
  resourcesManager = [(NIServerBaseSession *)&v29 resourcesManager];
  if (!self->_updatesEngine)
  {
    v18 = [NINearbyUpdatesEngine alloc];
    v19 = self->_configuration;
    clientQueue = self->_clientQueue;
    analytics = [resourcesManager analytics];
    cntrl = self->_pbLogger.__cntrl_;
    ptr = self->_pbLogger.__ptr_;
    v28 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v26 = 0;
    v23 = [(NINearbyUpdatesEngine *)v18 initWithConfiguration:v19 queue:clientQueue delegate:self dataSource:self analyticsManager:analytics protobufLogger:&ptr error:&v26];
    v16 = v26;
    updatesEngine = self->_updatesEngine;
    self->_updatesEngine = v23;

    if (v28)
    {
      sub_10000AD84(v28);
    }

    if (!self->_updatesEngine)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C41D8();
      }

      goto LABEL_22;
    }
  }

  v16 = 0;
LABEL_22:

LABEL_23:

  return v16;
}

- (id)run
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4240(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  v11 = +[NSUserDefaults standardUserDefaults];
  if ([v11 BOOLForKey:@"NIHomePassiveSensingDisable"])
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-hps,NIHomePassiveSensingDisable set in defaults. Skip configuring session", buf, 2u);
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = NIServerHomePassiveSensingSession;
    resourcesManager = [(NIServerBaseSession *)&v24 resourcesManager];
    btResource = [resourcesManager btResource];
    [btResource setDeviceRelationshipFlags:2];

    if (self->_isRunning)
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-hps,Session is running, return", buf, 2u);
      }
    }

    else
    {
      btResource2 = [resourcesManager btResource];
      [btResource2 startAdvertising];

      btResource3 = [resourcesManager btResource];
      [btResource3 allowScreenOffOperation:1];

      [v11 doubleForKey:@"HomePassiveSensingInitialScanBurstDurationSecondsOverride"];
      v19 = v18;
      v20 = 5.0;
      if (v18 > 0.0)
      {
        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-hps,* Initial scan burst duration set from defaults write: %0.2f seconds", buf, 0xCu);
        }

        v20 = v19;
      }

      btResource4 = [resourcesManager btResource];
      [btResource4 startScanningWithBurstPeriod:v20];

      self->_shouldDeliverUpdates = 1;
      self->_isRunning = 1;
    }
  }

  return 0;
}

- (id)pauseWithSource:(int64_t)source
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C42B8(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  self->_isRunning = 0;
  self->_shouldDeliverUpdates = 0;
  v12 = [(NIServerHomePassiveSensingSession *)self _disableAllServicesAndSendHangupSignal:0];

  return v12;
}

- (BOOL)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4330(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_isRunning)
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      configuration = self->_configuration;
      v23 = 138412546;
      configurationCopy2 = configuration;
      v25 = 2112;
      v26 = configurationCopy;
      v20 = "#ses-hps,Can't update configuration, not running\nOld: %@\nNew: %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, &v23, 0x16u);
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (!configurationCopy || !self->_configuration || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_configuration;
      v23 = 138412546;
      configurationCopy2 = v21;
      v25 = 2112;
      v26 = configurationCopy;
      v20 = "#ses-hps,Can't update configuration, one is nil or wrong type\nOld: %@\nNew: %@";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v13 = [(NIHomePassiveSensingConfiguration *)configurationCopy copy];
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->_configuration;
    v23 = 138412546;
    configurationCopy2 = v15;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-hps,Update configuration\nOld: %@\nNew: %@", &v23, 0x16u);
  }

  v16 = self->_configuration;
  self->_configuration = v13;

  v17 = 1;
LABEL_16:

  return v17;
}

- (id)disableAllServices
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C43A8(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(NIServerHomePassiveSensingSession *)self _disableAllServicesAndSendHangupSignal:1];

  return v11;
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4420(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  self->_isRunning = 0;
  self->_shouldDeliverUpdates = 0;
  disableAllServices = [(NIServerHomePassiveSensingSession *)self disableAllServices];
  v12.receiver = self;
  v12.super_class = NIServerHomePassiveSensingSession;
  [(NIServerBaseSession *)&v12 invalidate];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NIServerHomePassiveSensingSession;
  [(NIServerHomePassiveSensingSession *)&v2 dealloc];
}

- (void)deviceDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (discoveredCopy && ([discoveredCopy systemKeyRelationship] & 1) != 0)
  {
    cbDevice = [discoveredCopy cbDevice];
    model = [cbDevice model];

    v7 = qword_1009F9820;
    if (!model)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C46B0();
      }

      goto LABEL_68;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      containerUniqueIdentifier = self->_containerUniqueIdentifier;
      *buf = 138412546;
      *&buf[4] = containerUniqueIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = discoveredCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device discovered. Session Identifier: %@. Device: %@", buf, 0x16u);
    }

    v50.receiver = self;
    v50.super_class = NIServerHomePassiveSensingSession;
    resourcesManager = [(NIServerBaseSession *)&v50 resourcesManager];
    isUwbCapable = [discoveredCopy isUwbCapable];
    v48 = xmmword_10056DAE0;
    v49 = 1;
    v45 = +[NSUserDefaults standardUserDefaults];
    LOBYTE(v48) = [model hasPrefix:{@"AudioAccessory6, 1"}];
    if ([model hasPrefix:{@"AudioAccessory6, 1"}])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    DWORD1(v48) = v10;
    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_100193120(buf);
      v12 = sub_10000EA44(&buf[16], "require bias correction: ", 25);
      if (v48)
      {
        v13 = "yes";
      }

      else
      {
        v13 = "no";
      }

      if (v48)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v15 = sub_10000EA44(v12, v13, v14);
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v51, &std::ctype<char>::id);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v51);
      std::ostream::put();
      std::ostream::flush();
      sub_10000EA44(&buf[16], "magnetic field strength check options: ", 39);
      v17 = std::ostream::operator<<();
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v51, &std::ctype<char>::id);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v51);
      std::ostream::put();
      std::ostream::flush();
      sub_10000EA44(&buf[16], "region size category: ", 22);
      v19 = std::ostream::operator<<();
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v51, &std::ctype<char>::id);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v51);
      std::ostream::put();
      std::ostream::flush();
      sub_10000EA44(&buf[16], "intent predictor config: ", 25);
      v21 = std::ostream::operator<<();
      std::ios_base::getloc((v21 + *(*v21 - 24)));
      v22 = std::locale::use_facet(&v51, &std::ctype<char>::id);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v51);
      std::ostream::put();
      std::ostream::flush();
      std::stringbuf::str();
      *&buf[16] = v23;
      if (v56 < 0)
      {
        operator delete(v55[7].__locale_);
      }

      std::locale::~locale(v55);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v24 = &v46;
      if (v47 < 0)
      {
        v24 = v46;
      }

      *v52 = 136315138;
      *&v52[4] = v24;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-hps,processing options are %s", v52, 0xCu);
      if (v47 < 0)
      {
        operator delete(v46);
      }
    }

    v25 = [NINearbyObject objectFromBluetoothDevice:discoveredCopy];
    if (!v25)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C4670();
      }

      goto LABEL_67;
    }

    if (self->_pbLogger.__ptr_)
    {
      v26 = sub_100005288();
      ptr = self->_pbLogger.__ptr_;
      u64Identifier = [discoveredCopy u64Identifier];
      sub_1002D63A8(v25, buf);
      sub_1002E1DCC(ptr, u64Identifier, buf, v26);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    if (![(NIServerHomePassiveSensingSession *)self _shouldRespondToDevice:discoveredCopy])
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C4498();
      }

      goto LABEL_67;
    }

    if ([discoveredCopy isUwbCapable])
    {
      if (([v45 BOOLForKey:@"NIHomeAllowMobileAsAnchor"] & 1) == 0 && objc_msgSend(discoveredCopy, "isMobilePhoneModel"))
      {
        v29 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = discoveredCopy;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "#ses-hps,No uwb responding to another mobile: %@", buf, 0xCu);
        }

        goto LABEL_67;
      }

      remote = [resourcesManager remote];
      [remote didDiscoverNearbyObject:v25];

      v31 = +[NIServerGRResponderRangingService sharedInstance];
      v32 = [v31 getSessionTicketForDevice:discoveredCopy clientIdentifier:self->_containerUniqueIdentifier clientQueue:self->_clientQueue forDelegate:self];
      LOWORD(v51.__locale_) = v32;
      BYTE2(v51.__locale_) = BYTE2(v32);

      if (BYTE2(v51.__locale_) != 1)
      {
        if (isUwbCapable)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C4508();
          }

          goto LABEL_67;
        }

        goto LABEL_64;
      }

      *v52 = [discoveredCopy u64Identifier];
      v33 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v52);
      if (v33)
      {
        v34 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = *v52;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#ses-hps,Evicting previous UWB session with same identitifer: 0x%llx", buf, 0xCu);
        }

        sub_1000223BC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v33);
      }

      if ((BYTE2(v51.__locale_) & 1) == 0)
      {
        sub_1000195BC();
      }

      v46 = v52;
      *buf = &v48;
      *&buf[8] = &v51;
      sub_10023DAAC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v52);
      if ((v35 & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C4544(v52);
      }

      v36 = qword_1009F9820;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        u64Identifier2 = [discoveredCopy u64Identifier];
        v38 = "NO";
        if (v48)
        {
          v38 = "YES";
        }

        *buf = 134218242;
        *&buf[4] = u64Identifier2;
        *&buf[12] = 2080;
        *&buf[14] = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#ses-hps,recorded mac addr 0x%llx needs bias correction: %s", buf, 0x16u);
      }

      v39 = +[NIServerGRResponderRangingService sharedInstance];
      v40 = v39;
      if ((BYTE2(v51.__locale_) & 1) == 0)
      {
        sub_1000195BC();
      }

      v41 = [v39 triggerRangingForTicket:LOWORD(v51.__locale_) device:discoveredCopy updatedDevice:discoveredCopy clientIdentifier:self->_containerUniqueIdentifier uwbAddressRotated:v33 != 0];

      if (v41)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C45B8();
        }

        remote2 = [resourcesManager remote];
        [remote2 uwbSessionDidFailWithError:v41];
      }
    }

    if (isUwbCapable)
    {
LABEL_67:

LABEL_68:
      goto LABEL_69;
    }

LABEL_64:
    v43 = qword_1009F9820;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4628([discoveredCopy isUwbCapable], buf);
    }

    goto LABEL_67;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4720(self);
  }

LABEL_69:
}

- (void)device:(id)device rediscovered:(id)rediscovered
{
  deviceCopy = device;
  rediscoveredCopy = rediscovered;
  dispatch_assert_queue_V2(self->_clientQueue);
  v33[0] = [deviceCopy u64Identifier];
  v8 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v33);
  if (v8)
  {
    v32.receiver = self;
    v32.super_class = NIServerHomePassiveSensingSession;
    resourcesManager = [(NIServerBaseSession *)&v32 resourcesManager];
    if (self->_pbLogger.__ptr_)
    {
      v9 = sub_100005288();
      v10 = [NINearbyObject objectFromBluetoothDevice:rediscoveredCopy];
      if (v10)
      {
        ptr = self->_pbLogger.__ptr_;
        u64Identifier = [rediscoveredCopy u64Identifier];
        sub_1002D63A8(v10, __p);
        sub_1002E1DCC(ptr, u64Identifier, __p, v9);
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C4670();
      }
    }

    u64Identifier2 = [rediscoveredCopy u64Identifier];
    u64Identifier3 = [rediscoveredCopy u64Identifier];
    u64Identifier4 = [deviceCopy u64Identifier];
    isUwbCapable = [rediscoveredCopy isUwbCapable];
    isUwbCapable2 = [deviceCopy isUwbCapable];
    v17 = qword_1009F9820;
    if (isUwbCapable == isUwbCapable2)
    {
      if (u64Identifier3 == u64Identifier4)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C481C(v17);
        }

        v22 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          containerUniqueIdentifier = self->_containerUniqueIdentifier;
          *__p = 138412802;
          *&__p[4] = containerUniqueIdentifier;
          *&__p[12] = 2112;
          *&__p[14] = rediscoveredCopy;
          *&__p[22] = 2112;
          *&__p[24] = deviceCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device re-discovered. Session Identifier: %@. New Device: %@, cached device: %@", __p, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device rediscovered decision: restarting UWB session since address is change, role == responder and there's active UWB session.", __p, 2u);
        }

        v24 = *(v8 + 5);
        *__p = *(v8 + 3);
        *&__p[16] = v24;
        sub_10023DF54(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v8 + 2);
        v33[1] = &u64Identifier2;
        *buf = __p;
        *&buf[8] = &__p[24];
        sub_10023DAAC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &u64Identifier2);
        v25 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v33[0];
          *&buf[12] = 2048;
          *&buf[14] = u64Identifier2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#ses-hps,updated mac addr 0x%llx -> 0x%llx in processing info dictionary", buf, 0x16u);
        }

        v26 = +[NIServerGRResponderRangingService sharedInstance];
        v27 = [v26 triggerRangingForTicket:*&__p[24] device:deviceCopy updatedDevice:rediscoveredCopy clientIdentifier:self->_containerUniqueIdentifier uwbAddressRotated:1];

        if (v27)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C47AC();
          }

          remote = [v30 remote];
          [remote uwbSessionDidFailWithError:v27];
        }
      }
    }

    else
    {
      v18 = qword_1009F9820;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        isUwbCapable3 = [deviceCopy isUwbCapable];
        isUwbCapable4 = [rediscoveredCopy isUwbCapable];
        isUwbCapable5 = [rediscoveredCopy isUwbCapable];
        *__p = 67109632;
        *&__p[4] = isUwbCapable3;
        *&__p[8] = 1024;
        *&__p[10] = isUwbCapable4;
        *&__p[14] = 1024;
        *&__p[16] = isUwbCapable5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device rediscovered device old UWB capble: %d -> new capable: %d, should stop? %d", __p, 0x14u);
      }

      if (sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v33) && ([rediscoveredCopy isUwbCapable] & 1) == 0)
      {
        [(NIServerHomePassiveSensingSession *)self _peerHungUp:v33[0]];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C48A8();
    }

    [(NIServerHomePassiveSensingSession *)self deviceDiscovered:rediscoveredCopy];
  }
}

- (void)deviceLost:(id)lost
{
  lostCopy = lost;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    v7 = 138412546;
    v8 = containerUniqueIdentifier;
    v9 = 2112;
    v10 = lostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device lost. Session Identifier: %@. Device: %@", &v7, 0x16u);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
}

- (void)didReceiveNewSolution:(const void *)solution
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if ((*(solution + 8) - 1) <= 2)
  {
    if (*(solution + 24))
    {
      v5 = *(solution + 5);
      v10.receiver = self;
      v10.super_class = NIServerHomePassiveSensingSession;
      v11 = v5;
      v6 = [(NIServerBaseSession *)&v10 discoveryTokenFromIdentifier:v5];
      if (v6)
      {
        v7 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &v11);
        if (v7)
        {
          v8 = *(v7 + 3);
          v9 = v7[5];
          [(NINearbyUpdatesEngine *)self->_updatesEngine acceptRoseSolution:solution withProcessingOptions:&v8];
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C4920(&v11);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C4994();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C48E4();
    }
  }
}

- (void)didReceiveRemoteData:(const void *)data
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4A04(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = *(data + 1);
  if (*(data + 2) - v13 > 0xFuLL)
  {
    if (*v13 == 2)
    {
      if (v13[1])
      {
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(data + 5);
          v16 = 134283521;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-hps,#hangup Received hangup from 0x%{private}llx.", &v16, 0xCu);
        }

        [(NIServerHomePassiveSensingSession *)self _peerHungUp:*(data + 5)];
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4A7C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4AB8(data + 4, data + 2);
  }
}

- (void)responderServiceTicketId:(unsigned __int16)id didChangeRangingUpdateRate:(int)rate newThrottleRate:(float)throttleRate prevThrottleRate:(float)prevThrottleRate effectiveSinceCycleInde:(int)inde
{
  idCopy = id;
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4B4C(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v30.receiver = self;
  v30.super_class = NIServerHomePassiveSensingSession;
  resourcesManager = [(NIServerBaseSession *)&v30 resourcesManager];
  if (rate)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4BC4();
    }

    v31 = NSLocalizedDescriptionKey;
    v32 = @"Failed to adjust ranging rate.";
    v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v23 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v22];

    remote = [resourcesManager remote];
    [remote uwbSessionDidFailWithError:v23];
  }

  else
  {
    next = self->_responderSessions.__table_.__first_node_.__next_;
    if (!next)
    {
      goto LABEL_21;
    }

    v26 = 0;
    v27 = 0;
    do
    {
      if (*(next + 24) == idCopy)
      {
        v27 = next[2];
      }

      v26 |= *(next + 24) == idCopy;
      next = *next;
    }

    while (next);
    if (v26)
    {
      v28 = [(NIServerHomePassiveSensingSession *)self objectFromIdentifier:v27];
      v29 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v34 = v28;
        v35 = 2048;
        throttleRateCopy = throttleRate;
        v37 = 2048;
        prevThrottleRateCopy = prevThrottleRate;
        v39 = 1024;
        indeCopy = inde;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#ses-hps,#throttle Adjusting throttle rate succeeded for object %@. New rate %0.2f, old rate: %0.2f, cycle index: %d", buf, 0x26u);
      }
    }

    else
    {
LABEL_21:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C4C00();
      }
    }
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = objc_opt_new();
  v4 = [NSMutableString stringWithFormat:@"["];
  next = self->_responderSessions.__table_.__first_node_.__next_;
  if (next)
  {
    v6 = 1;
    do
    {
      if (next[24])
      {
        if (v6)
        {
          v7 = @"%d";
        }

        else
        {
          v7 = @", %d";
        }

        [v4 appendFormat:v7, next[24]];
        v6 = 0;
      }

      next = *next;
    }

    while (next);
  }

  [v4 appendString:@"]"];
  v8 = [NSString stringWithFormat:@"Running: %d. Min upd rate: %s", self->_isRunning, [NIInternalUtils NINearbyObjectUpdateRateToString:self->_minimumPreferredUpdateRate]];
  [v3 addObject:v8];

  v9 = [NSString stringWithFormat:@"UWB passivce ranging: responder tickets %@.", v4];
  [v3 addObject:v9];

  return v3;
}

- (void)_peerHungUp:(unint64_t)up
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4CB4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283521;
    upCopy = up;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-hps,#hangup from address 0x%{private}llx.", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = NIServerHomePassiveSensingSession;
  v14 = [(NIServerBaseSession *)&v15 discoveryTokenFromIdentifier:up];
  if (v14)
  {
    [(NIServerHomePassiveSensingSession *)self _removePeerObject:v14 uwbIdentifier:up withReason:1];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4D2C();
  }
}

- (void)_roseSession:(shared_ptr<rose:(int)session :objects::RoseBaseSession>)a3 invalidatedWithReason:
{
  var1 = a3.var1;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4D9C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(var1, v18);
    sub_1004C4E14(v18, v19);
  }

  [(NIServerHomePassiveSensingSession *)self invalidate];
  v17.receiver = self;
  v17.super_class = NIServerHomePassiveSensingSession;
  invalidationHandler = [(NIServerBaseSession *)&v17 invalidationHandler];
  v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (invalidationHandler)[2](invalidationHandler, v16);
}

- (BOOL)_shouldRespondToDevice:(id)device
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4E84(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  return self->_responderSessions.__table_.__size_ < 5;
}

- (void)_notifyPeerRemoval:(id)removal withReason:(unint64_t)reason
{
  removalCopy = removal;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4EFC(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  v21.receiver = self;
  v21.super_class = NIServerHomePassiveSensingSession;
  resourcesManager = [(NIServerBaseSession *)&v21 resourcesManager];
  remote = [resourcesManager remote];
  v28 = removalCopy;
  v17 = [NSArray arrayWithObjects:&v28 count:1];
  [remote didRemoveNearbyObjects:v17 withReason:reason];

  if (reason >= 3)
  {
    v18 = &stru_1009B1428;
  }

  else
  {
    v18 = *(&off_1009A8378 + reason);
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 138412802;
    v23 = removalCopy;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-hps,_notifyPeerRemoval: %@ with reason: %@ for session identifier: %@", buf, 0x20u);
  }
}

- (void)_removePeerObject:(id)object uwbIdentifier:(unint64_t)identifier withReason:(unint64_t)reason
{
  objectCopy = object;
  identifierCopy = identifier;
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4F74(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  v33.receiver = self;
  v33.super_class = NIServerHomePassiveSensingSession;
  resourcesManager = [(NIServerBaseSession *)&v33 resourcesManager];
  v18 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (!v18)
  {
    v22 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v36[0] = objectCopy;
    v23 = "#ses-hps,Did not find a UWB ToF session for token: %@";
    goto LABEL_10;
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(v18 + 24);
    *buf = 67109376;
    LODWORD(v36[0]) = v20;
    WORD2(v36[0]) = 1024;
    *(v36 + 6) = reason != 1;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-hps,Invalidating session with ticket ID: %d. Send hangup signal: %d", buf, 0xEu);
  }

  v21 = +[NIServerGRResponderRangingService sharedInstance];
  [v21 stopRangingForTicket:*(v18 + 24) clientIdentifier:self->_containerUniqueIdentifier uwbAddress:identifierCopy sendingHangUp:reason != 1];

  sub_1000223BC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v18);
  v22 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36[0] = identifierCopy;
    v23 = "#ses-hps,removing 0x%llx from tracked devices";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
  }

LABEL_11:
  [(NINearbyUpdatesEngine *)self->_updatesEngine clearStateForToken:objectCopy];
  v24 = [(NIServerHomePassiveSensingSession *)self objectFromIdentifier:identifierCopy];
  if (v24)
  {
    [(NIServerHomePassiveSensingSession *)self _notifyPeerRemoval:v24 withReason:reason];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4FEC();
  }

  btResource = [resourcesManager btResource];
  rawToken = [objectCopy rawToken];
  v27 = [btResource removePeerDiscoveryToken:rawToken];

  if (v27)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C5028();
    }
  }

  else
  {
    btResource2 = [resourcesManager btResource];
    deviceCache = [btResource2 deviceCache];
    rawToken2 = [objectCopy rawToken];
    v31 = [deviceCache uncacheDeviceByTokenData:rawToken2];

    if ((v31 & 1) == 0)
    {
      v32 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36[0] = objectCopy;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ses-hps,Peer discovery token wasn't cached, so nothing to uncache. Peer likely hadn't been discovered yet. Token: %@", buf, 0xCu);
      }
    }
  }
}

- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects
{
  engineCopy = engine;
  objectsCopy = objects;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerHomePassiveSensingSession updatesEngine:didUpdateNearbyObjects:]", "NIServerHomePassiveSensingSession.mm", 768, "engine == _updatesEngine");
  }

  clientQueue = self->_clientQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100372390;
  v10[3] = &unk_10098A2E8;
  v10[4] = self;
  v11 = objectsCopy;
  v9 = objectsCopy;
  dispatch_async(clientQueue, v10);
}

- (id)objectFromIdentifier:(unint64_t)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_clientQueue);
  v11.receiver = self;
  v11.super_class = NIServerHomePassiveSensingSession;
  v5 = [(NIServerBaseSession *)&v11 objectFromIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  v8 = sub_100009978(&self->_btIdentifierHashToObjectMap.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v8)
  {
    v7 = v8[3];
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5098(&identifierCopy);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 34) = 1065353216;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 54) = 1065353216;
  return self;
}

@end
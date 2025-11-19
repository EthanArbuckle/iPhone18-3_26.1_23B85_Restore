@interface NIServerHomePassiveSensingSession
- (BOOL)_shouldRespondToDevice:(id)a3;
- (BOOL)updateConfiguration:(id)a3;
- (NIServerHomePassiveSensingSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)configure;
- (id)disableAllServices;
- (id)lastConfiguration;
- (id)objectFromIdentifier:(unint64_t)a3;
- (id)pauseWithSource:(int64_t)a3;
- (id)printableState;
- (id)run;
- (void)_notifyPeerRemoval:(id)a3 withReason:(unint64_t)a4;
- (void)_peerHungUp:(unint64_t)a3;
- (void)_removePeerObject:(id)a3 uwbIdentifier:(unint64_t)a4 withReason:(unint64_t)a5;
- (void)_roseSession:(shared_ptr<rose:(int)a4 :objects::RoseBaseSession>)a3 invalidatedWithReason:;
- (void)dealloc;
- (void)device:(id)a3 rediscovered:(id)a4;
- (void)deviceDiscovered:(id)a3;
- (void)deviceLost:(id)a3;
- (void)didReceiveNewSolution:(const void *)a3;
- (void)didReceiveRemoteData:(const void *)a3;
- (void)invalidate;
- (void)responderServiceTicketId:(unsigned __int16)a3 didChangeRangingUpdateRate:(int)a4 newThrottleRate:(float)a5 prevThrottleRate:(float)a6 effectiveSinceCycleInde:(int)a7;
- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4;
@end

@implementation NIServerHomePassiveSensingSession

- (NIServerHomePassiveSensingSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
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

  v20 = [v9 serverSessionIdentifier];

  if (!v20)
  {
    v36 = +[NSAssertionHandler currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"NIServerHomePassiveSensingSession.mm" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v38.receiver = self;
  v38.super_class = NIServerHomePassiveSensingSession;
  v21 = [(NIServerBaseSession *)&v38 initWithResourcesManager:v9 configuration:v10 error:a5];
  if (v21)
  {
    v22 = [v9 uwbResource];
    v23 = *(v21 + 19);
    *(v21 + 19) = v22;

    if (v9)
    {
      [v9 protobufLogger];
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

    v26 = [v9 clientConnectionQueue];
    v27 = *(v21 + 10);
    *(v21 + 10) = v26;

    v28 = [v10 copy];
    v29 = *(v21 + 28);
    *(v21 + 28) = v28;

    v30 = [v9 serverSessionIdentifier];
    v31 = [v30 UUIDString];
    v32 = *(v21 + 11);
    *(v21 + 11) = v31;

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
  v17 = [(NIServerBaseSession *)&v29 resourcesManager];
  if (!self->_updatesEngine)
  {
    v18 = [NINearbyUpdatesEngine alloc];
    v19 = self->_configuration;
    clientQueue = self->_clientQueue;
    v21 = [v17 analytics];
    cntrl = self->_pbLogger.__cntrl_;
    ptr = self->_pbLogger.__ptr_;
    v28 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v26 = 0;
    v23 = [(NINearbyUpdatesEngine *)v18 initWithConfiguration:v19 queue:clientQueue delegate:self dataSource:self analyticsManager:v21 protobufLogger:&ptr error:&v26];
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
    v13 = [(NIServerBaseSession *)&v24 resourcesManager];
    v14 = [v13 btResource];
    [v14 setDeviceRelationshipFlags:2];

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
      v16 = [v13 btResource];
      [v16 startAdvertising];

      v17 = [v13 btResource];
      [v17 allowScreenOffOperation:1];

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

      v22 = [v13 btResource];
      [v22 startScanningWithBurstPeriod:v20];

      self->_shouldDeliverUpdates = 1;
      self->_isRunning = 1;
    }
  }

  return 0;
}

- (id)pauseWithSource:(int64_t)a3
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

- (BOOL)updateConfiguration:(id)a3
{
  v4 = a3;
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
      v24 = configuration;
      v25 = 2112;
      v26 = v4;
      v20 = "#ses-hps,Can't update configuration, not running\nOld: %@\nNew: %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, &v23, 0x16u);
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (!v4 || !self->_configuration || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_configuration;
      v23 = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v4;
      v20 = "#ses-hps,Can't update configuration, one is nil or wrong type\nOld: %@\nNew: %@";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v13 = [(NIHomePassiveSensingConfiguration *)v4 copy];
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->_configuration;
    v23 = 138412546;
    v24 = v15;
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
  v11 = [(NIServerHomePassiveSensingSession *)self disableAllServices];
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

- (void)deviceDiscovered:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (v4 && ([v4 systemKeyRelationship] & 1) != 0)
  {
    v5 = [v4 cbDevice];
    v6 = [v5 model];

    v7 = qword_1009F9820;
    if (!v6)
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
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device discovered. Session Identifier: %@. Device: %@", buf, 0x16u);
    }

    v50.receiver = self;
    v50.super_class = NIServerHomePassiveSensingSession;
    v44 = [(NIServerBaseSession *)&v50 resourcesManager];
    v9 = [v4 isUwbCapable];
    v48 = xmmword_10056DAE0;
    v49 = 1;
    v45 = +[NSUserDefaults standardUserDefaults];
    LOBYTE(v48) = [v6 hasPrefix:{@"AudioAccessory6, 1"}];
    if ([v6 hasPrefix:{@"AudioAccessory6, 1"}])
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

    v25 = [NINearbyObject objectFromBluetoothDevice:v4];
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
      v28 = [v4 u64Identifier];
      sub_1002D63A8(v25, buf);
      sub_1002E1DCC(ptr, v28, buf, v26);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    if (![(NIServerHomePassiveSensingSession *)self _shouldRespondToDevice:v4])
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C4498();
      }

      goto LABEL_67;
    }

    if ([v4 isUwbCapable])
    {
      if (([v45 BOOLForKey:@"NIHomeAllowMobileAsAnchor"] & 1) == 0 && objc_msgSend(v4, "isMobilePhoneModel"))
      {
        v29 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "#ses-hps,No uwb responding to another mobile: %@", buf, 0xCu);
        }

        goto LABEL_67;
      }

      v30 = [v44 remote];
      [v30 didDiscoverNearbyObject:v25];

      v31 = +[NIServerGRResponderRangingService sharedInstance];
      v32 = [v31 getSessionTicketForDevice:v4 clientIdentifier:self->_containerUniqueIdentifier clientQueue:self->_clientQueue forDelegate:self];
      LOWORD(v51.__locale_) = v32;
      BYTE2(v51.__locale_) = BYTE2(v32);

      if (BYTE2(v51.__locale_) != 1)
      {
        if (v9)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C4508();
          }

          goto LABEL_67;
        }

        goto LABEL_64;
      }

      *v52 = [v4 u64Identifier];
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
        v37 = [v4 u64Identifier];
        v38 = "NO";
        if (v48)
        {
          v38 = "YES";
        }

        *buf = 134218242;
        *&buf[4] = v37;
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

      v41 = [v39 triggerRangingForTicket:LOWORD(v51.__locale_) device:v4 updatedDevice:v4 clientIdentifier:self->_containerUniqueIdentifier uwbAddressRotated:v33 != 0];

      if (v41)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C45B8();
        }

        v42 = [v44 remote];
        [v42 uwbSessionDidFailWithError:v41];
      }
    }

    if (v9)
    {
LABEL_67:

LABEL_68:
      goto LABEL_69;
    }

LABEL_64:
    v43 = qword_1009F9820;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4628([v4 isUwbCapable], buf);
    }

    goto LABEL_67;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4720(self);
  }

LABEL_69:
}

- (void)device:(id)a3 rediscovered:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_clientQueue);
  v33[0] = [v6 u64Identifier];
  v8 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v33);
  if (v8)
  {
    v32.receiver = self;
    v32.super_class = NIServerHomePassiveSensingSession;
    v29 = [(NIServerBaseSession *)&v32 resourcesManager];
    if (self->_pbLogger.__ptr_)
    {
      v9 = sub_100005288();
      v10 = [NINearbyObject objectFromBluetoothDevice:v7];
      if (v10)
      {
        ptr = self->_pbLogger.__ptr_;
        v12 = [v7 u64Identifier];
        sub_1002D63A8(v10, __p);
        sub_1002E1DCC(ptr, v12, __p, v9);
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

    v31 = [v7 u64Identifier];
    v13 = [v7 u64Identifier];
    v14 = [v6 u64Identifier];
    v15 = [v7 isUwbCapable];
    v16 = [v6 isUwbCapable];
    v17 = qword_1009F9820;
    if (v15 == v16)
    {
      if (v13 == v14)
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
          *&__p[14] = v7;
          *&__p[22] = 2112;
          *&__p[24] = v6;
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
        v33[1] = &v31;
        *buf = __p;
        *&buf[8] = &__p[24];
        sub_10023DAAC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &v31);
        v25 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v33[0];
          *&buf[12] = 2048;
          *&buf[14] = v31;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#ses-hps,updated mac addr 0x%llx -> 0x%llx in processing info dictionary", buf, 0x16u);
        }

        v26 = +[NIServerGRResponderRangingService sharedInstance];
        v27 = [v26 triggerRangingForTicket:*&__p[24] device:v6 updatedDevice:v7 clientIdentifier:self->_containerUniqueIdentifier uwbAddressRotated:1];

        if (v27)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C47AC();
          }

          v28 = [v30 remote];
          [v28 uwbSessionDidFailWithError:v27];
        }
      }
    }

    else
    {
      v18 = qword_1009F9820;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v6 isUwbCapable];
        v20 = [v7 isUwbCapable];
        v21 = [v7 isUwbCapable];
        *__p = 67109632;
        *&__p[4] = v19;
        *&__p[8] = 1024;
        *&__p[10] = v20;
        *&__p[14] = 1024;
        *&__p[16] = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device rediscovered device old UWB capble: %d -> new capable: %d, should stop? %d", __p, 0x14u);
      }

      if (sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v33) && ([v7 isUwbCapable] & 1) == 0)
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

    [(NIServerHomePassiveSensingSession *)self deviceDiscovered:v7];
  }
}

- (void)deviceLost:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    v7 = 138412546;
    v8 = containerUniqueIdentifier;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-hps,Device lost. Session Identifier: %@. Device: %@", &v7, 0x16u);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
}

- (void)didReceiveNewSolution:(const void *)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if ((*(a3 + 8) - 1) <= 2)
  {
    if (*(a3 + 24))
    {
      v5 = *(a3 + 5);
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
          [(NINearbyUpdatesEngine *)self->_updatesEngine acceptRoseSolution:a3 withProcessingOptions:&v8];
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

- (void)didReceiveRemoteData:(const void *)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4A04(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = *(a3 + 1);
  if (*(a3 + 2) - v13 > 0xFuLL)
  {
    if (*v13 == 2)
    {
      if (v13[1])
      {
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a3 + 5);
          v16 = 134283521;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-hps,#hangup Received hangup from 0x%{private}llx.", &v16, 0xCu);
        }

        [(NIServerHomePassiveSensingSession *)self _peerHungUp:*(a3 + 5)];
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4A7C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4AB8(a3 + 4, a3 + 2);
  }
}

- (void)responderServiceTicketId:(unsigned __int16)a3 didChangeRangingUpdateRate:(int)a4 newThrottleRate:(float)a5 prevThrottleRate:(float)a6 effectiveSinceCycleInde:(int)a7
{
  v11 = a3;
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4B4C(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v30.receiver = self;
  v30.super_class = NIServerHomePassiveSensingSession;
  v21 = [(NIServerBaseSession *)&v30 resourcesManager];
  if (a4)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4BC4();
    }

    v31 = NSLocalizedDescriptionKey;
    v32 = @"Failed to adjust ranging rate.";
    v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v23 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v22];

    v24 = [v21 remote];
    [v24 uwbSessionDidFailWithError:v23];
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
      if (*(next + 24) == v11)
      {
        v27 = next[2];
      }

      v26 |= *(next + 24) == v11;
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
        v36 = a5;
        v37 = 2048;
        v38 = a6;
        v39 = 1024;
        v40 = a7;
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

- (void)_peerHungUp:(unint64_t)a3
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
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-hps,#hangup from address 0x%{private}llx.", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = NIServerHomePassiveSensingSession;
  v14 = [(NIServerBaseSession *)&v15 discoveryTokenFromIdentifier:a3];
  if (v14)
  {
    [(NIServerHomePassiveSensingSession *)self _removePeerObject:v14 uwbIdentifier:a3 withReason:1];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4D2C();
  }
}

- (void)_roseSession:(shared_ptr<rose:(int)a4 :objects::RoseBaseSession>)a3 invalidatedWithReason:
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
  v15 = [(NIServerBaseSession *)&v17 invalidationHandler];
  v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (v15)[2](v15, v16);
}

- (BOOL)_shouldRespondToDevice:(id)a3
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4E84(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  return self->_responderSessions.__table_.__size_ < 5;
}

- (void)_notifyPeerRemoval:(id)a3 withReason:(unint64_t)a4
{
  v6 = a3;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4EFC(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  v21.receiver = self;
  v21.super_class = NIServerHomePassiveSensingSession;
  v15 = [(NIServerBaseSession *)&v21 resourcesManager];
  v16 = [v15 remote];
  v28 = v6;
  v17 = [NSArray arrayWithObjects:&v28 count:1];
  [v16 didRemoveNearbyObjects:v17 withReason:a4];

  if (a4 >= 3)
  {
    v18 = &stru_1009B1428;
  }

  else
  {
    v18 = *(&off_1009A8378 + a4);
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 138412802;
    v23 = v6;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-hps,_notifyPeerRemoval: %@ with reason: %@ for session identifier: %@", buf, 0x20u);
  }
}

- (void)_removePeerObject:(id)a3 uwbIdentifier:(unint64_t)a4 withReason:(unint64_t)a5
{
  v8 = a3;
  v34 = a4;
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C4F74(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  v33.receiver = self;
  v33.super_class = NIServerHomePassiveSensingSession;
  v17 = [(NIServerBaseSession *)&v33 resourcesManager];
  v18 = sub_100009978(&self->_responderSessions.__table_.__bucket_list_.__ptr_, &v34);
  if (!v18)
  {
    v22 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v36[0] = v8;
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
    *(v36 + 6) = a5 != 1;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-hps,Invalidating session with ticket ID: %d. Send hangup signal: %d", buf, 0xEu);
  }

  v21 = +[NIServerGRResponderRangingService sharedInstance];
  [v21 stopRangingForTicket:*(v18 + 24) clientIdentifier:self->_containerUniqueIdentifier uwbAddress:v34 sendingHangUp:a5 != 1];

  sub_1000223BC(&self->_responderSessions.__table_.__bucket_list_.__ptr_, v18);
  v22 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36[0] = v34;
    v23 = "#ses-hps,removing 0x%llx from tracked devices";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
  }

LABEL_11:
  [(NINearbyUpdatesEngine *)self->_updatesEngine clearStateForToken:v8];
  v24 = [(NIServerHomePassiveSensingSession *)self objectFromIdentifier:v34];
  if (v24)
  {
    [(NIServerHomePassiveSensingSession *)self _notifyPeerRemoval:v24 withReason:a5];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C4FEC();
  }

  v25 = [v17 btResource];
  v26 = [v8 rawToken];
  v27 = [v25 removePeerDiscoveryToken:v26];

  if (v27)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C5028();
    }
  }

  else
  {
    v28 = [v17 btResource];
    v29 = [v28 deviceCache];
    v30 = [v8 rawToken];
    v31 = [v29 uncacheDeviceByTokenData:v30];

    if ((v31 & 1) == 0)
    {
      v32 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36[0] = v8;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ses-hps,Peer discovery token wasn't cached, so nothing to uncache. Peer likely hadn't been discovered yet. Token: %@", buf, 0xCu);
      }
    }
  }
}

- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_updatesEngine != v6)
  {
    __assert_rtn("[NIServerHomePassiveSensingSession updatesEngine:didUpdateNearbyObjects:]", "NIServerHomePassiveSensingSession.mm", 768, "engine == _updatesEngine");
  }

  clientQueue = self->_clientQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100372390;
  v10[3] = &unk_10098A2E8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(clientQueue, v10);
}

- (id)objectFromIdentifier:(unint64_t)a3
{
  v12 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  v11.receiver = self;
  v11.super_class = NIServerHomePassiveSensingSession;
  v5 = [(NIServerBaseSession *)&v11 objectFromIdentifier:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  v8 = sub_100009978(&self->_btIdentifierHashToObjectMap.__table_.__bucket_list_.__ptr_, &v12);
  if (v8)
  {
    v7 = v8[3];
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5098(&v12);
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
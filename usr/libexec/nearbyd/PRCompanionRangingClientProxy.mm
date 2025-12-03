@interface PRCompanionRangingClientProxy
- (BOOL)startRangingMangagerAndCompanion:(id *)companion;
- (BOOL)stopRangingMangagerAndCompanion:(id *)companion;
- (PRCompanionRangingClientProxy)initWithConnection:(id)connection queue:(id)queue;
- (id).cxx_construct;
- (void)activate;
- (void)cleanupRangingManagerAndCompanionAfterError:(id)error;
- (void)combineAndReportLocalAndCompanionRangingRequestStatus;
- (void)configureCompanionForRanging;
- (void)configureForCompanionRanging:(id)ranging options:(id)options reply:(id)reply;
- (void)connectWithClientInfo:(id)info;
- (void)dealloc;
- (void)deinitCompanion;
- (void)didFailWithError:(id)error;
- (void)didReceiveNewSolutions:(id)solutions;
- (void)didReceiveSessionStartNotification:(id)notification;
- (void)findMyAccessoryManager:(id)manager didCompleteRangingOnDevice:(id)device withStatus:(unsigned int)status endReason:(unsigned __int8)reason error:(id)error;
- (void)findMyAccessoryManager:(id)manager didConfigureRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error;
- (void)findMyAccessoryManager:(id)manager didConnectDevice:(id)device error:(id)error;
- (void)findMyAccessoryManager:(id)manager didDeinitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error;
- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didHaveRangingMovementOnDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didInitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error;
- (void)findMyAccessoryManager:(id)manager didPrepareRangingOnDevice:(id)device withConnInterval:(id)interval error:(id)error;
- (void)findMyAccessoryManager:(id)manager didStartRangingOnDevice:(id)device error:(id)error;
- (void)handleError:(id)error;
- (void)initCompanion:(id)companion;
- (void)rangingRequestDidUpdateStatus:(unint64_t)status;
- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause;
- (void)recordUsageOfCompanionRanging:(id)ranging usageParameters:(id)parameters;
- (void)remoteDevice:(id)device didChangeState:(int64_t)state;
- (void)reportRangingRequestStatusUpdate:(unint64_t)update;
- (void)startCompanionRanging:(id)ranging options:(id)options reply:(id)reply;
- (void)startRangingMangager;
- (void)stopCompanionRanging:(id)ranging reply:(id)reply;
- (void)terminate;
@end

@implementation PRCompanionRangingClientProxy

- (PRCompanionRangingClientProxy)initWithConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v9 = queueCopy;
  if (connectionCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PRCompanionRangingClientProxy.mm" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = +[NSAssertionHandler currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PRCompanionRangingClientProxy.mm" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = PRCompanionRangingClientProxy;
  v10 = [(PRCompanionRangingClientProxy *)&v21 init];
  v11 = v10;
  if (v10)
  {
    *&v10->_localRangingState = 0;
    *&v10->_companionRoseState = 0;
    v10->_clientRequestState = 0;
    startOptions = v10->_startOptions;
    v10->_startOptions = 0;

    v13 = [[PRNSXPCConnection alloc] initWithConnection:connectionCopy];
    connWrapper = v11->_connWrapper;
    v11->_connWrapper = v13;

    objc_storeStrong(&v11->_queue, queue);
    objc_initWeak(&location, v11);
    sub_10033857C();
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PRCompanionRangingClientProxy init", buf, 2u);
  }

  return 0;
}

- (void)connectWithClientInfo:(id)info
{
  infoCopy = info;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [infoCopy objectForKey:PRProcessNameKey];
    v8 = [infoCopy objectForKey:PRProcessIdentifierKey];
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    intValue = [v8 intValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: XPC connection created. Process name: %@, pid: %d", &v9, 0x12u);
  }

  objc_storeStrong(&self->_clientInfo, info);
  [(PRCompanionRangingClientProxy *)self activate];
}

- (void)dealloc
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRCompanionRangingClientProxy dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = PRCompanionRangingClientProxy;
  [(PRCompanionRangingClientProxy *)&v4 dealloc];
}

- (void)activate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRangingManager connect probe #companion-retry", buf, 2u);
  }

  v4 = sub_10035D02C();
  sub_10003E810(buf, self->_rangingManagerClient.__ptr_ + 1);
  v9 = *buf;
  memset(buf, 0, sizeof(buf));
  sub_100361128(v4, &v9);
  if (*(&v9 + 1))
  {
    sub_10000AD84(*(&v9 + 1));
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }

  v5 = sub_10035D02C();
  sub_10003E810(buf, self->_rangingManagerClient.__ptr_ + 1);
  v6 = *buf;
  v7 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
  }

  sub_10035D6F0(v5, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }
}

- (void)terminate
{
  if (self->_companion)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      companion = self->_companion;
      *buf = 138412290;
      v12 = companion;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tearing down companion ranging session. Companion: %@", buf, 0xCu);
    }

    [(PRCompanionRangingClientProxy *)self deinitCompanion];
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRangingManager disconnect #companion-retry", buf, 2u);
  }

  v6 = sub_10035D02C();
  cntrl = self->_rangingManagerClient.__cntrl_;
  ptr = self->_rangingManagerClient.__ptr_;
  v10 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  sub_100361200(v6, &ptr);
  if (v10)
  {
    sub_10000AD84(v10);
  }

  [(PRRangingClientProtocol *)self->_connWrapper invalidate];
  voucher = self->_clientVoucher.voucher;
  self->_clientVoucher.voucher = 0;
}

- (void)handleError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:kCLErrorDomainPrivate])
  {
    code = [errorCopy code];

    if (code == 12)
    {
      [(PRCompanionRangingClientProxy *)self remoteDevice:self->_companion didChangeState:3];
    }
  }

  else
  {
  }

  [(PRCompanionRangingClientProxy *)self cleanupRangingManagerAndCompanionAfterError:errorCopy];
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100332070;
  v9[3] = &unk_10098B638;
  v8 = errorCopy;
  v10 = v8;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#companion-retry didFailWithError: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100332248;
  v8[3] = &unk_10098B940;
  objc_copyWeak(&v10, buf);
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)didReceiveNewSolutions:(id)solutions
{
  solutionsCopy = solutions;
  voucher = self->_clientVoucher.voucher;
  v11[0] = &self->_clientVoucher;
  v6 = voucher;
  v11[1] = voucher_adopt();
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10033238C;
  v9[3] = &unk_10098B638;
  v10 = solutionsCopy;
  v8 = solutionsCopy;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];

  sub_1000523AC(v11);
}

- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause
{
  connWrapper = self->_connWrapper;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10033248C;
  v5[3] = &unk_10098B658;
  v5[4] = state;
  v5[5] = cause;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v5];
}

- (void)reportRangingRequestStatusUpdate:(unint64_t)update
{
  p_clientVoucher = &self->_clientVoucher;
  voucher = self->_clientVoucher.voucher;
  v9[0] = &self->_clientVoucher;
  v6 = voucher;
  v9[1] = voucher_adopt();
  v7 = p_clientVoucher[-11].voucher;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003325CC;
  v8[3] = &unk_10098B678;
  v8[4] = update;
  [(OS_voucher *)v7 actOnRemoteObjectAndScheduleBarrierBlock:v8];
  sub_1000523AC(v9);
}

- (void)combineAndReportLocalAndCompanionRangingRequestStatus
{
  localRangingState = self->_localRangingState;
  if (localRangingState != 4)
  {
    if (localRangingState != 1 || self->_companionRangingState != 1)
    {
      return;
    }

    clientRequestState = self->_clientRequestState;
    if (clientRequestState == 4)
    {
      v16 = 0;
      v7 = [(PRCompanionRangingClientProxy *)self startRangingMangagerAndCompanion:&v16];
      v8 = v16;
      v9 = v8;
      if (v7)
      {
      }

      else
      {
        [(PRCompanionRangingClientProxy *)self handleError:v8];
      }

      return;
    }

    if (clientRequestState != 5)
    {
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Unexpected new status PRRangingRequestStatusStopped";
      v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v12 = PRErrorWithCodeAndUserInfo(999, v11);

      [(PRCompanionRangingClientProxy *)self handleError:v12];
      return;
    }

    self->_clientRequestState = 6;
    v5 = 2;
    goto LABEL_11;
  }

  if (self->_companionRangingState != 5)
  {
    return;
  }

  v6 = self->_clientRequestState;
  if (v6 != 4)
  {
    if (v6 != 3)
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"Unexpected new status PRRangingRequestStatusDidStart";
      v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v14 = PRErrorWithCodeAndUserInfo(999, v13);

      [(PRCompanionRangingClientProxy *)self handleError:v14];
      return;
    }

    self->_clientRequestState = 4;
    v5 = 1;
LABEL_11:

    [(PRCompanionRangingClientProxy *)self reportRangingRequestStatusUpdate:v5];
    return;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PRCompanionRangingClientProxy absorbing PRRangingRequestStatusDidStart from a retry.  ", v15, 2u);
  }
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)status
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003329BC;
  v6[3] = &unk_1009A56D0;
  objc_copyWeak(v7, &location);
  v7[1] = status;
  v6[4] = self;
  dispatch_async(queue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)remoteDevice:(id)device didChangeState:(int64_t)state
{
  deviceCopy = device;
  connWrapper = self->_connWrapper;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100332F2C;
  v9[3] = &unk_10098BB48;
  v10 = deviceCopy;
  stateCopy = state;
  v8 = deviceCopy;
  [(PRRangingClientProtocol *)connWrapper actOnRemoteObjectAndScheduleBarrierBlock:v9];
}

- (void)didReceiveSessionStartNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100333088;
  block[3] = &unk_10098B940;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)configureForCompanionRanging:(id)ranging options:(id)options reply:(id)reply
{
  rangingCopy = ranging;
  optionsCopy = options;
  replyCopy = reply;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessNameKey];
    v13 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = [v13 intValue];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: XPC command - configureForCompanionRanging. Process name: %@, pid: %d", buf, 0x12u);
  }

  v14 = +[NSUserDefaults standardUserDefaults];
  dictionaryRepresentation = [v14 dictionaryRepresentation];

  v15 = [dictionaryRepresentation objectForKey:@"R1Preamble"];
  v16 = v15;
  if (v15)
  {
    integerValue = [v15 integerValue];
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = integerValue;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting special R1 preamble %lli", buf, 0xCu);
    }

    v84[0] = PRP2PArgsRxPreamble;
    v19 = [NSNumber numberWithInteger:integerValue];
    v85[0] = v19;
    v84[1] = PRP2PArgsTxPreamble;
    v20 = [NSNumber numberWithInteger:integerValue];
    v85[1] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];

    v22 = objc_alloc_init(NSMutableDictionary);
    [v22 addEntriesFromDictionary:v21];
    if (optionsCopy)
    {
      [v22 addEntriesFromDictionary:optionsCopy];
    }

    optionsCopy = v22;
  }

  else
  {
    v23 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using normal R1 preamble", buf, 2u);
    }
  }

  if (self->_p2pServiceId)
  {
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PRRangingManager unregisterForService #companion-retry", buf, 2u);
    }

    self->_localRangingState = 0;
    v25 = sub_10035D02C();
    sub_10003E810(buf, self->_rangingManagerClient.__ptr_ + 1);
    v68 = *buf;
    v69 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    }

    v26 = sub_10035DEEC(v25, &v68, self->_p2pServiceId);
    if (v69)
    {
      std::__shared_weak_count::__release_weak(v69);
    }

    if (*&buf[8])
    {
      sub_10000AD84(*&buf[8]);
    }

    if ((v26 & 1) == 0)
    {
      v82 = NSLocalizedDescriptionKey;
      v83 = @"Failed to override P2P job.";
      v35 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v36 = PRErrorWithCodeAndUserInfo(999, v35);

      replyCopy[2](replyCopy, 0, v36);
      goto LABEL_65;
    }
  }

  if ([rangingCopy deviceType] != 3 || (objc_msgSend(rangingCopy, "UUID"), v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 == 0, v27, v28))
  {
    v80 = NSLocalizedDescriptionKey;
    v81 = @"Remote device must be PRDeviceTypeCompanion and have a valid UUID.";
    v33 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v34 = PRErrorWithCodeAndUserInfo(100, v33);

    replyCopy[2](replyCopy, 0, v34);
    goto LABEL_65;
  }

  objc_storeStrong(&self->_companion, ranging);
  v79 = 0;
  roseMACAddress = [(PRRemoteDevice *)self->_companion roseMACAddress];
  [roseMACAddress getBytes:&v79 range:{0, 8}];

  uUID = [(PRRemoteDevice *)self->_companion UUID];
  [uUID getUUIDBytes:&v78];

  v31 = v79;
  engaged = self->_peerDescriptor.__engaged_;
  self->_peerDescriptor.var0.__val_.uuid.var0 = v78;
  if (!engaged)
  {
    self->_peerDescriptor.__engaged_ = 1;
  }

  self->_peerDescriptor.var0.__val_.type = 3;
  self->_peerDescriptor.var0.__val_.uuid.__engaged_ = 1;
  self->_peerDescriptor.var0.__val_.rose_mac_address.var0 = v31;
  *&self->_peerDescriptor.var0.__val_.rose_mac_address.__engaged_ = 1;
  self->_peerDescriptor.var0.__val_.bt_adv_address.__engaged_ = 0;
  *v65 = 0;
  p_peerDescriptor = &self->_peerDescriptor;
  +[NSUserDefaults standardUserDefaults];
  v56 = v67 = 1;
  if ([v56 BOOLForKey:@"CompanionFeature1Disable"])
  {
    LOBYTE(v67) = 0;
  }

  HIBYTE(v67) = 0;
  v37 = [optionsCopy objectForKey:@"GattRanging"];
  v38 = v37;
  if (v37)
  {
    HIBYTE(v67) = [v37 BOOLValue];
    v39 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (HIBYTE(v67))
      {
        v40 = "YES";
      }

      else
      {
        v40 = "NO";
      }

      *buf = 136315138;
      *&buf[4] = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Setting gatt ranging interval use to %s", buf, 0xCu);
    }
  }

  v41 = sub_10035D02C();
  v42 = *(v41 + 406);
  v43 = *(v41 + 407);
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v42)
  {
    v44 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "PRRangingManager prepareRangingServiceRequest #companion-retry", buf, 2u);
    }

    if (sub_1003299D8(v42, &v64, v65, 0))
    {
      sub_10019B9DC(&v64, buf);
      if (optionsCopy)
      {
        v63 = 0;
        v45 = sub_10002A358(optionsCopy, v73, &v63);
        v46 = v63;
        v47 = v46;
        if ((v45 & 1) == 0)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C0A08();
          }

          replyCopy[2](replyCopy, 0, v47);
          goto LABEL_61;
        }
      }

      v48 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "PRRangingManager registerForService #companion-retry", v59, 2u);
      }

      v49 = sub_10035D02C();
      sub_10003E810(v59, self->_rangingManagerClient.__ptr_ + 1);
      v61 = *v59;
      v62 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = sub_10035D888(v49, &v61);
      if (v62)
      {
        std::__shared_weak_count::__release_weak(v62);
      }

      if (v60)
      {
        sub_10000AD84(v60);
      }

      if ((v50 & 0x10000) != 0)
      {
        self->_localRangingState = 1;
        [(PRCompanionRangingClientProxy *)self combineAndReportLocalAndCompanionRangingRequestStatus];
        objc_sync_enter(self);
        self->_p2pServiceId = v50;
        operator new();
      }

      v70 = NSLocalizedDescriptionKey;
      v71 = @"Register for service failed";
      v51 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v47 = PRErrorWithCodeAndUserInfo(999, v51);

      replyCopy[2](replyCopy, 0, v47);
LABEL_61:

      goto LABEL_62;
    }

    v74 = NSLocalizedDescriptionKey;
    v75 = @"Failed to prepare service request.";
    v54 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v55 = PRErrorWithCodeAndUserInfo(999, v54);

    replyCopy[2](replyCopy, 0, v55);
  }

  else
  {
    v76 = NSLocalizedDescriptionKey;
    v77 = @"Configuration Manager Error.";
    v52 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v53 = PRErrorWithCodeAndUserInfo(999, v52);

    replyCopy[2](replyCopy, 0, v53);
  }

LABEL_62:
  if (v43)
  {
    sub_10000AD84(v43);
  }

LABEL_65:
}

- (void)startCompanionRanging:(id)ranging options:(id)options reply:(id)reply
{
  rangingCopy = ranging;
  optionsCopy = options;
  replyCopy = reply;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessNameKey];
    v13 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    v39 = v12;
    v40 = 1024;
    intValue = [v13 intValue];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: XPC command - startCompanionRanging. Process name: %@, pid: %d", buf, 0x12u);
  }

  if ([rangingCopy deviceType] == 3 && (objc_msgSend(rangingCopy, "UUID"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (engaged = self->_peerDescriptor.__engaged_, v14, engaged))
  {
    uUID = [rangingCopy UUID];
    uUID2 = [(PRRemoteDevice *)self->_companion UUID];
    v18 = [uUID isEqual:uUID2];

    if (v18)
    {
      if (self->_p2pServiceId)
      {
        if (self->_localRangingState == 1)
        {
          if (self->_companionRangingState == 1)
          {
            objc_storeStrong(&self->_startOptions, options);
            v27 = 0;
            v19 = [(PRCompanionRangingClientProxy *)self startRangingMangagerAndCompanion:&v27];
            v20 = v27;
            v21 = v20;
            if (v19)
            {
              v21 = 0;
              self->_clientRequestState = 3;
            }

            (replyCopy)[2](replyCopy, v19, v21);
          }

          else
          {
            v28 = NSLocalizedDescriptionKey;
            v29 = @"Companion ranging is not stopped, cannot start.  ";
            v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
            v20 = PRErrorWithCodeAndUserInfo(102, v26);

            (replyCopy)[2](replyCopy, 0, v20);
          }
        }

        else
        {
          v30 = NSLocalizedDescriptionKey;
          v31 = @"Local ranging is not stopped, cannot start.  ";
          v25 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v20 = PRErrorWithCodeAndUserInfo(102, v25);

          (replyCopy)[2](replyCopy, 0, v20);
        }
      }

      else
      {
        v32 = NSLocalizedDescriptionKey;
        v33 = @"Asked to start ranging with invalid ticket id. Was ranging configured first?";
        v24 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v20 = PRErrorWithCodeAndUserInfo(102, v24);

        (replyCopy)[2](replyCopy, 0, v20);
      }
    }

    else
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"Asked to start ranging with a companion with a different UUID than the one configured for ranging.";
      v23 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v20 = PRErrorWithCodeAndUserInfo(100, v23);

      (replyCopy)[2](replyCopy, 0, v20);
    }
  }

  else
  {
    v36 = NSLocalizedDescriptionKey;
    v37 = @"Remote device must be PRDeviceTypeCompanion and have a valid UUID.";
    v22 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v20 = PRErrorWithCodeAndUserInfo(100, v22);

    (replyCopy)[2](replyCopy, 0, v20);
  }
}

- (BOOL)startRangingMangagerAndCompanion:(id *)companion
{
  companionRangingState = self->_companionRangingState;
  if (companionRangingState == 1)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_companionRangingManager prepareRangingOnDevice #companion-retry", v11, 2u);
    }

    companionRangingManager = self->_companionRangingManager;
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    [(CLFindMyAccessoryManager *)companionRangingManager prepareRangingOnDevice:uUID];

    self->_companionRangingState = 2;
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"startRangingMangagerAndCompanion failed, not in stopped state";
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = PRErrorWithCodeAndUserInfo(102, v8);

    [(PRCompanionRangingClientProxy *)self handleError:v9];
  }

  return companionRangingState == 1;
}

- (void)startRangingMangager
{
  if (self->_lastStartScheduledTooSoon)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: using conservative start time offset", buf, 2u);
    }

    self->_lastStartScheduledTooSoon = 0;
    intValue = 1500000;
  }

  else
  {
    intValue = 510000;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"TimeSyncPathListeningWindowMSec"];
  v7 = v6;
  if (v6)
  {
    intValue2 = 1000 * [v6 intValue];
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = intValue2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: listeningWindowSizeUsec overridden by user to %u", buf, 8u);
    }
  }

  else
  {
    intValue2 = 3000;
  }

  startOptions = self->_startOptions;
  if (startOptions)
  {
    v11 = [(NSDictionary *)startOptions objectForKey:PRP2PArgsStartTimeOffsetUsec];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v11 intValue];
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = intValue;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: startCompanionRanging override startTimeOffsetUsec: %llu", buf, 0xCu);
        }
      }
    }

    v13 = [(NSDictionary *)self->_startOptions objectForKey:PRP2PArgsListeningWindowSizeUsec];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue2 = [v13 intValue];
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = intValue2;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: startCompanionRanging override listeningWindowSizeUsec: %u", buf, 8u);
        }
      }
    }
  }

  if (self->_connectionIntervalUs.__engaged_)
  {
    val = self->_connectionIntervalUs.var0.__val_;
  }

  else
  {
    val = 30000;
  }

  v16 = [v5 objectForKey:@"connectionIntervalOverride"];
  v17 = v16;
  if (v16)
  {
    val = [v16 intValue];
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = val;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "connection interval value overridden to %llu us", buf, 0xCu);
    }
  }

  if (!self->_peerDescriptor.__engaged_)
  {
    sub_1000195BC();
  }

  v19 = *(&self->_peerDescriptor.var0.__val_.uuid.var0 + 12);
  *buf = *&self->_peerDescriptor.var0.__null_state_;
  v35 = v19;
  v36 = *&self->_peerDescriptor.var0.__val_.bt_adv_address.var0.__val_.__elems_[2];
  v37 = 1;
  v38 = val * vcvtad_u64_f64(intValue / val);
  v39 = 2;
  v40 = intValue2;
  v41 = 0;
  v42 = &_mh_execute_header & 0xFFFFFFFF00000000 | val;
  v43 = 0u;
  v44 = 0u;
  v20 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_companionRangingManager startEventCounterForDevice #companion-retry", &v28, 2u);
  }

  companionRangingManager = self->_companionRangingManager;
  uUID = [(PRRemoteDevice *)self->_companion UUID];
  [(CLFindMyAccessoryManager *)companionRangingManager startEventCounterForDevice:uUID];

  v23 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PRRangingManager startUserTriggeredRanging #companion-retry", &v28, 2u);
  }

  v24 = sub_10035D02C();
  sub_10003E810(&v28, self->_rangingManagerClient.__ptr_ + 1);
  v30 = v28;
  v31 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = sub_10035E614(v24, &v30, self->_p2pServiceId);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if (v29)
  {
    sub_10000AD84(v29);
  }

  if ((v25 & 1) == 0)
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Initate user triggered ranging failed";
    v26 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v27 = PRErrorWithCodeAndUserInfo(102, v26);

    [(PRCompanionRangingClientProxy *)self handleError:v27];
  }

  self->_localRangingState = 2;
}

- (void)stopCompanionRanging:(id)ranging reply:(id)reply
{
  rangingCopy = ranging;
  replyCopy = reply;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessNameKey];
    v10 = [(NSDictionary *)self->_clientInfo objectForKey:PRProcessIdentifierKey];
    *buf = 138412546;
    v21 = v9;
    v22 = 1024;
    intValue = [v10 intValue];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRCompanionRanging: XPC command - stopCompanionRanging. Process name: %@, pid: %d", buf, 0x12u);
  }

  if ([rangingCopy deviceType] == 3 && (objc_msgSend(rangingCopy, "UUID"), (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (engaged = self->_peerDescriptor.__engaged_, v11, engaged))
  {
    v17 = 0;
    v13 = [(PRCompanionRangingClientProxy *)self stopRangingMangagerAndCompanion:&v17];
    v14 = v17;
    v15 = v14;
    if (v13)
    {
      v15 = 0;
      self->_clientRequestState = 5;
    }

    (replyCopy)[2](replyCopy, v13, v15);
  }

  else
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Remote device must be PRDeviceTypeCompanion and have a valid UUID.";
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = PRErrorWithCodeAndUserInfo(100, v16);

    (replyCopy)[2](replyCopy, 0, v14);
  }
}

- (BOOL)stopRangingMangagerAndCompanion:(id *)companion
{
  localRangingState = self->_localRangingState;
  if ((localRangingState - 2) < 2)
  {
    if (companion)
    {
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Received stopCompanionRanging while Local ranging is starting.  ";
      uUID = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v7 = PRErrorWithCodeAndUserInfo(103, uUID);
      goto LABEL_8;
    }
  }

  else if (localRangingState == 4)
  {
    if (self->_p2pServiceId)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRangingManager stopUserTriggeredRanging #companion-retry", &v21, 2u);
      }

      self->_localRangingState = 5;
      v10 = sub_10035D02C();
      sub_10003E810(&v21, self->_rangingManagerClient.__ptr_ + 1);
      v23 = v21;
      v24 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = sub_10035F214(v10, &v23, self->_p2pServiceId);
      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }

      if (v22)
      {
        sub_10000AD84(v22);
      }

      if (companion)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v29[0] = NSLocalizedDescriptionKey;
        v29[1] = NSLocalizedFailureReasonErrorKey;
        v30[0] = @"Failed to stop ranging";
        v30[1] = @"Stop ranging failed.";
        v12 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
        *companion = PRErrorWithCodeAndUserInfo(103, v12);
      }

      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_companionRangingManager stopEventCounterForDevice #companion-retry", &v21, 2u);
      }

      companionRangingManager = self->_companionRangingManager;
      uUID = [(PRRemoteDevice *)self->_companion UUID];
      [(CLFindMyAccessoryManager *)companionRangingManager stopEventCounterForDevice:uUID];
      goto LABEL_26;
    }

    if (companion)
    {
      v31[0] = NSLocalizedDescriptionKey;
      v31[1] = NSLocalizedFailureReasonErrorKey;
      v32[0] = @"Failed to stop ranging";
      v32[1] = @"No service request.";
      uUID = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
      v7 = PRErrorWithCodeAndUserInfo(103, uUID);
      goto LABEL_8;
    }
  }

  else
  {
    if (localRangingState)
    {
      v8 = 1;
      goto LABEL_31;
    }

    if (companion)
    {
      v35 = NSLocalizedDescriptionKey;
      v36 = @"Local ranging state is not valid, cannot stop.  ";
      uUID = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v7 = PRErrorWithCodeAndUserInfo(103, uUID);
LABEL_8:
      v8 = 0;
      *companion = v7;
LABEL_26:

      goto LABEL_31;
    }
  }

  v8 = 0;
LABEL_31:
  companionRangingState = self->_companionRangingState;
  if ((companionRangingState - 2) < 3)
  {
    if (companion)
    {
      v25 = NSLocalizedDescriptionKey;
      v26 = @"Received stopCompanionRanging while Companion ranging is starting.  ";
      uUID2 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v17 = PRErrorWithCodeAndUserInfo(103, uUID2);
LABEL_38:
      v8 = 0;
      *companion = v17;
LABEL_43:

      return v8;
    }

    return 0;
  }

  if (companionRangingState == 5)
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_companionRangingManager stopRangingOnDevice #companion-retry", &v21, 2u);
    }

    self->_companionRangingState = 6;
    v19 = self->_companionRangingManager;
    uUID2 = [(PRRemoteDevice *)self->_companion UUID];
    [(CLFindMyAccessoryManager *)v19 stopRangingOnDevice:uUID2];
    goto LABEL_43;
  }

  if (!companionRangingState)
  {
    if (companion)
    {
      v27 = NSLocalizedDescriptionKey;
      v28 = @"Companion ranging state is not valid, cannot stop.  ";
      uUID2 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v17 = PRErrorWithCodeAndUserInfo(103, uUID2);
      goto LABEL_38;
    }

    return 0;
  }

  return v8;
}

- (void)cleanupRangingManagerAndCompanionAfterError:(id)error
{
  errorCopy = error;
  cleaningUponDidFail = self->_cleaningUponDidFail;
  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (cleaningUponDidFail)
  {
    if (v7)
    {
      *buf = 138412290;
      *&buf[4] = errorCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received an error while cleaning up: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleanup companionRangingManager and Companion After Error #companion-retry", buf, 2u);
    }

    self->_cleaningUponDidFail = 1;
    v15 = 0;
    [(PRCompanionRangingClientProxy *)self stopRangingMangagerAndCompanion:&v15];
    v8 = v15;
    if (self->_p2pServiceId)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRangingManager unregisterForService #companion-retry", buf, 2u);
      }

      self->_localRangingState = 0;
      v10 = sub_10035D02C();
      sub_10003E810(buf, self->_rangingManagerClient.__ptr_ + 1);
      v14 = *buf;
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      }

      sub_10035DEEC(v10, &v14, self->_p2pServiceId);
      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v14 + 1));
      }

      if (*&buf[8])
      {
        sub_10000AD84(*&buf[8]);
      }

      self->_p2pServiceId = 0;
    }

    [(PRCompanionRangingClientProxy *)self deinitCompanion];
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_companionRangingManager initWithDelegate #companion-retry", buf, 2u);
    }

    v12 = [[CLFindMyAccessoryManager alloc] initWithDelegate:self delegateQueue:self->_queue];
    companionRangingManager = self->_companionRangingManager;
    self->_companionRangingManager = v12;

    self->_cleaningUponDidFail = 0;
  }
}

- (void)recordUsageOfCompanionRanging:(id)ranging usageParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKeyedSubscript:@"FirstRange"];
  v6 = [parametersCopy objectForKeyedSubscript:@"SessionDuration"];
  v7 = [parametersCopy objectForKeyedSubscript:@"ProductUUID"];
  v8 = v7;
  if (ranging && v5 && v6 && v7)
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 doubleForKey:@"UsageAnalyticsThreshold_ItemFinding_FirstRange"];
    v11 = v10;

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 doubleForKey:@"UsageAnalyticsThreshold_ItemFinding_SessionDuration"];
    v14 = v13;

    if (v14 <= 0.0)
    {
      v14 = 3.0;
    }

    [v5 doubleValue];
    v16 = -1.0;
    if (v11 > 0.0)
    {
      v16 = v11;
    }

    if (v15 >= v16)
    {
      [v6 doubleValue];
      if (v17 >= v14)
      {
        if (![v8 isEqualToString:@"DE3DE9FC-A990-4391-B22B-3B1DF35934FA"] && ((objc_msgSend(v8, "isEqualToString:", @"DED0420D-11A9-4A98-9741-EE4C44ED1ADB") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"DE657756-8F49-4A1A-AC55-89B70CD5157B")))
        {
          v18 = +[NIServerUsageAnalyticsAggregator sharedInstance];
          v19 = +[NSDate now];
          [v18 recordUWBUsage:8 date:v19];
        }

        else
        {
          v18 = +[NIServerUsageAnalyticsAggregator sharedInstance];
          v19 = +[NSDate now];
          [v18 recordUWBUsage:7 date:v19];
        }
      }
    }
  }
}

- (void)initCompanion:(id)companion
{
  companionCopy = companion;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [companionCopy UUID];
    v11 = 138412290;
    v12 = uUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Init companion. UUID: %@", &v11, 0xCu);
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_companionRangingManager initRoseWithParameters #companion-retry", &v11, 2u);
  }

  self->_companionRoseState = 1;
  companionRangingManager = self->_companionRangingManager;
  uUID2 = [companionCopy UUID];
  roseMACAddress = [companionCopy roseMACAddress];
  [(CLFindMyAccessoryManager *)companionRangingManager initRangingOnDevice:uUID2 macAddress:roseMACAddress];
}

- (void)deinitCompanion
{
  if (self->_companionRoseState)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(PRRemoteDevice *)self->_companion UUID];
      v8 = 138412290;
      v9 = uUID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deinit companion. UUID: %@", &v8, 0xCu);
    }

    *&self->_companionRangingState = 0x400000000;
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_companionRangingManager deinitRangingOnDevice #companion-retry", &v8, 2u);
    }

    companionRangingManager = self->_companionRangingManager;
    uUID2 = [(PRRemoteDevice *)self->_companion UUID];
    [(CLFindMyAccessoryManager *)companionRangingManager deinitRangingOnDevice:uUID2];
  }
}

- (void)configureCompanionForRanging
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    *buf = 138412290;
    v40 = uUID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configure companion for ranging. UUID: %@", buf, 0xCu);
  }

  v10 = sub_10035D02C();
  v11 = *(v10 + 406);
  v12 = *(v10 + 407);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    ptr = self->_rangingRequest.__ptr_;
    if (ptr)
    {
      v32 = 0;
      if (sub_10032A118(v11, ptr, &v32, v5, v6, v7, v8, v9))
      {
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "+++++++++++++++++++++++++++++++++++++++++", buf, 2u);
        }

        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sent command to remote device:", buf, 2u);
        }

        v16 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v40) = v32;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "   countryCode: 0x%x", buf, 8u);
        }

        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v40) = BYTE1(v32) & 3;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "   channel: 0x%x", buf, 8u);
        }

        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v40) = (BYTE1(v32) >> 2) & 3;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "   txPreamble: 0x%x", buf, 8u);
        }

        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v40) = (BYTE1(v32) >> 4) & 3;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "   rxPreamble: 0x%x", buf, 8u);
        }

        v20 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v40) = HIWORD(v32);
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "   intervalMs: %d", buf, 8u);
        }

        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "+++++++++++++++++++++++++++++++++++++++++", buf, 2u);
        }

        v22 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "_companionRangingManager setRoseRangingParameters #companion-retry", buf, 2u);
        }

        self->_companionRoseState = 2;
        companionRangingManager = self->_companionRangingManager;
        uUID2 = [(PRRemoteDevice *)self->_companion UUID];
        roseMACAddress = [(PRRemoteDevice *)self->_companion roseMACAddress];
        LOWORD(v31) = HIWORD(v32);
        [(CLFindMyAccessoryManager *)companionRangingManager configureRangingOnDevice:uUID2 macAddress:roseMACAddress countryCode:v32 uwbChannel:BYTE1(v32) & 3 acqPreamble:(BYTE1(v32) >> 2) & 3 trackingPreamble:(BYTE1(v32) >> 4) & 3 interval:v31];
      }

      else
      {
        v33 = NSLocalizedDescriptionKey;
        v34 = @"Failed to construct companion range config command.";
        v30 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        uUID2 = PRErrorWithCodeAndUserInfo(101, v30);

        [(PRCompanionRangingClientProxy *)self handleError:uUID2];
      }
    }

    else
    {
      v35 = NSLocalizedDescriptionKey;
      v36 = @"No cached ranging request.";
      v28 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v29 = PRErrorWithCodeAndUserInfo(999, v28);

      [(PRCompanionRangingClientProxy *)self handleError:v29];
    }
  }

  else
  {
    v37 = NSLocalizedDescriptionKey;
    v38 = @"Configuration Manager Error.";
    v26 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v27 = PRErrorWithCodeAndUserInfo(999, v26);

    [(PRCompanionRangingClientProxy *)self handleError:v27];
  }

  if (v12)
  {
    sub_10000AD84(v12);
  }
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  managerCopy = manager;
  errorCopy = error;
  deviceCopy = device;
  if (!deviceCopy || self->_companionRangingManager == managerCopy && (-[PRRemoteDevice UUID](self->_companion, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [deviceCopy isEqual:v11], v11, (v12 & 1) != 0))
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didFailWithError #companion-retry error:%@", buf, 0xCu);
    }

    v16 = NSLocalizedDescriptionKey;
    v17 = @"Generic companion ranging error.";
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = PRErrorWithCodeAndUserInfo(301, v14);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C0A78();
    }

    [(PRCompanionRangingClientProxy *)self handleError:v15];
  }
}

- (void)findMyAccessoryManager:(id)manager didConnectDevice:(id)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  if (self->_companionRangingManager == manager)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v11 = [deviceCopy isEqual:uUID];

    if (v11)
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = errorCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didConnectDevice #companion-retry error:%@", buf, 0xCu);
      }

      if (errorCopy)
      {
        self->_companionConnectionState = 0;
        v17 = NSLocalizedDescriptionKey;
        v18 = @"Error connecting to peer.";
        v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v14 = PRErrorWithCodeAndUserInfo(301, v13);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0AE8();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v14];
      }

      else
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = deviceCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "------ new connection: %@", buf, 0xCu);
        }

        companionConnectionState = self->_companionConnectionState;
        self->_companionConnectionState = 3;
        if (companionConnectionState == 2)
        {
          [(PRCompanionRangingClientProxy *)self initCompanion:self->_companion];
        }
      }
    }
  }
}

- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device
{
  deviceCopy = device;
  if (self->_companionRangingManager == manager)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v8 = [deviceCopy isEqual:uUID];

    if (v8)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didDisconnectDevice #companion-retry", buf, 2u);
      }

      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        companion = self->_companion;
        *buf = 138412290;
        v23 = companion;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "------ disconnection: %@", buf, 0xCu);
      }

      companionConnectionState = self->_companionConnectionState;
      if (companionConnectionState == 4)
      {
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_companionRangingManager disconnect complete #companion-retry", buf, 2u);
        }
      }

      else if (self->_companionRoseState)
      {
        v20 = NSLocalizedDescriptionKey;
        v21 = @"Disconnected while rose activity incomplete";
        v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v15 = PRErrorWithCodeAndUserInfo(302, v14);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0B58();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v15];
      }

      else if (companionConnectionState == 2)
      {
        v18 = NSLocalizedDescriptionKey;
        v19 = @"Disconnected while connecting";
        v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v17 = PRErrorWithCodeAndUserInfo(302, v16);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0B94();
        }

        [(PRCompanionRangingClientProxy *)self didFailWithError:v17];
      }

      [(PRCompanionRangingClientProxy *)self remoteDevice:self->_companion didChangeState:0];
      self->_companionConnectionState = 1;
    }
  }
}

- (void)findMyAccessoryManager:(id)manager didConfigureRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  if (self->_companionRangingManager == manager)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v13 = [deviceCopy isEqual:uUID];

    if (v13)
    {
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = errorCopy;
        v26 = 1024;
        statusCopy = status;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didConfigureRangingOnDevice #companion-retry error:%@, status:%d", buf, 0x12u);
      }

      if (self->_companionRoseState != 2)
      {
        v22 = NSLocalizedDescriptionKey;
        v23 = @"Unexpected didConfigureRangingOnDevice";
        v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v16 = PRErrorWithCodeAndUserInfo(301, v17);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0BD0();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v16];
        goto LABEL_13;
      }

      if (errorCopy)
      {
        v20 = NSLocalizedDescriptionKey;
        v21 = @"Error configuring ranging parameters on peer.";
        v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v16 = PRErrorWithCodeAndUserInfo(302, v15);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0C0C();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v16];
LABEL_13:

        goto LABEL_14;
      }

      v18 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        companion = self->_companion;
        *buf = 138412290;
        v25 = companion;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "------ ConfigureRangingOnDevice: %@", buf, 0xCu);
      }

      *&self->_companionRangingState = 0x300000001;
      self->_clientRequestState = 2;
      [(PRCompanionRangingClientProxy *)self remoteDevice:self->_companion didChangeState:1];
    }
  }

LABEL_14:
}

- (void)findMyAccessoryManager:(id)manager didInitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  if (self->_companionRangingManager != manager)
  {
    goto LABEL_27;
  }

  uUID = [(PRRemoteDevice *)self->_companion UUID];
  v13 = [deviceCopy isEqual:uUID];

  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = errorCopy;
    v30 = 1024;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didInitRoseOnDevice #companion-retry error:%@, status:%d", buf, 0x12u);
  }

  if (self->_companionRoseState != 1)
  {
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Unexpected didInitRoseOnDevice";
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v17 = PRErrorWithCodeAndUserInfo(301, v16);

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C0C7C();
    }

    [(PRCompanionRangingClientProxy *)self handleError:v17];
    goto LABEL_26;
  }

  v15 = qword_1009F9820;
  if (!errorCopy)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[[[******** Remote Device Ready ********]]]", buf, 2u);
    }

    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = status;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Expected Ready ROSE_STATUS: 0x%x", buf, 8u);
    }

    v17 = +[NSUserDefaults standardUserDefaults];
    if ((status == 1) | [v17 BOOLForKey:@"B389_SimulateLowPower"] & 1)
    {
      v24 = NSLocalizedDescriptionKey;
      v25 = @"Failed to initialize ranging on accessory";
      v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v20 = PRErrorWithCodeAndUserInfo(300, v19);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C0D28();
      }

      [(PRCompanionRangingClientProxy *)self handleError:v20];
    }

    else
    {
      if (!status)
      {
        [(PRCompanionRangingClientProxy *)self configureCompanionForRanging];
        goto LABEL_26;
      }

      v22 = NSLocalizedDescriptionKey;
      v23 = @"Error from R1 while initializing";
      v21 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v20 = PRErrorWithCodeAndUserInfo(301, v21);

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C0D28();
      }

      [(PRCompanionRangingClientProxy *)self handleError:v20];
    }

LABEL_26:
    goto LABEL_27;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C0CB8();
  }

  [(PRCompanionRangingClientProxy *)self handleError:errorCopy];
LABEL_27:
}

- (void)findMyAccessoryManager:(id)manager didDeinitRangingOnDevice:(id)device withStatus:(unsigned int)status error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  if (self->_companionRangingManager == manager)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v12 = [deviceCopy isEqual:uUID];

    if (v12)
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = errorCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didDeinitRangingOnDevice #companion-retry error:%@", buf, 0xCu);
      }

      if (self->_companionRoseState != 4)
      {
        v25 = NSLocalizedDescriptionKey;
        v26 = @"Unexpected didDeinitRangingOnDevice";
        v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        uUID2 = PRErrorWithCodeAndUserInfo(301, v16);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0DA4();
        }

        [(PRCompanionRangingClientProxy *)self handleError:uUID2];
        goto LABEL_20;
      }

      if (errorCopy)
      {
        v21 = NSLocalizedDescriptionKey;
        v22 = @"Error deiniting R1 on companion";
        v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        uUID2 = PRErrorWithCodeAndUserInfo(301, v14);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0DE0();
        }

        [(PRCompanionRangingClientProxy *)self handleError:uUID2];
        goto LABEL_20;
      }

      self->_companionRoseState = 0;
      companionConnectionState = self->_companionConnectionState;
      if (companionConnectionState < 3)
      {
        goto LABEL_16;
      }

      if (companionConnectionState == 3)
      {
        self->_companionConnectionState = 4;
        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_companionRangingManager disconnectFromDevice #companion-retry", buf, 2u);
        }

        companionRangingManager = self->_companionRangingManager;
        uUID2 = [(PRRemoteDevice *)self->_companion UUID];
        [(CLFindMyAccessoryManager *)companionRangingManager disconnectDevice:uUID2];
        goto LABEL_20;
      }

      if (companionConnectionState == 4)
      {
LABEL_16:
        v23 = NSLocalizedDescriptionKey;
        v24 = @"Unexpected BT connection state";
        v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        uUID2 = PRErrorWithCodeAndUserInfo(301, v18);

        [(PRCompanionRangingClientProxy *)self handleError:uUID2];
LABEL_20:
      }
    }
  }
}

- (void)findMyAccessoryManager:(id)manager didStartRangingOnDevice:(id)device error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  if (self->_companionRangingManager == manager)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v11 = [deviceCopy isEqual:uUID];

    if (v11)
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = errorCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didStartRangingOnDevice #companion-retry error:%@", buf, 0xCu);
      }

      if (self->_companionRangingState != 4)
      {
        v19 = NSLocalizedDescriptionKey;
        v20 = @"Unexpected didStartRangingOnDevice";
        v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v14 = PRErrorWithCodeAndUserInfo(301, v15);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0E50();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v14];
        goto LABEL_13;
      }

      if (errorCopy)
      {
        v17 = NSLocalizedDescriptionKey;
        v18 = @"Error starting ranging on companion";
        v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v14 = PRErrorWithCodeAndUserInfo(301, v13);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0DE0();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v14];
LABEL_13:

        goto LABEL_14;
      }

      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "started ranging on companion", buf, 2u);
      }

      self->_companionRangingState = 5;
      [(PRCompanionRangingClientProxy *)self combineAndReportLocalAndCompanionRangingRequestStatus];
    }
  }

LABEL_14:
}

- (void)findMyAccessoryManager:(id)manager didCompleteRangingOnDevice:(id)device withStatus:(unsigned int)status endReason:(unsigned __int8)reason error:(id)error
{
  reasonCopy = reason;
  deviceCopy = device;
  errorCopy = error;
  if (self->_companionRangingManager == manager)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v15 = [deviceCopy isEqual:uUID];

    if (v15)
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v33 = deviceCopy;
        v34 = 2112;
        v35 = errorCopy;
        v36 = 1024;
        v37 = reasonCopy;
        v38 = 1024;
        statusCopy2 = status;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "_companionRangingManager didCompleteRoseRangingOnDevice #companion-retry on device: %@, error: %@, endReason: %d, status: %d", buf, 0x22u);
      }

      if ((self->_companionRangingState - 5) >= 2)
      {
        v30 = NSLocalizedDescriptionKey;
        v31 = @"Unexpected didCompleteRoseRangingOnDevice";
        v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v18 = PRErrorWithCodeAndUserInfo(301, v20);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0E8C();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v18];
        goto LABEL_13;
      }

      if (errorCopy)
      {
        v28 = NSLocalizedDescriptionKey;
        v29 = @"Error reported upon ranging complete";
        v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = PRErrorWithCodeAndUserInfo(301, v17);

        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v33 = deviceCopy;
          v34 = 2112;
          v35 = errorCopy;
          v36 = 1024;
          v37 = reasonCopy;
          v38 = 1024;
          statusCopy2 = status;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CLFindMyAccessoryManager failed to complete Rose ranging on device: %@, error: %@, endReason: %d, status: %d", buf, 0x22u);
        }

        [(PRCompanionRangingClientProxy *)self handleError:v18];
      }

      else
      {
        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[[[******** Remote Device Range Complete ********]]]", buf, 2u);
        }

        self->_companionRangingState = 1;
        v22 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v33) = status;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Range Complete Event ROSE_STATUS: 0x%x #companion-retry", buf, 8u);
        }

        if (status == 7)
        {
          self->_lastStartScheduledTooSoon = 1;
        }

        else
        {
          self->_lastStartScheduledTooSoon = 0;
          if (status == 14 || !status)
          {
            self->_companionRangingState = 1;
            v25 = 0;
            v23 = [(PRCompanionRangingClientProxy *)self stopRangingMangagerAndCompanion:&v25];
            v18 = v25;
            if ((v23 & 1) == 0)
            {
              [(PRCompanionRangingClientProxy *)self handleError:v18];
            }

            [(PRCompanionRangingClientProxy *)self combineAndReportLocalAndCompanionRangingRequestStatus];
            goto LABEL_13;
          }
        }

        v26 = NSLocalizedDescriptionKey;
        v27 = @"Error reported in ranging complete";
        v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v18 = PRErrorWithCodeAndUserInfo(301, v24);

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0EC8();
        }

        [(PRCompanionRangingClientProxy *)self handleError:v18];
      }

LABEL_13:
    }
  }
}

- (void)findMyAccessoryManager:(id)manager didHaveRangingMovementOnDevice:(id)device
{
  deviceCopy = device;
  if (self->_companionRangingManager == manager)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v8 = [deviceCopy isEqual:uUID];

    if (v8)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didHaveRangingMovementOnDevice #companion-retry", v10, 2u);
      }

      [(PRCompanionRangingClientProxy *)self remoteDevice:self->_companion didChangeState:2];
    }
  }
}

- (void)findMyAccessoryManager:(id)manager didPrepareRangingOnDevice:(id)device withConnInterval:(id)interval error:(id)error
{
  managerCopy = manager;
  deviceCopy = device;
  intervalCopy = interval;
  errorCopy = error;
  if (self->_companionRangingManager == managerCopy)
  {
    uUID = [(PRRemoteDevice *)self->_companion UUID];
    v15 = [deviceCopy isEqual:uUID];

    if (v15)
    {
      v16 = qword_1009F9820;
      if (errorCopy)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C0F78();
        }

        [(PRCompanionRangingClientProxy *)self handleError:errorCopy];
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_companionRangingManager didPrepareForStartRangingOnDevice #companion-retry", &v21, 2u);
        }

        if (self->_companionRangingState != 2)
        {
          v23 = NSLocalizedDescriptionKey;
          v24 = @"Unexpected didPrepareForStartRangingOnDevice";
          v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          v18 = PRErrorWithCodeAndUserInfo(301, v17);

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C0FB4();
          }

          [(PRCompanionRangingClientProxy *)self handleError:v18];
        }

        self->_connectionIntervalUs.var0.__val_ = [intervalCopy unsignedLongLongValue];
        self->_connectionIntervalUs.__engaged_ = 1;
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          if (!self->_connectionIntervalUs.__engaged_)
          {
            sub_1000195BC();
          }

          val = self->_connectionIntervalUs.var0.__val_;
          v21 = 134217984;
          v22 = val;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#companion-retry Connection interval set to %llu us", &v21, 0xCu);
        }

        self->_companionRangingState = 3;
        [(PRCompanionRangingClientProxy *)self startRangingMangager];
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 12) = 0;
  *(self + 104) = 0;
  *(self + 112) = 0;
  *(self + 136) = 0;
  *(self + 176) = 0;
  return self;
}

@end
@interface BTVCLinkScanner
- (BTVCLinkScanner)initWithType:(int64_t)type;
- (NSString)description;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invokeBlockActivateSafe:(id)safe;
- (void)_restartIfNeeded:(BOOL)needed;
- (void)_scanEnable:(BOOL)enable;
- (void)_startTimeoutIfNeeded;
- (void)_timeoutTimerFired;
- (void)activateWithCompletion:(id)completion;
- (void)btvcBonjourLink:(id)link didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info;
- (void)btvcBonjourLink:(id)link didFailToStartScanningForType:(int64_t)type WithError:(id)error;
- (void)btvcBonjourLink:(id)link didLosePeer:(id)peer type:(int64_t)type;
- (void)btvcBonjourLink:(id)link didStartScanningForType:(int64_t)type;
- (void)btvcBonjourLinkDidUpdateState:(id)state;
- (void)dealloc;
- (void)invalidate;
- (void)performUpdate:(id)update;
- (void)scanEnable:(BOOL)enable;
- (void)setDispatchQueue:(id)queue;
- (void)setPayloadFilterData:(id)data mask:(id)mask;
- (void)setTimeout:(double)timeout;
@end

@implementation BTVCLinkScanner

- (void)dealloc
{
  if (self->_startRetrier || self->_btvcBonjourLink)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    payloadFilterData = self->_payloadFilterData;
    self->_payloadFilterData = 0;

    payloadFilterMask = self->_payloadFilterMask;
    self->_payloadFilterMask = 0;

    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = 0;

    ucat = self->_ucat;
    if (ucat)
    {
      if ((ucat->var3 & 0x40000) != 0)
      {
        LogCategory_Remove();
        self->_ucat = 0;
      }
    }

    v9.receiver = self;
    v9.super_class = BTVCLinkScanner;
    [(BTVCLinkScanner *)&v9 dealloc];
  }
}

- (NSString)description
{
  if (self->_invalidateCalled)
  {
    NSAppendPrintF();
    v3 = 0;
  }

  else
  {
    v3 = 0;
  }

  if (self->_activeScan)
  {
    NSAppendPrintF();
    v4 = v3;

    v3 = v4;
  }

  if (self->_needDups)
  {
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  if (self->_scanCache)
  {
    NSAppendPrintF();
    v6 = v3;

    v3 = v6;
  }

  if (self->_payloadFilterData || self->_payloadFilterMask)
  {
    NSAppendPrintF();
    v7 = v3;

    v3 = v7;
  }

  return v3;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)setPayloadFilterData:(id)data mask:(id)mask
{
  dataCopy = data;
  maskCopy = mask;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_100850BFC(dataCopy, maskCopy, v8);
  }

  v9 = [dataCopy length];
  if (v9 == [maskCopy length])
  {
    v10 = [dataCopy copy];
    v11 = [maskCopy copy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10060018C;
    v14[3] = &unk_100AE2550;
    v14[4] = self;
    v12 = v10;
    v15 = v12;
    v16 = v11;
    v13 = v11;
    [(BTVCLinkScanner *)self _invokeBlockActivateSafe:v14];
  }

  else
  {
    [dataCopy length];
    [maskCopy length];
    FatalErrorF();
    __break(1u);
  }
}

- (void)setTimeout:(double)timeout
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100600248;
  v3[3] = &unk_100AE1200;
  v3[4] = self;
  *&v3[5] = timeout;
  [(BTVCLinkScanner *)self _invokeBlockActivateSafe:v3];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100600364;
  v8[3] = &unk_100AE23F8;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[BTVCLinkScanner _activateWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Activate\n", buf, 0xCu);
  }

  if (self->_invalidateCalled)
  {
    v13 = -6724;
LABEL_13:
    if (sub_100850D2C(v13, completionCopy))
    {
      goto LABEL_19;
    }

    nSLocalizedDescriptionKey = [NSString stringWithUTF8String:DebugGetErrorString(), NSLocalizedDescriptionKey];
    self = nSLocalizedDescriptionKey;
    v15 = @"?";
    if (nSLocalizedDescriptionKey)
    {
      v15 = nSLocalizedDescriptionKey;
    }

    v17 = v15;
    p_linktType = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v13 userInfo:p_linktType];
    v11 = 0;
    goto LABEL_17;
  }

  if (self->_startRetrier)
  {
    v13 = -6721;
    goto LABEL_13;
  }

  p_linktType = &self->_linktType;
  linktType = self->_linktType;
  if ((linktType - 1) > 1)
  {
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      sub_100850C84(p_linktType, v12);
    }

    v13 = -6735;
    goto LABEL_13;
  }

  self->_btvcBonjourLinkType = linktType != 1;
  if (!self->_btvcBonjourLink)
  {
    p_linktType = +[BTVCLinkClient sharedClient];
    v8 = [p_linktType addBTVCBonjourLinkDelegate:self];
    btvcBonjourLink = self->_btvcBonjourLink;
    self = (self + 136);
    self->super.isa = v8;

    if (!self->super.isa)
    {
      v13 = -6729;
      goto LABEL_13;
    }
  }

  if (!completionCopy)
  {
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 1;
LABEL_17:
  completionCopy[2](completionCopy, v10);
  if ((v11 & 1) == 0)
  {
  }

LABEL_19:
}

- (void)scanEnable:(BOOL)enable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dispatchQueue = selfCopy->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006006C4;
  v6[3] = &unk_100AE1750;
  v6[4] = selfCopy;
  enableCopy = enable;
  dispatch_async(dispatchQueue, v6);
  objc_sync_exit(selfCopy);
}

- (void)_scanEnable:(BOOL)enable
{
  enableCopy = enable;
  objc_initWeak(&location, self);
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[BTVCLinkScanner _scanEnable:]";
    v20 = 1024;
    v21 = enableCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s scanEnable: %d\n", buf, 0x12u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  startRetrier = self->_startRetrier;
  if (enableCopy)
  {
    if (!startRetrier)
    {
      v7 = objc_alloc_init(CURetrier);
      v8 = self->_startRetrier;
      self->_startRetrier = v7;

      v9 = self->_startRetrier;
      if (!v9)
      {
        sub_100850DE4();
        goto LABEL_13;
      }

      [(CURetrier *)v9 setDispatchQueue:self->_dispatchQueue];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1006008B8;
      v15 = &unk_100AEB0C0;
      objc_copyWeak(&v16, &location);
      [(CURetrier *)self->_startRetrier setActionHandler:&v12];
      objc_destroyWeak(&v16);
      startRetrier = self->_startRetrier;
    }

    [(CURetrier *)startRetrier startDirect:v12];
  }

  else
  {
    if (startRetrier)
    {
      [(CURetrier *)startRetrier invalidateDirect];
      v10 = self->_startRetrier;
      self->_startRetrier = 0;
    }

    btvcBonjourLink = self->_btvcBonjourLink;
    if (btvcBonjourLink)
    {
      [(BTVCBonjourLink *)btvcBonjourLink stopScanningForType:1];
    }

    self->_scanStarted = 0;
  }

LABEL_13:
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100600A08;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_100850E88(v3, v4, v5);
    }

    self->_invalidateCalled = 1;
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v7 = timeoutTimer;
      dispatch_source_cancel(v7);
      v8 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    startRetrier = self->_startRetrier;
    if (startRetrier)
    {
      [(CURetrier *)startRetrier invalidateDirect];
      v10 = self->_startRetrier;
      self->_startRetrier = 0;
    }

    if (self->_linktType == 2)
    {
      [(BTVCBonjourLink *)self->_btvcBonjourLink stopScanningForType:1];
      btvcBonjourLink = self->_btvcBonjourLink;
      if (btvcBonjourLink)
      {
        v12 = +[BTVCLinkClient sharedClient];
        [v12 removeBTVCBonjourLinkDelegate:self];

        btvcBonjourLink = self->_btvcBonjourLink;
      }

      self->_btvcBonjourLink = 0;
    }

    else
    {
      v13 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        linktType = self->_linktType;
        if (linktType > 2)
        {
          v15 = "?";
        }

        else
        {
          v15 = off_100B01840[linktType];
        }

        v22 = 134218242;
        v23 = linktType;
        v24 = 2080;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkScanner] ### Invalidate unsupported type: %ld (%s)\n", &v22, 0x16u);
      }
    }

    self->_scanStarted = 0;
    v16 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_100850EC4(v16, v17, v18);
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v20 = self->_invalidationHandler;
    }

    else
    {
      v20 = 0;
    }

    self->_invalidationHandler = 0;

    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = 0;
  }
}

- (void)performUpdate:(id)update
{
  updateCopy = update;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100600D18;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  updateCopy[2](updateCopy);
  v6 = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100600D28;
  v7[3] = &unk_100ADF820;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (void)_invokeBlockActivateSafe:(id)safe
{
  safeCopy = safe;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100600E44;
    v7[3] = &unk_100AE2500;
    v7[4] = selfCopy;
    v8 = safeCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    safeCopy[2](safeCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)_startTimeoutIfNeeded
{
  if (!self->_timeoutFired && self->_timeout > 0.0 && !self->_timeoutTimer)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      timeout = self->_timeout;
      *buf = 134217984;
      v13 = timeout;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCLinkScanner] Start timeout timer for %f seconds\n", buf, 0xCu);
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v5;

    v7 = self->_timeoutTimer;
    if (!v7)
    {
      sub_100850F00();
    }

    v8 = (self->_timeout * 1000000000.0);
    v9 = dispatch_time(0, v8);
    dispatch_source_set_timer(v7, v9, v8, v8 >> 2);
    v10 = self->_timeoutTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10060105C;
    handler[3] = &unk_100ADF820;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self->_timeoutTimer);
  }
}

- (void)_timeoutTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCLinkScanner] Timeout timer fired\n", v9, 2u);
  }

  self->_timeoutFired = 1;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2]();
    v8 = self->_timeoutHandler;
  }

  else
  {
    v8 = 0;
  }

  self->_timeoutHandler = 0;
}

- (void)btvcBonjourLinkDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v6 = btvcBonjourLink == stateCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    state = [(BTVCBonjourLink *)stateCopy state];
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_INFO))
    {
      sub_100850F18(state, v8);
    }
  }
}

- (void)btvcBonjourLink:(id)link didStartScanningForType:(int64_t)type
{
  linkCopy = link;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v8 = btvcBonjourLink == linkCopy;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && self->_btvcBonjourLinkType == type)
  {
    v9 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BTVCLinkScanner] Bluetooth scanning started\n", v10, 2u);
    }

    if (self->_scanState != 1)
    {
      self->_scanState = 1;
    }

    [(BTVCLinkScanner *)self _startTimeoutIfNeeded];
  }
}

- (void)btvcBonjourLink:(id)link didFailToStartScanningForType:(int64_t)type WithError:(id)error
{
  linkCopy = link;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v11 = btvcBonjourLink == linkCopy;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && self->_btvcBonjourLinkType == type)
  {
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = errorCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkScanner] ### Bluetooth scan failed: %@\n", &v13, 0xCu);
    }

    self->_scanStarted = 0;
    [(CURetrier *)self->_startRetrier failedDirect];
  }
}

- (void)btvcBonjourLink:(id)link didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info
{
  linkCopy = link;
  dataCopy = data;
  peerCopy = peer;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink && btvcBonjourLink == linkCopy && self->_btvcBonjourLinkType == type)
  {
    v17 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 67109890;
      v23[1] = type;
      v24 = 2112;
      v25 = dataCopy;
      v26 = 2112;
      v27 = peerCopy;
      v28 = 2112;
      v29 = infoCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[BTVCLinkScanner] DiscoverType %d, data:%@ peer:%@ peerInfo:%@\n", v23, 0x26u);
    }

    advReportReceiveHandler = [(BTVCLinkScanner *)self advReportReceiveHandler];
    v19 = advReportReceiveHandler == 0;

    if (!v19)
    {
      advReportReceiveHandler2 = [(BTVCLinkScanner *)self advReportReceiveHandler];
      v21 = advReportReceiveHandler2;
      if (type == 1)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      (*(advReportReceiveHandler2 + 16))(advReportReceiveHandler2, v22, dataCopy, peerCopy, infoCopy);
    }
  }
}

- (void)btvcBonjourLink:(id)link didLosePeer:(id)peer type:(int64_t)type
{
  typeCopy = type;
  peerCopy = peer;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = peerCopy;
    v11 = 1024;
    v12 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCLinkScanner] Lose peer device:%@, link type:%d\n", &v9, 0x12u);
  }

  [(BTVCLinkScanner *)self _restartIfNeeded:1];
}

- (BTVCLinkScanner)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = BTVCLinkScanner;
  v4 = [(BTVCLinkScanner *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_dispatchQueue, &_dispatch_main_q);
    v5->_linktType = type;
    v6 = v5;
  }

  return v5;
}

- (void)_restartIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v47 = "[BTVCLinkScanner _restartIfNeeded:]";
    v48 = 1024;
    LODWORD(v49) = neededCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s inForce: %d\n", buf, 0x12u);
  }

  if ((self->_linktType - 1) > 1)
  {
    v14 = sub_10003F704();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      linktType = self->_linktType;
      if (linktType > 2)
      {
        v16 = "?";
      }

      else
      {
        v16 = off_100B01840[linktType];
      }

      *buf = 134218242;
      v47 = linktType;
      v48 = 2080;
      v49 = v16;
      sub_1006017C8();
      _os_log_impl(v24, v25, OS_LOG_TYPE_DEFAULT, v26, v27, 0x16u);
    }

    if (sub_1000E0B48())
    {
      *buf = 67109120;
      LODWORD(v47) = -6735;
      sub_10006E010();
      v33 = 8;
LABEL_26:
      _os_log_impl(v28, v29, v30, v31, v32, v33);
    }
  }

  else
  {
    btvcBonjourLink = self->_btvcBonjourLink;
    if (!btvcBonjourLink)
    {
      return;
    }

    if (self->_scanCache && self->_scanStarted)
    {
      if (sub_1000E0B48())
      {
        *buf = 0;
        sub_10006E010();
        v33 = 2;
        goto LABEL_26;
      }
    }

    else
    {
      state = [(BTVCBonjourLink *)btvcBonjourLink state];
      if (state == 3)
      {
        scanStarted = self->_scanStarted;
        if (!neededCopy && scanStarted)
        {
          v9 = sub_10003F704();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            sub_1006017C8();
            _os_log_impl(v10, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
          }

          goto LABEL_21;
        }

        v17 = scanStarted && neededCopy;
        v18 = sub_10003F704();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          sub_1006017C8();
          sub_10003F35C(v34, v35, v36, v37, v38);
          if (v17)
          {
            goto LABEL_17;
          }
        }

        else if (v17)
        {
LABEL_17:
          v19 = sub_10003F704();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            sub_1006017C8();
            sub_10003F35C(v39, v40, v41, v42, v43);
          }

          [(BTVCBonjourLink *)self->_btvcBonjourLink stopScanningForType:self->_btvcBonjourLinkType];
        }

        BYTE1(v45) = self->_scanCache;
        LOBYTE(v45) = self->_needDups;
        [(BTVCBonjourLink *)self->_btvcBonjourLink startScanningForType:self->_btvcBonjourLinkType data:self->_payloadFilterData mask:self->_payloadFilterMask peers:0 scanMode:10 rssi:0 duplicates:v45 scanCache:0 useCaseList:?];
        v20 = [(NSData *)self->_payloadFilterData copy];
        scanParamFilterData = self->_scanParamFilterData;
        self->_scanParamFilterData = v20;

        v22 = [(NSData *)self->_payloadFilterMask copy];
        scanParamFilterMask = self->_scanParamFilterMask;
        self->_scanParamFilterMask = v22;

        self->_scanParamDups = self->_needDups;
        self->_scanParamCache = self->_scanCache;
LABEL_21:
        self->_scanStarted = 1;
        [(CURetrier *)self->_startRetrier succeededDirect];
        return;
      }

      if (sub_1000E0B48())
      {
        v44 = sub_100600EAC(state);
        *buf = 136315138;
        v47 = v44;
        sub_10006E010();
        v33 = 12;
        goto LABEL_26;
      }
    }
  }
}

@end
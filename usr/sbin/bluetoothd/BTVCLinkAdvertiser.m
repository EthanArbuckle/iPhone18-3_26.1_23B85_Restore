@interface BTVCLinkAdvertiser
- (BTVCLinkAdvertiser)initWithType:(int64_t)a3;
- (NSString)description;
- (int)_preparePayload:(BOOL)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_advertisingEnable:(BOOL)a3;
- (void)_invalidate;
- (void)_restartIfNeeded:(BOOL)a3;
- (void)activateWithCompletion:(id)a3;
- (void)advertisingEnable:(BOOL)a3;
- (void)btvcBonjourLink:(id)a3 didConnectToPeer:(id)a4 parameters:(id)a5 role:(int64_t)a6 error:(id)a7;
- (void)btvcBonjourLink:(id)a3 didDeferAdvertisingType:(int64_t)a4;
- (void)btvcBonjourLink:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5;
- (void)btvcBonjourLink:(id)a3 didStartAdvertisingType:(int64_t)a4;
- (void)btvcBonjourLink:(id)a3 didStopAdvertisingType:(int64_t)a4 withError:(id)a5;
- (void)btvcBonjourLinkDidUpdateState:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setDispatchQueue:(id)a3;
- (void)setPayloadData:(id)a3;
- (void)setPayloadFields:(id)a3;
@end

@implementation BTVCLinkAdvertiser

- (void)dealloc
{
  if (self->_startRetrier)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
    self->_advertiseStateChangedHandler = 0;

    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    payloadDataCurrent = self->_payloadDataCurrent;
    self->_payloadDataCurrent = 0;

    payloadDataPrevious = self->_payloadDataPrevious;
    self->_payloadDataPrevious = 0;

    payloadFields = self->_payloadFields;
    self->_payloadFields = 0;

    payloadIdentifier = self->_payloadIdentifier;
    self->_payloadIdentifier = 0;

    v10.receiver = self;
    v10.super_class = BTVCLinkAdvertiser;
    [(BTVCLinkAdvertiser *)&v10 dealloc];
  }
}

- (NSString)description
{
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_invalidateCalled)
  {
    v8 = v3;
    NSAppendPrintF();
    v5 = v8;

    v4 = v5;
  }

  NSAppendPrintF();
  v6 = v4;

  return v4;
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
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
    obj->_dispatchQueue = v4;

    objc_sync_exit(obj);
  }
}

- (void)setPayloadData:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10039492C;
  v13[3] = &unk_100AE0B60;
  v13[4] = v6;
  v7 = v5;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  v9 = v8;
  if (v6->_activateCalled)
  {
    dispatchQueue = v6->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100394984;
    v11[3] = &unk_100AE2500;
    v11[4] = v6;
    v12 = v8;
    dispatch_async(dispatchQueue, v11);
  }

  else
  {
    (v8[2])(v8);
  }

  objc_sync_exit(v6);
}

- (void)setPayloadFields:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100394B70;
  v13[3] = &unk_100AE0B60;
  v13[4] = v6;
  v7 = v5;
  v14 = v7;
  v8 = objc_retainBlock(v13);
  v9 = v8;
  if (v6->_activateCalled)
  {
    dispatchQueue = v6->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100394BC8;
    v11[3] = &unk_100AE2500;
    v11[4] = v6;
    v12 = v8;
    dispatch_async(dispatchQueue, v11);
  }

  else
  {
    (v8[2])(v8);
  }

  objc_sync_exit(v6);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_activateCalled = 1;
  dispatchQueue = v5->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100394CEC;
  v8[3] = &unk_100AE23F8;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    linktType = self->_linktType;
    if (linktType > 2)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_100AEF3B0[linktType];
    }

    *buf = 136315650;
    v20 = "[BTVCLinkAdvertiser _activateWithCompletion:]";
    v21 = 2048;
    v22 = linktType;
    v23 = 2080;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %ld (%s)\n", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    v14 = -6724;
LABEL_16:
    if (sub_100822598(v14, v4))
    {
      goto LABEL_22;
    }

    v15 = [NSString stringWithUTF8String:DebugGetErrorString(), NSLocalizedDescriptionKey];
    self = v15;
    v16 = @"?";
    if (v15)
    {
      v16 = v15;
    }

    v18 = v16;
    p_linktType = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v14 userInfo:p_linktType];
    v13 = 0;
    goto LABEL_20;
  }

  if (self->_startRetrier)
  {
    v14 = -6721;
    goto LABEL_16;
  }

  p_linktType = &self->_linktType;
  v8 = self->_linktType;
  if ((v8 - 1) > 1)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100822500();
    }

    v14 = -6735;
    goto LABEL_16;
  }

  self->_btvcBonjourLinkType = v8 != 1;
  if (!self->_btvcBonjourLink)
  {
    p_linktType = +[BTVCLinkClient sharedClient];
    v10 = [p_linktType addBTVCBonjourLinkDelegate:self];
    btvcBonjourLink = self->_btvcBonjourLink;
    self = (self + 80);
    self->super.isa = v10;

    if (!self->super.isa)
    {
      v14 = -6729;
      goto LABEL_16;
    }
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  v12 = 0;
  v13 = 1;
LABEL_20:
  v4[2](v4, v12);
  if ((v13 & 1) == 0)
  {
  }

LABEL_22:
}

- (void)advertisingEnable:(BOOL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  dispatchQueue = v4->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10039507C;
  v6[3] = &unk_100AE1750;
  v6[4] = v4;
  v7 = a3;
  dispatch_async(dispatchQueue, v6);
  objc_sync_exit(v4);
}

- (void)_advertisingEnable:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    advertisingEnabled = self->_advertisingEnabled;
    *buf = 67109376;
    v20 = advertisingEnabled;
    v21 = 1024;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] _advertisingEnabled:%d inEnable: %d\n", buf, 0xEu);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_advertisingEnabled != v3)
  {
    self->_advertisingEnabled = v3;
    if (v3)
    {
      if (self->_payloadFields)
      {
        v7 = objc_alloc_init(CURetrier);
        startRetrier = self->_startRetrier;
        self->_startRetrier = v7;

        v9 = self->_startRetrier;
        if (!v9)
        {
          sub_100822650();
          goto LABEL_11;
        }

        [(CURetrier *)v9 setDispatchQueue:self->_dispatchQueue];
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_1003952C0;
        v16 = &unk_100AEB0C0;
        objc_copyWeak(&v17, &location);
        [(CURetrier *)self->_startRetrier setActionHandler:&v13];
        objc_destroyWeak(&v17);
        [(CURetrier *)self->_startRetrier startDirect:v13];
      }
    }

    else
    {
      [(CURetrier *)self->_startRetrier invalidateDirect];
      v10 = self->_startRetrier;
      self->_startRetrier = 0;

      [(BTVCBonjourLink *)self->_btvcBonjourLink stopAdvertisingOfType:1];
    }

    v11 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_advertisingEnabled;
      *buf = 67109120;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] complete _advertisingEnabled:%d\n", buf, 8u);
    }
  }

LABEL_11:
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100395410;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_1008226E4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  self->_invalidateCalled = 1;
  [(CURetrier *)self->_startRetrier invalidateDirect];
  startRetrier = self->_startRetrier;
  self->_startRetrier = 0;

  linktType = self->_linktType;
  if (linktType == 2)
  {
    [(BTVCBonjourLink *)self->_btvcBonjourLink stopAdvertisingOfType:1];
    btvcBonjourLink = self->_btvcBonjourLink;
    if (btvcBonjourLink)
    {
LABEL_9:
      v14 = +[BTVCLinkClient sharedClient];
      [v14 removeBTVCBonjourLinkDelegate:self];

      btvcBonjourLink = self->_btvcBonjourLink;
    }
  }

  else
  {
    if (linktType != 1)
    {
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_10082271C();
      }

      goto LABEL_13;
    }

    [(BTVCBonjourLink *)self->_btvcBonjourLink stopAdvertisingOfType:0];
    btvcBonjourLink = self->_btvcBonjourLink;
    if (btvcBonjourLink)
    {
      goto LABEL_9;
    }
  }

  self->_btvcBonjourLink = 0;

LABEL_13:
  v15 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_1008227B4(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
  self->_advertiseStateChangedHandler = 0;

  v25 = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (int)_preparePayload:(BOOL)a3
{
  p_payloadDataCurrent = &self->_payloadDataCurrent;
  if (!self->_payloadDataCurrent)
  {
    linktType = self->_linktType;
    if (linktType == 2 || linktType == 1)
    {
      objc_storeStrong(&self->_payloadDataCurrent, self->_payloadFields);
    }

    else
    {
      v16 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkAdvertiser] ### Skipping unsupported payload type\n", v17, 2u);
      }
    }
  }

  if (!a3 && self->_payloadDataPrevious && ([(NSArray *)*p_payloadDataCurrent isEqual:?]& 1) != 0)
  {
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_1008227EC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return -6757;
  }

  else
  {
    objc_storeStrong(&self->_payloadDataPrevious, self->_payloadDataCurrent);
    return 0;
  }
}

- (void)btvcBonjourLinkDidUpdateState:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v6 = btvcBonjourLink == v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [(BTVCBonjourLink *)v4 state];
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_INFO))
    {
      if (v7 > 5)
      {
        v9 = "?";
      }

      else
      {
        v9 = off_100AEF3C8[v7];
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[BTVCLinkAdvertiser] Bluetooth state updated: %s\n", &v10, 0xCu);
    }

    if (v7 == 3)
    {
      [(BTVCLinkAdvertiser *)self _restartIfNeeded:1];
    }
  }
}

- (void)btvcBonjourLink:(id)a3 didStartAdvertisingType:(int64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v8 = btvcBonjourLink == v6;
  }

  else
  {
    v8 = 0;
  }

  if (!v8 || self->_btvcBonjourLinkType != a4)
  {
    goto LABEL_16;
  }

  advertiseState = self->_advertiseState;
  v10 = qword_100BCEA70;
  v11 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
  if (advertiseState == 2)
  {
    if (v11)
    {
      v16 = 0;
      v12 = "[BTVCLinkAdvertiser] Bluetooth advertising started after being deferred\n";
      v13 = &v16;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    }
  }

  else if (v11)
  {
    v15 = 0;
    v12 = "[BTVCLinkAdvertiser] Bluetooth advertising started\n";
    v13 = &v15;
    goto LABEL_12;
  }

  if (self->_advertiseState != 1)
  {
    self->_advertiseState = 1;
    advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
    if (advertiseStateChangedHandler)
    {
      advertiseStateChangedHandler[2](advertiseStateChangedHandler, 1);
    }
  }

LABEL_16:
}

- (void)btvcBonjourLink:(id)a3 didStopAdvertisingType:(int64_t)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v11 = btvcBonjourLink == v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && self->_btvcBonjourLinkType == a4)
  {
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] Bluetooth advertising stopped: %@\n", &v14, 0xCu);
    }

    if (self->_advertiseState)
    {
      self->_advertiseState = 0;
      advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
      if (advertiseStateChangedHandler)
      {
        advertiseStateChangedHandler[2](advertiseStateChangedHandler, 0);
      }
    }
  }
}

- (void)btvcBonjourLink:(id)a3 didDeferAdvertisingType:(int64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v8 = btvcBonjourLink == v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && self->_btvcBonjourLinkType == a4 && self->_advertiseState != 2)
  {
    v9 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] Bluetooth advertising deferred\n", v11, 2u);
    }

    self->_advertiseState = 2;
    advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
    if (advertiseStateChangedHandler)
    {
      advertiseStateChangedHandler[2](advertiseStateChangedHandler, 2);
    }
  }
}

- (void)btvcBonjourLink:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    v11 = btvcBonjourLink == v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && self->_btvcBonjourLinkType == a4)
  {
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] ### Bluetooth advertise failed: %@\n", &v14, 0xCu);
    }

    [(CURetrier *)self->_startRetrier failedDirect];
    if (self->_advertiseState != 3)
    {
      self->_advertiseState = 3;
      advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
      if (advertiseStateChangedHandler)
      {
        advertiseStateChangedHandler[2](advertiseStateChangedHandler, 3);
      }
    }
  }
}

- (void)btvcBonjourLink:(id)a3 didConnectToPeer:(id)a4 parameters:(id)a5 role:(int64_t)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v13;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] DidConnectToPeer: %@, %@\n", &v22, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (a6 == 1)
  {
    btvcBonjourLink = self->_btvcBonjourLink;
    if (btvcBonjourLink)
    {
      if (btvcBonjourLink == v12 && self->_connectionHandler)
      {
        v18 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412546;
          v23 = v13;
          v24 = 2112;
          v25 = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] DidConnectToPeer: %@, %@\n", &v22, 0x16u);
        }

        v19 = qword_100BCEA70;
        v20 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v20)
          {
            v22 = 138412546;
            v23 = v13;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] ### Accept connection from peer %@ failed: %@\n", &v22, 0x16u);
          }
        }

        else
        {
          if (v20)
          {
            LOWORD(v22) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] DidConnectToPeer: _connectionHandler", &v22, 2u);
          }

          (*(self->_connectionHandler + 2))();
        }
      }
    }
  }

  v21 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] DidConnectToPeer: failed", &v22, 2u);
  }
}

- (BTVCLinkAdvertiser)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = BTVCLinkAdvertiser;
  v4 = [(BTVCLinkAdvertiser *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_dispatchQueue, &_dispatch_main_q);
    v5->_linktType = a3;
    v6 = v5;
  }

  return v5;
}

- (void)_restartIfNeeded:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    v18 = "";
    if (v3)
    {
      v18 = "(force)";
    }

    v19 = 136315138;
    v20 = v18;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[BTVCLinkAdvertiser] RestartIfNeeded %s\n", &v19, 0xCu);
  }

  if ((self->_linktType - 1) > 1)
  {
    v11 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_10006DDCC();
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[BTVCLinkAdvertiser] ### Restart unsupported type: %ld (%s)\n", &v19, 0x16u);
    }
  }

  else
  {
    btvcBonjourLink = self->_btvcBonjourLink;
    if (!btvcBonjourLink || [(BTVCBonjourLink *)btvcBonjourLink state]!= 3)
    {
      return;
    }

    v7 = [(BTVCLinkAdvertiser *)self _preparePayload:v3];
    if (v7 == -6757)
    {
LABEL_13:
      [(CURetrier *)self->_startRetrier succeededDirect];
      return;
    }

    if (!v7 && self->_payloadDataCurrent)
    {
      v8 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "no";
        payloadDataCurrent = self->_payloadDataCurrent;
        if (v3)
        {
          v9 = "yes";
        }

        v19 = 138412546;
        v20 = payloadDataCurrent;
        v21 = 2080;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAdvertiser] Advertise update: data '%@', force %s\n", &v19, 0x16u);
      }

      [(BTVCBonjourLink *)self->_btvcBonjourLink stopAdvertisingOfType:self->_btvcBonjourLinkType];
      [(BTVCBonjourLink *)self->_btvcBonjourLink startAdvertisingOfType:self->_btvcBonjourLinkType withData:self->_payloadDataCurrent];
      goto LABEL_13;
    }
  }

  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003F634(&_mh_execute_header, v12, v13, "Warning: [BTVCLinkAdvertiser] ### RestartIfNeeded failed: %d\n", v14, v15, v16, v17, 0);
  }
}

@end
@interface NRLinkManagerWiFi
- (id)copyStatusString;
- (void)cancel;
- (void)dealloc;
- (void)handleThermalStateUpdate;
- (void)invalidateManager;
- (void)linkDidReceiveData:(id)a3 data:(id)a4;
- (void)linkIsAvailable:(id)a3;
- (void)linkIsReady:(id)a3;
- (void)linkIsSuspended:(id)a3;
- (void)linkIsUnavailable:(id)a3;
@end

@implementation NRLinkManagerWiFi

- (void)handleThermalStateUpdate
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  dispatch_assert_queue_V2(v4);

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v5 = qword_1002290B8;
  if (v5 && (v6 = v5[6], v5, v6 >= 0x1E))
  {
    if (self)
    {
      links = self->_links;
    }

    else
    {
      links = 0;
    }

    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(NSMutableSet *)links copy];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 subtype] == 102)
          {
            v14 = [v13 nrUUID];
            v15 = sub_100163A30(NRDLocalDevice, v14);

            if ((sub_100172D94(v15) & 1) == 0)
            {
              [v13 cancelWithReason:@"critical thermal state reached"];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {

    sub_100175E70(self);
  }
}

- (void)linkDidReceiveData:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self)
  {
    dispatch_assert_queue_V2(0);
    [0 reportEvent:2008];
    queue = 0;
    goto LABEL_10;
  }

  v8 = self->super._queue;
  dispatch_assert_queue_V2(v8);

  [(NRLinkManager *)self reportEvent:2008];
  if (self->super._state != 1004)
  {
    queue = self->super._queue;
LABEL_10:
    v10 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100176C74;
    block[3] = &unk_1001FD088;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(v10, block);

    goto LABEL_11;
  }

  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    _NRLogWithArgs();
  }

LABEL_11:
}

- (void)linkIsUnavailable:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    [(NRLinkManager *)self reportEvent:2007];
    if (self)
    {
      if (self->super._state == 1004)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs();
        }

        goto LABEL_14;
      }

      [(NSMutableSet *)self->_links removeObject:v4];
      v7 = self->super._queue;
    }

    else
    {
      [0 removeObject:v4];
      v7 = 0;
    }

    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100176EC8;
    block[3] = &unk_1001FD060;
    block[4] = self;
    v13 = v4;
    dispatch_async(v8, block);

    goto LABEL_14;
  }

  v9 = sub_1001762F4();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v11 = sub_1001762F4();
    _NRLogWithArgs();
  }

LABEL_14:
}

- (void)linkIsSuspended:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    [(NRLinkManager *)self reportEvent:2006];
    if (self)
    {
      if (self->super._state == 1004)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs();
        }

        goto LABEL_14;
      }

      v7 = self->super._queue;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001798F0;
    block[3] = &unk_1001FD060;
    v13 = v4;
    v14 = self;
    dispatch_async(v8, block);

    goto LABEL_14;
  }

  v9 = sub_1001762F4();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v11 = sub_1001762F4();
    _NRLogWithArgs();
  }

LABEL_14:
}

- (void)linkIsReady:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    [(NRLinkManager *)self reportEvent:2005];
    if (self)
    {
      if (self->super._state == 1004)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs();
        }

        goto LABEL_14;
      }

      v7 = self->super._queue;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100179BE4;
    block[3] = &unk_1001FD060;
    v13 = v4;
    v14 = self;
    dispatch_async(v8, block);

    goto LABEL_14;
  }

  v9 = sub_1001762F4();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v11 = sub_1001762F4();
    _NRLogWithArgs();
  }

LABEL_14:
}

- (void)linkIsAvailable:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    [(NRLinkManager *)self reportEvent:2004];
    if (self)
    {
      if (self->super._state == 1004)
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          _NRLogWithArgs();
        }

        goto LABEL_14;
      }

      [(NSMutableSet *)self->_links addObject:v4];
      v7 = self->super._queue;
    }

    else
    {
      [0 addObject:v4];
      v7 = 0;
    }

    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100179EF8;
    block[3] = &unk_1001FD060;
    v13 = v4;
    v14 = self;
    dispatch_async(v8, block);

    goto LABEL_14;
  }

  v9 = sub_1001762F4();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v11 = sub_1001762F4();
    _NRLogWithArgs();
  }

LABEL_14:
}

- (id)copyStatusString
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(NSMutableString);
  v6 = [(NRLinkManagerWiFi *)self copyName];
  [v5 appendFormat:@"\nName: %@", v6];

  if (self)
  {
    type = self->super._type;
    StringFromNRLinkType = createStringFromNRLinkType();
    [v5 appendFormat:@"\nLinkManager type: %@", StringFromNRLinkType];

    state = self->super._state;
    v10 = [NSString alloc];
    if (state > 1001)
    {
      switch(state)
      {
        case 0x3EA:
          v11 = [v10 initWithUTF8String:"Start"];
          goto LABEL_15;
        case 0x3EB:
          v11 = [v10 initWithUTF8String:"Ready"];
          goto LABEL_15;
        case 0x3EC:
          v11 = [v10 initWithUTF8String:"Cancelled"];
LABEL_15:
          v12 = v11;
          [v5 appendFormat:@"\nState: %@", v11];

          goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (state)
    {
      if (state == 1001)
      {
        v11 = [v10 initWithUTF8String:"Initial"];
        goto LABEL_15;
      }

LABEL_14:
      v11 = [v10 initWithFormat:@"Unknown(%u)", state];
      goto LABEL_15;
    }
  }

  else
  {
    v24 = createStringFromNRLinkType();
    [v5 appendFormat:@"\nLinkManager type: %@", v24];

    v10 = [NSString alloc];
  }

  v25 = [v10 initWithUTF8String:"Invalid"];
  [v5 appendFormat:@"\nState: %@", v25];

  if (!self)
  {
    [v5 appendFormat:@"\nLinks: %@", 0];
    [v5 appendFormat:@"\nWiFi Interface config: %@", 0];
    [v5 appendFormat:@"\nAWDL Interface config: %@", 0];
    [v5 appendFormat:@"\nNAN Interface config: %@", 0];
    [v5 appendFormat:@"\nIR Interface config: %@", 0];
    [v5 appendFormat:@"\nWiFi WoW Enabled: %s", "NO"];
    [v5 appendFormat:@"\nWiFi Client Type: %zd", 0];
    [v5 appendFormat:@"\nLocal WiFi Endpoint: %@", 0];
    [v5 appendFormat:@"\nLocal WiFi Signature: %@", 0];
    [v5 appendFormat:@"\nRemote WiFi Signature: %@", 0];
    [v5 appendFormat:@"\nRemote WiFi Endpoints: %@", 0];
    awdlInterfaceConfig = 0;
    goto LABEL_23;
  }

LABEL_16:
  [v5 appendFormat:@"\nLinks: %@", self->_links];
  [v5 appendFormat:@"\nWiFi Interface config: %@", self->_wifiInterfaceConfig];
  [v5 appendFormat:@"\nAWDL Interface config: %@", self->_awdlInterfaceConfig];
  [v5 appendFormat:@"\nNAN Interface config: %@", self->_nanInterfaceConfig];
  [v5 appendFormat:@"\nIR Interface config: %@", self->_irInterfaceConfig];
  if (self->_wowActivity)
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  [v5 appendFormat:@"\nWiFi WoW Enabled: %s", v13];
  [v5 appendFormat:@"\nWiFi Client Type: %zd", self->_currentWiFiClientType];
  [v5 appendFormat:@"\nLocal WiFi Endpoint: %@", self->_localWiFiEndpoint];
  [v5 appendFormat:@"\nLocal WiFi Signature: %@", self->_localWiFiSignature];
  [v5 appendFormat:@"\nRemote WiFi Signature: %@", self->_peerWiFiSignature];
  wifiInterfaceConfig = self->_wifiInterfaceConfig;
  if (wifiInterfaceConfig)
  {
    wifiInterfaceConfig = wifiInterfaceConfig->_peerEndpointDictionary;
  }

  v15 = wifiInterfaceConfig;
  [v5 appendFormat:@"\nRemote WiFi Endpoints: %@", v15];

  awdlInterfaceConfig = self->_awdlInterfaceConfig;
  if (awdlInterfaceConfig)
  {
    awdlInterfaceConfig = awdlInterfaceConfig->_peerEndpointDictionary;
  }

LABEL_23:
  v17 = awdlInterfaceConfig;
  [v5 appendFormat:@"\nRemote AWDL EndpointDict: %@", v17];

  if (self)
  {
    nanInterfaceConfig = self->_nanInterfaceConfig;
    if (nanInterfaceConfig)
    {
      nanInterfaceConfig = nanInterfaceConfig->_peerEndpointDictionary;
    }

    v19 = nanInterfaceConfig;
    [v5 appendFormat:@"\nRemote NAN EndpointDict: %@", v19];

    irInterfaceConfig = self->_irInterfaceConfig;
    if (irInterfaceConfig)
    {
      irInterfaceConfig = irInterfaceConfig->_peerEndpointDictionary;
    }
  }

  else
  {
    [v5 appendFormat:@"\nRemote NAN EndpointDict: %@", 0];
    irInterfaceConfig = 0;
  }

  v21 = irInterfaceConfig;
  [v5 appendFormat:@"\nRemote IR EndpointDict: %@", v21];

  if (self)
  {
    [v5 appendFormat:@"\nPrefer WiFi asserts: %d", self->_preferWiFiAsserts];
    clearedPreferWiFiAssertCounts = self->_clearedPreferWiFiAssertCounts;
  }

  else
  {
    [v5 appendFormat:@"\nPrefer WiFi asserts: %d", 0];
    clearedPreferWiFiAssertCounts = 0;
  }

  [v5 appendFormat:@"\nCleared Prefer WiFi asserts: %d", clearedPreferWiFiAssertCounts];
  return v5;
}

- (void)dealloc
{
  if (qword_1002294A8 != -1)
  {
    dispatch_once(&qword_1002294A8, &stru_1001FD210);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002294A8 != -1)
    {
      dispatch_once(&qword_1002294A8, &stru_1001FD210);
    }

    v3 = qword_1002294A0;
    v6 = 297;
    v7 = [(NRLinkManagerWiFi *)self copyName];
    v4 = "";
    v5 = "[NRLinkManagerWiFi dealloc]";
    _NRLogWithArgs();
  }

  [(NRLinkManagerWiFi *)self invalidateManager:v4];
  v8.receiver = self;
  v8.super_class = NRLinkManagerWiFi;
  [(NRLinkManagerWiFi *)&v8 dealloc];
}

- (void)invalidateManager
{
  v20.receiver = self;
  v20.super_class = NRLinkManagerWiFi;
  [(NRLinkManager *)&v20 invalidateManager];
  if (self)
  {
    scdynamicStoreRef = self->_scdynamicStoreRef;
    if (scdynamicStoreRef)
    {
      SCDynamicStoreSetDispatchQueue(scdynamicStoreRef, 0);
      v4 = self->_scdynamicStoreRef;
      if (v4)
      {
        CFRelease(v4);
        self->_scdynamicStoreRef = 0;
      }
    }

    coreWiFiHandle = self->_coreWiFiHandle;
    if (coreWiFiHandle)
    {
      v6 = coreWiFiHandle;
      if (qword_1002294B0 != -1)
      {
        v17 = v6;
        dispatch_once(&qword_1002294B0, &stru_1001FD230);
        v6 = v17;
      }

      v7 = qword_1002294B8;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10017A858;
      block[3] = &unk_1001FD3C8;
      v8 = v6;
      v19 = v8;
      dispatch_async(v7, block);
      v9 = self->_coreWiFiHandle;
      self->_coreWiFiHandle = 0;

      wowActivity = self->_wowActivity;
      self->_wowActivity = 0;

      backgroundActivity = self->_backgroundActivity;
      self->_backgroundActivity = 0;

      directToCloudActivity = self->_directToCloudActivity;
      self->_directToCloudActivity = 0;
    }

    sub_10017A860(self, 0);
    wifiAutojoinClients = self->_wifiAutojoinClients;
    self->_wifiAutojoinClients = 0;

    assertionReasonDictionary = self->_assertionReasonDictionary;
    self->_assertionReasonDictionary = 0;

    assertionClientDictionary = self->_assertionClientDictionary;
    self->_assertionClientDictionary = 0;

    lastAssertionReport = self->_lastAssertionReport;
    self->_lastAssertionReport = 0;

    sub_100178760(self);
  }

  else
  {
    sub_10017A860(0, 0);
  }
}

- (void)cancel
{
  if (self)
  {
    v3 = self->super._queue;
    dispatch_assert_queue_V2(v3);

    [(NRLinkManager *)self reportEvent:2003];
    if (self->super._state == 1004)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        _NRLogWithArgs();
      }

      return;
    }

    self->super._state = 1004;
    [(NRLinkManagerWiFi *)self invalidateManager];
    links = self->_links;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    [0 reportEvent:2003];
    [0 invalidateManager];
    links = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableSet *)links copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) cancelWithReason:@"Cancelling all links"];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self)
  {
    v10 = self->_links;
  }

  else
  {
    v10 = 0;
  }

  [(NSMutableSet *)v10 removeAllObjects];
}

@end
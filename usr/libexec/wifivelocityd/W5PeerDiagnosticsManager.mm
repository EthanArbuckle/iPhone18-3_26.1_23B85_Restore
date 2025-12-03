@interface W5PeerDiagnosticsManager
- (W5PeerDiagnosticsManager)initWithStatusManager:(id)manager;
- (id)gatherPeerDiagnostics;
- (id)gatherPeerTypes;
- (id)getDPSSummary;
- (id)getLQMSummary;
- (id)getWiFiStatus;
- (id)localDiagnostics;
- (int64_t)configureDiscoveryClientAndActivate;
- (void)beginPeerDiscovery;
- (void)dealloc;
- (void)invalidateDiscoveryClient;
- (void)registerCallbacksAndActivate;
- (void)registerRequestHandler;
- (void)requestDiagnostics:(id)diagnostics completionBlock:(id)block;
@end

@implementation W5PeerDiagnosticsManager

- (W5PeerDiagnosticsManager)initWithStatusManager:(id)manager
{
  self->_discoveryClientStatus = 0;
  v9.receiver = self;
  v9.super_class = W5PeerDiagnosticsManager;
  v4 = [(W5PeerDiagnosticsManager *)&v9 init];
  v5 = v4;
  if (!manager || !v4 || (v4->_status = manager, v6 = dispatch_queue_create("com.apple.wifid.peerdiagnosticsmanager", 0), (v5->_queue = v6) == 0))
  {

    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[W5PeerDiagnosticsManager initWithStatusManager:]";
      v12 = 2080;
      v13 = "W5PeerDiagnosticsManager.m";
      v14 = 1024;
      v15 = 95;
      _os_log_send_and_compose_impl();
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  self->_cachedPeerTypesResult = 0;

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = W5PeerDiagnosticsManager;
  [(W5PeerDiagnosticsManager *)&v4 dealloc];
}

- (void)invalidateDiscoveryClient
{
  [(RPCompanionLinkClient *)self->_discoveryClient invalidate];

  objc_sync_enter(self);
  self->_discoveryClientStatus = 0;
  objc_sync_exit(self);
  self->_discoveryClient = 0;
}

- (int64_t)configureDiscoveryClientAndActivate
{
  objc_sync_enter(self);
  if (self->_discoveryClientStatus)
  {
    v3 = sub_100098A04();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[W5PeerDiagnosticsManager configureDiscoveryClientAndActivate]";
      v13 = 2080;
      v14 = "W5PeerDiagnosticsManager.m";
      v15 = 1024;
      v16 = 127;
      discoveryClientStatus = 1;
      _os_log_send_and_compose_impl();
    }

    else
    {
      discoveryClientStatus = 1;
    }
  }

  else
  {
    objc_sync_exit(self);
    v5 = objc_alloc_init(RPCompanionLinkClient);
    self->_discoveryClient = v5;
    if (v5)
    {
      [(RPCompanionLinkClient *)v5 setInvalidationHandler:&stru_1000E3780];
      [(RPCompanionLinkClient *)self->_discoveryClient setDeviceFoundHandler:&stru_1000E37A0];
      [(RPCompanionLinkClient *)self->_discoveryClient setDeviceLostHandler:&stru_1000E37C0];
      [(RPCompanionLinkClient *)self->_discoveryClient setDispatchQueue:self->_queue];
      [(RPCompanionLinkClient *)self->_discoveryClient setControlFlags:[(RPCompanionLinkClient *)self->_discoveryClient controlFlags]| 0x109102];
      objc_sync_enter(self);
      self->_discoveryClientStatus = 2;
      objc_sync_exit(self);
      v6 = dispatch_semaphore_create(0);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009B304;
      block[3] = &unk_1000E1C98;
      block[4] = self;
      block[5] = v6;
      dispatch_async(queue, block);
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v6);
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = "[W5PeerDiagnosticsManager configureDiscoveryClientAndActivate]";
        v13 = 2080;
        v14 = "W5PeerDiagnosticsManager.m";
        v15 = 1024;
        v16 = 169;
        _os_log_send_and_compose_impl();
      }
    }

    objc_sync_enter(self);
    discoveryClientStatus = self->_discoveryClientStatus;
  }

  objc_sync_exit(self);
  return discoveryClientStatus;
}

- (id)gatherPeerTypes
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  objc_sync_enter(self);
  cachedPeerTypesResult = self->_cachedPeerTypesResult;
  objc_sync_exit(self);
  return cachedPeerTypesResult;
}

- (void)beginPeerDiscovery
{
  if (_os_feature_enabled_impl())
  {
    if ([(W5PeerDiagnosticsManager *)self configureDiscoveryClientAndActivate]== 2)
    {
      v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
      v4 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10009B5E4;
      v5[3] = &unk_1000E1C98;
      v5[4] = v3;
      v5[5] = self;
      dispatch_source_set_event_handler(v3, v5);
      dispatch_activate(v3);
    }
  }
}

- (void)registerCallbacksAndActivate
{
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009BC38;
  v5[3] = &unk_1000E1C98;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(queue, v5);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v3);
}

- (void)registerRequestHandler
{
  discoveryClient = self->_discoveryClient;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009BE48;
  v3[3] = &unk_1000E3810;
  v3[4] = self;
  [(RPCompanionLinkClient *)discoveryClient registerRequestID:@"com.apple.proximity.peerdiagnosticslink" options:0 handler:v3];
}

- (id)getWiFiStatus
{
  v3 = objc_alloc_init(NSMutableDictionary);
  wifiStatus = [(W5StatusManager *)self->_status wifiStatus];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", objc_msgSend(wifiStatus, "rssi")), @"RSSI"}];
  [v3 setObject:objc_msgSend(wifiStatus forKeyedSubscript:{"macAddress"), @"MAC"}];
  [v3 setObject:objc_msgSend(wifiStatus forKeyedSubscript:{"ssidString"), @"SSID"}];
  [v3 setObject:objc_msgSend(wifiStatus forKeyedSubscript:{"bssid"), @"BSSID"}];
  [wifiStatus channel];
  [v3 setObject:W5DescriptionForChannel() forKeyedSubscript:@"Channel"];
  return v3;
}

- (id)getLQMSummary
{
  if ([-[CWFInterface LQMSummary](-[W5StatusManager corewifi](self->_status "corewifi")])
  {

    return _CWFDebugDescriptionForLQMSummary();
  }

  else
  {
    v2 = sub_100098A04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    return 0;
  }
}

- (id)getDPSSummary
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_10009C3D0;
  v17 = sub_10009C3E0;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (sub_10009C3EC())
  {
    v3 = dispatch_semaphore_create(0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009C4D8;
    v8[3] = &unk_1000E3838;
    v8[4] = v3;
    v8[5] = self;
    v8[6] = &v9;
    v8[7] = &v13;
    [objc_msgSend(sub_10009C3EC() sharedClientWithIdentifier:{@"wifivelocityd", "getDpsStatsandReply:", v8}];
    v4 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      objc_sync_enter(self);
      *(v10 + 24) = 1;
      objc_sync_exit(self);
      v5 = sub_100098A04();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315906;
        v20 = "[W5PeerDiagnosticsManager getDPSSummary]";
        v21 = 2080;
        v22 = "W5PeerDiagnosticsManager.m";
        v23 = 1024;
        v24 = 350;
        v25 = 1024;
        v26 = 2;
        _os_log_send_and_compose_impl();
      }
    }

    dispatch_release(v3);
  }

  v6 = v14[5];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

- (id)localDiagnostics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:objc_msgSend(-[RPCompanionLinkClient localDevice](self->_discoveryClient forKeyedSubscript:{"localDevice"), "model"), @"DeviceModel"}];
  [v3 setObject:-[W5PeerDiagnosticsManager getWiFiStatus](self forKeyedSubscript:{"getWiFiStatus"), @"WiFiStatus"}];
  [v3 setObject:-[W5PeerDiagnosticsManager getDPSSummary](self forKeyedSubscript:{"getDPSSummary"), @"DPSSummary"}];
  [v3 setObject:-[W5PeerDiagnosticsManager getLQMSummary](self forKeyedSubscript:{"getLQMSummary"), @"LQMSummary"}];
  return v3;
}

- (void)requestDiagnostics:(id)diagnostics completionBlock:(id)block
{
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[W5PeerDiagnosticsManager requestDiagnostics:completionBlock:]";
    v12 = 2080;
    v13 = "W5PeerDiagnosticsManager.m";
    v14 = 1024;
    v15 = 372;
    v16 = 2114;
    diagnosticsCopy = diagnostics;
    _os_log_send_and_compose_impl();
  }

  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setControlFlags:{objc_msgSend(v7, "controlFlags") | 0x8102}];
  [v7 setDestinationDevice:diagnostics];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009C8DC;
  v9[3] = &unk_1000E1CE8;
  v9[4] = diagnostics;
  [v7 setInvalidationHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009C9CC;
  v8[3] = &unk_1000E1E38;
  v8[4] = v7;
  v8[5] = block;
  [v7 activateWithCompletion:v8];
}

- (id)gatherPeerDiagnostics
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v24 = objc_alloc_init(NSMutableArray);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if ([-[RPCompanionLinkClient activeDevices](self->_discoveryClient "activeDevices")])
  {
    v3 = dispatch_group_create();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    activeDevices = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
    v5 = [activeDevices countByEnumeratingWithState:&v27 objects:v47 count:16];
    v6 = 0;
    if (v5)
    {
      v7 = *v28;
      do
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(activeDevices);
          }

          v9 = *(*(&v27 + 1) + 8 * v8);
          if (![v9 model] || (objc_msgSend(objc_msgSend(v9, "model"), "containsString:", @"iPhone") & 1) != 0 || (objc_msgSend(objc_msgSend(v9, "model"), "containsString:", @"iPad") & 1) != 0 || (objc_msgSend(objc_msgSend(v9, "model"), "containsString:", @"Mac") & 1) != 0)
          {
            dispatch_group_enter(v3);
            ++v6;
            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10009D144;
            block[3] = &unk_1000E38B0;
            block[4] = self;
            block[5] = v9;
            block[7] = v3;
            block[8] = &v31;
            block[6] = v24;
            dispatch_async(queue, block);
          }

          else
          {
            v11 = sub_100098A04();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 136315906;
              v36 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
              v37 = 2080;
              v38 = "W5PeerDiagnosticsManager.m";
              v39 = 1024;
              v40 = 434;
              v41 = 2114;
              v42 = v9;
              LODWORD(v23) = 38;
              v22 = &v35;
              _os_log_send_and_compose_impl();
            }
          }

          v8 = v8 + 1;
        }

        while (v5 != v8);
        v12 = [activeDevices countByEnumeratingWithState:&v27 objects:v47 count:16];
        v5 = v12;
      }

      while (v12);
    }

    dispatch_group_enter(v3);
    v13 = self->_queue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009D3D8;
    v25[3] = &unk_1000E1948;
    v25[4] = self;
    v25[5] = v24;
    v25[6] = v3;
    dispatch_async(v13, v25);
    v14 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v3, v14))
    {
      v15 = sub_100098A04();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315906;
        v36 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
        v37 = 2080;
        v38 = "W5PeerDiagnosticsManager.m";
        v39 = 1024;
        v40 = 473;
        v41 = 1024;
        LODWORD(v42) = 5;
        _os_log_send_and_compose_impl();
      }
    }

    if (v3)
    {
      dispatch_release(v3);
    }

    v16 = sub_100098A04();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v17 = [-[RPCompanionLinkClient activeDevices](self->_discoveryClient "activeDevices")];
    v18 = v32[3];
    v35 = 136316418;
    v36 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
    v37 = 2080;
    v38 = "W5PeerDiagnosticsManager.m";
    v39 = 1024;
    v40 = 478;
    v41 = 2048;
    v42 = v17;
    v43 = 2048;
    v44 = v6;
    v45 = 2048;
    v46 = v18;
  }

  else
  {
    v21 = sub_100098A04();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = 136315650;
    v36 = "[W5PeerDiagnosticsManager gatherPeerDiagnostics]";
    v37 = 2080;
    v38 = "W5PeerDiagnosticsManager.m";
    v39 = 1024;
    v40 = 424;
  }

  _os_log_send_and_compose_impl();
LABEL_26:
  objc_sync_enter(self);
  v19 = [v24 copy];
  objc_sync_exit(self);
  _Block_object_dispose(&v31, 8);
  return v19;
}

@end
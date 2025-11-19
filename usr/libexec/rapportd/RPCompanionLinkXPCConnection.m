@interface RPCompanionLinkXPCConnection
- (BOOL)_checkRSSIThresholdForDevice:(id)a3;
- (BOOL)_connectionHasActiveSessions:(id)a3;
- (BOOL)_entitledAndReturnError:(id *)a3;
- (BOOL)reportFoundDevice:(id)a3 outReason:(id *)a4;
- (RPCompanionLinkXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4;
- (id)_findMatchingDevice:(id)a3 inDeviceDictionary:(id)a4;
- (id)_updateOptionsWithProcessInfo:(id)a3;
- (id)devicesForClient:(id)a3;
- (void)_invalidateConnectionInList:(id)a3 listDescription:(id)a4;
- (void)authCompletion:(id)a3;
- (void)companionLinkActivateAssertion:(id)a3 completion:(id)a4;
- (void)companionLinkActivateClient:(id)a3 completion:(id)a4;
- (void)companionLinkCreateDeviceToEndpointMappingForDeviceID:(id)a3 completion:(id)a4;
- (void)companionLinkDeregisterEventID:(id)a3 completion:(id)a4;
- (void)companionLinkDeregisterProfileID:(id)a3 completion:(id)a4;
- (void)companionLinkDeregisterRequestID:(id)a3 completion:(id)a4;
- (void)companionLinkRegisterEventID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)companionLinkRegisterProfileID:(id)a3 completion:(id)a4;
- (void)companionLinkRegisterRequestID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)companionLinkRemoveLocalDeviceAsContextCollector:(id)a3;
- (void)companionLinkSendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 nwActivityToken:(id)a7 completion:(id)a8;
- (void)companionLinkSendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 nwActivityToken:(id)a7 responseHandler:(id)a8;
- (void)companionLinkSetLocalDeviceAsContextCollector:(id)a3;
- (void)companionLinkTryPassword:(id)a3;
- (void)companionLinkUpdateClient:(id)a3;
- (void)connectionInvalidated;
- (void)connectionInvalidatedCore;
- (void)handleDisconnect;
- (void)receivedEventID:(id)a3 event:(id)a4 options:(id)a5;
- (void)receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)reportLostDevice:(id)a3;
- (void)updateErrorFlags:(unint64_t)a3;
- (void)xpcDiscoveryActivate:(id)a3 completion:(id)a4;
- (void)xpcDiscoveryUpdate:(id)a3;
- (void)xpcServerActivate:(id)a3 completion:(id)a4;
- (void)xpcServerUpdate:(id)a3;
- (void)xpcSessionActivate:(id)a3 completion:(id)a4;
@end

@implementation RPCompanionLinkXPCConnection

- (void)connectionInvalidated
{
  v3 = self->_session;
  if (v3)
  {
    v4 = v3;
    daemon = self->_daemon;
    v6 = [(RPSession *)v3 cnx];
    xpcID = self->_xpcID;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100040114;
    v8[3] = &unk_1001AAA40;
    v8[4] = v4;
    v8[5] = self;
    [(RPCompanionLinkDaemon *)daemon sessionStopSend:v6 session:v4 xpcID:xpcID completion:v8];
  }

  else
  {

    [(RPCompanionLinkXPCConnection *)self connectionInvalidatedCore];
  }
}

- (void)connectionInvalidatedCore
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3228 <= 20 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D018(self);
  }

  if (self->_client)
  {
    [(RPCompanionLinkXPCConnection *)self _invalidateConnectionInList:self->_daemon->_tcpClientConnections listDescription:@"tcp client connections"];
    [(RPCompanionLinkXPCConnection *)self _invalidateConnectionInList:self->_daemon->_tcpOnDemandClientConnections listDescription:@"tcp on-demand client connections"];
    [(RPCompanionLinkXPCConnection *)self _invalidateConnectionInList:self->_daemon->_bleClientConnections listDescription:@"ble client connections"];
    netCnx = self->_netCnx;
    self->_netCnx = 0;

    [(RPCompanionLinkClient *)self->_client invalidate];
    client = self->_client;
    self->_client = 0;
  }

  discoveryClient = self->_discoveryClient;
  if (discoveryClient)
  {
    if (dword_1001D3228 <= 30)
    {
      if (dword_1001D3228 != -1 || (v6 = _LogCategory_Initialize(), discoveryClient = self->_discoveryClient, v6))
      {
        v29 = discoveryClient;
        v30 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
        LogPrintF();
        discoveryClient = self->_discoveryClient;
      }
    }

    [(RPDiscovery *)discoveryClient invalidate:v29];
    v7 = self->_discoveryClient;
    self->_discoveryClient = 0;
  }

  server = self->_server;
  if (server)
  {
    v9 = server;
    [(RPServer *)v9 invalidate];
    v10 = [(RPCompanionLinkDaemon *)self->_daemon activeServers];
    [v10 removeObject:v9];

    v11 = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
    [v11 setServersChangedState:6];

    v12 = self->_server;
    self->_server = 0;

    [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCServerChange];
  }

  session = self->_session;
  if (session)
  {
    v14 = session;
    [(RPSession *)v14 invalidate];
    v15 = self->_session;
    self->_session = 0;
  }

  discoveryTimer = self->_discoveryTimer;
  if (discoveryTimer)
  {
    v17 = discoveryTimer;
    dispatch_source_cancel(v17);
    v18 = self->_discoveryTimer;
    self->_discoveryTimer = 0;
  }

  *&self->_needsCLink = 0;
  if ([(RPConnection *)self->_netCnx clientMode])
  {
    [(RPConnection *)self->_netCnx invalidate];
  }

  v19 = self->_netCnx;
  self->_netCnx = 0;

  registeredEvents = self->_registeredEvents;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100040528;
  v35[3] = &unk_1001ABE70;
  v35[4] = self;
  [(NSMutableDictionary *)registeredEvents enumerateKeysAndObjectsUsingBlock:v35];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = self->_registeredProfileIDs;
  v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      v25 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * v25);
        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100115088();
        }

        [(NSMutableSet *)self->_daemon->_registeredProfileIDs removeObject:v26];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v27 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
      v23 = v27;
    }

    while (v27);
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  [(NSMutableSet *)self->_registeredProfileIDs removeAllObjects];
  osTransaction = self->_osTransaction;
  self->_osTransaction = 0;

  if (self->_isContextCollector)
  {
    [(RPCompanionLinkXPCConnection *)self companionLinkRemoveLocalDeviceAsContextCollector:&stru_1001ABE90];
  }
}

- (RPCompanionLinkXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = RPCompanionLinkXPCConnection;
  v9 = [(RPCompanionLinkXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, a3);
    v10->_startTicks = mach_absolute_time();
    objc_storeStrong(&v10->_xpcCnx, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)_connectionHasActiveSessions:(id)a3
{
  v4 = a3;
  v5 = [(RPCompanionLinkDaemon *)self->_daemon _sessionsActiveOnConnection:v4 xpcConnection:self];
  if (v5 >= 1)
  {
    v6 = [(RPConnection *)v4 client];
    client = self->_client;

    if (v6 == client)
    {
      if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011501C(v4);
      }

      [(RPConnection *)v4 setClient:0];
      netCnx = self->_netCnx;
      if (netCnx == v4)
      {
        self->_netCnx = 0;
      }
    }
  }

  return v5 > 0;
}

- (void)_invalidateConnectionInList:(id)a3 listDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RPCompanionLinkDaemon *)self->_daemon dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000029CC;
  v17 = sub_10000317C;
  v18 = +[NSMutableArray array];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100040450;
  v12[3] = &unk_1001ABE48;
  v12[4] = self;
  v12[5] = &v13;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
  if ([v14[5] count])
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v11 = v14[5];
      LogPrintF();
      [v6 removeObjectsForKeys:{v14[5], v7, v11}];
    }

    else
    {
      [v6 removeObjectsForKeys:{v14[5], v9, v10}];
    }
  }

  _Block_object_dispose(&v13, 8);
}

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.CompanionLink"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100115108(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = RPErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (id)_updateOptionsWithProcessInfo:(id)a3
{
  v4 = [a3 mutableCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
  [v4 setObject:v5 forKeyedSubscript:@"_rP"];

  v6 = self->_netCnx;
  v7 = v6;
  if (v6 && ([(RPConnection *)v6 controlFlags]& 0x200) != 0 && ([(RPConnection *)v7 containsInUseProcess:[(NSXPCConnection *)self->_xpcCnx processIdentifier]]& 1) == 0)
  {
    [(RPConnection *)v7 addInUseProcess:[(NSXPCConnection *)self->_xpcCnx processIdentifier]];
    v8 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
    [v4 setObject:v8 forKeyedSubscript:@"inUseProcess"];
  }

  v9 = v4;
  return v4;
}

- (void)authCompletion:(id)a3
{
  v5 = a3;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100115158();
  }

  v4 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [v4 companionLinkAuthCompleted:v5];
}

- (void)handleDisconnect
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100115198();
  }

  v3 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [v3 companionLinkHandleDisconnect];
}

- (id)devicesForClient:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 destinationDevice];

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    activeDevices = self->_daemon->_activeDevices;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100040CA0;
    v38[3] = &unk_1001ABEB8;
    v9 = v4;
    v39 = v9;
    v40 = self;
    v41 = v5;
    [(NSMutableDictionary *)activeDevices enumerateKeysAndObjectsUsingBlock:v38];
    if ([v9 flags])
    {
      unauthDevices = self->_daemon->_unauthDevices;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100040D28;
      v34[3] = &unk_1001ABEB8;
      v35 = v9;
      v36 = self;
      v37 = v5;
      [(NSMutableDictionary *)unauthDevices enumerateKeysAndObjectsUsingBlock:v34];
    }

    if (([v9 controlFlags] & 0x2104000002) != 0)
    {
      bleDevices = self->_daemon->_bleDevices;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100040DB0;
      v30[3] = &unk_1001ABEB8;
      v12 = v9;
      v31 = v12;
      v32 = self;
      v33 = v5;
      [(NSMutableDictionary *)bleDevices enumerateKeysAndObjectsUsingBlock:v30];
      nearbyInfoV2Devices = self->_daemon->_nearbyInfoV2Devices;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100040E38;
      v26[3] = &unk_1001ABEB8;
      v27 = v12;
      v28 = self;
      v29 = v5;
      [(NSMutableDictionary *)nearbyInfoV2Devices enumerateKeysAndObjectsUsingBlock:v26];
    }

    if (([v9 controlFlags] & 0x400000000) != 0 && (objc_msgSend(v9, "flags") & 0x2000) != 0)
    {
      homeHubDevices = self->_daemon->_homeHubDevices;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100040EC0;
      v22[3] = &unk_1001ABEB8;
      v23 = v9;
      v24 = self;
      v25 = v5;
      [(NSMutableDictionary *)homeHubDevices enumerateKeysAndObjectsUsingBlock:v22];
    }

    if (([v9 controlFlags] & 0x1000000000000) != 0)
    {
      authenticatedAWDLPairingModeDevices = self->_daemon->_authenticatedAWDLPairingModeDevices;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100040F48;
      v18[3] = &unk_1001ABEB8;
      v19 = v9;
      v20 = self;
      v21 = v5;
      [(NSMutableDictionary *)authenticatedAWDLPairingModeDevices enumerateKeysAndObjectsUsingBlock:v18];
    }

    v16 = v5;
  }

  return v5;
}

- (void)receivedEventID:(id)a3 event:(id)a4 options:(id)a5
{
  v22 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[RPMetrics sharedMetrics];
  [v10 logReceivedMessageType:1 identifier:v22 options:v8 appID:self->_appID ctx:&self->_metricsCtx];

  v11 = NSDictionaryGetNSNumber();
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedLongLongValue];
    if (v13 >> 23)
    {
      v14 = v13;
      v15 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
      v16 = [NSString stringWithFormat:@"len:%zu, check:%d", v14, 0x7FFFFFLL];
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v20 = v22;
        v21 = v15;
        v19 = v14;
        LogPrintF();
      }

      v17 = [RPAutoBugCapture sharedReporter:v19];
      [v17 reportIssueOfType:4 issueContext:@"receivedEventID" processName:v15 triggerThresholdValues:v16];
    }
  }

  v18 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [v18 companionLinkReceivedEventID:v22 event:v9 options:v8];
}

- (void)receivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = +[RPMetrics sharedMetrics];
  [v14 logReceivedMessageType:2 identifier:v10 options:v11 appID:self->_appID ctx:&self->_metricsCtx];

  v15 = NSDictionaryGetNSNumber();
  v16 = v15;
  if (v15)
  {
    v17 = [v15 unsignedLongLongValue];
    if (v17 >> 23)
    {
      v18 = v17;
      v19 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
      v20 = [NSString stringWithFormat:@"len:%zu, check:%d", v18, 0x7FFFFFLL];
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v26 = v10;
        v27 = v19;
        v25 = v18;
        LogPrintF();
      }

      v21 = [RPAutoBugCapture sharedReporter:v25];
      [v21 reportIssueOfType:4 issueContext:@"receivedRequestID" processName:v19 triggerThresholdValues:v20];
    }
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000414E8;
  v28[3] = &unk_1001ABEE0;
  v28[4] = self;
  v29 = v12;
  v22 = v12;
  v23 = objc_retainBlock(v28);
  v24 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [v24 companionLinkReceivedRequestID:v10 request:v13 options:v11 responseHandler:v23];
}

- (BOOL)_checkRSSIThresholdForDevice:(id)a3
{
  v4 = a3;
  if ([(RPCompanionLinkClient *)self->_client rssiThreshold])
  {
    v5 = [(RPCompanionLinkClient *)self->_client rssiThreshold];
  }

  else
  {
    v5 = -60;
  }

  v6 = [v4 bleDevice];
  v7 = [v6 bleDevice];
  v8 = [v7 rssi];

  if (v8)
  {
    v9 = v8 < v5;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;

  return v10;
}

- (BOOL)reportFoundDevice:(id)a3 outReason:(id *)a4
{
  v6 = a3;
  client = self->_client;
  v8 = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
  LOBYTE(client) = [(RPCompanionLinkClient *)client shouldReportDevice:v6 toXPCConnectionWithLaunchInstanceID:v8 outReason:a4];

  if ((client & 1) == 0)
  {
    v18 = 0;
    if (!a4 || self->_client)
    {
      goto LABEL_22;
    }

    v18 = 0;
    v19 = @"nilClientCnx";
    goto LABEL_16;
  }

  if (![(RPCompanionLinkXPCConnection *)self _checkRSSIThresholdForDevice:v6])
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v19 = @"RSSI.tooLow";
LABEL_16:
    *a4 = v19;
    goto LABEL_22;
  }

  v9 = [v6 identifier];
  if (!v9)
  {
    v9 = [v6 publicIdentifier];
    if (!v9)
    {
      if (a4)
      {
        v18 = 0;
        v19 = @"missingDeviceIdentifier";
        goto LABEL_16;
      }

LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }
  }

  v10 = v9;
  v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v9];

  devices = self->_devices;
  if (!devices)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = self->_devices;
    self->_devices = v13;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:v6 forKeyedSubscript:v10];
  v15 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
  if (v15 == getpid())
  {
    [v6 setEncodeSensitiveProperties:{-[RPCompanionLinkClient encodeSensitiveProperties](self->_client, "encodeSensitiveProperties")}];
  }

  v16 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  v17 = v16;
  if (v11)
  {
    [v16 companionLinkChangedDevice:v6 changes:2];
  }

  else
  {
    [v16 companionLinkFoundDevice:v6];
  }

  v18 = 1;
LABEL_22:

  return v18;
}

- (void)reportLostDevice:(id)a3
{
  v10 = a3;
  v4 = [v10 identifier];
  if (v4 || ([v10 publicIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];

    if (v5)
    {
      client = self->_client;
      v7 = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
      LODWORD(client) = [(RPCompanionLinkClient *)client shouldReportDevice:v10 toXPCConnectionWithLaunchInstanceID:v7 outReason:0];

      devices = self->_devices;
      if (client)
      {
        [(NSMutableDictionary *)devices setObject:v10 forKeyedSubscript:v4];
        v9 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [v9 companionLinkChangedDevice:v10 changes:2];
      }

      else
      {
        [(NSMutableDictionary *)devices setObject:0 forKeyedSubscript:v4];
        v9 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [v9 companionLinkLostDevice:v10];
      }
    }
  }
}

- (void)updateErrorFlags:(unint64_t)a3
{
  v5 = self->_client;
  if (v5)
  {
    v14 = v5;
    v6 = +[RPDaemon sharedDaemon];
    v7 = [v6 errorFlags] | a3;

    v8 = [(RPCompanionLinkClient *)v14 errorFlags];
    v5 = v14;
    if (v8 != v7)
    {
      if (dword_1001D3228 <= 20)
      {
        if (dword_1001D3228 != -1 || (v9 = _LogCategory_Initialize(), v5 = v14, v9))
        {
          v12 = &unk_100147FE5;
          appID = self->_appID;
          v11 = v7;
          LogPrintF();
          v5 = v14;
        }
      }

      [(RPCompanionLinkClient *)v5 setErrorFlags:v7, v11, v12, appID];
      v10 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [v10 companionLinkUpdateErrorFlags:a3];

      v5 = v14;
    }
  }
}

- (void)companionLinkActivateAssertion:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)companionLinkActivateClient:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = sub_1000029CC;
  v128 = sub_10000317C;
  v129 = 0;
  v119[0] = _NSConcreteStackBlock;
  v119[1] = 3221225472;
  v119[2] = sub_100042BCC;
  v119[3] = &unk_1001ABF08;
  v123 = &v124;
  v93 = v7;
  v120 = v93;
  v121 = self;
  v90 = v8;
  v122 = v90;
  v89 = objc_retainBlock(v119);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = (v125 + 5);
  obj = v125[5];
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (!v125[5])
  {
    if (self->_client)
    {
      v76 = RPErrorF();
      v77 = v125[5];
      v125[5] = v76;

      goto LABEL_102;
    }

    if (!self->_appID)
    {
      v10 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"application-identifier"];
      appID = self->_appID;
      self->_appID = v10;
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v82 = v93;
      v85 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF();
    }

    [v93 setDispatchQueue:{self->_dispatchQueue, v82, v85}];
    objc_storeStrong(&self->_client, a3);
    v91 = [v93 controlFlags];
    if (sub_10000329C())
    {
      v91 = v91 & 0xFFFFFDFFFF9DFEFFLL | 0x20000400000;
      if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v86 = v91;
        v88 = &unk_100147BEC;
        v83 = [v93 clientID];
        LogPrintF();
      }
    }

    location = 0;
    v12 = [v93 destinationDevice];
    v92 = v12;
    if (!v12)
    {
      goto LABEL_48;
    }

    v13 = [v12 identifier];
    if (v13)
    {
      v94 = v13;
    }

    else
    {
      v94 = [v92 publicIdentifier];

      if (!v94)
      {
        v79 = RPErrorF();
        v95 = v125[5];
        v125[5] = v79;

        goto LABEL_101;
      }
    }

    if (([v92 statusFlags] & 0x10000000) != 0)
    {
      [v93 setControlFlags:{objc_msgSend(v93, "controlFlags") | 0x400000000}];
      [v93 setFlags:{objc_msgSend(v93, "flags") | 0x2000}];
      v91 = [v93 controlFlags];
    }

    v14 = [(RPCompanionLinkDaemon *)self->_daemon findConnectedDeviceForIdentifier:v94 controlFlags:v91 cnx:&location];
    if (!v14)
    {
      v15 = [v92 idsDeviceIdentifier];
      v16 = v15 == 0;

      if (v16)
      {
        v14 = 0;
      }

      else
      {
        daemon = self->_daemon;
        v18 = [v92 idsDeviceIdentifier];
        v14 = [(RPCompanionLinkDaemon *)daemon findConnectedDeviceForIdentifier:v18 controlFlags:v91 cnx:&location];
      }

      if ((v91 & 0x400000000) != 0 && !v14)
      {
        goto LABEL_123;
      }

      if (!v14)
      {
        v19 = [v92 ipAddress];
        v20 = v19 == 0;

        if (!v20)
        {
          v14 = v92;
          v21 = self->_daemon;
          v22 = (v125 + 5);
          v116 = v125[5];
          [(RPCompanionLinkDaemon *)v21 _clientConnectionStartOnDemand:v14 xpcCnx:self error:&v116];
          objc_storeStrong(v22, v116);
          goto LABEL_29;
        }

        v44 = v91;
        if ((v91 & 0x10000000) == 0)
        {
          v14 = [(RPCompanionLinkXPCConnection *)self _findMatchingDevice:v92 inDeviceDictionary:self->_daemon->_bleDevices];
          if (v14 || ([(RPCompanionLinkXPCConnection *)self _findMatchingDevice:v92 inDeviceDictionary:self->_daemon->_nearbyInfoV2Devices], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            if (![v93 reactivateCalled] || (objc_msgSend(v93, "controlFlags") & 0x20100) != 0)
            {
              objc_storeStrong(&self->_daemonDevice, v14);
              v45 = self->_daemon;
              v46 = (v125 + 5);
              v115 = v125[5];
              [(RPCompanionLinkDaemon *)v45 _clientConnectionStartOnDemand:v14 xpcCnx:self error:&v115];
              objc_storeStrong(v46, v115);
              goto LABEL_29;
            }

            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v75 = RPErrorF();
LABEL_128:
            v78 = v125[5];
            v125[5] = v75;

            goto LABEL_129;
          }

          v14 = [(RPCompanionLinkDaemon *)self->_daemon findUnauthDeviceForIdentifier:v94];
          v44 = v91;
          if (v14)
          {
            objc_storeStrong(&self->_daemonDevice, v14);
            v67 = self->_daemon;
            v68 = (v125 + 5);
            v114 = v125[5];
            [(RPCompanionLinkDaemon *)v67 _clientConnectionStartUnauth:v14 client:v93 publicID:v94 xpcCnx:self error:&v114];
            objc_storeStrong(v68, v114);
            goto LABEL_29;
          }
        }

        if ((v44 & 0x1000010000000) == 0x1000000000000)
        {
          v69 = [(RPCompanionLinkDaemon *)self->_daemon findAuthAWDLPairingModeDeviceForIdentifier:v94];
          v14 = v69;
          if (v69)
          {
            [v69 setIdentifier:v94];
            objc_storeStrong(&self->_daemonDevice, v14);
            v70 = self->_daemon;
            v71 = (v125 + 5);
            v113 = v125[5];
            [(RPCompanionLinkDaemon *)v70 _clientConnectionStartOnDemand:v14 xpcCnx:self error:&v113];
            objc_storeStrong(v71, v113);
            goto LABEL_29;
          }
        }

        if ((v91 & 0x10800000) != 0)
        {
          v72 = [v93 cloudServiceID];
          if (v72)
          {
            goto LABEL_116;
          }

          if (([(NSString *)self->_appID isEqual:@"com.apple.coreduetd"]& 1) != 0 || [(NSString *)self->_appID isEqual:@"com.apple.knowledge-agent"])
          {
            v72 = @"com.apple.private.alloy.coreduet.sync";
            [v93 setCloudServiceID:v72];
LABEL_116:
            v14 = v92;
            [v14 setStatusFlags:{objc_msgSend(v14, "statusFlags") | 0x100000}];
            objc_storeStrong(&self->_daemonDevice, v92);
            [v93 setControlFlags:{objc_msgSend(v93, "controlFlags") | 0x10000000}];
            v73 = self->_daemon;
            v74 = (v125 + 5);
            v112 = v125[5];
            [(RPCompanionLinkDaemon *)v73 _clientConnectionStartOnDemand:v14 xpcCnx:self error:&v112];
            objc_storeStrong(v74, v112);
            LOBYTE(v74) = v125[5] == 0;

            if (v74)
            {
              goto LABEL_30;
            }

            goto LABEL_129;
          }
        }

        else if ((~v91 & 0x220000) == 0)
        {
          v14 = [(RPCompanionLinkDaemon *)self->_daemon findConnectedDeviceForIdentifier:v94 controlFlags:v91 & 0xFFFFFFFFEF5FFFFFLL cnx:0];
          if (v14)
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              v84 = v92;
              LogPrintF();
            }

            objc_storeStrong(&self->_daemonDevice, v92);
            v80 = self->_daemon;
            v81 = (v125 + 5);
            v111 = v125[5];
            [(RPCompanionLinkDaemon *)v80 _clientConnectionStartOnDemand:v92 xpcCnx:self error:&v111];
            objc_storeStrong(v81, v111);
LABEL_29:
            if (!v125[5])
            {
              goto LABEL_30;
            }

LABEL_129:

LABEL_100:
LABEL_101:

            goto LABEL_102;
          }
        }

LABEL_123:
        v75 = RPErrorF();
        v14 = 0;
        goto LABEL_128;
      }
    }

LABEL_30:
    v23 = [v14 idsDeviceIdentifier];
    v24 = v23 == 0;

    if (v24)
    {
      v25 = +[RPCloudDaemon sharedCloudDaemon];
      v26 = [v25 idsDeviceArray];

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v107 objects:v131 count:16];
      if (v28)
      {
        v29 = *v108;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v108 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v107 + 1) + 8 * i);
            v32 = [v31 nsuuid];
            v33 = [v32 UUIDString];
            v34 = [v33 isEqualToString:v94];

            if (v34)
            {
              v35 = [v31 uniqueIDOverride];
              [v14 setIdsDeviceIdentifier:v35];

              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                v84 = [v14 idsDeviceIdentifier];
                v87 = v94;
                LogPrintF();
              }
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v107 objects:v131 count:16];
        }

        while (v28);
      }
    }

    objc_storeStrong(&self->_daemonDevice, v14);
    if (!self->_netCnx && ([location controlFlags] & 0x200) != 0)
    {
      objc_storeStrong(&self->_netCnx, location);
    }

LABEL_48:
    if ((v91 & 0x800000000) != 0)
    {
      [(RPCompanionLinkDaemon *)self->_daemon _clientOnDemandAWDLDiscoveryStartForXPC:self];
    }

    if (!self->_osTransaction)
    {
      v106 = 0;
      v36 = [v92 identifier];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v39 = [v92 publicIdentifier];
        v40 = v39;
        v41 = @"Discovery";
        if (v39)
        {
          v41 = v39;
        }

        v38 = v41;
      }

      v84 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      v87 = v38;
      ASPrintF();
      v42 = os_transaction_create();
      osTransaction = self->_osTransaction;
      self->_osTransaction = v42;

      if (!self->_osTransaction && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v84 = v106;
        LogPrintF();
      }

      if (v106)
      {
        free(v106);
      }
    }

    if (!location)
    {
      objc_storeStrong(&location, self->_netCnx);
    }

    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v84 = [(RPConnection *)self->_netCnx label:v84];
      LogPrintF();
    }

    v94 = [v93 serviceType];
    if (v94 && location)
    {
      v47 = objc_alloc_init(RPSession);
      [v47 setCnx:location];
      [v47 setServiceType:v94];
      [v47 setStartTicks:mach_absolute_time()];
      objc_storeStrong(&self->_session, v47);
      v48 = [v92 identifier];
      v49 = v48;
      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v56 = [v92 publicIdentifier];
        v57 = v56;
        if (v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = [v92 idsDeviceIdentifier];
        }

        v50 = v58;
      }

      v59 = self->_daemon;
      v60 = location;
      xpcID = self->_xpcID;
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_100042C78;
      v102[3] = &unk_1001ABF30;
      v102[4] = self;
      v103 = v93;
      v104 = v94;
      v105 = v90;
      [(RPCompanionLinkDaemon *)v59 sessionStartSend:v60 session:v47 xpcID:xpcID destinationID:v50 completion:v102];
    }

    else
    {
      [(RPCompanionLinkDaemon *)self->_daemon _pruneStaleBLEDevices];
      v51 = [(RPCompanionLinkXPCConnection *)self devicesForClient:v93];
      if (v90)
      {
        (*(v90 + 2))(v90, v51, v125[5]);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v47 = v51;
      v52 = [v47 countByEnumeratingWithState:&v98 objects:v130 count:16];
      if (v52)
      {
        v53 = *v99;
        do
        {
          for (j = 0; j != v52; j = j + 1)
          {
            if (*v99 != v53)
            {
              objc_enumerationMutation(v47);
            }

            v55 = *(*(&v98 + 1) + 8 * j);
            v97 = @"success";
            [(RPCompanionLinkXPCConnection *)self reportFoundDevice:v55 outReason:&v97];
          }

          v52 = [v47 countByEnumeratingWithState:&v98 objects:v130 count:16];
        }

        while (v52);
      }

      v50 = +[RPDaemon sharedDaemon];
      -[RPCompanionLinkXPCConnection updateErrorFlags:](self, "updateErrorFlags:", [v50 errorFlags]);
    }

    v62 = [(RPCompanionLinkXPCConnection *)self xpcCnx];
    v63 = [v62 processIdentifier];

    v64 = [RBSProcessIdentifier identifierWithPid:v63];
    v96 = 0;
    v65 = [RBSProcessHandle handleForIdentifier:v64 error:&v96];
    v66 = v96;
    if (!v66 && v64 && [v65 isApplication])
    {
      objc_storeStrong(&self->_rbsPID, v64);
      [(RPCompanionLinkDaemon *)self->_daemon _addApplicationPID:self->_rbsPID];
    }

    [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCClientChange];

    goto LABEL_100;
  }

LABEL_102:
  (v89[2])(v89);

  _Block_object_dispose(&v124, 8);
}

- (void)companionLinkUpdateClient:(id)a3
{
  v29 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0])
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011521C(self);
    }

    v4 = [(RPCompanionLinkClient *)self->_client controlFlags];
    v5 = [v29 controlFlags];
    if (v5 != v4)
    {
      [(RPCompanionLinkClient *)self->_client setControlFlags:v5];
    }

    v6 = [(RPCompanionLinkClient *)self->_client serviceType];
    v7 = [v29 serviceType];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if ((v8 != 0) != (v9 == 0))
      {
        v11 = [v8 isEqual:v9];

        if (v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [(RPCompanionLinkClient *)self->_client setServiceType:v10];
    }

LABEL_14:
    v12 = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
    v13 = [(RPCompanionLinkXPCConnection *)self launchInstanceID];

    if (v13)
    {
      daemon = self->_daemon;
      v15 = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
      v16 = [(RPCompanionLinkDaemon *)daemon homeHubDeviceForLaunchInstanceID:v15];

      v12 = v16;
      if (!v16)
      {
        if (dword_1001D3228 > 90 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v12 = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
        LogPrintF();
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }
    }

    v27 = v5;
    v28 = v4;
    v17 = [v12 siriInfo];
    v18 = [v29 siriInfo];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
      v21 = v17;
      v22 = v21;
      if (v20 == v21)
      {

        v24 = v20;
      }

      else
      {
        if (v21)
        {
          v23 = [v20 isEqual:v21];

          if (v23)
          {
            goto LABEL_34;
          }
        }

        else
        {
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_100115264(v22, v20);
        }

        [v12 setSiriInfo:v20];
        v24 = +[NSMutableDictionary dictionary];
        [v24 setObject:v20 forKeyedSubscript:@"_siriInfo"];
        if (v13)
        {
          v25 = [v12 identifier];
          [v24 setObject:v25 forKeyedSubscript:@"_i"];

          v26 = @"_proxyUpdate";
        }

        else
        {
          v26 = @"_systemInfoUpdate";
        }

        [(RPCompanionLinkDaemon *)self->_daemon sendEventID:v26 event:v24 destinationID:@"rapport:rdid:SameHome" options:0 completion:0];
      }
    }

LABEL_34:
    if (v27 != v28)
    {
      [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCClientChange];
    }

    goto LABEL_37;
  }

LABEL_39:
}

- (void)companionLinkCreateDeviceToEndpointMappingForDeviceID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v15 = 0;
  v8 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v15];
  v9 = v15;
  if (v8)
  {
    daemon = self->_daemon;
    v13 = v9;
    v14 = 0;
    [(RPCompanionLinkDaemon *)daemon createDeviceToEndpointMappingForDeviceID:v6 endpointUUID:&v14 error:&v13];
    v11 = v14;
    v12 = v13;

    if (v7)
    {
      v7[2](v7, v11, v12);
    }
  }

  else
  {
    if (v7)
    {
      v7[2](v7, 0, v9);
    }

    v12 = v9;
  }
}

- (void)companionLinkRegisterEventID:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v20 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v20];
  v11 = v20;
  if (!v11)
  {
    if (CFDictionaryGetInt64())
    {
      v13 = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v15 = [(RPCompanionLinkClient *)self->_client destinationDevice];
        v14 = [v15 identifier];

        if (!v14)
        {
          v12 = RPErrorF();
          if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (v10)
          {
            goto LABEL_3;
          }

          goto LABEL_17;
        }
      }

      [(RPCompanionLinkDaemon *)self->_daemon interestRegisterEventID:v8 peerIdentifier:v14 owner:self];
    }

    registeredEvents = self->_registeredEvents;
    if (!registeredEvents)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      v18 = self->_registeredEvents;
      self->_registeredEvents = v17;

      registeredEvents = self->_registeredEvents;
    }

    if (v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)registeredEvents setObject:v19 forKeyedSubscript:v8];
    if (v10)
    {
      v10[2](v10, 0);
    }

    v12 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  if (v10)
  {
LABEL_3:
    (v10)[2](v10, v12);
  }

LABEL_17:
}

- (void)companionLinkDeregisterEventID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v8 = v12;
  if (v8)
  {
    if (v7)
    {
      v7[2](v7, v8);
    }

    goto LABEL_10;
  }

  v9 = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [(RPCompanionLinkClient *)self->_client destinationDevice];
    v10 = [v11 identifier];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  [(RPCompanionLinkDaemon *)self->_daemon interestDeregisterEventID:v6 peerIdentifier:v10 owner:self];

LABEL_8:
  [(NSMutableDictionary *)self->_registeredEvents setObject:0 forKeyedSubscript:v6];
  if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_10:
}

- (void)companionLinkSendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 nwActivityToken:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v29 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v29];
  v20 = v29;
  if (v20)
  {
    v28 = v20;
    v21 = 0;
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = [(RPNWActivityMetrics *)RPNWActivityEventMetrics metricsUsingToken:v18];
    [v21 setDestination:v16];
    v22 = [RPNWActivityUtils updateOptions:v17 withNWActivityMetrics:v21];

    if (![v16 isEqual:@"rapport:rdid:DirectPeer"])
    {
LABEL_9:
      v17 = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v22];

      [(RPCompanionLinkDaemon *)self->_daemon sendEventID:v14 event:v15 destinationID:v16 options:v17 completion:v19];
      goto LABEL_10;
    }

    v23 = self->_netCnx;
    if (v23)
    {
      v24 = v23;
      v17 = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v22];

      [(RPConnection *)v24 sendEncryptedEventID:v14 event:v15 options:v17 completion:v19];
LABEL_10:
      v28 = 0;
      goto LABEL_11;
    }

    v25 = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
    if (v25)
    {
      v26 = v25;
LABEL_8:

      v16 = v26;
      goto LABEL_9;
    }

    v27 = [(RPCompanionLinkClient *)self->_client destinationDevice];
    v26 = [v27 identifier];

    if (v26)
    {
      goto LABEL_8;
    }

    RPErrorF();
    v28 = v17 = v22;
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  if (v28)
  {
    v19[2](v19, v28);
  }

LABEL_11:
}

- (void)companionLinkRegisterProfileID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v17 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v17];
  v8 = v17;
  if (v8)
  {
    v9 = v8;
LABEL_3:
    if (v7)
    {
      v7[2](v7, v9);
    }

    goto LABEL_5;
  }

  if (([(NSMutableSet *)self->_registeredProfileIDs containsObject:v6]& 1) != 0 || [(NSMutableSet *)self->_daemon->_registeredProfileIDs containsObject:v6])
  {
    v9 = RPErrorF();
    if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_3;
  }

  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001152C0();
  }

  registeredProfileIDs = self->_registeredProfileIDs;
  if (!registeredProfileIDs)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = self->_registeredProfileIDs;
    self->_registeredProfileIDs = v11;

    registeredProfileIDs = self->_registeredProfileIDs;
  }

  [(NSMutableSet *)registeredProfileIDs addObject:v6];
  v13 = self->_daemon->_registeredProfileIDs;
  if (!v13)
  {
    v14 = objc_alloc_init(NSMutableSet);
    daemon = self->_daemon;
    v16 = daemon->_registeredProfileIDs;
    daemon->_registeredProfileIDs = v14;

    v13 = self->_daemon->_registeredProfileIDs;
  }

  [(NSMutableSet *)v13 addObject:v6];
  if (v7)
  {
    v7[2](v7, 0);
  }

  [(RPCompanionLinkDaemon *)self->_daemon _update];
  v9 = 0;
LABEL_5:
}

- (void)companionLinkDeregisterProfileID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v9];
  v8 = v9;
  if (v8)
  {
    if (v7)
    {
      v7[2](v7, v8);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115300();
    }

    [(NSMutableSet *)self->_registeredProfileIDs removeObject:v6];
    [(NSMutableSet *)self->_daemon->_registeredProfileIDs removeObject:v6];
    if (v7)
    {
      v7[2](v7, 0);
    }

    [(RPCompanionLinkDaemon *)self->_daemon _update];
  }
}

- (void)companionLinkSendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 nwActivityToken:(id)a7 responseHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100043E38;
  v35[3] = &unk_1001ABF58;
  v35[4] = self;
  v20 = v14;
  v36 = v20;
  v21 = v19;
  v37 = v21;
  v22 = objc_retainBlock(v35);
  v34 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v34];
  v23 = v34;
  v33 = v18;
  if (v23)
  {
    v32 = v23;
    v25 = 0;
  }

  else
  {
    v24 = v15;
    v25 = [(RPNWActivityMetrics *)RPNWActivityRequestMetrics metricsUsingToken:v18];
    [v25 setDestination:v16];
    v26 = [RPNWActivityUtils updateOptions:v17 withNWActivityMetrics:v25];

    if (![v16 isEqual:@"rapport:rdid:DirectPeer"])
    {
LABEL_9:
      v17 = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v26];

      v15 = v24;
      [(RPCompanionLinkDaemon *)self->_daemon sendRequestID:v20 request:v24 destinationID:v16 xpcID:self->_xpcID options:v17 responseHandler:v22];
      goto LABEL_10;
    }

    v27 = self->_netCnx;
    if (v27)
    {
      v28 = v27;
      v17 = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v26];

      v15 = v24;
      [(RPConnection *)v28 sendEncryptedRequestID:v20 request:v24 xpcID:self->_xpcID options:v17 responseHandler:v22];

LABEL_10:
      v32 = 0;
      goto LABEL_11;
    }

    v29 = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
    if (v29)
    {
      v30 = v29;
LABEL_8:

      v16 = v30;
      goto LABEL_9;
    }

    v31 = [(RPCompanionLinkClient *)self->_client destinationDevice];
    v30 = [v31 identifier];

    if (v30)
    {
      goto LABEL_8;
    }

    v32 = RPErrorF();
    v17 = v26;
    v15 = v24;
    if (!v32)
    {
      goto LABEL_11;
    }
  }

  if (v22)
  {
    (v22[2])(v22, 0, 0, v32);
  }

LABEL_11:
}

- (void)companionLinkTryPassword:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0])
  {
    v4 = self->_netCnx;
    v5 = v4;
    if (v4)
    {
      [(RPConnection *)v4 tryPassword:v6];
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115340(self);
    }
  }
}

- (void)companionLinkSetLocalDeviceAsContextCollector:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v5 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    daemon = self->_daemon;
    p_daemon = &self->_daemon;
    v10 = [(RPCompanionLinkDaemon *)daemon localDeviceInfo];
    [v10 setStatusFlags:{objc_msgSend(v10, "statusFlags") | 0x400000000}];

    *(p_daemon - 62) = 1;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115388(p_daemon);
    }

    [(RPCompanionLinkDaemon *)*p_daemon _update];
    if (v4)
    {
      v11 = 0;
LABEL_8:
      (v4)[2](v4, v11);
    }
  }

  else
  {
    v11 = v6;
    if (v4)
    {
      goto LABEL_8;
    }
  }
}

- (void)companionLinkRemoveLocalDeviceAsContextCollector:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v5 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    daemon = self->_daemon;
    p_daemon = &self->_daemon;
    v10 = [(RPCompanionLinkDaemon *)daemon localDeviceInfo];
    [v10 setStatusFlags:{objc_msgSend(v10, "statusFlags") & 0xFFFFFFFBFFFFFFFFLL}];

    *(p_daemon - 62) = 0;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001153E0(p_daemon);
    }

    [(RPCompanionLinkDaemon *)*p_daemon _update];
    if (v4)
    {
      v11 = 0;
LABEL_8:
      (v4)[2](v4, v11);
    }
  }

  else
  {
    v11 = v6;
    if (v4)
    {
      goto LABEL_8;
    }
  }
}

- (void)xpcDiscoveryActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v10];
  v9 = v10;
  if (v9)
  {
    if (v8)
    {
      v8[2](v8, 0, v9);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115438(self);
    }

    [v7 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_discoveryClient, a3);
  }
}

- (void)xpcDiscoveryUpdate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0]&& dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011548C(self);
  }
}

- (void)xpcServerActivate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000029CC;
  v39 = sub_10000317C;
  v40 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000448C8;
  v32[3] = &unk_1001ABD58;
  v34 = &v35;
  v7 = a4;
  v33 = v7;
  v24 = objc_retainBlock(v32);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = (v36 + 5);
  obj = v36[5];
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v8, obj);
  if (!v36[5])
  {
    v9 = [v6 serviceType];
    if ([v9 length])
    {
      [(RPCompanionLinkDaemon *)self->_daemon activeServers];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v10 = v28 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v41 count:16];
      if (v11)
      {
        v12 = *v28;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = [*(*(&v27 + 1) + 8 * i) serviceType];
            v15 = [v14 isEqual:v9];

            if (v15)
            {
              v17 = RPErrorF();
              v18 = v36[5];
              v36[5] = v17;

              goto LABEL_23;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v27 objects:v41 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v16 = [v6 internalAuthFlags];
      if (v16)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100044990;
        v26[3] = &unk_1001AB7E8;
        v26[4] = self;
        [v6 setShowPasswordHandler:v26];
      }

      if ((v16 & 2) != 0)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100044A04;
        v25[3] = &unk_1001AB810;
        v25[4] = self;
        [v6 setHidePasswordHandler:v25];
      }

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v21 = v6;
        v22 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
        LogPrintF();
      }

      [v6 setDispatchQueue:{self->_dispatchQueue, v21, v22}];
      objc_storeStrong(&self->_server, a3);
      if (!v10)
      {
        v10 = objc_alloc_init(NSMutableSet);
        [(RPCompanionLinkDaemon *)self->_daemon setActiveServers:v10];
      }

      [v10 addObject:v6];
      v19 = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
      [v19 setServersChangedState:6];

      [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCServerChange];
      (*(v7 + 2))(v7, 0);
    }

    else
    {
      v20 = RPErrorF();
      v10 = v36[5];
      v36[5] = v20;
    }

LABEL_23:
  }

  (v24[2])(v24);

  _Block_object_dispose(&v35, 8);
}

- (void)xpcServerUpdate:(id)a3
{
  v17 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0];
  v5 = v17;
  if (v4)
  {
    server = self->_server;
    if (!server)
    {
      sub_100115554();
      goto LABEL_20;
    }

    v7 = [(RPServer *)server controlFlags];
    v8 = [v17 controlFlags];
    v9 = v8 != v7;
    if (v8 != v7)
    {
      [(RPServer *)self->_server setControlFlags:v8];
    }

    v10 = [v17 password];
    v11 = [(RPServer *)self->_server password];
    v12 = v10;
    v13 = v11;
    v14 = v13;
    if (v12 == v13)
    {

      goto LABEL_12;
    }

    if ((v12 != 0) != (v13 == 0))
    {
      v15 = [v12 isEqual:v13];

      if (v15)
      {
LABEL_12:
        v16 = [v17 passwordType];
        if (v16 != [(RPServer *)self->_server passwordType])
        {
          [(RPServer *)self->_server setPasswordType:v16];
          v9 = 1;
        }

        if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001154E0(self);
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else if (!v9)
        {
LABEL_19:

LABEL_20:
          v5 = v17;
          goto LABEL_21;
        }

        [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCServerChange];
        goto LABEL_19;
      }
    }

    else
    {
    }

    [(RPServer *)self->_server setPassword:v12];
    v9 = 1;
    goto LABEL_12;
  }

LABEL_21:
}

- (void)xpcSessionActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v10];
  v9 = v10;
  if (v9)
  {
    if (v8)
    {
      v8[2](v8, v9);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001155D8(self);
    }

    [v7 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_session, a3);
  }
}

- (id)_findMatchingDevice:(id)a3 inDeviceDictionary:(id)a4
{
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a4 allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEqualToDevice:v5])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)companionLinkRegisterRequestID:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v16];
  v11 = v16;
  if (!v11)
  {
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_registeredRequests;
      self->_registeredRequests = v13;

      registeredRequests = self->_registeredRequests;
    }

    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v15 forKeyedSubscript:v8];
  }

  if (v10)
  {
    v10[2](v10, v11);
  }
}

- (void)companionLinkDeregisterRequestID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v9];
  v8 = v9;
  if (!v8)
  {
    [(NSMutableDictionary *)self->_registeredRequests setObject:0 forKeyedSubscript:v6];
  }

  if (v7)
  {
    v7[2](v7, v8);
  }
}

@end
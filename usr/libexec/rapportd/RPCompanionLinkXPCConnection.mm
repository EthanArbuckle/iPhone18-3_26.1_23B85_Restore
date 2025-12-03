@interface RPCompanionLinkXPCConnection
- (BOOL)_checkRSSIThresholdForDevice:(id)device;
- (BOOL)_connectionHasActiveSessions:(id)sessions;
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)reportFoundDevice:(id)device outReason:(id *)reason;
- (RPCompanionLinkXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx;
- (id)_findMatchingDevice:(id)device inDeviceDictionary:(id)dictionary;
- (id)_updateOptionsWithProcessInfo:(id)info;
- (id)devicesForClient:(id)client;
- (void)_invalidateConnectionInList:(id)list listDescription:(id)description;
- (void)authCompletion:(id)completion;
- (void)companionLinkActivateAssertion:(id)assertion completion:(id)completion;
- (void)companionLinkActivateClient:(id)client completion:(id)completion;
- (void)companionLinkCreateDeviceToEndpointMappingForDeviceID:(id)d completion:(id)completion;
- (void)companionLinkDeregisterEventID:(id)d completion:(id)completion;
- (void)companionLinkDeregisterProfileID:(id)d completion:(id)completion;
- (void)companionLinkDeregisterRequestID:(id)d completion:(id)completion;
- (void)companionLinkRegisterEventID:(id)d options:(id)options completion:(id)completion;
- (void)companionLinkRegisterProfileID:(id)d completion:(id)completion;
- (void)companionLinkRegisterRequestID:(id)d options:(id)options completion:(id)completion;
- (void)companionLinkRemoveLocalDeviceAsContextCollector:(id)collector;
- (void)companionLinkSendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options nwActivityToken:(id)token completion:(id)completion;
- (void)companionLinkSendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options nwActivityToken:(id)token responseHandler:(id)handler;
- (void)companionLinkSetLocalDeviceAsContextCollector:(id)collector;
- (void)companionLinkTryPassword:(id)password;
- (void)companionLinkUpdateClient:(id)client;
- (void)connectionInvalidated;
- (void)connectionInvalidatedCore;
- (void)handleDisconnect;
- (void)receivedEventID:(id)d event:(id)event options:(id)options;
- (void)receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)reportLostDevice:(id)device;
- (void)updateErrorFlags:(unint64_t)flags;
- (void)xpcDiscoveryActivate:(id)activate completion:(id)completion;
- (void)xpcDiscoveryUpdate:(id)update;
- (void)xpcServerActivate:(id)activate completion:(id)completion;
- (void)xpcServerUpdate:(id)update;
- (void)xpcSessionActivate:(id)activate completion:(id)completion;
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
        processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
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
    activeServers = [(RPCompanionLinkDaemon *)self->_daemon activeServers];
    [activeServers removeObject:v9];

    localDeviceInfo = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
    [localDeviceInfo setServersChangedState:6];

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

- (RPCompanionLinkXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx
{
  daemonCopy = daemon;
  cnxCopy = cnx;
  v13.receiver = self;
  v13.super_class = RPCompanionLinkXPCConnection;
  v9 = [(RPCompanionLinkXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    v10->_startTicks = mach_absolute_time();
    objc_storeStrong(&v10->_xpcCnx, cnx);
    v11 = v10;
  }

  return v10;
}

- (BOOL)_connectionHasActiveSessions:(id)sessions
{
  sessionsCopy = sessions;
  v5 = [(RPCompanionLinkDaemon *)self->_daemon _sessionsActiveOnConnection:sessionsCopy xpcConnection:self];
  if (v5 >= 1)
  {
    client = [(RPConnection *)sessionsCopy client];
    client = self->_client;

    if (client == client)
    {
      if (dword_1001D3228 <= 40 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        sub_10011501C(sessionsCopy);
      }

      [(RPConnection *)sessionsCopy setClient:0];
      netCnx = self->_netCnx;
      if (netCnx == sessionsCopy)
      {
        self->_netCnx = 0;
      }
    }
  }

  return v5 > 0;
}

- (void)_invalidateConnectionInList:(id)list listDescription:(id)description
{
  listCopy = list;
  descriptionCopy = description;
  dispatchQueue = [(RPCompanionLinkDaemon *)self->_daemon dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

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
  [listCopy enumerateKeysAndObjectsUsingBlock:v12];
  if ([v14[5] count])
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      v11 = v14[5];
      LogPrintF();
      [listCopy removeObjectsForKeys:{v14[5], descriptionCopy, v11}];
    }

    else
    {
      [listCopy removeObjectsForKeys:{v14[5], v9, v10}];
    }
  }

  _Block_object_dispose(&v13, 8);
}

- (BOOL)_entitledAndReturnError:(id *)error
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
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = RPErrorF();
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (id)_updateOptionsWithProcessInfo:(id)info
{
  v4 = [info mutableCopy];
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

- (void)authCompletion:(id)completion
{
  completionCopy = completion;
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100115158();
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkAuthCompleted:completionCopy];
}

- (void)handleDisconnect
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_100115198();
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkHandleDisconnect];
}

- (id)devicesForClient:(id)client
{
  clientCopy = client;
  v5 = objc_alloc_init(NSMutableArray);
  destinationDevice = [clientCopy destinationDevice];

  if (destinationDevice)
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
    v9 = clientCopy;
    v39 = v9;
    selfCopy = self;
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
      selfCopy2 = self;
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
      selfCopy3 = self;
      v33 = v5;
      [(NSMutableDictionary *)bleDevices enumerateKeysAndObjectsUsingBlock:v30];
      nearbyInfoV2Devices = self->_daemon->_nearbyInfoV2Devices;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100040E38;
      v26[3] = &unk_1001ABEB8;
      v27 = v12;
      selfCopy4 = self;
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
      selfCopy5 = self;
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
      selfCopy6 = self;
      v21 = v5;
      [(NSMutableDictionary *)authenticatedAWDLPairingModeDevices enumerateKeysAndObjectsUsingBlock:v18];
    }

    v16 = v5;
  }

  return v5;
}

- (void)receivedEventID:(id)d event:(id)event options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  eventCopy = event;
  v10 = +[RPMetrics sharedMetrics];
  [v10 logReceivedMessageType:1 identifier:dCopy options:optionsCopy appID:self->_appID ctx:&self->_metricsCtx];

  v11 = NSDictionaryGetNSNumber();
  v12 = v11;
  if (v11)
  {
    unsignedLongLongValue = [v11 unsignedLongLongValue];
    if (unsignedLongLongValue >> 23)
    {
      v14 = unsignedLongLongValue;
      v15 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
      0x7FFFFFLL = [NSString stringWithFormat:@"len:%zu, check:%d", v14, 0x7FFFFFLL];
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v20 = dCopy;
        v21 = v15;
        v19 = v14;
        LogPrintF();
      }

      v17 = [RPAutoBugCapture sharedReporter:v19];
      [v17 reportIssueOfType:4 issueContext:@"receivedEventID" processName:v15 triggerThresholdValues:0x7FFFFFLL];
    }
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkReceivedEventID:dCopy event:eventCopy options:optionsCopy];
}

- (void)receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  requestCopy = request;
  v14 = +[RPMetrics sharedMetrics];
  [v14 logReceivedMessageType:2 identifier:dCopy options:optionsCopy appID:self->_appID ctx:&self->_metricsCtx];

  v15 = NSDictionaryGetNSNumber();
  v16 = v15;
  if (v15)
  {
    unsignedLongLongValue = [v15 unsignedLongLongValue];
    if (unsignedLongLongValue >> 23)
    {
      v18 = unsignedLongLongValue;
      v19 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
      0x7FFFFFLL = [NSString stringWithFormat:@"len:%zu, check:%d", v18, 0x7FFFFFLL];
      if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v26 = dCopy;
        v27 = v19;
        v25 = v18;
        LogPrintF();
      }

      v21 = [RPAutoBugCapture sharedReporter:v25];
      [v21 reportIssueOfType:4 issueContext:@"receivedRequestID" processName:v19 triggerThresholdValues:0x7FFFFFLL];
    }
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000414E8;
  v28[3] = &unk_1001ABEE0;
  v28[4] = self;
  v29 = handlerCopy;
  v22 = handlerCopy;
  v23 = objc_retainBlock(v28);
  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy companionLinkReceivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:v23];
}

- (BOOL)_checkRSSIThresholdForDevice:(id)device
{
  deviceCopy = device;
  if ([(RPCompanionLinkClient *)self->_client rssiThreshold])
  {
    rssiThreshold = [(RPCompanionLinkClient *)self->_client rssiThreshold];
  }

  else
  {
    rssiThreshold = -60;
  }

  bleDevice = [deviceCopy bleDevice];
  v6BleDevice = [bleDevice bleDevice];
  rssi = [v6BleDevice rssi];

  if (rssi)
  {
    v9 = rssi < rssiThreshold;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;

  return v10;
}

- (BOOL)reportFoundDevice:(id)device outReason:(id *)reason
{
  deviceCopy = device;
  client = self->_client;
  launchInstanceID = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
  LOBYTE(client) = [(RPCompanionLinkClient *)client shouldReportDevice:deviceCopy toXPCConnectionWithLaunchInstanceID:launchInstanceID outReason:reason];

  if ((client & 1) == 0)
  {
    v18 = 0;
    if (!reason || self->_client)
    {
      goto LABEL_22;
    }

    v18 = 0;
    v19 = @"nilClientCnx";
    goto LABEL_16;
  }

  if (![(RPCompanionLinkXPCConnection *)self _checkRSSIThresholdForDevice:deviceCopy])
  {
    if (!reason)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v19 = @"RSSI.tooLow";
LABEL_16:
    *reason = v19;
    goto LABEL_22;
  }

  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    identifier = [deviceCopy publicIdentifier];
    if (!identifier)
    {
      if (reason)
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

  v10 = identifier;
  v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

  devices = self->_devices;
  if (!devices)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = self->_devices;
    self->_devices = v13;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:v10];
  processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
  if (processIdentifier == getpid())
  {
    [deviceCopy setEncodeSensitiveProperties:{-[RPCompanionLinkClient encodeSensitiveProperties](self->_client, "encodeSensitiveProperties")}];
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  v17 = remoteObjectProxy;
  if (v11)
  {
    [remoteObjectProxy companionLinkChangedDevice:deviceCopy changes:2];
  }

  else
  {
    [remoteObjectProxy companionLinkFoundDevice:deviceCopy];
  }

  v18 = 1;
LABEL_22:

  return v18;
}

- (void)reportLostDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier || ([deviceCopy publicIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

    if (v5)
    {
      client = self->_client;
      launchInstanceID = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
      LODWORD(client) = [(RPCompanionLinkClient *)client shouldReportDevice:deviceCopy toXPCConnectionWithLaunchInstanceID:launchInstanceID outReason:0];

      devices = self->_devices;
      if (client)
      {
        [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:identifier];
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy companionLinkChangedDevice:deviceCopy changes:2];
      }

      else
      {
        [(NSMutableDictionary *)devices setObject:0 forKeyedSubscript:identifier];
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy companionLinkLostDevice:deviceCopy];
      }
    }
  }
}

- (void)updateErrorFlags:(unint64_t)flags
{
  v5 = self->_client;
  if (v5)
  {
    v14 = v5;
    v6 = +[RPDaemon sharedDaemon];
    v7 = [v6 errorFlags] | flags;

    errorFlags = [(RPCompanionLinkClient *)v14 errorFlags];
    v5 = v14;
    if (errorFlags != v7)
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
      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy companionLinkUpdateErrorFlags:flags];

      v5 = v14;
    }
  }
}

- (void)companionLinkActivateAssertion:(id)assertion completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)companionLinkActivateClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
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
  v93 = clientCopy;
  v120 = v93;
  selfCopy = self;
  v90 = completionCopy;
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
      processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF();
    }

    [v93 setDispatchQueue:{self->_dispatchQueue, v82, processIdentifier}];
    objc_storeStrong(&self->_client, client);
    controlFlags = [v93 controlFlags];
    if (sub_10000329C())
    {
      controlFlags = controlFlags & 0xFFFFFDFFFF9DFEFFLL | 0x20000400000;
      if (dword_1001D3228 < 31 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v86 = controlFlags;
        v88 = &unk_100147BEC;
        clientID = [v93 clientID];
        LogPrintF();
      }
    }

    location = 0;
    destinationDevice = [v93 destinationDevice];
    v92 = destinationDevice;
    if (!destinationDevice)
    {
      goto LABEL_48;
    }

    identifier = [destinationDevice identifier];
    if (identifier)
    {
      publicIdentifier = identifier;
    }

    else
    {
      publicIdentifier = [v92 publicIdentifier];

      if (!publicIdentifier)
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
      controlFlags = [v93 controlFlags];
    }

    v14 = [(RPCompanionLinkDaemon *)self->_daemon findConnectedDeviceForIdentifier:publicIdentifier controlFlags:controlFlags cnx:&location];
    if (!v14)
    {
      idsDeviceIdentifier = [v92 idsDeviceIdentifier];
      v16 = idsDeviceIdentifier == 0;

      if (v16)
      {
        v14 = 0;
      }

      else
      {
        daemon = self->_daemon;
        idsDeviceIdentifier2 = [v92 idsDeviceIdentifier];
        v14 = [(RPCompanionLinkDaemon *)daemon findConnectedDeviceForIdentifier:idsDeviceIdentifier2 controlFlags:controlFlags cnx:&location];
      }

      if ((controlFlags & 0x400000000) != 0 && !v14)
      {
        goto LABEL_123;
      }

      if (!v14)
      {
        ipAddress = [v92 ipAddress];
        v20 = ipAddress == 0;

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

        v44 = controlFlags;
        if ((controlFlags & 0x10000000) == 0)
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

          v14 = [(RPCompanionLinkDaemon *)self->_daemon findUnauthDeviceForIdentifier:publicIdentifier];
          v44 = controlFlags;
          if (v14)
          {
            objc_storeStrong(&self->_daemonDevice, v14);
            v67 = self->_daemon;
            v68 = (v125 + 5);
            v114 = v125[5];
            [(RPCompanionLinkDaemon *)v67 _clientConnectionStartUnauth:v14 client:v93 publicID:publicIdentifier xpcCnx:self error:&v114];
            objc_storeStrong(v68, v114);
            goto LABEL_29;
          }
        }

        if ((v44 & 0x1000010000000) == 0x1000000000000)
        {
          v69 = [(RPCompanionLinkDaemon *)self->_daemon findAuthAWDLPairingModeDeviceForIdentifier:publicIdentifier];
          v14 = v69;
          if (v69)
          {
            [v69 setIdentifier:publicIdentifier];
            objc_storeStrong(&self->_daemonDevice, v14);
            v70 = self->_daemon;
            v71 = (v125 + 5);
            v113 = v125[5];
            [(RPCompanionLinkDaemon *)v70 _clientConnectionStartOnDemand:v14 xpcCnx:self error:&v113];
            objc_storeStrong(v71, v113);
            goto LABEL_29;
          }
        }

        if ((controlFlags & 0x10800000) != 0)
        {
          cloudServiceID = [v93 cloudServiceID];
          if (cloudServiceID)
          {
            goto LABEL_116;
          }

          if (([(NSString *)self->_appID isEqual:@"com.apple.coreduetd"]& 1) != 0 || [(NSString *)self->_appID isEqual:@"com.apple.knowledge-agent"])
          {
            cloudServiceID = @"com.apple.private.alloy.coreduet.sync";
            [v93 setCloudServiceID:cloudServiceID];
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

        else if ((~controlFlags & 0x220000) == 0)
        {
          v14 = [(RPCompanionLinkDaemon *)self->_daemon findConnectedDeviceForIdentifier:publicIdentifier controlFlags:controlFlags & 0xFFFFFFFFEF5FFFFFLL cnx:0];
          if (v14)
          {
            if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
            {
              idsDeviceIdentifier4 = v92;
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
    idsDeviceIdentifier3 = [v14 idsDeviceIdentifier];
    v24 = idsDeviceIdentifier3 == 0;

    if (v24)
    {
      v25 = +[RPCloudDaemon sharedCloudDaemon];
      idsDeviceArray = [v25 idsDeviceArray];

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v27 = idsDeviceArray;
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
            nsuuid = [v31 nsuuid];
            uUIDString = [nsuuid UUIDString];
            v34 = [uUIDString isEqualToString:publicIdentifier];

            if (v34)
            {
              uniqueIDOverride = [v31 uniqueIDOverride];
              [v14 setIdsDeviceIdentifier:uniqueIDOverride];

              if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
              {
                idsDeviceIdentifier4 = [v14 idsDeviceIdentifier];
                v87 = publicIdentifier;
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
    if ((controlFlags & 0x800000000) != 0)
    {
      [(RPCompanionLinkDaemon *)self->_daemon _clientOnDemandAWDLDiscoveryStartForXPC:self];
    }

    if (!self->_osTransaction)
    {
      v106 = 0;
      identifier2 = [v92 identifier];
      v37 = identifier2;
      if (identifier2)
      {
        v38 = identifier2;
      }

      else
      {
        publicIdentifier2 = [v92 publicIdentifier];
        v40 = publicIdentifier2;
        v41 = @"Discovery";
        if (publicIdentifier2)
        {
          v41 = publicIdentifier2;
        }

        v38 = v41;
      }

      idsDeviceIdentifier4 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      v87 = v38;
      ASPrintF();
      v42 = os_transaction_create();
      osTransaction = self->_osTransaction;
      self->_osTransaction = v42;

      if (!self->_osTransaction && dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        idsDeviceIdentifier4 = v106;
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
      idsDeviceIdentifier4 = [(RPConnection *)self->_netCnx label:idsDeviceIdentifier4];
      LogPrintF();
    }

    publicIdentifier = [v93 serviceType];
    if (publicIdentifier && location)
    {
      v47 = objc_alloc_init(RPSession);
      [v47 setCnx:location];
      [v47 setServiceType:publicIdentifier];
      [v47 setStartTicks:mach_absolute_time()];
      objc_storeStrong(&self->_session, v47);
      identifier3 = [v92 identifier];
      v49 = identifier3;
      if (identifier3)
      {
        v50 = identifier3;
      }

      else
      {
        publicIdentifier3 = [v92 publicIdentifier];
        v57 = publicIdentifier3;
        if (publicIdentifier3)
        {
          idsDeviceIdentifier5 = publicIdentifier3;
        }

        else
        {
          idsDeviceIdentifier5 = [v92 idsDeviceIdentifier];
        }

        v50 = idsDeviceIdentifier5;
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
      v104 = publicIdentifier;
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

    xpcCnx = [(RPCompanionLinkXPCConnection *)self xpcCnx];
    processIdentifier2 = [xpcCnx processIdentifier];

    v64 = [RBSProcessIdentifier identifierWithPid:processIdentifier2];
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

- (void)companionLinkUpdateClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0])
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_10011521C(self);
    }

    controlFlags = [(RPCompanionLinkClient *)self->_client controlFlags];
    controlFlags2 = [clientCopy controlFlags];
    if (controlFlags2 != controlFlags)
    {
      [(RPCompanionLinkClient *)self->_client setControlFlags:controlFlags2];
    }

    serviceType = [(RPCompanionLinkClient *)self->_client serviceType];
    serviceType2 = [clientCopy serviceType];
    v8 = serviceType;
    v9 = serviceType2;
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
    localDeviceInfo = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
    launchInstanceID = [(RPCompanionLinkXPCConnection *)self launchInstanceID];

    if (launchInstanceID)
    {
      daemon = self->_daemon;
      launchInstanceID2 = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
      v16 = [(RPCompanionLinkDaemon *)daemon homeHubDeviceForLaunchInstanceID:launchInstanceID2];

      localDeviceInfo = v16;
      if (!v16)
      {
        if (dword_1001D3228 > 90 || dword_1001D3228 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        localDeviceInfo = [(RPCompanionLinkXPCConnection *)self launchInstanceID];
        LogPrintF();
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }
    }

    v27 = controlFlags2;
    v28 = controlFlags;
    siriInfo = [localDeviceInfo siriInfo];
    siriInfo2 = [clientCopy siriInfo];
    v19 = siriInfo2;
    if (siriInfo2)
    {
      v20 = siriInfo2;
      v21 = siriInfo;
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

        [localDeviceInfo setSiriInfo:v20];
        v24 = +[NSMutableDictionary dictionary];
        [v24 setObject:v20 forKeyedSubscript:@"_siriInfo"];
        if (launchInstanceID)
        {
          identifier = [localDeviceInfo identifier];
          [v24 setObject:identifier forKeyedSubscript:@"_i"];

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

- (void)companionLinkCreateDeviceToEndpointMappingForDeviceID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v15 = 0;
  v8 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v15];
  v9 = v15;
  if (v8)
  {
    daemon = self->_daemon;
    v13 = v9;
    v14 = 0;
    [(RPCompanionLinkDaemon *)daemon createDeviceToEndpointMappingForDeviceID:dCopy endpointUUID:&v14 error:&v13];
    v11 = v14;
    v12 = v13;

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v11, v12);
    }
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v9);
    }

    v12 = v9;
  }
}

- (void)companionLinkRegisterEventID:(id)d options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v20 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v20];
  v11 = v20;
  if (!v11)
  {
    if (CFDictionaryGetInt64())
    {
      identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
      if (identifier)
      {
        identifier2 = identifier;
      }

      else
      {
        destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
        identifier2 = [destinationDevice identifier];

        if (!identifier2)
        {
          v12 = RPErrorF();
          if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (completionCopy)
          {
            goto LABEL_3;
          }

          goto LABEL_17;
        }
      }

      [(RPCompanionLinkDaemon *)self->_daemon interestRegisterEventID:dCopy peerIdentifier:identifier2 owner:self];
    }

    registeredEvents = self->_registeredEvents;
    if (!registeredEvents)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      v18 = self->_registeredEvents;
      self->_registeredEvents = v17;

      registeredEvents = self->_registeredEvents;
    }

    if (optionsCopy)
    {
      v19 = optionsCopy;
    }

    else
    {
      v19 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)registeredEvents setObject:v19 forKeyedSubscript:dCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    v12 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  if (completionCopy)
  {
LABEL_3:
    (completionCopy)[2](completionCopy, v12);
  }

LABEL_17:
}

- (void)companionLinkDeregisterEventID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v8 = v12;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }

    goto LABEL_10;
  }

  identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
  if (identifier)
  {
    identifier2 = identifier;
  }

  else
  {
    destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
    identifier2 = [destinationDevice identifier];

    if (!identifier2)
    {
      goto LABEL_8;
    }
  }

  [(RPCompanionLinkDaemon *)self->_daemon interestDeregisterEventID:dCopy peerIdentifier:identifier2 owner:self];

LABEL_8:
  [(NSMutableDictionary *)self->_registeredEvents setObject:0 forKeyedSubscript:dCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_10:
}

- (void)companionLinkSendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options nwActivityToken:(id)token completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  iDCopy = iD;
  optionsCopy = options;
  tokenCopy = token;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v29 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v29];
  v20 = v29;
  if (v20)
  {
    v28 = v20;
    v21 = 0;
    if (!completionCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = [(RPNWActivityMetrics *)RPNWActivityEventMetrics metricsUsingToken:tokenCopy];
    [v21 setDestination:iDCopy];
    v22 = [RPNWActivityUtils updateOptions:optionsCopy withNWActivityMetrics:v21];

    if (![iDCopy isEqual:@"rapport:rdid:DirectPeer"])
    {
LABEL_9:
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v22];

      [(RPCompanionLinkDaemon *)self->_daemon sendEventID:dCopy event:eventCopy destinationID:iDCopy options:optionsCopy completion:completionCopy];
      goto LABEL_10;
    }

    v23 = self->_netCnx;
    if (v23)
    {
      v24 = v23;
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v22];

      [(RPConnection *)v24 sendEncryptedEventID:dCopy event:eventCopy options:optionsCopy completion:completionCopy];
LABEL_10:
      v28 = 0;
      goto LABEL_11;
    }

    identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
    if (identifier)
    {
      identifier2 = identifier;
LABEL_8:

      iDCopy = identifier2;
      goto LABEL_9;
    }

    destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
    identifier2 = [destinationDevice identifier];

    if (identifier2)
    {
      goto LABEL_8;
    }

    RPErrorF();
    v28 = optionsCopy = v22;
    if (!completionCopy)
    {
      goto LABEL_11;
    }
  }

  if (v28)
  {
    completionCopy[2](completionCopy, v28);
  }

LABEL_11:
}

- (void)companionLinkRegisterProfileID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v17 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v17];
  v8 = v17;
  if (v8)
  {
    v9 = v8;
LABEL_3:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v9);
    }

    goto LABEL_5;
  }

  if (([(NSMutableSet *)self->_registeredProfileIDs containsObject:dCopy]& 1) != 0 || [(NSMutableSet *)self->_daemon->_registeredProfileIDs containsObject:dCopy])
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

  [(NSMutableSet *)registeredProfileIDs addObject:dCopy];
  v13 = self->_daemon->_registeredProfileIDs;
  if (!v13)
  {
    v14 = objc_alloc_init(NSMutableSet);
    daemon = self->_daemon;
    v16 = daemon->_registeredProfileIDs;
    daemon->_registeredProfileIDs = v14;

    v13 = self->_daemon->_registeredProfileIDs;
  }

  [(NSMutableSet *)v13 addObject:dCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  [(RPCompanionLinkDaemon *)self->_daemon _update];
  v9 = 0;
LABEL_5:
}

- (void)companionLinkDeregisterProfileID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v9];
  v8 = v9;
  if (v8)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v8);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115300();
    }

    [(NSMutableSet *)self->_registeredProfileIDs removeObject:dCopy];
    [(NSMutableSet *)self->_daemon->_registeredProfileIDs removeObject:dCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    [(RPCompanionLinkDaemon *)self->_daemon _update];
  }
}

- (void)companionLinkSendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options nwActivityToken:(id)token responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  optionsCopy = options;
  tokenCopy = token;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100043E38;
  v35[3] = &unk_1001ABF58;
  v35[4] = self;
  v20 = dCopy;
  v36 = v20;
  v21 = handlerCopy;
  v37 = v21;
  v22 = objc_retainBlock(v35);
  v34 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v34];
  v23 = v34;
  v33 = tokenCopy;
  if (v23)
  {
    v32 = v23;
    v25 = 0;
  }

  else
  {
    v24 = requestCopy;
    v25 = [(RPNWActivityMetrics *)RPNWActivityRequestMetrics metricsUsingToken:tokenCopy];
    [v25 setDestination:iDCopy];
    v26 = [RPNWActivityUtils updateOptions:optionsCopy withNWActivityMetrics:v25];

    if (![iDCopy isEqual:@"rapport:rdid:DirectPeer"])
    {
LABEL_9:
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v26];

      requestCopy = v24;
      [(RPCompanionLinkDaemon *)self->_daemon sendRequestID:v20 request:v24 destinationID:iDCopy xpcID:self->_xpcID options:optionsCopy responseHandler:v22];
      goto LABEL_10;
    }

    v27 = self->_netCnx;
    if (v27)
    {
      v28 = v27;
      optionsCopy = [(RPCompanionLinkXPCConnection *)self _updateOptionsWithProcessInfo:v26];

      requestCopy = v24;
      [(RPConnection *)v28 sendEncryptedRequestID:v20 request:v24 xpcID:self->_xpcID options:optionsCopy responseHandler:v22];

LABEL_10:
      v32 = 0;
      goto LABEL_11;
    }

    identifier = [(RPCompanionLinkDevice *)self->_daemonDevice identifier];
    if (identifier)
    {
      identifier2 = identifier;
LABEL_8:

      iDCopy = identifier2;
      goto LABEL_9;
    }

    destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
    identifier2 = [destinationDevice identifier];

    if (identifier2)
    {
      goto LABEL_8;
    }

    v32 = RPErrorF();
    optionsCopy = v26;
    requestCopy = v24;
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

- (void)companionLinkTryPassword:(id)password
{
  passwordCopy = password;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0])
  {
    v4 = self->_netCnx;
    v5 = v4;
    if (v4)
    {
      [(RPConnection *)v4 tryPassword:passwordCopy];
    }

    else if (dword_1001D3228 <= 90 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115340(self);
    }
  }
}

- (void)companionLinkSetLocalDeviceAsContextCollector:(id)collector
{
  collectorCopy = collector;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v5 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    daemon = self->_daemon;
    p_daemon = &self->_daemon;
    localDeviceInfo = [(RPCompanionLinkDaemon *)daemon localDeviceInfo];
    [localDeviceInfo setStatusFlags:{objc_msgSend(localDeviceInfo, "statusFlags") | 0x400000000}];

    *(p_daemon - 62) = 1;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115388(p_daemon);
    }

    [(RPCompanionLinkDaemon *)*p_daemon _update];
    if (collectorCopy)
    {
      v11 = 0;
LABEL_8:
      (collectorCopy)[2](collectorCopy, v11);
    }
  }

  else
  {
    v11 = v6;
    if (collectorCopy)
    {
      goto LABEL_8;
    }
  }
}

- (void)companionLinkRemoveLocalDeviceAsContextCollector:(id)collector
{
  collectorCopy = collector;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v5 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    daemon = self->_daemon;
    p_daemon = &self->_daemon;
    localDeviceInfo = [(RPCompanionLinkDaemon *)daemon localDeviceInfo];
    [localDeviceInfo setStatusFlags:{objc_msgSend(localDeviceInfo, "statusFlags") & 0xFFFFFFFBFFFFFFFFLL}];

    *(p_daemon - 62) = 0;
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001153E0(p_daemon);
    }

    [(RPCompanionLinkDaemon *)*p_daemon _update];
    if (collectorCopy)
    {
      v11 = 0;
LABEL_8:
      (collectorCopy)[2](collectorCopy, v11);
    }
  }

  else
  {
    v11 = v6;
    if (collectorCopy)
    {
      goto LABEL_8;
    }
  }
}

- (void)xpcDiscoveryActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v10];
  v9 = v10;
  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_100115438(self);
    }

    [activateCopy setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_discoveryClient, activate);
  }
}

- (void)xpcDiscoveryUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0]&& dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    sub_10011548C(self);
  }
}

- (void)xpcServerActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
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
  completionCopy = completion;
  v33 = completionCopy;
  v24 = objc_retainBlock(v32);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = (v36 + 5);
  obj = v36[5];
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v8, obj);
  if (!v36[5])
  {
    serviceType = [activateCopy serviceType];
    if ([serviceType length])
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

            serviceType2 = [*(*(&v27 + 1) + 8 * i) serviceType];
            v15 = [serviceType2 isEqual:serviceType];

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

      internalAuthFlags = [activateCopy internalAuthFlags];
      if (internalAuthFlags)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100044990;
        v26[3] = &unk_1001AB7E8;
        v26[4] = self;
        [activateCopy setShowPasswordHandler:v26];
      }

      if ((internalAuthFlags & 2) != 0)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100044A04;
        v25[3] = &unk_1001AB810;
        v25[4] = self;
        [activateCopy setHidePasswordHandler:v25];
      }

      if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
      {
        v21 = activateCopy;
        processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
        LogPrintF();
      }

      [activateCopy setDispatchQueue:{self->_dispatchQueue, v21, processIdentifier}];
      objc_storeStrong(&self->_server, activate);
      if (!v10)
      {
        v10 = objc_alloc_init(NSMutableSet);
        [(RPCompanionLinkDaemon *)self->_daemon setActiveServers:v10];
      }

      [v10 addObject:activateCopy];
      localDeviceInfo = [(RPCompanionLinkDaemon *)self->_daemon localDeviceInfo];
      [localDeviceInfo setServersChangedState:6];

      [(RPCompanionLinkDaemon *)self->_daemon _updateForXPCServerChange];
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)xpcServerUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:0];
  v5 = updateCopy;
  if (v4)
  {
    server = self->_server;
    if (!server)
    {
      sub_100115554();
      goto LABEL_20;
    }

    controlFlags = [(RPServer *)server controlFlags];
    controlFlags2 = [updateCopy controlFlags];
    v9 = controlFlags2 != controlFlags;
    if (controlFlags2 != controlFlags)
    {
      [(RPServer *)self->_server setControlFlags:controlFlags2];
    }

    password = [updateCopy password];
    password2 = [(RPServer *)self->_server password];
    v12 = password;
    v13 = password2;
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
        passwordType = [updateCopy passwordType];
        if (passwordType != [(RPServer *)self->_server passwordType])
        {
          [(RPServer *)self->_server setPasswordType:passwordType];
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
          v5 = updateCopy;
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

- (void)xpcSessionActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v10];
  v9 = v10;
  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v9);
    }
  }

  else
  {
    if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001155D8(self);
    }

    [activateCopy setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_session, activate);
  }
}

- (id)_findMatchingDevice:(id)device inDeviceDictionary:(id)dictionary
{
  deviceCopy = device;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [dictionary allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEqualToDevice:deviceCopy])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)companionLinkRegisterRequestID:(id)d options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
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

    if (optionsCopy)
    {
      v15 = optionsCopy;
    }

    else
    {
      v15 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v15 forKeyedSubscript:dCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)companionLinkDeregisterRequestID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  [(RPCompanionLinkXPCConnection *)self _entitledAndReturnError:&v9];
  v8 = v9;
  if (!v8)
  {
    [(NSMutableDictionary *)self->_registeredRequests setObject:0 forKeyedSubscript:dCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

@end
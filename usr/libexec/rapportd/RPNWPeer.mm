@interface RPNWPeer
+ (BOOL)shouldIncludeDevice:(id)device deviceTypes:(unsigned int)types controlFlags:(unint64_t)flags;
+ (const)responseCodeToString:(int)string;
+ (const)statusCodeToString:(int)string;
+ (id)createNWEndpointForDevice:(id)device applicationService:(id)service;
+ (id)createNWEndpointForEndpoint:(id)endpoint agentID:(id)d applicationService:(id)service;
+ (id)createNWEndpointWithID:(id)d agentID:(id)iD applicationService:(id)service;
+ (id)createTXTRecordForEndpoint:(id)endpoint alternativeDevice:(id)device applicationService:(id)service;
+ (void)updateEndpoint:(id)endpoint forDevice:(id)device applicationService:(id)service;
- (RPNWPeer)init;
- (int)findListenerAndCreateConnection:(id)connection version:(id)version applicationService:(id)service listenerID:(id)d connectionID:(id)iD;
- (int64_t)_rssiThresholdForApplicationService:(id)service;
- (void)connectToOneAPIPeer:(id)peer token:(id)token inboundConnection:(BOOL)connection applicationService:(id)service listenerID:(id)d automapListener:(BOOL)listener connectionID:(id)iD connectHandler:(id)self0;
- (void)connectToPeer:(id)peer token:(id)token inboundConnection:(BOOL)connection controlFlags:(unint64_t)flags applicationService:(id)service listenerID:(id)d automapListener:(BOOL)listener connectionID:(id)self0 connectHandler:(id)self1 lostHandler:(id)self2;
- (void)dealloc;
- (void)handleConnectionData:(BOOL)data;
- (void)receiveDataForConnection:(id)connection statusHandler:(id)handler;
- (void)receiveWithRequestID:(id)d receiveHandler:(id)handler;
- (void)resolvePeer:(id)peer token:(id)token controlFlags:(unint64_t)flags applicationService:(id)service clientPublicKey:(id)key resolveHandler:(id)handler;
- (void)sendDataForConnection:(id)connection token:(id)token applicationService:(id)service connectionID:(id)d responseHandler:(id)handler;
- (void)startDiscovery:(unsigned int)discovery applicationService:(id)service controlFlags:(unint64_t)flags deviceFilter:(id)filter startHandler:(id)handler connectedHandler:(id)connectedHandler updateHandler:(id)updateHandler lostHandler:(id)self0 invalidationHandler:(id)self1;
- (void)stopDiscovery;
@end

@implementation RPNWPeer

- (RPNWPeer)init
{
  v7.receiver = self;
  v7.super_class = RPNWPeer;
  v2 = [(RPNWPeer *)&v7 init];
  if (v2)
  {
    v3 = +[RPNWNetworkAgent sharedNetworkAgent];
    dispatchQueue = [v3 dispatchQueue];
    [(RPNWPeer *)v2 setDispatchQueue:dispatchQueue];

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWPeer;
  [(RPNWPeer *)&v2 dealloc];
}

+ (BOOL)shouldIncludeDevice:(id)device deviceTypes:(unsigned int)types controlFlags:(unint64_t)flags
{
  deviceCopy = device;
  model = [deviceCopy model];
  if (model)
  {
    model2 = [deviceCopy model];
    v12 = [model2 containsString:@"?"];
  }

  else
  {
    v12 = 1;
  }

  if (types == -1)
  {
    v13 = 1;
    goto LABEL_40;
  }

  if (types)
  {
    model = [deviceCopy model];
    if ([model containsString:@"iPhone"])
    {
      v13 = 1;
LABEL_39:

      goto LABEL_40;
    }
  }

  if ((types & 2) != 0)
  {
    model2 = [deviceCopy model];
    if ([model2 containsString:@"iPad"])
    {
      v13 = 1;
      goto LABEL_45;
    }
  }

  if ((types & 4) != 0)
  {
    model3 = [deviceCopy model];
    if ([model3 containsString:@"Mac"])
    {
      v13 = 1;
      goto LABEL_44;
    }

    v24 = model3;
  }

  if ((types & 8) != 0)
  {
    model4 = [deviceCopy model];
    if ([model4 containsString:@"Watch"])
    {
      v13 = 1;
LABEL_35:

      goto LABEL_36;
    }
  }

  if ((types & 0x10) != 0)
  {
    model3 = [deviceCopy model];
    if ([model3 containsString:@"AppleTV"])
    {
      v13 = 1;
      goto LABEL_48;
    }
  }

  if ((types & 0x20) == 0)
  {
    if ((types & 0x40) == 0)
    {
      v13 = 0;
      if ((types & 0x10) != 0)
      {
        goto LABEL_48;
      }

LABEL_34:
      if ((types & 8) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

  model5 = [deviceCopy model];
  if (![model5 containsString:@"AudioAccessory"])
  {
    if ((types & 0x40) == 0)
    {
      v13 = 0;
LABEL_47:

      if ((types & 0x10) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

    v22 = model5;
LABEL_32:
    [deviceCopy model];
    v15 = model2;
    v16 = model3;
    v18 = v17 = model4;
    v13 = [v18 containsString:@"RealityDevice"];

    model4 = v17;
    model3 = v16;
    model2 = v15;
    model5 = v23;
    if ((types & 0x20) == 0)
    {
      if ((types & 0x10) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

    goto LABEL_47;
  }

  v13 = 1;
  if ((types & 0x10) == 0)
  {
    goto LABEL_34;
  }

LABEL_48:

  if ((types & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  model3 = v24;
  if ((types & 4) == 0)
  {
    if ((types & 2) != 0)
    {
      goto LABEL_45;
    }

LABEL_38:
    if ((types & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_44:

  if ((types & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_45:

  if (types)
  {
    goto LABEL_39;
  }

LABEL_40:
  if ((flags & 0x380000103C00) != 0)
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v13;

  return v20 & 1;
}

- (void)startDiscovery:(unsigned int)discovery applicationService:(id)service controlFlags:(unint64_t)flags deviceFilter:(id)filter startHandler:(id)handler connectedHandler:(id)connectedHandler updateHandler:(id)updateHandler lostHandler:(id)self0 invalidationHandler:(id)self1
{
  serviceCopy = service;
  filterCopy = filter;
  handlerCopy = handler;
  connectedHandlerCopy = connectedHandler;
  updateHandlerCopy = updateHandler;
  lostHandlerCopy = lostHandler;
  invalidationHandlerCopy = invalidationHandler;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_10012301C(self);
  }

  [(RPNWPeer *)self setControlFlags:flags];
  [(RPNWPeer *)self setDeviceFilter:filterCopy];
  if (![(RPNWPeer *)self rssiThreshold])
  {
    [(RPNWPeer *)self setRssiThreshold:[(RPNWPeer *)self _rssiThresholdForApplicationService:serviceCopy]];
  }

  v23 = _os_feature_enabled_impl();
  v32 = filterCopy;
  if ((flags & 0x10000) != 0 && v23)
  {
    [(RPNWPeer *)self setBleScreenOffRescanInterval:900];
    goto LABEL_13;
  }

  if (dword_1001D4728 <= 10 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_1001230A8();
    if ((flags & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((flags & 0x10000) != 0)
  {
LABEL_13:
    [(RPNWPeer *)self setBleScreenOffScanRate:10];
  }

LABEL_14:
  v24 = +[RPNWNetworkAgent sharedNetworkAgent];
  dispatchQueue = [v24 dispatchQueue];
  [(RPNWPeer *)self setDispatchQueue:dispatchQueue];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10008C4E4;
  v43[3] = &unk_1001ADE78;
  discoveryCopy = discovery;
  v44 = connectedHandlerCopy;
  flagsCopy = flags;
  v26 = connectedHandlerCopy;
  [(RPNWPeer *)self setDeviceFoundHandler:v43];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10008C558;
  v41[3] = &unk_1001ADEA0;
  v42 = updateHandlerCopy;
  v27 = updateHandlerCopy;
  [(RPNWPeer *)self setDeviceChangedHandler:v41];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10008C570;
  v39[3] = &unk_1001ADEC8;
  v40 = lostHandlerCopy;
  v28 = lostHandlerCopy;
  [(RPNWPeer *)self setDeviceLostHandler:v39];
  [(RPNWPeer *)self setInvalidationHandler:invalidationHandlerCopy];
  invalidationHandler = [(RPNWPeer *)self invalidationHandler];
  [(RPNWPeer *)self setInterruptionHandler:invalidationHandler];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10008C580;
  v34[3] = &unk_1001ADEF0;
  v34[4] = self;
  v35 = invalidationHandlerCopy;
  discoveryCopy2 = discovery;
  v36 = handlerCopy;
  flagsCopy2 = flags;
  v30 = handlerCopy;
  v31 = invalidationHandlerCopy;
  [(RPNWPeer *)self activateWithCompletion:v34];
}

- (void)stopDiscovery
{
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123174(self);
  }

  [(RPNWPeer *)self invalidate];
}

- (void)resolvePeer:(id)peer token:(id)token controlFlags:(unint64_t)flags applicationService:(id)service clientPublicKey:(id)key resolveHandler:(id)handler
{
  peerCopy = peer;
  tokenCopy = token;
  serviceCopy = service;
  keyCopy = key;
  handlerCopy = handler;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    v26 = tokenCopy;
    v27 = peerCopy;
    LogPrintF();
  }

  v19 = [RPNWNetworkAgent sharedNetworkAgent:v26];
  dispatchQueue = [v19 dispatchQueue];
  [(RPNWPeer *)self setDispatchQueue:dispatchQueue];

  [(RPNWPeer *)self setDestinationDevice:peerCopy];
  [(RPNWPeer *)self setControlFlags:flags];
  if (_os_feature_enabled_impl())
  {
    [(RPNWPeer *)self setServiceType:serviceCopy];
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10008CA3C;
  v28[3] = &unk_1001ADF40;
  v29 = tokenCopy;
  v30 = peerCopy;
  selfCopy = self;
  v32 = serviceCopy;
  v33 = keyCopy;
  v34 = handlerCopy;
  v21 = keyCopy;
  v22 = serviceCopy;
  v23 = handlerCopy;
  v24 = peerCopy;
  v25 = tokenCopy;
  [(RPNWPeer *)self activateWithCompletion:v28];
}

- (void)connectToOneAPIPeer:(id)peer token:(id)token inboundConnection:(BOOL)connection applicationService:(id)service listenerID:(id)d automapListener:(BOOL)listener connectionID:(id)iD connectHandler:(id)self0
{
  peerCopy = peer;
  tokenCopy = token;
  handlerCopy = handler;
  v19 = handlerCopy;
  if (connection)
  {
    (*(handlerCopy + 2))(handlerCopy, 2, 0);
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10008CD5C;
    v21[3] = &unk_1001ADF68;
    v22 = tokenCopy;
    v23 = peerCopy;
    v24 = v19;
    LOBYTE(v20) = listener;
    [(RPNWPeer *)self sendWithRequestID:@"com.apple.oneapi.connection" token:v22 data:0 status:0 applicationService:service clientPublicKey:0 listenerID:d automapListener:v20 connectionID:iD responseHandler:v21];
  }
}

- (void)connectToPeer:(id)peer token:(id)token inboundConnection:(BOOL)connection controlFlags:(unint64_t)flags applicationService:(id)service listenerID:(id)d automapListener:(BOOL)listener connectionID:(id)self0 connectHandler:(id)self1 lostHandler:(id)self2
{
  peerCopy = peer;
  tokenCopy = token;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  lostHandlerCopy = lostHandler;
  v23 = +[RPNWNetworkAgent sharedNetworkAgent];
  dispatchQueue = [v23 dispatchQueue];
  [(RPNWPeer *)self setDispatchQueue:dispatchQueue];

  [(RPNWPeer *)self setDestinationDevice:peerCopy];
  if (flags)
  {
    flagsCopy = flags;
  }

  else
  {
    flagsCopy = 32774;
  }

  [(RPNWPeer *)self setControlFlags:flagsCopy];
  if (_os_feature_enabled_impl() && !connection)
  {
    [(RPNWPeer *)self setServiceType:serviceCopy];
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10008D058;
  v35[3] = &unk_1001ADFB8;
  v36 = tokenCopy;
  v37 = peerCopy;
  v42 = handlerCopy;
  v43 = lostHandlerCopy;
  connectionCopy = connection;
  selfCopy = self;
  v39 = serviceCopy;
  listenerCopy = listener;
  v40 = dCopy;
  v41 = iDCopy;
  v26 = iDCopy;
  v27 = dCopy;
  v28 = serviceCopy;
  v29 = lostHandlerCopy;
  v30 = handlerCopy;
  v31 = peerCopy;
  v32 = tokenCopy;
  [(RPNWPeer *)self activateWithCompletion:v35];
}

- (int)findListenerAndCreateConnection:(id)connection version:(id)version applicationService:(id)service listenerID:(id)d connectionID:(id)iD
{
  connectionCopy = connection;
  versionCopy = version;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  if (dword_1001D4728 <= 40 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    v33 = serviceCopy;
    v36 = connectionCopy;
    LogPrintF();
  }

  v16 = [RPNWListener findListenerForID:dCopy applicationService:serviceCopy fromPeer:connectionCopy, v33, v36];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 getConnectionWithID:iDCopy];
    v44 = dCopy;
    if (v18)
    {
      v19 = v18;
      if (dword_1001D4728 <= 40 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        sub_100123404();
      }
    }

    else
    {
      v21 = [RPNWConnection alloc];
      v22 = +[NSUUID UUID];
      v19 = [(RPNWConnection *)v21 initWithPeer:connectionCopy token:0 version:versionCopy inbound:1 internal:1 applicationService:serviceCopy connectionID:iDCopy endpointID:v22];

      [v17 addIncomingConnection:v19];
      if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        v34 = v19;
        v37 = v17;
        LogPrintF();
      }
    }

    v23 = iDCopy;
    memset(buffer, 0, 96);
    v24 = proc_pidinfo([v17 pid], 4, 0, buffer, 96);
    v25 = versionCopy;
    if (v24 == 96)
    {
      if (dword_1001D4728 > 30 || dword_1001D4728 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_27;
      }
    }

    else if (dword_1001D4728 > 30 || dword_1001D4728 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_27;
    }

    sub_100123444(v17);
LABEL_27:
    agentClient = [v17 agentClient];
    flowToken = [agentClient flowToken];
    [(RPNWConnection *)v19 setToken:flowToken];

    if (v24 == 96)
    {
      versionCopy = v25;
      if (agentClient)
      {
        iDCopy = v23;
        if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
        {
          sub_1001234E8(v19);
        }

        [(RPNWConnection *)v19 setIsConnected:1];
        dCopy = v44;
        if ([v17 hasTriggeredConnection])
        {
          if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
          {
            sub_100123540(v19);
          }

          [(RPNWConnection *)v19 setIsTriggerable:1];
        }

        else
        {
          [v17 startConnection:v19 agentClient:agentClient];
        }

        [versionCopy doubleValue];
        if (v31 >= 2.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }
      }

      else
      {
        v39 = connectionCopy;
        v43 = v25;
        iDCopy = v23;
        if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
        {
          sub_100123598(v19);
        }

        peer = [(RPNWConnection *)v19 peer];
        peer2 = [(RPNWConnection *)v19 peer];
        destinationDevice = [peer2 destinationDevice];
        token = [(RPNWConnection *)v19 token];
        inbound = [(RPNWConnection *)v19 inbound];
        endpointUUID = [(RPNWConnection *)v19 endpointUUID];
        connectionUUID = [(RPNWConnection *)v19 connectionUUID];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10008D8BC;
        v45[3] = &unk_1001ADFE0;
        v46 = v19;
        LOBYTE(v35) = 0;
        [peer connectToPeer:destinationDevice token:token inboundConnection:inbound controlFlags:0 applicationService:serviceCopy listenerID:endpointUUID automapListener:v35 connectionID:connectionUUID connectHandler:v45 lostHandler:&stru_1001AE000];

        v20 = 1;
        versionCopy = v43;
        dCopy = v44;
        connectionCopy = v39;
      }
    }

    else
    {
      versionCopy = v25;
      if (dword_1001D4728 > 30)
      {
        v20 = 0;
        iDCopy = v23;
      }

      else
      {
        iDCopy = v23;
        if (dword_1001D4728 != -1 || _LogCategory_Initialize())
        {
          sub_100123490(v19);
        }

        v20 = 0;
      }

      dCopy = v44;
    }

    goto LABEL_52;
  }

  if (dword_1001D4728 <= 90 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123620();
  }

  v20 = 0;
LABEL_52:

  return v20;
}

- (void)handleConnectionData:(BOOL)data
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008DA10;
  v3[3] = &unk_1001AD530;
  dataCopy = data;
  [(RPNWPeer *)self receiveDataForConnection:v3 statusHandler:&stru_1001AE020];
}

+ (id)createNWEndpointWithID:(id)d agentID:(id)iD applicationService:(id)service
{
  serviceCopy = service;
  iDCopy = iD;
  dCopy = d;
  v11 = objc_alloc_init(RPNWEndpoint);
  [(RPNWEndpoint *)v11 setEndpointUUID:dCopy];

  v12 = [self createNWEndpointForEndpoint:v11 agentID:iDCopy applicationService:serviceCopy];

  return v12;
}

+ (id)createNWEndpointForEndpoint:(id)endpoint agentID:(id)d applicationService:(id)service
{
  endpointCopy = endpoint;
  dCopy = d;
  serviceCopy = service;
  [serviceCopy UTF8String];
  v17[0] = 0;
  v17[1] = 0;
  endpointUUID = [endpointCopy endpointUUID];
  [endpointUUID getUUIDBytes:v17];

  application_service = nw_endpoint_create_application_service();
  if (dCopy)
  {
    v16[0] = 0;
    v16[1] = 0;
    [dCopy getUUIDBytes:v16];
    nw_endpoint_set_agent_identifier();
  }

  device = [endpointCopy device];

  if (device)
  {
    v13 = objc_opt_class();
    device2 = [endpointCopy device];
    [v13 updateEndpoint:application_service forDevice:device2 applicationService:serviceCopy];
  }

  return application_service;
}

+ (id)createNWEndpointForDevice:(id)device applicationService:(id)service
{
  serviceCopy = service;
  serviceCopy2 = service;
  deviceCopy = device;
  [serviceCopy2 UTF8String];
  memset(out, 0, sizeof(out));
  uuid_generate(out);
  application_service = nw_endpoint_create_application_service();
  [objc_opt_class() updateEndpoint:application_service forDevice:deviceCopy applicationService:serviceCopy2];

  return application_service;
}

+ (void)updateEndpoint:(id)endpoint forDevice:(id)device applicationService:(id)service
{
  endpointCopy = endpoint;
  deviceCopy = device;
  serviceCopy = service;
  name = [deviceCopy name];

  if (name)
  {
    name2 = [deviceCopy name];
    if ([name2 length] < 0x41)
    {
      v11 = name2;
    }

    else
    {
      v11 = [name2 substringToIndex:64];

      if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        sub_1001238F8();
      }
    }

    [v11 UTF8String];
    nw_endpoint_set_device_name();
  }

  contactID = [deviceCopy contactID];

  if (contactID)
  {
    contactID2 = [deviceCopy contactID];
    [contactID2 UTF8String];
    nw_endpoint_set_contact_id();
  }

  model = [deviceCopy model];

  if (model)
  {
    model2 = [deviceCopy model];
    [model2 UTF8String];
    nw_endpoint_set_device_model();
  }

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  if (idsDeviceIdentifier)
  {
    idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
    [idsDeviceIdentifier2 UTF8String];
    nw_endpoint_set_device_id();
  }

  v18 = [objc_opt_class() createTXTRecordForEndpoint:deviceCopy applicationService:serviceCopy];

  nw_endpoint_set_txt_record();
}

+ (id)createTXTRecordForEndpoint:(id)endpoint alternativeDevice:(id)device applicationService:(id)service
{
  endpointCopy = endpoint;
  deviceCopy = device;
  serviceCopy = service;
  dictionary = nw_txt_record_create_dictionary();
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [endpointCopy activityLevel]);
  stringValue = [v11 stringValue];
  v13 = [stringValue cStringUsingEncoding:4];

  v14 = strlen(v13);
  nw_txt_record_set_key(dictionary, "ActivityLevel", v13, v14);
  v15 = +[RPIdentityDaemon sharedIdentityDaemon];
  idsDeviceIdentifier = [endpointCopy idsDeviceIdentifier];
  v17 = [v15 featureFlagsForIdentityMatchingIDSDeviceIdentifier:idsDeviceIdentifier];

  if (v17)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:v17];
    stringValue2 = [v18 stringValue];
    v20 = [stringValue2 cStringUsingEncoding:4];

    v21 = strlen(v20);
    nw_txt_record_set_key(dictionary, "FeatureFlags", v20, v21);
  }

  statusFlags = [endpointCopy statusFlags];
  if ([deviceCopy statusFlags] | statusFlags)
  {
    v23 = [NSNumber numberWithUnsignedLongLong:?];
    stringValue3 = [v23 stringValue];
    v25 = [stringValue3 cStringUsingEncoding:4];

    v26 = strlen(v25);
    nw_txt_record_set_key(dictionary, "StatusFlags", v25, v26);
  }

  if (endpointCopy)
  {
    [endpointCopy operatingSystemVersion];
  }

  else
  {
    memset(v64, 0, sizeof(v64));
  }

  v27 = sub_10000F224(v64);
  v28 = v27;
  if (v27)
  {
    v29 = [v27 cStringUsingEncoding:4];
    if (v29)
    {
      v30 = v29;
      v31 = strlen(v29);
      nw_txt_record_set_key(dictionary, "OSVersion", v30, v31);
    }
  }

  if (serviceCopy)
  {
    serviceTypes = [endpointCopy serviceTypes];
    v33 = [serviceTypes containsObject:serviceCopy];

    if (v33)
    {
      v34 = [NSNumber numberWithBool:1];
      stringValue4 = [v34 stringValue];
      v36 = [stringValue4 cStringUsingEncoding:4];

      v37 = strlen(v36);
      nw_txt_record_set_key(dictionary, "HasService", v36, v37);
    }

    v38 = +[_TtC8rapportd27RPApplicationServiceMonitor shared];
    idsDeviceIdentifier2 = [endpointCopy idsDeviceIdentifier];
    v40 = [v38 payloadFor:idsDeviceIdentifier2 serviceIdentifier:serviceCopy];

    if (v40)
    {
      v41 = [v40 base64EncodedStringWithOptions:0];
      v42 = [v41 cStringUsingEncoding:4];

      v43 = strlen(v42);
      nw_txt_record_set_key(dictionary, "Payload", v42, v43);
    }
  }

  txtRecord = [endpointCopy txtRecord];
  v45 = txtRecord;
  if (txtRecord)
  {
    v57 = v28;
    v58 = serviceCopy;
    v59 = deviceCopy;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    allKeys = [txtRecord allKeys];
    v47 = [allKeys countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v61;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v61 != v49)
          {
            objc_enumerationMutation(allKeys);
          }

          v51 = *(*(&v60 + 1) + 8 * i);
          v52 = [v51 cStringUsingEncoding:4];
          v53 = [v45 objectForKeyedSubscript:v51];
          v54 = [v53 cStringUsingEncoding:4];

          v55 = strlen(v54);
          nw_txt_record_set_key(dictionary, v52, v54, v55);
        }

        v48 = [allKeys countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v48);
    }

    serviceCopy = v58;
    deviceCopy = v59;
    v28 = v57;
  }

  return dictionary;
}

+ (const)responseCodeToString:(int)string
{
  if (string > 3)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AE0E0)[string];
  }
}

+ (const)statusCodeToString:(int)string
{
  if ((string - 1) > 4)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AE100)[string - 1];
  }
}

- (void)receiveWithRequestID:(id)d receiveHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123938();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E868;
  v10[3] = &unk_1001AD5C0;
  v11 = dCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = dCopy;
  [(RPNWPeer *)self registerRequestID:v9 options:0 handler:v10];
}

- (void)receiveDataForConnection:(id)connection statusHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008F57C;
  v8[3] = &unk_1001AE070;
  connectionCopy = connection;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = connectionCopy;
  [(RPNWPeer *)self receiveWithRequestID:@"com.apple.oneapi.data" receiveHandler:v8];
}

- (void)sendDataForConnection:(id)connection token:(id)token applicationService:(id)service connectionID:(id)d responseHandler:(id)handler
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008F83C;
  v14[3] = &unk_1001AE098;
  handlerCopy = handler;
  v12 = handlerCopy;
  LOBYTE(v13) = 0;
  [(RPNWPeer *)self sendWithRequestID:@"com.apple.oneapi.data" token:token data:connection status:0 applicationService:service clientPublicKey:0 listenerID:0 automapListener:v13 connectionID:d responseHandler:v14];
}

- (int64_t)_rssiThresholdForApplicationService:(id)service
{
  if ([service isEqualToString:@"com.apple.sharingd.AirDrop"])
  {
    return -80;
  }

  else
  {
    return 0;
  }
}

@end
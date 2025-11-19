@interface RPNWPeer
+ (BOOL)shouldIncludeDevice:(id)a3 deviceTypes:(unsigned int)a4 controlFlags:(unint64_t)a5;
+ (const)responseCodeToString:(int)a3;
+ (const)statusCodeToString:(int)a3;
+ (id)createNWEndpointForDevice:(id)a3 applicationService:(id)a4;
+ (id)createNWEndpointForEndpoint:(id)a3 agentID:(id)a4 applicationService:(id)a5;
+ (id)createNWEndpointWithID:(id)a3 agentID:(id)a4 applicationService:(id)a5;
+ (id)createTXTRecordForEndpoint:(id)a3 alternativeDevice:(id)a4 applicationService:(id)a5;
+ (void)updateEndpoint:(id)a3 forDevice:(id)a4 applicationService:(id)a5;
- (RPNWPeer)init;
- (int)findListenerAndCreateConnection:(id)a3 version:(id)a4 applicationService:(id)a5 listenerID:(id)a6 connectionID:(id)a7;
- (int64_t)_rssiThresholdForApplicationService:(id)a3;
- (void)connectToOneAPIPeer:(id)a3 token:(id)a4 inboundConnection:(BOOL)a5 applicationService:(id)a6 listenerID:(id)a7 automapListener:(BOOL)a8 connectionID:(id)a9 connectHandler:(id)a10;
- (void)connectToPeer:(id)a3 token:(id)a4 inboundConnection:(BOOL)a5 controlFlags:(unint64_t)a6 applicationService:(id)a7 listenerID:(id)a8 automapListener:(BOOL)a9 connectionID:(id)a10 connectHandler:(id)a11 lostHandler:(id)a12;
- (void)dealloc;
- (void)handleConnectionData:(BOOL)a3;
- (void)receiveDataForConnection:(id)a3 statusHandler:(id)a4;
- (void)receiveWithRequestID:(id)a3 receiveHandler:(id)a4;
- (void)resolvePeer:(id)a3 token:(id)a4 controlFlags:(unint64_t)a5 applicationService:(id)a6 clientPublicKey:(id)a7 resolveHandler:(id)a8;
- (void)sendDataForConnection:(id)a3 token:(id)a4 applicationService:(id)a5 connectionID:(id)a6 responseHandler:(id)a7;
- (void)startDiscovery:(unsigned int)a3 applicationService:(id)a4 controlFlags:(unint64_t)a5 deviceFilter:(id)a6 startHandler:(id)a7 connectedHandler:(id)a8 updateHandler:(id)a9 lostHandler:(id)a10 invalidationHandler:(id)a11;
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
    v4 = [v3 dispatchQueue];
    [(RPNWPeer *)v2 setDispatchQueue:v4];

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

+ (BOOL)shouldIncludeDevice:(id)a3 deviceTypes:(unsigned int)a4 controlFlags:(unint64_t)a5
{
  v10 = a3;
  v11 = [v10 model];
  if (v11)
  {
    v5 = [v10 model];
    v12 = [v5 containsString:@"?"];
  }

  else
  {
    v12 = 1;
  }

  if (a4 == -1)
  {
    v13 = 1;
    goto LABEL_40;
  }

  if (a4)
  {
    v11 = [v10 model];
    if ([v11 containsString:@"iPhone"])
    {
      v13 = 1;
LABEL_39:

      goto LABEL_40;
    }
  }

  if ((a4 & 2) != 0)
  {
    v5 = [v10 model];
    if ([v5 containsString:@"iPad"])
    {
      v13 = 1;
      goto LABEL_45;
    }
  }

  if ((a4 & 4) != 0)
  {
    v6 = [v10 model];
    if ([v6 containsString:@"Mac"])
    {
      v13 = 1;
      goto LABEL_44;
    }

    v24 = v6;
  }

  if ((a4 & 8) != 0)
  {
    v7 = [v10 model];
    if ([v7 containsString:@"Watch"])
    {
      v13 = 1;
LABEL_35:

      goto LABEL_36;
    }
  }

  if ((a4 & 0x10) != 0)
  {
    v6 = [v10 model];
    if ([v6 containsString:@"AppleTV"])
    {
      v13 = 1;
      goto LABEL_48;
    }
  }

  if ((a4 & 0x20) == 0)
  {
    if ((a4 & 0x40) == 0)
    {
      v13 = 0;
      if ((a4 & 0x10) != 0)
      {
        goto LABEL_48;
      }

LABEL_34:
      if ((a4 & 8) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v14 = [v10 model];
  if (![v14 containsString:@"AudioAccessory"])
  {
    if ((a4 & 0x40) == 0)
    {
      v13 = 0;
LABEL_47:

      if ((a4 & 0x10) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

    v22 = v14;
LABEL_32:
    [v10 model];
    v15 = v5;
    v16 = v6;
    v18 = v17 = v7;
    v13 = [v18 containsString:@"RealityDevice"];

    v7 = v17;
    v6 = v16;
    v5 = v15;
    v14 = v23;
    if ((a4 & 0x20) == 0)
    {
      if ((a4 & 0x10) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

    goto LABEL_47;
  }

  v13 = 1;
  if ((a4 & 0x10) == 0)
  {
    goto LABEL_34;
  }

LABEL_48:

  if ((a4 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  v6 = v24;
  if ((a4 & 4) == 0)
  {
    if ((a4 & 2) != 0)
    {
      goto LABEL_45;
    }

LABEL_38:
    if ((a4 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_44:

  if ((a4 & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_45:

  if (a4)
  {
    goto LABEL_39;
  }

LABEL_40:
  if ((a5 & 0x380000103C00) != 0)
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

- (void)startDiscovery:(unsigned int)a3 applicationService:(id)a4 controlFlags:(unint64_t)a5 deviceFilter:(id)a6 startHandler:(id)a7 connectedHandler:(id)a8 updateHandler:(id)a9 lostHandler:(id)a10 invalidationHandler:(id)a11
{
  v33 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_10012301C(self);
  }

  [(RPNWPeer *)self setControlFlags:a5];
  [(RPNWPeer *)self setDeviceFilter:v17];
  if (![(RPNWPeer *)self rssiThreshold])
  {
    [(RPNWPeer *)self setRssiThreshold:[(RPNWPeer *)self _rssiThresholdForApplicationService:v33]];
  }

  v23 = _os_feature_enabled_impl();
  v32 = v17;
  if ((a5 & 0x10000) != 0 && v23)
  {
    [(RPNWPeer *)self setBleScreenOffRescanInterval:900];
    goto LABEL_13;
  }

  if (dword_1001D4728 <= 10 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_1001230A8();
    if ((a5 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((a5 & 0x10000) != 0)
  {
LABEL_13:
    [(RPNWPeer *)self setBleScreenOffScanRate:10];
  }

LABEL_14:
  v24 = +[RPNWNetworkAgent sharedNetworkAgent];
  v25 = [v24 dispatchQueue];
  [(RPNWPeer *)self setDispatchQueue:v25];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10008C4E4;
  v43[3] = &unk_1001ADE78;
  v46 = a3;
  v44 = v19;
  v45 = a5;
  v26 = v19;
  [(RPNWPeer *)self setDeviceFoundHandler:v43];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10008C558;
  v41[3] = &unk_1001ADEA0;
  v42 = v20;
  v27 = v20;
  [(RPNWPeer *)self setDeviceChangedHandler:v41];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10008C570;
  v39[3] = &unk_1001ADEC8;
  v40 = v21;
  v28 = v21;
  [(RPNWPeer *)self setDeviceLostHandler:v39];
  [(RPNWPeer *)self setInvalidationHandler:v22];
  v29 = [(RPNWPeer *)self invalidationHandler];
  [(RPNWPeer *)self setInterruptionHandler:v29];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10008C580;
  v34[3] = &unk_1001ADEF0;
  v34[4] = self;
  v35 = v22;
  v38 = a3;
  v36 = v18;
  v37 = a5;
  v30 = v18;
  v31 = v22;
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

- (void)resolvePeer:(id)a3 token:(id)a4 controlFlags:(unint64_t)a5 applicationService:(id)a6 clientPublicKey:(id)a7 resolveHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    v26 = v15;
    v27 = v14;
    LogPrintF();
  }

  v19 = [RPNWNetworkAgent sharedNetworkAgent:v26];
  v20 = [v19 dispatchQueue];
  [(RPNWPeer *)self setDispatchQueue:v20];

  [(RPNWPeer *)self setDestinationDevice:v14];
  [(RPNWPeer *)self setControlFlags:a5];
  if (_os_feature_enabled_impl())
  {
    [(RPNWPeer *)self setServiceType:v16];
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10008CA3C;
  v28[3] = &unk_1001ADF40;
  v29 = v15;
  v30 = v14;
  v31 = self;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v18;
  v24 = v14;
  v25 = v15;
  [(RPNWPeer *)self activateWithCompletion:v28];
}

- (void)connectToOneAPIPeer:(id)a3 token:(id)a4 inboundConnection:(BOOL)a5 applicationService:(id)a6 listenerID:(id)a7 automapListener:(BOOL)a8 connectionID:(id)a9 connectHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a10;
  v19 = v18;
  if (a5)
  {
    (*(v18 + 2))(v18, 2, 0);
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10008CD5C;
    v21[3] = &unk_1001ADF68;
    v22 = v17;
    v23 = v16;
    v24 = v19;
    LOBYTE(v20) = a8;
    [(RPNWPeer *)self sendWithRequestID:@"com.apple.oneapi.connection" token:v22 data:0 status:0 applicationService:a6 clientPublicKey:0 listenerID:a7 automapListener:v20 connectionID:a9 responseHandler:v21];
  }
}

- (void)connectToPeer:(id)a3 token:(id)a4 inboundConnection:(BOOL)a5 controlFlags:(unint64_t)a6 applicationService:(id)a7 listenerID:(id)a8 automapListener:(BOOL)a9 connectionID:(id)a10 connectHandler:(id)a11 lostHandler:(id)a12
{
  v17 = a3;
  v34 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = +[RPNWNetworkAgent sharedNetworkAgent];
  v24 = [v23 dispatchQueue];
  [(RPNWPeer *)self setDispatchQueue:v24];

  [(RPNWPeer *)self setDestinationDevice:v17];
  if (a6)
  {
    v25 = a6;
  }

  else
  {
    v25 = 32774;
  }

  [(RPNWPeer *)self setControlFlags:v25];
  if (_os_feature_enabled_impl() && !a5)
  {
    [(RPNWPeer *)self setServiceType:v18];
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10008D058;
  v35[3] = &unk_1001ADFB8;
  v36 = v34;
  v37 = v17;
  v42 = v21;
  v43 = v22;
  v44 = a5;
  v38 = self;
  v39 = v18;
  v45 = a9;
  v40 = v19;
  v41 = v20;
  v26 = v20;
  v27 = v19;
  v28 = v18;
  v29 = v22;
  v30 = v21;
  v31 = v17;
  v32 = v34;
  [(RPNWPeer *)self activateWithCompletion:v35];
}

- (int)findListenerAndCreateConnection:(id)a3 version:(id)a4 applicationService:(id)a5 listenerID:(id)a6 connectionID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (dword_1001D4728 <= 40 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    v33 = v13;
    v36 = v11;
    LogPrintF();
  }

  v16 = [RPNWListener findListenerForID:v14 applicationService:v13 fromPeer:v11, v33, v36];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 getConnectionWithID:v15];
    v44 = v14;
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
      v19 = [(RPNWConnection *)v21 initWithPeer:v11 token:0 version:v12 inbound:1 internal:1 applicationService:v13 connectionID:v15 endpointID:v22];

      [v17 addIncomingConnection:v19];
      if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        v34 = v19;
        v37 = v17;
        LogPrintF();
      }
    }

    v23 = v15;
    memset(buffer, 0, 96);
    v24 = proc_pidinfo([v17 pid], 4, 0, buffer, 96);
    v25 = v12;
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
    v26 = [v17 agentClient];
    v27 = [v26 flowToken];
    [(RPNWConnection *)v19 setToken:v27];

    if (v24 == 96)
    {
      v12 = v25;
      if (v26)
      {
        v15 = v23;
        if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
        {
          sub_1001234E8(v19);
        }

        [(RPNWConnection *)v19 setIsConnected:1];
        v14 = v44;
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
          [v17 startConnection:v19 agentClient:v26];
        }

        [v12 doubleValue];
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
        v39 = v11;
        v43 = v25;
        v15 = v23;
        if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
        {
          sub_100123598(v19);
        }

        v41 = [(RPNWConnection *)v19 peer];
        v42 = [(RPNWConnection *)v19 peer];
        v38 = [v42 destinationDevice];
        v28 = [(RPNWConnection *)v19 token];
        v40 = [(RPNWConnection *)v19 inbound];
        v29 = [(RPNWConnection *)v19 endpointUUID];
        v30 = [(RPNWConnection *)v19 connectionUUID];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10008D8BC;
        v45[3] = &unk_1001ADFE0;
        v46 = v19;
        LOBYTE(v35) = 0;
        [v41 connectToPeer:v38 token:v28 inboundConnection:v40 controlFlags:0 applicationService:v13 listenerID:v29 automapListener:v35 connectionID:v30 connectHandler:v45 lostHandler:&stru_1001AE000];

        v20 = 1;
        v12 = v43;
        v14 = v44;
        v11 = v39;
      }
    }

    else
    {
      v12 = v25;
      if (dword_1001D4728 > 30)
      {
        v20 = 0;
        v15 = v23;
      }

      else
      {
        v15 = v23;
        if (dword_1001D4728 != -1 || _LogCategory_Initialize())
        {
          sub_100123490(v19);
        }

        v20 = 0;
      }

      v14 = v44;
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

- (void)handleConnectionData:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008DA10;
  v3[3] = &unk_1001AD530;
  v4 = a3;
  [(RPNWPeer *)self receiveDataForConnection:v3 statusHandler:&stru_1001AE020];
}

+ (id)createNWEndpointWithID:(id)a3 agentID:(id)a4 applicationService:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(RPNWEndpoint);
  [(RPNWEndpoint *)v11 setEndpointUUID:v10];

  v12 = [a1 createNWEndpointForEndpoint:v11 agentID:v9 applicationService:v8];

  return v12;
}

+ (id)createNWEndpointForEndpoint:(id)a3 agentID:(id)a4 applicationService:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v9 UTF8String];
  v17[0] = 0;
  v17[1] = 0;
  v10 = [v7 endpointUUID];
  [v10 getUUIDBytes:v17];

  application_service = nw_endpoint_create_application_service();
  if (v8)
  {
    v16[0] = 0;
    v16[1] = 0;
    [v8 getUUIDBytes:v16];
    nw_endpoint_set_agent_identifier();
  }

  v12 = [v7 device];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = [v7 device];
    [v13 updateEndpoint:application_service forDevice:v14 applicationService:v9];
  }

  return application_service;
}

+ (id)createNWEndpointForDevice:(id)a3 applicationService:(id)a4
{
  v6 = a4;
  v7 = a4;
  v8 = a3;
  [v7 UTF8String];
  memset(out, 0, sizeof(out));
  uuid_generate(out);
  application_service = nw_endpoint_create_application_service();
  [objc_opt_class() updateEndpoint:application_service forDevice:v8 applicationService:v7];

  return application_service;
}

+ (void)updateEndpoint:(id)a3 forDevice:(id)a4 applicationService:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 name];

  if (v9)
  {
    v10 = [v7 name];
    if ([v10 length] < 0x41)
    {
      v11 = v10;
    }

    else
    {
      v11 = [v10 substringToIndex:64];

      if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
      {
        sub_1001238F8();
      }
    }

    [v11 UTF8String];
    nw_endpoint_set_device_name();
  }

  v12 = [v7 contactID];

  if (v12)
  {
    v13 = [v7 contactID];
    [v13 UTF8String];
    nw_endpoint_set_contact_id();
  }

  v14 = [v7 model];

  if (v14)
  {
    v15 = [v7 model];
    [v15 UTF8String];
    nw_endpoint_set_device_model();
  }

  v16 = [v7 idsDeviceIdentifier];

  if (v16)
  {
    v17 = [v7 idsDeviceIdentifier];
    [v17 UTF8String];
    nw_endpoint_set_device_id();
  }

  v18 = [objc_opt_class() createTXTRecordForEndpoint:v7 applicationService:v8];

  nw_endpoint_set_txt_record();
}

+ (id)createTXTRecordForEndpoint:(id)a3 alternativeDevice:(id)a4 applicationService:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  dictionary = nw_txt_record_create_dictionary();
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 activityLevel]);
  v12 = [v11 stringValue];
  v13 = [v12 cStringUsingEncoding:4];

  v14 = strlen(v13);
  nw_txt_record_set_key(dictionary, "ActivityLevel", v13, v14);
  v15 = +[RPIdentityDaemon sharedIdentityDaemon];
  v16 = [v7 idsDeviceIdentifier];
  v17 = [v15 featureFlagsForIdentityMatchingIDSDeviceIdentifier:v16];

  if (v17)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:v17];
    v19 = [v18 stringValue];
    v20 = [v19 cStringUsingEncoding:4];

    v21 = strlen(v20);
    nw_txt_record_set_key(dictionary, "FeatureFlags", v20, v21);
  }

  v22 = [v7 statusFlags];
  if ([v8 statusFlags] | v22)
  {
    v23 = [NSNumber numberWithUnsignedLongLong:?];
    v24 = [v23 stringValue];
    v25 = [v24 cStringUsingEncoding:4];

    v26 = strlen(v25);
    nw_txt_record_set_key(dictionary, "StatusFlags", v25, v26);
  }

  if (v7)
  {
    [v7 operatingSystemVersion];
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

  if (v9)
  {
    v32 = [v7 serviceTypes];
    v33 = [v32 containsObject:v9];

    if (v33)
    {
      v34 = [NSNumber numberWithBool:1];
      v35 = [v34 stringValue];
      v36 = [v35 cStringUsingEncoding:4];

      v37 = strlen(v36);
      nw_txt_record_set_key(dictionary, "HasService", v36, v37);
    }

    v38 = +[_TtC8rapportd27RPApplicationServiceMonitor shared];
    v39 = [v7 idsDeviceIdentifier];
    v40 = [v38 payloadFor:v39 serviceIdentifier:v9];

    if (v40)
    {
      v41 = [v40 base64EncodedStringWithOptions:0];
      v42 = [v41 cStringUsingEncoding:4];

      v43 = strlen(v42);
      nw_txt_record_set_key(dictionary, "Payload", v42, v43);
    }
  }

  v44 = [v7 txtRecord];
  v45 = v44;
  if (v44)
  {
    v57 = v28;
    v58 = v9;
    v59 = v8;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v46 = [v44 allKeys];
    v47 = [v46 countByEnumeratingWithState:&v60 objects:v65 count:16];
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
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v60 + 1) + 8 * i);
          v52 = [v51 cStringUsingEncoding:4];
          v53 = [v45 objectForKeyedSubscript:v51];
          v54 = [v53 cStringUsingEncoding:4];

          v55 = strlen(v54);
          nw_txt_record_set_key(dictionary, v52, v54, v55);
        }

        v48 = [v46 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v48);
    }

    v9 = v58;
    v8 = v59;
    v28 = v57;
  }

  return dictionary;
}

+ (const)responseCodeToString:(int)a3
{
  if (a3 > 3)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AE0E0)[a3];
  }
}

+ (const)statusCodeToString:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AE100)[a3 - 1];
  }
}

- (void)receiveWithRequestID:(id)a3 receiveHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1001D4728 <= 30 && (dword_1001D4728 != -1 || _LogCategory_Initialize()))
  {
    sub_100123938();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008E868;
  v10[3] = &unk_1001AD5C0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(RPNWPeer *)self registerRequestID:v9 options:0 handler:v10];
}

- (void)receiveDataForConnection:(id)a3 statusHandler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008F57C;
  v8[3] = &unk_1001AE070;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(RPNWPeer *)self receiveWithRequestID:@"com.apple.oneapi.data" receiveHandler:v8];
}

- (void)sendDataForConnection:(id)a3 token:(id)a4 applicationService:(id)a5 connectionID:(id)a6 responseHandler:(id)a7
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008F83C;
  v14[3] = &unk_1001AE098;
  v15 = a7;
  v12 = v15;
  LOBYTE(v13) = 0;
  [(RPNWPeer *)self sendWithRequestID:@"com.apple.oneapi.data" token:a4 data:a3 status:0 applicationService:a5 clientPublicKey:0 listenerID:0 automapListener:v13 connectionID:a6 responseHandler:v14];
}

- (int64_t)_rssiThresholdForApplicationService:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.sharingd.AirDrop"])
  {
    return -80;
  }

  else
  {
    return 0;
  }
}

@end
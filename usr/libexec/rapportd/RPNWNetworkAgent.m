@interface RPNWNetworkAgent
+ (id)sharedNetworkAgent;
- (BOOL)_isTCPTransport:(id)a3;
- (BOOL)createBrowseAgent;
- (BOOL)createConnectionFramer:(id)a3 assign:(id)a4 local:(id)a5 remote:(id)a6 incomingConnection:(id)a7;
- (BOOL)createDDUIResolveAgent;
- (BOOL)createListenerFramer:(id)a3;
- (BOOL)createNearbyInvitationConnectionFramer:(id)a3 assign:(id)a4 local:(id)a5 remote:(id)a6 incomingConnection:(id)a7;
- (BOOL)createNetworkAgent;
- (BOOL)createPairingConnectionFramer:(id)a3 assign:(id)a4 local:(id)a5 remote:(id)a6 pin:(id)a7;
- (BOOL)createRapportServer;
- (BOOL)discoverDevices:(id)a3 response:(id)a4 context:(int)a5;
- (BOOL)setupBrowseHandlers;
- (BOOL)setupFlowHandlers;
- (BOOL)setupListenHandlers;
- (BOOL)setupPolicyWithQueue:(id)a3 browseAgent:(BOOL)a4;
- (BOOL)setupResolveHandlers;
- (RPNWNetworkAgent)init;
- (id)_applicationServiceAdvertiseDescriptorForClient:(id)a3;
- (id)_quicProtocolOptionsFromParameters:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)getDiscoveryDeviceTypesDescription:(unsigned int)a3;
- (id)getPersonaFromParameters:(id)a3;
- (unint64_t)convertBrowseParamsToControlFlags:(id)a3;
- (unint64_t)convertBrowseScopeToControlFlags:(unsigned int)a3;
- (unint64_t)convertConnectionParametersToControlFlags:(id)a3;
- (void)_completePendingKeyExchangeForAgentClient:(id)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_invokeKeyExchange:(id)a3 agentClient:(id)a4;
- (void)_update;
- (void)activate;
- (void)createListener:(id)a3 context:(int)a4;
- (void)createPairingListener:(id)a3 endpoint:(id)a4 pin:(id)a5;
- (void)dealloc;
- (void)exchangeQUICPublicKeyFor:(id)a3 publicKey:(id)a4 completion:(id)a5;
- (void)executeAgentLogicInPersona:(id)a3 pid:(int)a4 handlerDescription:(id)a5 handler:(id)a6;
- (void)invalidate;
- (void)resolveRequest:(id)a3 existingEndpoint:(id)a4 controlFlags:(unint64_t)a5 clientPublicKey:(id)a6 client:(id)a7 token:(id)a8;
- (void)setupAssertHandlers:(id)a3;
- (void)setupPolicyForDDUIResolveAgent;
- (void)setupResolveHandlersForDDUIResolveAgent;
- (void)startFlow:(id)a3 listener:(id)a4 client:(id)a5 assign:(id)a6 parameters:(id)a7;
@end

@implementation RPNWNetworkAgent

- (BOOL)createPairingConnectionFramer:(id)a3 assign:(id)a4 local:(id)a5 remote:(id)a6 pin:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (dword_1001D2EF0 <= 30)
  {
    if (dword_1001D2EF0 != -1 || _LogCategory_Initialize())
    {
      v40 = v13;
      v41 = v14;
      LogPrintF();
    }

    if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D4A8();
    }
  }

  v44 = v15;
  v53[0] = 0;
  v53[1] = 0;
  nw_endpoint_get_service_identifier();
  v16 = [[NSUUID alloc] initWithUUIDBytes:v53];
  v17 = [RPNWEndpoint findEndpoint:v16];
  if (v17)
  {
    v18 = v17;
    v42 = v13;
    v43 = v12;
    v46 = v16;
    goto LABEL_10;
  }

  apple_service_apple_id = nw_endpoint_get_apple_service_apple_id();
  if (apple_service_apple_id)
  {
    v28 = [NSString stringWithUTF8String:apple_service_apple_id];
    v29 = [[NSUUID alloc] initWithUUIDString:v28];

    v46 = v29;
    v30 = [RPNWEndpoint findEndpoint:v29];
    if (v30)
    {
      v18 = v30;
      v42 = v13;
      v43 = v12;

LABEL_10:
      v19 = [v18 applicationService];
      v20 = [RPNWConnection alloc];
      v21 = [v18 device];
      v45 = v11;
      v22 = [v11 flowToken];
      v23 = [v18 browseSession];
      v24 = +[NSUUID UUID];
      v25 = [v18 endpointUUID];
      v26 = [(RPNWConnection *)v20 initWithPeer:v21 token:v22 version:0 inbound:0 internal:v23 applicationService:v19 connectionID:v24 endpointID:v25];

      if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100013A80;
      v50[3] = &unk_1001AA920;
      v31 = v26;
      v51 = v31;
      v32 = v45;
      v52 = v32;
      v33 = v44;
      [RPNWEndpoint pairWithEndpoint:v46 pin:v44 completionHandler:v50];
      [v32 setConnection:v31];
      start_handler[0] = _NSConcreteStackBlock;
      start_handler[1] = 3221225472;
      start_handler[2] = sub_100013BC4;
      start_handler[3] = &unk_1001AA998;
      v48 = v31;
      v49 = v32;
      v34 = v31;
      definition = nw_framer_create_definition("client-pipe-pairing", 0, start_handler);
      options = nw_framer_create_options(definition);

      v37 = nwrapport_copy_protocol_definition();
      if (dword_1001D2EF0 <= 40 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
      {
        sub_10010D4E8();
      }

      nw_framer_options_set_peer_protocol_definition();
      v13 = v42;
      v12 = v43;
      if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
      {
        sub_10010D528();
      }

      (*(v43 + 2))(v43, v42, v14, options);

      v38 = 1;
      v11 = v45;
      goto LABEL_24;
    }

    if (dword_1001D2EF0 <= 90 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D580();
    }

    v38 = 0;
LABEL_35:
    v33 = v15;
LABEL_24:

    goto LABEL_25;
  }

  if (dword_1001D2EF0 > 90)
  {
    v38 = 0;
    v46 = v16;
    goto LABEL_35;
  }

  v33 = v15;
  if (dword_1001D2EF0 != -1 || _LogCategory_Initialize())
  {
    sub_10010D5C0();
  }

  v38 = 0;

LABEL_25:
  return v38;
}

- (void)createPairingListener:(id)a3 endpoint:(id)a4 pin:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 browseClient];
  v9 = [_TtC8rapportd16RPPairingSession agentClientListenerAdvertiseSensitiveInfo:v8];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10 != [v6 listenerPairingState])
  {
    if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D740(v6);
    }

    v11 = [v6 pairingSession];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000140AC;
    v22[3] = &unk_1001AA970;
    v23 = v6;
    [v11 stopServerWithCompletionHandler:v22];
  }

  [v6 setListenerPairingState:v10];
  if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
  {
    sub_10010D7C4(v6);
  }

  v12 = [_TtC8rapportd16RPPairingSession alloc];
  v13 = [v6 applicationService];
  v14 = +[RPNWNetworkAgent sharedNetworkAgent];
  v15 = [v14 dispatchQueue];
  v16 = [(RPPairingSession *)v12 initWithApplicationService:v13 queue:v15 availablePINsChangedHandler:&stru_1001AA9D8 bonjourResolveHandler:&stru_1001AAA18 endpointsChangedHandler:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014114;
  v19[3] = &unk_1001AAA40;
  v20 = v6;
  v21 = v16;
  v17 = v16;
  v18 = v6;
  [(RPPairingSession *)v17 activateForServerWithPin:v7 advertiseSensitiveInfo:v9 completionHandler:v19];
}

+ (id)sharedNetworkAgent
{
  if (qword_1001D63D8 != -1)
  {
    sub_10011FD60();
  }

  v3 = qword_1001D63D0;

  return v3;
}

- (id)getPersonaFromParameters:(id)a3
{
  v3 = nw_parameters_copy_application_id();
  if (v3)
  {
    *uu = 0;
    v9 = 0;
    nw_application_id_get_persona();
    v4 = 0;
    if (!uuid_is_null(uu))
    {
      v5 = [[NSUUID alloc] initWithUUIDBytes:uu];
      v6 = v5;
      if (v5)
      {
        v4 = [v5 UUIDString];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)executeAgentLogicInPersona:(id)a3 pid:(int)a4 handlerDescription:(id)a5 handler:(id)a6
{
  v10 = a3;
  v8 = a5;
  v9 = a6;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FD74();
  }

  v9[2](v9);
}

- (RPNWNetworkAgent)init
{
  v5.receiver = self;
  v5.super_class = RPNWNetworkAgent;
  v2 = [(RPNWNetworkAgent *)&v5 init];
  if (v2)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FDB4();
    }

    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWNetworkAgent;
  [(RPNWNetworkAgent *)&v2 dealloc];
}

- (id)descriptionWithLevel:(int)a3
{
  NSAppendPrintF();
  v3 = 0;
  [RPNWAgentClient listAgentClients:v3];
  [RPNWEndpoint listEndpoints:v3];
  [RPNWListener listAllowedApplicationServices:v3];
  [RPNWConnection listConnections:v3];

  return v3;
}

- (void)activate
{
  dispatch_queue_get_label(self->_dispatchQueue);
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FDE8();
  }

  [(RPNWNetworkAgent *)self createRapportServer];
  [(RPNWNetworkAgent *)self createBrowseAgent];
  [(RPNWNetworkAgent *)self createNetworkAgent];
  [(RPNWNetworkAgent *)self createDDUIResolveAgent];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080F18;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FE28();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080F94;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FE5C();
    }

    [(RPNWNetworkAgent *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FE78();
    }
  }
}

- (void)_update
{
  if (self->_prefNetworkAgentEnabled)
  {
    [(RPNWNetworkAgent *)self _ensureStarted];
  }

  else
  {
    [(RPNWNetworkAgent *)self _ensureStopped];
  }
}

- (id)getDiscoveryDeviceTypesDescription:(unsigned int)a3
{
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendString:@"<"];
  if (a3 == -1)
  {
    v5 = @" all devices";
LABEL_18:
    [v4 appendString:v5];
    goto LABEL_19;
  }

  if (a3)
  {
    [v4 appendString:@" iPhone"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v4 appendString:@" iPad"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v4 appendString:@" mac"];
  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 appendString:@" watch"];
  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [v4 appendString:@" homepod"];
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_15:
  [v4 appendString:@" atv"];
  if ((a3 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x40) != 0)
  {
LABEL_17:
    v5 = @" vision";
    goto LABEL_18;
  }

LABEL_19:
  [v4 appendString:@" >"];

  return v4;
}

- (unint64_t)convertBrowseScopeToControlFlags:(unsigned int)a3
{
  v3 = 12288;
  if (a3)
  {
    v3 = 0;
  }

  v4 = (a3 << 18) & 0x100000 | ((((a3 & 8) >> 3) & 1) << 44) | v3 | (a3 << 11) & 0x1000 | (a3 << 9) & 0x2000 | ((a3 & 0x40) << 37) & 0xFFFFDFFFFFFFFFFFLL | ((((a3 & 0x20) >> 5) & 1) << 45);
  if ((a3 & 0x80) != 0)
  {
    return 0x380000103C00;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)convertConnectionParametersToControlFlags:(id)a3
{
  v3 = 0x60000220000;
  v4 = a3;
  next_hop_required_interface_subtype = nw_parameters_get_next_hop_required_interface_subtype();
  if (next_hop_required_interface_subtype != 1002)
  {
    if (next_hop_required_interface_subtype == 1001)
    {
      v3 = 0x60000400000;
    }

    else if (nw_parameters_get_include_ble())
    {
      v3 = 0x40000600100;
    }

    else
    {
      v3 = 0;
    }
  }

  v6 = nw_parameters_copy_prohibited_interface_subtypes();
  if (xpc_array_get_count(v6))
  {
    v7 = 0;
    do
    {
      uint64 = xpc_array_get_uint64(v6, v7);
      v9 = v3 | 0x400000;
      if (uint64 != 1002)
      {
        v9 = v3;
      }

      if (uint64 == 1001)
      {
        v3 |= 0x200000uLL;
      }

      else
      {
        v3 = v9;
      }

      ++v7;
    }

    while (v7 < xpc_array_get_count(v6));
  }

  v10 = nw_parameters_copy_preferred_interface_subtypes();
  if (xpc_array_get_count(v10))
  {
    v11 = 0;
    do
    {
      if (xpc_array_get_uint64(v10, v11) == 1002)
      {
        v3 |= 0x20000uLL;
      }

      ++v11;
    }

    while (v11 < xpc_array_get_count(v10));
  }

  return v3;
}

- (unint64_t)convertBrowseParamsToControlFlags:(id)a3
{
  v3 = a3;
  include_ble = nw_parameters_get_include_ble();
  include_screen_off_devices = nw_parameters_get_include_screen_off_devices();
  v6 = 2;
  if (!include_ble)
  {
    v6 = 0;
  }

  v7 = 65538;
  if (!include_ble)
  {
    v7 = 0;
  }

  if (include_screen_off_devices)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (nw_parameters_get_next_hop_required_interface_type())
  {
    if (nw_parameters_get_next_hop_required_interface_type() == 1)
    {
      v8 |= 4uLL;
    }

    LOBYTE(include_ble) = 1;
  }

  if (nw_parameters_get_next_hop_required_interface_subtype())
  {
    next_hop_required_interface_subtype = nw_parameters_get_next_hop_required_interface_subtype();
    if (next_hop_required_interface_subtype == 1002)
    {
      if (dword_1001D4638 <= 60 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10011FE94();
      }
    }

    else if (next_hop_required_interface_subtype == 1001)
    {
      v8 |= 4uLL;
    }

    v10 = nw_parameters_copy_preferred_interface_subtypes();
    goto LABEL_18;
  }

  v11 = nw_parameters_copy_preferred_interface_subtypes();
  v10 = v11;
  if (include_ble)
  {
LABEL_18:
    v12 = 1;
    goto LABEL_19;
  }

  v12 = xpc_array_get_count(v11) != 0;
LABEL_19:
  if (xpc_array_get_count(v10))
  {
    v13 = 0;
    do
    {
      uint64 = xpc_array_get_uint64(v10, v13);
      if (uint64 == 1002)
      {
        if (dword_1001D4638 <= 60 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          sub_10011FE94();
        }
      }

      else if (uint64 == 1001)
      {
        v8 |= 4uLL;
      }

      ++v13;
    }

    while (v13 < xpc_array_get_count(v10));
  }

  v15 = nw_parameters_copy_prohibited_interface_subtypes();
  if (xpc_array_get_count(v15))
  {
    v16 = 0;
    do
    {
      v17 = xpc_array_get_uint64(v15, v16);
      v18 = v8 & 0xFFFFFFFFFFFFFFFBLL;
      if (v17 != 1001)
      {
        v18 = v8;
      }

      if (v17 == 1002)
      {
        v8 &= ~8uLL;
      }

      else
      {
        v8 = v18;
      }

      ++v16;
    }

    while (v16 < xpc_array_get_count(v15));
  }

  if (v15)
  {
    if (dword_1001D4638 <= 60 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FEB0();
    }
  }

  else
  {
    v19 = nw_parameters_copy_prohibited_interface_types();
    v20 = v19;
    if (v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = v12;
    }

    if (xpc_array_get_count(v19))
    {
      v22 = 0;
      do
      {
        v23 = xpc_array_get_uint64(v20, v22);
        v24 = v8 & 0xFFFFFFFFFFFFFFFBLL;
        if (v23 != 1001)
        {
          v24 = v8;
        }

        if (v23 == 1002)
        {
          v8 &= ~8uLL;
        }

        else
        {
          v8 = v24;
        }

        ++v22;
      }

      while (v22 < xpc_array_get_count(v20));
    }

    if (!v21)
    {
      v8 = 32774;
    }
  }

  return v8;
}

- (BOOL)discoverDevices:(id)a3 response:(id)a4 context:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 browseDescriptor];

  if (!v10)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120018();
    }

    goto LABEL_44;
  }

  if (a5 == 2)
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_43;
    }

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FECC(v8);
    }

    v13 = [v8 applicationService];

    if (v13)
    {
      networkAgentID = self->_networkAgentID;
      v12 = [v8 applicationService];
      [v8 startPairingDiscovery:v9 agentUUID:networkAgentID applicationService:v12 browseMode:0];
LABEL_19:

      goto LABEL_43;
    }

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FF28();
    }

LABEL_44:
    v33 = 0;
    goto LABEL_45;
  }

  if (a5 != 1)
  {
    v15 = [v8 browseDescriptor];
    device_types = nw_browse_descriptor_get_device_types();

    if (device_types)
    {
      v17 = [v8 browseDescriptor];
      browse_scope = nw_browse_descriptor_get_browse_scope();

      v19 = [(RPNWNetworkAgent *)self convertBrowseScopeToControlFlags:browse_scope];
      v20 = [v8 browseClient];
      v21 = nw_agent_client_copy_parameters();

      v45 = v21;
      v22 = [(RPNWNetworkAgent *)self convertBrowseParamsToControlFlags:v21];
      v23 = objc_alloc_init(NSMutableArray);
      v24 = [v8 browseDescriptor];
      v25 = v23;
      nw_browse_descriptor_enumerate_device_filters();

      v26 = [v8 browseDescriptor];
      rssi_threshold = nw_browse_descriptor_get_rssi_threshold();

      if (dword_1001D4638 <= 10 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10011FF88();
      }

      v27 = [v8 applicationService];

      if (v27)
      {
        v28 = v22 | v19;
        if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          v43 = [v8 browseToken];
          v29 = [v8 applicationService];
          v42 = [(RPNWNetworkAgent *)self getDiscoveryDeviceTypesDescription:device_types];
          [v8 browseDescriptor];
          v40 = v28;
          v41 = &unk_100148C05;
          v39 = v38 = browse_scope;
          v36 = v29;
          v37 = v42;
          v35 = v43;
          LogPrintF();
        }

        v30 = self->_networkAgentID;
        v31 = [v8 applicationService];
        v32 = [v8 predicate];
        [v8 startDiscovery:v9 deviceTypes:device_types controlFlags:v28 deviceFilter:v25 agentUUID:v30 rssiThreshold:rssi_threshold applicationService:v31 predicate:v32];
      }

      else if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10011FFC8();
      }

      if (v27)
      {
        goto LABEL_43;
      }
    }

    else if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FFFC();
    }

    goto LABEL_44;
  }

  if (_os_feature_enabled_impl())
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FF44(v8);
    }

    v11 = self->_networkAgentID;
    v12 = [v8 applicationService];
    [v8 startNearbyInvitationDiscovery:v9 agentUUID:v11 applicationService:v12];
    goto LABEL_19;
  }

LABEL_43:
  v33 = 1;
LABEL_45:

  return v33;
}

- (BOOL)createRapportServer
{
  v3 = objc_alloc_init(RPNWPeer);
  server = self->server;
  self->server = v3;

  [(RPNWPeer *)self->server receiveWithRequestID:@"com.apple.oneapi.resolve" receiveHandler:&stru_1001AD968];
  v5 = self->server;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100081FE8;
  v7[3] = &unk_1001AD990;
  v7[4] = self;
  [(RPNWPeer *)v5 receiveWithRequestID:@"com.apple.oneapi.connection" receiveHandler:v7];
  [(RPNWPeer *)self->server handleConnectionData:1];
  return 1;
}

- (BOOL)createListenerFramer:(id)a3
{
  v4 = a3;
  v5 = [v4 flowToken];
  if (v5)
  {
    [v4 flowToken];
  }

  else
  {
    [v4 browseToken];
  }
  v6 = ;

  if ([v4 type] != 1)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012006C();
    }

    goto LABEL_27;
  }

  v7 = [v4 listen_framer];

  if (v7)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001200AC();
    }

LABEL_27:
    v17 = 0;
    goto LABEL_28;
  }

  if (!v4 || ([v4 flowAssignHandler], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, objc_msgSend(v4, "localEndpoint"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    if (([v4 isUsingQUIC] & 1) == 0 && dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120154();
    }

    goto LABEL_27;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001200EC(v4);
  }

  if (([v4 isUsingQUIC] & 1) == 0)
  {
    v22[0] = 0;
    v22[1] = 0;
    [(NSUUID *)self->_networkAgentID getUUIDBytes:v22];
    v11 = [v4 localEndpoint];
    nw_endpoint_set_agent_identifier();
  }

  start_handler[0] = _NSConcreteStackBlock;
  start_handler[1] = 3221225472;
  start_handler[2] = sub_100082478;
  start_handler[3] = &unk_1001AA998;
  v12 = v4;
  v20 = v12;
  v21 = v6;
  definition = nw_framer_create_definition("listen-pipe", 0, start_handler);
  options = nw_framer_create_options(definition);

  v15 = [v12 flowAssignHandler];
  v16 = [v12 localEndpoint];
  (v15)[2](v15, v16, 0, options);

  [v12 setFlowAssignHandler:0];
  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)createConnectionFramer:(id)a3 assign:(id)a4 local:(id)a5 remote:(id)a6 incomingConnection:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001202C8();
  }

  if ([v11 type] == 4)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001204C8(v11);
    }

    v75[0] = 0;
    v75[1] = 0;
    nw_endpoint_get_service_identifier();
    v16 = [[NSUUID alloc] initWithUUIDBytes:v75];
    v17 = [RPNWEndpoint findEndpoint:v16];
    if (v17)
    {
      v18 = v17;
      goto LABEL_10;
    }

    apple_service_apple_id = nw_endpoint_get_apple_service_apple_id();
    if (!apple_service_apple_id)
    {
      goto LABEL_57;
    }

    v31 = [NSString stringWithUTF8String:apple_service_apple_id];
    if (v31)
    {
      v62 = v15;
      v32 = v14;
      v33 = [[NSUUID alloc] initWithUUIDString:v31];

      if (v33)
      {
        v18 = [RPNWEndpoint findEndpoint:v33];

        v16 = v33;
        v14 = v32;
        if (v18)
        {
          v15 = v62;
LABEL_10:
          v55 = v13;
          v56 = v12;
          v58 = v14;
          v60 = v15;
          if (_os_feature_enabled_impl() && (application_service_name = nw_endpoint_get_application_service_name(), !strcmp(application_service_name, "com.apple.DDUI-Picker")))
          {
            v20 = @"com.apple.DDUI-Picker";
          }

          else
          {
            v20 = [v18 applicationService];
          }

          v53 = [v18 shouldAutomapListener];
          v74[0] = 0;
          v74[1] = 0;
          v21 = [v11 flowClient];
          nw_agent_client_get_uuid();

          v22 = [[NSUUID alloc] initWithUUIDBytes:v74];
          v23 = [RPNWConnection alloc];
          v24 = [v18 device];
          v25 = [v11 flowToken];
          v26 = [v18 browseSession];
          v27 = [v18 endpointUUID];
          v54 = v20;
          v28 = [(RPNWConnection *)v23 initWithPeer:v24 token:v25 version:0 inbound:0 internal:v26 applicationService:v20 connectionID:v22 endpointID:v27];

          if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
          {
            sub_100120530();
          }

          v15 = v60;
          if (v28)
          {
            v14 = v58;
LABEL_27:
            v59 = v14;
            v61 = v15;
            if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
            {
              sub_100120598(v11, v28);
            }

            goto LABEL_45;
          }

          v14 = v58;
          if (dword_1001D4638 > 90)
          {
            v48 = 0;
            v13 = v55;
            v12 = v56;
            v34 = v54;
            goto LABEL_69;
          }

          v13 = v55;
          v12 = v56;
          v34 = v54;
          if (dword_1001D4638 != -1 || _LogCategory_Initialize())
          {
            sub_1001206F8(v11);
          }

LABEL_68:
          v48 = 0;
          goto LABEL_69;
        }

        v15 = v62;
        goto LABEL_57;
      }

      v16 = 0;
      v14 = v32;
      v15 = v62;
    }

LABEL_57:
LABEL_67:
    v34 = 0;
    goto LABEL_68;
  }

  if ([v11 type] != 3)
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120334(v11);
    }

    goto LABEL_67;
  }

  if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
  {
    if (v15)
    {
      goto LABEL_23;
    }

LABEL_64:
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012046C(v11);
    }

    goto LABEL_67;
  }

  sub_10012039C(v11);
  if (!v15)
  {
    goto LABEL_64;
  }

LABEL_23:
  v55 = v13;
  v56 = v12;
  v28 = v15;
  v29 = [v11 flowToken];
  [(RPNWConnection *)v28 setToken:v29];

  v54 = [v11 applicationService];
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || _LogCategory_Initialize())
    {
      sub_100120404(v11);
    }

    v53 = 0;
    goto LABEL_27;
  }

  v59 = v14;
  v61 = v15;
  v53 = 0;
LABEL_45:
  v52 = [(RPNWConnection *)v28 peer];
  v35 = [(RPNWConnection *)v28 peer];
  v36 = [v35 destinationDevice];
  v37 = [v11 flowToken];
  v51 = [(RPNWConnection *)v28 inbound];
  v38 = [v11 controlFlags];
  v39 = [(RPNWConnection *)v28 endpointUUID];
  v40 = [(RPNWConnection *)v28 connectionUUID];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100082E80;
  v71[3] = &unk_1001AD9E0;
  v72 = v11;
  v73 = v28;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000830BC;
  v68[3] = &unk_1001AB488;
  v41 = v72;
  v69 = v41;
  v42 = v73;
  v70 = v42;
  LOBYTE(v50) = v53;
  [v52 connectToPeer:v36 token:v37 inboundConnection:v51 controlFlags:v38 applicationService:v54 listenerID:v39 automapListener:v50 connectionID:v40 connectHandler:v71 lostHandler:v68];

  [v41 setConnection:v42];
  start_handler[0] = _NSConcreteStackBlock;
  start_handler[1] = 3221225472;
  start_handler[2] = sub_100083170;
  start_handler[3] = &unk_1001ADA30;
  v64 = v42;
  v43 = v41;
  v65 = v43;
  v34 = v54;
  v66 = v34;
  v67 = self;
  v44 = v42;
  definition = nw_framer_create_definition("client-pipe", 0, start_handler);
  options = nw_framer_create_options(definition);

  v47 = nwrapport_copy_protocol_definition();
  if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120620(v43);
  }

  nw_framer_options_set_peer_protocol_definition();
  v13 = v55;
  v12 = v56;
  v14 = v59;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120678();
  }

  (*(v56 + 2))(v56, v55, v59, options);

  v48 = 1;
  v15 = v61;
LABEL_69:

  return v48;
}

- (BOOL)createNearbyInvitationConnectionFramer:(id)a3 assign:(id)a4 local:(id)a5 remote:(id)a6 incomingConnection:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = &unk_1001D4000;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    v45 = v13;
    v46 = v14;
    LogPrintF();
  }

  if ([v11 type] != 4)
  {
    if ([v11 type] != 3)
    {
      v52 = v15;
      v53 = v14;
      v29 = 0;
      v30 = 0;
      goto LABEL_21;
    }

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120CA0();
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else if (v15)
    {
LABEL_16:
      v29 = v15;
      v30 = [v11 applicationService];
      v52 = v15;
      v53 = v14;
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_100120CE0();
      }

      goto LABEL_21;
    }

    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120D20();
    }

    goto LABEL_34;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120D3C();
  }

  v64[0] = 0;
  v64[1] = 0;
  nw_endpoint_get_service_identifier();
  v17 = [[NSUUID alloc] initWithUUIDBytes:v64];
  v18 = [RPNWNearbyInvitationEndpoint findEndpoint:v17];
  if (!v18)
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120E14();
    }

LABEL_34:
    v43 = 0;
    goto LABEL_35;
  }

  v19 = v18;
  v52 = v15;
  v53 = v14;
  v20 = [v18 applicationService];
  v21 = [RPNWNearbyInvitationConnection alloc];
  v22 = [v19 device];
  v23 = [v19 browseSession];
  +[NSUUID UUID];
  v25 = v24 = v12;
  [v19 endpointUUID];
  v51 = v17;
  v26 = v11;
  v28 = v27 = v13;
  v29 = [(RPNWNearbyInvitationConnection *)v21 initWithPeer:v22 session:0 inbound:0 internal:v23 applicationService:v20 connectionID:v25 endpointID:v28];

  v13 = v27;
  v11 = v26;
  v30 = v20;

  v12 = v24;
  v16 = &unk_1001D4000;
LABEL_21:
  v31 = [(RPNWNearbyInvitationConnection *)v29 peer];
  v32 = [v31 nearbyInvitationSession];

  if (!v32)
  {
    v48 = [(RPNWNearbyInvitationConnection *)v29 peer];
    v49 = [(RPNWNearbyInvitationConnection *)v29 peer];
    [v49 destinationDevice];
    v33 = v50 = v13;
    v47 = [(RPNWNearbyInvitationConnection *)v29 inbound];
    v34 = [(RPNWNearbyInvitationConnection *)v29 endpointUUID];
    v35 = [(RPNWNearbyInvitationConnection *)v29 connectionUUID];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100083E50;
    v61[3] = &unk_1001AD9E0;
    v62 = v29;
    v63 = v11;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100084044;
    v58[3] = &unk_1001AB488;
    v59 = v62;
    v60 = v63;
    [v48 connectToPeer:v33 inboundConnection:v47 applicationService:v30 listenerID:v34 connectionID:v35 connectHandler:v61 disconnectHandler:v58];

    v13 = v50;
  }

  [v11 setNearbyInvitationConnection:v29];
  start_handler[0] = _NSConcreteStackBlock;
  start_handler[1] = 3221225472;
  start_handler[2] = sub_1000840F4;
  start_handler[3] = &unk_1001ADA58;
  v55 = v29;
  v56 = v11;
  v57 = v30;
  v36 = v30;
  v37 = v29;
  definition = nw_framer_create_definition("client-pipe-nbinv", 0, start_handler);
  options = nw_framer_create_options(definition);

  v40 = nwrapport_copy_protocol_definition();
  v41 = v16[398];
  if (v41 <= 40 && (v41 != -1 || _LogCategory_Initialize()))
  {
    sub_100120D7C();
  }

  nw_framer_options_set_peer_protocol_definition();
  v42 = v16[398];
  v14 = v53;
  if (v42 <= 30 && (v42 != -1 || _LogCategory_Initialize()))
  {
    sub_100120DBC();
  }

  (v12)[2](v12, v13, v53, options);

  v43 = 1;
  v15 = v52;
LABEL_35:

  return v43;
}

- (BOOL)setupPolicyWithQueue:(id)a3 browseAgent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121110();
    }

    v7 = objc_alloc_init(NEPolicySession);
    policySession = self->_policySession;
    self->_policySession = v7;

    v9 = self->_policySession;
    if (!v9)
    {
      if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_1001211EC();
      }

      goto LABEL_42;
    }

    v36 = v6;
    [(NEPolicySession *)v9 setPriority:300];
    [(NEPolicySession *)self->_policySession lockSessionToCurrentProcess];
    v10 = [NEPolicyResult netAgentUUID:self->_browseAgentID];
    v11 = +[NEPolicyCondition allInterfaces];
    v12 = [NEPolicyCondition requiredAgentDomain:@"com.apple.rapport.browse" agentType:@"RapportBrowseAgent"];
    v13 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
    v14 = geteuid();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012112C();
    }

    v15 = [NEPolicyCondition uid:v14];
    v40[0] = v11;
    v40[1] = v12;
    v40[2] = v13;
    v40[3] = v15;
    v16 = [NSArray arrayWithObjects:v40 count:4];
    v17 = v10;
    v18 = [[NEPolicy alloc] initWithOrder:10 result:v10 conditions:v16];
    v19 = [(NEPolicySession *)self->_policySession addPolicy:v18];
    if (v19)
    {
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10012116C(&self->_browseAgentID);
      }

      [(NEPolicySession *)self->_policySession apply];
    }

    else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001211AC(&self->_browseAgentID);
    }

    v6 = v36;
    if (!v19)
    {
LABEL_42:
      v33 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v20 = NEVirtualInterfaceCreate();
    self->_interface = v20;
    if (!v20)
    {
      if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_1001210F4();
      }

      goto LABEL_42;
    }

    v21 = NEVirtualInterfaceCopyName();
    interface = self->_interface;
    NEVirtualInterfaceSetRankNever();
    v23 = self->_interface;
    v39 = 0;
    v38 = 0;
    v37 = 33022;
    v24 = v21;
    arc4random_buf(&v38, 8uLL);
    inet_ntop(30, &v37, v41, 0x1Cu);
    v25 = [NSString stringWithUTF8String:v41];
    v26 = [v25 stringByAppendingString:@"%"];
    v27 = [v26 stringByAppendingString:v24];

    v28 = v27;
    NEVirtualInterfaceAddAddress();
    v29 = self->_interface;
    NEVirtualInterfaceUpdateAdHocService();
    v30 = self->_interface;
    NEVirtualInterfaceSetReadAutomatically();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121080();
    }

    [v24 UTF8String];
    v31 = nw_interface_create_with_name();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      networkAgent = self->_networkAgent;
      LogPrintF();
    }

    v32 = self->_networkAgent;
    if ((nw_agent_add_to_interface() & 1) == 0)
    {
      if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_1001210C0();
      }

      goto LABEL_42;
    }
  }

  v33 = 1;
LABEL_43:

  return v33;
}

- (BOOL)setupBrowseHandlers
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121208();
  }

  browseAgent = self->_browseAgent;
  nw_agent_set_filterable_browse_handlers();
  return 1;
}

- (void)resolveRequest:(id)a3 existingEndpoint:(id)a4 controlFlags:(unint64_t)a5 clientPublicKey:(id)a6 client:(id)a7 token:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = a6;
  v18 = a4;
  v19 = objc_alloc_init(RPNWPeer);
  v20 = [v18 device];
  v21 = [v18 applicationService];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000850B4;
  v25[3] = &unk_1001ADB38;
  v25[4] = self;
  v26 = v16;
  v27 = v14;
  v28 = v15;
  v22 = v15;
  v23 = v14;
  v24 = v16;
  [(RPNWPeer *)v19 resolvePeer:v20 token:v24 controlFlags:a5 applicationService:v21 clientPublicKey:v17 resolveHandler:v25];
}

- (BOOL)setupResolveHandlers
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121368();
  }

  browseAgent = self->_browseAgent;
  nw_agent_add_resolve_handlers();
  return 1;
}

- (void)createListener:(id)a3 context:(int)a4
{
  v6 = a3;
  v7 = +[NSUUID UUID];
  if ([v6 isUsingQUIC])
  {
    networkAgentID = 0;
  }

  else
  {
    networkAgentID = self->_networkAgentID;
  }

  v9 = [v6 applicationService];
  v10 = [RPNWPeer createNWEndpointWithID:v7 agentID:networkAgentID applicationService:v9];

  if (a4 != 2)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v11 = [v6 browseClient];
  v12 = [_TtC8rapportd16RPPairingSession agentClientListenerGetPairingData:v11];

  if (v12)
  {
    v13 = [[NSString alloc] initWithData:v12 encoding:4];
    [v13 cStringUsingEncoding:4];
    nw_endpoint_set_device_id();
    if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (dword_1001D4638 > 30)
    {
      v13 = 0;
      goto LABEL_18;
    }

    if (dword_1001D4638 == -1)
    {
      v13 = 0;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v19 = [v6 browseToken];
  LogPrintF();

LABEL_18:
LABEL_19:
  v14 = nw_array_create();
  nw_array_append();
  v15 = [v6 browseResponse];
  (v15)[2](v15, v14);

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_37;
      }

      [(RPNWNetworkAgent *)self createPairingListener:v6 endpoint:v10 pin:v13];
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_1001215B0(v6);
      }
    }

    else if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121554(v6);
    }

    [(RPNWNetworkAgent *)self createListenerFramer:v6, v19];
    goto LABEL_37;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012160C(v6);
  }

  v16 = objc_alloc_init(RPNWNearbyInvitationPeer);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008633C;
  v23[3] = &unk_1001AAA40;
  v24 = v6;
  v25 = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000863D4;
  v20[3] = &unk_1001AB488;
  v17 = v24;
  v21 = v17;
  v22 = v25;
  v18 = v25;
  [(RPNWNearbyInvitationPeer *)v18 startServer:v17 withCompletion:v23 disconnectHandler:v20];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121668(v17);
  }

  [(RPNWNetworkAgent *)self createListenerFramer:v17, v19];

LABEL_37:
}

- (BOOL)setupListenHandlers
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121788();
  }

  networkAgent = self->_networkAgent;
  nw_agent_set_browse_handlers();
  return 1;
}

- (id)_applicationServiceAdvertiseDescriptorForClient:(id)a3
{
  v3 = nw_agent_client_copy_advertise_descriptor();
  if (v3)
  {
    if (nw_advertise_descriptor_get_type() == 2)
    {
      v4 = v3;
      goto LABEL_12;
    }

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012194C();
    }
  }

  else if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012198C();
  }

  v4 = 0;
LABEL_12:

  return v4;
}

- (void)startFlow:(id)a3 listener:(id)a4 client:(id)a5 assign:(id)a6 parameters:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = nw_agent_client_copy_endpoint();
  v17 = [_TtC8rapportd16RPPairingSession endpointGetPINFor:v16];
  v18 = [v12 nearbyInvitationConnection];

  if (v12 && !v18)
  {
    v19 = [RPNWListener findListenerForAgentClient:v12 sender:0 browseRequest:0];
    v20 = v19;
    if (v19)
    {
      v58 = v13;
      v21 = [v19 removeTriggeredConnection];
      if (v21)
      {
        v63 = v21;
        v54 = v17;
        v55 = v14;
        v60 = v15;
        if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          sub_1001219A8(v11);
        }

        v56 = v11;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v22 = [v20 incomingConnections];
        v23 = [v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v65;
          while (2)
          {
            v26 = 0;
            do
            {
              if (*v65 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v64 + 1) + 8 * v26);
              if ([v27 isTriggerable])
              {
                v11 = v56;
                if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
                {
                  sub_100121A5C(v56);
                }

                v29 = v27;

                if (v29)
                {
                  v53 = v29;
                  [v20 startConnection:v29 agentClient:v12];
                }

                else
                {
                  v53 = 0;
                }

                goto LABEL_35;
              }

              if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
              {
                sub_100121A04(v56);
              }

              v26 = v26 + 1;
            }

            while (v24 != v26);
            v28 = [v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
            v24 = v28;
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v53 = 0;
        v11 = v56;
LABEL_35:
        v31 = [v63 endpointUUID];
        if ([v11 isUsingQUIC])
        {
          networkAgentID = 0;
        }

        else
        {
          networkAgentID = self->_networkAgentID;
        }

        v33 = [v12 applicationService];
        v57 = [RPNWPeer createNWEndpointWithID:v31 agentID:networkAgentID applicationService:v33];

        v34 = [v63 peer];
        v35 = [v34 destinationDevice];
        v36 = [v63 endpointUUID];
        v37 = [v63 applicationService];
        v38 = +[RPNWEndpoint globalEndpointsKey];
        [RPNWEndpoint addEndpointMapping:v35 endpointID:v36 applicationService:v37 discoverySessionID:v38 shouldAutomapListener:1];

        v16 = v57;
        v13 = v58;
        v17 = v54;
        v14 = v55;
        v15 = v60;
        goto LABEL_39;
      }

      if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
      {
LABEL_70:

        goto LABEL_71;
      }
    }

    else if (dword_1001D4638 > 90 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_70;
    }

    v30 = [v11 flowToken];
    LogPrintF();

    goto LABEL_70;
  }

  v63 = 0;
LABEL_39:
  v39 = nw_parameters_copy_local_endpoint(v15);
  if (!v39)
  {
    v40 = +[NSUUID UUID];
    if ([v11 isUsingQUIC])
    {
      v41 = 0;
    }

    else
    {
      v41 = self->_networkAgentID;
    }

    v39 = [RPNWPeer createNWEndpointWithID:v40 agentID:v41 applicationService:@"dummy"];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121AB4(v11);
    }
  }

  v42 = nw_agent_client_copy_path();
  if (nw_path_is_listener())
  {
    [v11 setFlowAssignHandler:v14];
    [v11 setLocalEndpoint:v39];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121B60(v11);
    }

    [(RPNWNetworkAgent *)self createListenerFramer:v11];
  }

  else
  {
    v43 = v16;
    v44 = v17;
    v59 = v43;
    v61 = v15;
    v68[0] = 0;
    v68[1] = 0;
    nw_endpoint_get_service_identifier();
    v45 = [[NSUUID alloc] initWithUUIDBytes:v68];
    v46 = [RPNWNearbyInvitationEndpoint findEndpoint:v45];
    v47 = [v12 nearbyInvitationConnection];
    v48 = v46 | v47;

    if (v48)
    {
      if (v46)
      {
        [v46 applicationService];
        v50 = v49 = v13;
        [v11 setApplicationService:v50];

        v13 = v49;
      }

      v17 = v44;
      if (_os_feature_enabled_impl())
      {
        [v12 nearbyInvitationConnection];
        v52 = v51 = v13;
        [(RPNWNetworkAgent *)self createNearbyInvitationConnectionFramer:v11 assign:v14 local:v39 remote:v59 incomingConnection:v52];

        v13 = v51;
        v17 = v44;
      }
    }

    else
    {
      v17 = v44;
      if (v44)
      {
        if (_os_feature_enabled_impl())
        {
          [(RPNWNetworkAgent *)self createPairingConnectionFramer:v11 assign:v14 local:v39 remote:v59 pin:v44];
        }
      }

      else if (![(RPNWNetworkAgent *)self createConnectionFramer:v11 assign:v14 local:v39 remote:v59 incomingConnection:v63])
      {
        if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          sub_100121B0C(v11);
        }

        (*(v14 + 2))(v14, 0, 0, 0);
      }
    }

    v16 = v59;
    v15 = v61;
  }

LABEL_71:
}

- (BOOL)setupFlowHandlers
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121BB4();
  }

  networkAgent = self->_networkAgent;
  nw_agent_set_flow_handlers();
  return 1;
}

- (void)setupAssertHandlers:(id)a3
{
  v3 = a3;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121CB4();
  }

  nw_agent_set_assert_handlers();
}

- (BOOL)createBrowseAgent
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121D50();
  }

  dispatchQueue = self->_dispatchQueue;
  v4 = nw_agent_create();
  browseAgent = self->_browseAgent;
  self->_browseAgent = v4;

  v6 = self->_browseAgent;
  if (v6)
  {
    v11[0] = 0;
    v11[1] = 0;
    nw_agent_get_uuid();
    v7 = [[NSUUID alloc] initWithUUIDBytes:v11];
    browseAgentID = self->_browseAgentID;
    self->_browseAgentID = v7;

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121D88(&self->_browseAgentID);
    }

    [(RPNWNetworkAgent *)self setupPolicyWithQueue:self->_dispatchQueue browseAgent:1];
    [(RPNWNetworkAgent *)self setupBrowseHandlers];
    [(RPNWNetworkAgent *)self setupResolveHandlers];
    [(RPNWNetworkAgent *)self setupAssertHandlers:self->_browseAgent];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121DC8();
    }

    v9 = self->_browseAgent;
    nw_agent_change_state();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121DFC();
    }
  }

  else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121D6C();
  }

  return v6 != 0;
}

- (BOOL)createDDUIResolveAgent
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121E30();
  }

  dispatchQueue = self->_dispatchQueue;
  v4 = nw_agent_create();
  dduiResolveAgent = self->_dduiResolveAgent;
  self->_dduiResolveAgent = v4;

  v6 = self->_dduiResolveAgent;
  if (v6)
  {
    [(RPNWNetworkAgent *)self setupPolicyForDDUIResolveAgent];
    [(RPNWNetworkAgent *)self setupResolveHandlersForDDUIResolveAgent];
    [(RPNWNetworkAgent *)self setupAssertHandlers:self->_dduiResolveAgent];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121E68();
    }

    v7 = self->_dduiResolveAgent;
    nw_agent_change_state();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121E84();
    }
  }

  else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121E4C();
  }

  return v6 != 0;
}

- (void)setupPolicyForDDUIResolveAgent
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121EA0();
  }

  v3 = objc_alloc_init(NEPolicySession);
  dduiResolvePolicySession = self->_dduiResolvePolicySession;
  self->_dduiResolvePolicySession = v3;

  v5 = self->_dduiResolvePolicySession;
  if (v5)
  {
    [(NEPolicySession *)v5 setPriority:300];
    [(NEPolicySession *)self->_dduiResolvePolicySession lockSessionToCurrentProcess];
    v17[0] = 0;
    v17[1] = 0;
    dduiResolveAgent = self->_dduiResolveAgent;
    nw_agent_get_uuid();
    v7 = [[NSUUID alloc] initWithUUIDBytes:v17];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121EBC();
    }

    v8 = [NEPolicyResult netAgentUUID:v7];
    v9 = +[NEPolicyCondition allInterfaces];
    v10 = [NEPolicyCondition requiredAgentDomain:@"com.apple.rapport.dduiresolve" agentType:@"RapportDDUIResolveAgent"];
    v11 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
    v12 = geteuid();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121EFC();
    }

    v13 = [NEPolicyCondition uid:v12];
    v16[0] = v9;
    v16[1] = v10;
    v16[2] = v11;
    v16[3] = v13;
    v14 = [NSArray arrayWithObjects:v16 count:4];
    v15 = [[NEPolicy alloc] initWithOrder:10 result:v8 conditions:v14];
    if ([(NEPolicySession *)self->_dduiResolvePolicySession addPolicy:v15])
    {
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_100121F3C(self);
      }

      [(NEPolicySession *)self->_dduiResolvePolicySession apply];
    }

    else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121F80(self);
    }
  }

  else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121FC4();
  }
}

- (void)setupResolveHandlersForDDUIResolveAgent
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121FE0();
  }

  dduiResolveAgent = self->_dduiResolveAgent;
  nw_agent_add_resolve_handlers();
}

- (BOOL)createNetworkAgent
{
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001220BC();
  }

  dispatchQueue = self->_dispatchQueue;
  v4 = nw_agent_create();
  networkAgent = self->_networkAgent;
  self->_networkAgent = v4;

  v6 = self->_networkAgent;
  if (v6)
  {
    v11[0] = 0;
    v11[1] = 0;
    nw_agent_get_uuid();
    v7 = [[NSUUID alloc] initWithUUIDBytes:v11];
    networkAgentID = self->_networkAgentID;
    self->_networkAgentID = v7;

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001220F4(&self->_networkAgentID);
    }

    [(RPNWNetworkAgent *)self setupPolicyWithQueue:self->_dispatchQueue browseAgent:0];
    [(RPNWNetworkAgent *)self setupListenHandlers];
    [(RPNWNetworkAgent *)self setupFlowHandlers];
    [(RPNWNetworkAgent *)self setupAssertHandlers:self->_networkAgent];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100122134();
    }

    v9 = self->_networkAgent;
    nw_agent_change_state();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100122168();
    }
  }

  else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001220D8();
  }

  return v6 != 0;
}

- (id)_quicProtocolOptionsFromParameters:(id)a3
{
  v3 = a3;
  v4 = nw_parameters_copy_default_protocol_stack(v3);
  v5 = v4;
  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100002A1C;
    v13 = sub_1000031A4;
    v14 = 0;
    iterate_block[0] = _NSConcreteStackBlock;
    iterate_block[1] = 3221225472;
    iterate_block[2] = sub_100088590;
    iterate_block[3] = &unk_1001AAA68;
    iterate_block[4] = &v9;
    nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012219C();
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_isTCPTransport:(id)a3
{
  v3 = a3;
  v4 = nw_parameters_copy_default_protocol_stack(v3);
  if (v4)
  {
    v5 = nw_protocol_copy_tcp_definition();
    v6 = nw_protocol_stack_includes_protocol();
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001221DC();
    }

    v6 = 0;
  }

  return v6;
}

- (void)exchangeQUICPublicKeyFor:(id)a3 publicKey:(id)a4 completion:(id)a5
{
  v20 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[RPNWPendingKeyExchange alloc] initWithApplicationService:v9 publicKey:v20 handler:v8];

  v11 = [RPNWAgentClient findListenerAgentClientFromApplicationServiceName:v9];

  if (v11)
  {
    [(RPNWNetworkAgent *)self _invokeKeyExchange:v10 agentClient:v11];
  }

  else
  {
    pendingKeyExchangesByIdentifier = self->_pendingKeyExchangesByIdentifier;
    v13 = [(RPNWPendingKeyExchange *)v10 identifier];
    v14 = [(NSMutableDictionary *)pendingKeyExchangesByIdentifier objectForKeyedSubscript:v13];

    if (v14)
    {
      if (dword_1001D4638 <= 60 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10012221C(v10);
      }

      v15 = RPErrorF();
      v16 = [v14 handler];
      (v16)[2](v16, 0, 0, v15);
    }

    else
    {
      v17 = self->_pendingKeyExchangesByIdentifier;
      if (!v17)
      {
        v18 = +[NSMutableDictionary dictionary];
        v19 = self->_pendingKeyExchangesByIdentifier;
        self->_pendingKeyExchangesByIdentifier = v18;

        v17 = self->_pendingKeyExchangesByIdentifier;
      }

      [(NSMutableDictionary *)v17 setObject:v10 forKeyedSubscript:v20];
    }
  }
}

- (void)_completePendingKeyExchangeForAgentClient:(id)a3
{
  v4 = a3;
  v16 = self;
  v5 = [(NSMutableDictionary *)self->_pendingKeyExchangesByIdentifier copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [v12 applicationService];
        v14 = [v4 applicationService];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          [(RPNWNetworkAgent *)v16 _invokeKeyExchange:v12 agentClient:v4];
          [(NSMutableDictionary *)v16->_pendingKeyExchangesByIdentifier setObject:0 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_invokeKeyExchange:(id)a3 agentClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 agentClientID];
  v8 = [v7 UUIDString];
  v9 = [v8 cStringUsingEncoding:4];

  bonjour_service = nw_endpoint_create_bonjour_service(v9, "_asquic._udp", "local");
  v11 = [v6 publicKey];
  v18 = v11;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  nw_endpoint_set_public_keys();

  v13 = [v5 browseClient];
  v14 = [RPNWUtils publicKeyFromAgentClient:v13];

  v15 = nw_array_create();
  nw_array_append();
  v16 = [v5 browseResponse];

  (v16)[2](v16, v15);
  v17 = [v6 handler];

  (v17)[2](v17, v7, v14, 0);
}

@end
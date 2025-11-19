@interface RPNWNearbyInvitationPeer
+ (const)responseCodeToString:(int)a3;
+ (const)statusCodeToString:(int)a3;
+ (id)createNWEndpointForEndpoint:(id)a3 agentID:(id)a4 applicationService:(id)a5;
+ (id)createNWEndpointWithID:(id)a3 agentID:(id)a4 applicationService:(id)a5;
- (BOOL)findNearbyInvitationListenerAndCreateConnection:(id)a3 applicationService:(id)a4 listenerID:(id)a5 connectionID:(id)a6 agentClient:(id)a7;
- (RPNWNearbyInvitationPeer)init;
- (void)connectToPeer:(id)a3 inboundConnection:(BOOL)a4 applicationService:(id)a5 listenerID:(id)a6 connectionID:(id)a7 connectHandler:(id)a8 disconnectHandler:(id)a9;
- (void)dealloc;
- (void)handleConnectionData:(BOOL)a3;
- (void)handleConnectionRequest:(id)a3 agentClient:(id)a4;
- (void)receiveDataForConnection:(id)a3 statusHandler:(id)a4;
- (void)receiveWithRequestID:(id)a3 receiveHandler:(id)a4;
- (void)sendDataForConnection:(id)a3 applicationService:(id)a4 connectionID:(id)a5 responseHandler:(id)a6;
- (void)startDiscovery:(id)a3 foundHandler:(id)a4 updateHandler:(id)a5 lostHandler:(id)a6 invalidationHandler:(id)a7;
- (void)startServer:(id)a3 withCompletion:(id)a4 disconnectHandler:(id)a5;
- (void)stopDiscovery;
- (void)stopServer;
@end

@implementation RPNWNearbyInvitationPeer

- (RPNWNearbyInvitationPeer)init
{
  v6.receiver = self;
  v6.super_class = RPNWNearbyInvitationPeer;
  v2 = [(RPNWNearbyInvitationPeer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWNearbyInvitationPeer;
  [(RPNWNearbyInvitationPeer *)&v2 dealloc];
}

- (void)startDiscovery:(id)a3 foundHandler:(id)a4 updateHandler:(id)a5 lostHandler:(id)a6 invalidationHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (self->_nearbyInvitationDiscovery)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D270();
    }
  }

  else
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D28C(self);
    }

    v17 = objc_alloc_init(RPNearbyInvitationDiscovery);
    nearbyInvitationDiscovery = self->_nearbyInvitationDiscovery;
    self->_nearbyInvitationDiscovery = v17;

    v19 = +[RPNWNetworkAgent sharedNetworkAgent];
    v20 = [v19 dispatchQueue];
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDispatchQueue:v20];

    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDiscoveryFlags:1];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100076788;
    v29[3] = &unk_1001AD3B0;
    v30 = v13;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceFoundHandler:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100076798;
    v27[3] = &unk_1001AD3D8;
    v28 = v14;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceChangedHandler:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000767B0;
    v25[3] = &unk_1001AD3B0;
    v26 = v15;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceLostHandler:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000767C0;
    v23[3] = &unk_1001AD400;
    v24 = v16;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setInvalidationHandler:v23];
    v21 = self->_nearbyInvitationDiscovery;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000767D0;
    v22[3] = &unk_1001AB2C8;
    v22[4] = self;
    [(RPNearbyInvitationDiscovery *)v21 activateWithCompletion:v22];
  }
}

- (void)stopDiscovery
{
  if (!self->_nearbyInvitationDiscovery)
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D358(self);
    }

    nearbyInvitationDiscovery = self->_nearbyInvitationDiscovery;

    [(RPNearbyInvitationDiscovery *)nearbyInvitationDiscovery invalidate];
  }
}

- (void)startServer:(id)a3 withCompletion:(id)a4 disconnectHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_nearbyInvitationServer)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D3E4();
    }
  }

  else
  {
    v11 = objc_alloc_init(RPNearbyInvitationServer);
    nearbyInvitationServer = self->_nearbyInvitationServer;
    self->_nearbyInvitationServer = v11;

    v13 = [v8 applicationService];
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setServiceType:v13];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100076B40;
    v19[3] = &unk_1001AD450;
    v19[4] = self;
    v21 = v10;
    v20 = v8;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setSessionStartHandler:v19];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100076E6C;
    v18[3] = &unk_1001AD478;
    v18[4] = self;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setSessionEndedHandler:v18];
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setInvalidationHandler:&stru_1001AD498];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100076F84;
    v17[3] = &unk_1001AA970;
    v17[4] = self;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setInterruptionHandler:v17];
    v14 = self->_nearbyInvitationServer;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100076FE0;
    v15[3] = &unk_1001AD4C0;
    v15[4] = self;
    v16 = v9;
    [(RPNearbyInvitationServer *)v14 activateWithCompletion:v15];
  }
}

- (void)stopServer
{
  nearbyInvitationServer = self->_nearbyInvitationServer;
  if (nearbyInvitationServer)
  {
    [(RPNearbyInvitationServer *)nearbyInvitationServer invalidate];
    v4 = self->_nearbyInvitationServer;
    self->_nearbyInvitationServer = 0;
  }
}

- (void)connectToPeer:(id)a3 inboundConnection:(BOOL)a4 applicationService:(id)a5 listenerID:(id)a6 connectionID:(id)a7 connectHandler:(id)a8 disconnectHandler:(id)a9
{
  v13 = a4;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (v13 && !self->_nearbyInvitationSession)
  {
    if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D68C();
    }

    (*(v19 + 2))(v19, 0, 0);
  }

  else
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D64C();
    }

    v21 = objc_alloc_init(RPNearbyInvitationSession);
    nearbyInvitationSession = self->_nearbyInvitationSession;
    self->_nearbyInvitationSession = v21;

    v23 = +[RPNWNetworkAgent sharedNetworkAgent];
    v24 = [v23 dispatchQueue];
    [(RPNearbyInvitationSession *)self->_nearbyInvitationSession setDispatchQueue:v24];

    [(RPNearbyInvitationSession *)self->_nearbyInvitationSession setDestinationDevice:v15];
    v25 = self->_nearbyInvitationSession;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100077374;
    v26[3] = &unk_1001AD510;
    v27 = v15;
    v32 = v19;
    v28 = self;
    v33 = v20;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    [(RPNearbyInvitationSession *)v25 activateWithCompletion:v26];
  }
}

- (BOOL)findNearbyInvitationListenerAndCreateConnection:(id)a3 applicationService:(id)a4 listenerID:(id)a5 connectionID:(id)a6 agentClient:(id)a7
{
  v10 = a7;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [RPNWNearbyInvitationConnection alloc];
  v15 = [v13 destinationDevice];
  v16 = +[NSUUID UUID];
  v17 = [(RPNWNearbyInvitationConnection *)v14 initWithPeer:v15 session:v13 inbound:1 internal:1 applicationService:v12 connectionID:v11 endpointID:v16];

  [v10 setNearbyInvitationConnection:v17];
  v18 = [v10 nearbyInvitationConnection];

  if (v18)
  {
    v19 = [v10 listen_framer];
    v20 = [v10 flowToken];
    [RPNWFramer startConnection:v19 token:v20];

    v21 = [v10 nearbyInvitationConnection];
    [v21 setIsConnected:1];
  }

  return v18 != 0;
}

- (void)handleConnectionData:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000779A0;
  v3[3] = &unk_1001AD530;
  v4 = a3;
  [(RPNWNearbyInvitationPeer *)self receiveDataForConnection:v3 statusHandler:&stru_1001AD570];
}

- (void)handleConnectionRequest:(id)a3 agentClient:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077D08;
  v7[3] = &unk_1001AD598;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(RPNWNearbyInvitationPeer *)v8 receiveWithRequestID:@"com.apple.oneapi.nearbyinvitation.connection" receiveHandler:v7];
}

+ (id)createNWEndpointWithID:(id)a3 agentID:(id)a4 applicationService:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(RPNWNearbyInvitationEndpoint);
  [(RPNWNearbyInvitationEndpoint *)v11 setEndpointUUID:v10];

  v12 = [a1 createNWEndpointForEndpoint:v11 agentID:v9 applicationService:v8];

  return v12;
}

+ (id)createNWEndpointForEndpoint:(id)a3 agentID:(id)a4 applicationService:(id)a5
{
  v7 = a3;
  v8 = a4;
  [a5 UTF8String];
  v25[0] = 0;
  v25[1] = 0;
  v9 = [v7 endpointUUID];
  [v9 getUUIDBytes:v25];

  application_service = nw_endpoint_create_application_service();
  if (v8)
  {
    v24[0] = 0;
    v24[1] = 0;
    [v8 getUUIDBytes:v24];
    nw_endpoint_set_agent_identifier();
  }

  v11 = [v7 device];

  if (v11)
  {
    v12 = [v7 device];
    v13 = [v12 model];

    if (v13)
    {
      v14 = [v7 device];
      v15 = [v14 model];
      [v15 UTF8String];
      nw_endpoint_set_device_model();
    }

    v16 = [v7 device];
    v17 = [v16 identifier];

    if (v17)
    {
      v18 = [v7 device];
      v19 = [v18 identifier];
      [v19 UTF8String];
      nw_endpoint_set_device_id();
    }

    v20 = [v7 device];
    v21 = [v20 deviceColor];

    if (v21)
    {
      v22 = [v7 device];
      [v22 deviceColor];
      nw_endpoint_set_device_color();
    }
  }

  return application_service;
}

+ (const)responseCodeToString:(int)a3
{
  if (a3 > 3)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AD658)[a3];
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
    return (&off_1001AD678)[a3 - 1];
  }
}

- (void)receiveWithRequestID:(id)a3 receiveHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_nearbyInvitationSession)
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D8C8();
    }

    nearbyInvitationSession = self->_nearbyInvitationSession;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007822C;
    v9[3] = &unk_1001AD5C0;
    v10 = v6;
    v11 = v7;
    [(RPNearbyInvitationSession *)nearbyInvitationSession registerRequestID:v10 options:0 handler:v9];
  }

  else if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D908();
  }
}

- (void)receiveDataForConnection:(id)a3 statusHandler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100078C50;
  v8[3] = &unk_1001AD610;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(RPNWNearbyInvitationPeer *)self receiveWithRequestID:@"com.apple.oneapi.nearbyinvitation.data" receiveHandler:v8];
}

- (void)sendDataForConnection:(id)a3 applicationService:(id)a4 connectionID:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DCD0();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100078F24;
  v15[3] = &unk_1001AD638;
  v16 = v13;
  v14 = v13;
  [(RPNWNearbyInvitationPeer *)self sendWithRequestID:@"com.apple.oneapi.nearbyinvitation.data" data:v10 status:0 applicationService:v11 listenerID:0 connectionID:v12 responseHandler:v15];
}

@end
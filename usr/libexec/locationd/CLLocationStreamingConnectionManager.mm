@interface CLLocationStreamingConnectionManager
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)isRemoteWatchStreamingCompatible;
- (BOOL)shouldUseIDSForLocationStreaming;
- (CLLocationStreamingConnectionManager)init;
- (id)packageMessage:(id)message;
- (void)activateRapportLinkIfNecessary;
- (void)addClient:(id)client;
- (void)beginService;
- (void)endService;
- (void)retireClient:(id)client;
- (void)sendMessage:(id)message;
- (void)sendMessageIDS:(id)s;
- (void)sendMessageRapport:(id)rapport;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)setSilo:(id)silo;
- (void)updateNearbyStatusWithCompanionLinkDevice:(id)device didConnect:(BOOL)connect;
- (void)updateNearbyStatusWithDevices:(id)devices;
- (void)withClients:(id)clients;
@end

@implementation CLLocationStreamingConnectionManager

- (BOOL)isRemoteWatchStreamingCompatible
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  if (!objc_opt_class())
  {
    return 0;
  }

  getActiveDevice = [+[PDRRegistry sharedInstance](PDRRegistry getActiveDevice];
  if (!getActiveDevice)
  {
    return 0;
  }

  return [getActiveDevice supportsCapability:35032708];
}

- (BOOL)shouldUseIDSForLocationStreaming
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  LODWORD(getActiveDevice) = [(CLLocationStreamingConnectionManager *)self isRemoteWatchStreamingCompatible];
  if (getActiveDevice)
  {
    getActiveDevice = objc_opt_class();
    if (getActiveDevice)
    {
      getActiveDevice = [+[PDRRegistry sharedInstance](PDRRegistry getActiveDevice];
      if (getActiveDevice)
      {
        LOBYTE(getActiveDevice) = [objc_msgSend(objc_msgSend(objc_msgSend(getActiveDevice "systemBuildVersion")] < 8;
      }
    }
  }

  return getActiveDevice;
}

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656D60 != -1)
  {
    sub_1018BAD24();
  }

  return qword_102656D58;
}

+ (BOOL)isSupported
{
  if (qword_102656D70 != -1)
  {
    sub_1018BAD38();
  }

  return byte_102656D68;
}

- (CLLocationStreamingConnectionManager)init
{
  v3.receiver = self;
  v3.super_class = CLLocationStreamingConnectionManager;
  result = [(CLLocationStreamingConnectionManager *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLLocationStreamingConnectionManagerServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLLocationStreamingConnectionManagerClientProtocol];
  if (result)
  {
    result->_rapportLinkActive = 0;
  }

  return result;
}

- (void)updateNearbyStatusWithCompanionLinkDevice:(id)device didConnect:(BOOL)connect
{
  connectCopy = connect;
  if ([objc_msgSend(device "effectiveIdentifier")] && self->_pairIsNearby != connectCopy)
  {
    self->_pairIsNearby = connectCopy;
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      pairIsNearby = self->_pairIsNearby;
      *buf = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 1026;
      v14 = pairIsNearby;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Nearby status change, is nearby:%{public}d}", buf, 0x18u);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100546FDC;
    v8[3] = &unk_10245D398;
    v8[4] = self;
    [(CLLocationStreamingConnectionManager *)self withClients:v8];
  }
}

- (void)updateNearbyStatusWithDevices:(id)devices
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [devices countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice] && objc_msgSend(v9, "isNearby"))
        {
          v10 = [v9 relationship] == 1;
          goto LABEL_12;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:
  if (self->_pairIsNearby != v10)
  {
    self->_pairIsNearby = v10;
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v11 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      pairIsNearby = self->_pairIsNearby;
      *buf = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = pairIsNearby;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Nearby status change, is nearby:%{public}d}", buf, 0x18u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10054720C;
    v13[3] = &unk_10245D398;
    v13[4] = self;
    [(CLLocationStreamingConnectionManager *)self withClients:v13];
  }
}

- (void)activateRapportLinkIfNecessary
{
  if (!self->_rapportLink)
  {
    self->_rapportLink = objc_alloc_init(RPCompanionLinkClient);
    -[RPCompanionLinkClient setDispatchQueue:](self->_rapportLink, "setDispatchQueue:", [objc_msgSend(-[CLLocationStreamingConnectionManager universe](self "universe")]);
    [(RPCompanionLinkClient *)self->_rapportLink setControlFlags:32];
  }

  if (![(CLLocationStreamingConnectionManager *)self rapportLinkActive])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005473F8;
    v6[3] = &unk_10245D3C0;
    v6[4] = self;
    [(RPCompanionLinkClient *)[(CLLocationStreamingConnectionManager *)self rapportLink] activateWithCompletion:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005474EC;
    v5[3] = &unk_10245D3E8;
    v5[4] = self;
    [(RPCompanionLinkClient *)[(CLLocationStreamingConnectionManager *)self rapportLink] setDeviceFoundHandler:v5];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100547650;
    v4[3] = &unk_10245D3E8;
    v4[4] = self;
    [(RPCompanionLinkClient *)[(CLLocationStreamingConnectionManager *)self rapportLink] setDeviceLostHandler:v4];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100312A90;
    v3[3] = &unk_10245D438;
    v3[4] = self;
    [(RPCompanionLinkClient *)[(CLLocationStreamingConnectionManager *)self rapportLink] registerEventID:@"com.apple.locationd.rapport.event" options:0 handler:v3];
  }
}

- (void)setSilo:(id)silo
{
  if (qword_1025D47B0 != -1)
  {
    sub_1018BAD4C();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:suspending silo until IDS becomes available}", buf, 0x12u);
  }

  [silo suspend];
  v8.receiver = self;
  v8.super_class = CLLocationStreamingConnectionManager;
  [(CLLocationStreamingConnectionManager *)&v8 setSilo:silo];
  if (qword_1025D47B0 != -1)
  {
    sub_1018BAD60();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:waiting on IDS to become available}", buf, 0x12u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100547988;
  v7[3] = &unk_10245D460;
  v7[4] = self;
  v7[5] = silo;
  [IDSService serviceWithIdentifier:@"com.apple.private.alloy.location.stream" completion:v7];
}

- (void)beginService
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  -[IDSService addDelegate:queue:](-[CLLocationStreamingConnectionManager service](self, "service"), "addDelegate:queue:", self, [objc_msgSend(-[CLLocationStreamingConnectionManager universe](self "universe")]);
  [(CLLocationStreamingConnectionManager *)self activateRapportLinkIfNecessary];
  [(CLLocationStreamingConnectionManager *)self setUnacknowledgedMessages:+[NSMutableDictionary dictionary]];
  [(CLLocationStreamingConnectionManager *)self setClients:+[NSMutableSet set]];
  devices = [(IDSService *)[(CLLocationStreamingConnectionManager *)self service] devices];

  [(CLLocationStreamingConnectionManager *)self updateNearbyStatusWithDevices:devices];
}

- (void)endService
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  [(RPCompanionLinkClient *)[(CLLocationStreamingConnectionManager *)self rapportLink] invalidate];
  self->_rapportLinkActive = 0;
  self->_rapportLink = 0;
  [(CLLocationStreamingConnectionManager *)self setUnacknowledgedMessages:0];
  [(CLLocationStreamingConnectionManager *)self setClients:0];

  [(CLLocationStreamingConnectionManager *)self setService:0];
}

- (void)addClient:(id)client
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  [(NSMutableSet *)self->_clients addObject:client];
  pairIsNearby = self->_pairIsNearby;

  [client pairedDeviceIsNearby:pairIsNearby];
}

- (void)retireClient:(id)client
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  clients = self->_clients;

  [(NSMutableSet *)clients removeObject:client];
}

- (id)packageMessage:(id)message
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:objc_msgSend(message forKeyedSubscript:{"messageType"), @"kCLLocationStreamingMessageKeyType"}];
  [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", objc_msgSend(message, "protocolVersion")), @"kCLLocationStreamingMessageKeyVersion"}];
  if ([message payload])
  {
    [v4 setObject:objc_msgSend(message forKeyedSubscript:{"payload"), @"kCLLocationStreamingMessageKeyPayload"}];
  }

  return v4;
}

- (void)sendMessageIDS:(id)s
{
  v5 = [(CLLocationStreamingConnectionManager *)self packageMessage:?];
  v22 = 0uLL;
  service = [(CLLocationStreamingConnectionManager *)self service];
  v7 = -[IDSService sendMessage:toDestinations:priority:options:identifier:error:](service, "sendMessage:toDestinations:priority:options:identifier:error:", v5, +[NSSet setWithObject:](NSSet, "setWithObject:", IDSDefaultPairedDevice), [s priority], objc_msgSend(s, "idsOptions"), &v22 + 8, &v22);
  if (v22 == 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v12 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v13 = [objc_msgSend(s "messageType")];
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No error, but also no identifier, message type:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v14 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v15 = [objc_msgSend(s "messageType")];
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = v15;
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No error, but also no identifier", "{msg%{public}.0s:No error, but also no identifier, message type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  else if (v22)
  {
    v8 = v7;
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v9 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v22;
      v11 = [objc_msgSend(s "messageType")];
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = v10;
      v29 = 2082;
      v30 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Got error from IDS, error:%{public, location:escape_only}@, message type:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1005481B8;
    v20[3] = &unk_10245D488;
    v20[4] = s;
    v20[5] = v22;
    v21 = v8;
    [(CLLocationStreamingConnectionManager *)self withClients:v20];
  }

  else
  {
    unacknowledgedMessages = [(CLLocationStreamingConnectionManager *)self unacknowledgedMessages];
    [(NSMutableDictionary *)unacknowledgedMessages setObject:s forKeyedSubscript:*(&v22 + 1)];
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v17 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v18 = [objc_msgSend(s "messageType")];
      uTF8String = [*(&v22 + 1) UTF8String];
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = v18;
      v29 = 2082;
      v30 = uTF8String;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Handed off message to IDS, message type:%{public, location:escape_only}s, identifier:%{public, location:escape_only}s}", buf, 0x26u);
    }
  }
}

- (void)sendMessageRapport:(id)rapport
{
  v5 = [(CLLocationStreamingConnectionManager *)self packageMessage:?];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = sub_100047414;
  v21 = sub_1000483E0;
  v22 = 0;
  rapportLink = [(CLLocationStreamingConnectionManager *)self rapportLink];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005485A4;
  v16[3] = &unk_10245D4D8;
  v16[6] = &v17;
  v16[7] = v23;
  v16[4] = rapport;
  v16[5] = self;
  [(RPCompanionLinkClient *)rapportLink sendEventID:@"com.apple.locationd.rapport.event" event:v5 destinationID:RPDestinationIdentifierPairedCompanion options:0 completion:v16];
  if (v18[5])
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v8 = v18[5];
      v9 = [objc_msgSend(rapport "messageType")];
      *buf = 68289538;
      v26 = 2082;
      v27 = "";
      v28 = 2114;
      v29 = v8;
      v30 = 2082;
      v31 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#warning Got error from #Rapport, error:%{public, location:escape_only}@, message type:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v10 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v11 = v18[5];
      v12 = [objc_msgSend(rapport "messageType")];
      *buf = 68289538;
      v26 = 2082;
      v27 = "";
      v28 = 2114;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#warning Got error from #Rapport", "{msg%{public}.0s:#warning Got error from #Rapport, error:%{public, location:escape_only}@, message type:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100548834;
    v15[3] = &unk_10245D500;
    v15[4] = rapport;
    v15[5] = &v17;
    v15[6] = v23;
    [(CLLocationStreamingConnectionManager *)self withClients:v15];
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v14 = [objc_msgSend(rapport "messageType")];
      *buf = 68289282;
      v26 = 2082;
      v27 = "";
      v28 = 2082;
      v29 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Handed off message to #Rapport, message type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v23, 8);
}

- (void)sendMessage:(id)message
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  if ([(CLLocationStreamingConnectionManager *)self isRemoteWatchStreamingCompatible])
  {
    if ([(CLLocationStreamingConnectionManager *)self shouldUseIDSForLocationStreaming])
    {

      [(CLLocationStreamingConnectionManager *)self sendMessageIDS:message];
    }

    else
    {

      [(CLLocationStreamingConnectionManager *)self sendMessageRapport:message];
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Dropping message due to incompatible remote device}", v6, 0x12u);
    }
  }
}

- (void)withClients:(id)clients
{
  [-[CLLocationStreamingConnectionManager universe](self "universe")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = self->_clients;
  v6 = [(NSMutableSet *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(clients);
        }

        (*(clients + 2))(clients, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  [-[CLLocationStreamingConnectionManager universe](self universe];
  v9 = [message objectForKeyedSubscript:@"kCLLocationStreamingMessageKeyPayload"];
  v10 = [message objectForKeyedSubscript:@"kCLLocationStreamingMessageKeyType"];
  if (v10)
  {
    v11 = v10;
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v12 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      messageCopy2 = [v11 UTF8String];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:IDS Got message, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v13 = [objc_msgSend(message objectForKeyedSubscript:{@"kCLLocationStreamingMessageKeyVersion", "intValue"}];
    sub_100312E54();
    sub_10000EC00(buf, [v11 UTF8String]);
    v14 = sub_10045EF04(&qword_102656D88, buf);
    if (SBYTE3(messageCopy2) < 0)
    {
      operator delete(*buf);
    }

    if (v14 == &qword_102656D90)
    {
      v15 = -1;
      v16 = -1;
    }

    else
    {
      v16 = *(v14 + 56);
      v15 = *(v14 + 60);
      if (v13 >= v16 && v13 <= v15)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100548EAC;
        v21[3] = &unk_10245D410;
        v21[4] = v11;
        v21[5] = v9;
        [(CLLocationStreamingConnectionManager *)self withClients:v21];
        return;
      }
    }

    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v17 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [v11 UTF8String];
      *buf = 68290050;
      *&buf[4] = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      messageCopy2 = uTF8String;
      v27 = 1026;
      v28 = v13;
      v29 = 1026;
      v30 = v16;
      v31 = 1026;
      v32 = v15;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received message of unsupported version, type:%{public, location:escape_only}s, declared version:%{public}d, minimum version:%{public}d, maximum version:%{public}d}", buf, 0x2Eu);
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v19 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2113;
      messageCopy2 = message;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Missing message type, message:%{private, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v20 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2113;
      messageCopy2 = message;
      _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Missing message type", "{msg%{public}.0s:Missing message type, message:%{private, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  [-[CLLocationStreamingConnectionManager universe](self universe];
  if (identifier)
  {
    v11 = [(NSMutableDictionary *)[(CLLocationStreamingConnectionManager *)self unacknowledgedMessages] objectForKeyedSubscript:identifier];
    v12 = v11;
    [(NSMutableDictionary *)[(CLLocationStreamingConnectionManager *)self unacknowledgedMessages] removeObjectForKey:identifier];
    if (error && successCopy)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018BAE1C();
      }

      v20 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        uTF8String = "assert";
        v31 = 2081;
        *v32 = "false";
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          goto LABEL_41;
        }
      }

      while (1)
      {
        v21 = qword_1025D48A8;
        if (os_signpost_enabled(qword_1025D48A8))
        {
          *buf = 68289539;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2082;
          uTF8String = "assert";
          v31 = 2081;
          *v32 = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D48A0 != -1)
          {
            sub_1018BAE30();
          }
        }

        v22 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2082;
          uTF8String = "assert";
          v31 = 2081;
          *v32 = "false";
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
LABEL_41:
        sub_1018BAE30();
      }
    }

    if (!error && successCopy)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD4C();
      }

      v13 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        uTF8String = [identifier UTF8String];
        v31 = 2082;
        *v32 = [objc_msgSend(v11 "messageType")];
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:IDS Send success, identifier:%{public, location:escape_only}s, type:%{public, location:escape_only}s}", buf, 0x26u);
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1005494F0;
      v23[3] = &unk_10245D398;
      v23[4] = v11;
      v14 = v23;
LABEL_29:
      [(CLLocationStreamingConnectionManager *)self withClients:v14];
      return;
    }

    v17 = [objc_msgSend(error "userInfo")];
    if (!v17 || [v17 code] != 32)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD4C();
      }

      v19 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290050;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        uTF8String = [identifier UTF8String];
        v31 = 1026;
        *v32 = successCopy;
        *&v32[4] = 2114;
        *&v32[6] = error;
        v33 = 2082;
        v34 = [objc_msgSend(v11 "messageType")];
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Send failure, identifier:%{public, location:escape_only}s, success:%{public}d, error:%{public, location:escape_only}@, type:%{public, location:escape_only}s}", buf, 0x36u);
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1005494E0;
      v24[3] = &unk_10245D410;
      v24[4] = v11;
      v24[5] = error;
      v14 = v24;
      goto LABEL_29;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v18 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sync to/from standalone watch is not supported}", buf, 0x12u);
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v15 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Missing identifier}", buf, 0x12u);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v16 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Missing identifier", "{msg%{public}.0s:Missing identifier}", buf, 0x12u);
    }
  }
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  [-[CLLocationStreamingConnectionManager universe](self universe];

  [(CLLocationStreamingConnectionManager *)self updateNearbyStatusWithDevices:changed];
}

@end
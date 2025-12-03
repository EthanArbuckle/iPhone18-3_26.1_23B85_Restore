@interface RPNWListener
+ (BOOL)addListenerAgentClient:(id)client;
+ (id)addDeviceToApplicationServiceMapping:(id)mapping device:(id)device completion:(id)completion;
+ (id)findListenerForAgentClient:(id)client sender:(id)sender browseRequest:(BOOL)request;
+ (id)findListenerForID:(id)d applicationService:(id)service fromPeer:(id)peer;
+ (void)initialize;
+ (void)listAllowedApplicationServices:(id)services;
+ (void)queryDeviceToApplicationServiceMapping:(id)mapping device:(id)device completion:(id)completion;
+ (void)removeListenerForApplicationService:(id)service;
+ (void)setAutoMapping:(BOOL)mapping;
+ (void)startListenerMappingTimeout:(id)timeout;
- (BOOL)hasTriggeredConnection;
- (RPNWAgentClient)agentClient;
- (RPNWListener)init;
- (id)description;
- (id)getConnectionWithID:(id)d;
- (id)longDescription;
- (id)removeTriggeredConnection;
- (void)addIncomingConnection:(id)connection;
- (void)clearIncomingConnections;
- (void)dealloc;
- (void)markConnectionAsTriggered:(id)triggered;
- (void)startConnection:(id)connection agentClient:(id)client;
@end

@implementation RPNWListener

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_1001D6120;
    qword_1001D6120 = v4;
  }
}

- (RPNWListener)init
{
  v9.receiver = self;
  v9.super_class = RPNWListener;
  v2 = [(RPNWListener *)&v9 init];
  if (v2)
  {
    if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116420(v2);
    }

    v3 = objc_alloc_init(NSMutableArray);
    peerDevices = v2->_peerDevices;
    v2->_peerDevices = v3;

    v5 = objc_alloc_init(NSMutableArray);
    listenerNotifications = v2->_listenerNotifications;
    v2->_listenerNotifications = v5;

    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWListener;
  [(RPNWListener *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  selfCopy = self;
  v5 = objc_alloc_init(NSMutableString);
  [v5 appendFormat:@"%p", selfCopy];

  [v3 appendFormat:@"RPNWListener[%@][%@]=%@ : ", v5, selfCopy->_applicationService, selfCopy->_mappingID];
  ageOutTimeout = selfCopy->_ageOutTimeout;
  if (ageOutTimeout)
  {
    v7 = +[NSDate now];
    [(NSDate *)ageOutTimeout timeIntervalSinceDate:v7];
    v9 = v8;

    [v3 appendFormat:@"ageOut=%.0fs ", v9];
  }

  else
  {
    [v3 appendString:@"ageOut=N/A "];
  }

  v10 = objc_loadWeakRetained(&selfCopy->_agentClient);
  v11 = objc_alloc_init(NSMutableString);
  [v11 appendFormat:@"%p", v10];

  [v3 appendFormat:@"agentClient=%@ { ", v11];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = selfCopy->_peerDevices;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        name = [*(*(&v19 + 1) + 8 * i) name];
        [v3 appendFormat:@"'%@' ", name];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [v3 appendString:@"}"];

  return v3;
}

- (id)longDescription
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(RPNWListener *)self description];
  [v3 appendString:v4];

  incomingConnections = self->_incomingConnections;
  if (incomingConnections && [(NSMutableArray *)incomingConnections count])
  {
    [v3 appendFormat:@"  Incoming Connections:\n"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_incomingConnections;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 appendFormat:@"   + %@\n", *(*(&v12 + 1) + 8 * i)];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

+ (void)removeListenerForApplicationService:(id)service
{
  serviceCopy = service;
  v4 = [qword_1001D6120 objectForKeyedSubscript:serviceCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  incomingConnections = [v4 incomingConnections];
  v6 = [incomingConnections countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(incomingConnections);
        }

        [*(*(&v10 + 1) + 8 * v9) sendStatusUpdate:2];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [incomingConnections countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [qword_1001D6120 removeObjectForKey:serviceCopy];
}

+ (id)addDeviceToApplicationServiceMapping:(id)mapping device:(id)device completion:(id)completion
{
  mappingCopy = mapping;
  deviceCopy = device;
  completionCopy = completion;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011649C(deviceCopy);
    if (mappingCopy)
    {
      goto LABEL_5;
    }
  }

  else if (mappingCopy)
  {
LABEL_5:
    v10 = [qword_1001D6120 objectForKeyedSubscript:mappingCopy];
    if (v10)
    {
      v11 = v10;
      agentClient = [(RPNWListener *)v10 agentClient];

      if (agentClient)
      {
        agentClient = [(RPNWListener *)v11 agentClient];
      }

      else
      {
        [(RPNWListener *)v11 setPid:0];
      }
    }

    else
    {
      v11 = objc_alloc_init(RPNWListener);
      [qword_1001D6120 setObject:v11 forKeyedSubscript:mappingCopy];
      [(RPNWListener *)v11 setApplicationService:mappingCopy];
      v13 = +[NSUUID UUID];
      [(RPNWListener *)v11 setMappingID:v13];

      agentClient = [RPNWAgentClient findListenerAgentClientFromApplicationServiceName:mappingCopy];
      if (agentClient)
      {
        [(RPNWListener *)v11 setAgentClient:agentClient];
        -[RPNWListener setPid:](v11, "setPid:", [agentClient pid]);
      }

      else
      {
        [RPNWListener startListenerMappingTimeout:mappingCopy];
      }

      if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100116508();
      }
    }

    peerDevices = [(RPNWListener *)v11 peerDevices];
    [peerDevices addObject:deviceCopy];

    if (completionCopy)
    {
      if (agentClient)
      {
        if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
        {
          sub_100116548();
        }

        mappingID = [(RPNWListener *)v11 mappingID];
        completionCopy[2](completionCopy, mappingID, 0);
      }

      else
      {
        if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
        {
          sub_100116564();
        }

        mappingID = [(RPNWListener *)v11 listenerNotifications];
        v16 = objc_retainBlock(completionCopy);
        [mappingID addObject:v16];
      }
    }

    goto LABEL_32;
  }

  if (dword_1001D36C0 <= 90 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116580();
  }

  v11 = 0;
LABEL_32:

  return v11;
}

+ (void)queryDeviceToApplicationServiceMapping:(id)mapping device:(id)device completion:(id)completion
{
  mappingCopy = mapping;
  deviceCopy = device;
  completionCopy = completion;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001165A0(deviceCopy);
  }

  v10 = [qword_1001D6120 objectForKeyedSubscript:mappingCopy];
  v11 = v10;
  if (v10 && ([v10 agentClient], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    peerDevices = [v11 peerDevices];
    v14 = [peerDevices countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(peerDevices);
          }

          if ([*(*(&v19 + 1) + 8 * i) isEqualToDevice:deviceCopy])
          {
            if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
            {
              sub_10011660C();
            }

            mappingID = [v11 mappingID];
            completionCopy[2](completionCopy, mappingID, 0);

            goto LABEL_26;
          }
        }

        v15 = [peerDevices countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_10011664C();
    }
  }

  else if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116680();
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_26:
}

+ (BOOL)addListenerAgentClient:(id)client
{
  clientCopy = client;
  v4 = qword_1001D6120;
  applicationService = [clientCopy applicationService];
  v6 = [v4 objectForKeyedSubscript:applicationService];

  if (!v6)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116850(clientCopy);
    }

    goto LABEL_43;
  }

  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011669C(clientCopy);
  }

  if ([v6 pid])
  {
    v7 = [v6 pid];
    if (v7 != [clientCopy pid])
    {
      if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100116708(v6, clientCopy);
      }

      applicationService2 = [clientCopy applicationService];
      [RPNWListener removeListenerForApplicationService:applicationService2];

LABEL_43:
      v24 = 0;
      goto LABEL_44;
    }
  }

  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116764(clientCopy);
  }

  ageOutListenerTimer = [v6 ageOutListenerTimer];

  if (ageOutListenerTimer)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116800();
    }

    ageOutListenerTimer2 = [v6 ageOutListenerTimer];
    dispatch_source_cancel(ageOutListenerTimer2);

    [v6 setAgeOutTimeout:0];
    [v6 setAgeOutListenerTimer:0];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  incomingConnections = [v6 incomingConnections];
  v11 = [incomingConnections countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(incomingConnections);
        }

        [*(*(&v31 + 1) + 8 * i) sendStatusUpdate:3];
      }

      v12 = [incomingConnections countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  [v6 setAgentClient:clientCopy];
  [v6 setPid:{objc_msgSend(clientCopy, "pid")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  listenerNotifications = [v6 listenerNotifications];
  v16 = [listenerNotifications countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(listenerNotifications);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
        {
          sub_10011681C();
        }

        mappingID = [v6 mappingID];
        (*(v20 + 16))(v20, mappingID, 0);

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v22 = [listenerNotifications countByEnumeratingWithState:&v27 objects:v35 count:16];
      v17 = v22;
    }

    while (v22);
  }

  listenerNotifications2 = [v6 listenerNotifications];
  [listenerNotifications2 removeAllObjects];

  v24 = 1;
LABEL_44:

  return v24;
}

+ (void)startListenerMappingTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v4 = [qword_1001D6120 objectForKeyedSubscript:timeoutCopy];
  if (v4)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001168AC();
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    incomingConnections = [v4 incomingConnections];
    v6 = [incomingConnections countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        v9 = 0;
        do
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(incomingConnections);
          }

          v10 = *(*(&v26 + 1) + 8 * v9);
          if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001168C8();
          }

          [v10 sendStatusUpdate:2];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v11 = [incomingConnections countByEnumeratingWithState:&v26 objects:v30 count:16];
        v7 = v11;
      }

      while (v11);
    }

    [v4 clearIncomingConnections];
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116908();
    }

    [v4 setAgentClient:0];
    v12 = [NSDate dateWithTimeIntervalSinceNow:180.0];
    [v4 setAgeOutTimeout:v12];

    v13 = +[RPNWNetworkAgent sharedNetworkAgent];
    dispatchQueue = [v13 dispatchQueue];
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, dispatchQueue);
    [v4 setAgeOutListenerTimer:v15];

    ageOutListenerTimer = [v4 ageOutListenerTimer];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100049A4C;
    v23 = &unk_1001AB488;
    v17 = v4;
    v24 = v17;
    v25 = timeoutCopy;
    dispatch_source_set_event_handler(ageOutListenerTimer, &v20);

    ageOutListenerTimer2 = [v17 ageOutListenerTimer];
    CUDispatchTimerSet();

    ageOutListenerTimer3 = [v17 ageOutListenerTimer];
    dispatch_activate(ageOutListenerTimer3);
  }
}

+ (id)findListenerForID:(id)d applicationService:(id)service fromPeer:(id)peer
{
  dCopy = d;
  serviceCopy = service;
  peerCopy = peer;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001169D8(peerCopy);
  }

  v10 = [qword_1001D6120 objectForKeyedSubscript:serviceCopy];
  if (!v10)
  {
    if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116B34();
    }

LABEL_33:
    v18 = 0;
    goto LABEL_39;
  }

  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116A48();
  }

  if (![v10 automapped])
  {
    mappingID = [v10 mappingID];
    v12 = [mappingID isEqual:dCopy];

    if (v12)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      peerDevices = [v10 peerDevices];
      v14 = [peerDevices countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(peerDevices);
            }

            if ([*(*(&v20 + 1) + 8 * i) isEqualToDevice:peerCopy])
            {

              goto LABEL_35;
            }
          }

          v15 = [peerDevices countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100116AA4();
      }
    }

    else if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116A88();
    }

    goto LABEL_33;
  }

  if (dword_1001D36C0 <= 30)
  {
    if (dword_1001D36C0 != -1 || _LogCategory_Initialize())
    {
      sub_100116AD8();
    }

LABEL_35:
    if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116AF4();
    }
  }

  v18 = v10;
LABEL_39:

  return v18;
}

+ (id)findListenerForAgentClient:(id)client sender:(id)sender browseRequest:(BOOL)request
{
  requestCopy = request;
  clientCopy = client;
  senderCopy = sender;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116B50();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  applicationService = qword_1001D6120;
  v9 = [applicationService countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(applicationService);
        }

        v13 = [qword_1001D6120 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        agentClient = [v13 agentClient];

        if (agentClient == clientCopy)
        {
          if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100116B90(v13);
          }

          goto LABEL_24;
        }
      }

      v10 = [applicationService countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1001D36C0 <= 90 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116BE8();
  }

  v13 = 0;
  if (senderCopy && ((byte_1001D6128 | requestCopy) & 1) != 0)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116C1C();
    }

    applicationService = [clientCopy applicationService];
    v13 = [RPNWListener addDeviceToApplicationServiceMapping:applicationService device:senderCopy completion:0];
LABEL_24:
  }

  return v13;
}

- (void)startConnection:(id)connection agentClient:(id)client
{
  connectionCopy = connection;
  clientCopy = client;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116C50(connectionCopy, self);
  }

  peer = [connectionCopy peer];
  destinationDevice = [peer destinationDevice];
  idsDeviceIdentifier = [destinationDevice idsDeviceIdentifier];

  if (idsDeviceIdentifier && [clientCopy isEntitled])
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116CE0(connectionCopy, self);
    }

    peer2 = [connectionCopy peer];
    destinationDevice2 = [peer2 destinationDevice];
    v12 = [RPNWPeer createNWEndpointForDevice:destinationDevice2 applicationService:self->_applicationService];

    v13 = nw_array_create();
    nw_array_append();
    browseResponse = [clientCopy browseResponse];
    (browseResponse)[2](browseResponse, v13);
  }

  listen_framer = [clientCopy listen_framer];
  token = [connectionCopy token];
  [RPNWFramer startConnection:listen_framer token:token];

  [(RPNWListener *)self markConnectionAsTriggered:connectionCopy];
}

- (void)addIncomingConnection:(id)connection
{
  connectionCopy = connection;
  incomingConnections = self->_incomingConnections;
  v8 = connectionCopy;
  if (!incomingConnections)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_incomingConnections;
    self->_incomingConnections = v6;

    connectionCopy = v8;
    incomingConnections = self->_incomingConnections;
  }

  [(NSMutableArray *)incomingConnections addObject:connectionCopy];
}

- (void)clearIncomingConnections
{
  incomingConnections = self->_incomingConnections;
  self->_incomingConnections = 0;
}

- (id)getConnectionWithID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_incomingConnections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        connectionUUID = [v9 connectionUUID];
        v11 = [connectionUUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)hasTriggeredConnection
{
  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116D54();
  }

  if (!self->_triggeredConnection)
  {
    if (dword_1001D36C0 <= 40)
    {
      if (dword_1001D36C0 == -1)
      {
        v7 = _LogCategory_Initialize();
        if (!v7)
        {
          return v7;
        }
      }

      sub_100116E0C();
    }

LABEL_22:
    LOBYTE(v7) = 0;
    return v7;
  }

  triggerTime = self->_triggerTime;
  v4 = +[NSDate now];
  [(NSDate *)triggerTime timeIntervalSinceDate:v4];
  v6 = v5;

  if (v6 < 0.0)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116D70();
    }

    if (!self->_doneABC)
    {
      if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100116DB0();
      }

      v8 = sub_10001B924(self->_pid);
      v9 = +[RPAutoBugCapture sharedReporter];
      [v9 reportIssueOfType:2 issueContext:@"Stale Client Process" processName:v8];

      self->_doneABC = 1;
    }

    goto LABEL_22;
  }

  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116DCC();
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (void)markConnectionAsTriggered:(id)triggered
{
  triggeredCopy = triggered;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  triggerTime = self->_incomingConnections;
  v7 = [(NSMutableArray *)triggerTime countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    obj = triggered;
    selfCopy = self;
    v9 = 0;
    v10 = *v20;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      v9 += v8;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(triggerTime);
        }

        connectionUUID = [*(*(&v19 + 1) + 8 * v11) connectionUUID];
        connectionUUID2 = [triggeredCopy connectionUUID];
        v15 = [connectionUUID isEqual:connectionUUID2];

        if (v15)
        {

          if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100116E28();
          }

          [(NSMutableArray *)selfCopy->_incomingConnections removeObjectAtIndex:v12];
          objc_storeStrong(&selfCopy->_triggeredConnection, obj);
          v16 = [NSDate dateWithTimeIntervalSinceNow:2.0];
          triggerTime = selfCopy->_triggerTime;
          selfCopy->_triggerTime = v16;
          goto LABEL_14;
        }

        ++v12;
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [(NSMutableArray *)triggerTime countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)removeTriggeredConnection
{
  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116E68(self);
  }

  triggeredConnection = self->_triggeredConnection;
  v4 = triggeredConnection;
  v5 = self->_triggeredConnection;
  self->_triggeredConnection = 0;

  triggerTime = self->_triggerTime;
  self->_triggerTime = 0;

  return triggeredConnection;
}

+ (void)listAllowedApplicationServices:(id)services
{
  servicesCopy = services;
  v4 = servicesCopy;
  if (byte_1001D6128)
  {
    v5 = "on";
  }

  else
  {
    v5 = "off";
  }

  [servicesCopy appendFormat:@"AutoMapping: %s\n", v5];
  [v4 appendString:@"Allowed Application Services\n"];
  if ([qword_1001D6120 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = qword_1001D6120;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [qword_1001D6120 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v10)];
          longDescription = [v11 longDescription];
          [v4 appendFormat:@"  %@\n", longDescription];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v4 appendString:@"  <empty>\n"];
  }
}

+ (void)setAutoMapping:(BOOL)mapping
{
  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116EAC();
  }

  byte_1001D6128 = mapping;
}

- (RPNWAgentClient)agentClient
{
  WeakRetained = objc_loadWeakRetained(&self->_agentClient);

  return WeakRetained;
}

@end
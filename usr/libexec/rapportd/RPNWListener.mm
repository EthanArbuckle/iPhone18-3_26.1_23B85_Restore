@interface RPNWListener
+ (BOOL)addListenerAgentClient:(id)a3;
+ (id)addDeviceToApplicationServiceMapping:(id)a3 device:(id)a4 completion:(id)a5;
+ (id)findListenerForAgentClient:(id)a3 sender:(id)a4 browseRequest:(BOOL)a5;
+ (id)findListenerForID:(id)a3 applicationService:(id)a4 fromPeer:(id)a5;
+ (void)initialize;
+ (void)listAllowedApplicationServices:(id)a3;
+ (void)queryDeviceToApplicationServiceMapping:(id)a3 device:(id)a4 completion:(id)a5;
+ (void)removeListenerForApplicationService:(id)a3;
+ (void)setAutoMapping:(BOOL)a3;
+ (void)startListenerMappingTimeout:(id)a3;
- (BOOL)hasTriggeredConnection;
- (RPNWAgentClient)agentClient;
- (RPNWListener)init;
- (id)description;
- (id)getConnectionWithID:(id)a3;
- (id)longDescription;
- (id)removeTriggeredConnection;
- (void)addIncomingConnection:(id)a3;
- (void)clearIncomingConnections;
- (void)dealloc;
- (void)markConnectionAsTriggered:(id)a3;
- (void)startConnection:(id)a3 agentClient:(id)a4;
@end

@implementation RPNWListener

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
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
  v4 = self;
  v5 = objc_alloc_init(NSMutableString);
  [v5 appendFormat:@"%p", v4];

  [v3 appendFormat:@"RPNWListener[%@][%@]=%@ : ", v5, v4->_applicationService, v4->_mappingID];
  ageOutTimeout = v4->_ageOutTimeout;
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

  v10 = objc_loadWeakRetained(&v4->_agentClient);
  v11 = objc_alloc_init(NSMutableString);
  [v11 appendFormat:@"%p", v10];

  [v3 appendFormat:@"agentClient=%@ { ", v11];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v4->_peerDevices;
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

        v17 = [*(*(&v19 + 1) + 8 * i) name];
        [v3 appendFormat:@"'%@' ", v17];
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

+ (void)removeListenerForApplicationService:(id)a3
{
  v3 = a3;
  v4 = [qword_1001D6120 objectForKeyedSubscript:v3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 incomingConnections];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) sendStatusUpdate:2];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [qword_1001D6120 removeObjectForKey:v3];
}

+ (id)addDeviceToApplicationServiceMapping:(id)a3 device:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011649C(v8);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v10 = [qword_1001D6120 objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = v10;
      v12 = [(RPNWListener *)v10 agentClient];

      if (v12)
      {
        v12 = [(RPNWListener *)v11 agentClient];
      }

      else
      {
        [(RPNWListener *)v11 setPid:0];
      }
    }

    else
    {
      v11 = objc_alloc_init(RPNWListener);
      [qword_1001D6120 setObject:v11 forKeyedSubscript:v7];
      [(RPNWListener *)v11 setApplicationService:v7];
      v13 = +[NSUUID UUID];
      [(RPNWListener *)v11 setMappingID:v13];

      v12 = [RPNWAgentClient findListenerAgentClientFromApplicationServiceName:v7];
      if (v12)
      {
        [(RPNWListener *)v11 setAgentClient:v12];
        -[RPNWListener setPid:](v11, "setPid:", [v12 pid]);
      }

      else
      {
        [RPNWListener startListenerMappingTimeout:v7];
      }

      if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100116508();
      }
    }

    v14 = [(RPNWListener *)v11 peerDevices];
    [v14 addObject:v8];

    if (v9)
    {
      if (v12)
      {
        if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
        {
          sub_100116548();
        }

        v15 = [(RPNWListener *)v11 mappingID];
        v9[2](v9, v15, 0);
      }

      else
      {
        if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
        {
          sub_100116564();
        }

        v15 = [(RPNWListener *)v11 listenerNotifications];
        v16 = objc_retainBlock(v9);
        [v15 addObject:v16];
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

+ (void)queryDeviceToApplicationServiceMapping:(id)a3 device:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001165A0(v8);
  }

  v10 = [qword_1001D6120 objectForKeyedSubscript:v7];
  v11 = v10;
  if (v10 && ([v10 agentClient], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [v11 peerDevices];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v13);
          }

          if ([*(*(&v19 + 1) + 8 * i) isEqualToDevice:v8])
          {
            if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
            {
              sub_10011660C();
            }

            v18 = [v11 mappingID];
            v9[2](v9, v18, 0);

            goto LABEL_26;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

  v9[2](v9, 0, 0);
LABEL_26:
}

+ (BOOL)addListenerAgentClient:(id)a3
{
  v3 = a3;
  v4 = qword_1001D6120;
  v5 = [v3 applicationService];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116850(v3);
    }

    goto LABEL_43;
  }

  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011669C(v3);
  }

  if ([v6 pid])
  {
    v7 = [v6 pid];
    if (v7 != [v3 pid])
    {
      if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100116708(v6, v3);
      }

      v25 = [v3 applicationService];
      [RPNWListener removeListenerForApplicationService:v25];

LABEL_43:
      v24 = 0;
      goto LABEL_44;
    }
  }

  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116764(v3);
  }

  v8 = [v6 ageOutListenerTimer];

  if (v8)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116800();
    }

    v9 = [v6 ageOutListenerTimer];
    dispatch_source_cancel(v9);

    [v6 setAgeOutTimeout:0];
    [v6 setAgeOutListenerTimer:0];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [v6 incomingConnections];
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v31 + 1) + 8 * i) sendStatusUpdate:3];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  [v6 setAgentClient:v3];
  [v6 setPid:{objc_msgSend(v3, "pid")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [v6 listenerNotifications];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
        {
          sub_10011681C();
        }

        v21 = [v6 mappingID];
        (*(v20 + 16))(v20, v21, 0);

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v22 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      v17 = v22;
    }

    while (v22);
  }

  v23 = [v6 listenerNotifications];
  [v23 removeAllObjects];

  v24 = 1;
LABEL_44:

  return v24;
}

+ (void)startListenerMappingTimeout:(id)a3
{
  v3 = a3;
  v4 = [qword_1001D6120 objectForKeyedSubscript:v3];
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
    v5 = [v4 incomingConnections];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v5);
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
        v11 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
    v14 = [v13 dispatchQueue];
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);
    [v4 setAgeOutListenerTimer:v15];

    v16 = [v4 ageOutListenerTimer];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100049A4C;
    v23 = &unk_1001AB488;
    v17 = v4;
    v24 = v17;
    v25 = v3;
    dispatch_source_set_event_handler(v16, &v20);

    v18 = [v17 ageOutListenerTimer];
    CUDispatchTimerSet();

    v19 = [v17 ageOutListenerTimer];
    dispatch_activate(v19);
  }
}

+ (id)findListenerForID:(id)a3 applicationService:(id)a4 fromPeer:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001169D8(v9);
  }

  v10 = [qword_1001D6120 objectForKeyedSubscript:v8];
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
    v11 = [v10 mappingID];
    v12 = [v11 isEqual:v7];

    if (v12)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = [v10 peerDevices];
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v13);
            }

            if ([*(*(&v20 + 1) + 8 * i) isEqualToDevice:v9])
            {

              goto LABEL_35;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

+ (id)findListenerForAgentClient:(id)a3 sender:(id)a4 browseRequest:(BOOL)a5
{
  v16 = a5;
  v6 = a3;
  v7 = a4;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116B50();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = qword_1001D6120;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [qword_1001D6120 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        v14 = [v13 agentClient];

        if (v14 == v6)
        {
          if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100116B90(v13);
          }

          goto LABEL_24;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  if (v7 && ((byte_1001D6128 | v16) & 1) != 0)
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116C1C();
    }

    v8 = [v6 applicationService];
    v13 = [RPNWListener addDeviceToApplicationServiceMapping:v8 device:v7 completion:0];
LABEL_24:
  }

  return v13;
}

- (void)startConnection:(id)a3 agentClient:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (dword_1001D36C0 <= 30 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116C50(v17, self);
  }

  v7 = [v17 peer];
  v8 = [v7 destinationDevice];
  v9 = [v8 idsDeviceIdentifier];

  if (v9 && [v6 isEntitled])
  {
    if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100116CE0(v17, self);
    }

    v10 = [v17 peer];
    v11 = [v10 destinationDevice];
    v12 = [RPNWPeer createNWEndpointForDevice:v11 applicationService:self->_applicationService];

    v13 = nw_array_create();
    nw_array_append();
    v14 = [v6 browseResponse];
    (v14)[2](v14, v13);
  }

  v15 = [v6 listen_framer];
  v16 = [v17 token];
  [RPNWFramer startConnection:v15 token:v16];

  [(RPNWListener *)self markConnectionAsTriggered:v17];
}

- (void)addIncomingConnection:(id)a3
{
  v4 = a3;
  incomingConnections = self->_incomingConnections;
  v8 = v4;
  if (!incomingConnections)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_incomingConnections;
    self->_incomingConnections = v6;

    v4 = v8;
    incomingConnections = self->_incomingConnections;
  }

  [(NSMutableArray *)incomingConnections addObject:v4];
}

- (void)clearIncomingConnections
{
  incomingConnections = self->_incomingConnections;
  self->_incomingConnections = 0;
}

- (id)getConnectionWithID:(id)a3
{
  v4 = a3;
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
        v10 = [v9 connectionUUID];
        v11 = [v10 isEqual:v4];

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

- (void)markConnectionAsTriggered:(id)a3
{
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  triggerTime = self->_incomingConnections;
  v7 = [(NSMutableArray *)triggerTime countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    obj = a3;
    v18 = self;
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

        v13 = [*(*(&v19 + 1) + 8 * v11) connectionUUID];
        v14 = [v5 connectionUUID];
        v15 = [v13 isEqual:v14];

        if (v15)
        {

          if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100116E28();
          }

          [(NSMutableArray *)v18->_incomingConnections removeObjectAtIndex:v12];
          objc_storeStrong(&v18->_triggeredConnection, obj);
          v16 = [NSDate dateWithTimeIntervalSinceNow:2.0];
          triggerTime = v18->_triggerTime;
          v18->_triggerTime = v16;
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

+ (void)listAllowedApplicationServices:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (byte_1001D6128)
  {
    v5 = "on";
  }

  else
  {
    v5 = "off";
  }

  [v3 appendFormat:@"AutoMapping: %s\n", v5];
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
          v12 = [v11 longDescription];
          [v4 appendFormat:@"  %@\n", v12];

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

+ (void)setAutoMapping:(BOOL)a3
{
  if (dword_1001D36C0 <= 40 && (dword_1001D36C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100116EAC();
  }

  byte_1001D6128 = a3;
}

- (RPNWAgentClient)agentClient
{
  WeakRetained = objc_loadWeakRetained(&self->_agentClient);

  return WeakRetained;
}

@end
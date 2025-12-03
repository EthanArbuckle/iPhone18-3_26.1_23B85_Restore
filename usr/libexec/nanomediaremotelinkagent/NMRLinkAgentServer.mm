@interface NMRLinkAgentServer
+ (id)server;
- (NMRLinkAgentServer)init;
- (id)_originInfoFromOrigin:(id)origin;
- (id)_proxiedOrigins;
- (void)_handleActiveOriginDidChangeNotification:(id)notification;
- (void)_handleAvailableOriginsDidChangeNotification:(id)notification;
- (void)_handleDiscoverAndConnectEndpointsMessage:(id)message;
- (void)_handleGetProxiedOriginsMessage:(id)message;
- (void)_handleMediaRemoteCommandRequestMessage:(id)message;
- (void)_handleMediaRemoteGetArtworkMessage:(id)message;
- (void)_handleMediaRemoteGetStateMessage:(id)message;
- (void)_handleOriginDeviceInfoDidChangeNotification:(id)notification;
- (void)_handlePlaybackQueueRequest:(id)request;
- (void)_handlePrewarmSystemMusicAppMessage:(id)message;
- (void)_prewarmSystemMusicApp;
- (void)_registerForOriginNotification;
- (void)_sendOriginUpdatesToClient:(id)client;
- (void)_sendProxiedOriginsToClient;
- (void)_updateOriginsControllers;
- (void)messageCenter:(id)center messageWithIdentifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)originController:(id)controller sendSetStateMessage:(id)message resultingMessageIdentifier:(id *)identifier;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
@end

@implementation NMRLinkAgentServer

+ (id)server
{
  if (qword_100054248 != -1)
  {
    sub_100031498();
  }

  v3 = qword_100054240;

  return v3;
}

- (NMRLinkAgentServer)init
{
  v29.receiver = self;
  v29.super_class = NMRLinkAgentServer;
  v2 = [(NMRLinkAgentServer *)&v29 init];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v3 getActivePairedDevice];
  v5 = [[NSUUID alloc] initWithUUIDString:@"AD00FAC5-9C37-4D0C-8F16-9B00B4C821C6"];
  v6 = [getActivePairedDevice supportsCapability:v5];

  if ((v6 & 1) == 0)
  {
    v8 = sub_10002C180(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Hello, world!", v28, 2u);
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.nanomediaremotelinkagent.NMRLinkAgentServer", v10);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v11;

    v13 = objc_opt_new();
    messageCenter = v2->_messageCenter;
    v2->_messageCenter = v13;

    [(NMRIDSMessageCenter *)v2->_messageCenter setDelegate:v2];
    v15 = SBSCreateOpenApplicationService();
    openApplicationService = v2->_openApplicationService;
    v2->_openApplicationService = v15;

    [(NMRIDSMessageCenter *)v2->_messageCenter setMessageHandlerTarget:v2 action:"_handleMediaRemoteCommandRequestMessage:" forIncomingMessagesOfType:1];
    [(NMRIDSMessageCenter *)v2->_messageCenter setMessageHandlerTarget:v2 action:"_handleMediaRemoteGetStateMessage:" forIncomingMessagesOfType:2];
    [(NMRIDSMessageCenter *)v2->_messageCenter setMessageHandlerTarget:v2 action:"_handleMediaRemoteGetArtworkMessage:" forIncomingMessagesOfType:5];
    [(NMRIDSMessageCenter *)v2->_messageCenter setMessageHandlerTarget:v2 action:"_handlePrewarmSystemMusicAppMessage:" forIncomingMessagesOfType:7];
    [(NMRIDSMessageCenter *)v2->_messageCenter setMessageHandlerTarget:v2 action:"_handleGetProxiedOriginsMessage:" forIncomingMessagesOfType:14];
    [(NMRIDSMessageCenter *)v2->_messageCenter setMessageHandlerTarget:v2 action:"_handleDiscoverAndConnectEndpointsMessage:" forIncomingMessagesOfType:16];
    [(NMRIDSMessageCenter *)v2->_messageCenter setMessageHandlerTarget:v2 action:"_handlePlaybackQueueRequest:" forIncomingMessagesOfType:18];
    [(NMRIDSMessageCenter *)v2->_messageCenter startHandlingMessages];
    v17 = +[NSMutableDictionary dictionary];
    lastOriginUpdatesIdentifiers = v2->_lastOriginUpdatesIdentifiers;
    v2->_lastOriginUpdatesIdentifiers = v17;

    v19 = +[NSMutableDictionary dictionary];
    originControllers = v2->_originControllers;
    v2->_originControllers = v19;

    v21 = objc_alloc_init(MPAVEndpointRoutingDataSource);
    v22 = [[MPAVRoutingController alloc] initWithDataSource:v21 name:@"NMRLinkAgentRoutingController"];
    [v22 setDelegate:v2];
    endpointRoutingController = v2->_endpointRoutingController;
    v2->_endpointRoutingController = v22;
    v24 = v22;

    v25 = +[NSMutableSet set];
    connectingEndpoints = v2->_connectingEndpoints;
    v2->_connectingEndpoints = v25;

    [(NMRLinkAgentServer *)v2 _registerForOriginNotification];
    v7 = v2;
  }

  else
  {
LABEL_3:
    v7 = 0;
  }

  return v7;
}

- (void)originController:(id)controller sendSetStateMessage:(id)message resultingMessageIdentifier:(id *)identifier
{
  messageCopy = message;
  originIdentifier = [messageCopy originIdentifier];
  v11 = [NSString stringWithFormat:@"%@-%@", @"MediaRemoteSetState", originIdentifier];

  messageCenter = self->_messageCenter;
  protobufData = [messageCopy protobufData];

  [(NMRIDSMessageCenter *)messageCenter sendMessageWithProtobufData:protobufData messageType:4 priority:1 timeout:0 bypassDuet:0 skipStorage:0 expectReply:IDSMaxMessageTimeout queueOneIdentifier:v11 resultingMessageIdentifier:identifier error:0];
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  changeCopy = change;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v7, v8];
  [v9 UTF8String];
  v10 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D324;
  block[3] = &unk_100049648;
  v15 = changeCopy;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = changeCopy;
  dispatch_async(serialQueue, block);
}

- (void)_handleMediaRemoteGetStateMessage:(id)message
{
  messageCopy = message;
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v7, v8];
  [v9 UTF8String];
  v10 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D8B0;
  block[3] = &unk_100049648;
  v15 = messageCopy;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = messageCopy;
  dispatch_async(serialQueue, block);
}

- (void)_handleMediaRemoteGetArtworkMessage:(id)message
{
  messageCopy = message;
  kdebug_trace();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v7, v8];
  [v9 UTF8String];
  v10 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DC68;
  block[3] = &unk_100049648;
  v15 = messageCopy;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = messageCopy;
  dispatch_async(serialQueue, block);
}

- (void)_handleMediaRemoteCommandRequestMessage:(id)message
{
  messageCopy = message;
  kdebug_trace();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v7, v8];
  [v9 UTF8String];
  v10 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DFDC;
  block[3] = &unk_100049648;
  v15 = messageCopy;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = messageCopy;
  dispatch_async(serialQueue, block);
}

- (void)_handlePrewarmSystemMusicAppMessage:(id)message
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v6, v7];
  [v8 UTF8String];
  v9 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E2DC;
  block[3] = &unk_100048C80;
  v13 = v9;
  selfCopy = self;
  v11 = v9;
  dispatch_async(serialQueue, block);
}

- (void)_handleGetProxiedOriginsMessage:(id)message
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v6, v7];
  [v8 UTF8String];
  v9 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E430;
  block[3] = &unk_100048C80;
  v13 = v9;
  selfCopy = self;
  v11 = v9;
  dispatch_async(serialQueue, block);
}

- (void)_handleDiscoverAndConnectEndpointsMessage:(id)message
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v6, v7];
  [v8 UTF8String];
  v9 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E584;
  block[3] = &unk_100048C80;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(serialQueue, block);
}

- (void)_handlePlaybackQueueRequest:(id)request
{
  requestCopy = request;
  kdebug_trace();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v7, v8];
  [v9 UTF8String];
  v10 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E8AC;
  block[3] = &unk_100049648;
  v15 = requestCopy;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = requestCopy;
  dispatch_async(serialQueue, block);
}

- (void)_sendProxiedOriginsToClient
{
  _proxiedOrigins = [(NMRLinkAgentServer *)self _proxiedOrigins];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_proxiedOrigins count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = _proxiedOrigins;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NMRLinkAgentServer *)self _originInfoFromOrigin:*(*(&v17 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = sub_10002C180(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Sending proxiedOrigins %@", buf, 0xCu);
  }

  messageCenter = self->_messageCenter;
  v13 = sub_100008C98(v4);
  v16 = 0;
  [(NMRIDSMessageCenter *)messageCenter sendMessageWithProtobufData:v13 messageType:15 priority:3 timeout:0 bypassDuet:0 skipStorage:0 expectReply:IDSMaxMessageTimeout queueOneIdentifier:@"MediaRemoteSetProxiedOrigins" resultingMessageIdentifier:&v16 error:0];
  v14 = v16;
  v15 = v16;

  if (v15)
  {
    objc_storeStrong(&self->_lastProxiedOriginsMessageIdentifier, v14);
  }
}

- (void)_sendOriginUpdatesToClient:(id)client
{
  clientCopy = client;
  [(NMRLinkAgentServer *)self _proxiedOrigins];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10002F29C;
  v5 = v36[3] = &unk_100049710;
  v37 = v5;
  v6 = [NSPredicate predicateWithBlock:v36];
  v7 = [clientCopy filteredArrayUsingPredicate:v6];

  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NMRLinkAgentServer *)self _originInfoFromOrigin:*(*(&v32 + 1) + 8 * v13)];
        if (v14)
        {
          [v8 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v11);
  }

  v15 = sub_10002C180(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Sending updates for proxied origins %@", buf, 0xCu);
  }

  if ([v8 count])
  {
    messageCenter = self->_messageCenter;
    v17 = sub_100008C98(v8);
    v31 = 0;
    [(NMRIDSMessageCenter *)messageCenter sendMessageWithProtobufData:v17 messageType:17 priority:3 timeout:0 bypassDuet:0 skipStorage:0 expectReply:IDSMaxMessageTimeout queueOneIdentifier:@"MediaRemoteUpdateProxiedOrigins" resultingMessageIdentifier:&v31 error:0];
    v18 = v31;

    if (v18)
    {
      v26 = v5;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v19 = v9;
      v20 = [v19 countByEnumeratingWithState:&v27 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          v23 = 0;
          do
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v19);
            }

            lastOriginUpdatesIdentifiers = self->_lastOriginUpdatesIdentifiers;
            uniqueIdentifier = [*(*(&v27 + 1) + 8 * v23) uniqueIdentifier];
            [(NSMutableDictionary *)lastOriginUpdatesIdentifiers setObject:v18 forKeyedSubscript:uniqueIdentifier];

            v23 = v23 + 1;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v27 objects:v38 count:16];
        }

        while (v21);
      }

      v5 = v26;
    }
  }
}

- (id)_originInfoFromOrigin:(id)origin
{
  originCopy = origin;
  v4 = objc_alloc_init(NMROriginInfo);
  [originCopy mediaRemoteOrigin];
  v5 = MRMediaRemoteCopyDeviceInfo();
  if (v5)
  {
    CFAutorelease(v5);
    ExternalRepresentation = MRPairedDeviceCreateExternalRepresentation();
    if ([originCopy isLocal])
    {
      [(NMROriginInfo *)v4 setUniqueIdentifier:1129140302];
      [(NMROriginInfo *)v4 setDisplayName:@"iPhone"];
    }

    else
    {
      uniqueIdentifier = [originCopy uniqueIdentifier];
      -[NMROriginInfo setUniqueIdentifier:](v4, "setUniqueIdentifier:", [uniqueIdentifier intValue]);

      displayName = [originCopy displayName];
      [(NMROriginInfo *)v4 setDisplayName:displayName];
    }

    [(NMROriginInfo *)v4 setDeviceInfoData:ExternalRepresentation];
    v8 = v4;
  }

  else
  {
    v7 = sub_10002C180(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003153C(originCopy, v7);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_proxiedOrigins
{
  v2 = +[NMROriginManager sharedManager];
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v3 getActivePairedDevice];

  NRWatchOSVersionForRemoteDevice();
  if (NRVersionIsGreaterThanOrEqual())
  {
    availableOrigins = [v2 availableOrigins];
    v6 = [NSSet setWithArray:availableOrigins];
  }

  else
  {
    availableOrigins = [v2 localOrigin];
    activeOrigin = [v2 activeOrigin];
    v6 = [NSSet setWithObjects:availableOrigins, activeOrigin, 0];
  }

  return v6;
}

- (void)messageCenter:(id)center messageWithIdentifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = NSStringFromSelector(a2);
  v15 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v13, v14];
  [v15 UTF8String];
  v16 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002F648;
  block[3] = &unk_100049738;
  v22 = v16;
  v23 = errorCopy;
  v24 = identifierCopy;
  selfCopy = self;
  successCopy = success;
  v18 = identifierCopy;
  v19 = errorCopy;
  v20 = v16;
  dispatch_async(serialQueue, block);
}

- (void)_registerForOriginNotification
{
  v4 = +[NSNotificationCenter defaultCenter];
  v3 = +[NMROriginManager sharedManager];
  [v4 addObserver:self selector:"_handleAvailableOriginsDidChangeNotification:" name:@"NMROriginManagerAvailableOriginsDidChangeNotification" object:v3];
  [v4 addObserver:self selector:"_handleActiveOriginDidChangeNotification:" name:@"NMROriginManagerActiveOriginDidChangeNotification" object:v3];
  [v4 addObserver:self selector:"_handleOriginDeviceInfoDidChangeNotification:" name:@"NMROriginDeviceInfoDidChangeNotification" object:v3];
  [(NMRLinkAgentServer *)self _sendProxiedOriginsToClient];
}

- (void)_handleActiveOriginDidChangeNotification:(id)notification
{
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v4 getActivePairedDevice];

  NRWatchOSVersionForRemoteDevice();
  if ((NRVersionIsGreaterThanOrEqual() & 1) == 0)
  {
    [(NMRLinkAgentServer *)self _updateOriginsControllers];
    [(NMRLinkAgentServer *)self _sendProxiedOriginsToClient];
  }
}

- (void)_handleAvailableOriginsDidChangeNotification:(id)notification
{
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v4 getActivePairedDevice];

  NRWatchOSVersionForRemoteDevice();
  if (NRVersionIsGreaterThanOrEqual())
  {
    [(NMRLinkAgentServer *)self _updateOriginsControllers];
    [(NMRLinkAgentServer *)self _sendProxiedOriginsToClient];
  }
}

- (void)_updateOriginsControllers
{
  _proxiedOrigins = [(NMRLinkAgentServer *)self _proxiedOrigins];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [_proxiedOrigins count]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = _proxiedOrigins;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        uniqueIdentifier = &off_10004B370;
        if (([v10 isLocal] & 1) == 0)
        {
          uniqueIdentifier = [v10 uniqueIdentifier];
        }

        v12 = [(NSMutableDictionary *)self->_originControllers objectForKeyedSubscript:uniqueIdentifier];

        if (!v12)
        {
          v13 = [[NMRLinkAgentOriginController alloc] initWithOrigin:v10 externalOriginIdentifier:uniqueIdentifier];
          [(NMRLinkAgentOriginController *)v13 setDelegate:self];
          [(NSMutableDictionary *)self->_originControllers setObject:v13 forKeyedSubscript:uniqueIdentifier];
        }

        [v4 addObject:uniqueIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  allKeys = [(NSMutableDictionary *)self->_originControllers allKeys];
  v15 = [NSMutableSet setWithArray:allKeys];

  [v15 minusSet:v4];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(NSMutableDictionary *)self->_originControllers setObject:0 forKeyedSubscript:*(*(&v21 + 1) + 8 * j), v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }
}

- (void)_handleOriginDeviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v7, v8];
  [v9 UTF8String];
  v10 = os_transaction_create();

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FE90;
  block[3] = &unk_100049648;
  v15 = v10;
  v16 = notificationCopy;
  selfCopy = self;
  v12 = notificationCopy;
  v13 = v10;
  dispatch_async(serialQueue, block);
}

- (void)_prewarmSystemMusicApp
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"com.apple.nanomediaremotelinkagent.%@.%@", v5, v6];
  [v7 UTF8String];
  v8 = os_transaction_create();

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030060;
  block[3] = &unk_100048C80;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, block);
}

@end
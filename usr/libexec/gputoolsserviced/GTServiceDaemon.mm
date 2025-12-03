@interface GTServiceDaemon
- (BOOL)deviceIsHandledLocally:(id)locally;
- (GTServiceDaemon)init;
- (id)connectionForDeviceUDID:(id)d;
- (id)connectionForServicePort:(unint64_t)port;
- (unint64_t)currentRemoteRelayPid;
- (void)broadcastDisconnection:(id)disconnection connectionId:(unint64_t)id;
- (void)handleConnection:(id)connection;
- (void)handleDisconnection:(id)disconnection;
- (void)handleMessage:(id)message fromConnection:(id)connection;
- (void)handleMessageBroadcast:(id)broadcast fromConnection:(id)connection;
- (void)handleMessageDaemon:(id)daemon fromConnection:(id)connection;
- (void)initServiceListener;
- (void)initSignalHandler;
- (void)patchMessage:(id)message;
- (void)registerServices;
- (void)relayMessage:(id)message fromConnection:(id)connection toConnection:(id)toConnection;
- (void)updateAndRelayMessage:(id)message fromConnection:(id)connection toConnection:(id)toConnection;
- (void)updateMessage:(id)message sourceConnection:(id)connection;
- (void)updateMessagePath:(id)path sourceConnection:(id)connection;
@end

@implementation GTServiceDaemon

- (unint64_t)currentRemoteRelayPid
{
  v2 = 96;
  if (self->_remoteRoutingInfo.onRemote)
  {
    v2 = 88;
  }

  return *(&self->super.isa + v2);
}

- (id)connectionForServicePort:(unint64_t)port
{
  portToConnection = self->_portToConnection;
  v4 = [NSNumber numberWithUnsignedLongLong:port];
  v5 = [(NSMutableDictionary *)portToConnection objectForKeyedSubscript:v4];

  return v5;
}

- (id)connectionForDeviceUDID:(id)d
{
  if (d)
  {
    allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
    v5 = filteredArrayByService(allServices, &OBJC_PROTOCOL___GTRemoteDeviceRelay);

    if ([v5 count])
    {
      v6 = 88;
      if (self->_remoteRoutingInfo.onRemote)
      {
        v6 = 96;
      }

      v7 = *(&self->super.isa + v6);
      v8 = filteredArrayByPID(v5, v7);
      if ([v8 count])
      {
        if ([v8 count] >= 2)
        {
          v9 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            *&buf[4] = v7;
            *&buf[12] = 2048;
            *&buf[14] = [v8 count];
            _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Expected 1 matching remote relay port for PID %lu, got %lu", buf, 0x16u);
          }
        }

        portToConnection = self->_portToConnection;
        firstObject = [v8 firstObject];
        serviceProperties = [firstObject serviceProperties];
        v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [serviceProperties servicePort]);
        v14 = [(NSMutableDictionary *)portToConnection objectForKeyedSubscript:v13];
      }

      else
      {
        v35 = v7;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v16 = v5;
        v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v17)
        {
          v18 = v17;
          v36 = v8;
          v37 = v5;
          processIdentifier = 0;
          v20 = 0;
          v21 = *v39;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v39 != v21)
              {
                objc_enumerationMutation(v16);
              }

              v23 = *(*(&v38 + 1) + 8 * i);
              serviceProperties2 = [v23 serviceProperties];
              servicePort = [serviceProperties2 servicePort];

              if (servicePort > v20)
              {
                processInfo = [v23 processInfo];
                processIdentifier = [processInfo processIdentifier];

                v20 = servicePort;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v18);
          v27 = processIdentifier;
          v8 = v36;
          v5 = v37;
        }

        else
        {
          v27 = 0;
          v20 = 0;
        }

        p_remotePid = &self->_remoteRoutingInfo.remotePid;

        v29 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          *&buf[4] = v35;
          *&buf[12] = 2048;
          *&buf[14] = v20;
          *&buf[22] = 2048;
          *&buf[24] = v27;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "No matching relay for PID %lu, picking highest service port %lu (PID %lu)", buf, 0x20u);
        }

        if (!self->_remoteRoutingInfo.onRemote)
        {
          p_remotePid = &self->_remoteRoutingInfo.hostPid;
          self->_remoteRoutingInfo.hostPort = v20;
        }

        *p_remotePid = v27;
        v30 = self->_portToConnection;
        v31 = [NSNumber numberWithUnsignedLongLong:v20];
        v14 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:v31];
      }

      v32 = [GTRelayedXPCConnection alloc];
      v33 = *&self->_remoteRoutingInfo.remotePid;
      *buf = *&self->_remoteRoutingInfo.hostPort;
      *&buf[16] = v33;
      v15 = [(GTRelayedXPCConnection *)v32 initWithConnection:v14 routingInfo:buf];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)updateAndRelayMessage:(id)message fromConnection:(id)connection toConnection:(id)toConnection
{
  toConnectionCopy = toConnection;
  connectionCopy = connection;
  messageCopy = message;
  [(GTServiceDaemon *)self updateMessage:messageCopy sourceConnection:connectionCopy];
  [(GTServiceDaemon *)self relayMessage:messageCopy fromConnection:connectionCopy toConnection:toConnectionCopy];
}

- (void)relayMessage:(id)message fromConnection:(id)connection toConnection:(id)toConnection
{
  messageCopy = message;
  connectionCopy = connection;
  toConnectionCopy = toConnection;
  if (MessageHasReply(messageCopy))
  {
    gt_xpc_dictionary_create_reply(messageCopy);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002141C;
    v13 = v12[3] = &unk_100041168;
    selfCopy = self;
    v15 = toConnectionCopy;
    v16 = connectionCopy;
    v11 = v13;
    [v15 sendMessage:messageCopy replyHandler:v12];
  }

  else
  {
    [toConnectionCopy sendMessage:messageCopy];
  }
}

- (void)updateMessage:(id)message sourceConnection:(id)connection
{
  messageCopy = message;
  [(GTServiceDaemon *)self updateMessagePath:messageCopy sourceConnection:connection];
  [(GTServiceDaemon *)self patchMessage:messageCopy];
}

- (void)patchMessage:(id)message
{
  messageCopy = message;
  if (xpc_dictionary_get_flag(messageCopy, "_flags", 5))
  {
    v4 = xpc_dictionary_get_value(messageCopy, "response");

    if (v4)
    {
      v5 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(messageCopy, "response", v5);
      if (nsobject)
      {
        v7 = [NSSet alloc];
        v8 = objc_opt_class();
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = [v7 initWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
        data = [nsobject data];
        v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:data error:0];
        v15 = [v14 mutableCopy];

        if (v15)
        {
          v16 = [v15 objectForKeyedSubscript:@"archiveURL"];
          v17 = v16;
          if (v16)
          {
            host = [v16 host];
            v19 = [host isEqualToString:@"localhost"];

            if (v19)
            {
              v20 = [NSURLComponents componentsWithURL:v17 resolvingAgainstBaseURL:1];
              v21 = +[GTDeviceProperties uniqueDeviceID];
              [v20 setHost:v21];

              v22 = [v20 URL];
              [v15 setObject:v22 forKeyedSubscript:@"archiveURL"];

              v27 = 0;
              v23 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v27];
              v24 = v27;
              [nsobject setData:v23];

              data2 = [nsobject data];

              if (!data2)
              {
                v26 = gt_tagged_log(0x10u);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v29 = v24;
                  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to patch message, %@", buf, 0xCu);
                }

                [nsobject setError:v24];
              }

              xpc_dictionary_set_nsobject(messageCopy, "response", nsobject);
            }
          }
        }
      }
    }
  }
}

- (void)updateMessagePath:(id)path sourceConnection:(id)connection
{
  pathCopy = path;
  connectionCopy = connection;
  if (MessageRecordsPathHistory(pathCopy))
  {
    v10 = 0;
    if ([(GTConnectionMap *)self->_connectionMap retrieveId:&v10 forConnection:connectionCopy])
    {
      MessagePathPush(pathCopy, v10);
    }

    else
    {
      v8 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Missing ID for active connection", v9, 2u);
      }
    }
  }
}

- (void)handleMessageBroadcast:(id)broadcast fromConnection:(id)connection
{
  broadcastCopy = broadcast;
  connectionCopy = connection;
  if (MessageVisit(broadcastCopy, [(NSString *)self->_daemonId UTF8String]))
  {
    v8 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Handle broadcast", buf, 2u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = self->_portToDispatcher;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(NSMutableDictionary *)self->_portToDispatcher objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
          [v14 dispatchMessage:broadcastCopy replyConnection:connectionCopy];
        }

        v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    *buf = 0;
    if ([(GTConnectionMap *)self->_connectionMap retrieveId:buf forConnection:connectionCopy])
    {
      [(GTServiceDaemon *)self updateMessage:broadcastCopy sourceConnection:connectionCopy];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      connections = [(GTConnectionMap *)self->_connectionMap connections];
      v16 = [connections countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(connections);
            }

            v20 = *(*(&v24 + 1) + 8 * j);
            connection = [v20 connection];
            connection2 = [connectionCopy connection];

            if (connection != connection2)
            {
              [(GTServiceDaemon *)self relayMessage:broadcastCopy fromConnection:connectionCopy toConnection:v20];
            }
          }

          v17 = [connections countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v17);
      }
    }

    else
    {
      connections = gt_tagged_log(0x10u);
      if (os_log_type_enabled(connections, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&_mh_execute_header, connections, OS_LOG_TYPE_ERROR, "Missing ID for active connection", v23, 2u);
      }
    }
  }
}

- (void)handleMessageDaemon:(id)daemon fromConnection:(id)connection
{
  daemonCopy = daemon;
  connectionCopy = connection;
  uint64 = xpc_dictionary_get_uint64(daemonCopy, "_daemon");
  if (uint64 == 1)
  {
    reply = xpc_dictionary_create_reply(daemonCopy);
    v9 = objc_opt_new();
    xpc_dictionary_set_nsobject(reply, "processInfo", v9);

LABEL_7:
    [connectionCopy sendMessage:reply];

    goto LABEL_8;
  }

  v10 = uint64;
  v11 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Unrecognized daemon message %lu", &v12, 0xCu);
  }

  if (MessageHasReply(daemonCopy))
  {
    reply = xpc_dictionary_create_reply(daemonCopy);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)handleMessage:(id)message fromConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  v28 = 0;
  IsValid = MessageIsValid(messageCopy, &v28);
  v9 = v28;
  if (!IsValid)
  {
    v10 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid message", buf, 2u);
    }

    goto LABEL_6;
  }

  MessageRemoteRoutingInfoGet(messageCopy, &self->_remoteRoutingInfo);
  if (!xpc_dictionary_get_flag(messageCopy, "_flags", 3))
  {
    if (xpc_dictionary_get_flag(messageCopy, "_flags", 1))
    {
      [(GTServiceDaemon *)self handleMessageBroadcast:messageCopy fromConnection:connectionCopy];
      goto LABEL_7;
    }

    if (MessageIsStreamReply(messageCopy))
    {
      v11 = MessagePathPop(messageCopy);
      connectionMap = self->_connectionMap;
      v27 = 0;
      v13 = [(GTConnectionMap *)connectionMap retrieveConnection:&v27 forId:v11];
      v10 = v27;
      if (!v13)
      {
        v14 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v32 = v11;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing connection for ID: %llu", buf, 0xCu);
        }

LABEL_26:

        goto LABEL_6;
      }
    }

    else
    {
      if (![(GTServiceDaemon *)self deviceIsHandledLocally:messageCopy])
      {
        v10 = sub_100022198(messageCopy);
        v15 = [(GTServiceDaemon *)self connectionForDeviceUDID:v10];
        if (v15)
        {
          v16 = v15;
          [(GTServiceDaemon *)self updateAndRelayMessage:messageCopy fromConnection:connectionCopy toConnection:v15];

LABEL_6:
          goto LABEL_7;
        }
      }

      uint64 = xpc_dictionary_get_uint64(messageCopy, "_port");
      portToConnection = self->_portToConnection;
      v19 = [NSNumber numberWithUnsignedLongLong:uint64];
      v10 = [(NSMutableDictionary *)portToConnection objectForKeyedSubscript:v19];

      if (!v10)
      {
        portToDispatcher = self->_portToDispatcher;
        v21 = [NSNumber numberWithUnsignedLongLong:uint64];
        v14 = [(NSMutableDictionary *)portToDispatcher objectForKeyedSubscript:v21];

        if (v14)
        {
          [v14 dispatchMessage:messageCopy replyConnection:connectionCopy];
        }

        else
        {
          v22 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v32 = uint64;
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Message unhandled - servicePort:%llu", buf, 0xCu);
          }

          if (MessageHasReply(messageCopy))
          {
            v23 = gt_xpc_dictionary_create_reply(messageCopy);
            v29 = NSLocalizedDescriptionKey;
            v24 = [NSString stringWithFormat:@"Target destination for message doesn't exist"];
            v30 = v24;
            v25 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            v26 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:2 userInfo:v25];

            xpc_dictionary_set_nserror(v23, "_error", v26);
            [connectionCopy sendMessage:v23];
          }
        }

        goto LABEL_26;
      }
    }

    [(GTServiceDaemon *)self updateAndRelayMessage:messageCopy fromConnection:connectionCopy toConnection:v10];
    goto LABEL_6;
  }

  [(GTServiceDaemon *)self handleMessageDaemon:messageCopy fromConnection:connectionCopy];
LABEL_7:
}

- (BOOL)deviceIsHandledLocally:(id)locally
{
  locallyCopy = locally;
  v5 = sub_100022198(locallyCopy);
  if (!v5 || [(NSString *)self->_deviceUDID isEqualToString:v5]|| (xpc_dictionary_get_flag(locallyCopy, "_flags", 4) & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
    v9 = filteredArrayByService(allServices, &OBJC_PROTOCOL___GTSimulatorDeviceBrowser);
    if ([v9 count])
    {
      v6 = 0;
    }

    else
    {
      v10 = [[NSUUID alloc] initWithUUIDString:v5];
      v6 = v10 != 0;
    }
  }

  return v6;
}

- (void)broadcastDisconnection:(id)disconnection connectionId:(unint64_t)id
{
  disconnectionCopy = disconnection;
  v7 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    idCopy = id;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Broadcast Disconnection of Connection ID %lu", buf, 0xCu);
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_flag(empty, "_flags", 1);
  xpc_dictionary_set_flag(empty, "_flags", 2);
  xpc_dictionary_set_string(empty, "_cmd", "broadcastDisconnect");
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = self->_portToDispatcher;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMutableDictionary *)self->_portToDispatcher objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v13)];
        [v14 dispatchMessage:empty replyConnection:disconnectionCopy];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  MessagePathPush(empty, id);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  connections = [(GTConnectionMap *)self->_connectionMap connections];
  v16 = [connections countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(connections);
        }

        [*(*(&v20 + 1) + 8 * v19) sendMessage:empty];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [connections countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)handleDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  connection = [disconnectionCopy connection];
  v6 = xpc_copy_description(connection);

  v7 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Connection: Disconnect:%s", &v9, 0xCu);
  }

  free(v6);
  v8 = [(NSMutableDictionary *)self->_portToConnection allKeysForObject:disconnectionCopy];
  [(GTServiceProvider *)self->_serviceProvider disconnectServicePorts:v8];
  [(NSMutableDictionary *)self->_portToConnection removeObjectsForKeys:v8];
  [(GTServiceDaemon *)self broadcastDisconnection:disconnectionCopy connectionId:[(GTConnectionMap *)self->_connectionMap remove:disconnectionCopy]];
}

- (void)handleConnection:(id)connection
{
  connectionCopy = connection;
  v5 = xpc_copy_description(connectionCopy);
  v6 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 136315138;
    *(location + 4) = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Connection: New:%s", location, 0xCu);
  }

  free(v5);
  v7 = dispatch_queue_create("com.apple.gputoolsserviced.connectionTarget", 0);
  xpc_connection_set_target_queue(connectionCopy, v7);
  v8 = [(GTLocalXPCConnection *)[GTEntitlementCheckingConnection alloc] initWithTransactionScopedXPCConnection:connectionCopy messageQueue:self->_serialQueue];

  [(GTConnectionMap *)self->_connectionMap insert:v8];
  objc_initWeak(location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022854;
  v11[3] = &unk_100041118;
  objc_copyWeak(&v12, location);
  v11[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000228BC;
  v9[3] = &unk_100041118;
  objc_copyWeak(&v10, location);
  v9[4] = self;
  [(GTLocalXPCConnection *)v8 activateWithMessageHandler:v11 andErrorHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

- (void)initSignalHandler
{
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, self->_serialQueue);
  sigtermSource = self->_sigtermSource;
  self->_sigtermSource = v3;

  v5 = self->_sigtermSource;
  if (v5)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000229D4;
    handler[3] = &unk_100040AB0;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_resume(self->_sigtermSource);
  }
}

- (void)initServiceListener
{
  mach_service = xpc_connection_create_mach_service("com.apple.gputools.service", self->_serialQueue, 1uLL);
  serviceListener = self->_serviceListener;
  self->_serviceListener = mach_service;

  v5 = self->_serviceListener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100022A90;
  handler[3] = &unk_1000410F0;
  handler[4] = self;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_activate(self->_serviceListener);
}

- (void)registerServices
{
  v35 = objc_opt_new();
  v3 = objc_alloc_init(GTServiceProvider);
  serviceProvider = self->_serviceProvider;
  self->_serviceProvider = v3;

  v5 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTServiceProvider];
  [(GTServiceProperties *)v5 setVersion:2];
  [(GTServiceProvider *)self->_serviceProvider registerDefaultServiceProvider:v5 forProcess:v35];
  [(GTServiceVendor *)self->_serviceVendor addLocalService:self->_serviceProvider forPort:[(GTServiceProperties *)v5 servicePort]];
  v6 = [[GTServiceProviderXPCDispatcher alloc] initWithService:self->_serviceProvider properties:v5];
  [(GTServiceProviderXPCDispatcher *)v6 setConnections:self->_portToConnection];
  portToDispatcher = self->_portToDispatcher;
  v8 = [NSNumber numberWithUnsignedLongLong:[(GTServiceProperties *)v5 servicePort]];
  [(NSMutableDictionary *)portToDispatcher setObject:v6 forKeyedSubscript:v8];

  v9 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTLaunchService];
  [(GTServiceProvider *)self->_serviceProvider registerService:v9 forProcess:v35];
  v10 = [[GTLaunchService alloc] initWithServiceProvider:self->_serviceProvider];
  [(GTServiceVendor *)self->_serviceVendor addLocalService:v10 forPort:[(GTServiceProperties *)v9 servicePort]];
  v11 = [[GTLaunchServiceXPCDispatcher alloc] initWithService:v10 properties:v9];
  v12 = self->_portToDispatcher;
  v13 = [NSNumber numberWithUnsignedLongLong:[(GTServiceProperties *)v9 servicePort]];
  [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

  v14 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTDeviceCapabilities];
  [(GTServiceProvider *)self->_serviceProvider registerService:v14 forProcess:v35];
  v15 = objc_alloc_init(GTDeviceCapabilities);
  [(GTServiceVendor *)self->_serviceVendor addLocalService:v15 forPort:[(GTServiceProperties *)v14 servicePort]];
  v16 = [[GTDeviceCapabilitiesXPCDispatcher alloc] initWithService:v15 properties:v14];
  v17 = self->_portToDispatcher;
  v18 = [NSNumber numberWithUnsignedLongLong:[(GTServiceProperties *)v14 servicePort]];
  [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];

  v19 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTURLAccessProvider];
  [(GTServiceProvider *)self->_serviceProvider registerService:v19 forProcess:v35];
  v20 = [[GTURLAccessProvider alloc] initWithServiceProvider:self->_serviceProvider connectionProvider:self serviceVendor:self->_serviceVendor];
  [(GTServiceVendor *)self->_serviceVendor addLocalService:v20 forPort:[(GTServiceProperties *)v19 servicePort]];
  v21 = [[GTURLAccessProviderXPCDispatcher alloc] initWithService:v20 properties:v19];
  v22 = self->_portToDispatcher;
  v23 = [NSNumber numberWithUnsignedLongLong:[(GTServiceProperties *)v19 servicePort]];
  [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:v23];

  v24 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTLoopbackService];
  [(GTServiceProvider *)self->_serviceProvider registerService:v24 forProcess:v35];
  v25 = objc_alloc_init(GTLoopbackService);
  [(GTServiceVendor *)self->_serviceVendor addLocalService:v25 forPort:[(GTServiceProperties *)v24 servicePort]];
  v26 = [[GTLoopbackServiceXPCDispatcher alloc] initWithService:v25 properties:v24];
  v27 = self->_portToDispatcher;
  v28 = [NSNumber numberWithUnsignedLongLong:[(GTServiceProperties *)v24 servicePort]];
  [(NSMutableDictionary *)v27 setObject:v26 forKeyedSubscript:v28];

  v29 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTErrorReportService];
  [(GTServiceProvider *)self->_serviceProvider registerService:v29 forProcess:v35];
  v30 = objc_alloc_init(GTErrorReportService);
  errorReportService = self->_errorReportService;
  self->_errorReportService = v30;

  [(GTServiceVendor *)self->_serviceVendor addLocalService:self->_errorReportService forPort:[(GTServiceProperties *)v29 servicePort]];
  v32 = [[GTErrorReportServiceXPCDispatcher alloc] initWithService:self->_errorReportService properties:v29];
  v33 = self->_portToDispatcher;
  v34 = [NSNumber numberWithUnsignedLongLong:[(GTServiceProperties *)v29 servicePort]];
  [(NSMutableDictionary *)v33 setObject:v32 forKeyedSubscript:v34];
}

- (GTServiceDaemon)init
{
  v21.receiver = self;
  v21.super_class = GTServiceDaemon;
  v2 = [(GTServiceDaemon *)&v21 init];
  if (v2)
  {
    v3 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Agent Launched", v20, 2u);
    }

    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];
    daemonId = v2->_daemonId;
    v2->_daemonId = uUIDString;

    v7 = +[GTDeviceProperties uniqueDeviceID];
    deviceUDID = v2->_deviceUDID;
    v2->_deviceUDID = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    portToConnection = v2->_portToConnection;
    v2->_portToConnection = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    portToDispatcher = v2->_portToDispatcher;
    v2->_portToDispatcher = v11;

    v13 = objc_alloc_init(GTConnectionMap);
    connectionMap = v2->_connectionMap;
    v2->_connectionMap = v13;

    v15 = dispatch_queue_create("com.apple.gputoolsserviced.main", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v15;

    v17 = [[GTServiceVendor alloc] initWithConnectionProvider:v2];
    serviceVendor = v2->_serviceVendor;
    v2->_serviceVendor = v17;

    [(GTServiceDaemon *)v2 registerServices];
    [(GTServiceDaemon *)v2 initServiceListener];
    [(GTServiceDaemon *)v2 initSimulatorServiceListener];
    [(GTServiceDaemon *)v2 initSimulatorLaunchServiceListener];
    [(GTServiceDaemon *)v2 initEventStreamHandler];
    [(GTServiceDaemon *)v2 initSignalHandler];
  }

  return v2;
}

@end
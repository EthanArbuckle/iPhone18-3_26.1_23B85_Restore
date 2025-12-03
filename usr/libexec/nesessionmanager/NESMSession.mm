@interface NESMSession
+ (__CFDictionary)copyDefaultRouteCacheIsIPv6:(BOOL)pv6;
+ (id)sessionWithConfiguration:(id)configuration andType:(int)type andServer:(id)server;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (NESMSession)initWithConfiguration:(id)configuration andServer:(id)server sessionQueue:(id)queue messageQueue:(id)messageQueue;
- (NSError)lastDisconnectError;
- (id)copyExtendedStatus;
- (id)getIDSNetworkAgentDomain;
- (int)SCNCStatus;
- (int)lastStopReason;
- (void)addClientConnection:(id)connection;
- (void)dealloc;
- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags;
- (void)handleCommand:(id)command fromClient:(id)client;
- (void)handleGetInfoMessage:(id)message withType:(int)type;
- (void)handleGetStatusMessage:(id)message;
- (void)handleNetworkPrepareResult:(id)result;
- (void)handleStartMessage:(id)message;
- (void)handleStopMessageWithReason:(int)reason;
- (void)handleUpdateConfiguration:(id)configuration withCompletionHandler:(id)handler;
- (void)installPendedOnQueue;
- (void)installWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)notifyChangedExtendedStatus;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseOnDemand;
- (void)prepareNetwork;
- (void)registerSession:(id)session fromClient:(id)client;
- (void)removeAllClients;
- (void)restartSession;
- (void)satisfyPathResult:(id)result;
- (void)sendConfigurationChangeHandledNotification;
- (void)setLastDisconnectError:(id)error;
- (void)setUID:(id)d;
- (void)setupFromAuxiliaryData;
- (void)startWithCommand:(id)command isOnDemand:(BOOL)demand;
- (void)stopIfNecessaryWithReason:(int)reason;
- (void)stopIfNecessaryWithReason:(int)reason withCompletionHandler:(id)handler;
- (void)uninstallOnQueue;
- (void)unpauseOnDemand;
@end

@implementation NESMSession

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10008A458;
  v20[4] = sub_10008A468;
  v21 = os_transaction_create();
  queue = [(NESMSession *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008A470;
  v15[3] = &unk_1000EA990;
  v16 = objectCopy;
  selfCopy = self;
  v18 = pathCopy;
  v19 = v20;
  v13 = pathCopy;
  v14 = objectCopy;
  dispatch_async(queue, v15);

  _Block_object_dispose(v20, 8);
}

- (void)unpauseOnDemand
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: unpause VPN OnDemand", &v4, 0xCu);
  }

  sub_10008FE40(self, 0);
}

- (void)pauseOnDemand
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: pause VPN OnDemand", &v4, 0xCu);
  }

  sub_10008FE40(self, 3);
}

- (void)sendConfigurationChangeHandledNotification
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "SessionNotificationType", 3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (v12)
        {
          v12 = objc_getProperty(v12, v8, 16, 1);
        }

        xpc_connection_send_message(v12, v3);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)getIDSNetworkAgentDomain
{
  v2 = NEGetConsoleUserUID();
  if (v2)
  {
    v3 = [[NSString alloc] initWithFormat:@"ids%d", v2];
  }

  else
  {
    v3 = @"ids501";
  }

  return v3;
}

- (void)restartSession
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    xpc_dictionary_set_BOOL(v4, "restart", 1);
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "xpc_dictionary_create failed", v7, 2u);
    }
  }

  xpc_dictionary_set_value(v3, "SessionOptions", v5);
  [(NESMSession *)self startWithCommand:v3 isOnDemand:0];
}

- (void)startWithCommand:(id)command isOnDemand:(BOOL)demand
{
  commandCopy = command;
  v7 = commandCopy;
  if (!commandCopy)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_int64(v7, "SessionCommandType", 2);
  int64 = xpc_dictionary_get_int64(v7, "SessionPID");
  if (!int64)
  {
    int64 = getpid();
  }

  messageQueue = [(NESMSession *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF670;
  block[3] = &unk_1000EB388;
  demandCopy = demand;
  block[4] = self;
  v12 = v7;
  v13 = int64;
  v10 = v7;
  dispatch_async(messageQueue, block);
}

- (void)invalidate
{
  self->_status = 0;
  server = self->_server;
  self->_server = 0;
  _objc_release_x1();
}

- (void)stopIfNecessaryWithReason:(int)reason withCompletionHandler:(id)handler
{
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2080;
    v9 = "[NESMSession stopIfNecessaryWithReason:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: %s not supported", &v6, 0x16u);
  }
}

- (void)stopIfNecessaryWithReason:(int)reason
{
  queue = [(NESMSession *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AFA40;
  v6[3] = &unk_1000EB338;
  reasonCopy = reason;
  v6[4] = self;
  dispatch_async(queue, v6);
}

- (void)uninstallOnQueue
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFD3C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)installPendedOnQueue
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFDD0;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)installWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(NESMSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AFE90;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy)
  {
    generateSignature = [configurationCopy generateSignature];
    configurationSignature = [(NESMSession *)self configurationSignature];
    v8 = [configurationSignature isEqualToData:generateSignature];

    if ((v8 & 1) == 0)
    {
      is_debug_logging_enabled = nelog_is_debug_logging_enabled();
      v10 = ne_log_large_obj();
      v11 = v10;
      if (is_debug_logging_enabled)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          selfCopy2 = self;
          v30 = 2112;
          v31 = v5;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@: handling configuration changed: %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = [v5 descriptionWithOptions:2];
        *buf = 138412546;
        selfCopy2 = self;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@: handling configuration changed: %@", buf, 0x16u);
      }

      v14 = v5;
      if (self)
      {
        if (self->_policySession)
        {
          v15 = sub_100031500(NESMPolicyMasterSession, &stru_1000E9D20);
        }

        else
        {
          v15 = 0;
        }

        configuration = [(NESMSession *)self configuration];
        appVPN = [configuration appVPN];
        if (appVPN)
        {
          v18 = appVPN;
          appVPN2 = [v14 appVPN];

          if (appVPN2)
          {
            buf[0] = 0;
            configuration2 = [(NESMSession *)self configuration];
            appVPN3 = [configuration2 appVPN];
            appRules = [appVPN3 appRules];
            [v14 appVPN];
            v22 = v26 = v15;
            appRules2 = [v22 appRules];
            v24 = [NEVPNApp compareAppRules:appRules newAppRules:appRules2 noExistingDomain:buf];

            if ((buf[0] | v24) & v26)
            {
              sub_100031108(self->_policySession);
            }
          }
        }

        else
        {
        }
      }

      [(NESMSession *)self setConfiguration:v14];
      [(NESMSession *)self setConfigurationSignature:generateSignature];
      sub_10008F168(self, 1);
    }

    v12 = v8 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)handleUpdateConfiguration:(id)configuration withCompletionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B029C;
  block[3] = &unk_1000EB2E8;
  v12 = configurationCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (int)SCNCStatus
{
  status = [(NESMSession *)self status];

  return _SCNetworkConnectionGetStatusFromNEStatus(status);
}

- (void)setupFromAuxiliaryData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[NEFileHandleMaintainer sharedMaintainer];
  auxiliaryDataKey = [(NESMSession *)selfCopy auxiliaryDataKey];
  v5 = [v3 copyAuxiliaryDataForKey:auxiliaryDataKey];

  if (isa_nsdata() && [v5 length])
  {
    v8 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v8];
    v7 = v8;
    if (v6)
    {
      objc_storeStrong(&selfCopy->_lastDisconnectError, v6);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setLastDisconnectError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_lastDisconnectError = &selfCopy->_lastDisconnectError;
  lastDisconnectError = selfCopy->_lastDisconnectError;
  if (lastDisconnectError != errorCopy && ([(NSError *)lastDisconnectError isEqual:errorCopy]& 1) == 0)
  {
    objc_storeStrong(&selfCopy->_lastDisconnectError, error);
    auxiliaryDataKey = [(NESMSession *)selfCopy auxiliaryDataKey];

    if (auxiliaryDataKey)
    {
      v10 = *p_lastDisconnectError;
      if (*p_lastDisconnectError)
      {
        v19 = 0;
        v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v19];
        v12 = v19;
        v13 = v12;
        if (v11)
        {

LABEL_11:
          v15 = +[NEFileHandleMaintainer sharedMaintainer];
          auxiliaryDataKey2 = [(NESMSession *)selfCopy auxiliaryDataKey];
          [v15 setAuxiliaryData:v11 forKey:auxiliaryDataKey2];

          v17 = +[NEFileHandleMaintainer sharedMaintainer];
          [v17 commit];

          goto LABEL_12;
        }

        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = *p_lastDisconnectError;
          *buf = 138412546;
          v21 = v18;
          v22 = 2112;
          v23 = v13;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to serialize the last disconnect error (%@): %@", buf, 0x16u);
        }
      }

      v11 = objc_alloc_init(NSData);
      goto LABEL_11;
    }
  }

LABEL_12:
  objc_sync_exit(selfCopy);
}

- (NSError)lastDisconnectError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastDisconnectError;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int)lastStopReason
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastStopReason = selfCopy->_lastStopReason;
  objc_sync_exit(selfCopy);

  return lastStopReason;
}

- (void)setUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {

    v5 = &off_1000EE4C8;
  }

  else
  {
    v5 = 0;
  }

  uid = self->_uid;
  self->_uid = v5;
}

- (void)notifyChangedExtendedStatus
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "SessionNotificationType", 2);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (v12)
        {
          v12 = objc_getProperty(v12, v8, 16, 1);
        }

        xpc_connection_send_message(v12, v3);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)prepareNetwork
{
  server = [(NESMSession *)self server];
  if (server)
  {
    v4 = server[6];
  }

  else
  {
    v4 = 0;
  }

  server2 = [(NESMSession *)self server];
  primaryPhysicalInterface = [server2 primaryPhysicalInterface];
  interfaceName = [primaryPhysicalInterface interfaceName];

  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) != 1 || !interfaceName)
  {
    queue = [(NESMSession *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B1D80;
    v12[3] = &unk_1000EB1C0;
    v12[4] = self;
    dispatch_async(queue, v12);
LABEL_10:

    goto LABEL_11;
  }

  if (v4 == 3)
  {
    queue = [(NESMSession *)self server];
    [queue satisfyPathForSession:self];
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    queue2 = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B1D8C;
    block[3] = &unk_1000EB198;
    block[4] = self;
    v11 = interfaceName;
    dispatch_async(queue2, block);
  }

LABEL_11:
}

- (void)satisfyPathResult:(id)result
{
  resultCopy = result;
  queue = [(NESMSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B1E4C;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(queue, v7);
}

- (void)handleNetworkPrepareResult:(id)result
{
  resultCopy = result;
  v5 = ne_log_obj();
  v6 = v5;
  if (resultCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      selfCopy2 = self;
      v9 = 2112;
      v10 = resultCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: Network available via interface %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    selfCopy2 = self;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: No network available", &v7, 0xCu);
  }
}

- (id)copyExtendedStatus
{
  startMessage = [(NESMSession *)self startMessage];

  if (!startMessage)
  {
    return 0;
  }

  startMessage2 = [(NESMSession *)self startMessage];
  v5 = xpc_copy(startMessage2);

  xpc_dictionary_set_value(v5, "SessionBootstrapPort", 0);
  xpc_dictionary_set_value(v5, "SessionAuditSessionPort", 0);
  v6 = _CFXPCCreateCFObjectFromXPCObject();
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  if ((isa_nsdictionary() & 1) == 0)
  {

    return 0;
  }

  v8 = [v7 objectForKeyedSubscript:@"SessionOptions"];
  v9 = isa_nsdictionary();

  if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"SessionOptions"];
    v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

    v12 = kSCEntNetVPN;
    v13 = [v11 objectForKeyedSubscript:kSCEntNetVPN];
    v14 = isa_nsdictionary();

    if (v14)
    {
      v15 = [v11 objectForKeyedSubscript:v12];
      v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

      if (isa_nsdictionary())
      {
        v17 = kSCPropNetVPNAuthPassword;
        v18 = [v16 objectForKeyedSubscript:kSCPropNetVPNAuthPassword];

        if (v18)
        {
          [v16 setObject:@"****" forKeyedSubscript:v17];
          [v11 setObject:v16 forKeyedSubscript:v12];
          [v7 setObject:v11 forKeyedSubscript:@"SessionOptions"];
        }
      }
    }
  }

  v21 = @"StartMessage";
  v22 = v7;
  v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  return v19;
}

- (void)handleGetInfoMessage:(id)message withType:(int)type
{
  messageCopy = message;
  message = xpc_dictionary_create_reply(messageCopy);
  v5 = xpc_dictionary_get_remote_connection(messageCopy);

  xpc_connection_send_message(v5, message);
}

- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags
{
  v6 = [(NESMSession *)self queue:interface];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B22EC;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)handleStopMessageWithReason:(int)reason
{
  [(NESMSession *)self setLastStopReason:?];
  if (reason != 36)
  {
    if (reason == 1 && [(NESMSession *)self type]== 1)
    {
      sub_10008FE40(self, 1);
    }

    [(NESMSession *)self setRestartPending:0];

    [(NESMSession *)self setStartMessage:0];
  }
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  v5 = xpc_dictionary_get_remote_connection(messageCopy);
  v6 = xpc_dictionary_get_value(messageCopy, "SessionOptions");
  int64 = xpc_dictionary_get_int64(messageCopy, "SessionGroupID");
  euid = xpc_dictionary_get_int64(messageCopy, "SessionUserID");
  v9 = xpc_dictionary_get_int64(messageCopy, "SessionPID");

  if (v5)
  {
    if (int64)
    {
      if (euid)
      {
        goto LABEL_4;
      }

LABEL_8:
      euid = xpc_connection_get_euid(v5);
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    int64 = xpc_connection_get_egid(v5);
    if (!euid)
    {
      goto LABEL_8;
    }
  }

LABEL_4:
  if (!v6)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_11;
  }

LABEL_5:
  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    goto LABEL_6;
  }

  v10 = xpc_dictionary_get_BOOL(v6, "is-on-demand");
LABEL_11:
  [(NESMSession *)self setIsOnDemand:v10];
  v11 = [NSNumber numberWithUnsignedInt:euid];
  [(NESMSession *)self setUID:v11];

  v12 = [NSNumber numberWithUnsignedInt:int64];
  [(NESMSession *)self setGid:v12];

  self->_lastStopReason = 0;
  if ([(NESMSession *)self type]== 1)
  {
    sub_10008FE40(self, 0);
  }

  if ([(NESMSession *)self isOnDemand])
  {
    string = xpc_dictionary_get_string(v6, "match-hostname");
    if (proc_name(v9, &buffer, 0x100u) <= 0)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = __error();
        v24 = strerror(*v23);
        v25 = 138412546;
        selfCopy2 = self;
        v27 = 2080;
        p_buffer = v24;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ failed to obtain the triggering process' name: %s", &v25, 0x16u);
      }

      strncpy(&buffer, "<unknown>", 0x100uLL);
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "<none>";
      v25 = 138413058;
      if (string)
      {
        v16 = string;
      }

      selfCopy2 = self;
      v27 = 2080;
      p_buffer = &buffer;
      v29 = 1024;
      v30 = v9;
      v31 = 2080;
      v32 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ starting on demand from process %s (%d) matching hostname %s", &v25, 0x26u);
    }
  }

  is_debug_logging_enabled = nelog_is_debug_logging_enabled();
  v18 = ne_log_large_obj();
  v19 = v18;
  if (is_debug_logging_enabled)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      configuration = [(NESMSession *)self configuration];
      buffer = 138412546;
      selfCopy4 = self;
      v35 = 2112;
      v36 = configuration;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@ starting with configuration: %@", &buffer, 0x16u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    configuration2 = [(NESMSession *)self configuration];
    v22 = [configuration2 descriptionWithOptions:2];
    buffer = 138412546;
    selfCopy4 = self;
    v35 = 2112;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ starting with configuration: %@", &buffer, 0x16u);
  }

  [(NESMSession *)self setStatus:2];
}

- (void)handleGetStatusMessage:(id)message
{
  messageCopy = message;
  xdict = xpc_dictionary_create_reply(messageCopy);
  xpc_dictionary_set_int64(xdict, "SessionStatus", [(NESMSession *)self status]);
  v5 = xpc_dictionary_get_remote_connection(messageCopy);

  xpc_connection_send_message(v5, xdict);
}

- (void)handleCommand:(id)command fromClient:(id)client
{
  commandCopy = command;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(commandCopy, "SessionCommandType");
  v9 = int64;
  if (clientCopy && (clientCopy[3] & 1) != 0)
  {
    if (int64 != 6 && int64 != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        goto LABEL_90;
      }

      goto LABEL_15;
    }
  }

  if (v9 <= 4)
  {
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 138412546;
          *&v41[4] = self;
          *&v41[12] = 2112;
          *&v41[14] = clientCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: Received an IPC establish request from %@", v41, 0x16u);
        }

        kdebug_trace();
        [(NESMSession *)self handleEstablishIPCMessage:commandCopy];
        goto LABEL_90;
      }

      v22 = xpc_dictionary_get_int64(commandCopy, "SessionStopReason");
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 138412802;
        *&v41[4] = self;
        *&v41[12] = 2112;
        *&v41[14] = clientCopy;
        v42 = 1024;
        LODWORD(v43) = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Received a stop command from %@ with reason %d", v41, 0x1Cu);
      }

      kdebug_trace();
      if ([(NESMSession *)self isStopAllowed:commandCopy])
      {
        if (![(NESMSession *)self status]|| [(NESMSession *)self status]== 1)
        {
          sub_1000B3460(clientCopy, v24);
        }

        [(NESMSession *)self handleStopMessageWithReason:v22];
        goto LABEL_90;
      }

      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 138412546;
        *&v41[4] = self;
        *&v41[12] = 2112;
        *&v41[14] = clientCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: %@ is not allowed to stop this session", v41, 0x16u);
      }
    }

    else
    {
      if (v9 == 1)
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 138412546;
          *&v41[4] = self;
          *&v41[12] = 2112;
          *&v41[14] = clientCopy;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@: Received a status query from %@", v41, 0x16u);
        }

        kdebug_trace();
        [(NESMSession *)self handleGetStatusMessage:commandCopy];
        goto LABEL_90;
      }

      if (v9 != 2)
      {
        goto LABEL_90;
      }

      kdebug_trace();
      v13 = xpc_dictionary_get_value(commandCopy, "SessionOptions");
      v14 = v13;
      if (v13 && xpc_get_type(v13) == &_xpc_type_dictionary)
      {
        v16 = xpc_dictionary_get_BOOL(v14, "stop-current-session");
        v15 = xpc_dictionary_get_BOOL(v14, "restart");
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 138412802;
        *&v41[4] = self;
        if (v16 || v15)
        {
          v30 = "re";
        }

        else
        {
          v30 = "";
        }

        *&v41[12] = 2080;
        *&v41[14] = v30;
        v42 = 2112;
        v43 = clientCopy;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: Received a %sstart command from %@", v41, 0x20u);
      }

      if ([(NESMSession *)self status]!= 1 && [(NESMSession *)self status]&& (v16 || v15))
      {
        if (![(NESMSession *)self restartPending])
        {
          [(NESMSession *)self setRestartPending:1];
          v39 = xpc_copy(commandCopy);
          [(NESMSession *)self setStartMessage:v39];

          if (v16)
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *v41 = 138412546;
              *&v41[4] = self;
              *&v41[12] = 2112;
              *&v41[14] = clientCopy;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@: Stop current session as requested by an overriding restart command from %@", v41, 0x16u);
            }

            [(NESMSession *)self handleStopMessageWithReason:36];
          }

          goto LABEL_89;
        }

        v37 = ne_log_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 138412546;
          *&v41[4] = self;
          *&v41[12] = 2112;
          *&v41[14] = clientCopy;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: Ignore restart command from %@, a pending start command already exists", v41, 0x16u);
        }
      }

      else
      {
        if ([(NESMSession *)self failedConnectCountWithinInterval]>= 4 && [(NESMSession *)self status]== 1 && sub_1000B34FC(self, commandCopy) && (!self || [(NESMSession *)self onDemandPauseLevelInternal]!= 2))
        {
          v31 = ne_log_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 138412290;
            *&v41[4] = self;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: Damping VOD request: too many consecutive VPN connection attempts failed.", v41, 0xCu);
          }

          sub_10008FE40(self, 2);
        }

        if ([(NESMSession *)self status]== 1)
        {
          v32 = sub_1000B34FC(self, commandCopy);
          if (!self || !v32 || [(NESMSession *)self onDemandPauseLevelInternal]!= 2)
          {
            v38 = xpc_copy(commandCopy);
            [(NESMSession *)self setStartMessage:v38];

            [(NESMSession *)self registerSession:commandCopy fromClient:clientCopy];
            goto LABEL_89;
          }
        }

        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          if (v16 || v15)
          {
            v34 = "re";
          }

          else
          {
            v34 = "";
          }

          [(NESMSession *)self status];
          v35 = ne_session_status_to_string();
          *v41 = 138413058;
          *&v41[4] = self;
          *&v41[12] = 2080;
          *&v41[14] = v34;
          v42 = 2112;
          v43 = clientCopy;
          v44 = 2080;
          v45 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@: Skip a %sstart command from %@: session in state %s", v41, 0x2Au);
        }
      }

      sub_1000B3460(clientCopy, v36);
    }

LABEL_89:

    goto LABEL_90;
  }

  if (v9 > 6)
  {
    switch(v9)
    {
      case 7:
        v25 = xpc_dictionary_get_int64(commandCopy, "SessionInfoType");
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 138412802;
          *&v41[4] = self;
          *&v41[12] = 2080;
          *&v41[14] = ne_session_info_type_to_string();
          v42 = 2112;
          v43 = clientCopy;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%@: Received a send info request with type %s from %@", v41, 0x20u);
        }

        kdebug_trace();
        [(NESMSession *)self handleSendInfoMessage:commandCopy withType:v25];
        break;
      case 8:
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 138412546;
          *&v41[4] = self;
          *&v41[12] = 2112;
          *&v41[14] = clientCopy;
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%@: Received a URL Filter fetch server params request from %@", v41, 0x16u);
        }

        kdebug_trace();
        [(NESMSession *)self handleFetchServerParamsMessage:commandCopy];
        break;
      case 9:
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 138412546;
          *&v41[4] = self;
          *&v41[12] = 2112;
          *&v41[14] = clientCopy;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@: Received a URL Filter reset cache request from %@", v41, 0x16u);
        }

        kdebug_trace();
        [(NESMSession *)self handleResetCacheMessage:commandCopy];
        break;
    }

    goto LABEL_90;
  }

  if (v9 != 5)
  {
    v18 = xpc_dictionary_get_int64(commandCopy, "SessionInfoType");
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v41 = 138412802;
      *&v41[4] = self;
      *&v41[12] = 2080;
      *&v41[14] = ne_session_info_type_to_string();
      v42 = 2112;
      v43 = clientCopy;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%@: Received a info fetch request with type %s from %@", v41, 0x20u);
    }

    kdebug_trace();
    if (clientCopy)
    {
      v20 = clientCopy[3];
      if ((v20 & 1) != 0 && v18 != 4)
      {
        goto LABEL_15;
      }

      if ((v20 & 2) != 0)
      {
LABEL_34:
        [(NESMSession *)self handleGetInfoMessage:commandCopy withType:v18];
        goto LABEL_90;
      }
    }

    if (v18 != 4)
    {
      goto LABEL_34;
    }

LABEL_15:
    reply = xpc_dictionary_create_reply(commandCopy);
    v12 = xpc_dictionary_get_remote_connection(commandCopy);
    xpc_connection_send_message(v12, reply);

    goto LABEL_90;
  }

  v27 = ne_log_obj();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 138412546;
    *&v41[4] = self;
    *&v41[12] = 2112;
    *&v41[14] = clientCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: Received a security session info request from %@", v41, 0x16u);
  }

  kdebug_trace();
  [(NESMSession *)self handleSecuritySessionInfoRequest:commandCopy];
LABEL_90:
}

- (void)registerSession:(id)session fromClient:(id)client
{
  sessionCopy = session;
  clientCopy = client;
  messageQueue = [(NESMSession *)self messageQueue];
  dispatch_suspend(messageQueue);

  server = self->_server;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B3664;
  v12[3] = &unk_1000EB210;
  v12[4] = self;
  v13 = clientCopy;
  v14 = sessionCopy;
  v10 = sessionCopy;
  v11 = clientCopy;
  [(NESMServer *)server registerSession:self withCompletionHandler:v12];
}

- (void)removeAllClients
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B391C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addClientConnection:(id)connection
{
  connectionCopy = connection;
  queue = [(NESMSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B3B88;
  v7[3] = &unk_1000EB198;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: deallocating", buf, 0xCu);
  }

  sub_10008F9DC(self);
  sub_10008C490(self);
  sub_10008FAD0(self);
  onDemandPauseTimerSource = [(NESMSession *)self onDemandPauseTimerSource];

  if (onDemandPauseTimerSource)
  {
    onDemandPauseTimerSource2 = [(NESMSession *)self onDemandPauseTimerSource];
    dispatch_source_cancel(onDemandPauseTimerSource2);

    [(NESMSession *)self setOnDemandPauseTimerSource:0];
  }

  v6.receiver = self;
  v6.super_class = NESMSession;
  [(NESMSession *)&v6 dealloc];
}

- (NESMSession)initWithConfiguration:(id)configuration andServer:(id)server sessionQueue:(id)queue messageQueue:(id)messageQueue
{
  configurationCopy = configuration;
  serverCopy = server;
  queueCopy = queue;
  messageQueueCopy = messageQueue;
  v37.receiver = self;
  v37.super_class = NESMSession;
  v15 = [(NESMSession *)&v37 init];
  v16 = v15;
  if (v15)
  {
    firstFailedConnectTime = v15->_firstFailedConnectTime;
    v15->_failedConnectCountWithinInterval = 0;
    v15->_firstFailedConnectTime = 0;
    v15->_connectedCount = 0;
    v15->_disconnectedCount = 0;
    v15->_connectCount = 0;

    v16->_status = 1;
    v18 = [[NSMutableArray alloc] initWithCapacity:0];
    clients = v16->_clients;
    v16->_clients = v18;

    objc_storeStrong(&v16->_configuration, configuration);
    objc_storeStrong(&v16->_server, server);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    name = [(NEConfiguration *)v16->_configuration name];
    identifier = [(NEConfiguration *)v16->_configuration identifier];
    uUIDString = [identifier UUIDString];
    v25 = [NSString stringWithFormat:@"%@[%@:%@]", v21, name, uUIDString];
    description = v16->_description;
    v16->_description = v25;

    policySession = v16->_policySession;
    v16->_policySession = 0;

    if (queueCopy)
    {
      v28 = queueCopy;
      queue = v16->_queue;
      v16->_queue = v28;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v30 = dispatch_queue_create("NetworkExtension session queue", queue);
      v31 = v16->_queue;
      v16->_queue = v30;
    }

    if (messageQueueCopy)
    {
      v32 = messageQueueCopy;
      messageQueue = v16->_messageQueue;
      v16->_messageQueue = v32;
    }

    else
    {
      messageQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v34 = dispatch_queue_create("NetworkExtension session message queue", messageQueue);
      v35 = v16->_messageQueue;
      v16->_messageQueue = v34;
    }
  }

  return v16;
}

+ (__CFDictionary)copyDefaultRouteCacheIsIPv6:(BOOL)pv6
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v13 = v5;
  v6 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v12 = v6;
  if (pv6)
  {
    *bytes = 0;
    v11 = 0;
    *v9 = CFDataCreate(kCFAllocatorDefault, bytes, 16);
    CFArrayAppendValue(v5, *v9);
    CFArrayAppendValue(v6, *v9);
  }

  else
  {
    *v9 = 0;
    v7 = CFDataCreate(kCFAllocatorDefault, v9, 4);
    *bytes = v7;
    CFArrayAppendValue(v5, v7);
    CFArrayAppendValue(v6, v7);
  }

  myCFRelease();
  CFDictionarySetValue(Mutable, @"subnet-addresses", v5);
  CFDictionarySetValue(Mutable, @"subnet-masks", v6);
  myCFRelease();
  myCFRelease();
  return Mutable;
}

+ (id)sessionWithConfiguration:(id)configuration andType:(int)type andServer:(id)server
{
  configurationCopy = configuration;
  serverCopy = server;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = ne_session_type_to_string();
    identifier = [configurationCopy identifier];
    name = [configurationCopy name];
    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    v72 = 2112;
    v73 = name;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating session with type %s, id %@ (%@)", buf, 0x20u);
  }

  appVPN = 0;
  if (type <= 6)
  {
    if (type <= 3)
    {
      switch(type)
      {
        case 1:
          appVPN = [configurationCopy VPN];

          if (!appVPN)
          {
            goto LABEL_86;
          }

          v25 = [configurationCopy VPN];
          protocol = [v25 protocol];
          type = [protocol type];

          if ((type - 1) < 2)
          {
            v50 = [NESMLegacySession alloc];
            protocol3 = [configurationCopy VPN];
            protocol2 = [protocol3 protocol];
            v43 = v50;
            v44 = configurationCopy;
            v45 = serverCopy;
            v46 = protocol2;
            v47 = 1;
            goto LABEL_68;
          }

          if (type == 4)
          {
            v58 = [configurationCopy VPN];
            protocol3 = [v58 protocol];

            v59 = [configurationCopy VPN];
            tunnelType = [v59 tunnelType];

            v61 = off_1000E8F40;
            if (tunnelType != 1)
            {
              v61 = off_1000E8F10;
            }

            v62 = objc_alloc(*v61);
            protocol2 = [protocol3 pluginType];
            v63 = v62;
            v64 = configurationCopy;
            v65 = serverCopy;
            v66 = protocol3;
            v67 = protocol2;
            v68 = 1;
            goto LABEL_79;
          }

          if (type != 5)
          {
            goto LABEL_66;
          }

          v28 = [configurationCopy VPN];
          protocol4 = [v28 protocol];
          if ([protocol4 enableFallback])
          {
            v30 = [configurationCopy VPN];
            protocol5 = [v30 protocol];
            includeAllNetworks = [protocol5 includeAllNetworks];

            if ((includeAllNetworks & 1) == 0)
            {
              v33 = [NESMIKEv2VPNFallbackSession alloc];
              protocol3 = [configurationCopy VPN];
              protocol2 = [protocol3 protocol];
              v34 = sub_10009A54C(v33, configurationCopy, serverCopy, protocol2);
LABEL_83:
              appVPN = v34;
              break;
            }
          }

          else
          {
          }

          appVPN = [NESMIKEv2VPNSession alloc];
          protocol3 = [configurationCopy VPN];
          protocol2 = [protocol3 protocol];
          if (appVPN)
          {
            *buf = appVPN;
            *&buf[8] = NESMIKEv2VPNSession;
            v34 = objc_msgSendSuper2(buf, "initWithConfiguration:andServer:andProtocol:andPluginType:andSessionType:sessionQueue:messageQueue:tunnelKind:parent:", configurationCopy, serverCopy, protocol2, @"com.apple.NetworkExtension.IKEv2Provider", 1, 0, 0, 1, 0);
            goto LABEL_83;
          }

          break;
        case 2:
          appVPN = [configurationCopy appVPN];

          if (!appVPN)
          {
            goto LABEL_86;
          }

          appVPN2 = [configurationCopy appVPN];
          protocol6 = [appVPN2 protocol];
          type2 = [protocol6 type];

          if (type2 != 5)
          {
            if (type2 != 4)
            {
              if (type2 == 1)
              {
                v42 = [NESMLegacySession alloc];
                protocol3 = [configurationCopy appVPN];
                protocol2 = [protocol3 protocol];
                v43 = v42;
                v44 = configurationCopy;
                v45 = serverCopy;
                v46 = protocol2;
                v47 = 2;
LABEL_68:
                v34 = sub_1000750F4(v43, v44, v45, v46, v47);
                goto LABEL_83;
              }

LABEL_66:
              appVPN = 0;
              goto LABEL_86;
            }

            appVPN3 = [configurationCopy appVPN];
            protocol3 = [appVPN3 protocol];

            appVPN4 = [configurationCopy appVPN];
            tunnelType2 = [appVPN4 tunnelType];

            if (tunnelType2 == 2)
            {
              v54 = [NESMFlowDivertSession alloc];
              protocol2 = [protocol3 pluginType];
              v34 = [(NESMFlowDivertSession *)v54 initWithConfiguration:configurationCopy andServer:serverCopy andProtocol:protocol3 andPluginType:protocol2];
              goto LABEL_83;
            }

            v69 = [NESMVPNSession alloc];
            protocol2 = [protocol3 pluginType];
            v63 = v69;
            v64 = configurationCopy;
            v65 = serverCopy;
            v66 = protocol3;
            v67 = protocol2;
            v68 = 2;
LABEL_79:
            v34 = [(NESMVPNSession *)v63 initWithConfiguration:v64 andServer:v65 andProtocol:v66 andPluginType:v67 andSessionType:v68];
            goto LABEL_83;
          }

          appVPN = [NESMIKEv2VPNSession alloc];
          protocol3 = [configurationCopy appVPN];
          protocol2 = [protocol3 protocol];
          if (appVPN)
          {
            *buf = appVPN;
            *&buf[8] = NESMIKEv2VPNSession;
            v34 = objc_msgSendSuper2(buf, "initWithConfiguration:andServer:andProtocol:andPluginType:andSessionType:sessionQueue:messageQueue:tunnelKind:parent:", configurationCopy, serverCopy, protocol2, @"com.apple.NetworkExtension.IKEv2Provider", 2, 0, 0, 1, 0);
            goto LABEL_83;
          }

          break;
        case 3:
          if (+[NESMAlwaysOnSession hasRequiredFrameworks])
          {
            appVPN = [configurationCopy alwaysOnVPN];

            if (!appVPN)
            {
              goto LABEL_86;
            }

            v14 = NESMAlwaysOnSession;
            goto LABEL_57;
          }

          v48 = ne_log_obj();
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_65;
          }

          *buf = 0;
          v49 = "Cannot create an Always On VPN session, some required frameworks are missing";
          goto LABEL_90;
        default:
          goto LABEL_86;
      }

LABEL_84:

LABEL_85:
      goto LABEL_86;
    }

    if (type != 4)
    {
      if (type == 5)
      {
        appVPN = [configurationCopy pathController];

        if (!appVPN)
        {
          goto LABEL_86;
        }

        v14 = NESMPathControllerSession;
        goto LABEL_57;
      }

      appVPN = [configurationCopy dnsProxy];

      if (!appVPN)
      {
        goto LABEL_86;
      }

      v15 = [NESMDNSProxySession alloc];
      protocol3 = [configurationCopy dnsProxy];
      protocol2 = [protocol3 protocol];
      dnsProxy = [configurationCopy dnsProxy];
      protocol7 = [dnsProxy protocol];
      pluginType = [protocol7 pluginType];
      appVPN = [(NESMDNSProxySession *)v15 initWithConfiguration:configurationCopy andServer:serverCopy andProtocol:protocol2 andPluginType:pluginType];

      goto LABEL_84;
    }

    appVPN = [configurationCopy contentFilter];
    if (!appVPN)
    {
      goto LABEL_86;
    }

    contentFilter = [configurationCopy contentFilter];
    provider = [contentFilter provider];
    if (([provider filterBrowsers] & 1) == 0)
    {
      contentFilter2 = [configurationCopy contentFilter];
      provider2 = [contentFilter2 provider];
      if (([provider2 filterSockets] & 1) == 0)
      {
        contentFilter3 = [configurationCopy contentFilter];
        provider3 = [contentFilter3 provider];
        filterPackets = [provider3 filterPackets];

        if ((filterPackets & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_46;
      }
    }

LABEL_46:
    v14 = NESMFilterSession;
    goto LABEL_57;
  }

  if (type <= 9)
  {
    if (type == 7)
    {
      if (+[NESMDNSSettingsSession hasRequiredFrameworks])
      {
        appVPN = [configurationCopy dnsSettings];

        if (!appVPN)
        {
          goto LABEL_86;
        }

        v14 = NESMDNSSettingsSession;
        goto LABEL_57;
      }

      v48 = ne_log_obj();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_65;
      }

      *buf = 0;
      v49 = "Cannot create a DNS Settings session, some required frameworks are missing";
    }

    else if (type == 8)
    {
      if (+[NESMAppPushSession hasRequiredFrameworks])
      {
        appVPN = [configurationCopy appPush];

        if (!appVPN)
        {
          goto LABEL_86;
        }

        v14 = NESMAppPushSession;
        goto LABEL_57;
      }

      v48 = ne_log_obj();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_65;
      }

      *buf = 0;
      v49 = "Cannot create an App Push session, some required frameworks are missing";
    }

    else
    {
      if (+[NESMRelaySession hasRequiredFrameworks])
      {
        appVPN = [configurationCopy relay];

        if (!appVPN)
        {
          goto LABEL_86;
        }

        v14 = NESMRelaySession;
        goto LABEL_57;
      }

      v48 = ne_log_obj();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_65;
      }

      *buf = 0;
      v49 = "Cannot create an Relay session, some required frameworks are missing";
    }

LABEL_90:
    _os_log_fault_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, v49, buf, 2u);
LABEL_65:

    goto LABEL_66;
  }

  if ((type - 11) < 2)
  {
    appVPN = [configurationCopy hotspot];

    if (!appVPN)
    {
      goto LABEL_86;
    }

    v21 = [NESMHotspotSession alloc];
    if (!v21)
    {
      goto LABEL_66;
    }

    *buf = v21;
    *&buf[8] = NESMHotspotSession;
    v22 = objc_msgSendSuper2(buf, "initWithConfiguration:andServer:", configurationCopy, serverCopy);
    appVPN = v22;
    if (v22)
    {
      objc_setProperty_atomic(v22, v23, 0, 360);
      objc_setProperty_atomic(appVPN, v24, 0, 368);
      appVPN->super._isSecondaryConnection = 0;
      *&appVPN->super._reassertedByPlugin = type;
    }

    protocol3 = ne_log_obj();
    if (os_log_type_enabled(protocol3, OS_LOG_TYPE_INFO))
    {
      *v74 = 138412290;
      v75 = appVPN;
      _os_log_impl(&_mh_execute_header, protocol3, OS_LOG_TYPE_INFO, "%@ initialized hotspot session", v74, 0xCu);
    }

    goto LABEL_85;
  }

  if (type == 10)
  {
    appVPN = [configurationCopy urlFilter];

    if (appVPN)
    {
      v14 = NESMURLFilterSession;
LABEL_57:
      appVPN = [[v14 alloc] initWithConfiguration:configurationCopy andServer:serverCopy];
    }
  }

LABEL_86:
  [(NESMVPNSession *)appVPN handleInitializeState];

  return appVPN;
}

@end
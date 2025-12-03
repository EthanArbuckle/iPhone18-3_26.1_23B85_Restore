@interface NESMURLFilterSession
- (BOOL)handleAgentClientConnection:(id)connection WithMessage:(id)message;
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (BOOL)hasProviderWithBundleIdentifier:(id)identifier;
- (BOOL)isStopAllowed:(id)allowed;
- (BOOL)pluginDidRequestUpdatePrefilter:(id)prefilter;
- (NESMURLFilterSession)initWithConfiguration:(id)configuration andServer:(id)server;
- (id)copyExtendedStatus;
- (id)pluginType;
- (void)handleFetchServerParamsMessage:(id)message;
- (void)handleGetInfoMessage:(id)message withType:(int)type;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkDetectionNotification:(int)notification;
- (void)handleResetCacheMessage:(id)message;
- (void)handleStartMessage:(id)message;
- (void)handleUserLogin;
- (void)handleWakeup;
- (void)invalidate;
- (void)plugin:(id)plugin didSetStatus:(int64_t)status andError:(int64_t)error;
- (void)plugin:(id)plugin didStartWithPID:(int)d error:(id)error;
- (void)pluginDidAcknowledgeSleep:(id)sleep;
- (void)pluginDidDispose:(id)dispose;
- (void)pluginDidRequestAgentClientServer:(id)server;
- (void)uninstall;
@end

@implementation NESMURLFilterSession

- (void)handleResetCacheMessage:(id)message
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 138412546;
    *&v8[4] = self;
    *&v8[12] = 2080;
    *&v8[14] = "[NESMURLFilterSession handleResetCacheMessage:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: %s - resetting URL Fitler PIR cache", v8, 0x16u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v5, 408, 1);
    if (Property)
    {
      *v8 = _NSConcreteStackBlock;
      *&v8[8] = 3221225472;
      *&v8[16] = sub_10001B214;
      v9 = &unk_1000EB068;
      v10 = Property;
      v7 = [Property remotePluginObjectWithErrorHandler:v8];
      [v7 resetURLFilterCache];
    }
  }
}

- (void)handleFetchServerParamsMessage:(id)message
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 138412546;
    *&v8[4] = self;
    *&v8[12] = 2080;
    *&v8[14] = "[NESMURLFilterSession handleFetchServerParamsMessage:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: %s - fetching URL Fitler PIR parameters", v8, 0x16u);
  }

  if (self)
  {
    Property = objc_getProperty(self, v5, 408, 1);
    if (Property)
    {
      *v8 = _NSConcreteStackBlock;
      *&v8[8] = 3221225472;
      *&v8[16] = sub_10001B080;
      v9 = &unk_1000EB068;
      v10 = Property;
      v7 = [Property remotePluginObjectWithErrorHandler:v8];
      [v7 fetchURLFilterServerParameters];
    }
  }
}

- (void)handleGetInfoMessage:(id)message withType:(int)type
{
  xdict = message;
  reply = xpc_dictionary_create_reply(xdict);
  if (type == 2)
  {
    copyExtendedStatus = [(NESMURLFilterSession *)self copyExtendedStatus];
    if (copyExtendedStatus)
    {
      v8 = copyExtendedStatus;
      v9 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(reply, "SessionInfo", v9);
    }
  }

  v10 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v10, reply);
}

- (id)copyExtendedStatus
{
  v3 = [NSMutableDictionary alloc];
  v18.receiver = self;
  v18.super_class = NESMURLFilterSession;
  copyExtendedStatus = [(NESMSession *)&v18 copyExtendedStatus];
  v5 = [v3 initWithDictionary:copyExtendedStatus];

  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v7 = [NSNumber numberWithInteger:state];
  [v5 setObject:v7 forKeyedSubscript:@"SessionState"];

  v8 = [NSNumber numberWithInt:[(NESMSession *)self status]];
  [v5 setObject:v8 forKeyedSubscript:@"NEStatus"];

  v9 = [NSNumber numberWithInt:[(NESMSession *)self SCNCStatus]];
  [v5 setObject:v9 forKeyedSubscript:@"Status"];

  lastDisconnectError = [(NESMSession *)self lastDisconnectError];
  if (lastDisconnectError)
  {
    v17 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:lastDisconnectError requiringSecureCoding:1 error:&v17];
    v12 = v17;
    if (v11)
    {
      [v5 setObject:v11 forKeyedSubscript:@"LastDisconnectError"];
    }

    else
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to serialize the last disconnect error: %@", buf, 0xCu);
      }
    }
  }

  lastStatusChangeTime = [(NESMSession *)self lastStatusChangeTime];

  if (lastStatusChangeTime)
  {
    lastStatusChangeTime2 = [(NESMSession *)self lastStatusChangeTime];
    [v5 setObject:lastStatusChangeTime2 forKeyedSubscript:@"LastStatusChangeTime"];
  }

  return v5;
}

- (BOOL)isStopAllowed:(id)allowed
{
  v3 = xpc_dictionary_get_remote_connection(allowed);
  if (v3)
  {
    v4 = xpc_connection_copy_entitlement_value();
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleUserLogin
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BCA4;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = NESMURLFilterSession;
  [(NESMSession *)&v4 invalidate];
  [(NESMURLFilterSessionState *)self->_stateHandler leave];
  stateHandler = self->_stateHandler;
  self->_stateHandler = 0;
}

- (id)pluginType
{
  configuration = [(NESMSession *)self configuration];
  urlFilter = [configuration urlFilter];
  appBundleIdentifier = [urlFilter appBundleIdentifier];

  return appBundleIdentifier;
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [(NESMSession *)self setConfiguration:0];
    [(NESMSession *)self setConfigurationSignature:0];
    goto LABEL_14;
  }

  configuration = [(NESMSession *)self configuration];
  urlFilter = [configuration urlFilter];
  shouldFailClosed = [urlFilter shouldFailClosed];

  v28.receiver = self;
  v28.super_class = NESMURLFilterSession;
  if (![(NESMSession *)&v28 handleUpdateConfiguration:configurationCopy])
  {
LABEL_14:
    v22 = 0;
    goto LABEL_25;
  }

  configuration2 = [(NESMSession *)self configuration];
  urlFilter2 = [configuration2 urlFilter];
  isEnabled = [urlFilter2 isEnabled];

  if (isEnabled)
  {
    v12 = self ? objc_getProperty(self, v11, 384, 1) : 0;
    [v12 handleUpdateConfiguration];
    configuration3 = [(NESMSession *)self configuration];
    urlFilter3 = [configuration3 urlFilter];
    shouldFailClosed2 = [urlFilter3 shouldFailClosed];

    if (shouldFailClosed != shouldFailClosed2)
    {
      configuration4 = [(NESMSession *)self configuration];
      urlFilter4 = [configuration4 urlFilter];
      shouldFailClosed3 = [urlFilter4 shouldFailClosed];
      if (self)
      {
        v19 = shouldFailClosed3;
        v20 = dword_1000FCDF4;
        if (dword_1000FCDF4 != -1)
        {
          goto LABEL_17;
        }

        out_token = -1;
        if (notify_register_check("com.apple.private.restrict-post.nesessionmanager.url-filter-fail-closed", &out_token))
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            selfCopy2 = self;
            v32 = 2080;
            v33 = "[NESMURLFilterSession postFilterFailClosedChange:]";
            v34 = 2080;
            v35 = "com.apple.private.restrict-post.nesessionmanager.url-filter-fail-closed";
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@: %s - Failed to register for the %s notification", buf, 0x20u);
          }

          v20 = dword_1000FCDF4;
        }

        else
        {
          v20 = out_token;
          dword_1000FCDF4 = out_token;
        }

        if (v20 != -1)
        {
LABEL_17:
          v23 = v19;
          v24 = notify_set_state(v20, v19);
          if (v24)
          {
            v25 = v24;
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138413314;
              selfCopy2 = self;
              v32 = 2080;
              v33 = "[NESMURLFilterSession postFilterFailClosedChange:]";
              v34 = 2048;
              v35 = v23;
              v36 = 2080;
              v37 = "com.apple.private.restrict-post.nesessionmanager.url-filter-fail-closed";
              v38 = 1024;
              v39 = v25;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@: %s - Failed to set <shouldFailClosed=%llu> for the %s notification (status %d)", buf, 0x30u);
            }
          }

          else
          {
            notify_post("com.apple.private.restrict-post.nesessionmanager.url-filter-fail-closed");
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy2 = v23;
              v32 = 2080;
              v33 = "com.apple.private.restrict-post.nesessionmanager.url-filter-fail-closed";
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Posted to <shouldFailClosed=%llu> to %s", buf, 0x16u);
            }
          }
        }
      }
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)uninstall
{
  self->_isInstalled = 0;
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: uninstalled", &v4, 0xCu);
  }
}

- (BOOL)handleAgentClientConnection:(id)connection WithMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "command");
  if (int64 == 1)
  {
    queue = [(NESMSession *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006C2BC;
    v11[3] = &unk_1000EA778;
    v14 = 1;
    v11[4] = self;
    v12 = connectionCopy;
    v13 = messageCopy;
    dispatch_async(queue, v11);
  }

  return int64 == 1;
}

- (void)pluginDidAcknowledgeSleep:(id)sleep
{
  server = [(NESMSession *)self server];
  sub_100059ED4(server, v3);
}

- (void)plugin:(id)plugin didSetStatus:(int64_t)status andError:(int64_t)error
{
  pluginCopy = plugin;
  if (error)
  {
    v9 = [[NSError alloc] initWithDomain:@"NEAgentURLFilterErrorDomain" code:error userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  if (status > 1)
  {
    if (status == 2)
    {
      if (self)
      {
        Property = objc_getProperty(self, v8, 384, 1);
      }

      else
      {
        Property = 0;
      }

      [Property handlePluginStatusDidChangeToRunning:pluginCopy];
      goto LABEL_26;
    }

    if (status != 3)
    {
      if (status == 4)
      {
        if (self)
        {
          v10 = objc_getProperty(self, v8, 384, 1);
        }

        else
        {
          v10 = 0;
        }

        [v10 handlePluginStatusDidChangeToUpdating:pluginCopy];
      }

      goto LABEL_26;
    }

    if (self)
    {
      v13 = objc_getProperty(self, v8, 384, 1);
    }

    else
    {
      v13 = 0;
    }

    [v13 handlePlugin:pluginCopy statusDidChangeToStoppingWithError:error];
LABEL_25:
    [(NESMSession *)self setLastDisconnectError:v9];
    goto LABEL_26;
  }

  if (!status)
  {
    if (self)
    {
      v14 = objc_getProperty(self, v8, 384, 1);
    }

    else
    {
      v14 = 0;
    }

    [v14 handlePlugin:pluginCopy statusDidChangeToIdleWithError:error];
    goto LABEL_25;
  }

  if (status == 1)
  {
    if (self)
    {
      v11 = objc_getProperty(self, v8, 384, 1);
    }

    else
    {
      v11 = 0;
    }

    [v11 handlePluginStatusDidChangeToStarting:pluginCopy];
  }

LABEL_26:
}

- (void)plugin:(id)plugin didStartWithPID:(int)d error:(id)error
{
  pluginCopy = plugin;
  errorCopy = error;
  v10 = ne_log_obj();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!d || errorCopy)
  {
    if (v11)
    {
      v22 = 138412546;
      selfCopy2 = self;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Failed to start with error: %@", &v22, 0x16u);
    }

    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"NEAgentErrorDomain"])
      {
        code = [errorCopy code];

        if (code == 2)
        {
          [(NESMSession *)self setLastStopReason:6];
          if (self)
          {
            Property = objc_getProperty(self, v18, 384, 1);
          }

          else
          {
            Property = 0;
          }

          v20 = pluginCopy;
          v21 = 0;
LABEL_21:
          [Property handlePlugin:v20 statusDidChangeToIdleWithError:v21];
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    if (self)
    {
      Property = objc_getProperty(self, v15, 384, 1);
    }

    else
    {
      Property = 0;
    }

    v20 = pluginCopy;
    v21 = 1;
    goto LABEL_21;
  }

  if (v11)
  {
    v22 = 138412802;
    selfCopy2 = self;
    v24 = 2112;
    v25 = pluginCopy;
    v26 = 1024;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ started with pid %d", &v22, 0x1Cu);
  }

  v12 = pluginCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12 && (isKindOfClass & 1) != 0)
  {
    [v12 setStatus:1 error:0];
    remotePluginObject = [v12 remotePluginObject];
    [remotePluginObject startURLFilter];
  }

LABEL_22:
}

- (BOOL)pluginDidRequestUpdatePrefilter:(id)prefilter
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v36 = 2080;
    v37 = "[NESMURLFilterSession pluginDidRequestUpdatePrefilter:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: %s - enter", buf, 0x16u);
  }

  if (self)
  {
    if (objc_getProperty(self, v5, 376, 1))
    {
      v7 = [objc_getProperty(self v6];
      if (chown(v7, 0, 0))
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          Property = objc_getProperty(self, v9, 376, 1);
          v11 = *__error();
          v12 = __error();
          v13 = strerror(*v12);
          *buf = 138413314;
          selfCopy4 = self;
          v36 = 2080;
          v37 = "[NESMURLFilterSession pluginDidRequestUpdatePrefilter:]";
          v38 = 2112;
          v39 = Property;
          v40 = 1024;
          v41 = v11;
          v42 = 2080;
          v43 = v13;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: %s - Failed to chown mmap file for URL prefilter %@ <errno %d - %s>", buf, 0x30u);
        }
      }

      else
      {
        v14 = [NSString alloc];
        configuration = [(NESMSession *)self configuration];
        urlFilter = [configuration urlFilter];
        appBundleIdentifier = [urlFilter appBundleIdentifier];
        v8 = [v14 initWithFormat:@"%@%@", @"/private/var/db/urlPrefilter/com.apple.networkextension.url-prefilter-data.", appBundleIdentifier];

        v19 = [objc_getProperty(self v18];
        uTF8String = [v8 UTF8String];
        rename(v19, uTF8String, v21);
        if (!v23)
        {
          objc_setProperty_atomic(self, v22, v8, 368);
          sub_10006CF28(self);
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v29 = objc_getProperty(self, v28, 368, 1);
            *buf = 138412802;
            selfCopy4 = self;
            v36 = 2080;
            v37 = "[NESMURLFilterSession pluginDidRequestUpdatePrefilter:]";
            v38 = 2112;
            v39 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@: %s - Updated mmap file for URL prefilter %@", buf, 0x20u);
          }

          sub_10006D158(self);
          LOBYTE(self) = 1;
          goto LABEL_14;
        }

        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_getProperty(self, v25, 376, 1);
          v31 = *__error();
          v32 = __error();
          v33 = strerror(*v32);
          *buf = 138413314;
          selfCopy4 = self;
          v36 = 2080;
          v37 = "[NESMURLFilterSession pluginDidRequestUpdatePrefilter:]";
          v38 = 2112;
          v39 = v30;
          v40 = 1024;
          v41 = v31;
          v42 = 2080;
          v43 = v33;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@: %s - Failed to rename mmap file for URL prefilter %@ <errno %d - %s>", buf, 0x30u);
        }
      }

      LOBYTE(self) = 0;
LABEL_14:

      return self;
    }

    LOBYTE(self) = 0;
  }

  return self;
}

- (void)pluginDidRequestAgentClientServer:(id)server
{
  if (self)
  {
    self->_acceptAgentClients = 1;
  }
}

- (void)pluginDidDispose:(id)dispose
{
  disposeCopy = dispose;
  if (self)
  {
    Property = objc_getProperty(self, v4, 384, 1);
  }

  else
  {
    Property = 0;
  }

  [Property handlePluginDisposeComplete:disposeCopy];
}

- (void)handleInstalledAppsChanged
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D760;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleNetworkDetectionNotification:(int)notification
{
  if ((notification & 0xFFFFFFFB) == 1)
  {
    block[7] = v3;
    block[8] = v4;
    queue = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D8A8;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)handleWakeup
{
  if (self)
  {
    self = objc_getProperty(self, a2, 384, 1);
    v2 = vars8;
  }

  [(NESMURLFilterSession *)self handleWakeup];
}

- (BOOL)handleSleep
{
  if (self)
  {
    self = objc_getProperty(self, a2, 384, 1);
    v2 = vars8;
  }

  return [(NESMURLFilterSession *)self handleSleep];
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    self->_externallyStopped = 0;
    objc_setProperty_atomic(self, v4, messageCopy, 416);
    sub_10006D9D8(self, 0);
    v35.receiver = self;
    v35.super_class = NESMURLFilterSession;
    [(NESMSession *)&v35 handleStartMessage:messageCopy];
    objc_setProperty_atomic(self, v6, 0, 360);
  }

  else
  {
    v35.receiver = 0;
    v35.super_class = NESMURLFilterSession;
    [(NESMSession *)&v35 handleStartMessage:messageCopy];
  }

  v7 = xpc_dictionary_get_value(messageCopy, "SessionOptions");
  v9 = v7;
  if (!v7 || xpc_get_type(v7) != &_xpc_type_dictionary || !xpc_dictionary_get_BOOL(v9, "test-agent"))
  {
    if (!self)
    {
      Property = 0;
      goto LABEL_16;
    }

LABEL_15:
    Property = objc_getProperty(self, v8, 384, 1);
LABEL_16:
    [Property handleStartMessage:messageCopy];
    goto LABEL_17;
  }

  v10 = xpc_dictionary_get_remote_connection(messageCopy);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = xpc_connection_copy_entitlement_value();
  v12 = v11;
  if (!v11 || xpc_get_type(v11) != &_xpc_type_BOOL)
  {

    goto LABEL_10;
  }

  value = xpc_BOOL_get_value(v12);

  if (value)
  {
    v18 = [[NEProcessIdentity alloc] initFromXPCConnection:v10];
    v20 = v18;
    if (self)
    {
      objc_setProperty_atomic(self, v19, v18, 360);

      if (objc_getProperty(self, v21, 360, 1))
      {
        v22 = xpc_dictionary_get_value(v9, "listener-endpoint");
        v23 = v22;
        if (v22 && xpc_get_type(v22) == &_xpc_type_endpoint)
        {
          v24 = [NETestAgent alloc];
          configuration = [(NESMSession *)self configuration];
          pluginType = [configuration pluginType];
          v27 = sub_100075628(&v24->super.super.isa, pluginType, 4, messageCopy);

          if (v27)
          {
            v28 = [NEURLFilterPlugin alloc];
            queue = [(NESMSession *)self queue];
            v30 = [(NEPlugin *)v28 initWithAgent:v27 delegateQueue:queue andDelegate:self];
            objc_setProperty_atomic(self, v31, v30, 408);
          }

          else
          {
            queue = ne_log_obj();
            if (os_log_type_enabled(queue, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, queue, OS_LOG_TYPE_ERROR, "Failed to create a test agent", buf, 2u);
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v32 = "Failed to create a process identity from the session connection";
    v33 = v13;
    v34 = 2;
    goto LABEL_26;
  }

LABEL_10:
  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v37 = "com.apple.private.networkextension.test-control";
    v32 = "Test provider does not have the %s entitlement";
    v33 = v13;
    v34 = 12;
LABEL_26:
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
  }

LABEL_11:

  if (self)
  {
    v15 = objc_getProperty(self, v14, 384, 1);
  }

  else
  {
    v15 = 0;
  }

  [v15 handleStartMessage:messageCopy];

LABEL_17:
}

- (BOOL)hasProviderWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  configuration = [(NESMSession *)self configuration];
  urlFilter = [configuration urlFilter];
  controlProviderBundleIdentifier = [urlFilter controlProviderBundleIdentifier];

  if (controlProviderBundleIdentifier)
  {
    v8 = [identifierCopy isEqualToString:controlProviderBundleIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NESMURLFilterSession)initWithConfiguration:(id)configuration andServer:(id)server
{
  v5.receiver = self;
  v5.super_class = NESMURLFilterSession;
  result = [(NESMSession *)&v5 initWithConfiguration:configuration andServer:server];
  if (result)
  {
    result->_state = 0;
    result->_externallyStopped = 0;
    result->_restartIntervalMsecs = 500;
    result->_restartIntervalAttempts = 0;
  }

  return result;
}

@end
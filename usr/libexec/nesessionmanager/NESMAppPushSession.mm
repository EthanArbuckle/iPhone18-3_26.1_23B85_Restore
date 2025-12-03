@interface NESMAppPushSession
+ (BOOL)hasRequiredFrameworks;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (NESMAppPushSession)initWithConfiguration:(id)configuration andServer:(id)server;
- (id)copyExtendedStatus;
- (void)dealloc;
- (void)didExtensionExit:(id)exit;
- (void)didReceiveStatusChangeWithInterface:(int64_t)interface matchedPrivateLTENetwork:(id)network;
- (void)didReceiveUnmatchEthernet:(id)ethernet;
- (void)handleGetInfoMessage:(id)message withType:(int)type;
- (void)handleProviderInstallationStatus:(id)status status:(int64_t)a4;
- (void)handleProviderStopped:(id)stopped;
- (void)handleSendInfoMessage:(id)message withType:(int)type;
- (void)install;
- (void)installPended;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)plugin:(id)plugin didReceiveIncomingCallWithUserInfo:(id)info;
- (void)plugin:(id)plugin didReceiveProviderError:(id)error;
- (void)plugin:(id)plugin didReceiveProviderError:(id)error forMessageID:(id)d;
- (void)plugin:(id)plugin didReceivePushToTalkMessageWithUserInfo:(id)info;
- (void)plugin:(id)plugin didStartWithPID:(int)d error:(id)error;
- (void)pluginDidDispose:(id)dispose;
- (void)uninstall;
@end

@implementation NESMAppPushSession

- (void)didReceiveStatusChangeWithInterface:(int64_t)interface matchedPrivateLTENetwork:(id)network
{
  networkCopy = network;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      currentPLTEMatchStaus = self->_currentPLTEMatchStaus;
      objc_opt_self();
      if (currentPLTEMatchStaus > 2)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_1000E9940[currentPLTEMatchStaus];
      }
    }

    else
    {
      objc_opt_self();
      v9 = @"Invalid";
    }

    objc_opt_self();
    if (interface > 2)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1000E9940[interface];
    }

    v13 = 138412802;
    selfCopy = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ private LTE network match status changed from '%@' to '%@'", &v13, 0x20u);
  }

  if (interface == 2)
  {
    if (self && self->_currentPLTEMatchStaus == 1)
    {
      v12 = 0;
      self->_currentPLTEMatchStaus = 2;
      goto LABEL_18;
    }
  }

  else if (interface == 1 && self && self->_currentPLTEMatchStaus != 1)
  {
    self->_currentPLTEMatchStaus = 1;
    v12 = networkCopy;
LABEL_18:
    objc_setProperty_atomic(self, v11, v12, 416);
    sub_1000115D0(self);
  }
}

- (void)handleProviderInstallationStatus:(id)status status:(int64_t)a4
{
  v5 = @"uninstalled";
  if (a4 == 2)
  {
    v5 = @"installed";
  }

  v6 = a4 != 1 && a4 == 2;
  if (a4 == 1)
  {
    v7 = @"installing";
  }

  else
  {
    v7 = v5;
  }

  self->_providerInstalled = v6;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ provider software installation status changed to [%@]", &v9, 0x16u);
  }

  if (self->_providerInstalled && self->_isEligibleForRuntime && !self->_installed)
  {
    sub_100011D04(self, 1);
  }
}

- (void)handleProviderStopped:(id)stopped
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ provider stopped", &v6, 0xCu);
  }

  sub_100012544(self, v5);
}

- (void)didExtensionExit:(id)exit
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ provider exited", &v7, 0xCu);
  }

  sub_100011F48(self);
  sub_10001201C(self, v5);
  sub_100012544(self, v6);
}

- (void)didReceiveUnmatchEthernet:(id)ethernet
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ provider sent a request to stop for ethernet", &v9, 0xCu);
  }

  if (self && self->_isEligibleForRuntime && sub_100011CB4(self, v5))
  {
    configuration = [(NESMSession *)self configuration];
    appPush = [configuration appPush];
    matchEthernet = [appPush matchEthernet];

    if (matchEthernet)
    {
      sub_100011E44(self);
    }
  }
}

- (void)plugin:(id)plugin didReceivePushToTalkMessageWithUserInfo:(id)info
{
  pluginCopy = plugin;
  infoCopy = info;
  if (infoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ provider reported PushToTalk message", &v11, 0xCu);
    }

    v9 = infoCopy;
    if (self)
    {
      queue = [(NESMSession *)self queue];
      *&v11 = _NSConcreteStackBlock;
      *(&v11 + 1) = 3221225472;
      v12 = sub_1000129F4;
      v13 = &unk_1000EB198;
      selfCopy = self;
      v15 = v9;
      dispatch_async(queue, &v11);
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = self;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ provider reported PushToTalk message with invalid user info", &v11, 0xCu);
    }
  }
}

- (void)plugin:(id)plugin didReceiveIncomingCallWithUserInfo:(id)info
{
  pluginCopy = plugin;
  infoCopy = info;
  if (infoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ provider reported incoming call", &v11, 0xCu);
    }

    v9 = infoCopy;
    if (self)
    {
      queue = [(NESMSession *)self queue];
      *&v11 = _NSConcreteStackBlock;
      *(&v11 + 1) = 3221225472;
      v12 = sub_100012E5C;
      v13 = &unk_1000EB198;
      selfCopy = self;
      v15 = v9;
      dispatch_async(queue, &v11);
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = self;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ provider reported incoming call with invalid user info", &v11, 0xCu);
    }
  }
}

- (void)plugin:(id)plugin didReceiveProviderError:(id)error forMessageID:(id)d
{
  errorCopy = error;
  dCopy = d;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ provider ack'd message delivery for [%@]", buf, 0x16u);
  }

  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000132C0;
  block[3] = &unk_1000EABC8;
  block[4] = self;
  v14 = dCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = dCopy;
  dispatch_async(queue, block);
}

- (void)plugin:(id)plugin didReceiveProviderError:(id)error
{
  pluginCopy = plugin;
  errorCopy = error;
  if (!self->_active)
  {
    v8 = ne_log_obj();
    v9 = v8;
    if (errorCopy)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412546;
        selfCopy2 = self;
        v13 = 2112;
        v14 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ provider failed to start, error: %@", &v11, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ provider started, session is active now", &v11, 0xCu);
      }

      [(NESMAppPushSession *)self setActive:1];
      sub_1000135E4(self, v10);
    }
  }
}

- (void)pluginDidDispose:(id)dispose
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ provider disposed", buf, 0xCu);
  }

  [(NESMAppPushSession *)self setActive:0];
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013A2C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)plugin:(id)plugin didStartWithPID:(int)d error:(id)error
{
  errorCopy = error;
  v8 = errorCopy;
  if (!d || errorCopy)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      configuration = [(NESMSession *)self configuration];
      appPush = [configuration appPush];
      providerBundleIdentifier = [appPush providerBundleIdentifier];
      *v25 = 138412802;
      *&v25[4] = self;
      *&v25[12] = 2112;
      *&v25[14] = providerBundleIdentifier;
      *&v25[22] = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: failed to start provider %@. error: %@", v25, 0x20u);
    }

    if (v8)
    {
      domain = [v8 domain];
      if ([domain isEqualToString:@"NEAgentErrorDomain"])
      {
        code = [v8 code];

        if (code == 2)
        {
          if (!self)
          {
            goto LABEL_17;
          }

          if (self->_isEligibleForRuntime)
          {
            v23 = dispatch_time(0, 15000000000);
            queue = [(NESMSession *)self queue];
            *v25 = _NSConcreteStackBlock;
            *&v25[8] = 3221225472;
            *&v25[16] = sub_100013D18;
            v26 = &unk_1000EB1C0;
            selfCopy = self;
            dispatch_after(v23, queue, v25);

            goto LABEL_17;
          }
        }
      }

      else
      {
      }
    }

    sub_100011F48(self);
    goto LABEL_17;
  }

  configuration2 = [(NESMSession *)self configuration];
  appPush2 = [configuration2 appPush];
  providerConfiguration = [appPush2 providerConfiguration];

  if (self)
  {
    Property = objc_getProperty(self, v12, 392, 1);
    if (Property)
    {
      v14 = Property;
      v15 = providerConfiguration;
      remotePluginObject = [v14 remotePluginObject];
      [remotePluginObject startConnectionWithProviderConfig:v15];
    }
  }

LABEL_17:
}

- (void)handleSendInfoMessage:(id)message withType:(int)type
{
  messageCopy = message;
  v7 = messageCopy;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000145C0;
  v31 = sub_1000145D0;
  v32 = 0;
  if (type == 5)
  {
    v8 = xpc_dictionary_get_value(messageCopy, "SessionAppPushCallInfo");
    v9 = v8;
    if (v8 && xpc_get_type(v8) == &_xpc_type_dictionary)
    {
      v10 = _CFXPCCreateCFObjectFromXPCObject();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_1000145D8;
        v24 = &unk_1000E9900;
        v25 = v7;
        v26 = &v27;
        v11 = v10;
        v12 = &v21;
        if (self)
        {
          if (self->_active)
          {
            v13 = [(NESMSession *)self queue:v21];
            *&block = _NSConcreteStackBlock;
            *(&block + 1) = 3221225472;
            v36 = sub_100014748;
            v37 = &unk_1000EB2E8;
            selfCopy = self;
            v40 = v12;
            v39 = v11;
            dispatch_async(v13, &block);
          }

          else
          {
            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = self;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ cannot send outgoing call message for inactive  session", &block, 0xCu);
            }

            v20 = [NSError errorWithDomain:NEAppPushErrorDomain code:4 userInfo:0, v21, v22];
            v23(v12, v20);
          }
        }

        reply = v25;
      }

      else
      {
        reply = xpc_dictionary_create_reply(v7);
        v33 = @"AppPushSendCallInfoErrorCode";
        v34 = &off_1000EE300;
        v15 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v16 = v28[5];
        v28[5] = v15;

        if (v28[5])
        {
          v17 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "SessionAppPushSendMessageResult", v17);
        }

        v18 = xpc_dictionary_get_remote_connection(v7);
        xpc_connection_send_message(v18, reply);
      }
    }
  }

  _Block_object_dispose(&v27, 8);
}

- (void)handleGetInfoMessage:(id)message withType:(int)type
{
  xdict = message;
  reply = xpc_dictionary_create_reply(xdict);
  if (type == 2)
  {
    copyExtendedStatus = [(NESMAppPushSession *)self copyExtendedStatus];
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
  v8.receiver = self;
  v8.super_class = NESMAppPushSession;
  copyExtendedStatus = [(NESMSession *)&v8 copyExtendedStatus];
  v5 = [v3 initWithDictionary:copyExtendedStatus];

  v6 = [NSNumber numberWithBool:[(NESMAppPushSession *)self active]];
  [v5 setObject:v6 forKeyedSubscript:@"IsAppPushActive"];

  return v5;
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v82.receiver = self;
    v82.super_class = NESMAppPushSession;
    if ([(NESMSession *)&v82 handleUpdateConfiguration:configurationCopy])
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ configuration changed", buf, 0xCu);
      }

      configuration = [(NESMSession *)self configuration];
      appPush = [configuration appPush];
      isEnabled = [appPush isEnabled];

      v9 = ne_log_obj();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if ((isEnabled & 1) == 0)
      {
        if (v10)
        {
          *buf = 138412290;
          selfCopy7 = self;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ configuration is disabled", buf, 0xCu);
        }

        sub_1000152D8(self, v29);
        sub_1000153AC(self);
        sub_100011E44(self);
        goto LABEL_73;
      }

      if (v10)
      {
        *buf = 138412290;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ configuration is enabled", buf, 0xCu);
      }

      sub_10001540C(self);
      configuration2 = [(NESMSession *)self configuration];
      appPush2 = [configuration2 appPush];
      providerConfiguration = [appPush2 providerConfiguration];

      if (!self)
      {
LABEL_72:
        sub_1000115D0(self);

LABEL_73:
        v28 = 1;
        goto LABEL_74;
      }

      Property = objc_getProperty(self, v14, 392, 1);
      if (Property)
      {
        v16 = Property;
        v17 = providerConfiguration;
        remotePluginObject = [v16 remotePluginObject];
        [remotePluginObject setProviderConfiguration:v17];
      }

      configuration3 = [(NESMSession *)self configuration];
      appPush3 = [configuration3 appPush];
      matchPrivateLTENetworks = [appPush3 matchPrivateLTENetworks];

      if (objc_getProperty(self, v22, 368, 1) && (v24 = objc_getProperty(self, v23, 368, 1)) != 0)
      {
        v25 = v24[4];
      }

      else
      {
        v25 = 0;
      }

      if (!(v25 | matchPrivateLTENetworks))
      {
LABEL_23:

        goto LABEL_72;
      }

      if (v25)
      {
        if (matchPrivateLTENetworks)
        {
          goto LABEL_30;
        }

        v30 = v25;
      }

      else
      {
        if (!matchPrivateLTENetworks)
        {
          goto LABEL_23;
        }

        v30 = matchPrivateLTENetworks;
      }

      if (![v30 count])
      {
        goto LABEL_23;
      }

LABEL_30:
      v76 = configurationCopy;
      v77 = matchPrivateLTENetworks;
      v74 = providerConfiguration;
      selfCopy4 = self;
      v31 = objc_alloc_init(NSMutableSet);
      v32 = objc_alloc_init(NSMutableSet);
      v33 = objc_alloc_init(NSMutableSet);
      v34 = objc_alloc_init(NSMutableSet);
      v81 = objc_alloc_init(NSMutableSet);
      v80 = objc_alloc_init(NSMutableSet);
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = v25;
      v35 = [obj countByEnumeratingWithState:&v87 objects:buf count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v88;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v88 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v87 + 1) + 8 * i);
            mobileCountryCode = [v39 mobileCountryCode];
            [v31 addObject:mobileCountryCode];

            mobileNetworkCode = [v39 mobileNetworkCode];
            [v33 addObject:mobileNetworkCode];

            trackingAreaCode = [v39 trackingAreaCode];
            v43 = [trackingAreaCode length];

            if (v43)
            {
              trackingAreaCode2 = [v39 trackingAreaCode];
              [v81 addObject:trackingAreaCode2];
            }
          }

          v36 = [obj countByEnumeratingWithState:&v87 objects:buf count:16];
        }

        while (v36);
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v78 = v77;
      v45 = [v78 countByEnumeratingWithState:&v83 objects:v93 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v84;
        do
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v84 != v47)
            {
              objc_enumerationMutation(v78);
            }

            v49 = *(*(&v83 + 1) + 8 * j);
            mobileCountryCode2 = [v49 mobileCountryCode];
            [v32 addObject:mobileCountryCode2];

            mobileNetworkCode2 = [v49 mobileNetworkCode];
            [v34 addObject:mobileNetworkCode2];

            trackingAreaCode3 = [v49 trackingAreaCode];
            v53 = [trackingAreaCode3 length];

            if (v53)
            {
              trackingAreaCode4 = [v49 trackingAreaCode];
              [v80 addObject:trackingAreaCode4];
            }
          }

          v46 = [v78 countByEnumeratingWithState:&v83 objects:v93 count:16];
        }

        while (v46);
      }

      if ([v31 isEqualToSet:v32])
      {
        self = selfCopy4;
        configurationCopy = v76;
        if ([v33 isEqualToSet:v34])
        {
          if ([v81 isEqualToSet:v80])
          {
            v55 = 0;
            goto LABEL_60;
          }

          v56 = ne_log_obj();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *v91 = 138412290;
            v92 = selfCopy4;
            v57 = "%@ currentTACs don't match with newTACs";
            goto LABEL_58;
          }

LABEL_59:

          v55 = 1;
LABEL_60:

          providerConfiguration = v74;
          if (v55)
          {
            v58 = ne_log_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy7 = self;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@ private LTE network configuration changed", buf, 0xCu);
            }

            configuration4 = [(NESMSession *)self configuration];
            appPush4 = [configuration4 appPush];
            matchPrivateLTENetworks2 = [appPush4 matchPrivateLTENetworks];

            if (matchPrivateLTENetworks2)
            {
              if (objc_getProperty(self, v62, 368, 1))
              {
                v64 = objc_getProperty(self, v63, 368, 1);
                configuration5 = [(NESMSession *)self configuration];
                appPush5 = [configuration5 appPush];
                matchPrivateLTENetworks3 = [appPush5 matchPrivateLTENetworks];
                v68 = matchPrivateLTENetworks3;
                if (v64)
                {
                  objc_storeStrong(v64 + 4, matchPrivateLTENetworks3);
                }

                v70 = objc_getProperty(self, v69, 368, 1);
                sub_1000AEA70(v70);
              }

              else
              {
                sub_100015504(self, v63);
              }
            }

            else
            {
              v71 = ne_log_obj();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                selfCopy7 = self;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%@ private LTE networks are no longer configured, stopping the monitor", buf, 0xCu);
              }

              sub_1000152D8(self, v72);
            }
          }

          goto LABEL_72;
        }

        v56 = ne_log_obj();
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          goto LABEL_59;
        }

        *v91 = 138412290;
        v92 = selfCopy4;
        v57 = "%@ currentMNCs don't match with newMNCs";
      }

      else
      {
        v56 = ne_log_obj();
        self = selfCopy4;
        configurationCopy = v76;
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          goto LABEL_59;
        }

        *v91 = 138412290;
        v92 = selfCopy4;
        v57 = "%@ currentMCCs don't match with newMCCs";
      }

LABEL_58:
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, v57, v91, 0xCu);
      goto LABEL_59;
    }
  }

  else
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy7 = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ configuration is removed/app uninstalled", buf, 0xCu);
    }

    sub_1000152D8(self, v27);
    sub_1000153AC(self);
    sub_100011E44(self);
  }

  v28 = 0;
LABEL_74:

  return v28;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (objectCopy == self && [path isEqualToString:@"active"])
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      active = [(NESMAppPushSession *)self active];
      v11 = @"inactive";
      if (active)
      {
        v11 = @"active";
      }

      v12 = 138412546;
      v13 = objectCopy;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ session became %@", &v12, 0x16u);
    }

    [(NESMSession *)self notifyChangedExtendedStatus];
  }
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ deallocating session", buf, 0xCu);
  }

  if (self)
  {
    [objc_getProperty(self v4];
    sub_10001201C(self, v5);
    sub_1000120FC(self, v6);
    sub_100012248(self);
  }

  else
  {
    [0 removeAllObjects];
  }

  v7.receiver = self;
  v7.super_class = NESMAppPushSession;
  [(NESMSession *)&v7 dealloc];
}

- (void)uninstall
{
  if (self)
  {
    self->_installed = 0;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: received uninstall", &v4, 0xCu);
  }
}

- (void)installPended
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: received install pending", buf, 0xCu);
  }

  v4 = dispatch_time(0, 2000000000);
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015FF8;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_after(v4, queue, block);
}

- (void)install
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: received install", &v4, 0xCu);
  }

  if (self)
  {
    self->_installed = 1;
    sub_100013DE0(self);
  }
}

- (NESMAppPushSession)initWithConfiguration:(id)configuration andServer:(id)server
{
  v14.receiver = self;
  v14.super_class = NESMAppPushSession;
  v4 = [(NESMSession *)&v14 initWithConfiguration:configuration andServer:server];
  v6 = v4;
  if (v4)
  {
    objc_setProperty_atomic(v4, v5, 0, 392);
    [(NESMAppPushSession *)v6 setActive:0];
    v6->_installed = 0;
    objc_setProperty_atomic(v6, v7, 0, 360);
    objc_setProperty_atomic(v6, v8, 0, 424);
    v9 = +[NSMutableDictionary dictionary];
    objc_setProperty_atomic(v6, v10, v9, 400);

    v6->_currentPLTEMatchStaus = 0;
    queue = [(NESMSession *)v6 queue];
    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 3221225472;
    v16 = sub_100016380;
    v17 = &unk_1000EB1C0;
    v18 = v6;
    dispatch_async(queue, &block);

    v6->_providerInstalled = 1;
    [(NESMAppPushSession *)v6 addObserver:v6 forKeyPath:@"active" options:5 context:0];
  }

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(block) = 138412290;
    *(&block + 4) = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ initialized app push provider session", &block, 0xCu);
  }

  return v6;
}

+ (BOOL)hasRequiredFrameworks
{
  v2 = objc_opt_class();
  if (v2)
  {
    v2 = objc_opt_class();
    if (v2)
    {
      v2 = objc_opt_class();
      if (v2)
      {
        LOBYTE(v2) = objc_opt_class() != 0;
      }
    }
  }

  return v2;
}

@end
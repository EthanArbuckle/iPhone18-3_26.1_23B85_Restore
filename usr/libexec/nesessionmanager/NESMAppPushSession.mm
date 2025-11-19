@interface NESMAppPushSession
+ (BOOL)hasRequiredFrameworks;
- (BOOL)handleUpdateConfiguration:(id)a3;
- (NESMAppPushSession)initWithConfiguration:(id)a3 andServer:(id)a4;
- (id)copyExtendedStatus;
- (void)dealloc;
- (void)didExtensionExit:(id)a3;
- (void)didReceiveStatusChangeWithInterface:(int64_t)a3 matchedPrivateLTENetwork:(id)a4;
- (void)didReceiveUnmatchEthernet:(id)a3;
- (void)handleGetInfoMessage:(id)a3 withType:(int)a4;
- (void)handleProviderInstallationStatus:(id)a3 status:(int64_t)a4;
- (void)handleProviderStopped:(id)a3;
- (void)handleSendInfoMessage:(id)a3 withType:(int)a4;
- (void)install;
- (void)installPended;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)plugin:(id)a3 didReceiveIncomingCallWithUserInfo:(id)a4;
- (void)plugin:(id)a3 didReceiveProviderError:(id)a4;
- (void)plugin:(id)a3 didReceiveProviderError:(id)a4 forMessageID:(id)a5;
- (void)plugin:(id)a3 didReceivePushToTalkMessageWithUserInfo:(id)a4;
- (void)plugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5;
- (void)pluginDidDispose:(id)a3;
- (void)uninstall;
@end

@implementation NESMAppPushSession

- (void)didReceiveStatusChangeWithInterface:(int64_t)a3 matchedPrivateLTENetwork:(id)a4
{
  v6 = a4;
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
    if (a3 > 2)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1000E9940[a3];
    }

    v13 = 138412802;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ private LTE network match status changed from '%@' to '%@'", &v13, 0x20u);
  }

  if (a3 == 2)
  {
    if (self && self->_currentPLTEMatchStaus == 1)
    {
      v12 = 0;
      self->_currentPLTEMatchStaus = 2;
      goto LABEL_18;
    }
  }

  else if (a3 == 1 && self && self->_currentPLTEMatchStaus != 1)
  {
    self->_currentPLTEMatchStaus = 1;
    v12 = v6;
LABEL_18:
    objc_setProperty_atomic(self, v11, v12, 416);
    sub_1000115D0(self);
  }
}

- (void)handleProviderInstallationStatus:(id)a3 status:(int64_t)a4
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
    v10 = self;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ provider software installation status changed to [%@]", &v9, 0x16u);
  }

  if (self->_providerInstalled && self->_isEligibleForRuntime && !self->_installed)
  {
    sub_100011D04(self, 1);
  }
}

- (void)handleProviderStopped:(id)a3
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ provider stopped", &v6, 0xCu);
  }

  sub_100012544(self, v5);
}

- (void)didExtensionExit:(id)a3
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ provider exited", &v7, 0xCu);
  }

  sub_100011F48(self);
  sub_10001201C(self, v5);
  sub_100012544(self, v6);
}

- (void)didReceiveUnmatchEthernet:(id)a3
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ provider sent a request to stop for ethernet", &v9, 0xCu);
  }

  if (self && self->_isEligibleForRuntime && sub_100011CB4(self, v5))
  {
    v6 = [(NESMSession *)self configuration];
    v7 = [v6 appPush];
    v8 = [v7 matchEthernet];

    if (v8)
    {
      sub_100011E44(self);
    }
  }
}

- (void)plugin:(id)a3 didReceivePushToTalkMessageWithUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ provider reported PushToTalk message", &v11, 0xCu);
    }

    v9 = v7;
    if (self)
    {
      v10 = [(NESMSession *)self queue];
      *&v11 = _NSConcreteStackBlock;
      *(&v11 + 1) = 3221225472;
      v12 = sub_1000129F4;
      v13 = &unk_1000EB198;
      v14 = self;
      v15 = v9;
      dispatch_async(v10, &v11);
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

- (void)plugin:(id)a3 didReceiveIncomingCallWithUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ provider reported incoming call", &v11, 0xCu);
    }

    v9 = v7;
    if (self)
    {
      v10 = [(NESMSession *)self queue];
      *&v11 = _NSConcreteStackBlock;
      *(&v11 + 1) = 3221225472;
      v12 = sub_100012E5C;
      v13 = &unk_1000EB198;
      v14 = self;
      v15 = v9;
      dispatch_async(v10, &v11);
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

- (void)plugin:(id)a3 didReceiveProviderError:(id)a4 forMessageID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ provider ack'd message delivery for [%@]", buf, 0x16u);
  }

  v10 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000132C0;
  block[3] = &unk_1000EABC8;
  block[4] = self;
  v14 = v8;
  v15 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(v10, block);
}

- (void)plugin:(id)a3 didReceiveProviderError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_active)
  {
    v8 = ne_log_obj();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v7;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ provider failed to start, error: %@", &v11, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ provider started, session is active now", &v11, 0xCu);
      }

      [(NESMAppPushSession *)self setActive:1];
      sub_1000135E4(self, v10);
    }
  }
}

- (void)pluginDidDispose:(id)a3
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ provider disposed", buf, 0xCu);
  }

  [(NESMAppPushSession *)self setActive:0];
  v5 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013A2C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)plugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a4 || v7)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(NESMSession *)self configuration];
      v19 = [v18 appPush];
      v20 = [v19 providerBundleIdentifier];
      *v25 = 138412802;
      *&v25[4] = self;
      *&v25[12] = 2112;
      *&v25[14] = v20;
      *&v25[22] = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: failed to start provider %@. error: %@", v25, 0x20u);
    }

    if (v8)
    {
      v21 = [v8 domain];
      if ([v21 isEqualToString:@"NEAgentErrorDomain"])
      {
        v22 = [v8 code];

        if (v22 == 2)
        {
          if (!self)
          {
            goto LABEL_17;
          }

          if (self->_isEligibleForRuntime)
          {
            v23 = dispatch_time(0, 15000000000);
            v24 = [(NESMSession *)self queue];
            *v25 = _NSConcreteStackBlock;
            *&v25[8] = 3221225472;
            *&v25[16] = sub_100013D18;
            v26 = &unk_1000EB1C0;
            v27 = self;
            dispatch_after(v23, v24, v25);

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

  v9 = [(NESMSession *)self configuration];
  v10 = [v9 appPush];
  v11 = [v10 providerConfiguration];

  if (self)
  {
    Property = objc_getProperty(self, v12, 392, 1);
    if (Property)
    {
      v14 = Property;
      v15 = v11;
      v16 = [v14 remotePluginObject];
      [v16 startConnectionWithProviderConfig:v15];
    }
  }

LABEL_17:
}

- (void)handleSendInfoMessage:(id)a3 withType:(int)a4
{
  v6 = a3;
  v7 = v6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000145C0;
  v31 = sub_1000145D0;
  v32 = 0;
  if (a4 == 5)
  {
    v8 = xpc_dictionary_get_value(v6, "SessionAppPushCallInfo");
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
            v38 = self;
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

- (void)handleGetInfoMessage:(id)a3 withType:(int)a4
{
  xdict = a3;
  reply = xpc_dictionary_create_reply(xdict);
  if (a4 == 2)
  {
    v7 = [(NESMAppPushSession *)self copyExtendedStatus];
    if (v7)
    {
      v8 = v7;
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
  v4 = [(NESMSession *)&v8 copyExtendedStatus];
  v5 = [v3 initWithDictionary:v4];

  v6 = [NSNumber numberWithBool:[(NESMAppPushSession *)self active]];
  [v5 setObject:v6 forKeyedSubscript:@"IsAppPushActive"];

  return v5;
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v82.receiver = self;
    v82.super_class = NESMAppPushSession;
    if ([(NESMSession *)&v82 handleUpdateConfiguration:v4])
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v95 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ configuration changed", buf, 0xCu);
      }

      v6 = [(NESMSession *)self configuration];
      v7 = [v6 appPush];
      v8 = [v7 isEnabled];

      v9 = ne_log_obj();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if ((v8 & 1) == 0)
      {
        if (v10)
        {
          *buf = 138412290;
          v95 = self;
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
        v95 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ configuration is enabled", buf, 0xCu);
      }

      sub_10001540C(self);
      v11 = [(NESMSession *)self configuration];
      v12 = [v11 appPush];
      v13 = [v12 providerConfiguration];

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
        v17 = v13;
        v18 = [v16 remotePluginObject];
        [v18 setProviderConfiguration:v17];
      }

      v19 = [(NESMSession *)self configuration];
      v20 = [v19 appPush];
      v21 = [v20 matchPrivateLTENetworks];

      if (objc_getProperty(self, v22, 368, 1) && (v24 = objc_getProperty(self, v23, 368, 1)) != 0)
      {
        v25 = v24[4];
      }

      else
      {
        v25 = 0;
      }

      if (!(v25 | v21))
      {
LABEL_23:

        goto LABEL_72;
      }

      if (v25)
      {
        if (v21)
        {
          goto LABEL_30;
        }

        v30 = v25;
      }

      else
      {
        if (!v21)
        {
          goto LABEL_23;
        }

        v30 = v21;
      }

      if (![v30 count])
      {
        goto LABEL_23;
      }

LABEL_30:
      v76 = v4;
      v77 = v21;
      v74 = v13;
      v75 = self;
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
            v40 = [v39 mobileCountryCode];
            [v31 addObject:v40];

            v41 = [v39 mobileNetworkCode];
            [v33 addObject:v41];

            v42 = [v39 trackingAreaCode];
            v43 = [v42 length];

            if (v43)
            {
              v44 = [v39 trackingAreaCode];
              [v81 addObject:v44];
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
            v50 = [v49 mobileCountryCode];
            [v32 addObject:v50];

            v51 = [v49 mobileNetworkCode];
            [v34 addObject:v51];

            v52 = [v49 trackingAreaCode];
            v53 = [v52 length];

            if (v53)
            {
              v54 = [v49 trackingAreaCode];
              [v80 addObject:v54];
            }
          }

          v46 = [v78 countByEnumeratingWithState:&v83 objects:v93 count:16];
        }

        while (v46);
      }

      if ([v31 isEqualToSet:v32])
      {
        self = v75;
        v4 = v76;
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
            v92 = v75;
            v57 = "%@ currentTACs don't match with newTACs";
            goto LABEL_58;
          }

LABEL_59:

          v55 = 1;
LABEL_60:

          v13 = v74;
          if (v55)
          {
            v58 = ne_log_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v95 = self;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@ private LTE network configuration changed", buf, 0xCu);
            }

            v59 = [(NESMSession *)self configuration];
            v60 = [v59 appPush];
            v61 = [v60 matchPrivateLTENetworks];

            if (v61)
            {
              if (objc_getProperty(self, v62, 368, 1))
              {
                v64 = objc_getProperty(self, v63, 368, 1);
                v65 = [(NESMSession *)self configuration];
                v66 = [v65 appPush];
                v67 = [v66 matchPrivateLTENetworks];
                v68 = v67;
                if (v64)
                {
                  objc_storeStrong(v64 + 4, v67);
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
                v95 = self;
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
        v92 = v75;
        v57 = "%@ currentMNCs don't match with newMNCs";
      }

      else
      {
        v56 = ne_log_obj();
        self = v75;
        v4 = v76;
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          goto LABEL_59;
        }

        *v91 = 138412290;
        v92 = v75;
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
      v95 = self;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if (v8 == self && [a3 isEqualToString:@"active"])
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(NESMAppPushSession *)self active];
      v11 = @"inactive";
      if (v10)
      {
        v11 = @"active";
      }

      v12 = 138412546;
      v13 = v8;
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
    v9 = self;
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
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: received uninstall", &v4, 0xCu);
  }
}

- (void)installPended
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: received install pending", buf, 0xCu);
  }

  v4 = dispatch_time(0, 2000000000);
  v5 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015FF8;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)install
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: received install", &v4, 0xCu);
  }

  if (self)
  {
    self->_installed = 1;
    sub_100013DE0(self);
  }
}

- (NESMAppPushSession)initWithConfiguration:(id)a3 andServer:(id)a4
{
  v14.receiver = self;
  v14.super_class = NESMAppPushSession;
  v4 = [(NESMSession *)&v14 initWithConfiguration:a3 andServer:a4];
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
    v11 = [(NESMSession *)v6 queue];
    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 3221225472;
    v16 = sub_100016380;
    v17 = &unk_1000EB1C0;
    v18 = v6;
    dispatch_async(v11, &block);

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
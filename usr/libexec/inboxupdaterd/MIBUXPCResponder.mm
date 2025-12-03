@interface MIBUXPCResponder
- (NSXPCConnection)xpcConnection;
- (id)_verifyBooleanEntitlement:(id)entitlement;
- (void)connectToWiFiWithReply:(id)reply;
- (void)eapConfigurationWithReply:(id)reply;
- (void)isInBoxUpdateModeWithReply:(id)reply;
- (void)isInDiagnosticModeWithReply:(id)reply;
- (void)isLPMSetWithReply:(id)reply;
- (void)setToLPMWithOptions:(id)options reply:(id)reply;
- (void)shutdownWithReply:(id)reply;
- (void)stopWiFiMonitorWithReply:(id)reply;
- (void)terminateInBoxUpdateWithReply:(id)reply;
@end

@implementation MIBUXPCResponder

- (void)isInBoxUpdateModeWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000599EC();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling isInBoxUpdateMode: xpc call", v6, 2u);
  }

  v5 = +[MIBUDeviceController sharedInstance];
  replyCopy[2](replyCopy, [v5 isInBoxUpdateMode], 0);
}

- (void)isInDiagnosticModeWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1000B84A8[0] != -1)
  {
    sub_100059A00();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling isInDiagnosticMode: xpc call", v6, 2u);
  }

  v5 = +[MIBUDeviceController sharedInstance];
  replyCopy[2](replyCopy, [v5 isInDiagnosticMode], 0);
}

- (void)eapConfigurationWithReply:(id)reply
{
  replyCopy = reply;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10001E834;
  v33 = sub_10001E844;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10001E834;
  v27 = sub_10001E844;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10001E834;
  v21 = sub_10001E844;
  v22 = 0;
  if (qword_1000B84A8[0] != -1)
  {
    sub_100059A14();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling eapConfigurationWithCompletion: xpc call", buf, 2u);
  }

  v6 = [(MIBUXPCResponder *)self _verifyBooleanEntitlement:@"com.apple.private.mobileinboxupdater.eapCredentialEnabled"];
  v7 = v18[5];
  v18[5] = v6;

  if (v18[5])
  {
    goto LABEL_13;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001E8B4;
  v16[3] = &unk_10009B4E8;
  v16[4] = &v17;
  v16[5] = &v29;
  v16[6] = &v23;
  [MIBUCertHelper readSUIdentityWithCompletion:v16];
  if (!os_variant_has_internal_content())
  {
    goto LABEL_13;
  }

  v8 = +[MIBUTestPreferences sharedInstance];
  factorySUKeyPath = [v8 factorySUKeyPath];

  if (!factorySUKeyPath)
  {
    goto LABEL_13;
  }

  v10 = +[MIBUTestPreferences sharedInstance];
  factorySUKeyIsSEP = [v10 factorySUKeyIsSEP];

  if (factorySUKeyIsSEP)
  {
    v12 = +[MIBUTestPreferences sharedInstance];
    factorySUKeyIsSEP2 = [v12 factorySUKeyIsSEP];
    bOOLValue = [factorySUKeyIsSEP2 BOOLValue];

    if (qword_1000B84A8[0] != -1)
    {
      sub_100059A3C();
    }

    v15 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v36 = bOOLValue;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Overriding isSEPKey=%d", buf, 8u);
    }
  }

  else
  {
LABEL_13:
    bOOLValue = 1;
  }

  replyCopy[2](replyCopy, v30[5], v24[5], bOOLValue, v18[5]);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

- (void)connectToWiFiWithReply:(id)reply
{
  replyCopy = reply;
  if (os_variant_has_internal_content())
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100059A78();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling connectToWiFi: xpc call", buf, 2u);
    }

    v5 = +[MIBUWiFiHelper sharedInstance];
    v8 = 0;
    [v5 connectAndMonitor:&v8];
    v6 = v8;
    replyCopy[2](replyCopy, v6);

    replyCopy = v6;
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100059A64();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[MIBUXPCResponder connectToWiFiWithReply:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s is only supported on internal builds", buf, 0xCu);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)stopWiFiMonitorWithReply:(id)reply
{
  replyCopy = reply;
  if (os_variant_has_internal_content())
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100059AA0();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling stopWiFiMonitor: xpc call", &v7, 2u);
    }

    v5 = +[MIBUWiFiHelper sharedInstance];
    [v5 stopMonitor];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100059A8C();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[MIBUXPCResponder stopWiFiMonitorWithReply:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s is only supported on internal builds", &v7, 0xCu);
    }
  }

  replyCopy[2](replyCopy, 0);
}

- (void)setToLPMWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (qword_1000B84A8[0] != -1)
  {
    sub_100059AB4();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling setLPMWithPaylod: xpc call", buf, 2u);
  }

  v8 = +[MIBUDeviceController sharedInstance];
  v10 = 0;
  [v8 setToLPMWithOptions:optionsCopy error:&v10];
  v9 = v10;
  replyCopy[2](replyCopy, v9);
}

- (void)isLPMSetWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1000B84A8[0] != -1)
  {
    sub_100059AC8();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling isLPMSetWithReply: xpc call", buf, 2u);
  }

  v5 = +[MIBUDeviceController sharedInstance];
  v8 = 0;
  v6 = [v5 isLPMSet:&v8];
  v7 = v8;
  replyCopy[2](replyCopy, v6, v7);
}

- (void)shutdownWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1000B84A8[0] != -1)
  {
    sub_100059ADC();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling shutdownWithReply: xpc call", v6, 2u);
  }

  v5 = +[MIBUDeviceController sharedInstance];
  [v5 shutdown];
  replyCopy[2](replyCopy, 0);
}

- (id)_verifyBooleanEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  xpcConnection = [(MIBUXPCResponder *)self xpcConnection];
  v6 = xpcConnection;
  if (xpcConnection)
  {
    v7 = [xpcConnection valueForEntitlement:entitlementCopy];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v7 BOOLValue])
        {
          v8 = 0;
          goto LABEL_6;
        }

        v10 = &v11;
        sub_100059C10(entitlementCopy, &v11);
      }

      else
      {
        v10 = &v12;
        sub_100059AF0(entitlementCopy, &v12);
      }
    }

    else
    {
      v10 = &v13;
      sub_100059CFC(entitlementCopy, &v13);
    }
  }

  else
  {
    v10 = &v14;
    sub_100059DE8(&v14);
    v7 = 0;
  }

  v8 = *v10;
LABEL_6:

  return v8;
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)terminateInBoxUpdateWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B7C8);
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling terminateInBoxUpdateWithCompletion: xpc call", buf, 2u);
  }

  v6 = [(MIBUXPCResponder *)self _verifyBooleanEntitlement:@"com.apple.private.mobileinboxupdater.terminationEnabled"];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v7 = +[MIBUMainController sharedInstance];
    v9 = 0;
    [v7 forceTerminate:&v9];
    v8 = v9;
  }

  replyCopy[2](replyCopy, v8);
}

@end
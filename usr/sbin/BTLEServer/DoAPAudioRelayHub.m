@interface DoAPAudioRelayHub
+ (BOOL)applicationIDIsSiri:(const char *)a3;
+ (id)instance;
- (BOOL)isXpcConnectedForDeviceType:(int64_t)a3;
- (DoAPAudioRelayHub)init;
- (id)relayForIdentifier:(id)a3;
- (void)handleCheckInMsg:(id)a3 applicationID:(const char *)a4;
- (void)handleConnection:(id)a3;
- (void)handleConnectionEvent:(id)a3;
- (void)handleDisconnection:(id)a3;
- (void)handleMsg:(id)a3;
- (void)handleServerEvent:(id)a3;
- (void)handleStartStreamMsg:(id)a3;
- (void)handleStopStreamMsg:(id)a3;
- (void)removeDoAPAudioRelayObject:(id)a3;
- (void)sendMsgIfCheckedIn:(id)a3 args:(id)a4 forClient:(int64_t)a5;
@end

@implementation DoAPAudioRelayHub

- (DoAPAudioRelayHub)init
{
  v15.receiver = self;
  v15.super_class = DoAPAudioRelayHub;
  v2 = [(DoAPAudioRelayHub *)&v15 init];
  if (v2)
  {
    os_unfair_lock_lock(&unk_1000DDAB0);
    siriXpcConnection = v2->_siriXpcConnection;
    v2->_siriXpcConnection = 0;

    soundSensorXpcConnection = v2->_soundSensorXpcConnection;
    v2->_soundSensorXpcConnection = 0;

    v5 = +[NSHashTable weakObjectsHashTable];
    doapAudioRelays = v2->_doapAudioRelays;
    v2->_doapAudioRelays = v5;

    mach_service = xpc_connection_create_mach_service("com.apple.BTLEAudioController.xpc", &_dispatch_main_q, 1uLL);
    xpcServer = v2->_xpcServer;
    v2->_xpcServer = mach_service;

    v9 = [(DoAPAudioRelayHub *)v2 xpcServer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002F0D0;
    handler[3] = &unk_1000BDAE0;
    v10 = v2;
    v14 = v10;
    xpc_connection_set_event_handler(v9, handler);

    v11 = [(DoAPAudioRelayHub *)v10 xpcServer];
    xpc_connection_resume(v11);

    os_unfair_lock_unlock(&unk_1000DDAB0);
  }

  return v2;
}

+ (id)instance
{
  if (qword_1000DDAC0 != -1)
  {
    sub_100074A04();
  }

  v3 = qword_1000DDAB8;

  return v3;
}

- (BOOL)isXpcConnectedForDeviceType:(int64_t)a3
{
  if ((a3 - 1) <= 2)
  {
    v4 = [(DoAPAudioRelayHub *)self siriXpcConnection];
LABEL_6:
    v7 = v4 != 0;

    return v7;
  }

  v6 = _os_feature_enabled_impl();
  v7 = 0;
  if (a3 == 4 && v6)
  {
    v4 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
    goto LABEL_6;
  }

  return v7;
}

- (void)handleServerEvent:(id)a3
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_connection)
  {
    [(DoAPAudioRelayHub *)self handleConnection:v4];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100074A18();
  }
}

- (void)handleConnection:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub XPC connection: %p", buf, 0xCu);
  }

  *buf = 0u;
  v24 = 0u;
  xpc_connection_get_audit_token();
  v6 = xpc_copy_entitlement_for_token();
  v7 = v6;
  if (!v6)
  {
    string = 0;
    goto LABEL_10;
  }

  if (xpc_dictionary_get_BOOL(v6, "com.apple.bluetooth.doap"))
  {
    string = xpc_dictionary_get_string(v7, "application-identifier");
    if (_os_feature_enabled_impl() && !string)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074ABC();
      }

      goto LABEL_21;
    }

LABEL_10:
    os_unfair_lock_lock(&unk_1000DDAB0);
    if (_os_feature_enabled_impl() && ![DoAPAudioRelayHub applicationIDIsSiri:string])
    {
      if (!_os_feature_enabled_impl() || ![DoAPAudioRelayHub applicationIDIsSoundSensor:string])
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100074AF0();
        }

        goto LABEL_18;
      }

      v16 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];

      if (v16)
      {
        v17 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100074B60(v17, self);
        }

        v18 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
        xpc_connection_set_event_handler(v18, &stru_1000BDBD8);

        v19 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
        xpc_connection_cancel(v19);
      }

      [(DoAPAudioRelayHub *)self setSoundSensorXpcConnection:v4];
      v20 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002F8D4;
      v21[3] = &unk_1000BDAE0;
      v21[4] = self;
      xpc_connection_set_event_handler(v20, v21);

      v14 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
    }

    else
    {
      v9 = [(DoAPAudioRelayHub *)self siriXpcConnection];

      if (v9)
      {
        v10 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100074BF4(v10, self);
        }

        v11 = [(DoAPAudioRelayHub *)self siriXpcConnection];
        xpc_connection_set_event_handler(v11, &stru_1000BDBB8);

        v12 = [(DoAPAudioRelayHub *)self siriXpcConnection];
        xpc_connection_cancel(v12);
      }

      [(DoAPAudioRelayHub *)self setSiriXpcConnection:v4];
      v13 = [(DoAPAudioRelayHub *)self siriXpcConnection];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10002F860;
      handler[3] = &unk_1000BDAE0;
      handler[4] = self;
      xpc_connection_set_event_handler(v13, handler);

      v14 = [(DoAPAudioRelayHub *)self siriXpcConnection];
    }

    v15 = v14;
    xpc_connection_resume(v14);

LABEL_18:
    os_unfair_lock_unlock(&unk_1000DDAB0);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100074A88();
  }

LABEL_21:
}

- (void)handleDisconnection:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(DoAPAudioRelayHub *)self siriXpcConnection];
    v8 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
    *buf = 134218240;
    v33 = v7;
    v34 = 2048;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub XPC disconnection - siri: %p, soundSensor: %p", buf, 0x16u);
  }

  os_unfair_lock_lock(&unk_1000DDAB0);
  v9 = [(DoAPAudioRelayHub *)self siriXpcConnection];

  if (v9)
  {
    [(DoAPAudioRelayHub *)self setSiriXpcConnection:0];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [(DoAPAudioRelayHub *)self doapAudioRelays];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 deviceType] - 1 <= 2)
          {
            [v15 handleResetStream];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

LABEL_13:

    goto LABEL_26;
  }

  if (_os_feature_enabled_impl())
  {
    v16 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];

    if (v16)
    {
      [(DoAPAudioRelayHub *)self setSoundSensorXpcConnection:0];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [(DoAPAudioRelayHub *)self doapAudioRelays];
      v17 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v10);
            }

            v21 = *(*(&v22 + 1) + 8 * j);
            if ([v21 deviceType] == 4)
            {
              [v21 handleResetStream];
            }
          }

          v18 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v18);
      }

      goto LABEL_13;
    }
  }

LABEL_26:
  os_unfair_lock_unlock(&unk_1000DDAB0);
}

- (void)handleConnectionEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_dictionary)
  {
    [(DoAPAudioRelayHub *)self handleMsg:v4];
  }

  else if (type == &_xpc_type_error)
  {
    if (v4 == &_xpc_error_connection_invalid)
    {
      [(DoAPAudioRelayHub *)self handleDisconnection:&_xpc_error_connection_invalid];
    }

    else if (v4 == &_xpc_error_connection_interrupted)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074DD0();
      }
    }

    else if (v4 == &_xpc_error_termination_imminent)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074D9C();
      }
    }

    else
    {
      v6 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
      if (v4 == &_xpc_error_peer_code_signing_requirement)
      {
        if (v6)
        {
          sub_100074D68();
        }
      }

      else if (v6)
      {
        sub_100074CF8();
      }
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100074C88();
  }
}

- (void)handleMsg:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_remote_connection(v4);
  string = xpc_dictionary_get_string(v4, "kMsgId");
  v7 = xpc_dictionary_get_value(v4, "kMsgArgs");
  xpc_connection_get_audit_token();
  v8 = xpc_copy_entitlement_for_token();
  v9 = v8;
  if (v8)
  {
    v10 = xpc_dictionary_get_string(v8, "application-identifier");
    if (_os_feature_enabled_impl() && !v10)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074E04();
      }

      goto LABEL_25;
    }

    if (!_os_feature_enabled_impl() || [DoAPAudioRelayHub applicationIDIsSiri:v10])
    {
      v11 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v12 = v11;
      v13 = [(DoAPAudioRelayHub *)self siriXpcConnection];
      *buf = 134218242;
      v21 = v13;
      v22 = 2080;
      v23 = string;
      v14 = "Received Siri XPC message from %p: %s";
      goto LABEL_12;
    }

    if (_os_feature_enabled_impl() && [DoAPAudioRelayHub applicationIDIsSoundSensor:v10])
    {
      v18 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:
        if (!strcmp(string, "CheckIn"))
        {
          [(DoAPAudioRelayHub *)self handleCheckInMsg:v4 applicationID:v10];
        }

        else
        {
          v15 = [NSString stringWithFormat:@"handle%sMsg:", string];
          v16 = NSSelectorFromString(v15);

          if (v7)
          {
            v17 = _CFXPCCreateCFObjectFromXPCObject();
          }

          else
          {
            v17 = 0;
          }

          [self v16];
        }

        goto LABEL_25;
      }

      v12 = v18;
      v13 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
      *buf = 134218242;
      v21 = v13;
      v22 = 2080;
      v23 = string;
      v14 = "Received Sound Sensor XPC message from %p: %s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);

      goto LABEL_13;
    }

    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = v10;
      v22 = 2048;
      v23 = v5;
      v24 = 2080;
      v25 = string;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Received XPC message from unexpected applicationID %s, connection %p, msg ID: %s", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100074E38();
  }

LABEL_25:
}

- (void)sendMsgIfCheckedIn:(id)a3 args:(id)a4 forClient:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&unk_1000DDAB0);
  if ((a5 - 1) > 2)
  {
    v17 = _os_feature_enabled_impl();
    if (a5 == 4)
    {
      if (v17)
      {
        v18 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];

        if (v18)
        {
          v19 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            v21 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
            *buf = 134218242;
            v25 = v21;
            v26 = 2112;
            v27 = v8;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending Sound Sensor XPC message to %p: %@", buf, 0x16u);
          }

          v14 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v14, "kMsgId", [v8 UTF8String]);
          if (v9)
          {
            v22 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v14, "kMsgArgs", v22);
          }

          v16 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v10 = [(DoAPAudioRelayHub *)self siriXpcConnection];

    if (v10)
    {
      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [(DoAPAudioRelayHub *)self siriXpcConnection];
        *buf = 134218242;
        v25 = v13;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending Siri XPC message to %p: %@", buf, 0x16u);
      }

      v14 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v14, "kMsgId", [v8 UTF8String]);
      if (v9)
      {
        v15 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v14, "kMsgArgs", v15);
      }

      v16 = [(DoAPAudioRelayHub *)self siriXpcConnection];
LABEL_16:
      v23 = v16;
      xpc_connection_send_message(v16, v14);
LABEL_23:

      goto LABEL_24;
    }

    _os_feature_enabled_impl();
  }

  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a5 >= 5)
    {
      v23 = [NSString stringWithFormat:@"Invalid (%ld)", a5];
    }

    else
    {
      v23 = off_1000BDBF8[a5];
    }

    *buf = 138412290;
    v25 = v23;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub - No XPC client is checked in yet for %@", buf, 0xCu);
    goto LABEL_23;
  }

LABEL_24:

  os_unfair_lock_unlock(&unk_1000DDAB0);
}

- (void)handleCheckInMsg:(id)a3 applicationID:(const char *)a4
{
  v6 = a3;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(DoAPAudioRelayHub *)self doapAudioRelays];
    *buf = 136315394;
    v56 = a4;
    v57 = 1024;
    LODWORD(v58) = [v9 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub - %s checked in. Number of DoAP Audio Relays: %u", buf, 0x12u);
  }

  v10 = _os_feature_enabled_impl();
  if (!a4 && (v10 & 1) != 0)
  {
    goto LABEL_55;
  }

  original = v6;
  v50 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v47 = self;
  obj = [(DoAPAudioRelayHub *)self doapAudioRelays];
  v11 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  v12 = &OBJC_IVAR___HIDApplePencilGen3Device__latency;
  if (!v11)
  {
    goto LABEL_31;
  }

  v13 = v11;
  v14 = *v52;
  do
  {
    v15 = 0;
    do
    {
      if (*v52 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v51 + 1) + 8 * v15);
      if (_os_feature_enabled_impl())
      {
        if ([v12 + 938 applicationIDIsSiri:a4] && objc_msgSend(v16, "deviceType") - 1 > 2)
        {
          goto LABEL_24;
        }

        if ([v12 + 938 applicationIDIsSoundSensor:a4])
        {
          [v16 deviceType];
        }

        v17 = qword_1000DDBC8;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v27 = [v16 deviceType];
          if (v27 >= 5)
          {
            v28 = [NSString stringWithFormat:@"Invalid (%ld)", v27];
          }

          else
          {
            v28 = off_1000BDBF8[v27];
          }

          *buf = 136315394;
          v56 = a4;
          v57 = 2112;
          v58 = v28;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "DoAPAudioRelayHub - skipping relay. applicationID %s, deviceType %@", buf, 0x16u);
        }
      }

      v18 = +[NSMutableDictionary dictionary];
      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 deviceType]);
      [v18 setValue:v19 forKey:@"kMsgDeviceType"];

      v20 = [v16 hidProperties];

      if (v20)
      {
        v21 = [v16 hidProperties];
        [v21 objectForKeyedSubscript:@"ProductID"];
        v23 = v22 = v12;
        [v18 setValue:v23 forKey:@"kMsgPidNum"];

        v12 = v22;
      }

      v24 = [v16 identifier];

      if (v24)
      {
        v25 = [v16 identifier];
        [v18 setValue:v25 forKey:@"kMsgArgIdentifier"];
      }

      if ([v16 codec])
      {
        v26 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v16 codec]);
        [v18 setValue:v26 forKey:@"kMsgCodecType"];
      }

      [v50 addObject:v18];

LABEL_24:
      v15 = v15 + 1;
    }

    while (v13 != v15);
    v29 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    v13 = v29;
  }

  while (v29);
LABEL_31:

  v6 = original;
  reply = xpc_dictionary_create_reply(original);
  v31 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(reply, "kMsgArgs", v31);
  os_unfair_lock_lock(&unk_1000DDAB0);
  if (!_os_feature_enabled_impl())
  {
    v37 = [(DoAPAudioRelayHub *)v47 siriXpcConnection];

    v38 = qword_1000DDBC8;
    if (!v37)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074E6C();
      }

      goto LABEL_54;
    }

    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      v40 = [(DoAPAudioRelayHub *)v47 siriXpcConnection];
      *buf = 134218242;
      v56 = v40;
      v57 = 2112;
      v58 = reply;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Sending Siri CheckIn reply to %p: %@", buf, 0x16u);
    }

    v36 = v47;
LABEL_41:
    v41 = [(DoAPAudioRelayHub *)v36 siriXpcConnection];
LABEL_42:
    v42 = v41;
    xpc_connection_send_message(v41, reply);

    goto LABEL_54;
  }

  if (![v12 + 938 applicationIDIsSiri:a4])
  {
    if (![v12 + 938 applicationIDIsSoundSensor:a4])
    {
      goto LABEL_54;
    }

    v43 = [(DoAPAudioRelayHub *)v47 soundSensorXpcConnection];

    v44 = qword_1000DDBC8;
    if (!v43)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074EA0();
      }

      goto LABEL_54;
    }

    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
      v46 = [(DoAPAudioRelayHub *)v47 soundSensorXpcConnection];
      *buf = 134218242;
      v56 = v46;
      v57 = 2112;
      v58 = reply;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Sending Sound Sensor CheckIn reply to %p: %@", buf, 0x16u);
    }

    v41 = [(DoAPAudioRelayHub *)v47 soundSensorXpcConnection];
    goto LABEL_42;
  }

  v32 = [(DoAPAudioRelayHub *)v47 siriXpcConnection];

  v33 = qword_1000DDBC8;
  if (v32)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v35 = [(DoAPAudioRelayHub *)v47 siriXpcConnection];
      *buf = 134218242;
      v56 = v35;
      v57 = 2112;
      v58 = reply;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Sending Siri CheckIn reply to %p: %@", buf, 0x16u);
    }

    v36 = v47;
    goto LABEL_41;
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100074ED4();
  }

LABEL_54:
  os_unfair_lock_unlock(&unk_1000DDAB0);

LABEL_55:
}

- (void)handleStartStreamMsg:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kMsgArgIdentifier"];
  v5 = [(DoAPAudioRelayHub *)self relayForIdentifier:v4];
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074F08();
  }

  [v5 handleStartStream];
}

- (void)handleStopStreamMsg:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kMsgArgIdentifier"];
  v5 = [(DoAPAudioRelayHub *)self relayForIdentifier:v4];
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074F48();
  }

  [v5 handleStopStream];
}

- (id)relayForIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(DoAPAudioRelayHub *)self doapAudioRelays];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)removeDoAPAudioRelayObject:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074F88();
  }

  v5 = [(DoAPAudioRelayHub *)self doapAudioRelays];
  [v5 removeObject:v4];
}

+ (BOOL)applicationIDIsSiri:(const char *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (!strcmp(a3, "com.apple.corespeechd"))
  {
    return 1;
  }

  return strcmp(a3, "com.apple.MobileSMS") == 0;
}

@end
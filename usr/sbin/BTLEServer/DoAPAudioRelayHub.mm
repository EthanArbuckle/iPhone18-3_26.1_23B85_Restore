@interface DoAPAudioRelayHub
+ (BOOL)applicationIDIsSiri:(const char *)siri;
+ (id)instance;
- (BOOL)isXpcConnectedForDeviceType:(int64_t)type;
- (DoAPAudioRelayHub)init;
- (id)relayForIdentifier:(id)identifier;
- (void)handleCheckInMsg:(id)msg applicationID:(const char *)d;
- (void)handleConnection:(id)connection;
- (void)handleConnectionEvent:(id)event;
- (void)handleDisconnection:(id)disconnection;
- (void)handleMsg:(id)msg;
- (void)handleServerEvent:(id)event;
- (void)handleStartStreamMsg:(id)msg;
- (void)handleStopStreamMsg:(id)msg;
- (void)removeDoAPAudioRelayObject:(id)object;
- (void)sendMsgIfCheckedIn:(id)in args:(id)args forClient:(int64_t)client;
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

    xpcServer = [(DoAPAudioRelayHub *)v2 xpcServer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002F0D0;
    handler[3] = &unk_1000BDAE0;
    v10 = v2;
    v14 = v10;
    xpc_connection_set_event_handler(xpcServer, handler);

    xpcServer2 = [(DoAPAudioRelayHub *)v10 xpcServer];
    xpc_connection_resume(xpcServer2);

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

- (BOOL)isXpcConnectedForDeviceType:(int64_t)type
{
  if ((type - 1) <= 2)
  {
    siriXpcConnection = [(DoAPAudioRelayHub *)self siriXpcConnection];
LABEL_6:
    v7 = siriXpcConnection != 0;

    return v7;
  }

  v6 = _os_feature_enabled_impl();
  v7 = 0;
  if (type == 4 && v6)
  {
    siriXpcConnection = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
    goto LABEL_6;
  }

  return v7;
}

- (void)handleServerEvent:(id)event
{
  eventCopy = event;
  if (xpc_get_type(eventCopy) == &_xpc_type_connection)
  {
    [(DoAPAudioRelayHub *)self handleConnection:eventCopy];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100074A18();
  }
}

- (void)handleConnection:(id)connection
{
  connectionCopy = connection;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = connectionCopy;
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

      soundSensorXpcConnection = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];

      if (soundSensorXpcConnection)
      {
        v17 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100074B60(v17, self);
        }

        soundSensorXpcConnection2 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
        xpc_connection_set_event_handler(soundSensorXpcConnection2, &stru_1000BDBD8);

        soundSensorXpcConnection3 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
        xpc_connection_cancel(soundSensorXpcConnection3);
      }

      [(DoAPAudioRelayHub *)self setSoundSensorXpcConnection:connectionCopy];
      soundSensorXpcConnection4 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002F8D4;
      v21[3] = &unk_1000BDAE0;
      v21[4] = self;
      xpc_connection_set_event_handler(soundSensorXpcConnection4, v21);

      soundSensorXpcConnection5 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
    }

    else
    {
      siriXpcConnection = [(DoAPAudioRelayHub *)self siriXpcConnection];

      if (siriXpcConnection)
      {
        v10 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100074BF4(v10, self);
        }

        siriXpcConnection2 = [(DoAPAudioRelayHub *)self siriXpcConnection];
        xpc_connection_set_event_handler(siriXpcConnection2, &stru_1000BDBB8);

        siriXpcConnection3 = [(DoAPAudioRelayHub *)self siriXpcConnection];
        xpc_connection_cancel(siriXpcConnection3);
      }

      [(DoAPAudioRelayHub *)self setSiriXpcConnection:connectionCopy];
      siriXpcConnection4 = [(DoAPAudioRelayHub *)self siriXpcConnection];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10002F860;
      handler[3] = &unk_1000BDAE0;
      handler[4] = self;
      xpc_connection_set_event_handler(siriXpcConnection4, handler);

      soundSensorXpcConnection5 = [(DoAPAudioRelayHub *)self siriXpcConnection];
    }

    v15 = soundSensorXpcConnection5;
    xpc_connection_resume(soundSensorXpcConnection5);

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

- (void)handleDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    siriXpcConnection = [(DoAPAudioRelayHub *)self siriXpcConnection];
    soundSensorXpcConnection = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
    *buf = 134218240;
    v33 = siriXpcConnection;
    v34 = 2048;
    v35 = soundSensorXpcConnection;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub XPC disconnection - siri: %p, soundSensor: %p", buf, 0x16u);
  }

  os_unfair_lock_lock(&unk_1000DDAB0);
  siriXpcConnection2 = [(DoAPAudioRelayHub *)self siriXpcConnection];

  if (siriXpcConnection2)
  {
    [(DoAPAudioRelayHub *)self setSiriXpcConnection:0];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    doapAudioRelays = [(DoAPAudioRelayHub *)self doapAudioRelays];
    v11 = [doapAudioRelays countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(doapAudioRelays);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 deviceType] - 1 <= 2)
          {
            [v15 handleResetStream];
          }
        }

        v12 = [doapAudioRelays countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

LABEL_13:

    goto LABEL_26;
  }

  if (_os_feature_enabled_impl())
  {
    soundSensorXpcConnection2 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];

    if (soundSensorXpcConnection2)
    {
      [(DoAPAudioRelayHub *)self setSoundSensorXpcConnection:0];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      doapAudioRelays = [(DoAPAudioRelayHub *)self doapAudioRelays];
      v17 = [doapAudioRelays countByEnumeratingWithState:&v22 objects:v30 count:16];
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
              objc_enumerationMutation(doapAudioRelays);
            }

            v21 = *(*(&v22 + 1) + 8 * j);
            if ([v21 deviceType] == 4)
            {
              [v21 handleResetStream];
            }
          }

          v18 = [doapAudioRelays countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v18);
      }

      goto LABEL_13;
    }
  }

LABEL_26:
  os_unfair_lock_unlock(&unk_1000DDAB0);
}

- (void)handleConnectionEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_dictionary)
  {
    [(DoAPAudioRelayHub *)self handleMsg:eventCopy];
  }

  else if (type == &_xpc_type_error)
  {
    if (eventCopy == &_xpc_error_connection_invalid)
    {
      [(DoAPAudioRelayHub *)self handleDisconnection:&_xpc_error_connection_invalid];
    }

    else if (eventCopy == &_xpc_error_connection_interrupted)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074DD0();
      }
    }

    else if (eventCopy == &_xpc_error_termination_imminent)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100074D9C();
      }
    }

    else
    {
      v6 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
      if (eventCopy == &_xpc_error_peer_code_signing_requirement)
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

- (void)handleMsg:(id)msg
{
  msgCopy = msg;
  v5 = xpc_dictionary_get_remote_connection(msgCopy);
  string = xpc_dictionary_get_string(msgCopy, "kMsgId");
  v7 = xpc_dictionary_get_value(msgCopy, "kMsgArgs");
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
      siriXpcConnection = [(DoAPAudioRelayHub *)self siriXpcConnection];
      *buf = 134218242;
      v21 = siriXpcConnection;
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
          [(DoAPAudioRelayHub *)self handleCheckInMsg:msgCopy applicationID:v10];
        }

        else
        {
          string = [NSString stringWithFormat:@"handle%sMsg:", string];
          v16 = NSSelectorFromString(string);

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
      siriXpcConnection = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
      *buf = 134218242;
      v21 = siriXpcConnection;
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

- (void)sendMsgIfCheckedIn:(id)in args:(id)args forClient:(int64_t)client
{
  inCopy = in;
  argsCopy = args;
  os_unfair_lock_lock(&unk_1000DDAB0);
  if ((client - 1) > 2)
  {
    v17 = _os_feature_enabled_impl();
    if (client == 4)
    {
      if (v17)
      {
        soundSensorXpcConnection = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];

        if (soundSensorXpcConnection)
        {
          v19 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            soundSensorXpcConnection2 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
            *buf = 134218242;
            v25 = soundSensorXpcConnection2;
            v26 = 2112;
            v27 = inCopy;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending Sound Sensor XPC message to %p: %@", buf, 0x16u);
          }

          v14 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v14, "kMsgId", [inCopy UTF8String]);
          if (argsCopy)
          {
            v22 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v14, "kMsgArgs", v22);
          }

          soundSensorXpcConnection3 = [(DoAPAudioRelayHub *)self soundSensorXpcConnection];
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    siriXpcConnection = [(DoAPAudioRelayHub *)self siriXpcConnection];

    if (siriXpcConnection)
    {
      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        siriXpcConnection2 = [(DoAPAudioRelayHub *)self siriXpcConnection];
        *buf = 134218242;
        v25 = siriXpcConnection2;
        v26 = 2112;
        v27 = inCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending Siri XPC message to %p: %@", buf, 0x16u);
      }

      v14 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v14, "kMsgId", [inCopy UTF8String]);
      if (argsCopy)
      {
        v15 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v14, "kMsgArgs", v15);
      }

      soundSensorXpcConnection3 = [(DoAPAudioRelayHub *)self siriXpcConnection];
LABEL_16:
      client = soundSensorXpcConnection3;
      xpc_connection_send_message(soundSensorXpcConnection3, v14);
LABEL_23:

      goto LABEL_24;
    }

    _os_feature_enabled_impl();
  }

  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (client >= 5)
    {
      client = [NSString stringWithFormat:@"Invalid (%ld)", client];
    }

    else
    {
      client = off_1000BDBF8[client];
    }

    *buf = 138412290;
    v25 = client;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub - No XPC client is checked in yet for %@", buf, 0xCu);
    goto LABEL_23;
  }

LABEL_24:

  os_unfair_lock_unlock(&unk_1000DDAB0);
}

- (void)handleCheckInMsg:(id)msg applicationID:(const char *)d
{
  msgCopy = msg;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    doapAudioRelays = [(DoAPAudioRelayHub *)self doapAudioRelays];
    *buf = 136315394;
    dCopy2 = d;
    v57 = 1024;
    LODWORD(v58) = [doapAudioRelays count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelayHub - %s checked in. Number of DoAP Audio Relays: %u", buf, 0x12u);
  }

  v10 = _os_feature_enabled_impl();
  if (!d && (v10 & 1) != 0)
  {
    goto LABEL_55;
  }

  original = msgCopy;
  v50 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  selfCopy = self;
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
        if ([v12 + 938 applicationIDIsSiri:d] && objc_msgSend(v16, "deviceType") - 1 > 2)
        {
          goto LABEL_24;
        }

        if ([v12 + 938 applicationIDIsSoundSensor:d])
        {
          [v16 deviceType];
        }

        v17 = qword_1000DDBC8;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          deviceType = [v16 deviceType];
          if (deviceType >= 5)
          {
            v28 = [NSString stringWithFormat:@"Invalid (%ld)", deviceType];
          }

          else
          {
            v28 = off_1000BDBF8[deviceType];
          }

          *buf = 136315394;
          dCopy2 = d;
          v57 = 2112;
          v58 = v28;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "DoAPAudioRelayHub - skipping relay. applicationID %s, deviceType %@", buf, 0x16u);
        }
      }

      v18 = +[NSMutableDictionary dictionary];
      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 deviceType]);
      [v18 setValue:v19 forKey:@"kMsgDeviceType"];

      hidProperties = [v16 hidProperties];

      if (hidProperties)
      {
        hidProperties2 = [v16 hidProperties];
        [hidProperties2 objectForKeyedSubscript:@"ProductID"];
        v23 = v22 = v12;
        [v18 setValue:v23 forKey:@"kMsgPidNum"];

        v12 = v22;
      }

      identifier = [v16 identifier];

      if (identifier)
      {
        identifier2 = [v16 identifier];
        [v18 setValue:identifier2 forKey:@"kMsgArgIdentifier"];
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

  msgCopy = original;
  reply = xpc_dictionary_create_reply(original);
  v31 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(reply, "kMsgArgs", v31);
  os_unfair_lock_lock(&unk_1000DDAB0);
  if (!_os_feature_enabled_impl())
  {
    siriXpcConnection = [(DoAPAudioRelayHub *)selfCopy siriXpcConnection];

    v38 = qword_1000DDBC8;
    if (!siriXpcConnection)
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
      siriXpcConnection2 = [(DoAPAudioRelayHub *)selfCopy siriXpcConnection];
      *buf = 134218242;
      dCopy2 = siriXpcConnection2;
      v57 = 2112;
      v58 = reply;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Sending Siri CheckIn reply to %p: %@", buf, 0x16u);
    }

    v36 = selfCopy;
LABEL_41:
    siriXpcConnection3 = [(DoAPAudioRelayHub *)v36 siriXpcConnection];
LABEL_42:
    v42 = siriXpcConnection3;
    xpc_connection_send_message(siriXpcConnection3, reply);

    goto LABEL_54;
  }

  if (![v12 + 938 applicationIDIsSiri:d])
  {
    if (![v12 + 938 applicationIDIsSoundSensor:d])
    {
      goto LABEL_54;
    }

    soundSensorXpcConnection = [(DoAPAudioRelayHub *)selfCopy soundSensorXpcConnection];

    v44 = qword_1000DDBC8;
    if (!soundSensorXpcConnection)
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
      soundSensorXpcConnection2 = [(DoAPAudioRelayHub *)selfCopy soundSensorXpcConnection];
      *buf = 134218242;
      dCopy2 = soundSensorXpcConnection2;
      v57 = 2112;
      v58 = reply;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Sending Sound Sensor CheckIn reply to %p: %@", buf, 0x16u);
    }

    siriXpcConnection3 = [(DoAPAudioRelayHub *)selfCopy soundSensorXpcConnection];
    goto LABEL_42;
  }

  siriXpcConnection4 = [(DoAPAudioRelayHub *)selfCopy siriXpcConnection];

  v33 = qword_1000DDBC8;
  if (siriXpcConnection4)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      siriXpcConnection5 = [(DoAPAudioRelayHub *)selfCopy siriXpcConnection];
      *buf = 134218242;
      dCopy2 = siriXpcConnection5;
      v57 = 2112;
      v58 = reply;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Sending Siri CheckIn reply to %p: %@", buf, 0x16u);
    }

    v36 = selfCopy;
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

- (void)handleStartStreamMsg:(id)msg
{
  v4 = [msg objectForKeyedSubscript:@"kMsgArgIdentifier"];
  v5 = [(DoAPAudioRelayHub *)self relayForIdentifier:v4];
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074F08();
  }

  [v5 handleStartStream];
}

- (void)handleStopStreamMsg:(id)msg
{
  v4 = [msg objectForKeyedSubscript:@"kMsgArgIdentifier"];
  v5 = [(DoAPAudioRelayHub *)self relayForIdentifier:v4];
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074F48();
  }

  [v5 handleStopStream];
}

- (id)relayForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  doapAudioRelays = [(DoAPAudioRelayHub *)self doapAudioRelays];
  v6 = [doapAudioRelays countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(doapAudioRelays);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [doapAudioRelays countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)removeDoAPAudioRelayObject:(id)object
{
  objectCopy = object;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074F88();
  }

  doapAudioRelays = [(DoAPAudioRelayHub *)self doapAudioRelays];
  [doapAudioRelays removeObject:objectCopy];
}

+ (BOOL)applicationIDIsSiri:(const char *)siri
{
  if (!siri)
  {
    return 0;
  }

  if (!strcmp(siri, "com.apple.corespeechd"))
  {
    return 1;
  }

  return strcmp(siri, "com.apple.MobileSMS") == 0;
}

@end
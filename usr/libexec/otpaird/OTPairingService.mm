@interface OTPairingService
+ (id)sharedService;
- (NSString)pairedDeviceNotificationName;
- (id)initAsInitiator:(BOOL)a3;
- (void)deviceUnlockTimedOut;
- (void)exchangePacketAndReply;
- (void)initiatePairingWithCompletion:(id)a3;
- (void)scheduleGizmoPoke;
- (void)scheduleSessionTimeout;
- (void)sendReplyToPacket;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)stopWaitingForDeviceUnlock;
- (void)waitForDeviceUnlock;
@end

@implementation OTPairingService

- (void)scheduleGizmoPoke
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "scheduling XPC Activity to inform gizmo of companion unlock", buf, 2u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000189C;
  handler[3] = &unk_10000C508;
  handler[4] = self;
  xpc_activity_register("com.apple.security.otpaird.poke", v3, handler);
}

- (void)stopWaitingForDeviceUnlock
{
  v3 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(OTPairingService *)self notifyToken]!= -1)
  {
    if (notify_cancel([(OTPairingService *)self notifyToken]))
    {
      _os_assumes_log();
    }

    [(OTPairingService *)self setNotifyToken:0xFFFFFFFFLL];
  }

  v4 = [(OTPairingService *)self unlockTimer];

  if (v4)
  {
    v5 = [(OTPairingService *)self unlockTimer];
    dispatch_source_cancel(v5);

    [(OTPairingService *)self setUnlockTimer:0];
  }
}

- (void)waitForDeviceUnlock
{
  v3 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v3);

  out_token = -1431655766;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001D18;
  block[3] = &unk_10000C4A0;
  block[4] = self;
  if (qword_1000113B0 != -1)
  {
    dispatch_once(&qword_1000113B0, block);
  }

  if ([(OTPairingService *)self notifyToken]== -1)
  {
    v4 = [(OTPairingService *)self queue];
    v5 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v4, &stru_10000C4E0);

    if (v5)
    {
      _os_assumes_log();
    }

    else
    {
      [(OTPairingService *)self setNotifyToken:out_token];
    }
  }

  v6 = [(OTPairingService *)self queue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
  [(OTPairingService *)self setUnlockTimer:v7];

  v8 = [(OTPairingService *)self unlockTimer];
  v9 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);

  v10 = [(OTPairingService *)self unlockTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001DE4;
  handler[3] = &unk_10000C4A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);

  v11 = [(OTPairingService *)self unlockTimer];
  dispatch_activate(v11);

  if (!MKBGetDeviceLockState())
  {
    [(OTPairingService *)self stopWaitingForDeviceUnlock];
    v12 = dispatch_time(0, 5000000000);
    v13 = [(OTPairingService *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001E20;
    v14[3] = &unk_10000C4A0;
    v14[4] = self;
    dispatch_after(v12, v13, v14);
  }
}

- (void)scheduleSessionTimeout
{
  v3 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(OTPairingService *)self initiator])
  {
    v4 = [(OTPairingService *)self queue];
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
    [(OTPairingService *)self setSessionTimer:v5];

    v6 = [(OTPairingService *)self sessionTimer];
    v7 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

    v8 = [(OTPairingService *)self sessionTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001F98;
    handler[3] = &unk_10000C4A0;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);

    v9 = [(OTPairingService *)self sessionTimer];
    dispatch_activate(v9);
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v11 = a5;
  v12 = a7;
  v13 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = [(OTPairingService *)self session];
  v15 = [v14 sentMessageIdentifier];
  v16 = [v15 isEqualToString:v11];

  if (v16)
  {
    if (!a6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unsuccessfully sent message (%@): %@", &v19, 0x16u);
      }

      v17 = [(OTPairingService *)self session];
      v18 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:3 description:@"IDS message failed to send" underlying:v12];
      [(OTPairingService *)self session:v17 didCompleteWithSuccess:0 error:v18];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ignoring didSendWithSuccess callback for unexpected identifier: %@", &v19, 0xCu);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v13);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138412546;
    v39 = v11;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IDS message from %@: %@", &v38, 0x16u);
  }

  v14 = [[OTPairingPacketContext alloc] initWithMessage:v10 fromID:v11 context:v12];

  if ([(OTPairingPacketContext *)v14 messageType]== 3)
  {
    goto LABEL_22;
  }

  v15 = [(OTPairingPacketContext *)v14 sessionIdentifier];

  if (v15)
  {
    v16 = [(OTPairingPacketContext *)v14 sessionIdentifier];
    v17 = [(OTPairingService *)self session];
    v18 = [v17 identifier];
    v19 = [v16 isEqualToString:v18];

    if (v19)
    {
      v20 = [(OTPairingService *)self session];
      v21 = [v20 sentMessageIdentifier];
      v22 = [(OTPairingPacketContext *)v14 incomingResponseIdentifier];
      v23 = [v21 isEqualToString:v22];

      if ((v23 & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v38) = 0;
          v24 = "ignoring message with unrecognized incomingResponseIdentifier";
LABEL_14:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v24, &v38, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v25 = [(OTPairingService *)self initiator];
      v26 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        if (v26)
        {
          LOWORD(v38) = 0;
          v24 = "unknown session identifier, dropping message";
          goto LABEL_14;
        }

        goto LABEL_22;
      }

      if (v26)
      {
        v27 = [(OTPairingPacketContext *)v14 sessionIdentifier];
        v38 = 138412290;
        v39 = v27;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unknown session identifier %@, creating new session object", &v38, 0xCu);
      }

      v28 = [OTPairingSession alloc];
      v29 = [(OTPairingService *)self initiator];
      v30 = [(OTPairingService *)self deviceInfo];
      v31 = [(OTPairingPacketContext *)v14 sessionIdentifier];
      v32 = [(OTPairingSession *)v28 initAsInitiator:v29 deviceInfo:v30 identifier:v31];
      [(OTPairingService *)self setSession:v32];
    }

    v33 = [(OTPairingPacketContext *)v14 messageType];
    if (v33 == 1)
    {
      v37 = [(OTPairingService *)self session];
      [v37 setPacket:v14];

      [(OTPairingService *)self sendReplyToPacket];
    }

    else if (v33 == 2)
    {
      v34 = [(OTPairingService *)self session];
      v35 = [(OTPairingPacketContext *)v14 error];
      v36 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:4 description:@"companion error" underlying:v35];
      [(OTPairingService *)self session:v34 didCompleteWithSuccess:0 error:v36];
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    v24 = "ignoring message with no session identifier (old build?)";
    goto LABEL_14;
  }

LABEL_22:
}

- (void)exchangePacketAndReply
{
  v3 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(OTPairingService *)self session];
  v5 = [v4 packet];

  v6 = [(OTPairingService *)self session];
  [v6 setPacket:0];

  v7 = [(OTPairingService *)self session];
  v8 = [v7 channel];
  v9 = [v5 packetData];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000029F0;
  v11[3] = &unk_10000C478;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  [v8 exchangePacket:v9 complete:v11];
}

- (void)deviceUnlockTimedOut
{
  v3 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(OTPairingService *)self session];

  if (v4)
  {
    v5 = [(OTPairingService *)self session];
    v16 = [v5 packet];

    v6 = [(OTPairingService *)self session];
    [v6 setPacket:0];

    if (v16)
    {
      v7 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:1 description:@"timed out waiting for companion unlock"];
      v8 = objc_alloc_init(NSMutableDictionary);
      [v8 setObject:&off_10000C9A0 forKeyedSubscript:@"m"];
      v9 = [(OTPairingService *)self session];
      v10 = [v9 identifier];
      [v8 setObject:v10 forKeyedSubscript:@"session"];

      v11 = [v7 description];
      [v8 setObject:v11 forKeyedSubscript:@"error"];

      v12 = [v16 fromID];
      v13 = [v16 outgoingResponseIdentifier];
      [(OTPairingService *)self _sendMessage:v8 to:v12 identifier:v13];
      [(OTPairingService *)self scheduleGizmoPoke];
      v14 = [(OTPairingService *)self session];
      v15 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:1 description:@"timed out waiting for unlock"];
      [(OTPairingService *)self session:v14 didCompleteWithSuccess:0 error:v15];
    }

    else
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }
  }
}

- (void)sendReplyToPacket
{
  v3 = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(OTPairingService *)self session];
  v5 = [v4 acquireLockAssertion];

  if (v5)
  {
    [(OTPairingService *)self stopWaitingForDeviceUnlock];

    [(OTPairingService *)self exchangePacketAndReply];
  }

  else
  {

    [(OTPairingService *)self waitForDeviceUnlock];
  }
}

- (void)initiatePairingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(OTPairingService *)self queue];
  dispatch_assert_queue_not_V2(v5);

  if ([(OTPairingService *)self initiator])
  {
    v6 = [(OTPairingService *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003318;
    v8[3] = &unk_10000C428;
    v8[4] = self;
    v9 = v4;
    v7 = v4;
    dispatch_async(v6, v8);
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

- (NSString)pairedDeviceNotificationName
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(OTPairingService *)self service];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice])
        {
          v8 = [v7 uniqueIDOverride];
          v4 = [NSString stringWithFormat:@"ids-device-state-%@", v8];

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)initAsInitiator:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = OTPairingService;
  v4 = [(OTPairingService *)&v11 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.security.otpaird", 0);
    [(OTPairingService *)v4 setQueue:v5];

    v4->_initiator = a3;
    v6 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.octagon"];
    [(OTPairingService *)v4 setService:v6];

    v7 = [(OTPairingService *)v4 service];
    v8 = [(OTPairingService *)v4 queue];
    [v7 addDelegate:v4 queue:v8];

    [(OTPairingService *)v4 setNotifyToken:0xFFFFFFFFLL];
    v9 = objc_alloc_init(OTDeviceInformationActualAdapter);
    [(OTPairingService *)v4 setDeviceInfo:v9];
  }

  return v4;
}

+ (id)sharedService
{
  if (qword_1000113A0 != -1)
  {
    dispatch_once(&qword_1000113A0, &stru_10000C400);
  }

  v3 = qword_1000113A8;

  return v3;
}

@end
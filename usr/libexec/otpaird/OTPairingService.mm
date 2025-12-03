@interface OTPairingService
+ (id)sharedService;
- (NSString)pairedDeviceNotificationName;
- (id)initAsInitiator:(BOOL)initiator;
- (void)deviceUnlockTimedOut;
- (void)exchangePacketAndReply;
- (void)initiatePairingWithCompletion:(id)completion;
- (void)scheduleGizmoPoke;
- (void)scheduleSessionTimeout;
- (void)sendReplyToPacket;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
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
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OTPairingService *)self notifyToken]!= -1)
  {
    if (notify_cancel([(OTPairingService *)self notifyToken]))
    {
      _os_assumes_log();
    }

    [(OTPairingService *)self setNotifyToken:0xFFFFFFFFLL];
  }

  unlockTimer = [(OTPairingService *)self unlockTimer];

  if (unlockTimer)
  {
    unlockTimer2 = [(OTPairingService *)self unlockTimer];
    dispatch_source_cancel(unlockTimer2);

    [(OTPairingService *)self setUnlockTimer:0];
  }
}

- (void)waitForDeviceUnlock
{
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

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
    queue2 = [(OTPairingService *)self queue];
    v5 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, queue2, &stru_10000C4E0);

    if (v5)
    {
      _os_assumes_log();
    }

    else
    {
      [(OTPairingService *)self setNotifyToken:out_token];
    }
  }

  queue3 = [(OTPairingService *)self queue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue3);
  [(OTPairingService *)self setUnlockTimer:v7];

  unlockTimer = [(OTPairingService *)self unlockTimer];
  v9 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(unlockTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);

  unlockTimer2 = [(OTPairingService *)self unlockTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001DE4;
  handler[3] = &unk_10000C4A0;
  handler[4] = self;
  dispatch_source_set_event_handler(unlockTimer2, handler);

  unlockTimer3 = [(OTPairingService *)self unlockTimer];
  dispatch_activate(unlockTimer3);

  if (!MKBGetDeviceLockState())
  {
    [(OTPairingService *)self stopWaitingForDeviceUnlock];
    v12 = dispatch_time(0, 5000000000);
    queue4 = [(OTPairingService *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001E20;
    v14[3] = &unk_10000C4A0;
    v14[4] = self;
    dispatch_after(v12, queue4, v14);
  }
}

- (void)scheduleSessionTimeout
{
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OTPairingService *)self initiator])
  {
    queue2 = [(OTPairingService *)self queue];
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);
    [(OTPairingService *)self setSessionTimer:v5];

    sessionTimer = [(OTPairingService *)self sessionTimer];
    v7 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(sessionTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

    sessionTimer2 = [(OTPairingService *)self sessionTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001F98;
    handler[3] = &unk_10000C4A0;
    handler[4] = self;
    dispatch_source_set_event_handler(sessionTimer2, handler);

    sessionTimer3 = [(OTPairingService *)self sessionTimer];
    dispatch_activate(sessionTimer3);
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(OTPairingService *)self session];
  sentMessageIdentifier = [session sentMessageIdentifier];
  v16 = [sentMessageIdentifier isEqualToString:identifierCopy];

  if (v16)
  {
    if (!success)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = identifierCopy;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unsuccessfully sent message (%@): %@", &v19, 0x16u);
      }

      session2 = [(OTPairingService *)self session];
      v18 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:3 description:@"IDS message failed to send" underlying:errorCopy];
      [(OTPairingService *)self session:session2 didCompleteWithSuccess:0 error:v18];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ignoring didSendWithSuccess callback for unexpected identifier: %@", &v19, 0xCu);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138412546;
    v39 = dCopy;
    v40 = 2112;
    v41 = messageCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IDS message from %@: %@", &v38, 0x16u);
  }

  v14 = [[OTPairingPacketContext alloc] initWithMessage:messageCopy fromID:dCopy context:contextCopy];

  if ([(OTPairingPacketContext *)v14 messageType]== 3)
  {
    goto LABEL_22;
  }

  sessionIdentifier = [(OTPairingPacketContext *)v14 sessionIdentifier];

  if (sessionIdentifier)
  {
    sessionIdentifier2 = [(OTPairingPacketContext *)v14 sessionIdentifier];
    session = [(OTPairingService *)self session];
    identifier = [session identifier];
    v19 = [sessionIdentifier2 isEqualToString:identifier];

    if (v19)
    {
      session2 = [(OTPairingService *)self session];
      sentMessageIdentifier = [session2 sentMessageIdentifier];
      incomingResponseIdentifier = [(OTPairingPacketContext *)v14 incomingResponseIdentifier];
      v23 = [sentMessageIdentifier isEqualToString:incomingResponseIdentifier];

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
      initiator = [(OTPairingService *)self initiator];
      v26 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (initiator)
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
        sessionIdentifier3 = [(OTPairingPacketContext *)v14 sessionIdentifier];
        v38 = 138412290;
        v39 = sessionIdentifier3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unknown session identifier %@, creating new session object", &v38, 0xCu);
      }

      v28 = [OTPairingSession alloc];
      initiator2 = [(OTPairingService *)self initiator];
      deviceInfo = [(OTPairingService *)self deviceInfo];
      sessionIdentifier4 = [(OTPairingPacketContext *)v14 sessionIdentifier];
      v32 = [(OTPairingSession *)v28 initAsInitiator:initiator2 deviceInfo:deviceInfo identifier:sessionIdentifier4];
      [(OTPairingService *)self setSession:v32];
    }

    messageType = [(OTPairingPacketContext *)v14 messageType];
    if (messageType == 1)
    {
      session3 = [(OTPairingService *)self session];
      [session3 setPacket:v14];

      [(OTPairingService *)self sendReplyToPacket];
    }

    else if (messageType == 2)
    {
      session4 = [(OTPairingService *)self session];
      error = [(OTPairingPacketContext *)v14 error];
      v36 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:4 description:@"companion error" underlying:error];
      [(OTPairingService *)self session:session4 didCompleteWithSuccess:0 error:v36];
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
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(OTPairingService *)self session];
  packet = [session packet];

  session2 = [(OTPairingService *)self session];
  [session2 setPacket:0];

  session3 = [(OTPairingService *)self session];
  channel = [session3 channel];
  packetData = [packet packetData];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000029F0;
  v11[3] = &unk_10000C478;
  v11[4] = self;
  v12 = packet;
  v10 = packet;
  [channel exchangePacket:packetData complete:v11];
}

- (void)deviceUnlockTimedOut
{
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(OTPairingService *)self session];

  if (session)
  {
    session2 = [(OTPairingService *)self session];
    packet = [session2 packet];

    session3 = [(OTPairingService *)self session];
    [session3 setPacket:0];

    if (packet)
    {
      v7 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:1 description:@"timed out waiting for companion unlock"];
      v8 = objc_alloc_init(NSMutableDictionary);
      [v8 setObject:&off_10000C9A0 forKeyedSubscript:@"m"];
      session4 = [(OTPairingService *)self session];
      identifier = [session4 identifier];
      [v8 setObject:identifier forKeyedSubscript:@"session"];

      v11 = [v7 description];
      [v8 setObject:v11 forKeyedSubscript:@"error"];

      fromID = [packet fromID];
      outgoingResponseIdentifier = [packet outgoingResponseIdentifier];
      [(OTPairingService *)self _sendMessage:v8 to:fromID identifier:outgoingResponseIdentifier];
      [(OTPairingService *)self scheduleGizmoPoke];
      session5 = [(OTPairingService *)self session];
      v15 = [NSError errorWithDomain:@"com.apple.security.otpaird" code:1 description:@"timed out waiting for unlock"];
      [(OTPairingService *)self session:session5 didCompleteWithSuccess:0 error:v15];
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
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(OTPairingService *)self session];
  acquireLockAssertion = [session acquireLockAssertion];

  if (acquireLockAssertion)
  {
    [(OTPairingService *)self stopWaitingForDeviceUnlock];

    [(OTPairingService *)self exchangePacketAndReply];
  }

  else
  {

    [(OTPairingService *)self waitForDeviceUnlock];
  }
}

- (void)initiatePairingWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(OTPairingService *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if ([(OTPairingService *)self initiator])
  {
    queue2 = [(OTPairingService *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003318;
    v8[3] = &unk_10000C428;
    v8[4] = self;
    v9 = completionCopy;
    v7 = completionCopy;
    dispatch_async(queue2, v8);
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
  service = [(OTPairingService *)self service];
  devices = [service devices];

  v4 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice])
        {
          uniqueIDOverride = [v7 uniqueIDOverride];
          v4 = [NSString stringWithFormat:@"ids-device-state-%@", uniqueIDOverride];

          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)initAsInitiator:(BOOL)initiator
{
  v11.receiver = self;
  v11.super_class = OTPairingService;
  v4 = [(OTPairingService *)&v11 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.security.otpaird", 0);
    [(OTPairingService *)v4 setQueue:v5];

    v4->_initiator = initiator;
    v6 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.octagon"];
    [(OTPairingService *)v4 setService:v6];

    service = [(OTPairingService *)v4 service];
    queue = [(OTPairingService *)v4 queue];
    [service addDelegate:v4 queue:queue];

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
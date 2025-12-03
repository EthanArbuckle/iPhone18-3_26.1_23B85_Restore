@interface KmlXpcService
- (void)queueCrossPlatformSharingMessage:(id)message forInvitationIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier callback:(id)callback;
- (void)queueManagementSession:(id)session callback:(id)callback;
- (void)queueOwnerPairingSession:(id)session callback:(id)callback;
- (void)queueSharingSession:(id)session callback:(id)callback;
- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)handler;
- (void)registerCrossPlatformTestMessageSendHandler:(id)handler;
- (void)registerFriendSideInvitationUnusableHandler:(id)handler;
- (void)registerFriendSidePasscodeRetryRequestHandler:(id)handler;
- (void)registerFriendSideSharingTestCompletion:(id)completion;
- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)handler;
- (void)registerOwnerSideInvitationRequestHandler:(id)handler;
- (void)registerOwnerSideSharingTestInvitations:(id)invitations callback:(id)callback;
- (void)sendCrossPlatformTestData:(id)data toIdsIdentifier:(id)identifier;
- (void)unregisterSharingTestHandlers;
@end

@implementation KmlXpcService

- (void)queueOwnerPairingSession:(id)session callback:(id)callback
{
  sessionCopy = session;
  callbackCopy = callback;
  v8 = +[NSXPCConnection currentConnection];
  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[KmlXpcService queueOwnerPairingSession:callback:]";
    v25 = 1024;
    v26 = 41;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  v10 = +[KeyManagementLibrary sharedLibrary];
  v20 = 0;
  if ([v10 numberOfPairingSessionsQueued] < 6)
  {
    v17 = [(KmlSession *)[KmlOwnerPairingSession alloc] initWithRemoteObject:sessionCopy connection:v8 andQueue:self->_workQueue];
    userInfo = [v8 userInfo];
    v19 = [userInfo objectForKeyedSubscript:@"ProxyObjects"];
    [v19 addObject:v17];
    [v10 addNewSession:v17 firstInQueue:&v20];

    v15 = 0;
    v16 = v20;
  }

  else
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "[KmlXpcService queueOwnerPairingSession:callback:]";
      v25 = 1024;
      v26 = 48;
      v27 = 1024;
      v28 = 5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s : %i : Number of sessions higher than max allowed (%u)", buf, 0x18u);
    }

    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v21 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithUTF8String:KmlErrorString()];
    v22 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [NSError errorWithDomain:v12 code:13 userInfo:v14];

    v16 = 0;
    v17 = 0;
  }

  callbackCopy[2](callbackCopy, v17, v16 & 1, v15);
}

- (void)queueSharingSession:(id)session callback:(id)callback
{
  callbackCopy = callback;
  sessionCopy = session;
  v8 = +[NSXPCConnection currentConnection];
  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[KmlXpcService queueSharingSession:callback:]";
    v16 = 1024;
    v17 = 71;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : ", &v14, 0x12u);
  }

  v10 = [(KmlSession *)[KmlKeySharingSession alloc] initWithRemoteObject:sessionCopy connection:v8 andQueue:self->_workQueue];
  userInfo = [v8 userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"ProxyObjects"];
  [v12 addObject:v10];
  v13 = +[KeyManagementLibrary sharedLibrary];
  LOBYTE(v14) = 0;
  [v13 addNewSession:v10 firstInQueue:&v14];
  (*(callbackCopy + 2))(callbackCopy, v10, v14, 0);
}

- (void)queueManagementSession:(id)session callback:(id)callback
{
  callbackCopy = callback;
  sessionCopy = session;
  v8 = +[NSXPCConnection currentConnection];
  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[KmlXpcService queueManagementSession:callback:]";
    v16 = 1024;
    v17 = 95;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : ", &v14, 0x12u);
  }

  v10 = [(KmlSession *)[KmlKeyManagementSession alloc] initWithRemoteObject:sessionCopy connection:v8 andQueue:self->_workQueue];
  userInfo = [v8 userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"ProxyObjects"];
  [v12 addObject:v10];
  v13 = +[KeyManagementLibrary sharedLibrary];
  LOBYTE(v14) = 0;
  [v13 addNewSession:v10 firstInQueue:&v14];
  (*(callbackCopy + 2))(callbackCopy, v10, v14, 0);
}

- (void)queueCrossPlatformSharingMessage:(id)message forInvitationIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier callback:(id)callback
{
  callbackCopy = callback;
  mailboxIdentifierCopy = mailboxIdentifier;
  identifierCopy = identifier;
  messageCopy = message;
  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[KmlXpcService queueCrossPlatformSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:callback:]";
    v17 = 1024;
    v18 = 117;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : ", &v15, 0x12u);
  }

  v14 = sub_10037E00C();
  sub_1003CD3F8(v14, messageCopy, identifierCopy, mailboxIdentifierCopy);

  callbackCopy[2](callbackCopy, 0);
}

- (void)registerOwnerSideSharingTestInvitations:(id)invitations callback:(id)callback
{
  invitationsCopy = invitations;
  callbackCopy = callback;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[KmlXpcService registerOwnerSideSharingTestInvitations:callback:]";
    v17 = 1024;
    v18 = 127;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10036AB14;
  v12[3] = &unk_1004C0F00;
  v13 = invitationsCopy;
  v14 = callbackCopy;
  v10 = callbackCopy;
  v11 = invitationsCopy;
  dispatch_async(workQueue, v12);
}

- (void)registerOwnerSideInvitationRequestHandler:(id)handler
{
  handlerCopy = handler;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlXpcService registerOwnerSideInvitationRequestHandler:]";
    v12 = 1024;
    v13 = 137;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036AD28;
  block[3] = &unk_1004C1188;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)handler
{
  handlerCopy = handler;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlXpcService registerFriendSideSharingTestInvitationUUIDHandler:]";
    v12 = 1024;
    v13 = 147;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036AF3C;
  block[3] = &unk_1004C1188;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)registerFriendSideSharingTestCompletion:(id)completion
{
  completionCopy = completion;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlXpcService registerFriendSideSharingTestCompletion:]";
    v12 = 1024;
    v13 = 157;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036B150;
  block[3] = &unk_1004C1188;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)registerFriendSideInvitationUnusableHandler:(id)handler
{
  handlerCopy = handler;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlXpcService registerFriendSideInvitationUnusableHandler:]";
    v12 = 1024;
    v13 = 167;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036B364;
  block[3] = &unk_1004C1188;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)handler
{
  handlerCopy = handler;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlXpcService registerCrossPlatformTestMessageOverIDSHandler:]";
    v12 = 1024;
    v13 = 177;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036B578;
  block[3] = &unk_1004C1188;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)registerCrossPlatformTestMessageSendHandler:(id)handler
{
  handlerCopy = handler;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlXpcService registerCrossPlatformTestMessageSendHandler:]";
    v12 = 1024;
    v13 = 187;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036B78C;
  block[3] = &unk_1004C1188;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)sendCrossPlatformTestData:(id)data toIdsIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[KmlXpcService sendCrossPlatformTestData:toIdsIdentifier:]";
    v17 = 1024;
    v18 = 197;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10036B9C0;
  v12[3] = &unk_1004C22F0;
  v13 = dataCopy;
  v14 = identifierCopy;
  v10 = identifierCopy;
  v11 = dataCopy;
  dispatch_async(workQueue, v12);
}

- (void)registerFriendSidePasscodeRetryRequestHandler:(id)handler
{
  handlerCopy = handler;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[KmlXpcService registerFriendSidePasscodeRetryRequestHandler:]";
    v12 = 1024;
    v13 = 207;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036BBD4;
  block[3] = &unk_1004C1188;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)unregisterSharingTestHandlers
{
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[KmlXpcService unregisterSharingTestHandlers]";
    v6 = 1024;
    v7 = 217;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v4, 0x12u);
  }

  dispatch_async(self->_workQueue, &stru_1004D1AB0);
}

@end
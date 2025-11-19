@interface KmlXpcService
- (void)queueCrossPlatformSharingMessage:(id)a3 forInvitationIdentifier:(id)a4 fromMailboxIdentifier:(id)a5 callback:(id)a6;
- (void)queueManagementSession:(id)a3 callback:(id)a4;
- (void)queueOwnerPairingSession:(id)a3 callback:(id)a4;
- (void)queueSharingSession:(id)a3 callback:(id)a4;
- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)a3;
- (void)registerCrossPlatformTestMessageSendHandler:(id)a3;
- (void)registerFriendSideInvitationUnusableHandler:(id)a3;
- (void)registerFriendSidePasscodeRetryRequestHandler:(id)a3;
- (void)registerFriendSideSharingTestCompletion:(id)a3;
- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)a3;
- (void)registerOwnerSideInvitationRequestHandler:(id)a3;
- (void)registerOwnerSideSharingTestInvitations:(id)a3 callback:(id)a4;
- (void)sendCrossPlatformTestData:(id)a3 toIdsIdentifier:(id)a4;
- (void)unregisterSharingTestHandlers;
@end

@implementation KmlXpcService

- (void)queueOwnerPairingSession:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v17 = [(KmlSession *)[KmlOwnerPairingSession alloc] initWithRemoteObject:v6 connection:v8 andQueue:self->_workQueue];
    v18 = [v8 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"ProxyObjects"];
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

  v7[2](v7, v17, v16 & 1, v15);
}

- (void)queueSharingSession:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
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

  v10 = [(KmlSession *)[KmlKeySharingSession alloc] initWithRemoteObject:v7 connection:v8 andQueue:self->_workQueue];
  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"ProxyObjects"];
  [v12 addObject:v10];
  v13 = +[KeyManagementLibrary sharedLibrary];
  LOBYTE(v14) = 0;
  [v13 addNewSession:v10 firstInQueue:&v14];
  (*(v6 + 2))(v6, v10, v14, 0);
}

- (void)queueManagementSession:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
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

  v10 = [(KmlSession *)[KmlKeyManagementSession alloc] initWithRemoteObject:v7 connection:v8 andQueue:self->_workQueue];
  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"ProxyObjects"];
  [v12 addObject:v10];
  v13 = +[KeyManagementLibrary sharedLibrary];
  LOBYTE(v14) = 0;
  [v13 addNewSession:v10 firstInQueue:&v14];
  (*(v6 + 2))(v6, v10, v14, 0);
}

- (void)queueCrossPlatformSharingMessage:(id)a3 forInvitationIdentifier:(id)a4 fromMailboxIdentifier:(id)a5 callback:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
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
  sub_1003CD3F8(v14, v12, v11, v10);

  v9[2](v9, 0);
}

- (void)registerOwnerSideSharingTestInvitations:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(workQueue, v12);
}

- (void)registerOwnerSideInvitationRequestHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, block);
}

- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, block);
}

- (void)registerFriendSideSharingTestCompletion:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, block);
}

- (void)registerFriendSideInvitationUnusableHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, block);
}

- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, block);
}

- (void)registerCrossPlatformTestMessageSendHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  dispatch_async(workQueue, block);
}

- (void)sendCrossPlatformTestData:(id)a3 toIdsIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(workQueue, v12);
}

- (void)registerFriendSidePasscodeRetryRequestHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
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
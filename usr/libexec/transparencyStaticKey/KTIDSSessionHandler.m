@interface KTIDSSessionHandler
+ (int64_t)compareLocalSessionID:(id)a3 remoteSessionID:(id)a4;
- (BOOL)deleteSessionByID:(id)a3;
- (KTIDSSessionHandler)initWithTransport:(id)a3 transparencyd:(id)a4 peerName:(id)a5;
- (KTIDSSessionTransport)transport;
- (id)findSessionByHandle:(id)a3;
- (id)findSessionByID:(id)a3;
- (id)listSessions;
- (id)mapMailbox:(id)a3;
- (id)setupMailbox:(id)a3 publicInfo:(id)a4;
- (void)addMailbox:(id)a3;
- (void)dumpState:(id)a3;
- (void)haveContact:(id)a3 complete:(id)a4;
- (void)ktAnnounce:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)ktCommit:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)ktConfirm:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)ktRevealA:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)ktSelected:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)ktSetupB:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)ktTTR:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)ktTeardown:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)negotiatedSessionID:(id)a3 forMailbox:(id)a4;
- (void)removeAddressLookup:(id)a3;
- (void)removeMailbox:(id)a3;
- (void)removeSessionIDLookup:(id)a3;
- (void)resetSession:(id)a3;
- (void)runIfHaveContact:(id)a3 complete:(id)a4;
- (void)sasTTR:(id)a3 toHandle:(id)a4 pushToken:(id)a5;
- (void)setupTransport;
- (void)startMessageDelegate:(id)a3 onQueue:(id)a4;
- (void)tearDown:(id)a3 toID:(id)a4 fromID:(id)a5;
@end

@implementation KTIDSSessionHandler

- (KTIDSSessionHandler)initWithTransport:(id)a3 transparencyd:(id)a4 peerName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = KTIDSSessionHandler;
  v11 = [(KTIDSSessionHandler *)&v24 init];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v8;
  if (v8)
  {
    goto LABEL_4;
  }

  v13 = [IDSService alloc];
  v14 = [v13 initWithService:off_1000AD370];
  [(KTIDSSessionHandler *)v11 setService:v14];

  v15 = [(KTIDSSessionHandler *)v11 service];

  v12 = v11;
  if (v15)
  {
LABEL_4:
    [(KTIDSSessionHandler *)v11 setTransport:v12];
    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    [(KTIDSSessionHandler *)v11 setTransparencyd:v16];
    v17 = +[NSMutableDictionary dictionary];
    [(KTIDSSessionHandler *)v11 setSessionIDLookup:v17];

    v18 = +[NSMutableDictionary dictionary];
    [(KTIDSSessionHandler *)v11 setIdsHandleLookup:v18];

    if (v10)
    {
      v19 = [NSString stringWithFormat:@"KTIDSSessionHandler-%{mask.hash}@", v10];
    }

    else
    {
      v19 = @"KTIDSSessionHandler";
    }

    v21 = os_log_create("com.apple.Transparency", [(__CFString *)v19 UTF8String]);
    [(KTIDSSessionHandler *)v11 setOslog:v21];

    v22 = dispatch_queue_create("KTIDSSessionHandler", 0);
    [(KTIDSSessionHandler *)v11 setQueue:v22];

    [(KTIDSSessionHandler *)v11 setupTransport];
    v20 = v11;
  }

  else
  {
LABEL_9:
    v20 = 0;
  }

  return v20;
}

- (void)setupTransport
{
  v3 = [(KTIDSSessionHandler *)self transport];
  [v3 setMessagedAction:"ktAnnounce:service:account:fromID:context:" forIncomingRequestsOfType:0];

  v4 = [(KTIDSSessionHandler *)self transport];
  [v4 setMessagedAction:"ktCommit:service:account:fromID:context:" forIncomingRequestsOfType:1];

  v5 = [(KTIDSSessionHandler *)self transport];
  [v5 setMessagedAction:"ktSetupB:service:account:fromID:context:" forIncomingRequestsOfType:4];

  v6 = [(KTIDSSessionHandler *)self transport];
  [v6 setMessagedAction:"ktRevealA:service:account:fromID:context:" forIncomingRequestsOfType:5];

  v7 = [(KTIDSSessionHandler *)self transport];
  [v7 setMessagedAction:"ktConfirm:service:account:fromID:context:" forIncomingRequestsOfType:6];

  v8 = [(KTIDSSessionHandler *)self transport];
  [v8 setMessagedAction:"ktTeardown:service:account:fromID:context:" forIncomingRequestsOfType:3];

  v9 = [(KTIDSSessionHandler *)self transport];
  [v9 setMessagedAction:"ktSelected:service:account:fromID:context:" forIncomingRequestsOfType:2];

  v10 = [(KTIDSSessionHandler *)self transport];
  [v10 setMessagedAction:"ktTTR:service:account:fromID:context:" forIncomingRequestsOfType:7];

  v12 = [(KTIDSSessionHandler *)self transport];
  v11 = [(KTIDSSessionHandler *)self queue];
  [v12 startMessageDelegate:self onQueue:v11];
}

- (void)startMessageDelegate:(id)a3 onQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTIDSSessionHandler *)self service];
  [v8 addDelegate:v7 withDelegateProperties:0 queue:v6];
}

- (void)sasTTR:(id)a3 toHandle:(id)a4 pushToken:(id)a5
{
  v10 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = [NSString stringWithFormat:@"token:%@/%@", a5, v8];

    v8 = v9;
  }

  [(KTIDSSessionHandler *)self sendMessage:7 data:v10 toID:v8 sourceID:0];
}

- (id)mapMailbox:(id)a3
{
  if (a3)
  {
    v4 = [a3 mapMailbox];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)findSessionByHandle:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100006818;
  v16 = sub_100006828;
  v17 = 0;
  v5 = [(KTIDSSessionHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006830;
  block[3] = &unk_100094F58;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)findSessionByID:(id)a3
{
  v4 = a3;
  v5 = +[NSData kt_dataWithHexString:](NSData, "kt_dataWithHexString:", [v4 UTF8String]);
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100006818;
    v17 = sub_100006828;
    v18 = 0;
    v6 = [(KTIDSSessionHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006A6C;
    block[3] = &unk_100094F58;
    v12 = &v13;
    block[4] = self;
    v11 = v5;
    dispatch_sync(v6, block);

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10006D79C();
    }

    v7 = 0;
  }

  return v7;
}

- (id)listSessions
{
  v3 = +[NSMutableArray array];
  v4 = [(KTIDSSessionHandler *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006BCC;
  v9[3] = &unk_100094F80;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

- (BOOL)deleteSessionByID:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deleting sessionID: [%{public}@]", &buf, 0xCu);
  }

  v6 = v4;
  v7 = +[NSData kt_dataWithHexString:](NSData, "kt_dataWithHexString:", [v4 UTF8String]);
  if (v7)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = [(KTIDSSessionHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006EEC;
    block[3] = &unk_100094FA8;
    block[4] = self;
    v13 = v7;
    p_buf = &buf;
    dispatch_sync(v8, block);

    v9 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10006D828();
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (id)setupMailbox:(id)a3 publicInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100006818;
  v22 = sub_100006828;
  v23 = 0;
  v8 = [(KTIDSSessionHandler *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007400;
  v13[3] = &unk_100094FD0;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v17 = &v18;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)resetSession:(id)a3
{
  v4 = a3;
  [(KTIDSSessionHandler *)self removeSessionIDLookup:v4];
  [v4 reset];
}

- (void)tearDown:(id)a3 toID:(id)a4 fromID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = objc_alloc_init(_TtC21transparencyStaticKey12GSASTeardown);
  [(GSASTeardown *)v12 setSessionId:v10];

  v11 = [(GSASTeardown *)v12 data];
  [(KTIDSSessionHandler *)self sendMessage:3 data:v11 toID:v9 sourceID:v8];
}

- (void)ktAnnounce:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a6;
  v10 = a3;
  v11 = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = IDSCopyAddressDestinationForDestination();
  [(KTIDSSessionHandler *)self dumpState:@"SASAnnounce"];
  v13 = [(KTIDSSessionHandler *)self idsHandleLookup];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = [(SKMailbox *)v14 destinationIDSID];
    if (v15 && (v16 = v15, -[SKMailbox destinationIDSID](v14, "destinationIDSID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqual:v9], v17, v16, (v18 & 1) == 0))
    {
      [(KTIDSSessionHandler *)self resetSession:v14];
    }

    else
    {
      v19 = [(SKMailbox *)v14 destinationIDSID];

      if (v19)
      {
        goto LABEL_11;
      }
    }

    [(SKMailbox *)v14 setDestinationIDSID:v9];
  }

  else
  {
    v20 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 141558274;
      v28 = 1752392040;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ktAnnounce: new session: %{mask.hash}@", &v27, 0x16u);
    }

    v21 = [SKMailbox alloc];
    v22 = [(KTIDSSessionHandler *)self oslog];
    v14 = [(SKMailbox *)v21 initWithLogging:v22 publicInfo:0 peerIDSID:v12 session:self];

    [(SKMailbox *)v14 setDestinationIDSID:v9];
    v23 = [[KTStaticKeyPeer alloc] initWithPeer:v12];
    [(SKMailbox *)v14 setPeer:v23];
    v24 = [(KTIDSSessionHandler *)self idsHandleLookup];
    [v24 setObject:v14 forKeyedSubscript:v12];
  }

LABEL_11:
  v25 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 141558274;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ktAnnounce: %{mask.hash}@", &v27, 0x16u);
  }

  v26 = [v10 data];

  [(SKMailbox *)v14 recvAnnounce:v26];
}

- (void)ktSelected:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a6;
  v11 = a7;
  v12 = a3;
  v13 = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(v13);

  v14 = [_TtC21transparencyStaticKey12GSASSelected alloc];
  v15 = [v12 data];

  v16 = [(GSASSelected *)v14 initWithData:v15 error:0];
  v17 = [(GSASSelected *)v16 sessionId];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(GSASSelected *)v16 sessionId];
      v21 = [v20 kt_hexString];
      *buf = 141558530;
      v34 = 1752392040;
      v35 = 2112;
      v36 = v10;
      v37 = 2114;
      v38 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ktSelected: session: %{mask.hash}@ - %{public}@", buf, 0x20u);
    }

    v22 = IDSCopyAddressDestinationForDestination();
    v23 = [(KTIDSSessionHandler *)self idsHandleLookup];
    v24 = [v23 objectForKeyedSubscript:v22];

    if (!v24)
    {
      v25 = [(KTIDSSessionHandler *)self oslog];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v11 toID];
        *buf = 141558786;
        v34 = 1752392040;
        v35 = 2112;
        v36 = v10;
        v37 = 2160;
        v38 = 1752392040;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ktSelected: teardown %{mask.hash}@ %{mask.hash}@", buf, 0x2Au);
      }

      v27 = [(GSASSelected *)v16 sessionId];
      v28 = [v11 toID];
      [(KTIDSSessionHandler *)self tearDown:v27 toID:v10 fromID:v28];
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000817C;
    v30[3] = &unk_100094F80;
    v31 = v24;
    v32 = v16;
    v29 = v24;
    [(KTIDSSessionHandler *)self runIfHaveContact:v22 complete:v30];
  }
}

- (void)ktCommit:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = IDSCopyAddressDestinationForDestination();
  [(KTIDSSessionHandler *)self dumpState:@"ktCommit"];
  v13 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ktCommit: %{mask.hash}@", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008334;
  v17[3] = &unk_100094FF8;
  v17[4] = self;
  v18 = v12;
  v19 = v10;
  v20 = v9;
  v14 = v9;
  v15 = v10;
  v16 = v12;
  [(KTIDSSessionHandler *)self runIfHaveContact:v16 complete:v17];
}

- (void)runIfHaveContact:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTIDSSessionHandler *)self transparencyd];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008524;
  v11[3] = &unk_100095020;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 haveContact:v10 complete:v11];
}

- (void)ktSetupB:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = IDSCopyAddressDestinationForDestination();
  [(KTIDSSessionHandler *)self dumpState:@"ktSetupB"];
  v13 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v21 = 1752392040;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ktSetupB: %{mask.hash}@", buf, 0x16u);
  }

  v14 = [(KTIDSSessionHandler *)self idsHandleLookup];
  v15 = [v14 objectForKeyedSubscript:v12];

  if (v15)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100008850;
    v17[3] = &unk_100094F80;
    v18 = v15;
    v19 = v9;
    [(KTIDSSessionHandler *)self runIfHaveContact:v12 complete:v17];

    v16 = v18;
  }

  else
  {
    v16 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v21 = 1752392040;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mb not found for %{mask.hash}@", buf, 0x16u);
    }
  }
}

- (void)ktRevealA:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ktRevealA %{public}@", buf, 0xCu);
  }

  [(KTIDSSessionHandler *)self dumpState:@"ktRevealA"];
  v13 = IDSCopyAddressDestinationForDestination();
  v14 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ktRevealA: %{mask.hash}@", buf, 0x16u);
  }

  v15 = [(KTIDSSessionHandler *)self idsHandleLookup];
  v16 = [v15 objectForKeyedSubscript:v13];

  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008AE4;
    v18[3] = &unk_100094F80;
    v19 = v16;
    v20 = v9;
    [(KTIDSSessionHandler *)self runIfHaveContact:v13 complete:v18];

    v17 = v19;
  }

  else
  {
    v17 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10006DAC4();
    }
  }
}

- (void)ktConfirm:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = IDSCopyAddressDestinationForDestination();
  v13 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ktConfirm %{mask.hash}@", buf, 0x16u);
  }

  [(KTIDSSessionHandler *)self dumpState:@"ktConfirm"];
  v14 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ktConfirm: %{mask.hash}@", buf, 0x16u);
  }

  v15 = [(KTIDSSessionHandler *)self idsHandleLookup];
  v16 = [v15 objectForKeyedSubscript:v12];

  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008D88;
    v18[3] = &unk_100094F80;
    v19 = v16;
    v20 = v9;
    [(KTIDSSessionHandler *)self runIfHaveContact:v12 complete:v18];

    v17 = v19;
  }

  else
  {
    v17 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10006DAC4();
    }
  }
}

- (void)ktTeardown:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ktTeardown %{mask.hash}@", buf, 0x16u);
  }

  v13 = IDSCopyAddressDestinationForDestination();
  v14 = [(KTIDSSessionHandler *)self idsHandleLookup];
  v15 = [v14 objectForKeyedSubscript:v13];

  if (v15)
  {
    v16 = [_TtC21transparencyStaticKey12GSASTeardown alloc];
    v17 = [v9 data];
    v18 = [(GSASTeardown *)v16 initWithData:v17 error:0];

    if (!v18 || ([v18 sessionId], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
    {
      v22 = [(KTIDSSessionHandler *)self oslog];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10006DC20();
      }

      goto LABEL_18;
    }

    v20 = [v15 peerSessionID];
    v21 = [v18 sessionId];
    if ([v20 isEqual:v21])
    {
    }

    else
    {
      v23 = [v15 localSessionID];
      v24 = [v18 sessionId];
      v26 = [v23 isEqual:v24];

      if (!v26)
      {
        v22 = [(KTIDSSessionHandler *)self oslog];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10006DB00(v18, v15, v22);
        }

        goto LABEL_18;
      }
    }

    v25 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ktTeardown: session match, tearing down", buf, 2u);
    }

    v22 = [v9 data];
    [v15 recvTeardown:v22];
LABEL_18:

    goto LABEL_19;
  }

  v18 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10006DC90();
  }

LABEL_19:
}

- (void)ktTTR:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a3;
  v10 = a6;
  if (_os_feature_enabled_impl())
  {
    if ((+[TransparencyAnalytics hasInternalDiagnostics]& 1) != 0)
    {
      v11 = IDSCopyAddressDestinationForDestination();
      v12 = [v9 data];
      v20 = 0;
      v13 = [_TtC21transparencyStaticKey21SASValidateTTRMessage validateWithMessage:v12 error:&v20];
      v14 = v20;

      if (v13)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100009328;
        v17[3] = &unk_100095070;
        v17[4] = self;
        v18 = v13;
        v19 = v11;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10000945C;
        v16[3] = &unk_100095048;
        v16[4] = self;
        [TransparencyXPCConnection invokeIDSSupportWithBlock:v17 errorHandler:v16];
      }

      else
      {
        v15 = [(KTIDSSessionHandler *)self oslog];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10006DD78();
        }
      }
    }

    else
    {
      v11 = [(KTIDSSessionHandler *)self oslog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10006DD3C();
      }
    }
  }

  else
  {
    v11 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10006DD00();
    }
  }
}

+ (int64_t)compareLocalSessionID:(id)a3 remoteSessionID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqual:v6])
  {
    v7 = 2;
  }

  else
  {
    v8 = [v5 length];
    if (v8 <= [v6 length])
    {
      v9 = [v5 length];
      if (v9 >= [v6 length])
      {
        v7 = memcmp([v5 bytes], objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length")) >> 31;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)addMailbox:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSSessionHandler *)self sessionIDLookup];
  v6 = [v4 handleID];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v4 peerHandles];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [(KTIDSSessionHandler *)self idsHandleLookup];
        [v13 setObject:v4 forKeyedSubscript:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)removeAddressLookup:(id)a3
{
  v4 = a3;
  if (([v4 deletedHandles] & 1) == 0)
  {
    [v4 setDeletedHandles:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 peerHandles];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          v11 = [(KTIDSSessionHandler *)self idsHandleLookup];
          [v11 setObject:0 forKeyedSubscript:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)removeSessionIDLookup:(id)a3
{
  v4 = a3;
  v6 = [(KTIDSSessionHandler *)self sessionIDLookup];
  v5 = [v4 handleID];

  [v6 setObject:0 forKeyedSubscript:v5];
}

- (void)removeMailbox:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 negotiatedSessionID];
    v7 = [v6 kt_hexString];
    v8 = [v4 localSessionID];
    v9 = [v8 kt_hexString];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removing session %{public}@, local-session %{public}@", &v10, 0x16u);
  }

  [(KTIDSSessionHandler *)self removeAddressLookup:v4];
  [(KTIDSSessionHandler *)self removeSessionIDLookup:v4];
  [v4 sendTeardown];
}

- (void)dumpState:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session handler-lookup state: %{public}@", buf, 0xCu);
  }

  v6 = [(KTIDSSessionHandler *)self idsHandleLookup];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009B18;
  v7[3] = &unk_100095098;
  v7[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)negotiatedSessionID:(id)a3 forMailbox:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTIDSSessionHandler *)self sessionIDLookup];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (void)haveContact:(id)a3 complete:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009DBC;
  v9[3] = &unk_1000950C0;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009F58;
  v7[3] = &unk_1000950E8;
  v7[4] = v10;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [TransparencyXPCConnection invokeIDSSupportWithBlock:v9 errorHandler:v7];
}

- (KTIDSSessionTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

@end
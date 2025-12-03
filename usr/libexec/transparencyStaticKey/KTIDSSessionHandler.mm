@interface KTIDSSessionHandler
+ (int64_t)compareLocalSessionID:(id)d remoteSessionID:(id)iD;
- (BOOL)deleteSessionByID:(id)d;
- (KTIDSSessionHandler)initWithTransport:(id)transport transparencyd:(id)transparencyd peerName:(id)name;
- (KTIDSSessionTransport)transport;
- (id)findSessionByHandle:(id)handle;
- (id)findSessionByID:(id)d;
- (id)listSessions;
- (id)mapMailbox:(id)mailbox;
- (id)setupMailbox:(id)mailbox publicInfo:(id)info;
- (void)addMailbox:(id)mailbox;
- (void)dumpState:(id)state;
- (void)haveContact:(id)contact complete:(id)complete;
- (void)ktAnnounce:(id)announce service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)ktCommit:(id)commit service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)ktConfirm:(id)confirm service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)ktRevealA:(id)a service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)ktSelected:(id)selected service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)ktSetupB:(id)b service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)ktTTR:(id)r service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)ktTeardown:(id)teardown service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)negotiatedSessionID:(id)d forMailbox:(id)mailbox;
- (void)removeAddressLookup:(id)lookup;
- (void)removeMailbox:(id)mailbox;
- (void)removeSessionIDLookup:(id)lookup;
- (void)resetSession:(id)session;
- (void)runIfHaveContact:(id)contact complete:(id)complete;
- (void)sasTTR:(id)r toHandle:(id)handle pushToken:(id)token;
- (void)setupTransport;
- (void)startMessageDelegate:(id)delegate onQueue:(id)queue;
- (void)tearDown:(id)down toID:(id)d fromID:(id)iD;
@end

@implementation KTIDSSessionHandler

- (KTIDSSessionHandler)initWithTransport:(id)transport transparencyd:(id)transparencyd peerName:(id)name
{
  transportCopy = transport;
  transparencydCopy = transparencyd;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = KTIDSSessionHandler;
  v11 = [(KTIDSSessionHandler *)&v24 init];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = transportCopy;
  if (transportCopy)
  {
    goto LABEL_4;
  }

  v13 = [IDSService alloc];
  v14 = [v13 initWithService:off_1000AD370];
  [(KTIDSSessionHandler *)v11 setService:v14];

  service = [(KTIDSSessionHandler *)v11 service];

  v12 = v11;
  if (service)
  {
LABEL_4:
    [(KTIDSSessionHandler *)v11 setTransport:v12];
    if (transparencydCopy)
    {
      v16 = transparencydCopy;
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

    if (nameCopy)
    {
      nameCopy = [NSString stringWithFormat:@"KTIDSSessionHandler-%{mask.hash}@", nameCopy];
    }

    else
    {
      nameCopy = @"KTIDSSessionHandler";
    }

    v21 = os_log_create("com.apple.Transparency", [(__CFString *)nameCopy UTF8String]);
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
  transport = [(KTIDSSessionHandler *)self transport];
  [transport setMessagedAction:"ktAnnounce:service:account:fromID:context:" forIncomingRequestsOfType:0];

  transport2 = [(KTIDSSessionHandler *)self transport];
  [transport2 setMessagedAction:"ktCommit:service:account:fromID:context:" forIncomingRequestsOfType:1];

  transport3 = [(KTIDSSessionHandler *)self transport];
  [transport3 setMessagedAction:"ktSetupB:service:account:fromID:context:" forIncomingRequestsOfType:4];

  transport4 = [(KTIDSSessionHandler *)self transport];
  [transport4 setMessagedAction:"ktRevealA:service:account:fromID:context:" forIncomingRequestsOfType:5];

  transport5 = [(KTIDSSessionHandler *)self transport];
  [transport5 setMessagedAction:"ktConfirm:service:account:fromID:context:" forIncomingRequestsOfType:6];

  transport6 = [(KTIDSSessionHandler *)self transport];
  [transport6 setMessagedAction:"ktTeardown:service:account:fromID:context:" forIncomingRequestsOfType:3];

  transport7 = [(KTIDSSessionHandler *)self transport];
  [transport7 setMessagedAction:"ktSelected:service:account:fromID:context:" forIncomingRequestsOfType:2];

  transport8 = [(KTIDSSessionHandler *)self transport];
  [transport8 setMessagedAction:"ktTTR:service:account:fromID:context:" forIncomingRequestsOfType:7];

  transport9 = [(KTIDSSessionHandler *)self transport];
  queue = [(KTIDSSessionHandler *)self queue];
  [transport9 startMessageDelegate:self onQueue:queue];
}

- (void)startMessageDelegate:(id)delegate onQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  service = [(KTIDSSessionHandler *)self service];
  [service addDelegate:delegateCopy withDelegateProperties:0 queue:queueCopy];
}

- (void)sasTTR:(id)r toHandle:(id)handle pushToken:(id)token
{
  rCopy = r;
  handleCopy = handle;
  if (token)
  {
    handleCopy = [NSString stringWithFormat:@"token:%@/%@", token, handleCopy];

    handleCopy = handleCopy;
  }

  [(KTIDSSessionHandler *)self sendMessage:7 data:rCopy toID:handleCopy sourceID:0];
}

- (id)mapMailbox:(id)mailbox
{
  if (mailbox)
  {
    mapMailbox = [mailbox mapMailbox];
  }

  else
  {
    mapMailbox = 0;
  }

  return mapMailbox;
}

- (id)findSessionByHandle:(id)handle
{
  handleCopy = handle;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100006818;
  v16 = sub_100006828;
  v17 = 0;
  queue = [(KTIDSSessionHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006830;
  block[3] = &unk_100094F58;
  v10 = handleCopy;
  v11 = &v12;
  block[4] = self;
  v6 = handleCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)findSessionByID:(id)d
{
  dCopy = d;
  v5 = +[NSData kt_dataWithHexString:](NSData, "kt_dataWithHexString:", [dCopy UTF8String]);
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100006818;
    v17 = sub_100006828;
    v18 = 0;
    queue = [(KTIDSSessionHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006A6C;
    block[3] = &unk_100094F58;
    v12 = &v13;
    block[4] = self;
    v11 = v5;
    dispatch_sync(queue, block);

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    oslog = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
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
  queue = [(KTIDSSessionHandler *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006BCC;
  v9[3] = &unk_100094F80;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

- (BOOL)deleteSessionByID:(id)d
{
  dCopy = d;
  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "deleting sessionID: [%{public}@]", &buf, 0xCu);
  }

  v6 = dCopy;
  v7 = +[NSData kt_dataWithHexString:](NSData, "kt_dataWithHexString:", [dCopy UTF8String]);
  if (v7)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = 0;
    queue = [(KTIDSSessionHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006EEC;
    block[3] = &unk_100094FA8;
    block[4] = self;
    v13 = v7;
    p_buf = &buf;
    dispatch_sync(queue, block);

    v9 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    oslog2 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      sub_10006D828();
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (id)setupMailbox:(id)mailbox publicInfo:(id)info
{
  mailboxCopy = mailbox;
  infoCopy = info;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100006818;
  v22 = sub_100006828;
  v23 = 0;
  queue = [(KTIDSSessionHandler *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007400;
  v13[3] = &unk_100094FD0;
  v14 = mailboxCopy;
  selfCopy = self;
  v16 = infoCopy;
  v17 = &v18;
  v9 = infoCopy;
  v10 = mailboxCopy;
  dispatch_sync(queue, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)resetSession:(id)session
{
  sessionCopy = session;
  [(KTIDSSessionHandler *)self removeSessionIDLookup:sessionCopy];
  [sessionCopy reset];
}

- (void)tearDown:(id)down toID:(id)d fromID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  downCopy = down;
  v12 = objc_alloc_init(_TtC21transparencyStaticKey12GSASTeardown);
  [(GSASTeardown *)v12 setSessionId:downCopy];

  data = [(GSASTeardown *)v12 data];
  [(KTIDSSessionHandler *)self sendMessage:3 data:data toID:dCopy sourceID:iDCopy];
}

- (void)ktAnnounce:(id)announce service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  announceCopy = announce;
  queue = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = IDSCopyAddressDestinationForDestination();
  [(KTIDSSessionHandler *)self dumpState:@"SASAnnounce"];
  idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
  v14 = [idsHandleLookup objectForKeyedSubscript:v12];

  if (v14)
  {
    destinationIDSID = [(SKMailbox *)v14 destinationIDSID];
    if (destinationIDSID && (v16 = destinationIDSID, -[SKMailbox destinationIDSID](v14, "destinationIDSID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqual:dCopy], v17, v16, (v18 & 1) == 0))
    {
      [(KTIDSSessionHandler *)self resetSession:v14];
    }

    else
    {
      destinationIDSID2 = [(SKMailbox *)v14 destinationIDSID];

      if (destinationIDSID2)
      {
        goto LABEL_11;
      }
    }

    [(SKMailbox *)v14 setDestinationIDSID:dCopy];
  }

  else
  {
    oslog = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 141558274;
      v28 = 1752392040;
      v29 = 2112;
      v30 = dCopy;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ktAnnounce: new session: %{mask.hash}@", &v27, 0x16u);
    }

    v21 = [SKMailbox alloc];
    oslog2 = [(KTIDSSessionHandler *)self oslog];
    v14 = [(SKMailbox *)v21 initWithLogging:oslog2 publicInfo:0 peerIDSID:v12 session:self];

    [(SKMailbox *)v14 setDestinationIDSID:dCopy];
    v23 = [[KTStaticKeyPeer alloc] initWithPeer:v12];
    [(SKMailbox *)v14 setPeer:v23];
    idsHandleLookup2 = [(KTIDSSessionHandler *)self idsHandleLookup];
    [idsHandleLookup2 setObject:v14 forKeyedSubscript:v12];
  }

LABEL_11:
  oslog3 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 141558274;
    v28 = 1752392040;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "ktAnnounce: %{mask.hash}@", &v27, 0x16u);
  }

  data = [announceCopy data];

  [(SKMailbox *)v14 recvAnnounce:data];
}

- (void)ktSelected:(id)selected service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  selectedCopy = selected;
  queue = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = [_TtC21transparencyStaticKey12GSASSelected alloc];
  data = [selectedCopy data];

  v16 = [(GSASSelected *)v14 initWithData:data error:0];
  sessionId = [(GSASSelected *)v16 sessionId];
  v18 = [sessionId length];

  if (v18)
  {
    oslog = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sessionId2 = [(GSASSelected *)v16 sessionId];
      kt_hexString = [sessionId2 kt_hexString];
      *buf = 141558530;
      v34 = 1752392040;
      v35 = 2112;
      v36 = dCopy;
      v37 = 2114;
      v38 = kt_hexString;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ktSelected: session: %{mask.hash}@ - %{public}@", buf, 0x20u);
    }

    v22 = IDSCopyAddressDestinationForDestination();
    idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
    v24 = [idsHandleLookup objectForKeyedSubscript:v22];

    if (!v24)
    {
      oslog2 = [(KTIDSSessionHandler *)self oslog];
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        toID = [contextCopy toID];
        *buf = 141558786;
        v34 = 1752392040;
        v35 = 2112;
        v36 = dCopy;
        v37 = 2160;
        v38 = 1752392040;
        v39 = 2112;
        v40 = toID;
        _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "ktSelected: teardown %{mask.hash}@ %{mask.hash}@", buf, 0x2Au);
      }

      sessionId3 = [(GSASSelected *)v16 sessionId];
      toID2 = [contextCopy toID];
      [(KTIDSSessionHandler *)self tearDown:sessionId3 toID:dCopy fromID:toID2];
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

- (void)ktCommit:(id)commit service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  commitCopy = commit;
  dCopy = d;
  queue = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = IDSCopyAddressDestinationForDestination();
  [(KTIDSSessionHandler *)self dumpState:@"ktCommit"];
  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ktCommit: %{mask.hash}@", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008334;
  v17[3] = &unk_100094FF8;
  v17[4] = self;
  v18 = v12;
  v19 = dCopy;
  v20 = commitCopy;
  v14 = commitCopy;
  v15 = dCopy;
  v16 = v12;
  [(KTIDSSessionHandler *)self runIfHaveContact:v16 complete:v17];
}

- (void)runIfHaveContact:(id)contact complete:(id)complete
{
  contactCopy = contact;
  completeCopy = complete;
  transparencyd = [(KTIDSSessionHandler *)self transparencyd];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008524;
  v11[3] = &unk_100095020;
  v11[4] = self;
  v12 = contactCopy;
  v13 = completeCopy;
  v9 = completeCopy;
  v10 = contactCopy;
  [transparencyd haveContact:v10 complete:v11];
}

- (void)ktSetupB:(id)b service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  bCopy = b;
  dCopy = d;
  queue = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = IDSCopyAddressDestinationForDestination();
  [(KTIDSSessionHandler *)self dumpState:@"ktSetupB"];
  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v21 = 1752392040;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ktSetupB: %{mask.hash}@", buf, 0x16u);
  }

  idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
  v15 = [idsHandleLookup objectForKeyedSubscript:v12];

  if (v15)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100008850;
    v17[3] = &unk_100094F80;
    v18 = v15;
    v19 = bCopy;
    [(KTIDSSessionHandler *)self runIfHaveContact:v12 complete:v17];

    oslog2 = v18;
  }

  else
  {
    oslog2 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v21 = 1752392040;
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "mb not found for %{mask.hash}@", buf, 0x16u);
    }
  }
}

- (void)ktRevealA:(id)a service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  aCopy = a;
  dCopy = d;
  queue = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = dCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "ktRevealA %{public}@", buf, 0xCu);
  }

  [(KTIDSSessionHandler *)self dumpState:@"ktRevealA"];
  v13 = IDSCopyAddressDestinationForDestination();
  oslog2 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "ktRevealA: %{mask.hash}@", buf, 0x16u);
  }

  idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
  v16 = [idsHandleLookup objectForKeyedSubscript:v13];

  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008AE4;
    v18[3] = &unk_100094F80;
    v19 = v16;
    v20 = aCopy;
    [(KTIDSSessionHandler *)self runIfHaveContact:v13 complete:v18];

    oslog3 = v19;
  }

  else
  {
    oslog3 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
    {
      sub_10006DAC4();
    }
  }
}

- (void)ktConfirm:(id)confirm service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  confirmCopy = confirm;
  dCopy = d;
  queue = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = IDSCopyAddressDestinationForDestination();
  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ktConfirm %{mask.hash}@", buf, 0x16u);
  }

  [(KTIDSSessionHandler *)self dumpState:@"ktConfirm"];
  oslog2 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "ktConfirm: %{mask.hash}@", buf, 0x16u);
  }

  idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
  v16 = [idsHandleLookup objectForKeyedSubscript:v12];

  if (v16)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008D88;
    v18[3] = &unk_100094F80;
    v19 = v16;
    v20 = confirmCopy;
    [(KTIDSSessionHandler *)self runIfHaveContact:v12 complete:v18];

    oslog3 = v19;
  }

  else
  {
    oslog3 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
    {
      sub_10006DAC4();
    }
  }
}

- (void)ktTeardown:(id)teardown service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  teardownCopy = teardown;
  dCopy = d;
  queue = [(KTIDSSessionHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v28 = 1752392040;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ktTeardown %{mask.hash}@", buf, 0x16u);
  }

  v13 = IDSCopyAddressDestinationForDestination();
  idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
  v15 = [idsHandleLookup objectForKeyedSubscript:v13];

  if (v15)
  {
    v16 = [_TtC21transparencyStaticKey12GSASTeardown alloc];
    data = [teardownCopy data];
    oslog4 = [(GSASTeardown *)v16 initWithData:data error:0];

    if (!oslog4 || ([oslog4 sessionId], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
    {
      oslog2 = [(KTIDSSessionHandler *)self oslog];
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        sub_10006DC20();
      }

      goto LABEL_18;
    }

    peerSessionID = [v15 peerSessionID];
    sessionId = [oslog4 sessionId];
    if ([peerSessionID isEqual:sessionId])
    {
    }

    else
    {
      localSessionID = [v15 localSessionID];
      sessionId2 = [oslog4 sessionId];
      v26 = [localSessionID isEqual:sessionId2];

      if (!v26)
      {
        oslog2 = [(KTIDSSessionHandler *)self oslog];
        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
        {
          sub_10006DB00(oslog4, v15, oslog2);
        }

        goto LABEL_18;
      }
    }

    oslog3 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "ktTeardown: session match, tearing down", buf, 2u);
    }

    oslog2 = [teardownCopy data];
    [v15 recvTeardown:oslog2];
LABEL_18:

    goto LABEL_19;
  }

  oslog4 = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_ERROR))
  {
    sub_10006DC90();
  }

LABEL_19:
}

- (void)ktTTR:(id)r service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  rCopy = r;
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    if ((+[TransparencyAnalytics hasInternalDiagnostics]& 1) != 0)
    {
      oslog2 = IDSCopyAddressDestinationForDestination();
      data = [rCopy data];
      v20 = 0;
      v13 = [_TtC21transparencyStaticKey21SASValidateTTRMessage validateWithMessage:data error:&v20];
      v14 = v20;

      if (v13)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100009328;
        v17[3] = &unk_100095070;
        v17[4] = self;
        v18 = v13;
        v19 = oslog2;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10000945C;
        v16[3] = &unk_100095048;
        v16[4] = self;
        [TransparencyXPCConnection invokeIDSSupportWithBlock:v17 errorHandler:v16];
      }

      else
      {
        oslog = [(KTIDSSessionHandler *)self oslog];
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10006DD78();
        }
      }
    }

    else
    {
      oslog2 = [(KTIDSSessionHandler *)self oslog];
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        sub_10006DD3C();
      }
    }
  }

  else
  {
    oslog2 = [(KTIDSSessionHandler *)self oslog];
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      sub_10006DD00();
    }
  }
}

+ (int64_t)compareLocalSessionID:(id)d remoteSessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([dCopy isEqual:iDCopy])
  {
    v7 = 2;
  }

  else
  {
    v8 = [dCopy length];
    if (v8 <= [iDCopy length])
    {
      v9 = [dCopy length];
      if (v9 >= [iDCopy length])
      {
        v7 = memcmp([dCopy bytes], objc_msgSend(iDCopy, "bytes"), objc_msgSend(iDCopy, "length")) >> 31;
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

- (void)addMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  sessionIDLookup = [(KTIDSSessionHandler *)self sessionIDLookup];
  handleID = [mailboxCopy handleID];
  [sessionIDLookup setObject:mailboxCopy forKeyedSubscript:handleID];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  peerHandles = [mailboxCopy peerHandles];
  v8 = [peerHandles countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(peerHandles);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
        [idsHandleLookup setObject:mailboxCopy forKeyedSubscript:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [peerHandles countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)removeAddressLookup:(id)lookup
{
  lookupCopy = lookup;
  if (([lookupCopy deletedHandles] & 1) == 0)
  {
    [lookupCopy setDeletedHandles:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    peerHandles = [lookupCopy peerHandles];
    v6 = [peerHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(peerHandles);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
          [idsHandleLookup setObject:0 forKeyedSubscript:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [peerHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)removeSessionIDLookup:(id)lookup
{
  lookupCopy = lookup;
  sessionIDLookup = [(KTIDSSessionHandler *)self sessionIDLookup];
  handleID = [lookupCopy handleID];

  [sessionIDLookup setObject:0 forKeyedSubscript:handleID];
}

- (void)removeMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    negotiatedSessionID = [mailboxCopy negotiatedSessionID];
    kt_hexString = [negotiatedSessionID kt_hexString];
    localSessionID = [mailboxCopy localSessionID];
    kt_hexString2 = [localSessionID kt_hexString];
    v10 = 138543618;
    v11 = kt_hexString;
    v12 = 2114;
    v13 = kt_hexString2;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "removing session %{public}@, local-session %{public}@", &v10, 0x16u);
  }

  [(KTIDSSessionHandler *)self removeAddressLookup:mailboxCopy];
  [(KTIDSSessionHandler *)self removeSessionIDLookup:mailboxCopy];
  [mailboxCopy sendTeardown];
}

- (void)dumpState:(id)state
{
  stateCopy = state;
  oslog = [(KTIDSSessionHandler *)self oslog];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = stateCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "session handler-lookup state: %{public}@", buf, 0xCu);
  }

  idsHandleLookup = [(KTIDSSessionHandler *)self idsHandleLookup];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009B18;
  v7[3] = &unk_100095098;
  v7[4] = self;
  [idsHandleLookup enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)negotiatedSessionID:(id)d forMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  dCopy = d;
  sessionIDLookup = [(KTIDSSessionHandler *)self sessionIDLookup];
  [sessionIDLookup setObject:mailboxCopy forKeyedSubscript:dCopy];
}

- (void)haveContact:(id)contact complete:(id)complete
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009DBC;
  v9[3] = &unk_1000950C0;
  selfCopy = self;
  contactCopy = contact;
  completeCopy = complete;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009F58;
  v7[3] = &unk_1000950E8;
  v7[4] = selfCopy;
  v8 = completeCopy;
  v5 = completeCopy;
  v6 = contactCopy;
  [TransparencyXPCConnection invokeIDSSupportWithBlock:v9 errorHandler:v7];
}

- (KTIDSSessionTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

@end
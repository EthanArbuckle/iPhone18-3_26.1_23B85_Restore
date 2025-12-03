@interface SOSMessage
- (BOOL)SOSTransportMessageHandlePeerMessage:(id)message id:(__CFString *)id cm:(__CFData *)cm err:(__CFError *)err;
- (BOOL)SOSTransportMessageSendMessage:(id)message id:(__CFString *)id messageToSend:(__CFData *)send err:(__CFError *)err;
- (BOOL)SOSTransportMessageSendMessageIfNeeded:(id)needed circleName:(__CFString *)name pID:(__CFString *)d err:(__CFError *)err;
- (SOSMessage)initWithAccount:(id)account andName:(id)name;
- (__CFString)SOSTransportMessageGetCircleName;
- (void)SOSTransportMessageCalculateNextTimer:(id)timer rtt:(int)rtt peerid:(id)peerid;
- (void)SOSTransportMessageGetEngine;
- (void)SOSTransportMessageUpdateLastMessageSentTimetstamp:(id)timetstamp peer:(__OpaqueSOSPeer *)peer;
- (void)SOSTransportMessageUpdateRTTs:(id)ts;
- (void)dealloc;
@end

@implementation SOSMessage

- (BOOL)SOSTransportMessageSendMessageIfNeeded:(id)needed circleName:(__CFString *)name pID:(__CFString *)d err:(__CFError *)err
{
  neededCopy = needed;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  account = [neededCopy account];
  v10 = sub_100220920(account);
  engine = [neededCopy engine];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10023EEC8;
  v16[3] = &unk_100346920;
  v19 = &v23;
  v12 = neededCopy;
  v17 = v12;
  dCopy = d;
  errCopy = err;
  v22 = v10;
  v13 = account;
  v18 = v13;
  v14 = sub_10014811C(engine, d, err, v16);
  LOBYTE(err) = v14 & v24[3];
  *(v24 + 24) = err;

  _Block_object_dispose(&v23, 8);
  return err;
}

- (void)SOSTransportMessageUpdateLastMessageSentTimetstamp:(id)timetstamp peer:(__OpaqueSOSPeer *)peer
{
  timetstampCopy = timetstamp;
  v5 = sub_10020649C(timetstampCopy, @"kSOSAccountPeerLastSentTimestamp");
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  v6 = [v5 objectForKey:*(peer + 2)];

  if (!v6)
  {
    v7 = +[NSDate date];
    [v5 setObject:v7 forKey:*(peer + 2)];

    sub_100228C18(timetstampCopy, @"kSOSAccountPeerLastSentTimestamp", v5, 0);
  }
}

- (BOOL)SOSTransportMessageHandlePeerMessage:(id)message id:(__CFString *)id cm:(__CFData *)cm err:(__CFError *)err
{
  messageCopy = message;
  [(SOSMessage *)self SOSTransportMessageUpdateRTTs:id];
  engine = [messageCopy engine];
  sub_100087E9C(engine != 0, err, @"Missing engine");
  if (!engine)
  {
    v17 = 0;
    goto LABEL_14;
  }

  sOSTransportMessageGetAccount = [messageCopy SOSTransportMessageGetAccount];
  engine2 = [messageCopy engine];
  v14 = sOSTransportMessageGetAccount;
  v15 = v14;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (v14 && [v14 accountIsChanging])
  {
    v16 = sub_100006274("engine");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SOSEngineHandleCodedMessage called before signing in to new account", v28, 2u);
    }

    v17 = 1;
    goto LABEL_13;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100240440;
  v28[3] = &unk_1003468F8;
  idCopy = id;
  cmCopy = cm;
  errCopy = err;
  v29 = v15;
  v30 = &v40;
  v35 = engine2;
  v31 = &v36;
  v18 = sub_10014811C(engine2, id, err, v28);
  v26 = (v18 & v41[3]);
  *(v41 + 24) &= v18;
  if (*(v37 + 24) != 1)
  {
    if (!v26)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_100251538(id, v19, v20, v21, v22, v23, v24, v25);
    v17 = *(v41 + 24);
    goto LABEL_12;
  }

  sub_10017E8CC();
  if (v41[3])
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
LABEL_12:
  v16 = v29;
LABEL_13:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

LABEL_14:
  return v17 & 1;
}

- (void)SOSTransportMessageUpdateRTTs:(id)ts
{
  tsCopy = ts;
  sOSTransportMessageGetAccount = [(SOSMessage *)self SOSTransportMessageGetAccount];
  v6 = sub_10020649C(sOSTransportMessageGetAccount, @"kSOSAccountPeerLastSentTimestamp");
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:tsCopy];
    if (v8)
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:v8];
      v11 = v10;
      v12 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v19 = tsCopy;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "peerID: %@ current date: %@, stored date: %@", buf, 0x20u);
      }

      v13 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v19) = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "rtt: %d", buf, 8u);
      }

      [(SOSMessage *)self SOSTransportMessageCalculateNextTimer:sOSTransportMessageGetAccount rtt:v11 peerid:tsCopy];
      secCoreAnalyticsValue = [NSNumber numberWithUnsignedInt:v11, SecCoreAnalyticsValue];
      v17 = secCoreAnalyticsValue;
      v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [SecCoreAnalytics sendEvent:@"com.apple.security.sos.messagertt" event:v15];

      [v7 removeObjectForKey:tsCopy];
      sub_100228C18(sOSTransportMessageGetAccount, @"kSOSAccountPeerLastSentTimestamp", v7, 0);
    }
  }
}

- (void)SOSTransportMessageCalculateNextTimer:(id)timer rtt:(int)rtt peerid:(id)peerid
{
  timerCopy = timer;
  peeridCopy = peerid;
  v9 = sub_10020649C(timerCopy, @"PeerNegotiationTimeouts");
  if (!v9)
  {
    v9 = +[NSMutableDictionary dictionary];
  }

  v10 = 2 * rtt;
  v11 = [v9 objectForKey:peeridCopy];
  v12 = v11;
  if (!v11 || (v13 = [v11 intValue], rtt > 1800) || v13 < v10)
  {
    if (v10 <= 60)
    {
      v14 = 60;
    }

    else
    {
      v14 = 2 * rtt;
    }

    if (v14 >= 3600)
    {
      v15 = 3600;
    }

    else
    {
      v15 = v14;
    }

    v16 = [[NSNumber alloc] initWithInt:v15];
    [v9 setObject:v16 forKey:peeridCopy];
    v17 = sub_100006274("otrtimer");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = peeridCopy;
      v20 = 1024;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "peerID: %@ New OTR RTT: %d", &v18, 0x12u);
    }

    sub_100228C18(timerCopy, @"PeerNegotiationTimeouts", v9, 0);
  }
}

- (BOOL)SOSTransportMessageSendMessage:(id)message id:(__CFString *)id messageToSend:(__CFData *)send err:(__CFError *)err
{
  messageCopy = message;
  v18 = sub_10001104C(kCFAllocatorDefault, v11, v12, v13, v14, v15, v16, v17, id, send);
  v19 = [(SOSMessage *)self SOSTransportMessageSendMessages:messageCopy pm:v18 err:err];

  if (v18)
  {
    CFRelease(v18);
  }

  return v19;
}

- (__CFString)SOSTransportMessageGetCircleName
{
  circleName = [(SOSMessage *)self circleName];

  return circleName;
}

- (void)SOSTransportMessageGetEngine
{
  if (![(SOSMessage *)self engine])
  {
    account = [(SOSMessage *)self account];
    factory = [account factory];
    circleName = [(SOSMessage *)self circleName];
    if (factory && (v6 = factory[1](factory, circleName, 0)) != 0)
    {
      v7 = *v6;
      (*(v6 + 72))(v6, 0);

      if (v7)
      {
        CFRetain(v7);
      }
    }

    else
    {

      v7 = 0;
    }

    [(SOSMessage *)self setEngine:v7];
  }

  return [(SOSMessage *)self engine];
}

- (void)dealloc
{
  engine = self->_engine;
  if (engine)
  {
    self->_engine = 0;
    CFRelease(engine);
  }

  v4.receiver = self;
  v4.super_class = SOSMessage;
  [(SOSMessage *)&v4 dealloc];
}

- (SOSMessage)initWithAccount:(id)account andName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SOSMessage;
  v9 = [(SOSMessage *)&v16 init];
  if (v9)
  {
    factory = [accountCopy factory];
    if (factory && (v11 = factory[1](factory, nameCopy, 0)) != 0)
    {
      v12 = *v11;
      (*(v11 + 72))(v11, 0);
      if (v12)
      {
        CFRetain(v12);
      }
    }

    else
    {
      v12 = 0;
    }

    v9->_engine = v12;
    objc_storeStrong(&v9->_account, account);
    v13 = [[NSString alloc] initWithString:nameCopy];
    circleName = v9->_circleName;
    v9->_circleName = v13;
  }

  return v9;
}

@end
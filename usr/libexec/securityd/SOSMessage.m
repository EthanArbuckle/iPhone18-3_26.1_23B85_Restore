@interface SOSMessage
- (BOOL)SOSTransportMessageHandlePeerMessage:(id)a3 id:(__CFString *)a4 cm:(__CFData *)a5 err:(__CFError *)a6;
- (BOOL)SOSTransportMessageSendMessage:(id)a3 id:(__CFString *)a4 messageToSend:(__CFData *)a5 err:(__CFError *)a6;
- (BOOL)SOSTransportMessageSendMessageIfNeeded:(id)a3 circleName:(__CFString *)a4 pID:(__CFString *)a5 err:(__CFError *)a6;
- (SOSMessage)initWithAccount:(id)a3 andName:(id)a4;
- (__CFString)SOSTransportMessageGetCircleName;
- (void)SOSTransportMessageCalculateNextTimer:(id)a3 rtt:(int)a4 peerid:(id)a5;
- (void)SOSTransportMessageGetEngine;
- (void)SOSTransportMessageUpdateLastMessageSentTimetstamp:(id)a3 peer:(__OpaqueSOSPeer *)a4;
- (void)SOSTransportMessageUpdateRTTs:(id)a3;
- (void)dealloc;
@end

@implementation SOSMessage

- (BOOL)SOSTransportMessageSendMessageIfNeeded:(id)a3 circleName:(__CFString *)a4 pID:(__CFString *)a5 err:(__CFError *)a6
{
  v8 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v9 = [v8 account];
  v10 = sub_100220920(v9);
  v11 = [v8 engine];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10023EEC8;
  v16[3] = &unk_100346920;
  v19 = &v23;
  v12 = v8;
  v17 = v12;
  v20 = a5;
  v21 = a6;
  v22 = v10;
  v13 = v9;
  v18 = v13;
  v14 = sub_10014811C(v11, a5, a6, v16);
  LOBYTE(a6) = v14 & v24[3];
  *(v24 + 24) = a6;

  _Block_object_dispose(&v23, 8);
  return a6;
}

- (void)SOSTransportMessageUpdateLastMessageSentTimetstamp:(id)a3 peer:(__OpaqueSOSPeer *)a4
{
  v8 = a3;
  v5 = sub_10020649C(v8, @"kSOSAccountPeerLastSentTimestamp");
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  v6 = [v5 objectForKey:*(a4 + 2)];

  if (!v6)
  {
    v7 = +[NSDate date];
    [v5 setObject:v7 forKey:*(a4 + 2)];

    sub_100228C18(v8, @"kSOSAccountPeerLastSentTimestamp", v5, 0);
  }
}

- (BOOL)SOSTransportMessageHandlePeerMessage:(id)a3 id:(__CFString *)a4 cm:(__CFData *)a5 err:(__CFError *)a6
{
  v10 = a3;
  [(SOSMessage *)self SOSTransportMessageUpdateRTTs:a4];
  v11 = [v10 engine];
  sub_100087E9C(v11 != 0, a6, @"Missing engine");
  if (!v11)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v12 = [v10 SOSTransportMessageGetAccount];
  v13 = [v10 engine];
  v14 = v12;
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
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v29 = v15;
  v30 = &v40;
  v35 = v13;
  v31 = &v36;
  v18 = sub_10014811C(v13, a4, a6, v28);
  v26 = (v18 & v41[3]);
  *(v41 + 24) &= v18;
  if (*(v37 + 24) != 1)
  {
    if (!v26)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_100251538(a4, v19, v20, v21, v22, v23, v24, v25);
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

- (void)SOSTransportMessageUpdateRTTs:(id)a3
{
  v4 = a3;
  v5 = [(SOSMessage *)self SOSTransportMessageGetAccount];
  v6 = sub_10020649C(v5, @"kSOSAccountPeerLastSentTimestamp");
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:v4];
    if (v8)
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:v8];
      v11 = v10;
      v12 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v19 = v4;
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

      [(SOSMessage *)self SOSTransportMessageCalculateNextTimer:v5 rtt:v11 peerid:v4];
      v14 = [NSNumber numberWithUnsignedInt:v11, SecCoreAnalyticsValue];
      v17 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [SecCoreAnalytics sendEvent:@"com.apple.security.sos.messagertt" event:v15];

      [v7 removeObjectForKey:v4];
      sub_100228C18(v5, @"kSOSAccountPeerLastSentTimestamp", v7, 0);
    }
  }
}

- (void)SOSTransportMessageCalculateNextTimer:(id)a3 rtt:(int)a4 peerid:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_10020649C(v7, @"PeerNegotiationTimeouts");
  if (!v9)
  {
    v9 = +[NSMutableDictionary dictionary];
  }

  v10 = 2 * a4;
  v11 = [v9 objectForKey:v8];
  v12 = v11;
  if (!v11 || (v13 = [v11 intValue], a4 > 1800) || v13 < v10)
  {
    if (v10 <= 60)
    {
      v14 = 60;
    }

    else
    {
      v14 = 2 * a4;
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
    [v9 setObject:v16 forKey:v8];
    v17 = sub_100006274("otrtimer");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 1024;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "peerID: %@ New OTR RTT: %d", &v18, 0x12u);
    }

    sub_100228C18(v7, @"PeerNegotiationTimeouts", v9, 0);
  }
}

- (BOOL)SOSTransportMessageSendMessage:(id)a3 id:(__CFString *)a4 messageToSend:(__CFData *)a5 err:(__CFError *)a6
{
  v10 = a3;
  v18 = sub_10001104C(kCFAllocatorDefault, v11, v12, v13, v14, v15, v16, v17, a4, a5);
  v19 = [(SOSMessage *)self SOSTransportMessageSendMessages:v10 pm:v18 err:a6];

  if (v18)
  {
    CFRelease(v18);
  }

  return v19;
}

- (__CFString)SOSTransportMessageGetCircleName
{
  v2 = [(SOSMessage *)self circleName];

  return v2;
}

- (void)SOSTransportMessageGetEngine
{
  if (![(SOSMessage *)self engine])
  {
    v3 = [(SOSMessage *)self account];
    v4 = [v3 factory];
    v5 = [(SOSMessage *)self circleName];
    if (v4 && (v6 = v4[1](v4, v5, 0)) != 0)
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

- (SOSMessage)initWithAccount:(id)a3 andName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SOSMessage;
  v9 = [(SOSMessage *)&v16 init];
  if (v9)
  {
    v10 = [v7 factory];
    if (v10 && (v11 = v10[1](v10, v8, 0)) != 0)
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
    objc_storeStrong(&v9->_account, a3);
    v13 = [[NSString alloc] initWithString:v8];
    circleName = v9->_circleName;
    v9->_circleName = v13;
  }

  return v9;
}

@end
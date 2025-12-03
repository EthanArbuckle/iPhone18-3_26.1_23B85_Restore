@interface MMTConnection
- (BOOL)sendMessage:(id)message;
- (MMTConnection)initWithLockdownConnection:(_lockdown_connection *)connection;
- (id)parseErrorFromResponse:(id)response;
- (id)receiveMessage;
- (void)executeNextCommand;
- (void)start;
@end

@implementation MMTConnection

- (MMTConnection)initWithLockdownConnection:(_lockdown_connection *)connection
{
  v20.receiver = self;
  v20.super_class = MMTConnection;
  v4 = [(MMTConnection *)&v20 init];
  if (v4)
  {
    v5 = [[DMCPowerAssertion alloc] initWithReason:@"mc_mobile_tunnel-MMTConnection"];
    powerAssertion = v4->_powerAssertion;
    v4->_powerAssertion = v5;

    v4->_lockdownConnection = connection;
    v7 = dispatch_queue_create("Work Queue", 0);
    workQueue = v4->_workQueue;
    v4->_workQueue = v7;

    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceTunnelIsSupervised", @"com.apple.managedconfiguration", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat && AppBooleanValue)
    {
      v10 = objc_opt_new();
      parser = v4->_parser;
      v4->_parser = v10;
    }

    else
    {
      v12 = objc_opt_new();
      v13 = v4->_parser;
      v4->_parser = v12;

      objc_initWeak(&location, v4);
      v14 = v4->_parser;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100001824;
      v16[3] = &unk_100010770;
      objc_copyWeak(&v17, &location);
      [(MDMAbstractTunnelParser *)v14 setEscalationBlock:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return v4;
}

- (void)start
{
  workQueue = [(MMTConnection *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001928;
  block[3] = &unk_100010798;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)receiveMessage
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 134217984;
    lockdownConnection = [(MMTConnection *)self lockdownConnection];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Receiving on lockdown connection: %p", buf, 0xCu);
  }

  [(MMTConnection *)self lockdownConnection];
  v5 = lockdown_recv();
  if (v5)
  {
    v6 = v5;
    if (v5 == 4)
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Message cannot be zero length", buf, 2u);
      }
    }

    else
    {
      v7 = *DMCLogObjects();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = __error();
        v10 = strerror(*v9);
        *buf = 134218242;
        lockdownConnection = v6;
        v15 = 2082;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not receive size of message: %ld %{public}s", buf, 0x16u);
      }
    }
  }

  return 0;
}

- (BOOL)sendMessage:(id)message
{
  messageCopy = message;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    lockdownConnection = [(MMTConnection *)self lockdownConnection];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending response on lockdown connection: %p", buf, 0xCu);
  }

  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(_lockdown_connection *)messageCopy objectForKeyedSubscript:@"Status"];
    *buf = 138543362;
    lockdownConnection = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending reply status: %{public}@", buf, 0xCu);
  }

  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    lockdownConnection = messageCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Sending message: %{private}@", buf, 0xCu);
  }

  if (messageCopy)
  {
    v25 = 0;
    v11 = [NSPropertyListSerialization dataWithPropertyList:messageCopy format:100 options:0 error:&v25];
    v12 = v25;
    if (!v11)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        lockdownConnection = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Cannot convert reply dictionary into PList: %{public}@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v13 = [v11 length];
    [(MMTConnection *)self lockdownConnection];
    if (lockdown_send() == 4)
    {
      [(MMTConnection *)self lockdownConnection];
      [v11 bytes];
      if (lockdown_send() == v13)
      {
        v14 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v21 = *DMCLogObjects();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v17 = v21;
        v22 = __error();
        v23 = strerror(*v22);
        *buf = 136446210;
        lockdownConnection = v23;
        v20 = "Could not send message: %{public}s";
        goto LABEL_19;
      }
    }

    else
    {
      v16 = *DMCLogObjects();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = __error();
        v19 = strerror(*v18);
        *buf = 136446210;
        lockdownConnection = v19;
        v20 = "Could not send message size: %{public}s";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      }
    }

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (id)parseErrorFromResponse:(id)response
{
  v3 = [response mutableCopy];
  v4 = kMCTPErrorObjectKey;
  v5 = [v3 objectForKeyedSubscript:kMCTPErrorObjectKey];
  if (v5)
  {
    [v3 setObject:0 forKeyedSubscript:v4];
    v6 = +[NSMutableData data];
    v21 = [[NSArchiver alloc] initForWritingWithMutableData:v6];
    [v21 encodeRootObject:v5];
    v24 = v3;
    v22 = v6;
    [v3 setObject:v6 forKeyedSubscript:@"CommandErrorArchive"];
    v7 = objc_opt_new();
    v23 = v5;
    v8 = v5;
    v9 = kMDMPErrorChainLocalizedDescriptionKey;
    v10 = kMDMPErrorChainErrorDomainKey;
    v11 = kMDMPErrorChainUSEnglishDescriptionKey;
    v12 = kMDMPErrorChainErrorCodeKey;
    do
    {
      v13 = [NSMutableDictionary dictionaryWithCapacity:4];
      userInfo = [v8 userInfo];
      localizedDescription = [v8 localizedDescription];
      [v13 setObject:localizedDescription forKeyedSubscript:v9];

      domain = [v8 domain];
      [v13 setObject:domain forKeyedSubscript:v10];

      dMCUSEnglishDescription = [v8 DMCUSEnglishDescription];
      [v13 setObject:dMCUSEnglishDescription forKeyedSubscript:v11];

      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      [v13 setObject:v18 forKeyedSubscript:v12];

      [v7 addObject:v13];
      v19 = [userInfo objectForKey:NSUnderlyingErrorKey];

      v8 = v19;
    }

    while (v19);
    v3 = v24;
    [v24 setObject:v7 forKeyedSubscript:kMDMPErrorChainKey];

    v5 = v23;
  }

  return v3;
}

- (void)executeNextCommand
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 134217984;
    lockdownConnection = [(MMTConnection *)self lockdownConnection];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Executing command from lockdown connection: %p", buf, 0xCu);
  }

  receiveMessage = [(MMTConnection *)self receiveMessage];
  if (byte_100014BC8)
  {
    goto LABEL_9;
  }

  if ((+[DMCMobileGestalt isAppleTV]& 1) != 0 || !DMIsMigrationNeeded())
  {
LABEL_8:
    byte_100014BC8 = 1;
LABEL_9:
    if (receiveMessage)
    {
      v6 = *DMCLogObjects();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = v6;
        v8 = [receiveMessage objectForKeyedSubscript:@"RequestType"];
        *buf = 138543362;
        lockdownConnection = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received request: %{public}@", buf, 0xCu);
      }

      parser = [(MMTConnection *)self parser];
      powerAssertion = [(MMTConnection *)self powerAssertion];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100002670;
      v12[3] = &unk_1000107C0;
      v12[4] = self;
      [parser processRequest:receiveMessage assertion:powerAssertion completionBlock:v12];
    }

    else
    {
      parser = +[MMTConnectionManager sharedInstance];
      [parser removeConnection:self];
    }

    goto LABEL_14;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    DMPerformMigrationIfNeeded();
    goto LABEL_8;
  }

  v11 = *DMCLogObjects();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Telling client to wait until preboard is finished.", buf, 2u);
  }

  [(MMTConnection *)self sendMessage:&off_100011408];
  parser = [(MMTConnection *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002668;
  block[3] = &unk_100010798;
  block[4] = self;
  dispatch_async(parser, block);
LABEL_14:
}

@end
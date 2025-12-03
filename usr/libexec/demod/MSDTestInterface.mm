@interface MSDTestInterface
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)getTimeStamp;
- (id)sanitizeTestLog:(id)log;
- (void)pushTestEvent:(id)event ofType:(id)type;
- (void)pushTestLog:(id)log;
- (void)sendCommandsToDemod:(id)demod replyFromDemod:(id)fromDemod;
- (void)sendTestEvents:(id)events;
- (void)start;
@end

@implementation MSDTestInterface

+ (id)sharedInstance
{
  if (qword_1001A5640 != -1)
  {
    sub_1000CC1BC();
  }

  v3 = qword_1001A5638;

  return v3;
}

- (void)start
{
  if (os_variant_has_internal_content())
  {
    v3 = dispatch_queue_create("com.apple.msdTestQueue", 0);
    [(MSDTestInterface *)self setTestQueue:v3];

    [(MSDTestInterface *)self setDefaultLogLevel:1];
  }

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.msdtest.service"];
  [(MSDTestInterface *)self setXpcListener:v4];

  xpcListener = [(MSDTestInterface *)self xpcListener];
  [xpcListener setDelegate:self];

  xpcListener2 = [(MSDTestInterface *)self xpcListener];
  [xpcListener2 resume];
}

- (id)getTimeStamp
{
  v2 = +[NSDate date];
  v3 = [v2 description];

  return v3;
}

- (void)pushTestEvent:(id)event ofType:(id)type
{
  typeCopy = type;
  eventCopy = event;
  v8 = +[NSNotificationCenter defaultCenter];
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:eventCopy, typeCopy, 0];

  [v8 postNotificationName:@"TestNotification" object:0 userInfo:v7];
}

- (void)sendTestEvents:(id)events
{
  eventsCopy = events;
  xpcConnection = [(MSDTestInterface *)self xpcConnection];

  if (xpcConnection)
  {
    testQueue = [(MSDTestInterface *)self testQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100025F0C;
    v7[3] = &unk_10016A258;
    v7[4] = self;
    v8 = eventsCopy;
    dispatch_async(testQueue, v7);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = connectionCopy;
    v15 = 1024;
    processIdentifier = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new connection.:%{public}@ procID:%d", &v13, 0x12u);
  }

  if (os_variant_has_internal_content())
  {
    v7 = [connectionCopy valueForEntitlement:@"com.apple.private.mobilestoredemo.testInterface"];
    v8 = v7;
    if (v7 && [v7 BOOLValue])
    {
      v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDSendTestCommand];
      [connectionCopy setExportedInterface:v9];

      [connectionCopy setExportedObject:self];
      v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDPushTestLog];
      [connectionCopy setRemoteObjectInterface:v10];
      [(MSDTestInterface *)self setXpcConnection:connectionCopy];
      [connectionCopy resume];
      v11 = 1;
    }

    else
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "client does not have entitlement.:%{public}@", &v13, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sendCommandsToDemod:(id)demod replyFromDemod:(id)fromDemod
{
  demodCopy = demod;
  fromDemodCopy = fromDemod;
  v8 = [demodCopy objectForKey:@"getNotifications"];
  if (v8)
  {
    v9 = v8;
    v10 = [demodCopy objectForKey:@"getNotifications"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      v13 = objc_alloc_init(NSOperationQueue);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000262C0;
      v19[3] = &unk_100169CE8;
      v19[4] = self;
      v14 = [v12 addObserverForName:@"TestNotification" object:0 queue:v13 usingBlock:v19];
    }
  }

  v15 = [demodCopy objectForKey:@"totalDownloadThreads"];

  if (v15)
  {
    v16 = +[MSDWorkQueueSet sharedInstance];
    operationQueue = [v16 operationQueue];
    v18 = [demodCopy objectForKey:@"totalDownloadThreads"];
    [operationQueue setMaxConcurrentOperationCount:{objc_msgSend(v18, "integerValue")}];
  }

  fromDemodCopy[2](fromDemodCopy, @"commands accepted");
}

- (void)pushTestLog:(id)log
{
  v4 = [(MSDTestInterface *)self sanitizeTestLog:log];
  if (v4)
  {
    v7 = v4;
    xpcConnection = [(MSDTestInterface *)self xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    [remoteObjectProxy pushTestLog:v7];

    v4 = v7;
  }
}

- (id)sanitizeTestLog:(id)log
{
  logCopy = log;
  v5 = [logCopy mutableCopy];
  v6 = [logCopy objectForKey:@"testLogLevel"];
  integerValue = [v6 integerValue];

  v8 = [logCopy objectForKey:@"testLogLevel"];

  if (v8 && (v9 = [(MSDTestInterface *)self defaultLogLevel], v8, integerValue <= v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

@end
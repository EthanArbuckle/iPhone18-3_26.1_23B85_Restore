@interface MSDTestInterface
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)getTimeStamp;
- (id)sanitizeTestLog:(id)a3;
- (void)pushTestEvent:(id)a3 ofType:(id)a4;
- (void)pushTestLog:(id)a3;
- (void)sendCommandsToDemod:(id)a3 replyFromDemod:(id)a4;
- (void)sendTestEvents:(id)a3;
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

  v5 = [(MSDTestInterface *)self xpcListener];
  [v5 setDelegate:self];

  v6 = [(MSDTestInterface *)self xpcListener];
  [v6 resume];
}

- (id)getTimeStamp
{
  v2 = +[NSDate date];
  v3 = [v2 description];

  return v3;
}

- (void)pushTestEvent:(id)a3 ofType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[NSNotificationCenter defaultCenter];
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v6, v5, 0];

  [v8 postNotificationName:@"TestNotification" object:0 userInfo:v7];
}

- (void)sendTestEvents:(id)a3
{
  v4 = a3;
  v5 = [(MSDTestInterface *)self xpcConnection];

  if (v5)
  {
    v6 = [(MSDTestInterface *)self testQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100025F0C;
    v7[3] = &unk_10016A258;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v5;
    v15 = 1024;
    v16 = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new connection.:%{public}@ procID:%d", &v13, 0x12u);
  }

  if (os_variant_has_internal_content())
  {
    v7 = [v5 valueForEntitlement:@"com.apple.private.mobilestoredemo.testInterface"];
    v8 = v7;
    if (v7 && [v7 BOOLValue])
    {
      v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDSendTestCommand];
      [v5 setExportedInterface:v9];

      [v5 setExportedObject:self];
      v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDPushTestLog];
      [v5 setRemoteObjectInterface:v10];
      [(MSDTestInterface *)self setXpcConnection:v5];
      [v5 resume];
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

- (void)sendCommandsToDemod:(id)a3 replyFromDemod:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"getNotifications"];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 objectForKey:@"getNotifications"];
    v11 = [v10 BOOLValue];

    if (v11)
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

  v15 = [v6 objectForKey:@"totalDownloadThreads"];

  if (v15)
  {
    v16 = +[MSDWorkQueueSet sharedInstance];
    v17 = [v16 operationQueue];
    v18 = [v6 objectForKey:@"totalDownloadThreads"];
    [v17 setMaxConcurrentOperationCount:{objc_msgSend(v18, "integerValue")}];
  }

  v7[2](v7, @"commands accepted");
}

- (void)pushTestLog:(id)a3
{
  v4 = [(MSDTestInterface *)self sanitizeTestLog:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(MSDTestInterface *)self xpcConnection];
    v6 = [v5 remoteObjectProxy];
    [v6 pushTestLog:v7];

    v4 = v7;
  }
}

- (id)sanitizeTestLog:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKey:@"testLogLevel"];
  v7 = [v6 integerValue];

  v8 = [v4 objectForKey:@"testLogLevel"];

  if (v8 && (v9 = [(MSDTestInterface *)self defaultLogLevel], v8, v7 <= v9))
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
@interface MSDPushService
+ (MSDPushService)sharedService;
- (MSDPushService)init;
- (id)_determinePushEnvironment;
- (void)_statConnectionWithEnvironment:(id)a3;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
@end

@implementation MSDPushService

- (MSDPushService)init
{
  v8.receiver = self;
  v8.super_class = MSDPushService;
  v2 = [(MSDPushService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MSDPushService", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;

    v9 = objc_opt_class();
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    consumers = v2->_consumers;
    v2->_consumers = v5;

    [(MSDPushService *)v2 _statConnectionWithEnvironment:0];
  }

  return v2;
}

+ (MSDPushService)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021E4C;
  block[3] = &unk_1000508C0;
  block[4] = a1;
  if (qword_100059AA0 != -1)
  {
    dispatch_once(&qword_100059AA0, block);
  }

  v2 = qword_100059A98;

  return v2;
}

- (void)dealloc
{
  [(APSConnection *)self->_connection shutdown];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = MSDPushService;
  [(MSDPushService *)&v4 dealloc];
}

- (void)_statConnectionWithEnvironment:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  connectionQueue = self->_connectionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021FA8;
  v7[3] = &unk_100051ED8;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(connectionQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)_determinePushEnvironment
{
  v2 = +[CKContainer MSDCloudKitContainer];
  v10 = 0;
  v3 = [v2 serverPreferredPushEnvironmentWithError:&v10];
  v4 = v10;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  if (!v5)
  {
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002281C(v4, v7);
    }

    v6 = APSEnvironmentProduction;
    if (v3)
    {
      v6 = v3;
    }
  }

  v8 = v6;

  return v8;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  v5 = sub_100030FE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 base64EncodedStringWithOptions:0];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did receive public token %@", &v7, 0xCu);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = sub_100030FE4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Did receive push notification %@", buf, 0xCu);
  }

  v7 = [v5 topic];
  v8 = [v7 isEqualToString:kAPSTopic];

  if (v8)
  {
    v9 = [v5 userInfo];
    v10 = sub_100030FE4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Receive push notification with info %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(MSDPushService *)self consumers];
    v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v14) handlePushNotification:v5];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = sub_100030FE4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection status changed %@ %d", &v7, 0x12u);
  }
}

@end
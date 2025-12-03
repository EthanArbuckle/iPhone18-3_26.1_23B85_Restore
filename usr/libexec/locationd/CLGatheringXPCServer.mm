@interface CLGatheringXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CLGatheringXPCServer)initWithQueue:(id)queue settings:(id)settings advStore:(id)store btClient:(id)client;
- (void)configure:(id)configure withCompletion:(id)completion;
- (void)fetchAdvertisementsDetailedWithCompletion:(id)completion;
- (void)fetchAdvertisementsWithCompletion:(id)completion;
@end

@implementation CLGatheringXPCServer

- (CLGatheringXPCServer)initWithQueue:(id)queue settings:(id)settings advStore:(id)store btClient:(id)client
{
  v13.receiver = self;
  v13.super_class = CLGatheringXPCServer;
  v10 = [(CLGatheringXPCServer *)&v13 init];
  if (v10)
  {
    v10->_queue = queue;
    v10->_advStore = store;
    v10->_btClient = client;
    v10->_settings = settings;
    v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.locationd.gathering"];
    v10->_listener = v11;
    [(NSXPCListener *)v11 setDelegate:v10];
    [(NSXPCListener *)v10->_listener _setQueue:v10->_queue];
    [(NSXPCListener *)v10->_listener activate];
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  if (connection)
  {
    v6 = [connection valueForEntitlement:@"com.apple.locationd.adpd_gathering"];
    if (!v6 || (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v7 BOOLValue] & 1) == 0)
    {
      processIdentifier = [connection processIdentifier];
      if (qword_1025D4720 != -1)
      {
        sub_101954984();
      }

      v9 = qword_1025D4728;
      if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 1026;
        v22 = processIdentifier;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:process is not entitled to use CLLocationManagerGathering, pid:%{public}d}", buf, 0x18u);
        if (qword_1025D4720 != -1)
        {
          sub_101954A80();
        }
      }

      v10 = qword_1025D4728;
      if (os_signpost_enabled(qword_1025D4728))
      {
        *buf = 68289282;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 1026;
        v22 = processIdentifier;
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "process is not entitled to use CLLocationManagerGathering", "{msg%{public}.0s:process is not entitled to use CLLocationManagerGathering, pid:%{public}d}", buf, 0x18u);
      }
    }

    [connection setInterruptionHandler:&stru_102476850];
    [connection setInvalidationHandler:&stru_102476870];
    [connection setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___CLLocationManagerGatheringServerInterface)}];
    exportedInterface = [connection exportedInterface];
    v12 = objc_opt_class();
    [exportedInterface setClasses:+[NSSet setWithObjects:](NSSet forSelector:"setWithObjects:" argumentIndex:v12 ofReply:{objc_opt_class(), 0), "fetchAdvertisementsWithCompletion:", 0, 1}];
    exportedInterface2 = [connection exportedInterface];
    v14 = objc_opt_class();
    [exportedInterface2 setClasses:+[NSSet setWithObjects:](NSSet forSelector:"setWithObjects:" argumentIndex:v14 ofReply:{objc_opt_class(), 0), "fetchAdvertisementsDetailedWithCompletion:", 0, 1}];
    [connection setExportedObject:self];
    [connection activate];
  }

  else
  {
    if (qword_1025D4720 != -1)
    {
      sub_101954984();
    }

    v15 = qword_1025D4728;
    if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Why didn't we get a connection?", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101954998();
    }
  }

  return connection != 0;
}

- (void)fetchAdvertisementsWithCompletion:(id)completion
{
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v5 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "fetching advertisements history", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954C60();
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100845AB4;
  v7[3] = &unk_102476898;
  v7[4] = self;
  v7[5] = completion;
  dispatch_async(queue, v7);
}

- (void)fetchAdvertisementsDetailedWithCompletion:(id)completion
{
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v5 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "fetching detailed advertisements history", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954E54();
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100845CBC;
  v7[3] = &unk_102476898;
  v7[4] = self;
  v7[5] = completion;
  dispatch_async(queue, v7);
}

- (void)configure:(id)configure withCompletion:(id)completion
{
  var0 = configure.var0;
  var1 = configure.var1;
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v8 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v14 = var0;
    v15 = 1024;
    v16 = var1;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "configure with adv: %d scan: %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954F30(var0, var1);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008460B8;
  block[3] = &unk_10244FB18;
  block[4] = self;
  block[5] = completion;
  v11 = var0;
  v12 = var1;
  dispatch_async(queue, block);
}

@end
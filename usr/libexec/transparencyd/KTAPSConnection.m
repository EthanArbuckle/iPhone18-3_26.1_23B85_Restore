@interface KTAPSConnection
- (KTAPSConnection)initWithNamedDelegatePort:(id)a3 apsConnectionClass:(Class)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)registerPushReceiver:(id)a3;
@end

@implementation KTAPSConnection

- (KTAPSConnection)initWithNamedDelegatePort:(id)a3 apsConnectionClass:(Class)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = KTAPSConnection;
  v7 = [(KTAPSConnection *)&v24 init];
  v8 = v7;
  if (v7)
  {
    [(KTAPSConnection *)v7 setNamedDelegatePort:v6];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("aps-queue", v9);
    [(KTAPSConnection *)v8 setQueue:v10];

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("aps-delivery-queue", v11);
    [(KTAPSConnection *)v8 setDeliveryQueue:v12];

    v13 = [(objc_class *)a4 alloc];
    v14 = APSEnvironmentProduction;
    v15 = [(KTAPSConnection *)v8 queue];
    v16 = [(objc_class *)v13 initWithEnvironmentName:v14 namedDelegatePort:v6 queue:v15];
    [(KTAPSConnection *)v8 setApsConnection:v16];

    v17 = [(KTAPSConnection *)v8 apsConnection];
    [v17 setDelegate:v8];

    v18 = os_log_create("com.apple.Transparency", "KTAPSConnection");
    [(KTAPSConnection *)v8 setLog:v18];

    v25 = @"com.apple.icloud-container.com.apple.transparencyd";
    v19 = [NSArray arrayWithObjects:&v25 count:1];
    v20 = [(KTAPSConnection *)v8 apsConnection];
    [v20 _setEnabledTopics:v19];

    v21 = +[NSMutableArray array];
    [(KTAPSConnection *)v8 setReceivers:v21];

    v22 = v8;
  }

  return v8;
}

- (void)registerPushReceiver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(KTAPSConnection *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020CCE4;
  v7[3] = &unk_1003174D8;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 copy];

  v8 = [(KTAPSConnection *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 token];
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didReceiveIncomingMessage: %@: userInfo: %@", buf, 0x16u);
  }

  v10 = [(KTAPSConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020CF5C;
  block[3] = &unk_10031E018;
  block[4] = self;
  v14 = v5;
  v15 = v7;
  v11 = v7;
  v12 = v5;
  dispatch_async(v10, block);
}

@end
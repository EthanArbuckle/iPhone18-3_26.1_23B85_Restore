@interface KTAPSConnection
- (KTAPSConnection)initWithNamedDelegatePort:(id)port apsConnectionClass:(Class)class;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)registerPushReceiver:(id)receiver;
@end

@implementation KTAPSConnection

- (KTAPSConnection)initWithNamedDelegatePort:(id)port apsConnectionClass:(Class)class
{
  portCopy = port;
  v24.receiver = self;
  v24.super_class = KTAPSConnection;
  v7 = [(KTAPSConnection *)&v24 init];
  v8 = v7;
  if (v7)
  {
    [(KTAPSConnection *)v7 setNamedDelegatePort:portCopy];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("aps-queue", v9);
    [(KTAPSConnection *)v8 setQueue:v10];

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("aps-delivery-queue", v11);
    [(KTAPSConnection *)v8 setDeliveryQueue:v12];

    v13 = [(objc_class *)class alloc];
    v14 = APSEnvironmentProduction;
    queue = [(KTAPSConnection *)v8 queue];
    v16 = [(objc_class *)v13 initWithEnvironmentName:v14 namedDelegatePort:portCopy queue:queue];
    [(KTAPSConnection *)v8 setApsConnection:v16];

    apsConnection = [(KTAPSConnection *)v8 apsConnection];
    [apsConnection setDelegate:v8];

    v18 = os_log_create("com.apple.Transparency", "KTAPSConnection");
    [(KTAPSConnection *)v8 setLog:v18];

    v25 = @"com.apple.icloud-container.com.apple.transparencyd";
    v19 = [NSArray arrayWithObjects:&v25 count:1];
    apsConnection2 = [(KTAPSConnection *)v8 apsConnection];
    [apsConnection2 _setEnabledTopics:v19];

    v21 = +[NSMutableArray array];
    [(KTAPSConnection *)v8 setReceivers:v21];

    v22 = v8;
  }

  return v8;
}

- (void)registerPushReceiver:(id)receiver
{
  receiverCopy = receiver;
  objc_initWeak(&location, self);
  queue = [(KTAPSConnection *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020CCE4;
  v7[3] = &unk_1003174D8;
  objc_copyWeak(&v10, &location);
  v8 = receiverCopy;
  selfCopy = self;
  v6 = receiverCopy;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v7 = [userInfo copy];

  v8 = [(KTAPSConnection *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    token = [messageCopy token];
    *buf = 138412546;
    v17 = token;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didReceiveIncomingMessage: %@: userInfo: %@", buf, 0x16u);
  }

  queue = [(KTAPSConnection *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020CF5C;
  block[3] = &unk_10031E018;
  block[4] = self;
  v14 = messageCopy;
  v15 = v7;
  v11 = v7;
  v12 = messageCopy;
  dispatch_async(queue, block);
}

@end
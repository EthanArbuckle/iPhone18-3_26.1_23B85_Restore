@interface InPocketMonitor
+ (InPocketMonitor)initWithQueue:(id)queue;
- (InPocketMonitor)initWithQueue:(id)queue;
- (void)addDelegate:(id)delegate;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation InPocketMonitor

+ (InPocketMonitor)initWithQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011298;
  block[3] = &unk_10002C738;
  queueCopy = queue;
  v3 = qword_100036C58;
  v4 = queueCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_100036C58, block);
  }

  v5 = qword_100036C60;
  v6 = qword_100036C60;

  return v5;
}

- (InPocketMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = InPocketMonitor;
  v6 = [(InPocketMonitor *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = os_log_create("com.apple.powerexperienced", "inpocketmonitor");
    log = v7->_log;
    v7->_log = v8;

    v10 = +[NSMutableArray array];
    delegates = v7->_delegates;
    v7->_delegates = v10;

    v12 = [[CMSuppressionManager alloc] initWithClientType:0];
    suppresionManager = v7->_suppresionManager;
    v7->_suppresionManager = v12;
  }

  return v7;
}

- (void)startMonitoring
{
  v3 = [(InPocketMonitor *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startMonitoring", buf, 2u);
  }

  if ([CMSuppressionEvent instancesRespondToSelector:"facedownState"])
  {
    v4 = 24;
  }

  else
  {
    v4 = 8;
  }

  v5 = objc_alloc_init(NSOperationQueue);
  suppressionQueue = self->_suppressionQueue;
  self->_suppressionQueue = v5;

  queue = [(InPocketMonitor *)self queue];
  [(NSOperationQueue *)self->_suppressionQueue setUnderlyingQueue:queue];

  [(NSOperationQueue *)self->_suppressionQueue setMaxConcurrentOperationCount:1];
  suppresionManager = self->_suppresionManager;
  v9 = self->_suppressionQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000114EC;
  v10[3] = &unk_10002CAC0;
  v10[4] = self;
  [(CMSuppressionManager *)suppresionManager startSuppressionUpdatesToQueue:v9 withOptions:v4 withHandler:v10];
}

- (void)stopMonitoring
{
  v3 = [(InPocketMonitor *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop monitoring", v4, 2u);
  }

  [(CMSuppressionManager *)self->_suppresionManager stopSuppressionUpdates];
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    delegates = [(InPocketMonitor *)self delegates];
    [delegates addObject:delegateCopy];
  }
}

@end
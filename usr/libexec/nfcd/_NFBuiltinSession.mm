@interface _NFBuiltinSession
+ (id)createSession:(id)session workQueue:(id)queue routing:(id)routing sessionQueuer:(id)queuer didStartWork:(id)work;
+ (void)createSession:(id)session workQueue:(id)queue routing:(id)routing sessionQueuer:(id)queuer didStartWork:(id)work failedToStart:(id)start;
- (BOOL)isSessionSEOnly;
- (_NFBuiltinSession)initWithName:(id)name workQueue:(id)queue routing:(id)routing sessionQueuer:(id)queuer didStartWork:(id)work failedToStart:(id)start;
- (void)didStartSession:(id)session;
@end

@implementation _NFBuiltinSession

- (_NFBuiltinSession)initWithName:(id)name workQueue:(id)queue routing:(id)routing sessionQueuer:(id)queuer didStartWork:(id)work failedToStart:(id)start
{
  nameCopy = name;
  routingCopy = routing;
  queuerCopy = queuer;
  workCopy = work;
  startCopy = start;
  v28.receiver = self;
  v28.super_class = _NFBuiltinSession;
  v19 = [(_NFSession *)&v28 initWithWorkQueue:queue allowsBackgroundMode:1];
  v20 = v19;
  if (v19)
  {
    v27.receiver = v19;
    v27.super_class = _NFBuiltinSession;
    [(_NFSession *)&v27 setQueue:queuerCopy];
    objc_storeStrong(&v20->_initialRoute, routing);
    v21 = objc_retainBlock(workCopy);
    workBlock = v20->_workBlock;
    v20->_workBlock = v21;

    v23 = objc_retainBlock(startCopy);
    failureWorkBlock = v20->_failureWorkBlock;
    v20->_failureWorkBlock = v23;

    v26.receiver = v20;
    v26.super_class = _NFBuiltinSession;
    [(_NFSession *)&v26 setCustomSessionName:nameCopy];
    v20->_endAfterWorkBlock = 1;
  }

  return v20;
}

+ (id)createSession:(id)session workQueue:(id)queue routing:(id)routing sessionQueuer:(id)queuer didStartWork:(id)work
{
  queuerCopy = queuer;
  workCopy = work;
  routingCopy = routing;
  queueCopy = queue;
  sessionCopy = session;
  v17 = [[_NFBuiltinSession alloc] initWithName:sessionCopy workQueue:queueCopy routing:routingCopy sessionQueuer:queuerCopy didStartWork:workCopy failedToStart:0];

  if (v17)
  {
    [queuerCopy queueSession:v17];
    v18 = 0;
  }

  else
  {
    v19 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v26[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Unknown Error"];
    v27[0] = v21;
    v27[1] = &off_100330D80;
    v26[1] = @"Line";
    v26[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v27[2] = v22;
    v26[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 62];
    v27[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
    v18 = [v19 initWithDomain:v20 code:6 userInfo:v24];
  }

  return v18;
}

+ (void)createSession:(id)session workQueue:(id)queue routing:(id)routing sessionQueuer:(id)queuer didStartWork:(id)work failedToStart:(id)start
{
  queuerCopy = queuer;
  startCopy = start;
  workCopy = work;
  routingCopy = routing;
  queueCopy = queue;
  sessionCopy = session;
  v20 = [[_NFBuiltinSession alloc] initWithName:sessionCopy workQueue:queueCopy routing:routingCopy sessionQueuer:queuerCopy didStartWork:workCopy failedToStart:startCopy];

  if (v20)
  {
    [queuerCopy queueSession:v20];
  }

  else
  {
    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v28[0] = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Unknown Error"];
    v29[0] = v23;
    v29[1] = &off_100330D98;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v29[2] = v24;
    v28[3] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 85];
    v29[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
    v27 = [v21 initWithDomain:v22 code:6 userInfo:v26];
    startCopy[2](startCopy, v27);
  }
}

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = _NFBuiltinSession;
  if ([(_NFSession *)&v10 didStart]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v12 = sessionCopy;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Session already started with error %@ ??", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = _NFBuiltinSession;
  [(_NFSession *)&v9 didStartSession:sessionCopy];
  if (sessionCopy)
  {
    failureWorkBlock = self->_failureWorkBlock;
    if (failureWorkBlock)
    {
      failureWorkBlock[2](failureWorkBlock, sessionCopy);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _NFBuiltinSession;
    workQueue = [(_NFSession *)&v8 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A659C;
    block[3] = &unk_100315F30;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (BOOL)isSessionSEOnly
{
  if ([(NFRoutingConfig *)self->_initialRoute wantsCardEmulation]|| [(NFRoutingConfig *)self->_initialRoute wantsReader]|| [(NFRoutingConfig *)self->_initialRoute wantsLPCD]|| [(NFRoutingConfig *)self->_initialRoute wantsIsoDepToHost]|| [(NFRoutingConfig *)self->_initialRoute wantsMultiTag])
  {
    return 0;
  }

  else
  {
    return ![(NFRoutingConfig *)self->_initialRoute fdOn];
  }
}

@end
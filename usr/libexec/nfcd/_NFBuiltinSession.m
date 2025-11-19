@interface _NFBuiltinSession
+ (id)createSession:(id)a3 workQueue:(id)a4 routing:(id)a5 sessionQueuer:(id)a6 didStartWork:(id)a7;
+ (void)createSession:(id)a3 workQueue:(id)a4 routing:(id)a5 sessionQueuer:(id)a6 didStartWork:(id)a7 failedToStart:(id)a8;
- (BOOL)isSessionSEOnly;
- (_NFBuiltinSession)initWithName:(id)a3 workQueue:(id)a4 routing:(id)a5 sessionQueuer:(id)a6 didStartWork:(id)a7 failedToStart:(id)a8;
- (void)didStartSession:(id)a3;
@end

@implementation _NFBuiltinSession

- (_NFBuiltinSession)initWithName:(id)a3 workQueue:(id)a4 routing:(id)a5 sessionQueuer:(id)a6 didStartWork:(id)a7 failedToStart:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = _NFBuiltinSession;
  v19 = [(_NFSession *)&v28 initWithWorkQueue:a4 allowsBackgroundMode:1];
  v20 = v19;
  if (v19)
  {
    v27.receiver = v19;
    v27.super_class = _NFBuiltinSession;
    [(_NFSession *)&v27 setQueue:v16];
    objc_storeStrong(&v20->_initialRoute, a5);
    v21 = objc_retainBlock(v17);
    workBlock = v20->_workBlock;
    v20->_workBlock = v21;

    v23 = objc_retainBlock(v18);
    failureWorkBlock = v20->_failureWorkBlock;
    v20->_failureWorkBlock = v23;

    v26.receiver = v20;
    v26.super_class = _NFBuiltinSession;
    [(_NFSession *)&v26 setCustomSessionName:v14];
    v20->_endAfterWorkBlock = 1;
  }

  return v20;
}

+ (id)createSession:(id)a3 workQueue:(id)a4 routing:(id)a5 sessionQueuer:(id)a6 didStartWork:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[_NFBuiltinSession alloc] initWithName:v16 workQueue:v15 routing:v14 sessionQueuer:v12 didStartWork:v13 failedToStart:0];

  if (v17)
  {
    [v12 queueSession:v17];
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

+ (void)createSession:(id)a3 workQueue:(id)a4 routing:(id)a5 sessionQueuer:(id)a6 didStartWork:(id)a7 failedToStart:(id)a8
{
  v14 = a6;
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[_NFBuiltinSession alloc] initWithName:v19 workQueue:v18 routing:v17 sessionQueuer:v14 didStartWork:v16 failedToStart:v15];

  if (v20)
  {
    [v14 queueSession:v20];
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
    v15[2](v15, v27);
  }
}

- (void)didStartSession:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _NFBuiltinSession;
  if ([(_NFSession *)&v10 didStart]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Session already started with error %@ ??", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = _NFBuiltinSession;
  [(_NFSession *)&v9 didStartSession:v4];
  if (v4)
  {
    failureWorkBlock = self->_failureWorkBlock;
    if (failureWorkBlock)
    {
      failureWorkBlock[2](failureWorkBlock, v4);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _NFBuiltinSession;
    v6 = [(_NFSession *)&v8 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A659C;
    block[3] = &unk_100315F30;
    block[4] = self;
    dispatch_async(v6, block);
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
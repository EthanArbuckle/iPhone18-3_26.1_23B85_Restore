@interface MLRServiceConnection
- (MLRServiceConnection)initWithXPCConnection:(id)a3;
- (void)donateJSONResult:(id)a3 identifier:(id)a4 completion:(id)a5;
@end

@implementation MLRServiceConnection

- (MLRServiceConnection)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MLRServiceConnection;
  v5 = [(MLRServiceConnection *)&v17 init];
  if (v5)
  {
    v6 = +[NSProcessInfo processInfo];
    [v6 systemUptime];
    v5->_connectionStartTime = v7;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("MLRServiceConnection", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    [v4 _setQueue:v5->_queue];
    objc_storeWeak(&v5->_connection, v4);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000019C0;
    v15[3] = &unk_100008418;
    v11 = v5;
    v16 = v11;
    v12 = objc_retainBlock(v15);
    [v4 setInterruptionHandler:v12];
    [v4 setInvalidationHandler:v12];
    v13 = v11;
  }

  return v5;
}

- (void)donateJSONResult:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v12 = [DESServiceAccess hasMLRCtlEntitlement:WeakRetained];

  if (v12)
  {
    v13 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100001DB4(v8, v9, v13);
    }

    v14 = [[MLRTrialDediscoTaskResult alloc] initWithJSONResult:v8 identifier:v9];
    if (!v14)
    {
      v17 = kDESDistributedEvaluationErrorDomain;
      v21 = NSLocalizedDescriptionKey;
      v16 = [NSString stringWithFormat:@"Unknown identifier = %@", v9];
      v22 = v16;
      v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v19 = [NSError errorWithDomain:v17 code:1303 userInfo:v18];
      v10[2](v10, v19);

      goto LABEL_8;
    }

    v15 = [TRIClient clientWithIdentifier:280];
    v20 = 0;
    [v14 submitWithTRIClient:v15 error:&v20];
    v16 = v20;
  }

  else
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"donateJSONResult may only be called by internal tool.";
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v14];
  }

  v10[2](v10, v16);
LABEL_8:
}

@end
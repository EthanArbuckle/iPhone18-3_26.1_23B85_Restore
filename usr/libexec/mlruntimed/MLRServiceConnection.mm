@interface MLRServiceConnection
- (MLRServiceConnection)initWithXPCConnection:(id)connection;
- (void)donateJSONResult:(id)result identifier:(id)identifier completion:(id)completion;
@end

@implementation MLRServiceConnection

- (MLRServiceConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
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

    [connectionCopy _setQueue:v5->_queue];
    objc_storeWeak(&v5->_connection, connectionCopy);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000019C0;
    v15[3] = &unk_100008418;
    v11 = v5;
    v16 = v11;
    v12 = objc_retainBlock(v15);
    [connectionCopy setInterruptionHandler:v12];
    [connectionCopy setInvalidationHandler:v12];
    v13 = v11;
  }

  return v5;
}

- (void)donateJSONResult:(id)result identifier:(id)identifier completion:(id)completion
{
  resultCopy = result;
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v12 = [DESServiceAccess hasMLRCtlEntitlement:WeakRetained];

  if (v12)
  {
    v13 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100001DB4(resultCopy, identifierCopy, v13);
    }

    v14 = [[MLRTrialDediscoTaskResult alloc] initWithJSONResult:resultCopy identifier:identifierCopy];
    if (!v14)
    {
      v17 = kDESDistributedEvaluationErrorDomain;
      v21 = NSLocalizedDescriptionKey;
      identifierCopy = [NSString stringWithFormat:@"Unknown identifier = %@", identifierCopy];
      v22 = identifierCopy;
      v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v19 = [NSError errorWithDomain:v17 code:1303 userInfo:v18];
      completionCopy[2](completionCopy, v19);

      goto LABEL_8;
    }

    v15 = [TRIClient clientWithIdentifier:280];
    v20 = 0;
    [v14 submitWithTRIClient:v15 error:&v20];
    identifierCopy = v20;
  }

  else
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"donateJSONResult may only be called by internal tool.";
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    identifierCopy = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v14];
  }

  completionCopy[2](completionCopy, identifierCopy);
LABEL_8:
}

@end
@interface KTResultOperation
+ (id)named:(id)a3 withBlock:(id)a4;
+ (id)named:(id)a3 withBlockTakingSelf:(id)a4;
+ (id)operationWithBlock:(id)a3;
- (BOOL)allDependentsSuccessful;
- (BOOL)allSuccessful:(id)a3;
- (KTResultOperation)init;
- (id)_onqueueTimeoutError;
- (id)dependenciesDescriptionError;
- (id)description;
- (id)descriptionError;
- (id)operationStateString;
- (id)timeout:(unint64_t)a3;
- (void)addNullableSuccessDependency:(id)a3;
- (void)invalidateTimeout;
- (void)setCompletionBlock:(id)a3;
- (void)start;
@end

@implementation KTResultOperation

- (void)start
{
  if ([(KTResultOperation *)self allDependentsSuccessful])
  {
    [(KTResultOperation *)self invalidateTimeout];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [(KTResultOperation *)self error];
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not running due to some failed dependent: %@", buf, 0xCu);
    }

    [(KTResultOperation *)self cancel];
  }

  v4.receiver = self;
  v4.super_class = KTResultOperation;
  [(KTResultOperation *)&v4 start];
}

- (BOOL)allDependentsSuccessful
{
  v2 = self;
  v3 = [(KTResultOperation *)self successDependencies];
  LOBYTE(v2) = [(KTResultOperation *)v2 allSuccessful:v3];

  return v2;
}

- (void)invalidateTimeout
{
  v3 = [(KTResultOperation *)self timeoutQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025EC;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (KTResultOperation)init
{
  v20.receiver = self;
  v20.super_class = KTResultOperation;
  v2 = [(KTResultOperation *)&v20 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    error = v2->_error;
    v2->_error = 0;

    v4 = objc_alloc_init(NSMutableArray);
    successDependencies = v2->_successDependencies;
    v2->_successDependencies = v4;

    v2->_timeoutCanOccur = 1;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("result-operation-timeout", v6);
    timeoutQueue = v2->_timeoutQueue;
    v2->_timeoutQueue = v7;

    v9 = objc_alloc_init(KTCondition);
    completionHandlerDidRunCondition = v2->_completionHandlerDidRunCondition;
    v2->_completionHandlerDidRunCondition = v9;

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000026A8;
    v17 = &unk_1003175E0;
    objc_copyWeak(&v18, &location);
    v11 = objc_retainBlock(&v14);
    finishingBlock = v2->_finishingBlock;
    v2->_finishingBlock = v11;

    [(KTResultOperation *)v2 setCompletionBlock:&stru_10032C4E8, v14, v15, v16, v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)operationStateString
{
  if (([(KTResultOperation *)self isFinished]& 1) != 0)
  {
    v3 = [(KTResultOperation *)self finishDate];
    v4 = [NSString stringWithFormat:@"finished %@", v3];
  }

  else
  {
    if (([(KTResultOperation *)self isCancelled]& 1) != 0)
    {
      v5 = @"cancelled";
    }

    else if (([(KTResultOperation *)self isExecuting]& 1) != 0)
    {
      v5 = @"executing";
    }

    else
    {
      v6 = [(KTResultOperation *)self isReady];
      v5 = @"pending";
      if (v6)
      {
        v5 = @"ready";
      }
    }

    v4 = v5;
  }

  return v4;
}

- (id)description
{
  v3 = [(KTResultOperation *)self operationStateString];
  off_10038BB38();
  v5 = v4;
  v6 = *v4 + 1;
  *v4 = v6;
  if (v6 < 0xB)
  {
    v9 = [(KTResultOperation *)self error];

    v7 = [(KTResultOperation *)self selfname];
    if (v9)
    {
      v10 = [(KTResultOperation *)self error];
      [NSString stringWithFormat:@"<%@: %@ error:%@>", v7, v3, v10];
    }

    else
    {
      v10 = [(KTResultOperation *)self pendingDependenciesString:@" dep:"];
      [NSString stringWithFormat:@"<%@: %@%@>", v7, v3, v10];
    }
    v8 = ;
  }

  else
  {
    v7 = [(KTResultOperation *)self selfname];
    v8 = [NSString stringWithFormat:@"<%@: %@ recursion>", v7, v3];
  }

  --*v5;

  return v8;
}

- (void)setCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10023643C;
  v7[3] = &unk_10031BD50;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = KTResultOperation;
  [(KTResultOperation *)&v6 setCompletionBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)dependenciesDescriptionError
{
  v2 = [(KTResultOperation *)self dependencies];
  v3 = [v2 copy];

  v4 = [v3 indexesOfObjectsPassingTest:&stru_10032C528];
  v5 = [v3 objectsAtIndexes:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 descriptionError];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v9;
          }

          v17 = v16;

          v9 = v17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)descriptionError
{
  off_10038BB50();
  v4 = v3;
  ++*v3;
  if ([(KTResultOperation *)self descriptionErrorCode])
  {
    v5 = [NSError errorWithDomain:@"KTResultOperationDescriptionError" code:[(KTResultOperation *)self descriptionErrorCode] userInfo:0];
  }

  else
  {
    if (*v4 < 0xBu)
    {
      [(KTResultOperation *)self dependenciesDescriptionError];
    }

    else
    {
      [NSError errorWithDomain:@"KTResultOperationDescriptionError" code:-1 description:@"Excess recursion"];
    }
    v5 = ;
  }

  --*v4;

  return v5;
}

- (id)_onqueueTimeoutError
{
  v3 = [(KTResultOperation *)self timeoutQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(KTResultOperation *)self descriptionError];
  v5 = [(KTResultOperation *)self selfname];
  v6 = [(KTResultOperation *)self pendingDependenciesString:&stru_10032E8E8];
  v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for [%@]", v5, v6];
  v8 = [NSError errorWithDomain:@"KTResultOperationError" code:3 description:v7 underlying:v4];

  return v8;
}

- (id)timeout:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, a3);
  v6 = [(KTResultOperation *)self timeoutQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100236A7C;
  v8[3] = &unk_1003175E0;
  objc_copyWeak(&v9, &location);
  dispatch_after(v5, v6, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return self;
}

- (void)addNullableSuccessDependency:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(KTResultOperation *)v4 successDependencies];
    [v5 addObject:v6];

    [(KTResultOperation *)v4 addDependency:v6];
    objc_sync_exit(v4);
  }
}

- (BOOL)allSuccessful:(id)a3
{
  v4 = a3;
  v32 = self;
  objc_sync_enter(v32);
  v30 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  v29 = v6 == 0;
  obj = v5;
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  v33 = *v38;
  do
  {
    v34 = v6;
    for (i = 0; i != v34; i = i + 1)
    {
      if (*v38 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v37 + 1) + 8 * i);
      v36 = [v11 isFinished];
      v35 = [v11 isCancelled];
      v12 = [v11 error];
      v13 = v12 != 0;

      if ([v11 isCancelled])
      {
        [v30 addObject:v11];
      }

      v14 = [v11 error];
      v15 = v14 == 0;

      if (!v15)
      {
        v16 = [v11 error];
        v17 = [v16 domain];
        if ([v17 isEqual:@"KTResultOperationError"])
        {
          v18 = [v11 error];
          v19 = [v18 code] == 1;

          if (v19)
          {
            v20 = [v11 error];
            [(KTResultOperation *)v32 setError:v20];
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
        }

        v20 = +[NSMutableDictionary dictionary];
        v21 = [v11 name];
        [v20 setObject:v21 forKeyedSubscript:@"op"];

        v22 = [v11 error];
        v23 = [NSError errorWithDomain:@"KTResultOperationError" code:1 userInfo:v20 description:@"Success-dependent operation failed" underlying:v22];
        [(KTResultOperation *)v32 setError:v23];

        goto LABEL_14;
      }

LABEL_15:
      v9 &= v36;
      v7 |= v35;
      v8 |= v13;
    }

    v6 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  }

  while (v6);

  if (!(v7 & 1 | ((v9 & 1) == 0) | v8 & 1))
  {
    v29 = 1;
    goto LABEL_23;
  }

  v24 = [(KTResultOperation *)v32 error];
  v25 = v24 == 0;

  if (v25)
  {
    v41 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Operation (%@) cancelled", v30];
    v42 = v5;
    v26 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v27 = [NSError errorWithDomain:@"KTResultOperationError" code:2 userInfo:v26];
    [(KTResultOperation *)v32 setError:v27];

LABEL_22:
    goto LABEL_23;
  }

  v29 = 0;
LABEL_23:

  objc_sync_exit(v32);
  return v29;
}

+ (id)operationWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 addExecutionBlock:v4];

  return v5;
}

+ (id)named:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = [a1 operationWithBlock:a4];
  [v7 setName:v6];

  return v7;
}

+ (id)named:(id)a3 withBlockTakingSelf:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10023717C;
  v11[3] = &unk_10031BD50;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  [v8 addExecutionBlock:v11];
  [v8 setName:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

@end
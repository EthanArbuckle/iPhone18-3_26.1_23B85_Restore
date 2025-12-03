@interface KTResultOperation
+ (id)named:(id)named withBlock:(id)block;
+ (id)named:(id)named withBlockTakingSelf:(id)self;
+ (id)operationWithBlock:(id)block;
- (BOOL)allDependentsSuccessful;
- (BOOL)allSuccessful:(id)successful;
- (KTResultOperation)init;
- (id)_onqueueTimeoutError;
- (id)dependenciesDescriptionError;
- (id)description;
- (id)descriptionError;
- (id)operationStateString;
- (id)timeout:(unint64_t)timeout;
- (void)addNullableSuccessDependency:(id)dependency;
- (void)invalidateTimeout;
- (void)setCompletionBlock:(id)block;
- (void)start;
@end

@implementation KTResultOperation

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
    v16 = sub_10000F644;
    v17 = &unk_100094BA8;
    objc_copyWeak(&v18, &location);
    v11 = objc_retainBlock(&v14);
    finishingBlock = v2->_finishingBlock;
    v2->_finishingBlock = v11;

    [(KTResultOperation *)v2 setCompletionBlock:&stru_100095108, v14, v15, v16, v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)operationStateString
{
  if (([(KTResultOperation *)self isFinished]& 1) != 0)
  {
    finishDate = [(KTResultOperation *)self finishDate];
    v4 = [NSString stringWithFormat:@"finished %@", finishDate];
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
      isReady = [(KTResultOperation *)self isReady];
      v5 = @"pending";
      if (isReady)
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
  operationStateString = [(KTResultOperation *)self operationStateString];
  off_1000AEBD8();
  v5 = v4;
  v6 = *v4 + 1;
  *v4 = v6;
  if (v6 < 0xB)
  {
    error = [(KTResultOperation *)self error];

    selfname = [(KTResultOperation *)self selfname];
    if (error)
    {
      error2 = [(KTResultOperation *)self error];
      [NSString stringWithFormat:@"<%@: %@ error:%@>", selfname, operationStateString, error2];
    }

    else
    {
      error2 = [(KTResultOperation *)self pendingDependenciesString:@" dep:"];
      [NSString stringWithFormat:@"<%@: %@%@>", selfname, operationStateString, error2];
    }
    v8 = ;
  }

  else
  {
    selfname = [(KTResultOperation *)self selfname];
    v8 = [NSString stringWithFormat:@"<%@: %@ recursion>", selfname, operationStateString];
  }

  --*v5;

  return v8;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F9EC;
  v7[3] = &unk_100094B80;
  objc_copyWeak(&v9, &location);
  v5 = blockCopy;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = KTResultOperation;
  [(KTResultOperation *)&v6 setCompletionBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

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
      error = [(KTResultOperation *)self error];
      *buf = 138412290;
      v6 = error;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not running due to some failed dependent: %@", buf, 0xCu);
    }

    [(KTResultOperation *)self cancel];
  }

  v4.receiver = self;
  v4.super_class = KTResultOperation;
  [(KTResultOperation *)&v4 start];
}

- (void)invalidateTimeout
{
  timeoutQueue = [(KTResultOperation *)self timeoutQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FD08;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(timeoutQueue, block);
}

- (id)dependenciesDescriptionError
{
  dependencies = [(KTResultOperation *)self dependencies];
  v3 = [dependencies copy];

  v4 = [v3 indexesOfObjectsPassingTest:&stru_100095148];
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
          descriptionError = [v13 descriptionError];
          v15 = descriptionError;
          if (descriptionError)
          {
            v16 = descriptionError;
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
  off_1000AEBF0();
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
  timeoutQueue = [(KTResultOperation *)self timeoutQueue];
  dispatch_assert_queue_V2(timeoutQueue);

  descriptionError = [(KTResultOperation *)self descriptionError];
  selfname = [(KTResultOperation *)self selfname];
  v6 = [(KTResultOperation *)self pendingDependenciesString:&stru_100096EB8];
  v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for [%@]", selfname, v6];
  v8 = [NSError errorWithDomain:@"KTResultOperationError" code:3 description:v7 underlying:descriptionError];

  return v8;
}

- (id)timeout:(unint64_t)timeout
{
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, timeout);
  timeoutQueue = [(KTResultOperation *)self timeoutQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000101F0;
  v8[3] = &unk_100094BA8;
  objc_copyWeak(&v9, &location);
  dispatch_after(v5, timeoutQueue, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return self;
}

- (void)addNullableSuccessDependency:(id)dependency
{
  dependencyCopy = dependency;
  if (dependencyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    successDependencies = [(KTResultOperation *)selfCopy successDependencies];
    [successDependencies addObject:dependencyCopy];

    [(KTResultOperation *)selfCopy addDependency:dependencyCopy];
    objc_sync_exit(selfCopy);
  }
}

- (BOOL)allDependentsSuccessful
{
  selfCopy = self;
  successDependencies = [(KTResultOperation *)self successDependencies];
  LOBYTE(selfCopy) = [(KTResultOperation *)selfCopy allSuccessful:successDependencies];

  return selfCopy;
}

- (BOOL)allSuccessful:(id)successful
{
  successfulCopy = successful;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v30 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = successfulCopy;
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
      isFinished = [v11 isFinished];
      isCancelled = [v11 isCancelled];
      error = [v11 error];
      v13 = error != 0;

      if ([v11 isCancelled])
      {
        [v30 addObject:v11];
      }

      error2 = [v11 error];
      v15 = error2 == 0;

      if (!v15)
      {
        error3 = [v11 error];
        domain = [error3 domain];
        if ([domain isEqual:@"KTResultOperationError"])
        {
          error4 = [v11 error];
          v19 = [error4 code] == 1;

          if (v19)
          {
            error5 = [v11 error];
            [(KTResultOperation *)selfCopy setError:error5];
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
        }

        error5 = +[NSMutableDictionary dictionary];
        name = [v11 name];
        [error5 setObject:name forKeyedSubscript:@"op"];

        error6 = [v11 error];
        v23 = [NSError errorWithDomain:@"KTResultOperationError" code:1 userInfo:error5 description:@"Success-dependent operation failed" underlying:error6];
        [(KTResultOperation *)selfCopy setError:v23];

        goto LABEL_14;
      }

LABEL_15:
      v9 &= isFinished;
      v7 |= isCancelled;
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

  error7 = [(KTResultOperation *)selfCopy error];
  v25 = error7 == 0;

  if (v25)
  {
    v41 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Operation (%@) cancelled", v30];
    v42 = v5;
    v26 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v27 = [NSError errorWithDomain:@"KTResultOperationError" code:2 userInfo:v26];
    [(KTResultOperation *)selfCopy setError:v27];

LABEL_22:
    goto LABEL_23;
  }

  v29 = 0;
LABEL_23:

  objc_sync_exit(selfCopy);
  return v29;
}

+ (id)operationWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  [v5 addExecutionBlock:blockCopy];

  return v5;
}

+ (id)named:(id)named withBlock:(id)block
{
  namedCopy = named;
  v7 = [self operationWithBlock:block];
  [v7 setName:namedCopy];

  return v7;
}

+ (id)named:(id)named withBlockTakingSelf:(id)self
{
  namedCopy = named;
  selfCopy = self;
  v8 = objc_alloc_init(self);
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010934;
  v11[3] = &unk_100094B80;
  objc_copyWeak(&v13, &location);
  v9 = selfCopy;
  v12 = v9;
  [v8 addExecutionBlock:v11];
  [v8 setName:namedCopy];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

@end
@interface CKKSResultOperation
+ (CKKSResultOperation)operationWithBlock:(id)a3;
+ (id)named:(id)a3 withBlock:(id)a4;
+ (id)named:(id)a3 withBlockTakingSelf:(id)a4;
- (BOOL)allDependentsSuccessful;
- (BOOL)allSuccessful:(id)a3;
- (CKKSResultOperation)init;
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

@implementation CKKSResultOperation

- (CKKSResultOperation)init
{
  v20.receiver = self;
  v20.super_class = CKKSResultOperation;
  v2 = [(CKKSResultOperation *)&v20 init];
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

    v9 = objc_alloc_init(CKKSCondition);
    completionHandlerDidRunCondition = v2->_completionHandlerDidRunCondition;
    v2->_completionHandlerDidRunCondition = v9;

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10002027C;
    v17 = &unk_1003452E8;
    objc_copyWeak(&v18, &location);
    v11 = objc_retainBlock(&v14);
    finishingBlock = v2->_finishingBlock;
    v2->_finishingBlock = v11;

    [(CKKSResultOperation *)v2 setCompletionBlock:&stru_100338F50, v14, v15, v16, v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)start
{
  if ([(CKKSResultOperation *)self allDependentsSuccessful])
  {
    [(CKKSResultOperation *)self invalidateTimeout];
  }

  else
  {
    [(CKKSResultOperation *)self cancel];
  }

  v3.receiver = self;
  v3.super_class = CKKSResultOperation;
  [(CKKSResultOperation *)&v3 start];
}

- (BOOL)allDependentsSuccessful
{
  v2 = self;
  v3 = [(CKKSResultOperation *)self successDependencies];
  LOBYTE(v2) = [(CKKSResultOperation *)v2 allSuccessful:v3];

  return v2;
}

- (void)invalidateTimeout
{
  v3 = [(CKKSResultOperation *)self timeoutQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020840;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)allSuccessful:(id)a3
{
  v4 = a3;
  v30 = self;
  objc_sync_enter(v30);
  v28 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
  v27 = v6 == 0;
  obj = v5;
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  v31 = *v36;
  v9 = 1;
  do
  {
    v32 = v6;
    for (i = 0; i != v32; i = i + 1)
    {
      if (*v36 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v35 + 1) + 8 * i);
      v34 = [v11 isFinished];
      v33 = [v11 isCancelled];
      v12 = [v11 error];
      v13 = v12 != 0;

      if ([v11 isCancelled])
      {
        [v28 addObject:v11];
      }

      v14 = [v11 error];
      v15 = v14 == 0;

      if (!v15)
      {
        v16 = [v11 error];
        v17 = [v16 domain];
        if ([v17 isEqual:@"CKKSResultOperationError"])
        {
          v18 = [v11 error];
          v19 = [v18 code] == 1;

          if (v19)
          {
            v20 = [v11 error];
            [(CKKSResultOperation *)v30 setError:v20];
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
        }

        v20 = [v11 error];
        v21 = [NSError errorWithDomain:@"CKKSResultOperationError" code:1 description:@"Success-dependent operation failed" underlying:v20];
        [(CKKSResultOperation *)v30 setError:v21];

        goto LABEL_14;
      }

LABEL_15:
      v9 &= v34;
      v7 |= v33;
      v8 |= v13;
    }

    v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v6);

  if (!(v7 & 1 | ((v9 & 1) == 0) | v8 & 1))
  {
    v27 = 1;
    goto LABEL_23;
  }

  v22 = [(CKKSResultOperation *)v30 error];
  v23 = v22 == 0;

  if (v23)
  {
    v39 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Operation (%@) cancelled", v28];
    v40 = v5;
    v24 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v25 = [NSError errorWithDomain:@"CKKSResultOperationError" code:2 userInfo:v24];
    [(CKKSResultOperation *)v30 setError:v25];

LABEL_22:
    goto LABEL_23;
  }

  v27 = 0;
LABEL_23:

  objc_sync_exit(v30);
  return v27;
}

- (void)addNullableSuccessDependency:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(CKKSResultOperation *)v4 successDependencies];
    [v5 addObject:v6];

    [(CKKSResultOperation *)v4 addDependency:v6];
    objc_sync_exit(v4);
  }
}

- (id)timeout:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, a3);
  v6 = [(CKKSResultOperation *)self timeoutQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016E1D0;
  v8[3] = &unk_1003452E8;
  objc_copyWeak(&v9, &location);
  dispatch_after(v5, v6, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return self;
}

- (id)_onqueueTimeoutError
{
  v3 = [(CKKSResultOperation *)self timeoutQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CKKSResultOperation *)self descriptionError];
  v5 = [(CKKSResultOperation *)self selfname];
  v6 = [(CKKSResultOperation *)self pendingDependenciesString:&stru_100348050];
  v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for [%@]", v5, v6];
  v8 = [NSError errorWithDomain:@"CKKSResultOperationError" code:3 description:v7 underlying:v4];

  return v8;
}

- (id)descriptionError
{
  off_10039D5B0();
  v4 = v3;
  ++*v3;
  if ([(CKKSResultOperation *)self descriptionErrorCode])
  {
    v5 = [(CKKSResultOperation *)self descriptionUnderlyingError];

    if (v5)
    {
      v5 = +[NSMutableDictionary dictionary];
      v6 = [(CKKSResultOperation *)self descriptionUnderlyingError];
      [v5 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
    }

    v7 = [NSError errorWithDomain:@"CKKSResultOperationDescriptionError" code:[(CKKSResultOperation *)self descriptionErrorCode] userInfo:v5];
  }

  else
  {
    if (*v4 < 0xBu)
    {
      [(CKKSResultOperation *)self dependenciesDescriptionError];
    }

    else
    {
      [NSError errorWithDomain:@"CKKSResultOperationDescriptionError" code:-1 description:@"Excess recursion"];
    }
    v7 = ;
  }

  --*v4;

  return v7;
}

- (id)dependenciesDescriptionError
{
  v2 = [(CKKSResultOperation *)self dependencies];
  v3 = [v2 copy];

  v4 = [v3 indexesOfObjectsPassingTest:&stru_100338F70];
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

- (void)setCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016E75C;
  v7[3] = &unk_1003445C0;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = CKKSResultOperation;
  [(CKKSResultOperation *)&v6 setCompletionBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)description
{
  v3 = [(CKKSResultOperation *)self operationStateString];
  off_10039D640();
  v5 = v4;
  v6 = *v4 + 1;
  *v4 = v6;
  if (v6 < 0xB)
  {
    v9 = [(CKKSResultOperation *)self error];

    v7 = [(CKKSResultOperation *)self selfname];
    if (v9)
    {
      v10 = [(CKKSResultOperation *)self error];
      [NSString stringWithFormat:@"<%@: %@ error:%@>", v7, v3, v10];
    }

    else
    {
      v10 = [(CKKSResultOperation *)self pendingDependenciesString:@" dep:"];
      [NSString stringWithFormat:@"<%@: %@%@>", v7, v3, v10];
    }
    v8 = ;
  }

  else
  {
    v7 = [(CKKSResultOperation *)self selfname];
    v8 = [NSString stringWithFormat:@"<%@: %@ recursion>", v7, v3];
  }

  --*v5;

  return v8;
}

- (id)operationStateString
{
  if (([(CKKSResultOperation *)self isFinished]& 1) != 0)
  {
    v3 = [(CKKSResultOperation *)self finishDate];
    v4 = [NSString stringWithFormat:@"finished %@", v3];
  }

  else
  {
    if (([(CKKSResultOperation *)self isCancelled]& 1) != 0)
    {
      v5 = @"cancelled";
    }

    else if (([(CKKSResultOperation *)self isExecuting]& 1) != 0)
    {
      v5 = @"executing";
    }

    else
    {
      v6 = [(CKKSResultOperation *)self isReady];
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

+ (id)named:(id)a3 withBlockTakingSelf:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016EC80;
  v11[3] = &unk_1003445C0;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  [v8 addExecutionBlock:v11];
  [v8 setName:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

+ (id)named:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = [a1 operationWithBlock:a4];
  [v7 setName:v6];

  return v7;
}

+ (CKKSResultOperation)operationWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 addExecutionBlock:v4];

  return v5;
}

@end
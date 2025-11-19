@interface KTGroupOperation
+ (id)named:(id)a3 withBlock:(id)a4;
+ (id)named:(id)a3 withBlockTakingSelf:(id)a4;
+ (id)operationWithBlock:(id)a3;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)isPending;
- (KTGroupOperation)init;
- (id)description;
- (void)addDependency:(id)a3;
- (void)cancel;
- (void)completeOperation;
- (void)dealloc;
- (void)dependOnBeforeGroupFinished:(id)a3;
- (void)runBeforeGroupFinished:(id)a3;
- (void)setName:(id)a3;
- (void)start;
@end

@implementation KTGroupOperation

- (KTGroupOperation)init
{
  v28.receiver = self;
  v28.super_class = KTGroupOperation;
  v2 = [(KTResultOperation *)&v28 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v2->_fillInError = 1;
    v3 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    v5 = objc_alloc_init(NSMutableArray);
    internalSuccesses = v2->_internalSuccesses;
    v2->_internalSuccesses = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("KTGroupOperationDispatchQueue", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000494C;
    v25[3] = &unk_100094BA8;
    objc_copyWeak(&v26, &location);
    v10 = [NSBlockOperation blockOperationWithBlock:v25];
    startOperation = v2->_startOperation;
    v2->_startOperation = v10;

    v12 = [(KTGroupOperation *)v2 startOperation];
    [v12 removeDependenciesUponCompletion];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100004A74;
    v23[3] = &unk_100094BA8;
    objc_copyWeak(&v24, &location);
    v13 = [NSBlockOperation blockOperationWithBlock:v23];
    finishOperation = v2->_finishOperation;
    v2->_finishOperation = v13;

    v15 = [(KTGroupOperation *)v2 finishOperation];
    [v15 removeDependenciesUponCompletion];

    v16 = [(KTGroupOperation *)v2 finishOperation];
    v17 = [(KTGroupOperation *)v2 startOperation];
    [v16 addDependency:v17];

    v18 = [(KTGroupOperation *)v2 operationQueue];
    v19 = [(KTGroupOperation *)v2 finishOperation];
    [v18 addOperation:v19];

    v20 = [(KTGroupOperation *)v2 startOperation];
    [v20 setName:@"group-start"];

    v21 = [(KTGroupOperation *)v2 finishOperation];
    [v21 setName:@"group-finish"];

    v2->executing = 0;
    v2->finished = 0;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  if ([(KTGroupOperation *)self isPending])
  {
    v3 = [(KTGroupOperation *)self operationQueue];
    [v3 cancelAllOperations];

    v4 = [(KTGroupOperation *)self startOperation];
    [v4 cancel];

    v6.receiver = self;
    v6.super_class = KTGroupOperation;
    [(KTGroupOperation *)&v6 cancel];
  }

  v5.receiver = self;
  v5.super_class = KTGroupOperation;
  [(KTGroupOperation *)&v5 dealloc];
}

- (BOOL)isPending
{
  v3 = [(KTGroupOperation *)self startOperation];
  if ([v3 isPending])
  {
    v4 = [(KTGroupOperation *)self isCancelled]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"group-queue:%@", v4];
  v6 = [(KTGroupOperation *)self operationQueue];
  [v6 setName:v5];

  v7 = [NSString stringWithFormat:@"group-start:%@", v4];
  v8 = [(KTGroupOperation *)self startOperation];
  [v8 setName:v7];

  v9 = [NSString stringWithFormat:@"group-finish:%@", v4];
  v10 = [(KTGroupOperation *)self finishOperation];
  [v10 setName:v9];

  v11.receiver = self;
  v11.super_class = KTGroupOperation;
  [(KTGroupOperation *)&v11 setName:v4];
}

- (id)description
{
  v3 = [(KTResultOperation *)self operationStateString];
  off_1000AEBC0();
  v5 = v4;
  v6 = *v4 + 1;
  *v4 = v6;
  if (v6 < 0xB)
  {
    if ([(KTGroupOperation *)self isFinished])
    {
      v9 = [(KTResultOperation *)self error];

      v10 = [(KTGroupOperation *)self selfname];
      v11 = [(KTResultOperation *)self finishDate];
      v12 = v11;
      if (v9)
      {
        v13 = [(KTResultOperation *)self error];
        v8 = [NSString stringWithFormat:@"<%@: %@ %@ - %@>", v10, v3, v12, v13];
      }

      else
      {
        v8 = [NSString stringWithFormat:@"<%@: %@ %@>", v10, v3, v11];
      }

      goto LABEL_30;
    }

    v14 = [(KTGroupOperation *)self operationQueue];
    v15 = [v14 operationCount];
    v16 = [(KTGroupOperation *)self finishOperation];
    v17 = [v16 dependencies];
    v18 = &v15[[v17 count]];

    if (v18 <= 0x14)
    {
      v37 = v3;
      v19 = [(KTGroupOperation *)self operationQueue];
      v20 = [v19 operations];
      v21 = [v20 mutableCopy];

      v22 = [(KTGroupOperation *)self finishOperation];
      [v21 removeObject:v22];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = [(KTGroupOperation *)self finishOperation];
      v24 = [v23 dependencies];

      v25 = [v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
        while (2)
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v38 + 1) + 8 * i);
            if ([v21 count] > 0x14)
            {

              v7 = @"Potentially more than 20 operations";
              goto LABEL_24;
            }

            v30 = [(KTGroupOperation *)self startOperation];
            v31 = v30;
            if (v29 == v30)
            {
            }

            else
            {
              v32 = [v21 indexOfObject:v29];

              if (v32 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v21 addObject:v29];
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v7 = [v21 componentsJoinedByString:{@", "}];
LABEL_24:

      v3 = v37;
    }

    else
    {
      v7 = @"Potentially more than 20 operations";
    }

    v33 = [(KTResultOperation *)self error];

    v34 = [(KTGroupOperation *)self selfname];
    if (v33)
    {
      v35 = [(KTResultOperation *)self error];
      [NSString stringWithFormat:@"<%@: %@ [%@] error:%@>", v34, v3, v7, v35];
    }

    else
    {
      v35 = [(KTGroupOperation *)self pendingDependenciesString:@" dep:"];
      [NSString stringWithFormat:@"<%@: %@ [%@]%@>", v34, v3, v7, v35];
    }
    v8 = ;
  }

  else
  {
    v7 = [(KTGroupOperation *)self selfname];
    v8 = [NSString stringWithFormat:@"<%@: %@ recursion>", v7, v3];
  }

LABEL_30:
  --*v5;

  return v8;
}

- (BOOL)isExecuting
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(KTGroupOperation *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000520C;
  v5[3] = &unk_100094EE8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)isFinished
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(KTGroupOperation *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005300;
  v5[3] = &unk_100094EE8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)start
{
  [(KTResultOperation *)self invalidateTimeout];
  if ([(KTGroupOperation *)self isCancelled])
  {
    v3 = @"isFinished";
    [(KTGroupOperation *)self willChangeValueForKey:@"isFinished"];
    v4 = [(KTGroupOperation *)self queue];
    v5 = v4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005488;
    v10[3] = &unk_100094F10;
    v10[4] = self;
    v6 = v10;
  }

  else
  {
    v7 = [(KTGroupOperation *)self operationQueue];
    v8 = [(KTGroupOperation *)self startOperation];
    [v7 addOperation:v8];

    v3 = @"isExecuting";
    [(KTGroupOperation *)self willChangeValueForKey:@"isExecuting"];
    v4 = [(KTGroupOperation *)self queue];
    v5 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000054A0;
    v9[3] = &unk_100094F10;
    v9[4] = self;
    v6 = v9;
  }

  dispatch_sync(v4, v6);

  [(KTGroupOperation *)self didChangeValueForKey:v3];
}

- (void)cancel
{
  v3 = [NSBlockOperation blockOperationWithBlock:&stru_100094F30];
  v4 = [(KTGroupOperation *)self startOperation];
  [v4 addDependency:v3];

  v39.receiver = self;
  v39.super_class = KTGroupOperation;
  [(KTGroupOperation *)&v39 cancel];
  v5 = [(KTGroupOperation *)self operationQueue];
  v6 = [v5 operations];
  v7 = [v6 copy];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [(KTGroupOperation *)self finishOperation];
        v15 = [v13 isEqual:v14];

        if ((v15 & 1) == 0)
        {
          [v13 cancel];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  v16 = [(KTGroupOperation *)self finishOperation];
  v17 = [v16 dependencies];
  v18 = [v17 copy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * j);
        if (([v8 containsObject:{v24, v31}] & 1) == 0)
        {
          v25 = [(KTGroupOperation *)self startOperation];
          v26 = [v24 isEqual:v25];

          if ((v26 & 1) == 0)
          {
            v27 = [(KTGroupOperation *)self finishOperation];
            [v27 removeDependency:v24];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v21);
  }

  v28 = [(KTGroupOperation *)self startOperation];
  v29 = [v28 isPending];

  if (v29)
  {
    [(KTGroupOperation *)self setFillInError:0];
  }

  v30 = [(KTGroupOperation *)self operationQueue];
  [v30 addOperation:v3];
}

- (void)completeOperation
{
  [(KTGroupOperation *)self willChangeValueForKey:@"isFinished"];
  [(KTGroupOperation *)self willChangeValueForKey:@"isExecuting"];
  v3 = [(KTGroupOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000588C;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(v3, block);

  [(KTGroupOperation *)self didChangeValueForKey:@"isExecuting"];
  [(KTGroupOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)addDependency:(id)a3
{
  v6.receiver = self;
  v6.super_class = KTGroupOperation;
  v4 = a3;
  [(KTGroupOperation *)&v6 addDependency:v4];
  v5 = [(KTGroupOperation *)self startOperation:v6.receiver];
  [v5 addDependency:v4];
}

- (void)runBeforeGroupFinished:(id)a3
{
  v4 = a3;
  v5 = [(KTGroupOperation *)self startOperation];
  [v4 addDependency:v5];

  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v4];
  v6 = [(KTGroupOperation *)self operationQueue];
  [v6 addOperation:v4];
}

- (void)dependOnBeforeGroupFinished:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(KTGroupOperation *)self isCancelled])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Can't add operation dependency to cancelled group", buf, 2u);
      }
    }

    else
    {
      v5 = [(KTGroupOperation *)self finishOperation];
      [v5 addDependency:v4];

      v6 = [(KTGroupOperation *)self finishOperation];
      v7 = [v6 isFinished];

      if (v7)
      {
        v11 = [NSString stringWithFormat:@"Attempt to add operation(%@) to completed group(%@)", v4, self];
        v12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v11 userInfo:0];
        v13 = v12;

        objc_exception_throw(v12);
      }

      v8 = [(KTGroupOperation *)self startOperation];
      [v4 addDependency:v8];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = self;
        objc_sync_enter(v9);
        v10 = [(KTGroupOperation *)v9 internalSuccesses];
        [v10 addObject:v4];

        objc_sync_exit(v9);
      }
    }
  }
}

+ (id)operationWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [NSBlockOperation blockOperationWithBlock:v4];

  [v5 runBeforeGroupFinished:v6];

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
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005DFC;
  v12[3] = &unk_100094B80;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = [NSBlockOperation blockOperationWithBlock:v12];
  [v8 runBeforeGroupFinished:v10];

  [v8 setName:v6];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

@end
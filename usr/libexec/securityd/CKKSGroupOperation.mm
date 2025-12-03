@interface CKKSGroupOperation
+ (id)named:(id)named withBlock:(id)block;
+ (id)named:(id)named withBlockTakingSelf:(id)self;
+ (id)operationWithBlock:(id)block;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)isPending;
- (CKKSGroupOperation)init;
- (id)description;
- (void)addDependency:(id)dependency;
- (void)cancel;
- (void)completeOperation;
- (void)dealloc;
- (void)dependOnBeforeGroupFinished:(id)finished;
- (void)runBeforeGroupFinished:(id)finished;
- (void)setName:(id)name;
- (void)start;
@end

@implementation CKKSGroupOperation

- (void)dependOnBeforeGroupFinished:(id)finished
{
  finishedCopy = finished;
  if (finishedCopy)
  {
    if ([(CKKSGroupOperation *)self isCancelled])
    {
      selfCopy = sub_100019104(@"ckksgroup", 0);
      if (os_log_type_enabled(&selfCopy->super.super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &selfCopy->super.super.super.super, OS_LOG_TYPE_DEFAULT, "Can't add operation dependency to cancelled group", buf, 2u);
      }

      goto LABEL_8;
    }

    finishOperation = [(CKKSGroupOperation *)self finishOperation];
    [finishOperation addDependency:finishedCopy];

    finishOperation2 = [(CKKSGroupOperation *)self finishOperation];
    isFinished = [finishOperation2 isFinished];

    if (isFinished)
    {
      v11 = [NSString stringWithFormat:@"Attempt to add operation(%@) to completed group(%@)", finishedCopy, self];
      v12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v11 userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    startOperation = [(CKKSGroupOperation *)self startOperation];
    [finishedCopy addDependency:startOperation];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      internalSuccesses = [(CKKSGroupOperation *)selfCopy internalSuccesses];
      [internalSuccesses addObject:finishedCopy];

      objc_sync_exit(selfCopy);
LABEL_8:
    }
  }
}

- (void)runBeforeGroupFinished:(id)finished
{
  finishedCopy = finished;
  startOperation = [(CKKSGroupOperation *)self startOperation];
  [finishedCopy addDependency:startOperation];

  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedCopy];
  operationQueue = [(CKKSGroupOperation *)self operationQueue];
  [operationQueue addOperation:finishedCopy];
}

- (void)addDependency:(id)dependency
{
  v6.receiver = self;
  v6.super_class = CKKSGroupOperation;
  dependencyCopy = dependency;
  [(CKKSGroupOperation *)&v6 addDependency:dependencyCopy];
  v5 = [(CKKSGroupOperation *)self startOperation:v6.receiver];
  [v5 addDependency:dependencyCopy];
}

- (void)completeOperation
{
  [(CKKSGroupOperation *)self willChangeValueForKey:@"isFinished"];
  [(CKKSGroupOperation *)self willChangeValueForKey:@"isExecuting"];
  queue = [(CKKSGroupOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3E20;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);

  [(CKKSGroupOperation *)self didChangeValueForKey:@"isExecuting"];
  [(CKKSGroupOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)cancel
{
  v3 = [NSBlockOperation blockOperationWithBlock:&stru_100336970];
  startOperation = [(CKKSGroupOperation *)self startOperation];
  [startOperation addDependency:v3];

  v39.receiver = self;
  v39.super_class = CKKSGroupOperation;
  [(CKKSGroupOperation *)&v39 cancel];
  operationQueue = [(CKKSGroupOperation *)self operationQueue];
  operations = [operationQueue operations];
  v7 = [operations copy];

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
        finishOperation = [(CKKSGroupOperation *)self finishOperation];
        v15 = [v13 isEqual:finishOperation];

        if ((v15 & 1) == 0)
        {
          [v13 cancel];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  finishOperation2 = [(CKKSGroupOperation *)self finishOperation];
  dependencies = [finishOperation2 dependencies];
  v18 = [dependencies copy];

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
          startOperation2 = [(CKKSGroupOperation *)self startOperation];
          v26 = [v24 isEqual:startOperation2];

          if ((v26 & 1) == 0)
          {
            finishOperation3 = [(CKKSGroupOperation *)self finishOperation];
            [finishOperation3 removeDependency:v24];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v21);
  }

  startOperation3 = [(CKKSGroupOperation *)self startOperation];
  isPending = [startOperation3 isPending];

  if (isPending)
  {
    [(CKKSGroupOperation *)self setFillInError:0];
  }

  operationQueue2 = [(CKKSGroupOperation *)self operationQueue];
  [operationQueue2 addOperation:v3];
}

- (void)start
{
  [(CKKSResultOperation *)self invalidateTimeout];
  if ([(CKKSGroupOperation *)self isCancelled])
  {
    v3 = @"isFinished";
    [(CKKSGroupOperation *)self willChangeValueForKey:@"isFinished"];
    queue = [(CKKSGroupOperation *)self queue];
    v5 = queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C430C;
    v10[3] = &unk_100346018;
    v10[4] = self;
    v6 = v10;
  }

  else
  {
    operationQueue = [(CKKSGroupOperation *)self operationQueue];
    startOperation = [(CKKSGroupOperation *)self startOperation];
    [operationQueue addOperation:startOperation];

    v3 = @"isExecuting";
    [(CKKSGroupOperation *)self willChangeValueForKey:@"isExecuting"];
    queue = [(CKKSGroupOperation *)self queue];
    v5 = queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C4324;
    v9[3] = &unk_100346018;
    v9[4] = self;
    v6 = v9;
  }

  dispatch_sync(queue, v6);

  [(CKKSGroupOperation *)self didChangeValueForKey:v3];
}

- (BOOL)isFinished
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CKKSGroupOperation *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C4414;
  v5[3] = &unk_100344E90;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isExecuting
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CKKSGroupOperation *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C4508;
  v5[3] = &unk_100344E90;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)description
{
  operationStateString = [(CKKSResultOperation *)self operationStateString];
  off_10039D628();
  v5 = v4;
  v6 = *v4 + 1;
  *v4 = v6;
  if (v6 < 0xB)
  {
    if ([(CKKSGroupOperation *)self isFinished])
    {
      error = [(CKKSResultOperation *)self error];

      selfname = [(CKKSGroupOperation *)self selfname];
      finishDate = [(CKKSResultOperation *)self finishDate];
      v12 = finishDate;
      if (error)
      {
        error2 = [(CKKSResultOperation *)self error];
        v8 = [NSString stringWithFormat:@"<%@: %@ %@ - %@>", selfname, operationStateString, v12, error2];
      }

      else
      {
        v8 = [NSString stringWithFormat:@"<%@: %@ %@>", selfname, operationStateString, finishDate];
      }

      goto LABEL_30;
    }

    operationQueue = [(CKKSGroupOperation *)self operationQueue];
    operationCount = [operationQueue operationCount];
    finishOperation = [(CKKSGroupOperation *)self finishOperation];
    dependencies = [finishOperation dependencies];
    v18 = &operationCount[[dependencies count]];

    if (v18 <= 0x14)
    {
      v37 = operationStateString;
      operationQueue2 = [(CKKSGroupOperation *)self operationQueue];
      operations = [operationQueue2 operations];
      v21 = [operations mutableCopy];

      finishOperation2 = [(CKKSGroupOperation *)self finishOperation];
      [v21 removeObject:finishOperation2];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      finishOperation3 = [(CKKSGroupOperation *)self finishOperation];
      dependencies2 = [finishOperation3 dependencies];

      v25 = [dependencies2 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
              objc_enumerationMutation(dependencies2);
            }

            v29 = *(*(&v38 + 1) + 8 * i);
            if ([v21 count] > 0x14)
            {

              selfname3 = @"Potentially more than 20 operations";
              goto LABEL_24;
            }

            startOperation = [(CKKSGroupOperation *)self startOperation];
            v31 = startOperation;
            if (v29 == startOperation)
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

          v26 = [dependencies2 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      selfname3 = [v21 componentsJoinedByString:{@", "}];
LABEL_24:

      operationStateString = v37;
    }

    else
    {
      selfname3 = @"Potentially more than 20 operations";
    }

    error3 = [(CKKSResultOperation *)self error];

    selfname2 = [(CKKSGroupOperation *)self selfname];
    if (error3)
    {
      error4 = [(CKKSResultOperation *)self error];
      [NSString stringWithFormat:@"<%@: %@ [%@] error:%@>", selfname2, operationStateString, selfname3, error4];
    }

    else
    {
      error4 = [(CKKSGroupOperation *)self pendingDependenciesString:@" dep:"];
      [NSString stringWithFormat:@"<%@: %@ [%@]%@>", selfname2, operationStateString, selfname3, error4];
    }
    v8 = ;
  }

  else
  {
    selfname3 = [(CKKSGroupOperation *)self selfname];
    v8 = [NSString stringWithFormat:@"<%@: %@ recursion>", selfname3, operationStateString];
  }

LABEL_30:
  --*v5;

  return v8;
}

- (void)setName:(id)name
{
  nameCopy = name;
  nameCopy = [NSString stringWithFormat:@"group-queue:%@", nameCopy];
  operationQueue = [(CKKSGroupOperation *)self operationQueue];
  [operationQueue setName:nameCopy];

  nameCopy2 = [NSString stringWithFormat:@"group-start:%@", nameCopy];
  startOperation = [(CKKSGroupOperation *)self startOperation];
  [startOperation setName:nameCopy2];

  nameCopy3 = [NSString stringWithFormat:@"group-finish:%@", nameCopy];
  finishOperation = [(CKKSGroupOperation *)self finishOperation];
  [finishOperation setName:nameCopy3];

  v11.receiver = self;
  v11.super_class = CKKSGroupOperation;
  [(CKKSGroupOperation *)&v11 setName:nameCopy];
}

- (BOOL)isPending
{
  startOperation = [(CKKSGroupOperation *)self startOperation];
  if ([startOperation isPending])
  {
    v4 = [(CKKSGroupOperation *)self isCancelled]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)dealloc
{
  if ([(CKKSGroupOperation *)self isPending])
  {
    operationQueue = [(CKKSGroupOperation *)self operationQueue];
    [operationQueue cancelAllOperations];

    startOperation = [(CKKSGroupOperation *)self startOperation];
    [startOperation cancel];

    v6.receiver = self;
    v6.super_class = CKKSGroupOperation;
    [(CKKSGroupOperation *)&v6 cancel];
  }

  v5.receiver = self;
  v5.super_class = CKKSGroupOperation;
  [(CKKSGroupOperation *)&v5 dealloc];
}

- (CKKSGroupOperation)init
{
  v28.receiver = self;
  v28.super_class = CKKSGroupOperation;
  v2 = [(CKKSResultOperation *)&v28 init];
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
    v8 = dispatch_queue_create("CKKSGroupOperationDispatchQueue", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000C4E84;
    v25[3] = &unk_1003452E8;
    objc_copyWeak(&v26, &location);
    v10 = [NSBlockOperation blockOperationWithBlock:v25];
    startOperation = v2->_startOperation;
    v2->_startOperation = v10;

    startOperation = [(CKKSGroupOperation *)v2 startOperation];
    [startOperation removeDependenciesUponCompletion];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000C4FD8;
    v23[3] = &unk_1003452E8;
    objc_copyWeak(&v24, &location);
    v13 = [NSBlockOperation blockOperationWithBlock:v23];
    finishOperation = v2->_finishOperation;
    v2->_finishOperation = v13;

    finishOperation = [(CKKSGroupOperation *)v2 finishOperation];
    [finishOperation removeDependenciesUponCompletion];

    finishOperation2 = [(CKKSGroupOperation *)v2 finishOperation];
    startOperation2 = [(CKKSGroupOperation *)v2 startOperation];
    [finishOperation2 addDependency:startOperation2];

    operationQueue = [(CKKSGroupOperation *)v2 operationQueue];
    finishOperation3 = [(CKKSGroupOperation *)v2 finishOperation];
    [operationQueue addOperation:finishOperation3];

    startOperation3 = [(CKKSGroupOperation *)v2 startOperation];
    [startOperation3 setName:@"group-start"];

    finishOperation4 = [(CKKSGroupOperation *)v2 finishOperation];
    [finishOperation4 setName:@"group-finish"];

    v2->executing = 0;
    v2->finished = 0;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)named:(id)named withBlockTakingSelf:(id)self
{
  namedCopy = named;
  selfCopy = self;
  v8 = objc_alloc_init(self);
  objc_initWeak(&location, v8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C51B8;
  v12[3] = &unk_1003445C0;
  objc_copyWeak(&v14, &location);
  v9 = selfCopy;
  v13 = v9;
  v10 = [NSBlockOperation blockOperationWithBlock:v12];
  [v8 runBeforeGroupFinished:v10];

  [v8 setName:namedCopy];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

+ (id)named:(id)named withBlock:(id)block
{
  namedCopy = named;
  v7 = [self operationWithBlock:block];
  [v7 setName:namedCopy];

  return v7;
}

+ (id)operationWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  v6 = [NSBlockOperation blockOperationWithBlock:blockCopy];

  [v5 runBeforeGroupFinished:v6];

  return v5;
}

@end
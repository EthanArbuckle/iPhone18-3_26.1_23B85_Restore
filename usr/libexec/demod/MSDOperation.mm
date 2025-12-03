@interface MSDOperation
- (BOOL)canPassCheckpoint;
- (BOOL)isAllDependentInComponentCancelled;
- (BOOL)isLeaf;
- (BOOL)isRoot;
- (BOOL)skipped;
- (MSDOperation)initWithContext:(id)context;
- (MSDOperationObserver)observer;
- (NSString)identifier;
- (id)allDependentOperations;
- (id)description;
- (void)addDependency:(id)dependency;
- (void)addObserver:(id)observer;
- (void)execute;
- (void)main;
- (void)produceNewDependentOperation:(id)operation forRollback:(BOOL)rollback;
- (void)setRetryable:(BOOL)retryable;
@end

@implementation MSDOperation

- (MSDOperation)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = MSDOperation;
  v5 = [(MSDOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MSDOperation *)v5 setContext:contextCopy];
    [(MSDOperation *)v6 setComponent:0];
    [(MSDOperation *)v6 setFlag:0];
    [(MSDOperation *)v6 setCheckpointBarrier:0];
    [(MSDOperation *)v6 setObserver:0];
    v7 = sub_100063BEC();
    [(MSDOperation *)v6 setSignpostId:os_signpost_id_generate(v7)];

    v8 = objc_alloc_init(NSMutableSet);
    [(MSDOperation *)v6 setDependents:v8];
  }

  return v6;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setRetryable:(BOOL)retryable
{
  v4 = [(MSDOperation *)self flag]& 0xFFFFFFFFFFFFFFFELL | retryable;

  [(MSDOperation *)self setFlag:v4];
}

- (BOOL)skipped
{
  context = [(MSDOperation *)self context];
  skipped = [context skipped];

  return skipped;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "Perform Operation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v3, &v17);
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: entered.", buf, 0xCu);
  }

  observer = [(MSDOperation *)self observer];

  if (observer)
  {
    observer2 = [(MSDOperation *)self observer];
    [observer2 operationDidStart:self];
  }

  v7 = sub_100063BEC();
  signpostId = [(MSDOperation *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = signpostId;
    if (os_signpost_enabled(v7))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Perform Operation", "Operation name: %{xcode:string}@", buf, 0xCu);
    }
  }

  [(MSDOperation *)self execute];
  v10 = sub_100063BEC();
  signpostId2 = [(MSDOperation *)self signpostId];
  if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = signpostId2;
    if (os_signpost_enabled(v10))
    {
      result = [(MSDOperation *)self result];
      *buf = 138412546;
      selfCopy4 = self;
      v20 = 1024;
      v21 = result;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "Perform Operation", "Operation name: %{xcode:string}@ result: %{xcode:BOOLean}d", buf, 0x12u);
    }
  }

  observer3 = [(MSDOperation *)self observer];

  if (observer3)
  {
    observer4 = [(MSDOperation *)self observer];
    [observer4 operationWillFinish:self];
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: will return.", buf, 0xCu);
  }

  os_activity_scope_leave(&v17);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([observerCopy conformsToProtocol:&OBJC_PROTOCOL___MSDOperationObserver] & 1) == 0)
  {
    sub_1000D7C38(a2, self);
  }

  [(MSDOperation *)self setObserver:observerCopy];
}

- (BOOL)canPassCheckpoint
{
  if ([(MSDOperation *)self isCancelled])
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      selfCopy5 = self;
      v4 = "%{public}@ is cancelled.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &v17, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(MSDOperation *)self skipped])
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      selfCopy5 = self;
      v4 = "%{public}@ is skipped.";
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  checkpointBarrier = [(MSDOperation *)self checkpointBarrier];
  activated = [checkpointBarrier activated];

  if (!activated)
  {
    return 1;
  }

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is halted by checkpoint barrier.", &v17, 0xCu);
  }

  v10 = sub_100063BEC();
  signpostId = [(MSDOperation *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = signpostId;
    if (os_signpost_enabled(v10))
    {
      v17 = 138412290;
      selfCopy5 = self;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Encounter Checkpoint Barrier", "Operation name: %{xcode:string}@", &v17, 0xCu);
    }
  }

  checkpointBarrier2 = [(MSDOperation *)self checkpointBarrier];
  [checkpointBarrier2 waitUntilClear];

  v14 = sub_100063BEC();
  signpostId2 = [(MSDOperation *)self signpostId];
  if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = signpostId2;
    if (os_signpost_enabled(v14))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v16, "Encounter Checkpoint Barrier", "", &v17, 2u);
    }
  }

  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is free of checkpoint barrier.", &v17, 0xCu);
  }

  v5 = 1;
LABEL_9:

  return v5;
}

- (BOOL)isRoot
{
  dependencies = [(MSDOperation *)self dependencies];
  v3 = [dependencies count] == 0;

  return v3;
}

- (BOOL)isLeaf
{
  dependents = [(MSDOperation *)self dependents];
  v3 = [dependents count] == 0;

  return v3;
}

- (BOOL)isAllDependentInComponentCancelled
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dependents = [(MSDOperation *)self dependents];
  v4 = [dependents countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(dependents);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        component = [(MSDOperation *)self component];
        component2 = [v8 component];

        if (component == component2 && ![v8 isCancelled])
        {
          v11 = 0;
          goto LABEL_12;
        }
      }

      v5 = [dependents countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (void)addDependency:(id)dependency
{
  v6.receiver = self;
  v6.super_class = MSDOperation;
  dependencyCopy = dependency;
  [(MSDOperation *)&v6 addDependency:dependencyCopy];
  dependents = [dependencyCopy dependents];

  [dependents addObject:self];
}

- (void)produceNewDependentOperation:(id)operation forRollback:(BOOL)rollback
{
  rollbackCopy = rollback;
  operationCopy = operation;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v15 = 2114;
    v16 = operationCopy;
    v17 = 1026;
    v18 = rollbackCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: New dependent operation produced: %{public}@ for rollback: %{public, BOOL}d", buf, 0x1Cu);
  }

  [operationCopy addDependency:self];
  observer = [(MSDOperation *)self observer];

  if (observer)
  {
    v9 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006A40C;
    block[3] = &unk_10016AF88;
    block[4] = self;
    v11 = operationCopy;
    v12 = rollbackCopy;
    dispatch_async(v9, block);
  }
}

- (id)allDependentOperations
{
  v3 = objc_alloc_init(NSMutableSet);
  v4 = objc_alloc_init(NSMutableArray);
  [v4 addObject:self];
  while ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    [v4 removeObjectAtIndex:0];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = v5;
    dependents = [v5 dependents];
    v7 = [dependents countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(dependents);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          component = [v11 component];
          component2 = [(MSDOperation *)self component];

          if (component == component2 && ([v3 containsObject:v11] & 1) == 0)
          {
            [v3 addObject:v11];
            [v4 addObject:v11];
          }
        }

        v8 = [dependents countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (id)description
{
  result = [(MSDOperation *)self result];
  v4 = @"NO";
  if (result)
  {
    v4 = @"YES";
  }

  v5 = v4;
  flag = [(MSDOperation *)self flag];
  identifier = [(MSDOperation *)self identifier];
  context = [(MSDOperation *)self context];
  uniqueName = [context uniqueName];
  v10 = [NSString stringWithFormat:@"<%@: Name=%@ Result=%@ Flag=%lx>", identifier, uniqueName, v5, flag];

  return v10;
}

- (MSDOperationObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)execute
{
  if ([(MSDOperation *)self canPassCheckpoint])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(MSDOperation *)self methodSelectors];
    v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v26;
      *&v4 = 67109120;
      v23 = v4;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          pointerValue = [v8 pointerValue];
          v11 = NSStringFromSelector(pointerValue);
          v12 = [(MSDOperation *)self methodForSelector:pointerValue];
          v13 = sub_100063BEC();
          signpostId = [(MSDOperation *)self signpostId];
          if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v15 = signpostId;
            if (os_signpost_enabled(v13))
            {
              *buf = 138412290;
              v30 = v11;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Execute Method Selector", "Selector name: %{xcode:string}@", buf, 0xCu);
            }
          }

          v16 = v12(self, pointerValue);
          v17 = sub_100063BEC();
          signpostId2 = [(MSDOperation *)self signpostId];
          if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v19 = signpostId2;
            if (os_signpost_enabled(v17))
            {
              *buf = v23;
              LODWORD(v30) = v16;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v19, "Execute Method Selector", "Selector result: %{xcode:BOOLean}d", buf, 8u);
            }
          }

          if ((v16 & 1) == 0)
          {
            v22 = sub_100063A54();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v11;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Execution error detected in method selector: %{public}@", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v9);
LABEL_21:
            v21 = 0;
            goto LABEL_22;
          }

          canPassCheckpoint = [(MSDOperation *)self canPassCheckpoint];

          objc_autoreleasePoolPop(v9);
          if (!canPassCheckpoint)
          {
            goto LABEL_21;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v21 = 1;
LABEL_22:
  }

  else
  {
    v21 = 0;
  }

  [(MSDOperation *)self setResult:v21, v23];
}

@end
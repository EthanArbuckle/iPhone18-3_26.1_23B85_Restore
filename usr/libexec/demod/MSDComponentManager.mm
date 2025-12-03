@interface MSDComponentManager
- (BOOL)waitForProcessingCompletionTillDate:(id)date outError:(id *)error;
- (MSDComponentManager)initWithComponents:(id)components andProcessor:(id)processor;
- (unint64_t)_calculateFreeSpaceToReserve:(unint64_t)reserve;
- (void)_cancelAllOperations;
- (void)_dispatchComponent:(id)component;
- (void)_dispatchNextComponent;
- (void)_enforceFreeDiskSpaceRequirement;
- (void)_handleCompleteComponent:(id)component;
- (void)_handleNewOperationStagedForComponent:(id)component;
- (void)_handleRetryComponent:(id)component forComponent:(id)forComponent;
- (void)_setupInterComponentDependencyOnRetry:(BOOL)retry;
- (void)abortProcessing;
- (void)pauseProcessing;
- (void)resumeProcessing;
- (void)startProcessingAllComponents;
@end

@implementation MSDComponentManager

- (MSDComponentManager)initWithComponents:(id)components andProcessor:(id)processor
{
  componentsCopy = components;
  processorCopy = processor;
  v30.receiver = self;
  v30.super_class = MSDComponentManager;
  v8 = [(MSDComponentManager *)&v30 init];
  if (v8)
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:0];
    [(MSDComponentManager *)v8 setActiveComponents:v9];

    v10 = [[NSMutableArray alloc] initWithCapacity:0];
    [(MSDComponentManager *)v8 setRetryableComponents:v10];

    v11 = [[NSMutableArray alloc] initWithCapacity:0];
    [(MSDComponentManager *)v8 setRemovableComponents:v11];

    v12 = [componentsCopy mutableCopy];
    [(MSDComponentManager *)v8 setPendingComponents:v12];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    reverseObjectEnumerator = [componentsCopy reverseObjectEnumerator];
    v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          createRemovableCounterpartComponent = [*(*(&v26 + 1) + 8 * v17) createRemovableCounterpartComponent];
          if (createRemovableCounterpartComponent)
          {
            removableComponents = [(MSDComponentManager *)v8 removableComponents];
            [removableComponents addObject:createRemovableCounterpartComponent];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v15);
    }

    [(MSDComponentManager *)v8 setComponentProcessor:processorCopy];
    [(MSDComponentManager *)v8 setComponentListLock:0];
    if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 disableParallelProcessing], v20, v21))
    {
      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Disabling parallel processing as requested.", v25, 2u);
      }

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    [(MSDComponentManager *)v8 setParallelProcessing:v23];
  }

  return v8;
}

- (void)startProcessingAllComponents
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager startProcessingAllComponents]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v5, 0xCu);
  }

  os_unfair_lock_lock(&self->_componentListLock);
  [(MSDComponentManager *)self _enforceFreeDiskSpaceRequirement];
  [(MSDComponentManager *)self _startProcessingComponentsOnRetry:0];
  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor resume];

  os_unfair_lock_unlock(&self->_componentListLock);
}

- (BOOL)waitForProcessingCompletionTillDate:(id)date outError:(id *)error
{
  dateCopy = date;
  v7 = dispatch_semaphore_create(0);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100009A80;
  v36 = sub_100009A90;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[MSDComponentManager waitForProcessingCompletionTillDate:outError:]";
    v40 = 2114;
    v41 = dateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: entered with deadline %{public}@", buf, 0x16u);
  }

  activeComponents = [(MSDComponentManager *)self activeComponents];
  v10 = [activeComponents count] == 0;

  if (!v10)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = +[NSOperationQueue mainQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100009A98;
    v24[3] = &unk_100169D80;
    v26 = &v28;
    v27 = &v32;
    v13 = v7;
    v25 = v13;
    v14 = [v11 addObserverForName:@"MSDComponentManagerComplete" object:0 queue:v12 usingBlock:v24];

    if (dateCopy)
    {
      [dateCopy timeIntervalSinceNow];
      v16 = dispatch_time(0, (v15 * 1000000000.0));
      if (dispatch_semaphore_wait(v13, v16))
      {
        v17 = sub_100063A54();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Timed out waiting for processing of all components to complete.", buf, 2u);
        }

        v18 = [NSError errorDomainMSDWithCode:3727741184 message:@"Cannot finish update within given time."];
        v19 = v33[5];
        v33[5] = v18;

        [(MSDComponentManager *)self _cancelAllOperations];
      }

      if (!error)
      {
LABEL_10:
        if (!v14)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    *error = v33[5];
    if (!v14)
    {
LABEL_18:
      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "[MSDComponentManager waitForProcessingCompletionTillDate:outError:]";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: will return.", buf, 0xCu);
      }

      v20 = *(v29 + 24);
      goto LABEL_21;
    }

LABEL_17:
    v21 = +[NSNotificationCenter defaultCenter];
    [v21 removeObserver:v14];

    goto LABEL_18;
  }

  v14 = sub_100063A54();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No more active component to process.", buf, 2u);
  }

  v20 = 1;
LABEL_21:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v20 & 1;
}

- (void)pauseProcessing
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager pauseProcessing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called.", &v5, 0xCu);
  }

  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor suspend];
}

- (void)resumeProcessing
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager resumeProcessing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called.", &v5, 0xCu);
  }

  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor resume];
}

- (void)abortProcessing
{
  v3 = [NSError errorDomainMSDWithCode:3727741185 message:@"Operation canceled."];
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDComponentManager abortProcessing]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: entered.", &v5, 0xCu);
  }

  [(MSDComponentManager *)self _cancelAllOperations];
  [(MSDComponentManager *)self _postCompletionNotificationWithResult:0 andError:v3];
}

- (void)_cancelAllOperations
{
  os_unfair_lock_lock(&self->_componentListLock);
  activeComponents = [(MSDComponentManager *)self activeComponents];
  [activeComponents removeAllObjects];

  retryableComponents = [(MSDComponentManager *)self retryableComponents];
  [retryableComponents removeAllObjects];

  removableComponents = [(MSDComponentManager *)self removableComponents];
  [removableComponents removeAllObjects];

  pendingComponents = [(MSDComponentManager *)self pendingComponents];
  [pendingComponents removeAllObjects];

  os_unfair_lock_unlock(&self->_componentListLock);
  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor cancel];
}

- (void)_dispatchNextComponent
{
  activeComponents = [(MSDComponentManager *)self activeComponents];
  firstObject = [activeComponents firstObject];

  if (firstObject)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = [firstObject name];
      v7 = 138543362;
      v8 = name;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dispatching component %{public}@ ...", &v7, 0xCu);
    }

    [(MSDComponentManager *)self _dispatchComponent:firstObject];
  }
}

- (void)_dispatchComponent:(id)component
{
  componentCopy = component;
  [componentCopy addObserver:self];
  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor process:componentCopy];
}

- (void)_handleNewOperationStagedForComponent:(id)component
{
  componentCopy = component;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = componentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New operation staged for component: %{public}@", &v7, 0xCu);
  }

  componentProcessor = [(MSDComponentManager *)self componentProcessor];
  [componentProcessor process:componentCopy];
}

- (void)_handleCompleteComponent:(id)component
{
  componentCopy = component;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = componentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "All operations complete for component: %{public}@", &v21, 0xCu);
  }

  os_unfair_lock_lock(&self->_componentListLock);
  activeComponents = [(MSDComponentManager *)self activeComponents];
  [activeComponents removeObject:componentCopy];

  activeComponents2 = [(MSDComponentManager *)self activeComponents];
  v8 = [activeComponents2 count];

  if (v8)
  {
    if (![(MSDComponentManager *)self parallelProcessing])
    {
      [(MSDComponentManager *)self _dispatchNextComponent];
    }

    goto LABEL_15;
  }

  retryableComponents = [(MSDComponentManager *)self retryableComponents];
  v10 = [retryableComponents count];

  if (v10)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Processing retryable components...", &v21, 2u);
    }

    activeComponents3 = [(MSDComponentManager *)self activeComponents];
    retryableComponents2 = [(MSDComponentManager *)self retryableComponents];
    [activeComponents3 addObjectsFromArray:retryableComponents2];

    retryableComponents3 = [(MSDComponentManager *)self retryableComponents];
    [retryableComponents3 removeAllObjects];

    selfCopy2 = self;
    v16 = 1;
LABEL_14:
    [(MSDComponentManager *)selfCopy2 _startProcessingComponentsOnRetry:v16];
    goto LABEL_15;
  }

  pendingComponents = [(MSDComponentManager *)self pendingComponents];
  v18 = [pendingComponents count];

  v19 = sub_100063A54();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Processing pending components...", &v21, 2u);
    }

    [(MSDComponentManager *)self _enforceFreeDiskSpaceRequirement];
    selfCopy2 = self;
    v16 = 0;
    goto LABEL_14;
  }

  if (v20)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "All components complete!", &v21, 2u);
  }

  [(MSDComponentManager *)self _postCompletionNotificationWithResult:1 andError:0];
LABEL_15:
  os_unfair_lock_unlock(&self->_componentListLock);
}

- (void)_handleRetryComponent:(id)component forComponent:(id)forComponent
{
  componentCopy = component;
  forComponentCopy = forComponent;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C5C34(componentCopy, v8);
  }

  os_unfair_lock_lock(&self->_componentListLock);
  retryableComponents = [(MSDComponentManager *)self retryableComponents];
  [retryableComponents addObject:componentCopy];

  os_unfair_lock_unlock(&self->_componentListLock);
  [(MSDComponentManager *)self _handleCompleteComponent:forComponentCopy];
}

- (void)_enforceFreeDiskSpaceRequirement
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[MSDTargetDevice sharedInstance];
  getFreeSpace = [v4 getFreeSpace];

  v6 = [(MSDComponentManager *)self _calculateFreeSpaceToReserve:getFreeSpace];
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trying to enforce free disk space requirement:  %{iec-bytes}llu", buf, 0xCu);
  }

  *&v8 = 138543362;
  v31 = v8;
  selfCopy = self;
  while (1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    pendingComponents = [(MSDComponentManager *)self pendingComponents];
    v10 = [pendingComponents countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      while (2)
      {
        v13 = 0;
        v14 = getFreeSpace;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(pendingComponents);
          }

          v15 = *(*(&v33 + 1) + 8 * v13);
          diskSpaceRequired = [v15 diskSpaceRequired];
          v17 = sub_100063A54();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v38 = v15;
            v39 = 2048;
            v40 = diskSpaceRequired;
            v41 = 2048;
            v42 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Free space needed=%{iec-bytes}llu, Free space left=%{iec-bytes}llu", buf, 0x20u);
          }

          v18 = v14 >= diskSpaceRequired;
          getFreeSpace = (v14 - diskSpaceRequired);
          if (getFreeSpace == 0 || !v18 || getFreeSpace <= v6)
          {
            v19 = sub_100063A54();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v31;
              v38 = v15;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Not enough free space left for this component.", buf, 0xCu);
            }

            getFreeSpace = v14;
            self = selfCopy;
            goto LABEL_20;
          }

          [v3 addObject:v15];
          v13 = v13 + 1;
          v14 = getFreeSpace;
        }

        while (v11 != v13);
        v11 = [pendingComponents countByEnumeratingWithState:&v33 objects:v43 count:16];
        self = selfCopy;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    if ([v3 count])
    {
      activeComponents = [(MSDComponentManager *)self activeComponents];
      [activeComponents addObjectsFromArray:v3];

      pendingComponents2 = [(MSDComponentManager *)self pendingComponents];
      [pendingComponents2 removeObjectsInArray:v3];
      goto LABEL_33;
    }

    removableComponents = [(MSDComponentManager *)self removableComponents];
    pendingComponents2 = [removableComponents firstObject];

    if (pendingComponents2)
    {
      break;
    }

    pendingComponents3 = [(MSDComponentManager *)self pendingComponents];
    firstObject = [pendingComponents3 firstObject];

    removableComponents2 = sub_100063A54();
    v25 = os_log_type_enabled(removableComponents2, OS_LOG_TYPE_DEFAULT);
    if (!firstObject)
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, removableComponents2, OS_LOG_TYPE_DEFAULT, "No more pending component to discard.", buf, 2u);
      }

      goto LABEL_32;
    }

    if (v25)
    {
      *buf = v31;
      v38 = firstObject;
      _os_log_impl(&_mh_execute_header, removableComponents2, OS_LOG_TYPE_DEFAULT, "Discarding one pending component due to insufficient disk space: %{public}@", buf, 0xCu);
    }

    activeComponents2 = [(MSDComponentManager *)self activeComponents];
    [activeComponents2 addObject:firstObject];

    pendingComponents4 = [(MSDComponentManager *)self pendingComponents];
    [pendingComponents4 removeObject:firstObject];

    [firstObject discardStagedOperationsAndTriggerCompletion];
  }

  v29 = sub_100063A54();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = v31;
    v38 = pendingComponents2;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Removing existing component to free up disk space: %{public}@", buf, 0xCu);
  }

  activeComponents3 = [(MSDComponentManager *)self activeComponents];
  [activeComponents3 addObject:pendingComponents2];

  removableComponents2 = [(MSDComponentManager *)self removableComponents];
  [removableComponents2 removeObject:pendingComponents2];
LABEL_32:

LABEL_33:
}

- (unint64_t)_calculateFreeSpaceToReserve:(unint64_t)reserve
{
  v4 = MGCopyAnswer();
  v5 = [v4 objectForKey:kMGQDiskUsageAmountDataReserved];
  v6 = v5;
  if (v5)
  {
    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C5CAC(v8);
    }

    unsignedLongLongValue = 5 * reserve / 0x64;
  }

  return unsignedLongLongValue;
}

- (void)_setupInterComponentDependencyOnRetry:(BOOL)retry
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100009A80;
  v10[4] = sub_100009A90;
  v11 = objc_alloc_init(NSMutableDictionary);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100009A80;
  v8[4] = sub_100009A90;
  v9 = 0;
  activeComponents = [(MSDComponentManager *)self activeComponents];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AD18;
  v6[3] = &unk_100169DA8;
  retryCopy = retry;
  v6[4] = v8;
  v6[5] = v10;
  [activeComponents enumerateObjectsUsingBlock:v6];

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

@end
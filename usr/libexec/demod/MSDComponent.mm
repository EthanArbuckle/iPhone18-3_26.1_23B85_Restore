@interface MSDComponent
- (BOOL)result;
- (MSDComponent)initWithName:(id)name andOperations:(id)operations;
- (MSDComponentObserver)observer;
- (NSString)description;
- (id)_cloneComponent;
- (id)_cloneOperations:(id)operations;
- (id)_handleRetryableOperation:(id)operation;
- (id)activateStagedOperations;
- (id)createRemovableCounterpartComponent;
- (id)errors;
- (id)finishedOperationContexts;
- (id)setupIntraComponentDependency:(BOOL)dependency;
- (void)_addStagedOperation:(id)operation forRollback:(BOOL)rollback;
- (void)_cancelRemainingOperations;
- (void)_estimateDiskSpaceRequirementFromOperations:(id)operations;
- (void)_handleActiveOperationsDepleted;
- (void)_handleCancelledOperation:(id)operation;
- (void)_handleFailedOperation:(id)operation;
- (void)_handleSkippedOperation:(id)operation;
- (void)_handleSuccessfulOperation:(id)operation;
- (void)_rollbackFinishedOperations;
- (void)addInstallDependency:(id)dependency;
- (void)addObserver:(id)observer;
- (void)addRemoveOperations:(id)operations;
- (void)discardStagedOperationsAndTriggerCompletion;
- (void)operationWillFinish:(id)finish;
@end

@implementation MSDComponent

- (MSDComponent)initWithName:(id)name andOperations:(id)operations
{
  nameCopy = name;
  operationsCopy = operations;
  v15.receiver = self;
  v15.super_class = MSDComponent;
  v8 = [(MSDComponent *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(MSDComponent *)v8 setName:nameCopy];
    [(MSDComponent *)v9 setRetryCount:3];
    [(MSDComponent *)v9 setForRemoval:0];
    v10 = objc_alloc_init(NSMutableOrderedSet);
    [(MSDComponent *)v9 setRemoveOperations:v10];

    v11 = objc_alloc_init(NSMutableOrderedSet);
    [(MSDComponent *)v9 setStagedOperations:v11];

    v12 = objc_alloc_init(NSMutableOrderedSet);
    [(MSDComponent *)v9 setActiveOperations:v12];

    v13 = objc_alloc_init(NSMutableOrderedSet);
    [(MSDComponent *)v9 setFinishedOperations:v13];

    [(MSDComponent *)v9 _addStagedOperations:operationsCopy forRollback:0];
    [(MSDComponent *)v9 _estimateDiskSpaceRequirementFromOperations:operationsCopy];
    [(MSDComponent *)v9 setObserver:0];
    [(MSDComponent *)v9 setComponentLock:0];
  }

  return v9;
}

- (BOOL)result
{
  os_unfair_lock_lock(&self->_componentLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  finishedOperations = [(MSDComponent *)self finishedOperations];
  v4 = [finishedOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(finishedOperations);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 result] & 1) == 0 && !objc_msgSend(v8, "skipped"))
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [finishedOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  os_unfair_lock_unlock(&self->_componentLock);
  return v9;
}

- (id)finishedOperationContexts
{
  v3 = objc_alloc_init(NSMutableSet);
  os_unfair_lock_lock(&self->_componentLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  finishedOperations = [(MSDComponent *)self finishedOperations];
  v5 = [finishedOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(finishedOperations);
        }

        context = [*(*(&v11 + 1) + 8 * i) context];
        if (context)
        {
          [v3 addObject:context];
        }
      }

      v6 = [finishedOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_componentLock);

  return v3;
}

- (id)errors
{
  v3 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_componentLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  finishedOperations = [(MSDComponent *)self finishedOperations];
  v5 = [finishedOperations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(finishedOperations);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        error = [v9 error];

        if (error)
        {
          error2 = [v9 error];
          [v3 addObject:error2];
        }
      }

      v6 = [finishedOperations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_componentLock);

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([observerCopy conformsToProtocol:&OBJC_PROTOCOL___MSDComponentObserver] & 1) == 0)
  {
    sub_1000C9AE4(a2, self);
  }

  os_unfair_lock_lock(&self->_componentLock);
  [(MSDComponent *)self setObserver:observerCopy];

  os_unfair_lock_unlock(&self->_componentLock);
}

- (void)addRemoveOperations:(id)operations
{
  operationsCopy = operations;
  os_unfair_lock_lock(&self->_componentLock);
  removeOperations = [(MSDComponent *)self removeOperations];
  [removeOperations addObjectsFromArray:operationsCopy];

  os_unfair_lock_unlock(&self->_componentLock);
}

- (id)activateStagedOperations
{
  os_unfair_lock_lock(&self->_componentLock);
  stagedOperations = [(MSDComponent *)self stagedOperations];
  v4 = [stagedOperations copy];

  stagedOperations2 = [(MSDComponent *)self stagedOperations];
  [stagedOperations2 removeAllObjects];

  activeOperations = [(MSDComponent *)self activeOperations];
  [activeOperations unionOrderedSet:v4];

  os_unfair_lock_unlock(&self->_componentLock);

  return v4;
}

- (id)createRemovableCounterpartComponent
{
  os_unfair_lock_lock(&self->_componentLock);
  removeOperations = [(MSDComponent *)self removeOperations];
  v4 = [removeOperations count];

  if (v4)
  {
    v5 = [MSDComponent alloc];
    name = [(MSDComponent *)self name];
    removeOperations2 = [(MSDComponent *)self removeOperations];
    array = [removeOperations2 array];
    v9 = [(MSDComponent *)v5 initWithName:name andOperations:array];

    [(MSDComponent *)v9 setForRemoval:1];
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_componentLock);

  return v9;
}

- (id)setupIntraComponentDependency:(BOOL)dependency
{
  v4 = objc_alloc_init(NSMutableDictionary);
  os_unfair_lock_lock(&self->_componentLock);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  selfCopy = self;
  obj = [(MSDComponent *)self stagedOperations];
  v5 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    v34 = v4;
    v36 = *v52;
    do
    {
      v8 = 0;
      v37 = v6;
      do
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v51 + 1) + 8 * v8);
        if ([v9 type] == 1)
        {
          v41 = v8;
          context = [v9 context];
          uniqueName = [context uniqueName];

          v40 = uniqueName;
          v39 = [v4 objectForKey:uniqueName];
          v42 = objc_alloc_init(NSMutableArray);
          [v42 addObject:v9];
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          dependents = [v9 dependents];
          v13 = [dependents countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v48;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v48 != v15)
                {
                  objc_enumerationMutation(dependents);
                }

                v17 = *(*(&v47 + 1) + 8 * i);
                if ([v17 type] == 2)
                {
                  context2 = [v17 context];
                  context3 = [v9 context];

                  if (context2 == context3)
                  {
                    [v42 addObject:v17];
                    v45 = 0u;
                    v46 = 0u;
                    v43 = 0u;
                    v44 = 0u;
                    dependents2 = [v17 dependents];
                    v21 = [dependents2 countByEnumeratingWithState:&v43 objects:v59 count:16];
                    if (v21)
                    {
                      v22 = v21;
                      v23 = *v44;
                      while (2)
                      {
                        for (j = 0; j != v22; j = j + 1)
                        {
                          if (*v44 != v23)
                          {
                            objc_enumerationMutation(dependents2);
                          }

                          v25 = *(*(&v43 + 1) + 8 * j);
                          if ([v25 type] == 3)
                          {
                            context4 = [v25 context];
                            context5 = [v17 context];

                            if (context4 == context5)
                            {
                              [v42 addObject:v25];
                              goto LABEL_28;
                            }
                          }
                        }

                        v22 = [dependents2 countByEnumeratingWithState:&v43 objects:v59 count:16];
                        if (v22)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_28:

                    v4 = v34;
                    goto LABEL_29;
                  }
                }
              }

              v14 = [dependents countByEnumeratingWithState:&v47 objects:v60 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_29:

          v8 = v41;
          if (v39)
          {
            lastObject2 = sub_100063A54();
            v29 = os_log_type_enabled(lastObject2, OS_LOG_TYPE_DEBUG);
            if (dependency)
            {
              if (v29)
              {
                lastObject = [v39 lastObject];
                *buf = 138412546;
                v56 = v9;
                v57 = 2112;
                v58 = lastObject;
                _os_log_debug_impl(&_mh_execute_header, lastObject2, OS_LOG_TYPE_DEBUG, "Setting up intra-component dependency: %@ -> %@", buf, 0x16u);
              }

              lastObject2 = [v39 lastObject];
              [v9 addDependency:lastObject2];
            }

            else if (v29)
            {
              lastObject3 = [v39 lastObject];
              *buf = 138412546;
              v56 = v9;
              v57 = 2112;
              v58 = lastObject3;
              _os_log_debug_impl(&_mh_execute_header, lastObject2, OS_LOG_TYPE_DEBUG, "Skipping intra-component dependency linking: %@ -> %@", buf, 0x16u);
            }
          }

          [v4 setObject:v42 forKey:v40];

          v7 = v36;
          v6 = v37;
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&selfCopy->_componentLock);

  return v4;
}

- (void)addInstallDependency:(id)dependency
{
  dependencyCopy = dependency;
  selfCopy = self;
  os_unfair_lock_lock(&self->_componentLock);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = dependencyCopy;
  obj = [dependencyCopy stagedOperations];
  v5 = [obj countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v24 = *v34;
    do
    {
      v8 = 0;
      v26 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        if ([v9 type] == 3)
        {
          identifier = [v9 identifier];
          if (![identifier isEqualToString:@"MSDProvisioningProfileInstallOperation"])
          {

LABEL_11:
            v28 = v8;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            stagedOperations = [(MSDComponent *)selfCopy stagedOperations];
            v13 = [stagedOperations countByEnumeratingWithState:&v29 objects:v45 count:16];
            if (!v13)
            {
              goto LABEL_27;
            }

            v14 = v13;
            v15 = *v30;
            while (2)
            {
              v16 = 0;
LABEL_14:
              if (*v30 != v15)
              {
                objc_enumerationMutation(stagedOperations);
              }

              v17 = *(*(&v29 + 1) + 8 * v16);
              if ([v17 type] == 3 && (objc_msgSend(v17, "runInstallInParallel") & 1) == 0)
              {
                identifier2 = [v17 identifier];
                if ([identifier2 isEqualToString:@"MSDProvisioningProfileInstallOperation"])
                {
                  isLeaf = [v17 isLeaf];

                  if ((isLeaf & 1) == 0)
                  {
                    goto LABEL_25;
                  }
                }

                else
                {
                }

                v20 = sub_100063A54();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  component = [v17 component];
                  component2 = [v9 component];
                  *buf = 138413058;
                  v38 = v17;
                  v39 = 2112;
                  v40 = component;
                  v41 = 2112;
                  v42 = v9;
                  v43 = 2112;
                  v44 = component2;
                  _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Setting up install dependency: %@(%@) -> %@(%@)", buf, 0x2Au);
                }

                [v17 addDependency:v9];
              }

LABEL_25:
              if (v14 == ++v16)
              {
                v14 = [stagedOperations countByEnumeratingWithState:&v29 objects:v45 count:16];
                if (!v14)
                {
LABEL_27:

                  v7 = v24;
                  v6 = v26;
                  v8 = v28;
                  goto LABEL_28;
                }

                continue;
              }

              goto LABEL_14;
            }
          }

          isLeaf2 = [v9 isLeaf];

          if (isLeaf2)
          {
            goto LABEL_11;
          }
        }

LABEL_28:
        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&selfCopy->_componentLock);
}

- (void)discardStagedOperationsAndTriggerCompletion
{
  os_unfair_lock_lock(&self->_componentLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  stagedOperations = [(MSDComponent *)self stagedOperations];
  v4 = [stagedOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(stagedOperations);
        }

        [*(*(&v11 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [stagedOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  finishedOperations = [(MSDComponent *)self finishedOperations];
  stagedOperations2 = [(MSDComponent *)self stagedOperations];
  [finishedOperations unionOrderedSet:stagedOperations2];

  stagedOperations3 = [(MSDComponent *)self stagedOperations];
  [stagedOperations3 removeAllObjects];

  [(MSDComponent *)self _handleActiveOperationsDepleted];
  os_unfair_lock_unlock(&self->_componentLock);
}

- (void)operationWillFinish:(id)finish
{
  finishCopy = finish;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = finishCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation will finish: %{public}@", &v15, 0x16u);
  }

  os_unfair_lock_lock(&self->_componentLock);
  if (([finishCopy isCancelled] & 1) == 0)
  {
    if ([finishCopy type] == 5)
    {
      os_unfair_lock_unlock(&self->_componentLock);
      v6 = 0;
LABEL_7:
      observer = [(MSDComponent *)self observer];
      [observer componentDidComplete:self];
LABEL_8:

      goto LABEL_9;
    }

    if ([finishCopy result])
    {
      [(MSDComponent *)self _handleSuccessfulOperation:finishCopy];
    }

    else if ([finishCopy skipped])
    {
      [(MSDComponent *)self _handleSkippedOperation:finishCopy];
    }

    else
    {
      if ([finishCopy retryable])
      {
        v6 = [(MSDComponent *)self _handleRetryableOperation:finishCopy];
        goto LABEL_18;
      }

      [(MSDComponent *)self _handleFailedOperation:finishCopy];
    }

    v6 = 0;
LABEL_18:
    stagedOperations = [(MSDComponent *)self stagedOperations];
    v9 = [stagedOperations count];

    if (v9)
    {
      os_unfair_lock_unlock(&self->_componentLock);
      if (!v6)
      {
        observer = [(MSDComponent *)self observer];
        [observer componentDidHaveNewOperationStaged:self];
        goto LABEL_8;
      }

      v10 = 0;
    }

    else
    {
      stagedOperations2 = [(MSDComponent *)self stagedOperations];
      if ([stagedOperations2 count])
      {
        v10 = 0;
      }

      else
      {
        activeOperations = [(MSDComponent *)self activeOperations];
        v10 = [activeOperations count] == 0;
      }

      os_unfair_lock_unlock(&self->_componentLock);
      if (!v6)
      {
LABEL_29:
        if (!v10)
        {
          goto LABEL_9;
        }

        goto LABEL_7;
      }
    }

    observer2 = [(MSDComponent *)self observer];
    [observer2 component:self didProduceClonedComponent:v6];

    if (v9)
    {
      observer3 = [(MSDComponent *)self observer];
      [observer3 componentDidHaveNewOperationStaged:self];

      if (!v10)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    goto LABEL_29;
  }

  [(MSDComponent *)self _handleCancelledOperation:finishCopy];
  os_unfair_lock_unlock(&self->_componentLock);
  v6 = 0;
LABEL_9:
}

- (void)_addStagedOperation:(id)operation forRollback:(BOOL)rollback
{
  operationCopy = operation;
  stagedOperations = [(MSDComponent *)self stagedOperations];
  [stagedOperations addObject:operationCopy];

  if (!rollback)
  {
    [operationCopy associateWithComponent:self];
    [operationCopy addObserver:self];
  }
}

- (void)_estimateDiskSpaceRequirementFromOperations:(id)operations
{
  operationsCopy = operations;
  v4 = +[NSMutableSet set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = operationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        context = [*(*(&v18 + 1) + 8 * i) context];
        uniqueName = [context uniqueName];
        diskSpacedRequired = [context diskSpacedRequired];
        if (diskSpacedRequired)
        {
          v14 = diskSpacedRequired;
          v15 = [v4 containsObject:uniqueName];

          if ((v15 & 1) == 0)
          {
            diskSpacedRequired2 = [context diskSpacedRequired];
            v8 += [diskSpacedRequired2 unsignedLongLongValue];

            [v4 addObject:uniqueName];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [(MSDComponent *)self setDiskSpaceRequired:v8];
}

- (id)_cloneComponent
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  stagedOperations = [(MSDComponent *)self stagedOperations];
  [v3 unionOrderedSet:stagedOperations];

  activeOperations = [(MSDComponent *)self activeOperations];
  [v3 unionOrderedSet:activeOperations];

  array = [v3 array];
  v7 = [(MSDComponent *)self _cloneOperations:array];

  v8 = [MSDComponent alloc];
  name = [(MSDComponent *)self name];
  v10 = [(MSDComponent *)v8 initWithName:name andOperations:v7];

  [(MSDComponent *)v10 setRetryCount:[(MSDComponent *)self retryCount]];
  finishedOperations = [(MSDComponent *)self finishedOperations];
  v12 = [finishedOperations mutableCopy];
  [(MSDComponent *)v10 setFinishedOperations:v12];

  return v10;
}

- (id)_cloneOperations:(id)operations
{
  operationsCopy = operations;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableArray);
  if ([operationsCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [operationsCopy objectAtIndex:v6];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      context = [v7 context];
      v11 = [MSDOperationRepository createOperationFromIdentifier:v9 withContext:context];

      [v5 addObject:v11];
      v12 = [NSNumber numberWithInt:v6];
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 hash]);
      [v4 setObject:v12 forKey:v13];

      ++v6;
    }

    while ([operationsCopy count] > v6);
  }

  if ([v5 count])
  {
    v14 = 0;
    v26 = operationsCopy;
    do
    {
      v15 = [v5 objectAtIndex:{v14, v26}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = v14;
      v16 = [operationsCopy objectAtIndex:v14];
      dependencies = [v16 dependencies];

      v18 = [dependencies countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(dependencies);
            }

            v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(&v28 + 1) + 8 * i) hash]);
            v23 = [v4 objectForKey:v22];

            if (v23)
            {
              v24 = [v5 objectAtIndex:{objc_msgSend(v23, "intValue")}];
              [v15 addDependency:v24];
            }
          }

          v19 = [dependencies countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }

      v14 = v27 + 1;
      operationsCopy = v26;
    }

    while ([v5 count] > v27 + 1);
  }

  return v5;
}

- (void)_cancelRemainingOperations
{
  activeOperations = [(MSDComponent *)self activeOperations];
  v3 = [activeOperations mutableCopy];

  v13 = v3;
  if ([v3 count])
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = objc_alloc_init(NSMutableSet);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v13;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 isAllDependentInComponentCancelled])
            {
              v12 = sub_100063A54();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v19 = v11;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cancelling operation: %{public}@", buf, 0xCu);
              }

              [v11 cancel];
            }

            if ([v11 isCancelled])
            {
              [v5 addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v8);
      }

      [v6 minusSet:v5];
      objc_autoreleasePoolPop(v4);
    }

    while ([v6 count]);
  }
}

- (void)_rollbackFinishedOperations
{
  finishedOperations = [(MSDComponent *)self finishedOperations];
  v4 = [finishedOperations copy];

  [(MSDComponent *)self setRollbackOperations:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = sub_100063A54();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v17 = v10;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Rolling back finished operation: %@", buf, 0xCu);
        }

        [v10 rollback];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_handleActiveOperationsDepleted
{
  if (![(MSDComponent *)self forRemoval])
  {
    v3 = objc_alloc_init(MSDOperationContext);
    name = [(MSDComponent *)self name];
    [(MSDOperationContext *)v3 setIdentifier:name];

    v5 = [MSDOperationRepository createOperationFromIdentifier:@"MSDComponentCompleteOperation" withContext:v3];
    [(MSDComponent *)self _addStagedOperation:v5 forRollback:0];
  }
}

- (void)_handleSuccessfulOperation:(id)operation
{
  operationCopy = operation;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C9B58();
  }

  activeOperations = [(MSDComponent *)self activeOperations];
  [activeOperations removeObject:operationCopy];

  finishedOperations = [(MSDComponent *)self finishedOperations];
  [finishedOperations addObject:operationCopy];

  activeOperations2 = [(MSDComponent *)self activeOperations];
  v9 = [activeOperations2 count];

  if (!v9)
  {
    [(MSDComponent *)self _handleActiveOperationsDepleted];
  }
}

- (void)_handleFailedOperation:(id)operation
{
  operationCopy = operation;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C9BC0();
  }

  if (os_variant_has_internal_content())
  {
    v6 = +[MSDTestPreferences sharedInstance];
    pauseContentUpdateOnError = [v6 pauseContentUpdateOnError];

    if (pauseContentUpdateOnError)
    {
      do
      {
        v8 = sub_100063A54();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pausing content update as requested. Will check the value again in 30s.", v16, 2u);
        }

        sleep(0x1Eu);
        v9 = +[MSDTestPreferences sharedInstance];
        pauseContentUpdateOnError2 = [v9 pauseContentUpdateOnError];
      }

      while ((pauseContentUpdateOnError2 & 1) != 0);
    }
  }

  activeOperations = [(MSDComponent *)self activeOperations];
  [activeOperations removeObject:operationCopy];

  finishedOperations = [(MSDComponent *)self finishedOperations];
  [finishedOperations addObject:operationCopy];

  [(MSDComponent *)self _cancelRemainingOperations];
  [(MSDComponent *)self _rollbackFinishedOperations];
  finishedOperations2 = [(MSDComponent *)self finishedOperations];
  activeOperations2 = [(MSDComponent *)self activeOperations];
  [finishedOperations2 unionOrderedSet:activeOperations2];

  activeOperations3 = [(MSDComponent *)self activeOperations];
  [activeOperations3 removeAllObjects];

  [(MSDComponent *)self _handleActiveOperationsDepleted];
}

- (id)_handleRetryableOperation:(id)operation
{
  operationCopy = operation;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C9C28();
  }

  [(MSDComponent *)self setRetryCount:[(MSDComponent *)self retryCount]- 1];
  if ([(MSDComponent *)self retryCount]<= 0)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Component retry count exhausted.", &v9, 0xCu);
    }

    [(MSDComponent *)self _handleFailedOperation:operationCopy];
    _cloneComponent = 0;
  }

  else
  {
    [(MSDComponent *)self _cancelRemainingOperations];
    _cloneComponent = [(MSDComponent *)self _cloneComponent];
  }

  return _cloneComponent;
}

- (void)_handleSkippedOperation:(id)operation
{
  operationCopy = operation;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C9C90();
  }

  [(MSDComponent *)self _handleSuccessfulOperation:operationCopy];
}

- (void)_handleCancelledOperation:(id)operation
{
  operationCopy = operation;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C9CF8();
  }

  if ([(MSDComponent *)self rollbackOperations])
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = operationCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rolling back cancelled operation: %{public}@", &v7, 0xCu);
    }

    [operationCopy rollback];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(MSDComponent *)self name];
  v6 = [NSString stringWithFormat:@"<%@: Name: %@>", v4, name];

  return v6;
}

- (MSDComponentObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end
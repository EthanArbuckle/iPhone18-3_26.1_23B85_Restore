@interface ActionManager
+ (id)sharedManager;
- (ActionManager)init;
- (id)description;
- (id)enqueueAction:(id)action;
- (void)_setDependenciesForNewAction:(id)action;
- (void)cancelActionWithId:(id)id;
- (void)cancelAllActions;
- (void)refreshTransactionState:(unint64_t)state;
@end

@implementation ActionManager

+ (id)sharedManager
{
  if (qword_1003144D0 != -1)
  {
    sub_1002260FC();
  }

  v3 = qword_1003144C8;

  return v3;
}

- (ActionManager)init
{
  v14.receiver = self;
  v14.super_class = ActionManager;
  v2 = [(ActionManager *)&v14 init];
  if (v2)
  {
    v3 = +[NSPointerArray weakObjectsPointerArray];
    [(ActionManager *)v2 setWeakActions:v3];

    [(ActionManager *)v2 setNextActionIdNumber:1];
    v4 = dispatch_queue_create("ActionManager-MetadataMods", 0);
    [(ActionManager *)v2 setMetadataModsQueue:v4];

    v5 = dispatch_queue_create("ActionManager-TransactionQueue", 0);
    [(ActionManager *)v2 setTransactionSerialQueue:v5];

    [(ActionManager *)v2 setOperationTransactionActive:0];
    v6 = objc_alloc_init(NSOperationQueue);
    [(ActionManager *)v2 setActionExecutionQueue:v6];

    v7 = NSStringFromSelector("operationCount");
    objc_initWeak(&location, v2);
    actionExecutionQueue = [(ActionManager *)v2 actionExecutionQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100131A7C;
    v11[3] = &unk_1002CD608;
    objc_copyWeak(&v12, &location);
    v9 = [actionExecutionQueue addKVOBlockForKeyPath:v7 options:5 handler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)enqueueAction:(id)action
{
  actionCopy = action;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000A984;
  v17 = sub_100002A8C;
  v18 = 0;
  metadataModsQueue = [(ActionManager *)self metadataModsQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100131C68;
  v9[3] = &unk_1002CD450;
  v6 = actionCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [FMDDispatchTransaction dispatchTransactionSync:metadataModsQueue transactionName:@"ActionManagerEnqueueAction" block:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)cancelActionWithId:(id)id
{
  idCopy = id;
  metadataModsQueue = [(ActionManager *)self metadataModsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100132410;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(metadataModsQueue, v7);
}

- (void)cancelAllActions
{
  metadataModsQueue = [(ActionManager *)self metadataModsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100132714;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(metadataModsQueue, block);
}

- (void)refreshTransactionState:(unint64_t)state
{
  transactionSerialQueue = [(ActionManager *)self transactionSerialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001327EC;
  v6[3] = &unk_1002CD658;
  v6[4] = self;
  v6[5] = state;
  dispatch_sync(transactionSerialQueue, v6);
}

- (id)description
{
  v3 = +[NSMutableString string];
  fm_logID = [(ActionManager *)self fm_logID];
  [v3 appendString:fm_logID];

  weakActions = [(ActionManager *)self weakActions];
  allObjects = [weakActions allObjects];

  if ([allObjects count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = allObjects;
    v7 = allObjects;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          dependencies = [v12 dependencies];
          v14 = [dependencies componentsJoinedByString:{@", "}];
          [v3 appendFormat:@"\n%@ -> (%@)", v12, v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    allObjects = v16;
  }

  else
  {
    [v3 appendString:@" (Empty)"];
  }

  return v3;
}

- (void)_setDependenciesForNewAction:(id)action
{
  actionCopy = action;
  metadataModsQueue = [(ActionManager *)self metadataModsQueue];
  dispatch_assert_queue_V2(metadataModsQueue);

  actionExecutionQueue = [(ActionManager *)self actionExecutionQueue];
  operations = [actionExecutionQueue operations];

  if (operations)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = operations;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * v12);
          embeddedAction = [v13 embeddedAction];
          v15 = [actionCopy shouldCancelAction:embeddedAction];

          if (v15)
          {
            [v13 cancel];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v22 + 1) + 8 * v20);
          if ([actionCopy shouldWaitForAction:{v21, v22}])
          {
            [actionCopy addDependency:v21];
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }
  }
}

@end
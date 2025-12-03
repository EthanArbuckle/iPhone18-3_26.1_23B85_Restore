@interface CKKSNewTLKOperation
- (CKKSNewTLKOperation)initWithDependencies:(id)dependencies rollTLKIfPresent:(BOOL)present preexistingPendingKeySets:(id)sets intendedState:(id)state errorState:(id)errorState;
- (void)cancel;
- (void)groupStart;
@end

@implementation CKKSNewTLKOperation

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = CKKSNewTLKOperation;
  [(CKKSGroupOperation *)&v2 cancel];
}

- (void)groupStart
{
  deps = [(CKKSNewTLKOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableSet set];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001A8980;
  v31[3] = &unk_100343C28;
  v31[4] = self;
  v21 = v3;
  v32 = v21;
  v5 = v4;
  v33 = v5;
  [databaseProvider dispatchSyncWithReadOnlySQLTransaction:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  currentTrustStates = 0;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if (!currentTrustStates)
        {
          deps2 = [(CKKSNewTLKOperation *)self deps];
          currentTrustStates = [deps2 currentTrustStates];
        }

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1001A8C7C;
        v23[3] = &unk_100343970;
        v23[4] = v10;
        v23[5] = self;
        v26 = &v34;
        currentTrustStates = currentTrustStates;
        v24 = currentTrustStates;
        v25 = v21;
        [databaseProvider dispatchSyncWithSQLTransaction:v23];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v7);
  }

  if ([v21 count])
  {
    deps3 = [(CKKSNewTLKOperation *)self deps];
    [deps3 provideKeySets:v21];
  }

  error = [(CKKSResultOperation *)self error];
  v14 = error == 0;

  if (v14)
  {
    [(CKKSNewTLKOperation *)self setKeysets:v21];
  }

  if (*(v35 + 24) == 1)
  {
    v15 = [[OctagonPendingFlag alloc] initWithFlag:@"key_set" conditions:1];
    deps4 = [(CKKSNewTLKOperation *)self deps];
    flagHandler = [deps4 flagHandler];
    [flagHandler handlePendingFlag:v15];
  }

  intendedState = [(CKKSNewTLKOperation *)self intendedState];
  [(CKKSNewTLKOperation *)self setNextState:intendedState];

  _Block_object_dispose(&v34, 8);
}

- (CKKSNewTLKOperation)initWithDependencies:(id)dependencies rollTLKIfPresent:(BOOL)present preexistingPendingKeySets:(id)sets intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  setsCopy = sets;
  stateCopy = state;
  errorStateCopy = errorState;
  v37.receiver = self;
  v37.super_class = CKKSNewTLKOperation;
  v17 = [(CKKSGroupOperation *)&v37 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 150), dependencies);
    v18[128] = present;
    if (setsCopy)
    {
      v29 = errorStateCopy;
      v30 = stateCopy;
      errorStateCopy2 = errorState;
      v32 = dependenciesCopy;
      v19 = +[NSMutableDictionary dictionary];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      allKeys = [setsCopy allKeys];
      v21 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(allKeys);
            }

            v25 = *(*(&v33 + 1) + 8 * i);
            v26 = [setsCopy objectForKeyedSubscript:v25];
            if ([v26 proposed])
            {
              [v19 setObject:v26 forKeyedSubscript:v25];
            }
          }

          v22 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v22);
      }

      errorState = errorStateCopy2;
      dependenciesCopy = v32;
      errorStateCopy = v29;
      stateCopy = v30;
    }

    else
    {
      v19 = 0;
    }

    v27 = *(v18 + 166);
    *(v18 + 166) = v19;

    objc_storeStrong((v18 + 134), state);
    objc_storeStrong((v18 + 142), errorState);
  }

  return v18;
}

@end
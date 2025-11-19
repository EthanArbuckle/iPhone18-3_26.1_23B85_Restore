@interface CKKSNewTLKOperation
- (CKKSNewTLKOperation)initWithDependencies:(id)a3 rollTLKIfPresent:(BOOL)a4 preexistingPendingKeySets:(id)a5 intendedState:(id)a6 errorState:(id)a7;
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
  v2 = [(CKKSNewTLKOperation *)self deps];
  v20 = [v2 databaseProvider];

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
  [v20 dispatchSyncWithReadOnlySQLTransaction:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v6 = 0;
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
        if (!v6)
        {
          v11 = [(CKKSNewTLKOperation *)self deps];
          v6 = [v11 currentTrustStates];
        }

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1001A8C7C;
        v23[3] = &unk_100343970;
        v23[4] = v10;
        v23[5] = self;
        v26 = &v34;
        v6 = v6;
        v24 = v6;
        v25 = v21;
        [v20 dispatchSyncWithSQLTransaction:v23];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v7);
  }

  if ([v21 count])
  {
    v12 = [(CKKSNewTLKOperation *)self deps];
    [v12 provideKeySets:v21];
  }

  v13 = [(CKKSResultOperation *)self error];
  v14 = v13 == 0;

  if (v14)
  {
    [(CKKSNewTLKOperation *)self setKeysets:v21];
  }

  if (*(v35 + 24) == 1)
  {
    v15 = [[OctagonPendingFlag alloc] initWithFlag:@"key_set" conditions:1];
    v16 = [(CKKSNewTLKOperation *)self deps];
    v17 = [v16 flagHandler];
    [v17 handlePendingFlag:v15];
  }

  v18 = [(CKKSNewTLKOperation *)self intendedState];
  [(CKKSNewTLKOperation *)self setNextState:v18];

  _Block_object_dispose(&v34, 8);
}

- (CKKSNewTLKOperation)initWithDependencies:(id)a3 rollTLKIfPresent:(BOOL)a4 preexistingPendingKeySets:(id)a5 intendedState:(id)a6 errorState:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v37.receiver = self;
  v37.super_class = CKKSNewTLKOperation;
  v17 = [(CKKSGroupOperation *)&v37 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 150), a3);
    v18[128] = a4;
    if (v14)
    {
      v29 = v16;
      v30 = v15;
      v31 = a7;
      v32 = v13;
      v19 = +[NSMutableDictionary dictionary];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = [v14 allKeys];
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v33 + 1) + 8 * i);
            v26 = [v14 objectForKeyedSubscript:v25];
            if ([v26 proposed])
            {
              [v19 setObject:v26 forKeyedSubscript:v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v22);
      }

      a7 = v31;
      v13 = v32;
      v16 = v29;
      v15 = v30;
    }

    else
    {
      v19 = 0;
    }

    v27 = *(v18 + 166);
    *(v18 + 166) = v19;

    objc_storeStrong((v18 + 134), a6);
    objc_storeStrong((v18 + 142), a7);
  }

  return v18;
}

@end
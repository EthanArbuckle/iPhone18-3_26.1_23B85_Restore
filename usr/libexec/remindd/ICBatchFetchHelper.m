@interface ICBatchFetchHelper
- (BOOL)_canObtainPermanentIDForObject:(id)a3 context:(id)a4 ckIdentifierAccountIdentifierPair:(id)a5;
- (BOOL)isMissingCKIdentifier:(id)a3 accountIdentifier:(id)a4;
- (ICBatchFetchHelper)initWithQueue:(id)a3 managedObjectContext:(id)a4 batchSize:(unint64_t)a5 cacheCountLimit:(unint64_t)a6;
- (NSManagedObjectContext)managedObjectContext;
- (id)cachedManagedObjectForCKIdentifier:(id)a3 accountIdentifier:(id)a4;
- (void)_dispatchBlockApplyingBackPressureIfNeeded:(id)a3;
- (void)_flush;
- (void)addCKIdentifiers:(id)a3 accountIdentifier:(id)a4 onCurrentQueue:(BOOL)a5 dispatchBlock:(id)a6;
- (void)addDispatchBlock:(id)a3;
- (void)dealloc;
- (void)flushOnCurrentQueue:(BOOL)a3;
- (void)removeCachedManagedObjectForCKIdentifier:(id)a3 accountIdentifier:(id)a4;
- (void)setCachedManagedObject:(id)a3 forCKIdentifier:(id)a4 accountIdentifier:(id)a5;
@end

@implementation ICBatchFetchHelper

- (ICBatchFetchHelper)initWithQueue:(id)a3 managedObjectContext:(id)a4 batchSize:(unint64_t)a5 cacheCountLimit:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v24.receiver = self;
  v24.super_class = ICBatchFetchHelper;
  v13 = [(ICBatchFetchHelper *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, a3);
    objc_storeWeak(&v14->_managedObjectContext, v12);
    v14->_batchSize = a5;
    v15 = [[NSMutableSet alloc] initWithCapacity:a5];
    ckIdentifierAccountPairs = v14->_ckIdentifierAccountPairs;
    v14->_ckIdentifierAccountPairs = v15;

    v17 = [[NSMutableArray alloc] initWithCapacity:a5];
    dispatchBlocks = v14->_dispatchBlocks;
    v14->_dispatchBlocks = v17;

    v19 = objc_alloc_init(NSCache);
    missingCKIdentifierAccountPairCache = v14->_missingCKIdentifierAccountPairCache;
    v14->_missingCKIdentifierAccountPairCache = v19;

    [(NSCache *)v14->_missingCKIdentifierAccountPairCache setCountLimit:a6];
    v21 = objc_alloc_init(NSCache);
    managedObjectIDCache = v14->_managedObjectIDCache;
    v14->_managedObjectIDCache = v21;

    [(NSCache *)v14->_managedObjectIDCache setCountLimit:a6];
    atomic_store(a5, &remainingDispatchQueueCapacity);
  }

  return v14;
}

- (BOOL)_canObtainPermanentIDForObject:(id)a3 context:(id)a4 ckIdentifierAccountIdentifierPair:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x3032000000;
  v26[2] = sub_1000E38DC;
  v26[3] = sub_1000E38EC;
  v27 = 0;
  v10 = [v7 objectID];

  if (v10)
  {
    v11 = [v7 objectID];
    v12 = [v11 isTemporaryID];

    if (v12)
    {
      if (v8)
      {
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_1000E38F4;
        v20 = &unk_1008DC748;
        v23 = &v28;
        v21 = v8;
        v22 = v7;
        v24 = &v25;
        [v21 performBlockAndWait:&v17];
        if ((v29[3] & 1) == 0)
        {
          v13 = [REMLog cloudkit:v17];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_10076DACC(v9, v26);
          }
        }
      }

      else
      {
        v14 = +[REMLog cloudkit];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_10076DB58();
        }
      }
    }

    else
    {
      *(v29 + 24) = 1;
    }
  }

  v15 = *(v29 + 24);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v28, 8);
  return v15;
}

- (void)_flush
{
  v3 = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v7 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
    v8 = [v7 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = *v64;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v64 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v63 + 1) + 8 * i);
        v12 = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          [v6 addObject:v11];
          v14 = +[REMLog cloudkit];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v11;
            v15 = v14;
            v16 = "ICBatchFetchHelper does not need to fetch %{public}@ as it is in missingCKIdentifierCache";
LABEL_13:
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v16, &buf, 0xCu);
          }
        }

        else
        {
          v17 = [(ICBatchFetchHelper *)self managedObjectIDCache];
          v18 = [v17 objectForKey:v11];

          if (!v18)
          {
            continue;
          }

          [v6 addObject:v11];
          v14 = +[REMLog cloudkit];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v11;
            v15 = v14;
            v16 = "ICBatchFetchHelper does not need to fetch %{public}@ as it is already in managedObjectIDCache";
            goto LABEL_13;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (!v8)
      {
LABEL_17:

        v19 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
        [v19 minusSet:v6];

        break;
      }
    }
  }

  v20 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
  v21 = [v20 count] == 0;

  if (!v21)
  {
    v22 = objc_alloc_init(NSMutableSet);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
    v24 = [v23 countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v24)
    {
      v25 = *v60;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v60 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = [*(*(&v59 + 1) + 8 * j) ckIdentifier];
          [v22 addObject:v27];
        }

        v24 = [v23 countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v24);
    }

    v28 = [NSPredicate predicateWithFormat:@"ckIdentifier IN %@", v22];
    v29 = [(ICBatchFetchHelper *)self managedObjectContext];

    if (v29)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v70 = 0x3032000000;
      v71 = sub_1000E38DC;
      v72 = sub_1000E38EC;
      v73 = 0;
      v30 = [(ICBatchFetchHelper *)self managedObjectContext];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000E4040;
      v55[3] = &unk_1008D9EE0;
      v56 = v28;
      v57 = self;
      p_buf = &buf;
      [v30 performBlockAndWait:v55];

      if (*(*(&buf + 1) + 40))
      {
        v31 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
        [v31 minusSet:*(*(&buf + 1) + 40)];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v32 = +[REMLog cloudkit];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        sub_10076DBC0(v32);
      }
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v33 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
    v34 = [v33 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v34)
    {
      v35 = *v52;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v52 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v51 + 1) + 8 * k);
          v38 = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
          [v38 setObject:v37 forKey:v37];
        }

        v34 = [v33 countByEnumeratingWithState:&v51 objects:v68 count:16];
      }

      while (v34);
    }
  }

  v39 = [(ICBatchFetchHelper *)self dispatchBlocks];
  v40 = [v39 copy];

  v41 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
  [v41 removeAllObjects];

  v42 = [(ICBatchFetchHelper *)self dispatchBlocks];
  [v42 removeAllObjects];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v43 = v40;
  v44 = [v43 countByEnumeratingWithState:&v47 objects:v67 count:16];
  if (v44)
  {
    v45 = *v48;
    do
    {
      for (m = 0; m != v44; m = m + 1)
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(v43);
        }

        (*(*(*(&v47 + 1) + 8 * m) + 16))();
      }

      v44 = [v43 countByEnumeratingWithState:&v47 objects:v67 count:16];
    }

    while (v44);
  }

  atomic_fetch_add(remainingDispatchQueueCapacity, [v43 count]);
}

- (void)_dispatchBlockApplyingBackPressureIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_not_V2(v5);

  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  if ((atomic_fetch_add(remainingDispatchQueueCapacity, 0xFFFFFFFF) - 1) <= 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = [(ICBatchFetchHelper *)self queue];
    dispatch_sync(v7, v4);

    v8 = CFAbsoluteTimeGetCurrent();
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = self;
      v13 = 2048;
      v14 = v8 - Current;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ perform dispatch block sync took %f s", buf, 0x16u);
    }
  }

  else
  {
    v10 = [(ICBatchFetchHelper *)self queue];
    dispatch_async(v10, v4);
  }
}

- (void)addCKIdentifiers:(id)a3 accountIdentifier:(id)a4 onCurrentQueue:(BOOL)a5 dispatchBlock:(id)a6
{
  v7 = a5;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000E47A8;
  v18 = &unk_1008DAB10;
  v19 = a3;
  v20 = a4;
  v21 = self;
  v22 = a6;
  v10 = v22;
  v11 = v20;
  v12 = v19;
  v13 = objc_retainBlock(&v15);
  if (v7)
  {
    v14 = [(ICBatchFetchHelper *)self queue:v15];
    dispatch_assert_queue_V2(v14);

    dispatch_assert_queue_not_V2(&_dispatch_main_q);
    (v13[2])(v13);
  }

  else
  {
    [(ICBatchFetchHelper *)self _dispatchBlockApplyingBackPressureIfNeeded:v13, v15, v16, v17, v18, v19, v20, v21, v22];
  }
}

- (void)addDispatchBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E49DC;
  v4[3] = &unk_1008DA048;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ICBatchFetchHelper *)v5 _dispatchBlockApplyingBackPressureIfNeeded:v4];
}

- (void)flushOnCurrentQueue:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [(ICBatchFetchHelper *)self queue];
  v7 = v6;
  if (v3)
  {
    dispatch_assert_queue_V2(v6);

    [(ICBatchFetchHelper *)self _flush];
  }

  else
  {
    dispatch_assert_queue_not_V2(v6);

    v8 = [(ICBatchFetchHelper *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E4C1C;
    block[3] = &unk_1008D9990;
    block[4] = self;
    dispatch_sync(v8, block);
  }

  v9 = CFAbsoluteTimeGetCurrent();
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v13 = self;
    v14 = 1024;
    v15 = v3;
    v16 = 2048;
    v17 = v9 - Current;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ flush (onCurrentQueue = %d) took %f s", buf, 0x1Cu);
  }
}

- (BOOL)isMissingCKIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:v7 accountIdentifier:v6];
  v10 = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
  v11 = [v10 objectForKey:v9];
  LOBYTE(self) = v11 != 0;

  return self;
}

- (id)cachedManagedObjectForCKIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:v6 accountIdentifier:v7];
  v10 = [(ICBatchFetchHelper *)self managedObjectIDCache];
  v11 = [v10 objectForKey:v9];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000E38DC;
  v31 = sub_1000E38EC;
  v32 = 0;
  if (!v11)
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ICBatchFetchHelper: %{public}@ is not in cachedManagedObjectForCKIdentifier", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_managedObjectContext);

  if (!WeakRetained)
  {
    v16 = +[REMLog cloudkit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_10076DC90();
    }

LABEL_9:

    goto LABEL_15;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_1000E38DC;
  v38 = sub_1000E38EC;
  v39 = 0;
  v13 = objc_loadWeakRetained(&self->_managedObjectContext);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000E50C4;
  v22 = &unk_1008DC748;
  v25 = &v27;
  v23 = self;
  v24 = v11;
  p_buf = &buf;
  [v13 performBlockAndWait:&v19];

  if (*(*(&buf + 1) + 40))
  {
    v14 = [REMLog cloudkit:v19];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10076DC04(v9, &buf + 8);
    }
  }

  else
  {
    if (v28[5])
    {
      goto LABEL_14;
    }

    v14 = [REMLog cloudkit:v19];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v33 = 138543362;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "ICBatchFetchHelper: existingObjectWithID %{public}@ is nil", v33, 0xCu);
    }
  }

  v15 = [(ICBatchFetchHelper *)self managedObjectIDCache];
  [v15 removeObjectForKey:v9];

LABEL_14:
  _Block_object_dispose(&buf, 8);

LABEL_15:
  v17 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)setCachedManagedObject:(id)a3 forCKIdentifier:(id)a4 accountIdentifier:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [v16 managedObjectContext];
  if (v16 && v11)
  {
    v12 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:v8 accountIdentifier:v9];
    v13 = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
    [v13 removeObjectForKey:v12];

    if ([(ICBatchFetchHelper *)self _canObtainPermanentIDForObject:v16 context:v11 ckIdentifierAccountIdentifierPair:v12])
    {
      v14 = [(ICBatchFetchHelper *)self managedObjectIDCache];
      v15 = [v16 objectID];
      [v14 setObject:v15 forKey:v12];
    }
  }
}

- (void)removeCachedManagedObjectForCKIdentifier:(id)a3 accountIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(v8);

  v10 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:v7 accountIdentifier:v6];
  v9 = [(ICBatchFetchHelper *)self managedObjectIDCache];
  [v9 removeObjectForKey:v10];
}

- (void)dealloc
{
  v3 = [(ICBatchFetchHelper *)self dispatchBlocks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10076DCF8();
    }
  }

  v6.receiver = self;
  v6.super_class = ICBatchFetchHelper;
  [(ICBatchFetchHelper *)&v6 dealloc];
}

- (NSManagedObjectContext)managedObjectContext
{
  WeakRetained = objc_loadWeakRetained(&self->_managedObjectContext);

  return WeakRetained;
}

@end
@interface ICBatchFetchHelper
- (BOOL)_canObtainPermanentIDForObject:(id)object context:(id)context ckIdentifierAccountIdentifierPair:(id)pair;
- (BOOL)isMissingCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (ICBatchFetchHelper)initWithQueue:(id)queue managedObjectContext:(id)context batchSize:(unint64_t)size cacheCountLimit:(unint64_t)limit;
- (NSManagedObjectContext)managedObjectContext;
- (id)cachedManagedObjectForCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (void)_dispatchBlockApplyingBackPressureIfNeeded:(id)needed;
- (void)_flush;
- (void)addCKIdentifiers:(id)identifiers accountIdentifier:(id)identifier onCurrentQueue:(BOOL)queue dispatchBlock:(id)block;
- (void)addDispatchBlock:(id)block;
- (void)dealloc;
- (void)flushOnCurrentQueue:(BOOL)queue;
- (void)removeCachedManagedObjectForCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
- (void)setCachedManagedObject:(id)object forCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier;
@end

@implementation ICBatchFetchHelper

- (ICBatchFetchHelper)initWithQueue:(id)queue managedObjectContext:(id)context batchSize:(unint64_t)size cacheCountLimit:(unint64_t)limit
{
  queueCopy = queue;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = ICBatchFetchHelper;
  v13 = [(ICBatchFetchHelper *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, queue);
    objc_storeWeak(&v14->_managedObjectContext, contextCopy);
    v14->_batchSize = size;
    v15 = [[NSMutableSet alloc] initWithCapacity:size];
    ckIdentifierAccountPairs = v14->_ckIdentifierAccountPairs;
    v14->_ckIdentifierAccountPairs = v15;

    v17 = [[NSMutableArray alloc] initWithCapacity:size];
    dispatchBlocks = v14->_dispatchBlocks;
    v14->_dispatchBlocks = v17;

    v19 = objc_alloc_init(NSCache);
    missingCKIdentifierAccountPairCache = v14->_missingCKIdentifierAccountPairCache;
    v14->_missingCKIdentifierAccountPairCache = v19;

    [(NSCache *)v14->_missingCKIdentifierAccountPairCache setCountLimit:limit];
    v21 = objc_alloc_init(NSCache);
    managedObjectIDCache = v14->_managedObjectIDCache;
    v14->_managedObjectIDCache = v21;

    [(NSCache *)v14->_managedObjectIDCache setCountLimit:limit];
    atomic_store(size, &remainingDispatchQueueCapacity);
  }

  return v14;
}

- (BOOL)_canObtainPermanentIDForObject:(id)object context:(id)context ckIdentifierAccountIdentifierPair:(id)pair
{
  objectCopy = object;
  contextCopy = context;
  pairCopy = pair;
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
  objectID = [objectCopy objectID];

  if (objectID)
  {
    objectID2 = [objectCopy objectID];
    isTemporaryID = [objectID2 isTemporaryID];

    if (isTemporaryID)
    {
      if (contextCopy)
      {
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_1000E38F4;
        v20 = &unk_1008DC748;
        v23 = &v28;
        v21 = contextCopy;
        v22 = objectCopy;
        v24 = &v25;
        [v21 performBlockAndWait:&v17];
        if ((v29[3] & 1) == 0)
        {
          v13 = [REMLog cloudkit:v17];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_10076DACC(pairCopy, v26);
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
  queue = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(queue);

  ckIdentifierAccountPairs = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
  v5 = [ckIdentifierAccountPairs count];

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    ckIdentifierAccountPairs2 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
    v8 = [ckIdentifierAccountPairs2 countByEnumeratingWithState:&v63 objects:v75 count:16];
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
          objc_enumerationMutation(ckIdentifierAccountPairs2);
        }

        v11 = *(*(&v63 + 1) + 8 * i);
        missingCKIdentifierAccountPairCache = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
        v13 = [missingCKIdentifierAccountPairCache objectForKey:v11];

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
          managedObjectIDCache = [(ICBatchFetchHelper *)self managedObjectIDCache];
          v18 = [managedObjectIDCache objectForKey:v11];

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

      v8 = [ckIdentifierAccountPairs2 countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (!v8)
      {
LABEL_17:

        ckIdentifierAccountPairs3 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
        [ckIdentifierAccountPairs3 minusSet:v6];

        break;
      }
    }
  }

  ckIdentifierAccountPairs4 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
  v21 = [ckIdentifierAccountPairs4 count] == 0;

  if (!v21)
  {
    v22 = objc_alloc_init(NSMutableSet);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    ckIdentifierAccountPairs5 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
    v24 = [ckIdentifierAccountPairs5 countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v24)
    {
      v25 = *v60;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v60 != v25)
          {
            objc_enumerationMutation(ckIdentifierAccountPairs5);
          }

          ckIdentifier = [*(*(&v59 + 1) + 8 * j) ckIdentifier];
          [v22 addObject:ckIdentifier];
        }

        v24 = [ckIdentifierAccountPairs5 countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v24);
    }

    v28 = [NSPredicate predicateWithFormat:@"ckIdentifier IN %@", v22];
    managedObjectContext = [(ICBatchFetchHelper *)self managedObjectContext];

    if (managedObjectContext)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v70 = 0x3032000000;
      v71 = sub_1000E38DC;
      v72 = sub_1000E38EC;
      v73 = 0;
      managedObjectContext2 = [(ICBatchFetchHelper *)self managedObjectContext];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000E4040;
      v55[3] = &unk_1008D9EE0;
      v56 = v28;
      selfCopy = self;
      p_buf = &buf;
      [managedObjectContext2 performBlockAndWait:v55];

      if (*(*(&buf + 1) + 40))
      {
        ckIdentifierAccountPairs6 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
        [ckIdentifierAccountPairs6 minusSet:*(*(&buf + 1) + 40)];
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
    ckIdentifierAccountPairs7 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
    v34 = [ckIdentifierAccountPairs7 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v34)
    {
      v35 = *v52;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v52 != v35)
          {
            objc_enumerationMutation(ckIdentifierAccountPairs7);
          }

          v37 = *(*(&v51 + 1) + 8 * k);
          missingCKIdentifierAccountPairCache2 = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
          [missingCKIdentifierAccountPairCache2 setObject:v37 forKey:v37];
        }

        v34 = [ckIdentifierAccountPairs7 countByEnumeratingWithState:&v51 objects:v68 count:16];
      }

      while (v34);
    }
  }

  dispatchBlocks = [(ICBatchFetchHelper *)self dispatchBlocks];
  v40 = [dispatchBlocks copy];

  ckIdentifierAccountPairs8 = [(ICBatchFetchHelper *)self ckIdentifierAccountPairs];
  [ckIdentifierAccountPairs8 removeAllObjects];

  dispatchBlocks2 = [(ICBatchFetchHelper *)self dispatchBlocks];
  [dispatchBlocks2 removeAllObjects];

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

- (void)_dispatchBlockApplyingBackPressureIfNeeded:(id)needed
{
  neededCopy = needed;
  queue = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_not_V2(queue);

  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  if ((atomic_fetch_add(remainingDispatchQueueCapacity, 0xFFFFFFFF) - 1) <= 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    queue2 = [(ICBatchFetchHelper *)self queue];
    dispatch_sync(queue2, neededCopy);

    v8 = CFAbsoluteTimeGetCurrent();
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v13 = 2048;
      v14 = v8 - Current;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ perform dispatch block sync took %f s", buf, 0x16u);
    }
  }

  else
  {
    queue3 = [(ICBatchFetchHelper *)self queue];
    dispatch_async(queue3, neededCopy);
  }
}

- (void)addCKIdentifiers:(id)identifiers accountIdentifier:(id)identifier onCurrentQueue:(BOOL)queue dispatchBlock:(id)block
{
  queueCopy = queue;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000E47A8;
  v18 = &unk_1008DAB10;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  selfCopy = self;
  blockCopy = block;
  v10 = blockCopy;
  v11 = identifierCopy;
  v12 = identifiersCopy;
  v13 = objc_retainBlock(&v15);
  if (queueCopy)
  {
    v14 = [(ICBatchFetchHelper *)self queue:v15];
    dispatch_assert_queue_V2(v14);

    dispatch_assert_queue_not_V2(&_dispatch_main_q);
    (v13[2])(v13);
  }

  else
  {
    [(ICBatchFetchHelper *)self _dispatchBlockApplyingBackPressureIfNeeded:v13, v15, v16, v17, v18, identifiersCopy, identifierCopy, selfCopy, blockCopy];
  }
}

- (void)addDispatchBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E49DC;
  v4[3] = &unk_1008DA048;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(ICBatchFetchHelper *)selfCopy _dispatchBlockApplyingBackPressureIfNeeded:v4];
}

- (void)flushOnCurrentQueue:(BOOL)queue
{
  queueCopy = queue;
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  Current = CFAbsoluteTimeGetCurrent();
  queue = [(ICBatchFetchHelper *)self queue];
  v7 = queue;
  if (queueCopy)
  {
    dispatch_assert_queue_V2(queue);

    [(ICBatchFetchHelper *)self _flush];
  }

  else
  {
    dispatch_assert_queue_not_V2(queue);

    queue2 = [(ICBatchFetchHelper *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E4C1C;
    block[3] = &unk_1008D9990;
    block[4] = self;
    dispatch_sync(queue2, block);
  }

  v9 = CFAbsoluteTimeGetCurrent();
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v14 = 1024;
    v15 = queueCopy;
    v16 = 2048;
    v17 = v9 - Current;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ flush (onCurrentQueue = %d) took %f s", buf, 0x1Cu);
  }
}

- (BOOL)isMissingCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  queue = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy];
  missingCKIdentifierAccountPairCache = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
  v11 = [missingCKIdentifierAccountPairCache objectForKey:v9];
  LOBYTE(self) = v11 != 0;

  return self;
}

- (id)cachedManagedObjectForCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  queue = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy];
  managedObjectIDCache = [(ICBatchFetchHelper *)self managedObjectIDCache];
  v11 = [managedObjectIDCache objectForKey:v9];

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
  selfCopy = self;
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

  managedObjectIDCache2 = [(ICBatchFetchHelper *)self managedObjectIDCache];
  [managedObjectIDCache2 removeObjectForKey:v9];

LABEL_14:
  _Block_object_dispose(&buf, 8);

LABEL_15:
  v17 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)setCachedManagedObject:(id)object forCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  objectCopy = object;
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  queue = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(queue);

  managedObjectContext = [objectCopy managedObjectContext];
  if (objectCopy && managedObjectContext)
  {
    v12 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy];
    missingCKIdentifierAccountPairCache = [(ICBatchFetchHelper *)self missingCKIdentifierAccountPairCache];
    [missingCKIdentifierAccountPairCache removeObjectForKey:v12];

    if ([(ICBatchFetchHelper *)self _canObtainPermanentIDForObject:objectCopy context:managedObjectContext ckIdentifierAccountIdentifierPair:v12])
    {
      managedObjectIDCache = [(ICBatchFetchHelper *)self managedObjectIDCache];
      objectID = [objectCopy objectID];
      [managedObjectIDCache setObject:objectID forKey:v12];
    }
  }
}

- (void)removeCachedManagedObjectForCKIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier
{
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  queue = [(ICBatchFetchHelper *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:identifierCopy accountIdentifier:accountIdentifierCopy];
  managedObjectIDCache = [(ICBatchFetchHelper *)self managedObjectIDCache];
  [managedObjectIDCache removeObjectForKey:v10];
}

- (void)dealloc
{
  dispatchBlocks = [(ICBatchFetchHelper *)self dispatchBlocks];
  v4 = [dispatchBlocks count];

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
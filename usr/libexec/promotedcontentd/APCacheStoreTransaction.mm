@interface APCacheStoreTransaction
- (APCacheStore)cacheStore;
- (APCacheStoreTransaction)initWithCacheStore:(id)store;
- (BOOL)_commit;
- (BOOL)commit;
- (unint64_t)count;
- (void)addOperation:(id)operation;
@end

@implementation APCacheStoreTransaction

- (APCacheStoreTransaction)initWithCacheStore:(id)store
{
  storeCopy = store;
  v5 = [(APCacheStoreTransaction *)self init];
  if (v5)
  {
    v6 = +[NSMutableArray array];
    operations = v5->_operations;
    v5->_operations = v6;

    objc_storeWeak(&v5->_cacheStore, storeCopy);
  }

  return v5;
}

- (unint64_t)count
{
  operations = [(APCacheStoreTransaction *)self operations];
  v3 = [operations count];

  return v3;
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  operations = [(APCacheStoreTransaction *)self operations];
  [operations addObject:operationCopy];
}

- (BOOL)commit
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cacheStore = [(APCacheStoreTransaction *)self cacheStore];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10036BC6C;
  v5[3] = &unk_1004803C8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [cacheStore executeBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_commit
{
  operations = [(APCacheStoreTransaction *)self operations];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [operations count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  operations2 = [(APCacheStoreTransaction *)self operations];
  v6 = [operations2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(operations2);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        execute = [v10 execute];
        [v4 addObject:v10];
        if (!execute)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v7 = [operations2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10036BE68;
  v14[3] = &unk_1004803E8;
  v15 = v12;
  [v4 enumerateObjectsUsingBlock:v14];

  return v12;
}

- (APCacheStore)cacheStore
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheStore);

  return WeakRetained;
}

@end
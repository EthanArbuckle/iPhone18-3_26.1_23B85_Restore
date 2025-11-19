@interface APCacheStoreTransaction
- (APCacheStore)cacheStore;
- (APCacheStoreTransaction)initWithCacheStore:(id)a3;
- (BOOL)_commit;
- (BOOL)commit;
- (unint64_t)count;
- (void)addOperation:(id)a3;
@end

@implementation APCacheStoreTransaction

- (APCacheStoreTransaction)initWithCacheStore:(id)a3
{
  v4 = a3;
  v5 = [(APCacheStoreTransaction *)self init];
  if (v5)
  {
    v6 = +[NSMutableArray array];
    operations = v5->_operations;
    v5->_operations = v6;

    objc_storeWeak(&v5->_cacheStore, v4);
  }

  return v5;
}

- (unint64_t)count
{
  v2 = [(APCacheStoreTransaction *)self operations];
  v3 = [v2 count];

  return v3;
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  v5 = [(APCacheStoreTransaction *)self operations];
  [v5 addObject:v4];
}

- (BOOL)commit
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(APCacheStoreTransaction *)self cacheStore];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10036BC6C;
  v5[3] = &unk_1004803C8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 executeBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)_commit
{
  v3 = [(APCacheStoreTransaction *)self operations];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(APCacheStoreTransaction *)self operations];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 execute];
        [v4 addObject:v10];
        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
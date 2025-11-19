@interface CKKSMemoryKeyCache
- (CKKSMemoryKeyCache)init;
- (id)currentKeyForClass:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
- (id)loadKeyForItem:(id)a3 error:(id *)a4;
- (id)loadKeyForUUID:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
- (void)addKeyToCache:(id)a3 key:(id)a4;
- (void)populateWithRecords:(id)a3 contextID:(id)a4;
@end

@implementation CKKSMemoryKeyCache

- (void)populateWithRecords:(id)a3 contextID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(CKKSCKRecordHolder *)[CKKSKey alloc] initWithCKRecord:*(*(&v14 + 1) + 8 * v11) contextID:v7];
        v13 = [(CKKSKey *)v12 uuid];
        [(CKKSMemoryKeyCache *)self addKeyToCache:v13 key:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addKeyToCache:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKKSMemoryKeyCache *)self keyCache];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (id)currentKeyForClass:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [CKKSCurrentKeyPointer fromDatabase:a3 contextID:v10 zoneID:v11 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 currentKeyUUID];
    v15 = [(CKKSMemoryKeyCache *)self loadKeyForUUID:v14 contextID:v10 zoneID:v11 error:a6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)loadKeyForItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 parentKeyUUID];
  v8 = [v6 contextID];
  v9 = [v6 zoneID];

  v10 = [(CKKSMemoryKeyCache *)self loadKeyForUUID:v7 contextID:v8 zoneID:v9 error:a4];

  return v10;
}

- (id)loadKeyForUUID:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CKKSMemoryKeyCache *)self keyCache];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (!v14)
  {
    v14 = [CKKSKey loadKeyWithUUID:v10 contextID:v11 zoneID:v12 error:a6];
    v15 = [(CKKSMemoryKeyCache *)self keyCache];
    [v15 setObject:v14 forKeyedSubscript:v10];
  }

  v16 = v14;

  return v16;
}

- (CKKSMemoryKeyCache)init
{
  v6.receiver = self;
  v6.super_class = CKKSMemoryKeyCache;
  v2 = [(CKKSMemoryKeyCache *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    keyCache = v2->_keyCache;
    v2->_keyCache = v3;
  }

  return v2;
}

@end
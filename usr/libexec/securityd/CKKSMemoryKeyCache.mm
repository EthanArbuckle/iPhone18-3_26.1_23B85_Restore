@interface CKKSMemoryKeyCache
- (CKKSMemoryKeyCache)init;
- (id)currentKeyForClass:(id)class contextID:(id)d zoneID:(id)iD error:(id *)error;
- (id)loadKeyForItem:(id)item error:(id *)error;
- (id)loadKeyForUUID:(id)d contextID:(id)iD zoneID:(id)zoneID error:(id *)error;
- (void)addKeyToCache:(id)cache key:(id)key;
- (void)populateWithRecords:(id)records contextID:(id)d;
@end

@implementation CKKSMemoryKeyCache

- (void)populateWithRecords:(id)records contextID:(id)d
{
  recordsCopy = records;
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [recordsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(recordsCopy);
        }

        v12 = [(CKKSCKRecordHolder *)[CKKSKey alloc] initWithCKRecord:*(*(&v14 + 1) + 8 * v11) contextID:dCopy];
        uuid = [(CKKSKey *)v12 uuid];
        [(CKKSMemoryKeyCache *)self addKeyToCache:uuid key:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [recordsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addKeyToCache:(id)cache key:(id)key
{
  keyCopy = key;
  cacheCopy = cache;
  keyCache = [(CKKSMemoryKeyCache *)self keyCache];
  [keyCache setObject:keyCopy forKeyedSubscript:cacheCopy];
}

- (id)currentKeyForClass:(id)class contextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v12 = [CKKSCurrentKeyPointer fromDatabase:class contextID:dCopy zoneID:iDCopy error:error];
  v13 = v12;
  if (v12)
  {
    currentKeyUUID = [v12 currentKeyUUID];
    v15 = [(CKKSMemoryKeyCache *)self loadKeyForUUID:currentKeyUUID contextID:dCopy zoneID:iDCopy error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)loadKeyForItem:(id)item error:(id *)error
{
  itemCopy = item;
  parentKeyUUID = [itemCopy parentKeyUUID];
  contextID = [itemCopy contextID];
  zoneID = [itemCopy zoneID];

  v10 = [(CKKSMemoryKeyCache *)self loadKeyForUUID:parentKeyUUID contextID:contextID zoneID:zoneID error:error];

  return v10;
}

- (id)loadKeyForUUID:(id)d contextID:(id)iD zoneID:(id)zoneID error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  keyCache = [(CKKSMemoryKeyCache *)self keyCache];
  v14 = [keyCache objectForKeyedSubscript:dCopy];

  if (!v14)
  {
    v14 = [CKKSKey loadKeyWithUUID:dCopy contextID:iDCopy zoneID:zoneIDCopy error:error];
    keyCache2 = [(CKKSMemoryKeyCache *)self keyCache];
    [keyCache2 setObject:v14 forKeyedSubscript:dCopy];
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
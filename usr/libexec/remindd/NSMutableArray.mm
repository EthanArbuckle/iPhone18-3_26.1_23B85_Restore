@interface NSMutableArray
- (void)ic_addNonNilObject:(id)object;
- (void)ic_addObjectsFromNonNilArray:(id)array;
- (void)ic_insertNonNilObject:(id)object atIndex:(int64_t)index;
- (void)ic_removeRecordsWithSameCKRecordIDInRecords:(id)records;
@end

@implementation NSMutableArray

- (void)ic_addNonNilObject:(id)object
{
  if (object)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)ic_addObjectsFromNonNilArray:(id)array
{
  if (array)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

- (void)ic_insertNonNilObject:(id)object atIndex:(int64_t)index
{
  objectCopy = object;
  if (index < 0)
  {
    v8 = +[REMLog utility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10076AF84(index, v8);
    }
  }

  else if ([(NSMutableArray *)self count]>= index)
  {
    if (objectCopy)
    {
      [(NSMutableArray *)self insertObject:objectCopy atIndex:index];
    }
  }

  else
  {
    v7 = +[REMLog utility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076AEE8(self, index, v7);
    }
  }
}

- (void)ic_removeRecordsWithSameCKRecordIDInRecords:(id)records
{
  recordsCopy = records;
  v4 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        objc_opt_class();
        v11 = REMDynamicCast();
        v12 = v11;
        if (v11)
        {
          recordID = [v11 recordID];
          recordName = [recordID recordName];
          [v4 setObject:recordID forKeyedSubscript:recordName];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v15 = objc_alloc_init(NSMutableArray);
  objectEnumerator = [(NSMutableArray *)self objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v18 = nextObject;
    do
    {
      objc_opt_class();
      v19 = REMDynamicCast();
      v20 = v19;
      if (v19)
      {
        recordID2 = [v19 recordID];
        recordName2 = [recordID2 recordName];
        v23 = [v4 objectForKeyedSubscript:recordName2];

        if ([recordID2 isEqual:v23])
        {
          [v15 addObject:v20];
        }
      }

      nextObject2 = [objectEnumerator nextObject];

      v18 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableArray *)self removeObjectsInArray:v15];
}

@end
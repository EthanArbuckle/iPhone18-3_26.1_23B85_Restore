@interface NSMutableArray
- (void)ic_addNonNilObject:(id)a3;
- (void)ic_addObjectsFromNonNilArray:(id)a3;
- (void)ic_insertNonNilObject:(id)a3 atIndex:(int64_t)a4;
- (void)ic_removeRecordsWithSameCKRecordIDInRecords:(id)a3;
@end

@implementation NSMutableArray

- (void)ic_addNonNilObject:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)ic_addObjectsFromNonNilArray:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

- (void)ic_insertNonNilObject:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  if (a4 < 0)
  {
    v8 = +[REMLog utility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10076AF84(a4, v8);
    }
  }

  else if ([(NSMutableArray *)self count]>= a4)
  {
    if (v6)
    {
      [(NSMutableArray *)self insertObject:v6 atIndex:a4];
    }
  }

  else
  {
    v7 = +[REMLog utility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076AEE8(self, a4, v7);
    }
  }
}

- (void)ic_removeRecordsWithSameCKRecordIDInRecords:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
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
          v13 = [v11 recordID];
          v14 = [v13 recordName];
          [v4 setObject:v13 forKeyedSubscript:v14];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v15 = objc_alloc_init(NSMutableArray);
  v16 = [(NSMutableArray *)self objectEnumerator];
  v17 = [v16 nextObject];
  if (v17)
  {
    v18 = v17;
    do
    {
      objc_opt_class();
      v19 = REMDynamicCast();
      v20 = v19;
      if (v19)
      {
        v21 = [v19 recordID];
        v22 = [v21 recordName];
        v23 = [v4 objectForKeyedSubscript:v22];

        if ([v21 isEqual:v23])
        {
          [v15 addObject:v20];
        }
      }

      v24 = [v16 nextObject];

      v18 = v24;
    }

    while (v24);
  }

  [(NSMutableArray *)self removeObjectsInArray:v15];
}

@end
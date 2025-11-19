@interface GKListCacheObject
- (id)entriesPassingTest:(id)a3;
- (id)entryPassingTest:(id)a3;
- (id)findEntry:(id)a3;
- (id)internalRepresentation;
- (void)removeEntriesMatchingPredicate:(id)a3;
- (void)reorderEntry:(id)a3 toIndex:(int64_t)a4;
- (void)updateEntriesWithRepresentations:(id)a3 entryForRepresentation:(id)a4 reuseEntriesByIndex:(BOOL)a5;
- (void)updateSeed;
@end

@implementation GKListCacheObject

- (void)updateSeed
{
  v4 = +[NSUUID UUID];
  v3 = [v4 UUIDString];
  [(GKListCacheObject *)self setSeed:v3];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKListCacheObject internalRepresentation]", [v7 UTF8String], 2271);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKListCacheObject *)self entries];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(GKListCacheObject *)self entries];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) internalRepresentation];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (void)reorderEntry:(id)a3 toIndex:(int64_t)a4
{
  v14 = a3;
  v6 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v7 = +[NSThread callStackSymbols];
    v8 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject reorderEntry:toIndex:]", v7];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v10 = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "-[GKListCacheObject reorderEntry:toIndex:]", [v10 UTF8String], 2284);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  v12 = [v14 list];

  if (v12 == self)
  {
    v13 = [(GKListCacheObject *)self mutableOrderedSetValueForKey:@"entries"];
    [v13 insertObject:v14 atIndex:a4];
    [(GKListCacheObject *)self updateSeed];
  }
}

- (void)removeEntriesMatchingPredicate:(id)a3
{
  v14 = a3;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject removeEntriesMatchingPredicate:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKListCacheObject removeEntriesMatchingPredicate:]", [v8 UTF8String], 2295);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [(GKListCacheObject *)self entries];
  v11 = [v10 array];
  v12 = [v11 filteredArrayUsingPredicate:v14];

  if ([v12 count])
  {
    v13 = [(GKListCacheObject *)self managedObjectContext];
    [v13 _gkDeleteObjects:v12];

    [(GKListCacheObject *)self updateSeed];
  }
}

- (void)updateEntriesWithRepresentations:(id)a3 entryForRepresentation:(id)a4 reuseEntriesByIndex:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = dispatch_get_current_queue();
  v44 = self;
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject updateEntriesWithRepresentations:entryForRepresentation:reuseEntriesByIndex:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v14 = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKListCacheObject updateEntriesWithRepresentations:entryForRepresentation:reuseEntriesByIndex:]", [v14 UTF8String], 2308);

    self = v44;
    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v46 = [(GKListCacheObject *)self managedObjectContext];
  v47 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v8 count]);
  v16 = +[NSMapTable weakToWeakObjectsMapTable];
  v43 = v8;
  if (v5)
  {
    v17 = [(GKListCacheObject *)self entries];
    v18 = [v17 count];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v8;
    v19 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (!v19)
    {
      goto LABEL_26;
    }

    v20 = v19;
    v21 = 0;
    v22 = *v57;
    while (1)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v56 + 1) + 8 * i);
        if (v21 >= v18)
        {
          v26 = v9[2](v9, *(*(&v56 + 1) + 8 * i), v46);
          if (!v26)
          {
            goto LABEL_14;
          }

LABEL_13:
          [v47 addObject:v26];
          [v16 setObject:v24 forKey:v26];
          goto LABEL_14;
        }

        v25 = [(GKListCacheObject *)v44 entries];
        v26 = [v25 objectAtIndex:v21];

        if (v26)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v21;
      }

      v20 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (!v20)
      {
        goto LABEL_26;
      }
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v27 = v8;
  v28 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v52 + 1) + 8 * j);
        v33 = v9[2](v9, v32, v46);
        if (v33)
        {
          [v47 addObject:v33];
          [v16 setObject:v32 forKey:v33];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v29);
  }

LABEL_26:

  v34 = [(GKListCacheObject *)v44 entries];
  v35 = [NSMutableOrderedSet orderedSetWithOrderedSet:v34];

  [v35 minusOrderedSet:v47];
  [(GKListCacheObject *)v44 setEntries:v47];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v36 = v47;
  v37 = [v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v49;
    do
    {
      for (k = 0; k != v38; k = k + 1)
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v48 + 1) + 8 * k);
        v42 = [v16 objectForKey:v41];
        [v41 updateWithServerRepresentation:v42];
      }

      v38 = [v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v38);
  }

  if ([v35 count])
  {
    [v46 _gkDeleteObjects:v35];
  }

  [(GKListCacheObject *)v44 updateSeed];
}

- (id)findEntry:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject findEntry:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKListCacheObject findEntry:]", [v9 UTF8String], 2364);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [(GKListCacheObject *)self entries];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10012E214;
  v17[3] = &unk_100367C10;
  v12 = v4;
  v18 = v12;
  v13 = [v11 indexOfObjectPassingTest:v17];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v15 = [(GKListCacheObject *)self entries];
    v14 = [v15 objectAtIndex:v13];
  }

  return v14;
}

- (id)entryPassingTest:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject entryPassingTest:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKListCacheObject entryPassingTest:]", [v9 UTF8String], 2382);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [(GKListCacheObject *)self entries];
  v12 = [v11 indexOfObjectPassingTest:v4];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(GKListCacheObject *)self entries];
    v13 = [v14 objectAtIndex:v12];
  }

  return v13;
}

- (id)entriesPassingTest:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject entriesPassingTest:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKListCacheObject entriesPassingTest:]", [v9 UTF8String], 2393);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [(GKListCacheObject *)self entries];
  v12 = [v11 indexesOfObjectsPassingTest:v4];

  if ([v12 count])
  {
    v13 = [(GKListCacheObject *)self entries];
    v14 = [v13 objectsAtIndexes:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end
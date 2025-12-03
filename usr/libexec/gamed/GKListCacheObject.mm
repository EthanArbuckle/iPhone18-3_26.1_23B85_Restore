@interface GKListCacheObject
- (id)entriesPassingTest:(id)test;
- (id)entryPassingTest:(id)test;
- (id)findEntry:(id)entry;
- (id)internalRepresentation;
- (void)removeEntriesMatchingPredicate:(id)predicate;
- (void)reorderEntry:(id)entry toIndex:(int64_t)index;
- (void)updateEntriesWithRepresentations:(id)representations entryForRepresentation:(id)representation reuseEntriesByIndex:(BOOL)index;
- (void)updateSeed;
@end

@implementation GKListCacheObject

- (void)updateSeed
{
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  [(GKListCacheObject *)self setSeed:uUIDString];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 2271);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  entries = [(GKListCacheObject *)self entries];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [entries count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  entries2 = [(GKListCacheObject *)self entries];
  v12 = [entries2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(entries2);
        }

        internalRepresentation = [*(*(&v18 + 1) + 8 * i) internalRepresentation];
        if (internalRepresentation)
        {
          [v10 addObject:internalRepresentation];
        }
      }

      v13 = [entries2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (void)reorderEntry:(id)entry toIndex:(int64_t)index
{
  entryCopy = entry;
  v6 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v7 = +[NSThread callStackSymbols];
    v8 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject reorderEntry:toIndex:]", v7];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "-[GKListCacheObject reorderEntry:toIndex:]", [lastPathComponent UTF8String], 2284);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  list = [entryCopy list];

  if (list == self)
  {
    v13 = [(GKListCacheObject *)self mutableOrderedSetValueForKey:@"entries"];
    [v13 insertObject:entryCopy atIndex:index];
    [(GKListCacheObject *)self updateSeed];
  }
}

- (void)removeEntriesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject removeEntriesMatchingPredicate:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKListCacheObject removeEntriesMatchingPredicate:]", [lastPathComponent UTF8String], 2295);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  entries = [(GKListCacheObject *)self entries];
  array = [entries array];
  v12 = [array filteredArrayUsingPredicate:predicateCopy];

  if ([v12 count])
  {
    managedObjectContext = [(GKListCacheObject *)self managedObjectContext];
    [managedObjectContext _gkDeleteObjects:v12];

    [(GKListCacheObject *)self updateSeed];
  }
}

- (void)updateEntriesWithRepresentations:(id)representations entryForRepresentation:(id)representation reuseEntriesByIndex:(BOOL)index
{
  indexCopy = index;
  representationsCopy = representations;
  representationCopy = representation;
  v10 = dispatch_get_current_queue();
  selfCopy = self;
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject updateEntriesWithRepresentations:entryForRepresentation:reuseEntriesByIndex:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKListCacheObject updateEntriesWithRepresentations:entryForRepresentation:reuseEntriesByIndex:]", [lastPathComponent UTF8String], 2308);

    self = selfCopy;
    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  managedObjectContext = [(GKListCacheObject *)self managedObjectContext];
  v47 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [representationsCopy count]);
  v16 = +[NSMapTable weakToWeakObjectsMapTable];
  v43 = representationsCopy;
  if (indexCopy)
  {
    entries = [(GKListCacheObject *)self entries];
    v18 = [entries count];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = representationsCopy;
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
          v26 = representationCopy[2](representationCopy, *(*(&v56 + 1) + 8 * i), managedObjectContext);
          if (!v26)
          {
            goto LABEL_14;
          }

LABEL_13:
          [v47 addObject:v26];
          [v16 setObject:v24 forKey:v26];
          goto LABEL_14;
        }

        entries2 = [(GKListCacheObject *)selfCopy entries];
        v26 = [entries2 objectAtIndex:v21];

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
  v27 = representationsCopy;
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
        v33 = representationCopy[2](representationCopy, v32, managedObjectContext);
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

  entries3 = [(GKListCacheObject *)selfCopy entries];
  v35 = [NSMutableOrderedSet orderedSetWithOrderedSet:entries3];

  [v35 minusOrderedSet:v47];
  [(GKListCacheObject *)selfCopy setEntries:v47];
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
    [managedObjectContext _gkDeleteObjects:v35];
  }

  [(GKListCacheObject *)selfCopy updateSeed];
}

- (id)findEntry:(id)entry
{
  entryCopy = entry;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject findEntry:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKListCacheObject findEntry:]", [lastPathComponent UTF8String], 2364);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  entries = [(GKListCacheObject *)self entries];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10012E214;
  v17[3] = &unk_100367C10;
  v12 = entryCopy;
  v18 = v12;
  v13 = [entries indexOfObjectPassingTest:v17];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    entries2 = [(GKListCacheObject *)self entries];
    v14 = [entries2 objectAtIndex:v13];
  }

  return v14;
}

- (id)entryPassingTest:(id)test
{
  testCopy = test;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject entryPassingTest:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKListCacheObject entryPassingTest:]", [lastPathComponent UTF8String], 2382);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  entries = [(GKListCacheObject *)self entries];
  v12 = [entries indexOfObjectPassingTest:testCopy];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    entries2 = [(GKListCacheObject *)self entries];
    v13 = [entries2 objectAtIndex:v12];
  }

  return v13;
}

- (id)entriesPassingTest:(id)test
{
  testCopy = test;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKListCacheObject entriesPassingTest:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKListCacheObject entriesPassingTest:]", [lastPathComponent UTF8String], 2393);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  entries = [(GKListCacheObject *)self entries];
  v12 = [entries indexesOfObjectsPassingTest:testCopy];

  if ([v12 count])
  {
    entries2 = [(GKListCacheObject *)self entries];
    v14 = [entries2 objectsAtIndexes:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end
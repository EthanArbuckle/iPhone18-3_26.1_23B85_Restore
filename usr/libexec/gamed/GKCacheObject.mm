@interface GKCacheObject
+ (const)uniqueObjectIDLookupKey;
+ (id)attributesDescriptionsForAttributesWithKeys:(id)keys;
+ (id)entityInManagedObjectContext:(id)context;
+ (id)entityName;
+ (id)fetchRequestForContext:(id)context;
+ (id)firstObjectMatchingPredicate:(id)predicate context:(id)context;
+ (id)objectsMatchingPredicate:(id)predicate context:(id)context;
+ (id)uniqueAttributeName;
+ (id)uniqueObjectIDLookupWithContext:(id)context;
+ (unint64_t)countObjectsMatchingPredicate:(id)predicate context:(id)context;
+ (void)deleteObjectsMatchingPredicate:(id)predicate context:(id)context;
- (BOOL)hasImages;
- (GKCacheObject)initWithManagedObjectContext:(id)context;
- (id)imageCacheKeyPathsByKey;
- (id)imageURLDictionary;
- (id)updateImagesWithImageURLs:(id)ls;
- (void)clearImages;
- (void)deleteCachedImage:(id)image;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v3 = +[NSThread callStackSymbols];
    v4 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCacheObject updateWithServerRepresentation:]", v3];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v4, "-[GKCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 259);

    [NSException raise:@"GameKit Exception" format:@"%@", v7];
  }
}

+ (id)entityName
{
  v2 = [NSString stringWithFormat:@"Subclasses must provide a valid entityName"];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "+[GKCacheObject entityName]", [lastPathComponent UTF8String], 271);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

+ (id)entityInManagedObjectContext:(id)context
{
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FA44();
    if (contextCopy)
    {
      goto LABEL_5;
    }
  }

  else if (contextCopy)
  {
LABEL_5:
    entityName = [self entityName];
    if (!entityName)
    {
      v7 = [NSString stringWithFormat:@"Subclasses must provide a valid entityName"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (entityName != nil)\n[%s (%s:%d)]", v7, "+[GKCacheObject entityInManagedObjectContext:]", [lastPathComponent UTF8String], 284);

      [NSException raise:@"GameKit Exception" format:@"%@", v10];
    }

    v11 = [NSEntityDescription entityForName:entityName inManagedObjectContext:contextCopy];

    goto LABEL_14;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FA80();
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (GKCacheObject)initWithManagedObjectContext:(id)context
{
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FABC();
  }

  v6 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v7 = +[NSThread callStackSymbols];
    v8 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCacheObject initWithManagedObjectContext:]", v7];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "-[GKCacheObject initWithManagedObjectContext:]", [lastPathComponent UTF8String], 293);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  v12 = [objc_opt_class() entityInManagedObjectContext:contextCopy];
  if (v12)
  {
    v15.receiver = self;
    v15.super_class = GKCacheObject;
    self = [(GKCacheObject *)&v15 initWithEntity:v12 insertIntoManagedObjectContext:contextCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)fetchRequestForContext:(id)context
{
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FAF8();
  }

  entityName = [self entityName];
  v7 = [NSFetchRequest fetchRequestWithEntityName:entityName];

  [v7 setIncludesSubentities:1];
  [v7 setIncludesPropertyValues:1];
  [v7 setIncludesPendingChanges:1];
  fetchSortDescriptors = [self fetchSortDescriptors];
  [v7 setSortDescriptors:fetchSortDescriptors];

  relationshipKeyPathsForPrefetch = [self relationshipKeyPathsForPrefetch];
  [v7 setRelationshipKeyPathsForPrefetching:relationshipKeyPathsForPrefetch];

  [v7 setReturnsObjectsAsFaults:0];

  return v7;
}

+ (id)objectsMatchingPredicate:(id)predicate context:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKCacheObject objectsMatchingPredicate:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKCacheObject objectsMatchingPredicate:context:]", [lastPathComponent UTF8String], 337);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [self fetchRequestForContext:contextCopy];
  if (!predicateCopy)
  {
    predicateCopy = [NSPredicate predicateWithValue:1];
  }

  [v14 setPredicate:predicateCopy];
  v15 = [self _gkObjectsFromFetchRequest:v14 withContext:contextCopy];

  return v15;
}

+ (unint64_t)countObjectsMatchingPredicate:(id)predicate context:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKCacheObject countObjectsMatchingPredicate:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKCacheObject countObjectsMatchingPredicate:context:]", [lastPathComponent UTF8String], 350);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [self fetchRequestForContext:contextCopy];
  if (!predicateCopy)
  {
    predicateCopy = [NSPredicate predicateWithValue:1];
  }

  [v14 setPredicate:predicateCopy];
  v15 = [contextCopy _gkCountObjectsFromRequest:v14];

  return v15;
}

+ (id)firstObjectMatchingPredicate:(id)predicate context:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKCacheObject firstObjectMatchingPredicate:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKCacheObject firstObjectMatchingPredicate:context:]", [lastPathComponent UTF8String], 363);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [self fetchRequestForContext:contextCopy];
  [v14 setFetchLimit:1];
  if (!predicateCopy)
  {
    predicateCopy = [NSPredicate predicateWithValue:1];
  }

  [v14 setPredicate:predicateCopy];
  v19 = 0;
  v15 = [contextCopy executeFetchRequest:v14 error:&v19];
  v16 = v19;
  if ([v15 count])
  {
    v17 = [v15 objectAtIndex:0];
  }

  else
  {
    v17 = 0;
    if (!v15 && v16)
    {
      [contextCopy _gkHandleFetchError:v16];
      v17 = 0;
    }
  }

  return v17;
}

+ (void)deleteObjectsMatchingPredicate:(id)predicate context:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKCacheObject deleteObjectsMatchingPredicate:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKCacheObject deleteObjectsMatchingPredicate:context:]", [lastPathComponent UTF8String], 386);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [self objectsMatchingPredicate:predicateCopy context:contextCopy];
  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FB34();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [contextCopy deleteObject:*(*(&v21 + 1) + 8 * v20)];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }
}

+ (id)uniqueAttributeName
{
  v2 = [NSString stringWithFormat:@"Subclass %@ must override uniqueAttributeName", objc_opt_class()];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "+[GKCacheObject uniqueAttributeName]", [lastPathComponent UTF8String], 407);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

+ (const)uniqueObjectIDLookupKey
{
  v2 = [NSString stringWithFormat:@"Subclass %@ must override uniqueObjectIDLookupKey", objc_opt_class()];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "+[GKCacheObject uniqueObjectIDLookupKey]", [lastPathComponent UTF8String], 414);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

+ (id)uniqueObjectIDLookupWithContext:(id)context
{
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FBA4();
  }

  uniqueObjectIDLookupKey = [self uniqueObjectIDLookupKey];
  v7 = objc_getAssociatedObject(contextCopy, uniqueObjectIDLookupKey);
  if (!v7)
  {
    v7 = [[GKUniqueObjectIDLookup alloc] initWithObjectClass:self context:contextCopy];
    objc_setAssociatedObject(contextCopy, uniqueObjectIDLookupKey, v7, 1);
  }

  return v7;
}

+ (id)attributesDescriptionsForAttributesWithKeys:(id)keys
{
  keysCopy = keys;
  entityName = [self entityName];
  v6 = +[GKClientProxy managedObjectModel];
  entitiesByName = [v6 entitiesByName];
  v8 = [entitiesByName objectForKeyedSubscript:entityName];

  [v8 attributesByName];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001230A8;
  v13 = v12[3] = &unk_100363E48;
  v9 = v13;
  v10 = [keysCopy _gkMapWithBlock:v12];

  return v10;
}

- (id)imageCacheKeyPathsByKey
{
  v2 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v2, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v3 = +[NSThread callStackSymbols];
    v4 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCacheObject(GKCacheObjectImageProtocol) imageCacheKeyPathsByKey]", v3];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v4, "-[GKCacheObject(GKCacheObjectImageProtocol) imageCacheKeyPathsByKey]", [lastPathComponent UTF8String], 449);

    [NSException raise:@"GameKit Exception" format:@"%@", v7];
  }

  if (qword_1003B9250 != -1)
  {
    sub_10028FBE0();
  }

  v8 = qword_1003B9248;

  return v8;
}

- (id)updateImagesWithImageURLs:(id)ls
{
  lsCopy = ls;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FBF4();
  }

  v6 = dispatch_get_current_queue();
  v7 = &_sScA15unownedExecutorScevgTj_ptr;
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCacheObject(GKCacheObjectImageProtocol) updateImagesWithImageURLs:]", v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "-[GKCacheObject(GKCacheObjectImageProtocol) updateImagesWithImageURLs:]", [lastPathComponent UTF8String], 466);

    v7 = &_sScA15unownedExecutorScevgTj_ptr;
    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  if (([(GKCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"Assertion failed"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent2 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v13, "-[GKCacheObject(GKCacheObjectImageProtocol) updateImagesWithImageURLs:]", [lastPathComponent2 UTF8String], 467);

    [v7[171] raise:@"GameKit Exception" format:{@"%@", v16}];
  }

  v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [lsCopy count]);
  imageCacheKeyPathsByKey = [(GKCacheObject *)self imageCacheKeyPathsByKey];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100123518;
  v24[3] = &unk_1003678D8;
  v25 = lsCopy;
  selfCopy = self;
  v19 = v17;
  v27 = v19;
  v20 = lsCopy;
  [imageCacheKeyPathsByKey enumerateKeysAndObjectsUsingBlock:v24];

  v21 = v27;
  v22 = v19;

  return v19;
}

- (id)imageURLDictionary
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCacheObject(GKCacheObjectImageProtocol) imageURLDictionary]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKCacheObject(GKCacheObjectImageProtocol) imageURLDictionary]", [lastPathComponent UTF8String], 485);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  if (([(GKCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Assertion failed"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent2 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v9, "-[GKCacheObject(GKCacheObjectImageProtocol) imageURLDictionary]", [lastPathComponent2 UTF8String], 486);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1001238B4;
  v21 = sub_1001238C4;
  v22 = 0;
  imageCacheKeyPathsByKey = [(GKCacheObject *)self imageCacheKeyPathsByKey];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001238CC;
  v16[3] = &unk_100367900;
  v16[4] = self;
  v16[5] = &v17;
  [imageCacheKeyPathsByKey enumerateKeysAndObjectsUsingBlock:v16];

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (void)deleteCachedImage:(id)image
{
  imageCopy = image;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028FC30();
    if (!imageCopy)
    {
      goto LABEL_21;
    }

LABEL_5:
    v5 = GKImageCacheRoot();
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028FC6C();
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    else if (!v5)
    {
      goto LABEL_20;
    }

    v7 = +[NSFileManager defaultManager];
    v8 = [v7 fileExistsAtPath:v5];

    if (v8)
    {
      v9 = +[NSFileManager defaultManager];
      v14 = 0;
      v10 = [v9 removeItemAtPath:v5 error:&v14];
      v11 = v14;

      if (!v10)
      {
        goto LABEL_14;
      }

      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_10028FCDC();
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
LABEL_14:
        if (v11)
        {
LABEL_15:
          if (!os_log_GKGeneral)
          {
            v13 = GKOSLoggers();
          }

          if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
          {
            sub_10028FD4C();
          }
        }
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  if (imageCopy)
  {
    goto LABEL_5;
  }

LABEL_21:
}

- (void)clearImages
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCacheObject(GKCacheObjectImageProtocol) clearImages]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKCacheObject(GKCacheObjectImageProtocol) clearImages]", [lastPathComponent UTF8String], 528);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  if (([(GKCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Assertion failed"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent2 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v9, "-[GKCacheObject(GKCacheObjectImageProtocol) clearImages]", [lastPathComponent2 UTF8String], 529);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  imageCacheKeyPathsByKey = [(GKCacheObject *)self imageCacheKeyPathsByKey];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100123D94;
  v14[3] = &unk_100367928;
  v14[4] = self;
  [imageCacheKeyPathsByKey enumerateKeysAndObjectsUsingBlock:v14];
}

- (BOOL)hasImages
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCacheObject(GKCacheObjectImageProtocol) hasImages]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKCacheObject(GKCacheObjectImageProtocol) hasImages]", [lastPathComponent UTF8String], 540);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  if (([(GKCacheObject *)self conformsToProtocol:&OBJC_PROTOCOL___GKCacheObjectImageProtocol]& 1) == 0)
  {
    v9 = [NSString stringWithFormat:@"Assertion failed"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent2 = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([self conformsToProtocol:@protocol(GKCacheObjectImageProtocol)])\n[%s (%s:%d)]", v9, "-[GKCacheObject(GKCacheObjectImageProtocol) hasImages]", [lastPathComponent2 UTF8String], 541);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  imageCacheKeyPathsByKey = [(GKCacheObject *)self imageCacheKeyPathsByKey];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001240A4;
  v16[3] = &unk_100367900;
  v16[4] = self;
  v16[5] = &v17;
  [imageCacheKeyPathsByKey enumerateKeysAndObjectsUsingBlock:v16];

  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v14;
}

@end
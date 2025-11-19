@interface GKUniqueObjectIDLookup
- (GKUniqueObjectIDLookup)initWithObjectClass:(Class)a3 context:(id)a4;
- (GKUniqueObjectIDLookup)initWithObjectClass:(Class)a3 context:(id)a4 predicate:(id)a5;
- (id)insertObjectsForServerRepresentations:(id)a3 context:(id)a4 newObject:(id)a5;
- (id)uniqueObjectsForKeys:(id)a3 context:(id)a4 newObject:(id)a5;
- (void)_populateWithContext:(id)a3;
- (void)dealloc;
@end

@implementation GKUniqueObjectIDLookup

- (GKUniqueObjectIDLookup)initWithObjectClass:(Class)a3 context:(id)a4
{
  v6 = a4;
  v7 = [NSPredicate predicateWithValue:1];
  v8 = [(GKUniqueObjectIDLookup *)self initWithObjectClass:a3 context:v6 predicate:v7];

  return v8;
}

- (GKUniqueObjectIDLookup)initWithObjectClass:(Class)a3 context:(id)a4 predicate:(id)a5
{
  v7 = a5;
  v8 = [(objc_class *)a3 uniqueAttributeName];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Class %@ must define a attribute for uniquing.", a3];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v16 = [v15 lastPathComponent];
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (uniqueKey != nil)\n[%s (%s:%d)]", v14, "-[GKUniqueObjectIDLookup initWithObjectClass:context:predicate:]", [v16 UTF8String], 58);

    [NSException raise:@"GameKit Exception" format:@"%@", v17];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = [NSPredicate predicateWithValue:1];
LABEL_3:
  v18.receiver = self;
  v18.super_class = GKUniqueObjectIDLookup;
  v9 = [(GKUniqueObjectIDLookup *)&v18 init];
  if (v9)
  {
    v10 = [NSString stringWithFormat:@"%s.%@", class_getName(a3), v8];
    v11 = [[GKThreadsafeDictionary alloc] initWithName:v10];
    lookup = v9->_lookup;
    v9->_lookup = v11;

    objc_storeStrong(&v9->_predicate, v7);
    v9->_objectClass = a3;
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKUniqueObjectIDLookup;
  [(GKUniqueObjectIDLookup *)&v4 dealloc];
}

- (void)_populateWithContext:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKUniqueObjectIDLookup _populateWithContext:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKUniqueObjectIDLookup _populateWithContext:]", [v9 UTF8String], 80);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v11 = [(objc_class *)self->_objectClass uniqueAttributeName];
  v12 = [(objc_class *)self->_objectClass fetchRequestForContext:v4];
  [v12 setPredicate:self->_predicate];
  [v12 setResultType:2];
  v13 = objc_alloc_init(NSExpressionDescription);
  [v13 setName:@"objectID"];
  v14 = +[NSExpression expressionForEvaluatedObject];
  [v13 setExpression:v14];

  [v13 setExpressionResultType:2000];
  v29[0] = v11;
  v29[1] = v13;
  v15 = [NSArray arrayWithObjects:v29 count:2];
  [v12 setPropertiesToFetch:v15];

  [v12 setReturnsDistinctResults:1];
  lookup = self->_lookup;
  if (!lookup)
  {
    v17 = [NSString stringWithFormat:@"_lookup is unexpectedly nil"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v19 = [v18 lastPathComponent];
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (self->_lookup != nil)\n[%s (%s:%d)]", v17, "-[GKUniqueObjectIDLookup _populateWithContext:]", [v19 UTF8String], 95);

    [NSException raise:@"GameKit Exception" format:@"%@", v20];
    lookup = self->_lookup;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100120D3C;
  v24[3] = &unk_1003677A0;
  v25 = v4;
  v26 = v12;
  v27 = v11;
  v28 = self;
  v21 = v11;
  v22 = v12;
  v23 = v4;
  [(GKThreadsafeDictionary *)lookup writeToDictionary:v24];
}

- (id)uniqueObjectsForKeys:(id)a3 context:(id)a4 newObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v47 = a5;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028F928();
  }

  v11 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v11, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v12 = +[NSThread callStackSymbols];
    v13 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKUniqueObjectIDLookup uniqueObjectsForKeys:context:newObject:]", v12];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v13, "-[GKUniqueObjectIDLookup uniqueObjectsForKeys:context:newObject:]", [v15 UTF8String], 141);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  if (GKAtomicCompareAndSwap32Barrier())
  {
    [(GKUniqueObjectIDLookup *)self _populateWithContext:v9];
  }

  v17 = [v8 count];
  v48 = [(objc_class *)self->_objectClass uniqueAttributeName];
  v18 = [[NSMutableArray alloc] initWithCapacity:v17];
  v19 = [[NSMutableDictionary alloc] initWithCapacity:v17];
  lookup = self->_lookup;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1001217CC;
  v63[3] = &unk_1003677C8;
  v21 = v8;
  v64 = v21;
  v22 = v19;
  v65 = v22;
  [(GKThreadsafeDictionary *)lookup readFromDictionary:v63];
  v23 = [[NSMutableArray alloc] initWithCapacity:v17];
  v24 = [NSMutableDictionary dictionaryWithCapacity:v17];
  v25 = [v22 allValues];
  v26 = [NSMutableSet setWithArray:v25];

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100121900;
  v59[3] = &unk_1003677F0;
  v27 = v9;
  v60 = v27;
  v28 = v24;
  v61 = v28;
  v29 = v26;
  v62 = v29;
  [v22 enumerateKeysAndObjectsUsingBlock:v59];
  if ([v29 count])
  {
    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028F964();
    }

    v31 = [NSFetchRequest alloc];
    v32 = [(objc_class *)self->_objectClass entityName];
    v33 = [v31 initWithEntityName:v32];

    v34 = [NSPredicate predicateWithFormat:@"self IN %@", v29];
    [v33 setPredicate:v34];

    v35 = [(objc_class *)self->_objectClass relationshipKeyPathsForPrefetch];
    [v33 setRelationshipKeyPathsForPrefetching:v35];

    [v33 setReturnsObjectsAsFaults:0];
    v36 = [v27 executeFetchRequest:v33 error:0];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100121994;
    v56[3] = &unk_100367818;
    v57 = v48;
    v58 = v28;
    [v36 enumerateObjectsUsingBlock:v56];
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100121A00;
  v51[3] = &unk_100367840;
  v37 = v28;
  v52 = v37;
  v38 = v47;
  v55 = v38;
  v39 = v23;
  v53 = v39;
  v40 = v18;
  v54 = v40;
  [v21 enumerateObjectsUsingBlock:v51];
  if ([v39 count])
  {
    if ([v27 obtainPermanentIDsForObjects:v39 error:0])
    {
      v41 = [v39 _gkMapDictionaryWithKeyPath:v48 valueKeyPath:@"objectID"];
      if (v41)
      {
        v42 = self->_lookup;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100121AA0;
        v49[3] = &unk_100367868;
        v50 = v41;
        v43 = v41;
        [(GKThreadsafeDictionary *)v42 writeToDictionary:v49];
      }
    }
  }

  v44 = v54;
  v45 = v40;

  return v40;
}

- (id)insertObjectsForServerRepresentations:(id)a3 context:(id)a4 newObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v11, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v12 = +[NSThread callStackSymbols];
    v13 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKUniqueObjectIDLookup insertObjectsForServerRepresentations:context:newObject:]", v12];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v13, "-[GKUniqueObjectIDLookup insertObjectsForServerRepresentations:context:newObject:]", [v15 UTF8String], 226);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100121D98;
  v28[3] = &unk_100367890;
  v17 = v10;
  v29 = v17;
  v18 = [v8 _gkMapWithBlock:v28];
  if ([v18 count])
  {
    v19 = [(objc_class *)self->_objectClass uniqueAttributeName];
    if ([v9 obtainPermanentIDsForObjects:v18 error:0])
    {
      v20 = [v18 _gkMapDictionaryWithKeyPath:v19 valueKeyPath:@"objectID"];
      if (v20)
      {
        v21 = v20;
        if (!os_log_GKGeneral)
        {
          v22 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
        {
          sub_10028F9D4();
        }

        lookup = self->_lookup;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100121DA8;
        v26[3] = &unk_100367868;
        v27 = v21;
        v24 = v21;
        [(GKThreadsafeDictionary *)lookup writeToDictionary:v26];
      }
    }
  }

  return v18;
}

@end
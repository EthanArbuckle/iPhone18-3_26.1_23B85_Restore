@interface GKTurnBasedSessionListCacheObject
+ (void)expireListsForSessionID:(id)d context:(id)context;
- (id)internalRepresentation;
- (id)sessionIDs;
- (id)sessions;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKTurnBasedSessionListCacheObject

- (id)sessionIDs
{
  entries = [(GKTurnBasedSessionListCacheObject *)self entries];
  v3 = [entries _gkValuesForKeyPath:@"sessionID"];

  return v3;
}

- (id)sessions
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionListCacheObject sessions]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKTurnBasedSessionListCacheObject sessions]", [lastPathComponent UTF8String], 4133);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  sessionIDs = [(GKTurnBasedSessionListCacheObject *)self sessionIDs];
  managedObjectContext = [(GKTurnBasedSessionListCacheObject *)self managedObjectContext];
  v11 = [GKTurnBasedSessionCacheObject sessionsWithSessionIDs:sessionIDs inContext:managedObjectContext];

  return v11;
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKTurnBasedSessionListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 4140);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  sessions = [(GKTurnBasedSessionListCacheObject *)self sessions];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [sessions count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = sessions;
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

        internalRepresentation = [*(*(&v18 + 1) + 8 * i) internalRepresentation];
        [v10 addObject:internalRepresentation];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v7 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v7, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKTurnBasedSessionListCacheObject updateWithServerRepresentation:expirationDate:]", v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "-[GKTurnBasedSessionListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 4153);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v40.receiver = self;
  v40.super_class = GKTurnBasedSessionListCacheObject;
  [(GKExpiringCacheObject *)&v40 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  managedObjectContext = [(GKTurnBasedSessionListCacheObject *)self managedObjectContext];
  v31 = representationCopy;
  v14 = [representationCopy objectForKey:@"sessions"];
  v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v14 count]);
  entries = [(GKTurnBasedSessionListCacheObject *)self entries];
  v17 = [entries _gkMapDictionaryWithKeyPath:@"sessionID"];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100138614;
  v37[3] = &unk_100367BA8;
  v18 = v15;
  v38 = v18;
  v19 = v17;
  v39 = v19;
  v29 = v14;
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:v37 reuseEntriesByIndex:0];
  allKeys = [v18 allKeys];
  v30 = managedObjectContext;
  v21 = [GKTurnBasedSessionCacheObject sessionsWithSessionIDs:allKeys inContext:managedObjectContext];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * i);
        sessionID = [v26 sessionID];
        v28 = [v18 objectForKeyedSubscript:sessionID];
        [v26 updateWithServerRepresentation:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }
}

+ (void)expireListsForSessionID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  v6 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v7 = +[NSThread callStackSymbols];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKTurnBasedSessionListCacheObject expireListsForSessionID:context:]", v7);
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "+[GKTurnBasedSessionListCacheObject expireListsForSessionID:context:]", [lastPathComponent UTF8String], 4190);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  dCopy = [NSPredicate predicateWithFormat:@"sessionID = %@", dCopy];
  v13 = [(GKCacheObject *)GKTurnBasedSessionEntryCacheObject objectsMatchingPredicate:dCopy context:contextCopy];

  [v13 enumerateObjectsUsingBlock:&stru_100367E88];
}

@end
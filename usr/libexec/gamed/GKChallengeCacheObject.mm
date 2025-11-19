@interface GKChallengeCacheObject
+ (id)challengeWithServerRepresentation:(id)a3 context:(id)a4;
+ (id)challengesWithChallengeIDs:(id)a3 context:(id)a4;
+ (id)fetchSortDescriptors;
- (BOOL)hasDetails;
- (id)internalRepresentation;
- (id)orderedSetOfCompatibleBundleIDs;
- (void)invalidate;
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKChallengeCacheObject

+ (id)challengesWithChallengeIDs:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKChallengeCacheObject challengesWithChallengeIDs:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKChallengeCacheObject challengesWithChallengeIDs:context:]", [v12 UTF8String], 4392);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [a1 uniqueObjectIDLookupWithContext:v7];
  v15 = [v14 uniqueObjectsForKeys:v6 context:v7 newObject:0];

  return v15;
}

+ (id)challengeWithServerRepresentation:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKChallengeCacheObject challengeWithServerRepresentation:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKChallengeCacheObject challengeWithServerRepresentation:context:]", [v12 UTF8String], 4398);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [a1 uniqueObjectIDLookupWithContext:v7];
  v22 = v6;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100139C00;
  v20[3] = &unk_100367EF8;
  v21 = v7;
  v16 = v7;
  v17 = [v14 insertObjectsForServerRepresentations:v15 context:v16 newObject:v20];

  v18 = [v17 lastObject];

  return v18;
}

+ (id)fetchSortDescriptors
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:@"issueDate" ascending:0];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKChallengeCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKChallengeCacheObject internalRepresentation]", [v7 UTF8String], 4433);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = [(objc_class *)[(GKChallengeCacheObject *)self classForInternalRepresentation] internalRepresentation];
  v11 = [(GKChallengeCacheObject *)self bundleID];
  [v10 setBundleID:v11];

  v12 = [(GKChallengeCacheObject *)self issuingPlayerID];
  if (v12)
  {
    v13 = +[GKPlayerInternal internalRepresentation];
    [v13 setPlayerID:v12];
    [v10 setIssuingPlayer:v13];
  }

  v14 = [(GKChallengeCacheObject *)self receivingPlayerID];
  if (v14)
  {
    v15 = v14;

LABEL_10:
    v16 = +[GKPlayerInternal internalRepresentation];
    [v16 setPlayerID:v15];
    [v10 setReceivingPlayer:v16];

    goto LABEL_11;
  }

  v15 = +[GKPlayerProfileCacheObject selfPlayerID];

  if (v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = [(GKChallengeCacheObject *)self issueDate];
  [v10 setIssueDate:v17];

  v18 = [(GKChallengeCacheObject *)self completionDate];
  [v10 setCompletionDate:v18];

  [v10 setState:{-[GKChallengeCacheObject state](self, "state")}];
  v19 = [(GKChallengeCacheObject *)self challengeID];
  [v10 setChallengeID:v19];

  v20 = [(GKChallengeCacheObject *)self message];
  [v10 setMessage:v20];

  v21 = [(GKChallengeCacheObject *)self compatibleBundleIDs];
  v22 = [v21 valueForKeyPath:@"bundleID"];
  [v10 setCompatibleBundleIDs:v22];

LABEL_12:

  return v10;
}

- (id)orderedSetOfCompatibleBundleIDs
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKChallengeCacheObject orderedSetOfCompatibleBundleIDs]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKChallengeCacheObject orderedSetOfCompatibleBundleIDs]", [v7 UTF8String], 4470);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKChallengeCacheObject *)self compatibleBundleIDs];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [NSMutableOrderedSet alloc];
    v12 = [(GKChallengeCacheObject *)self compatibleBundleIDs];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(GKChallengeCacheObject *)self compatibleBundleIDs];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v21 + 1) + 8 * i) bundleID];
          [v13 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKChallengeCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKChallengeCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 4483);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v39.receiver = self;
  v39.super_class = GKChallengeCacheObject;
  [(GKCacheObject *)&v39 updateWithServerRepresentation:v4];
  v11 = [(GKChallengeCacheObject *)self managedObjectContext];
  v12 = [v4 objectForKey:@"challenge-id"];
  [(GKChallengeCacheObject *)self setChallengeID:v12];

  v13 = [v4 objectForKey:@"issue-timestamp"];
  v14 = [NSDate _gkDateFromServerTimestamp:v13];
  [(GKChallengeCacheObject *)self setIssueDate:v14];

  v15 = [v4 objectForKey:@"message"];
  if (v15)
  {
    [(GKChallengeCacheObject *)self setMessage:v15];
  }

  v16 = [v4 objectForKey:@"issuing-player-id"];

  if (v16)
  {
    [(GKChallengeCacheObject *)self setIssuingPlayerID:v16];
  }

  v17 = [v4 objectForKey:@"receiving-player-id"];

  if (v17)
  {
    [(GKChallengeCacheObject *)self setReceivingPlayerID:v17];
  }

  v18 = [v4 objectForKeyedSubscript:@"bundle-id"];

  if (v18)
  {
    [(GKChallengeCacheObject *)self setBundleID:v18];
  }

  v19 = [v4 objectForKey:@"completion-timestamp"];
  v20 = [NSDate _gkDateFromServerTimestamp:v19];

  if (v20)
  {
    [(GKChallengeCacheObject *)self setCompletionDate:v20];
  }

  v21 = [v4 objectForKey:@"completion-status"];

  if (v21)
  {
    -[GKChallengeCacheObject setState:](self, "setState:", [v21 unsignedIntValue]);
  }

  v22 = [v4 objectForKey:@"compatible-games"];
  if (v22)
  {
    v33 = v21;
    v34 = v4;
    v23 = [(GKChallengeCacheObject *)self compatibleBundleIDs];
    v24 = [v23 mutableCopy];

    if (!v24)
    {
      v24 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(v22, "count")}];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v22;
    v25 = v22;
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        v29 = 0;
        do
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v35 + 1) + 8 * v29);
          v31 = [v24 firstObject];
          if (!v31)
          {
            v31 = [(GKCacheObject *)[GKChallengeCompatibleBundleID alloc] initWithManagedObjectContext:v11];
            [(GKChallengeCompatibleBundleID *)v31 setChallenge:self];
          }

          [(GKChallengeCompatibleBundleID *)v31 setBundleID:v30];
          [v24 removeObject:v31];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v27);
    }

    [v11 _gkDeleteObjects:v24];
    v21 = v33;
    v4 = v34;
    v22 = v32;
  }
}

- (BOOL)hasDetails
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKChallengeCacheObject hasDetails]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKChallengeCacheObject hasDetails]", [v7 UTF8String], 4545);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKChallengeCacheObject *)self detailsExpirationDate];
  v10 = v9 != 0;

  return v10;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = GKChallengeCacheObject;
  [(GKCacheObject *)&v3 invalidate];
  [(GKChallengeCacheObject *)self setDetailsExpirationDate:0];
}

@end
@interface GKChallengeCacheObject
+ (id)challengeWithServerRepresentation:(id)representation context:(id)context;
+ (id)challengesWithChallengeIDs:(id)ds context:(id)context;
+ (id)fetchSortDescriptors;
- (BOOL)hasDetails;
- (id)internalRepresentation;
- (id)orderedSetOfCompatibleBundleIDs;
- (void)invalidate;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKChallengeCacheObject

+ (id)challengesWithChallengeIDs:(id)ds context:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKChallengeCacheObject challengesWithChallengeIDs:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKChallengeCacheObject challengesWithChallengeIDs:context:]", [lastPathComponent UTF8String], 4392);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [self uniqueObjectIDLookupWithContext:contextCopy];
  v15 = [v14 uniqueObjectsForKeys:dsCopy context:contextCopy newObject:0];

  return v15;
}

+ (id)challengeWithServerRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  contextCopy = context;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKChallengeCacheObject challengeWithServerRepresentation:context:]", v9);
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "+[GKChallengeCacheObject challengeWithServerRepresentation:context:]", [lastPathComponent UTF8String], 4398);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [self uniqueObjectIDLookupWithContext:contextCopy];
  v22 = representationCopy;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100139C00;
  v20[3] = &unk_100367EF8;
  v21 = contextCopy;
  v16 = contextCopy;
  v17 = [v14 insertObjectsForServerRepresentations:v15 context:v16 newObject:v20];

  lastObject = [v17 lastObject];

  return lastObject;
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKChallengeCacheObject internalRepresentation]", [lastPathComponent UTF8String], 4433);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    internalRepresentation = 0;
    goto LABEL_12;
  }

  internalRepresentation = [(objc_class *)[(GKChallengeCacheObject *)self classForInternalRepresentation] internalRepresentation];
  bundleID = [(GKChallengeCacheObject *)self bundleID];
  [internalRepresentation setBundleID:bundleID];

  issuingPlayerID = [(GKChallengeCacheObject *)self issuingPlayerID];
  if (issuingPlayerID)
  {
    v13 = +[GKPlayerInternal internalRepresentation];
    [v13 setPlayerID:issuingPlayerID];
    [internalRepresentation setIssuingPlayer:v13];
  }

  receivingPlayerID = [(GKChallengeCacheObject *)self receivingPlayerID];
  if (receivingPlayerID)
  {
    v15 = receivingPlayerID;

LABEL_10:
    v16 = +[GKPlayerInternal internalRepresentation];
    [v16 setPlayerID:v15];
    [internalRepresentation setReceivingPlayer:v16];

    goto LABEL_11;
  }

  v15 = +[GKPlayerProfileCacheObject selfPlayerID];

  if (v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  issueDate = [(GKChallengeCacheObject *)self issueDate];
  [internalRepresentation setIssueDate:issueDate];

  completionDate = [(GKChallengeCacheObject *)self completionDate];
  [internalRepresentation setCompletionDate:completionDate];

  [internalRepresentation setState:{-[GKChallengeCacheObject state](self, "state")}];
  challengeID = [(GKChallengeCacheObject *)self challengeID];
  [internalRepresentation setChallengeID:challengeID];

  message = [(GKChallengeCacheObject *)self message];
  [internalRepresentation setMessage:message];

  compatibleBundleIDs = [(GKChallengeCacheObject *)self compatibleBundleIDs];
  v22 = [compatibleBundleIDs valueForKeyPath:@"bundleID"];
  [internalRepresentation setCompatibleBundleIDs:v22];

LABEL_12:

  return internalRepresentation;
}

- (id)orderedSetOfCompatibleBundleIDs
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKChallengeCacheObject orderedSetOfCompatibleBundleIDs]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKChallengeCacheObject orderedSetOfCompatibleBundleIDs]", [lastPathComponent UTF8String], 4470);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  compatibleBundleIDs = [(GKChallengeCacheObject *)self compatibleBundleIDs];
  v10 = [compatibleBundleIDs count];

  if (v10)
  {
    v11 = [NSMutableOrderedSet alloc];
    compatibleBundleIDs2 = [(GKChallengeCacheObject *)self compatibleBundleIDs];
    v13 = [v11 initWithCapacity:{objc_msgSend(compatibleBundleIDs2, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    compatibleBundleIDs3 = [(GKChallengeCacheObject *)self compatibleBundleIDs];
    v15 = [compatibleBundleIDs3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(compatibleBundleIDs3);
          }

          bundleID = [*(*(&v21 + 1) + 8 * i) bundleID];
          [v13 addObject:bundleID];
        }

        v16 = [compatibleBundleIDs3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKChallengeCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKChallengeCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 4483);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v39.receiver = self;
  v39.super_class = GKChallengeCacheObject;
  [(GKCacheObject *)&v39 updateWithServerRepresentation:representationCopy];
  managedObjectContext = [(GKChallengeCacheObject *)self managedObjectContext];
  v12 = [representationCopy objectForKey:@"challenge-id"];
  [(GKChallengeCacheObject *)self setChallengeID:v12];

  v13 = [representationCopy objectForKey:@"issue-timestamp"];
  v14 = [NSDate _gkDateFromServerTimestamp:v13];
  [(GKChallengeCacheObject *)self setIssueDate:v14];

  v15 = [representationCopy objectForKey:@"message"];
  if (v15)
  {
    [(GKChallengeCacheObject *)self setMessage:v15];
  }

  v16 = [representationCopy objectForKey:@"issuing-player-id"];

  if (v16)
  {
    [(GKChallengeCacheObject *)self setIssuingPlayerID:v16];
  }

  v17 = [representationCopy objectForKey:@"receiving-player-id"];

  if (v17)
  {
    [(GKChallengeCacheObject *)self setReceivingPlayerID:v17];
  }

  v18 = [representationCopy objectForKeyedSubscript:@"bundle-id"];

  if (v18)
  {
    [(GKChallengeCacheObject *)self setBundleID:v18];
  }

  v19 = [representationCopy objectForKey:@"completion-timestamp"];
  v20 = [NSDate _gkDateFromServerTimestamp:v19];

  if (v20)
  {
    [(GKChallengeCacheObject *)self setCompletionDate:v20];
  }

  v21 = [representationCopy objectForKey:@"completion-status"];

  if (v21)
  {
    -[GKChallengeCacheObject setState:](self, "setState:", [v21 unsignedIntValue]);
  }

  v22 = [representationCopy objectForKey:@"compatible-games"];
  if (v22)
  {
    v33 = v21;
    v34 = representationCopy;
    compatibleBundleIDs = [(GKChallengeCacheObject *)self compatibleBundleIDs];
    v24 = [compatibleBundleIDs mutableCopy];

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
          firstObject = [v24 firstObject];
          if (!firstObject)
          {
            firstObject = [(GKCacheObject *)[GKChallengeCompatibleBundleID alloc] initWithManagedObjectContext:managedObjectContext];
            [(GKChallengeCompatibleBundleID *)firstObject setChallenge:self];
          }

          [(GKChallengeCompatibleBundleID *)firstObject setBundleID:v30];
          [v24 removeObject:firstObject];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v27);
    }

    [managedObjectContext _gkDeleteObjects:v24];
    v21 = v33;
    representationCopy = v34;
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKChallengeCacheObject hasDetails]", [lastPathComponent UTF8String], 4545);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  detailsExpirationDate = [(GKChallengeCacheObject *)self detailsExpirationDate];
  v10 = detailsExpirationDate != 0;

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
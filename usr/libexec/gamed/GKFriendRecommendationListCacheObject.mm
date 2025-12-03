@interface GKFriendRecommendationListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKFriendRecommendationListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRecommendationListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKFriendRecommendationListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 2811);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v26.receiver = self;
  v26.super_class = GKFriendRecommendationListCacheObject;
  [(GKExpiringCacheObject *)&v26 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v14 = [representationCopy objectForKeyedSubscript:@"recommendations"];
  v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
  entries = [(GKFriendRecommendationListCacheObject *)self entries];
  v17 = [entries _gkMapDictionaryWithKeyPath:@"playerID"];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100130BAC;
  v23[3] = &unk_100367BA8;
  v18 = v15;
  v24 = v18;
  v19 = v17;
  v25 = v19;
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v14 entryForRepresentation:v23 reuseEntriesByIndex:0];
  playerIDs = [(GKFriendListCacheObject *)self playerIDs];
  player = [(GKFriendRecommendationListCacheObject *)self player];
  isLocalPlayer = [player isLocalPlayer];

  if (isLocalPlayer)
  {
    [GKPlayerProfileCacheObject setFamiliarPlayerIDs:playerIDs familiarity:4];
  }

  [(GKFriendListCacheObject *)self populateFriendNamesFromServerRepresentationDictionary:v18];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRecommendationListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendRecommendationListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 2850);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  entries = [(GKFriendRecommendationListCacheObject *)self entries];
  v10 = [entries count];

  v31 = [[NSMutableArray alloc] initWithCapacity:v10];
  managedObjectContext = [(GKFriendRecommendationListCacheObject *)self managedObjectContext];
  playerIDs = [(GKFriendListCacheObject *)self playerIDs];
  v30 = managedObjectContext;
  v13 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:playerIDs inManagedObjectContext:managedObjectContext];

  v29 = v13;
  v14 = [v13 _gkMapDictionaryWithKeyPath:@"playerID"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  entries2 = [(GKFriendRecommendationListCacheObject *)self entries];
  v16 = [entries2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(entries2);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        playerID = [v20 playerID];
        if (playerID)
        {
          v22 = [v14 objectForKeyedSubscript:playerID];
          if ([v22 familiarity] == 4)
          {
            v23 = [[GKFriendRecommendationInternal alloc] initWithCacheObject:v22];
            reason = [v20 reason];
            [v23 setReason:reason];

            reason2 = [v20 reason2];
            [v23 setReason2:reason2];

            v26 = [v20 rid];
            [v23 setRid:{objc_msgSend(v26, "unsignedIntegerValue")}];

            source = [v20 source];
            [v23 setSource:{objc_msgSend(source, "integerValue")}];

            [v31 addObject:v23];
          }
        }
      }

      v17 = [entries2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  return v31;
}

@end
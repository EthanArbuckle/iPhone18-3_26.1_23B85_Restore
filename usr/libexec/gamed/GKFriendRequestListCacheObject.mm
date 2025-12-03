@interface GKFriendRequestListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKFriendRequestListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRequestListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKFriendRequestListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 2928);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  managedObjectContext = [(GKFriendRequestListCacheObject *)self managedObjectContext];
  v31.receiver = self;
  v31.super_class = GKFriendRequestListCacheObject;
  [(GKExpiringCacheObject *)&v31 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v15 = [representationCopy objectForKey:@"results"];
  entries = [(GKFriendRequestListCacheObject *)self entries];
  v17 = [entries _gkMapDictionaryWithKeyPath:@"playerID"];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10013185C;
  v29[3] = &unk_100367C38;
  v18 = v17;
  v30 = v18;
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v15 entryForRepresentation:v29 reuseEntriesByIndex:0];
  playerIDs = [(GKFriendListCacheObject *)self playerIDs];
  player = [(GKFriendRequestListCacheObject *)self player];
  isLocalPlayer = [player isLocalPlayer];

  if (isLocalPlayer)
  {
    [GKPlayerProfileCacheObject setFamiliarPlayerIDs:playerIDs familiarity:3];
  }

  v22 = [v15 _gkMapDictionaryWithKeyPath:@"playerID"];
  [(GKFriendListCacheObject *)self populateFriendNamesFromServerRepresentationDictionary:v22];
  v23 = [NSFetchRequest alloc];
  v24 = +[GKFriendRequestListEntryCacheObject entityName];
  v25 = [v23 initWithEntityName:v24];

  v26 = [NSPredicate predicateWithFormat:@"wasViewed == NO"];
  [v25 setPredicate:v26];

  v27 = [managedObjectContext countForFetchRequest:v25 error:0];
  v28 = +[GKBadgeController sharedController];
  [v28 setBadgeCount:v27 forBundleID:GKGameCenterIdentifier badgeType:1];
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRequestListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendRequestListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 2967);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  entries = [(GKFriendRequestListCacheObject *)self entries];
  v10 = [entries count];

  v29 = [[NSMutableArray alloc] initWithCapacity:v10];
  managedObjectContext = [(GKFriendRequestListCacheObject *)self managedObjectContext];
  playerIDs = [(GKFriendListCacheObject *)self playerIDs];
  v28 = managedObjectContext;
  v13 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:playerIDs inManagedObjectContext:managedObjectContext];

  v27 = v13;
  v14 = [v13 _gkMapDictionaryWithKeyPath:@"playerID"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  entries2 = [(GKFriendRequestListCacheObject *)self entries];
  v16 = [entries2 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(entries2);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        playerID = [v20 playerID];
        if (playerID)
        {
          v22 = [v14 objectForKeyedSubscript:playerID];
          if ([v22 familiarity] == 3)
          {
            v23 = [[GKFriendRequestInternal alloc] initWithCacheObject:v22];
            date = [v20 date];
            [v23 setDate:date];

            message = [v20 message];
            [v23 setMessage:message];

            [v29 addObject:v23];
          }
        }
      }

      v17 = [entries2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  return v29;
}

@end
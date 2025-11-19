@interface GKFriendRequestListCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKFriendRequestListCacheObject

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendRequestListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKFriendRequestListCacheObject updateWithServerRepresentation:expirationDate:]", [v12 UTF8String], 2928);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [(GKFriendRequestListCacheObject *)self managedObjectContext];
  v31.receiver = self;
  v31.super_class = GKFriendRequestListCacheObject;
  [(GKExpiringCacheObject *)&v31 updateWithServerRepresentation:v6 expirationDate:v7];
  v15 = [v6 objectForKey:@"results"];
  v16 = [(GKFriendRequestListCacheObject *)self entries];
  v17 = [v16 _gkMapDictionaryWithKeyPath:@"playerID"];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10013185C;
  v29[3] = &unk_100367C38;
  v18 = v17;
  v30 = v18;
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v15 entryForRepresentation:v29 reuseEntriesByIndex:0];
  v19 = [(GKFriendListCacheObject *)self playerIDs];
  v20 = [(GKFriendRequestListCacheObject *)self player];
  v21 = [v20 isLocalPlayer];

  if (v21)
  {
    [GKPlayerProfileCacheObject setFamiliarPlayerIDs:v19 familiarity:3];
  }

  v22 = [v15 _gkMapDictionaryWithKeyPath:@"playerID"];
  [(GKFriendListCacheObject *)self populateFriendNamesFromServerRepresentationDictionary:v22];
  v23 = [NSFetchRequest alloc];
  v24 = +[GKFriendRequestListEntryCacheObject entityName];
  v25 = [v23 initWithEntityName:v24];

  v26 = [NSPredicate predicateWithFormat:@"wasViewed == NO"];
  [v25 setPredicate:v26];

  v27 = [v14 countForFetchRequest:v25 error:0];
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
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendRequestListCacheObject internalRepresentation]", [v7 UTF8String], 2967);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(GKFriendRequestListCacheObject *)self entries];
  v10 = [v9 count];

  v29 = [[NSMutableArray alloc] initWithCapacity:v10];
  v11 = [(GKFriendRequestListCacheObject *)self managedObjectContext];
  v12 = [(GKFriendListCacheObject *)self playerIDs];
  v28 = v11;
  v13 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:v12 inManagedObjectContext:v11];

  v27 = v13;
  v14 = [v13 _gkMapDictionaryWithKeyPath:@"playerID"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [(GKFriendRequestListCacheObject *)self entries];
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [v20 playerID];
        if (v21)
        {
          v22 = [v14 objectForKeyedSubscript:v21];
          if ([v22 familiarity] == 3)
          {
            v23 = [[GKFriendRequestInternal alloc] initWithCacheObject:v22];
            v24 = [v20 date];
            [v23 setDate:v24];

            v25 = [v20 message];
            [v23 setMessage:v25];

            [v29 addObject:v23];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  return v29;
}

@end
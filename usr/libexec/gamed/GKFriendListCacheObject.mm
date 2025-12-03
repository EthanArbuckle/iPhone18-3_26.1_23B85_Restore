@interface GKFriendListCacheObject
+ (id)cacheFriendList:(id)list withTimeToLive:(double)live forProfile:(id)profile managedObjectContext:(id)context commonFriends:(BOOL)friends;
- (NSArray)filterableFriends;
- (id)internalRepresentation;
- (id)playerIDs;
- (void)populateFriendNamesFromServerRepresentationDictionary:(id)dictionary;
@end

@implementation GKFriendListCacheObject

- (id)playerIDs
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendListCacheObject playerIDs]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendListCacheObject playerIDs]", [lastPathComponent UTF8String], 2428);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  entries = [(GKFriendListCacheObject *)self entries];
  v10 = [entries _gkValuesForKeyPath:@"playerID"];

  return v10;
}

+ (id)cacheFriendList:(id)list withTimeToLive:(double)live forProfile:(id)profile managedObjectContext:(id)context commonFriends:(BOOL)friends
{
  friendsCopy = friends;
  listCopy = list;
  profileCopy = profile;
  contextCopy = context;
  v14 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v14, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v15 = +[NSThread callStackSymbols];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKFriendListCacheObject cacheFriendList:withTimeToLive:forProfile:managedObjectContext:commonFriends:]", v15);
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v17 lastPathComponent];
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v16, "+[GKFriendListCacheObject cacheFriendList:withTimeToLive:forProfile:managedObjectContext:commonFriends:]", [lastPathComponent UTF8String], 2438);

    [NSException raise:@"GameKit Exception" format:@"%@", v19];
  }

  v20 = [NSDate dateWithTimeIntervalSinceNow:live];
  v21 = [(GKCacheObject *)[GKFriendListCacheObject alloc] initWithManagedObjectContext:contextCopy];
  [profileCopy setFriendList:v21];
  [(GKFriendListCacheObject *)v21 setExpirationDate:v20];
  [(GKFriendListCacheObject *)v21 setCommon:friendsCopy];
  [(GKFriendListCacheObject *)v21 setPlayer:profileCopy];
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [listCopy count]);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10012EA4C;
  v22 = v30[3] = &unk_100367C38;
  v31 = v22;
  [(GKListCacheObject *)v21 updateEntriesWithRepresentations:listCopy entryForRepresentation:v30 reuseEntriesByIndex:0];
  player = [(GKFriendListCacheObject *)v21 player];
  isLocalPlayer = [player isLocalPlayer];

  if (isLocalPlayer)
  {
    playerIDs = [(GKFriendListCacheObject *)v21 playerIDs];
    [GKPlayerProfileCacheObject setFamiliarPlayerIDs:playerIDs familiarity:2];
  }

  v26 = [v22 copy];
  [(GKFriendListCacheObject *)v21 populateFriendNamesFromServerRepresentationDictionary:v26];

  v27 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v28 = GKOSLoggers();
    v27 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_100290480();
  }

  return v21;
}

- (void)populateFriendNamesFromServerRepresentationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendListCacheObject populateFriendNamesFromServerRepresentationDictionary:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKFriendListCacheObject populateFriendNamesFromServerRepresentationDictionary:]", [lastPathComponent UTF8String], 2493);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  if ([dictionaryCopy count])
  {
    playerIDs = [(GKFriendListCacheObject *)self playerIDs];
    managedObjectContext = [(GKFriendListCacheObject *)self managedObjectContext];
    v13 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:playerIDs inManagedObjectContext:managedObjectContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10012EE34;
    v14[3] = &unk_100367C60;
    v15 = dictionaryCopy;
    [v13 enumerateObjectsUsingBlock:v14];
  }
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKFriendListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKFriendListCacheObject internalRepresentation]", [lastPathComponent UTF8String], 2567);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  entries = [(GKFriendListCacheObject *)self entries];
  v10 = [entries count];

  v35 = [[NSMutableArray alloc] initWithCapacity:v10];
  managedObjectContext = [(GKFriendListCacheObject *)self managedObjectContext];
  playerIDs = [(GKFriendListCacheObject *)self playerIDs];
  v13 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:playerIDs inManagedObjectContext:managedObjectContext];

  v31 = [v13 _gkDistinctValuesForKeyPath:@"lastPlayedGame"];
  allObjects = [v31 allObjects];
  v33 = managedObjectContext;
  v15 = [GKGameCacheObject gamesForBundleIDs:allObjects context:managedObjectContext];

  v30 = v15;
  v34 = [v15 _gkMapDictionaryWithKeyPath:@"bundleID"];
  v32 = v13;
  v16 = [v13 _gkMapDictionaryWithKeyPath:@"playerID"];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  entries2 = [(GKFriendListCacheObject *)self entries];
  v18 = [entries2 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(entries2);
        }

        playerID = [*(*(&v36 + 1) + 8 * i) playerID];
        if (playerID)
        {
          v23 = [v16 objectForKeyedSubscript:playerID];
          if ([v23 familiarity] == 2)
          {
            v24 = [[GKFriendPlayerInternal alloc] initWithCacheObject:v23];
            lastPlayedGame = [v23 lastPlayedGame];

            if (lastPlayedGame)
            {
              lastPlayedGame2 = [v23 lastPlayedGame];
              v27 = [v34 objectForKeyedSubscript:lastPlayedGame2];

              internalRepresentation = [v27 internalRepresentation];
              [v24 setLastPlayedGame:internalRepresentation];
            }

            [v35 addObject:v24];
          }
        }
      }

      v19 = [entries2 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v19);
  }

  return v35;
}

- (NSArray)filterableFriends
{
  selfCopy = self;
  sub_1001A5EA4();

  type metadata accessor for GKFilterableFriend();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end
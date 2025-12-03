@interface GKChallengeListCacheObject
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
@end

@implementation GKChallengeListCacheObject

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  representationCopy = representation;
  dateCopy = date;
  v7 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v7, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v8 = +[NSThread callStackSymbols];
    v9 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKChallengeListCacheObject updateWithServerRepresentation:expirationDate:]", v8];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v9, "-[GKChallengeListCacheObject updateWithServerRepresentation:expirationDate:]", [lastPathComponent UTF8String], 4333);

    [NSException raise:@"GameKit Exception" format:@"%@", v12];
  }

  v39.receiver = self;
  v39.super_class = GKChallengeListCacheObject;
  [(GKExpiringCacheObject *)&v39 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  managedObjectContext = [(GKChallengeListCacheObject *)self managedObjectContext];
  v30 = representationCopy;
  v14 = [representationCopy objectForKey:@"results"];
  v15 = [v14 count];
  v16 = [NSMutableArray arrayWithCapacity:v15];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v35 + 1) + 8 * v21) objectForKeyedSubscript:@"challenge-id"];
        if (v22)
        {
          [v16 addObject:v22];
        }

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v19);
  }

  v23 = [GKChallengeCacheObject challengesWithChallengeIDs:v16 context:managedObjectContext];
  v24 = [NSMutableDictionary dictionaryWithCapacity:v15];
  v25 = [v23 _gkMapDictionaryWithKeyPath:@"challengeID"];
  [v24 addEntriesFromDictionary:v25];

  player = [(GKChallengeListCacheObject *)self player];
  playerID = [player playerID];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100139720;
  v32[3] = &unk_100367BA8;
  v33 = v24;
  v34 = playerID;
  v28 = playerID;
  v29 = v24;
  [(GKListCacheObject *)self updateEntriesWithRepresentations:v17 entryForRepresentation:v32 reuseEntriesByIndex:0];
}

@end
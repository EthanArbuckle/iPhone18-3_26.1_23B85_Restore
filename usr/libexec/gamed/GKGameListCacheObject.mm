@interface GKGameListCacheObject
- (id)internalRepresentation;
- (id)internalRepresentationIncludingInstalledGames:(BOOL)a3;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
@end

@implementation GKGameListCacheObject

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameListCacheObject updateWithServerRepresentation:expirationDate:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKGameListCacheObject updateWithServerRepresentation:expirationDate:]", [v12 UTF8String], 3046);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v73.receiver = self;
  v73.super_class = GKGameListCacheObject;
  [(GKExpiringCacheObject *)&v73 updateWithServerRepresentation:v6 expirationDate:v7];
  if (v6)
  {
    v52 = v7;
    v54 = self;
    v14 = [(GKGameListCacheObject *)self managedObjectContext];
    v53 = v6;
    v15 = [v6 objectForKeyedSubscript:@"results"];
    v16 = [v15 count];
    v17 = [NSMutableDictionary dictionaryWithCapacity:v16];
    v58 = [NSMutableArray arrayWithCapacity:v16];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v15;
    v18 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v70;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v70 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v69 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:@"game"];
          v24 = [v23 objectForKeyedSubscript:@"bundle-id"];
          if (v24)
          {
            [v58 addObject:v23];
            [v17 setObject:v22 forKey:v24];
          }
        }

        v19 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
      }

      while (v19);
    }

    v51 = v14;
    [GKGameCacheObject gamesForGameDescriptors:v58 context:v14];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v56 = v68 = 0u;
    v25 = [v56 countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v66;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v66 != v27)
          {
            objc_enumerationMutation(v56);
          }

          v29 = *(*(&v65 + 1) + 8 * j);
          v30 = [v29 bundleID];
          v31 = [v17 objectForKey:v30];
          v32 = [v31 objectForKeyedSubscript:@"name"];
          if (v32)
          {
            [v29 setName:v32];
          }

          v33 = [v31 objectForKeyedSubscript:@"software-type"];
          if (v33)
          {
            [v29 setSoftwareType:v33];
          }
        }

        v26 = [v56 countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v26);
    }

    v34 = [(GKGameListCacheObject *)v54 entries];
    v35 = [v34 _gkMapDictionaryWithKeyPath:@"bundleID"];

    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10013270C;
    v63[3] = &unk_100367C38;
    v36 = v35;
    v64 = v36;
    [(GKListCacheObject *)v54 updateEntriesWithRepresentations:obj entryForRepresentation:v63 reuseEntriesByIndex:0];
    v37 = [(GKGameListCacheObject *)v54 player];
    v38 = v37;
    if (v37)
    {
      v49 = v37;
      v50 = v36;
      [GKGameRecordCacheObject recordsForGames:v56 playerProfile:v37];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v55 = v62 = 0u;
      v39 = [v55 countByEnumeratingWithState:&v59 objects:v74 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v60;
        do
        {
          for (k = 0; k != v40; k = k + 1)
          {
            if (*v60 != v41)
            {
              objc_enumerationMutation(v55);
            }

            v43 = *(*(&v59 + 1) + 8 * k);
            v44 = [v43 game];
            v45 = [v44 bundleID];

            v46 = [v17 objectForKey:v45];
            v47 = [v46 objectForKeyedSubscript:@"timestamp"];
            if (v47)
            {
              v48 = [NSDate _gkDateFromServerTimestamp:v47];
              [v43 setLastPlayedDate:v48];
            }
          }

          v40 = [v55 countByEnumeratingWithState:&v59 objects:v74 count:16];
        }

        while (v40);
      }

      v38 = v49;
      v36 = v50;
    }

    v7 = v52;
    v6 = v53;
  }
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameListCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameListCacheObject internalRepresentation]", [v7 UTF8String], 3120);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  return [(GKGameListCacheObject *)self internalRepresentationIncludingInstalledGames:0];
}

- (id)internalRepresentationIncludingInstalledGames:(BOOL)a3
{
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameListCacheObject internalRepresentationIncludingInstalledGames:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKGameListCacheObject internalRepresentationIncludingInstalledGames:]", [v8 UTF8String], 3127);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [(GKGameListCacheObject *)self entries];
  v11 = [v10 _gkValuesForKeyPath:@"bundleID"];

  v12 = [NSPredicate predicateWithFormat:@"game.bundleID IN %@", v11];
  v13 = [(GKGameListCacheObject *)self player];
  v14 = [v13 gameRecords];
  v15 = [v14 filteredSetUsingPredicate:v12];

  v16 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:0 comparator:&stru_100367CA0];
  v17 = [NSArray arrayWithObject:v16];
  v18 = [v15 sortedArrayUsingDescriptors:v17];

  v19 = [v18 _gkValuesForKeyPath:@"internalRepresentation"];

  return v19;
}

@end
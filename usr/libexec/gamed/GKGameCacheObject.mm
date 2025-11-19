@interface GKGameCacheObject
+ (id)fetchSortDescriptors;
+ (id)gameForBundleID:(id)a3 context:(id)a4;
+ (id)gameForGameDescriptor:(id)a3 context:(id)a4;
+ (id)gamesForBundleIDs:(id)a3 context:(id)a4;
+ (id)gamesForFullGameDescriptors:(id)a3 context:(id)a4;
+ (id)gamesForGameDescriptors:(id)a3 context:(id)a4;
- (BOOL)isValid;
- (id)gameDescriptor;
- (id)internalRepresentation;
- (id)leaderboardSetWithIdentifier:(id)a3;
- (void)updateWithGameDescriptor:(id)a3;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4;
- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4 supportsChallenges:(BOOL)a5;
@end

@implementation GKGameCacheObject

+ (id)fetchSortDescriptors
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:@"bundleID" ascending:1];
  v6[0] = v2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"timeStamp" ascending:0];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)gameForGameDescriptor:(id)a3 context:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v8 = [GKGameCacheObject gamesForGameDescriptors:v7 context:v5, v11];

  v9 = [v8 firstObject];

  return v9;
}

+ (id)gameForBundleID:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v14 = v6;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    v9 = [a1 gamesForBundleIDs:v8 context:v7];
    v10 = [v9 lastObject];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002901C8(v12);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)gamesForBundleIDs:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290268();
  }

  v8 = +[GKApplicationWorkspace defaultWorkspace];
  v9 = [v8 gameDescriptorsWithInstalledBundleVersionsForBundleIDs:v5];

  v10 = [GKGameCacheObject gamesForFullGameDescriptors:v9 context:v6];

  return v10;
}

+ (id)gamesForGameDescriptors:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1002902A4();
  }

  v8 = +[GKApplicationWorkspace defaultWorkspace];
  v9 = [v8 gameDescriptorsWithInstalledBundleVersionsForGameDescriptors:v5];

  v10 = [GKGameCacheObject gamesForFullGameDescriptors:v9 context:v6];

  return v10;
}

+ (id)gamesForFullGameDescriptors:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1002902E0();
  }

  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100128A28;
  v9 = v26[3] = &unk_1003679F0;
  v27 = v9;
  [v6 enumerateObjectsUsingBlock:v26];
  v10 = [a1 uniqueObjectIDLookupWithContext:v7];
  v11 = [v9 allKeys];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100128A98;
  v22[3] = &unk_100367A18;
  v25 = a1;
  v12 = v7;
  v23 = v12;
  v24 = v9;
  v13 = v9;
  v14 = [v10 uniqueObjectsForKeys:v11 context:v12 newObject:v22];

  [v14 _gkMapDictionaryWithKeyPath:@"bundleID"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100128B1C;
  v20 = v19[3] = &unk_1003666F0;
  v21 = v12;
  v15 = v12;
  v16 = v20;
  v17 = [v6 _gkMapWithBlock:v19];

  return v17;
}

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = GKGameCacheObject;
  if (![(GKExpiringCacheObject *)&v6 isValid])
  {
    return 0;
  }

  v3 = [(GKGameCacheObject *)self name];
  if (v3)
  {
    v4 = [(GKCacheObject *)self hasImages];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateWithGameDescriptor:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10029031C();
  }

  v6 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v6, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v7 = +[NSThread callStackSymbols];
    v8 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameCacheObject updateWithGameDescriptor:]", v7];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v10 = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "-[GKGameCacheObject updateWithGameDescriptor:]", [v10 UTF8String], 1411);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  if (v4)
  {
    v12 = [v4 objectForKey:@"bundle-id"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [v12 stringValue];

        v12 = v13;
      }
    }

    v14 = [v4 objectForKey:@"bundle-version"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [v14 stringValue];

        v14 = v15;
      }
    }

    v16 = [v4 objectForKey:@"short-bundle-version"];
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = [v16 stringValue];

        v16 = v17;
      }
    }

    v18 = [v4 objectForKey:@"adam-id"];
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v18 longLongValue]);
        }

        else
        {
          v19 = 0;
        }

        v18 = v19;
      }
    }

    v20 = [v4 objectForKey:@"external-version"];
    if (v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 longLongValue]);
        }

        else
        {
          v21 = 0;
        }

        v20 = v21;
      }
    }

    v22 = v20;
    if (v12)
    {
      [(GKGameCacheObject *)self setBundleID:v12];
    }

    if (v18)
    {
      [(GKGameCacheObject *)self setAdamID:v18];
    }

    if (v14)
    {
      v23 = [(GKGameCacheObject *)self bundleVersion];
      if (!v23 || (v24 = v23, -[GKGameCacheObject bundleVersion](self, "bundleVersion"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v14 isEqualToString:v25], v25, v24, (v26 & 1) == 0))
      {
        [(GKGameCacheObject *)self setBundleVersion:v14];
      }
    }

    if (v16)
    {
      v27 = [(GKGameCacheObject *)self shortBundleVersion];
      if (!v27 || (v28 = v27, -[GKGameCacheObject shortBundleVersion](self, "shortBundleVersion"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v16 isEqualToString:v29], v29, v28, (v30 & 1) == 0))
      {
        [(GKGameCacheObject *)self setShortBundleVersion:v16];
      }
    }

    if (v22)
    {
      v31 = [(GKGameCacheObject *)self externalVersion];
      if (!v31 || (v32 = v31, -[GKGameCacheObject externalVersion](self, "externalVersion"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v22 isEqualToNumber:v33], v33, v32, (v34 & 1) == 0))
      {
        [(GKGameCacheObject *)self setExternalVersion:v22];
      }
    }

    v35 = [v4 objectForKey:@"platform"];
    v36 = [NSNumber numberWithInteger:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v35]];
    [(GKGameCacheObject *)self setPlatform:v36];

    v37 = [v4 objectForKeyedSubscript:@"is-arcade-game"];
    if (v37 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      -[GKGameCacheObject setIsArcadeGame:](self, "setIsArcadeGame:", [v37 BOOLValue]);
    }

    [(GKGameCacheObject *)self setCompatiblePlatforms:[GKCachingUtils compatiblePlatforms:v4]];
    [(GKGameCacheObject *)self setSupportedTransportVersions:[GKCachingUtils supportedTransports:v4]];
  }
}

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GKPreferences shared];
  -[GKGameCacheObject updateWithServerRepresentation:expirationDate:supportsChallenges:](self, "updateWithServerRepresentation:expirationDate:supportsChallenges:", v7, v6, [v8 supportsChallenges]);
}

- (void)updateWithServerRepresentation:(id)a3 expirationDate:(id)a4 supportsChallenges:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290358(v11, v5);
  }

  v12 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v12, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v13 = +[NSThread callStackSymbols];
    v14 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameCacheObject updateWithServerRepresentation:expirationDate:supportsChallenges:]", v13];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    [v15 lastPathComponent];
    v17 = v16 = v9;
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v14, "-[GKGameCacheObject updateWithServerRepresentation:expirationDate:supportsChallenges:]", [v17 UTF8String], 1509);

    v9 = v16;
    [NSException raise:@"GameKit Exception" format:@"%@", v18];
  }

  if (!v9)
  {
    v9 = [(GKGameCacheObject *)self expirationDate];
  }

  v51.receiver = self;
  v51.super_class = GKGameCacheObject;
  [(GKExpiringCacheObject *)&v51 updateWithServerRepresentation:v8 expirationDate:v9];
  v19 = [v8 objectForKey:@"status"];
  v20 = [v19 integerValue];

  if (v20)
  {
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100290410();
    }
  }

  else
  {
    v22 = [v8 objectForKey:@"game"];
    if (v22)
    {
      v23 = v22;
      v24 = +[GKApplicationWorkspace defaultWorkspace];
      v52 = v23;
      v25 = [NSArray arrayWithObjects:&v52 count:1];
      v26 = [v24 gameDescriptorsWithInstalledBundleVersionsForGameDescriptors:v25];
      v27 = [v26 firstObject];

      [(GKGameCacheObject *)self updateWithGameDescriptor:v27];
    }

    v28 = [v8 objectForKey:@"software-type"];
    [(GKGameCacheObject *)self setSoftwareType:v28];
    v29 = [v8 objectForKey:@"name"];

    [(GKGameCacheObject *)self setName:v29];
    v30 = [v8 objectForKey:@"is-prerendered"];

    -[GKGameCacheObject setPrerendered:](self, "setPrerendered:", [v30 BOOLValue]);
    v31 = [v8 objectForKey:@"supports-leaderboards"];

    -[GKGameCacheObject setSupportsLeaderboards:](self, "setSupportsLeaderboards:", [v31 BOOLValue]);
    v32 = [v8 objectForKey:@"has-aggregate-leaderboard"];

    -[GKGameCacheObject setHasAggregateLeaderboard:](self, "setHasAggregateLeaderboard:", [v32 BOOLValue]);
    v33 = [v8 objectForKey:@"num-leaderboard-categories"];

    -[GKGameCacheObject setNumberOfCategories:](self, "setNumberOfCategories:", [v33 integerValue]);
    v34 = [v8 objectForKey:@"num-leaderboard-sets"];

    -[GKGameCacheObject setNumberOfLeaderboardSets:](self, "setNumberOfLeaderboardSets:", [v34 integerValue]);
    [(GKGameCacheObject *)self setSupportsLeaderboardSets:[(GKGameCacheObject *)self numberOfLeaderboardSets]!= 0];
    v35 = [v8 objectForKey:@"default-leaderboard-category"];

    [(GKGameCacheObject *)self setDefaultCategory:v35];
    v36 = [v8 objectForKey:@"supports-achievements"];

    -[GKGameCacheObject setSupportsAchievements:](self, "setSupportsAchievements:", [v36 BOOLValue]);
    v37 = [v8 objectForKey:@"max-achievements"];

    -[GKGameCacheObject setNumberOfAchievements:](self, "setNumberOfAchievements:", [v37 integerValue]);
    v38 = [v8 objectForKey:@"supports-multi-player"];

    -[GKGameCacheObject setSupportsMultiplayer:](self, "setSupportsMultiplayer:", [v38 BOOLValue]);
    v39 = [v8 objectForKey:@"supports-turn-based-multi-player"];

    -[GKGameCacheObject setSupportsTurnBasedMultiplayer:](self, "setSupportsTurnBasedMultiplayer:", [v39 BOOLValue]);
    v40 = [v8 objectForKey:@"max-achievements-score"];

    -[GKGameCacheObject setMaxAchievementPoints:](self, "setMaxAchievementPoints:", [v40 integerValue]);
    v41 = [v8 objectForKey:@"adam-id"];

    if (v41)
    {
      [(GKGameCacheObject *)self setAdamID:v41];
    }

    v42 = [v8 objectForKey:@"is-arcade-game"];

    -[GKGameCacheObject setIsArcadeGame:](self, "setIsArcadeGame:", [v42 BOOLValue]);
    v43 = [v8 objectForKey:@"allow-challenges"];

    -[GKGameCacheObject setSupportsChallenges:](self, "setSupportsChallenges:", [v43 BOOLValue] | v5);
    v44 = [v8 objectForKey:@"allow-leaderboard-challenges"];

    if (v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[GKGameCacheObject setSupportsLeaderboardChallenges:](self, "setSupportsLeaderboardChallenges:", [v44 BOOLValue]);
      }
    }

    v45 = [v8 objectForKeyedSubscript:@"image-urls"];

    if (v45)
    {
      v46 = [(GKCacheObject *)self updateImagesWithImageURLs:v45];
    }

    [(GKGameCacheObject *)self setCompatiblePlatforms:[GKCachingUtils compatiblePlatforms:v8]];
    v47 = [v8 objectForKey:@"supported-transports"];

    if (v47)
    {
      [(GKGameCacheObject *)self setSupportedTransportVersions:[GKCachingUtils supportedTransports:v8]];
    }

    v48 = [v8 objectForKeyedSubscript:@"artwork"];
    v49 = [(GKGameCacheObject *)self managedObjectContext];
    v50 = [GKCDArtwork artworkFromServerRepresentation:v48 moc:v49];
    [(GKGameCacheObject *)self setArtwork:v50];
  }
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameCacheObject internalRepresentation]", [v7 UTF8String], 1613);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  return [GKGameInternal internalRepresentationForCacheObject:self];
}

- (id)leaderboardSetWithIdentifier:(id)a3
{
  v4 = [NSPredicate predicateWithFormat:@"list.game = %@ && identifier = %@", self, a3];
  v5 = [(GKGameCacheObject *)self managedObjectContext];
  v6 = [(GKCacheObject *)GKLeaderboardSetCacheObject firstObjectMatchingPredicate:v4 context:v5];

  return v6;
}

- (id)gameDescriptor
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameCacheObject gameDescriptor]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameCacheObject gameDescriptor]", [v7 UTF8String], 1624);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [NSMutableDictionary dictionaryWithCapacity:5];
  v10 = [(GKGameCacheObject *)self bundleID];

  if (v10)
  {
    v11 = [(GKGameCacheObject *)self bundleID];
    [v9 setObject:v11 forKey:@"bundle-id"];
  }

  v12 = [(GKGameCacheObject *)self bundleVersion];

  if (v12)
  {
    v13 = [(GKGameCacheObject *)self bundleVersion];
    [v9 setObject:v13 forKey:@"bundle-version"];
  }

  v14 = [(GKGameCacheObject *)self shortBundleVersion];

  if (v14)
  {
    v15 = [(GKGameCacheObject *)self shortBundleVersion];
    [v9 setObject:v15 forKey:@"short-bundle-version"];
  }

  v16 = [(GKGameCacheObject *)self adamID];

  if (v16)
  {
    v17 = [(GKGameCacheObject *)self adamID];
    [v9 setObject:v17 forKey:@"adam-id"];
  }

  v18 = [(GKGameCacheObject *)self externalVersion];

  if (v18)
  {
    v19 = [(GKGameCacheObject *)self externalVersion];
    [v9 setObject:v19 forKey:@"external-version"];
  }

  v20 = [(GKGameCacheObject *)self platform];
  v21 = +[GKGameDescriptor stringForPlatform:](GKGameDescriptor, "stringForPlatform:", [v20 integerValue]);

  if (v21)
  {
    [v9 setObject:v21 forKey:@"platform"];
  }

  return v9;
}

@end
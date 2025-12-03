@interface GKGameCacheObject
+ (id)fetchSortDescriptors;
+ (id)gameForBundleID:(id)d context:(id)context;
+ (id)gameForGameDescriptor:(id)descriptor context:(id)context;
+ (id)gamesForBundleIDs:(id)ds context:(id)context;
+ (id)gamesForFullGameDescriptors:(id)descriptors context:(id)context;
+ (id)gamesForGameDescriptors:(id)descriptors context:(id)context;
- (BOOL)isValid;
- (id)gameDescriptor;
- (id)internalRepresentation;
- (id)leaderboardSetWithIdentifier:(id)identifier;
- (void)updateWithGameDescriptor:(id)descriptor;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date;
- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date supportsChallenges:(BOOL)challenges;
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

+ (id)gameForGameDescriptor:(id)descriptor context:(id)context
{
  descriptorCopy = descriptor;
  contextCopy = context;
  descriptorCopy2 = descriptor;
  v7 = [NSArray arrayWithObjects:&descriptorCopy count:1];
  descriptorCopy = [GKGameCacheObject gamesForGameDescriptors:v7 context:contextCopy, descriptorCopy];

  firstObject = [descriptorCopy firstObject];

  return firstObject;
}

+ (id)gameForBundleID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v14 = dCopy;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    v9 = [self gamesForBundleIDs:v8 context:contextCopy];
    lastObject = [v9 lastObject];
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

    lastObject = 0;
  }

  return lastObject;
}

+ (id)gamesForBundleIDs:(id)ds context:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290268();
  }

  v8 = +[GKApplicationWorkspace defaultWorkspace];
  v9 = [v8 gameDescriptorsWithInstalledBundleVersionsForBundleIDs:dsCopy];

  v10 = [GKGameCacheObject gamesForFullGameDescriptors:v9 context:contextCopy];

  return v10;
}

+ (id)gamesForGameDescriptors:(id)descriptors context:(id)context
{
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1002902A4();
  }

  v8 = +[GKApplicationWorkspace defaultWorkspace];
  v9 = [v8 gameDescriptorsWithInstalledBundleVersionsForGameDescriptors:descriptorsCopy];

  v10 = [GKGameCacheObject gamesForFullGameDescriptors:v9 context:contextCopy];

  return v10;
}

+ (id)gamesForFullGameDescriptors:(id)descriptors context:(id)context
{
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1002902E0();
  }

  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [descriptorsCopy count]);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100128A28;
  v9 = v26[3] = &unk_1003679F0;
  v27 = v9;
  [descriptorsCopy enumerateObjectsUsingBlock:v26];
  v10 = [self uniqueObjectIDLookupWithContext:contextCopy];
  allKeys = [v9 allKeys];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100128A98;
  v22[3] = &unk_100367A18;
  selfCopy = self;
  v12 = contextCopy;
  v23 = v12;
  v24 = v9;
  v13 = v9;
  v14 = [v10 uniqueObjectsForKeys:allKeys context:v12 newObject:v22];

  [v14 _gkMapDictionaryWithKeyPath:@"bundleID"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100128B1C;
  v20 = v19[3] = &unk_1003666F0;
  v21 = v12;
  v15 = v12;
  v16 = v20;
  v17 = [descriptorsCopy _gkMapWithBlock:v19];

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

  name = [(GKGameCacheObject *)self name];
  if (name)
  {
    hasImages = [(GKCacheObject *)self hasImages];
  }

  else
  {
    hasImages = 0;
  }

  return hasImages;
}

- (void)updateWithGameDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
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
    lastPathComponent = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v8, "-[GKGameCacheObject updateWithGameDescriptor:]", [lastPathComponent UTF8String], 1411);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  if (descriptorCopy)
  {
    v12 = [descriptorCopy objectForKey:@"bundle-id"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        stringValue = [v12 stringValue];

        v12 = stringValue;
      }
    }

    v14 = [descriptorCopy objectForKey:@"bundle-version"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        stringValue2 = [v14 stringValue];

        v14 = stringValue2;
      }
    }

    v16 = [descriptorCopy objectForKey:@"short-bundle-version"];
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        stringValue3 = [v16 stringValue];

        v16 = stringValue3;
      }
    }

    v18 = [descriptorCopy objectForKey:@"adam-id"];
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

    v20 = [descriptorCopy objectForKey:@"external-version"];
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
      bundleVersion = [(GKGameCacheObject *)self bundleVersion];
      if (!bundleVersion || (v24 = bundleVersion, -[GKGameCacheObject bundleVersion](self, "bundleVersion"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v14 isEqualToString:v25], v25, v24, (v26 & 1) == 0))
      {
        [(GKGameCacheObject *)self setBundleVersion:v14];
      }
    }

    if (v16)
    {
      shortBundleVersion = [(GKGameCacheObject *)self shortBundleVersion];
      if (!shortBundleVersion || (v28 = shortBundleVersion, -[GKGameCacheObject shortBundleVersion](self, "shortBundleVersion"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v16 isEqualToString:v29], v29, v28, (v30 & 1) == 0))
      {
        [(GKGameCacheObject *)self setShortBundleVersion:v16];
      }
    }

    if (v22)
    {
      externalVersion = [(GKGameCacheObject *)self externalVersion];
      if (!externalVersion || (v32 = externalVersion, -[GKGameCacheObject externalVersion](self, "externalVersion"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v22 isEqualToNumber:v33], v33, v32, (v34 & 1) == 0))
      {
        [(GKGameCacheObject *)self setExternalVersion:v22];
      }
    }

    v35 = [descriptorCopy objectForKey:@"platform"];
    v36 = [NSNumber numberWithInteger:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v35]];
    [(GKGameCacheObject *)self setPlatform:v36];

    v37 = [descriptorCopy objectForKeyedSubscript:@"is-arcade-game"];
    if (v37 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      -[GKGameCacheObject setIsArcadeGame:](self, "setIsArcadeGame:", [v37 BOOLValue]);
    }

    [(GKGameCacheObject *)self setCompatiblePlatforms:[GKCachingUtils compatiblePlatforms:descriptorCopy]];
    [(GKGameCacheObject *)self setSupportedTransportVersions:[GKCachingUtils supportedTransports:descriptorCopy]];
  }
}

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date
{
  dateCopy = date;
  representationCopy = representation;
  v8 = +[GKPreferences shared];
  -[GKGameCacheObject updateWithServerRepresentation:expirationDate:supportsChallenges:](self, "updateWithServerRepresentation:expirationDate:supportsChallenges:", representationCopy, dateCopy, [v8 supportsChallenges]);
}

- (void)updateWithServerRepresentation:(id)representation expirationDate:(id)date supportsChallenges:(BOOL)challenges
{
  challengesCopy = challenges;
  representationCopy = representation;
  dateCopy = date;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100290358(v11, challengesCopy);
  }

  v12 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v12, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v13 = +[NSThread callStackSymbols];
    v14 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameCacheObject updateWithServerRepresentation:expirationDate:supportsChallenges:]", v13];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    [v15 lastPathComponent];
    v17 = v16 = dateCopy;
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v14, "-[GKGameCacheObject updateWithServerRepresentation:expirationDate:supportsChallenges:]", [v17 UTF8String], 1509);

    dateCopy = v16;
    [NSException raise:@"GameKit Exception" format:@"%@", v18];
  }

  if (!dateCopy)
  {
    dateCopy = [(GKGameCacheObject *)self expirationDate];
  }

  v51.receiver = self;
  v51.super_class = GKGameCacheObject;
  [(GKExpiringCacheObject *)&v51 updateWithServerRepresentation:representationCopy expirationDate:dateCopy];
  v19 = [representationCopy objectForKey:@"status"];
  integerValue = [v19 integerValue];

  if (integerValue)
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
    v22 = [representationCopy objectForKey:@"game"];
    if (v22)
    {
      v23 = v22;
      v24 = +[GKApplicationWorkspace defaultWorkspace];
      v52 = v23;
      v25 = [NSArray arrayWithObjects:&v52 count:1];
      v26 = [v24 gameDescriptorsWithInstalledBundleVersionsForGameDescriptors:v25];
      firstObject = [v26 firstObject];

      [(GKGameCacheObject *)self updateWithGameDescriptor:firstObject];
    }

    v28 = [representationCopy objectForKey:@"software-type"];
    [(GKGameCacheObject *)self setSoftwareType:v28];
    v29 = [representationCopy objectForKey:@"name"];

    [(GKGameCacheObject *)self setName:v29];
    v30 = [representationCopy objectForKey:@"is-prerendered"];

    -[GKGameCacheObject setPrerendered:](self, "setPrerendered:", [v30 BOOLValue]);
    v31 = [representationCopy objectForKey:@"supports-leaderboards"];

    -[GKGameCacheObject setSupportsLeaderboards:](self, "setSupportsLeaderboards:", [v31 BOOLValue]);
    v32 = [representationCopy objectForKey:@"has-aggregate-leaderboard"];

    -[GKGameCacheObject setHasAggregateLeaderboard:](self, "setHasAggregateLeaderboard:", [v32 BOOLValue]);
    v33 = [representationCopy objectForKey:@"num-leaderboard-categories"];

    -[GKGameCacheObject setNumberOfCategories:](self, "setNumberOfCategories:", [v33 integerValue]);
    v34 = [representationCopy objectForKey:@"num-leaderboard-sets"];

    -[GKGameCacheObject setNumberOfLeaderboardSets:](self, "setNumberOfLeaderboardSets:", [v34 integerValue]);
    [(GKGameCacheObject *)self setSupportsLeaderboardSets:[(GKGameCacheObject *)self numberOfLeaderboardSets]!= 0];
    v35 = [representationCopy objectForKey:@"default-leaderboard-category"];

    [(GKGameCacheObject *)self setDefaultCategory:v35];
    v36 = [representationCopy objectForKey:@"supports-achievements"];

    -[GKGameCacheObject setSupportsAchievements:](self, "setSupportsAchievements:", [v36 BOOLValue]);
    v37 = [representationCopy objectForKey:@"max-achievements"];

    -[GKGameCacheObject setNumberOfAchievements:](self, "setNumberOfAchievements:", [v37 integerValue]);
    v38 = [representationCopy objectForKey:@"supports-multi-player"];

    -[GKGameCacheObject setSupportsMultiplayer:](self, "setSupportsMultiplayer:", [v38 BOOLValue]);
    v39 = [representationCopy objectForKey:@"supports-turn-based-multi-player"];

    -[GKGameCacheObject setSupportsTurnBasedMultiplayer:](self, "setSupportsTurnBasedMultiplayer:", [v39 BOOLValue]);
    v40 = [representationCopy objectForKey:@"max-achievements-score"];

    -[GKGameCacheObject setMaxAchievementPoints:](self, "setMaxAchievementPoints:", [v40 integerValue]);
    v41 = [representationCopy objectForKey:@"adam-id"];

    if (v41)
    {
      [(GKGameCacheObject *)self setAdamID:v41];
    }

    v42 = [representationCopy objectForKey:@"is-arcade-game"];

    -[GKGameCacheObject setIsArcadeGame:](self, "setIsArcadeGame:", [v42 BOOLValue]);
    v43 = [representationCopy objectForKey:@"allow-challenges"];

    -[GKGameCacheObject setSupportsChallenges:](self, "setSupportsChallenges:", [v43 BOOLValue] | challengesCopy);
    v44 = [representationCopy objectForKey:@"allow-leaderboard-challenges"];

    if (v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[GKGameCacheObject setSupportsLeaderboardChallenges:](self, "setSupportsLeaderboardChallenges:", [v44 BOOLValue]);
      }
    }

    v45 = [representationCopy objectForKeyedSubscript:@"image-urls"];

    if (v45)
    {
      v46 = [(GKCacheObject *)self updateImagesWithImageURLs:v45];
    }

    [(GKGameCacheObject *)self setCompatiblePlatforms:[GKCachingUtils compatiblePlatforms:representationCopy]];
    v47 = [representationCopy objectForKey:@"supported-transports"];

    if (v47)
    {
      [(GKGameCacheObject *)self setSupportedTransportVersions:[GKCachingUtils supportedTransports:representationCopy]];
    }

    v48 = [representationCopy objectForKeyedSubscript:@"artwork"];
    managedObjectContext = [(GKGameCacheObject *)self managedObjectContext];
    v50 = [GKCDArtwork artworkFromServerRepresentation:v48 moc:managedObjectContext];
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameCacheObject internalRepresentation]", [lastPathComponent UTF8String], 1613);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  return [GKGameInternal internalRepresentationForCacheObject:self];
}

- (id)leaderboardSetWithIdentifier:(id)identifier
{
  identifier = [NSPredicate predicateWithFormat:@"list.game = %@ && identifier = %@", self, identifier];
  managedObjectContext = [(GKGameCacheObject *)self managedObjectContext];
  v6 = [(GKCacheObject *)GKLeaderboardSetCacheObject firstObjectMatchingPredicate:identifier context:managedObjectContext];

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
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameCacheObject gameDescriptor]", [lastPathComponent UTF8String], 1624);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [NSMutableDictionary dictionaryWithCapacity:5];
  bundleID = [(GKGameCacheObject *)self bundleID];

  if (bundleID)
  {
    bundleID2 = [(GKGameCacheObject *)self bundleID];
    [v9 setObject:bundleID2 forKey:@"bundle-id"];
  }

  bundleVersion = [(GKGameCacheObject *)self bundleVersion];

  if (bundleVersion)
  {
    bundleVersion2 = [(GKGameCacheObject *)self bundleVersion];
    [v9 setObject:bundleVersion2 forKey:@"bundle-version"];
  }

  shortBundleVersion = [(GKGameCacheObject *)self shortBundleVersion];

  if (shortBundleVersion)
  {
    shortBundleVersion2 = [(GKGameCacheObject *)self shortBundleVersion];
    [v9 setObject:shortBundleVersion2 forKey:@"short-bundle-version"];
  }

  adamID = [(GKGameCacheObject *)self adamID];

  if (adamID)
  {
    adamID2 = [(GKGameCacheObject *)self adamID];
    [v9 setObject:adamID2 forKey:@"adam-id"];
  }

  externalVersion = [(GKGameCacheObject *)self externalVersion];

  if (externalVersion)
  {
    externalVersion2 = [(GKGameCacheObject *)self externalVersion];
    [v9 setObject:externalVersion2 forKey:@"external-version"];
  }

  platform = [(GKGameCacheObject *)self platform];
  v21 = +[GKGameDescriptor stringForPlatform:](GKGameDescriptor, "stringForPlatform:", [platform integerValue]);

  if (v21)
  {
    [v9 setObject:v21 forKey:@"platform"];
  }

  return v9;
}

@end
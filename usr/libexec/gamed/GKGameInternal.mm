@interface GKGameInternal
+ (id)storeItemURLForURL:(id)l gamePlatform:(int64_t)platform extraQueryParams:(id)params;
- (void)storeItemURLForGamePlatform:(int64_t)platform withContext:(id)context withHandler:(id)handler;
- (void)updateWithCacheObject:(id)object;
@end

@implementation GKGameInternal

- (void)storeItemURLForGamePlatform:(int64_t)platform withContext:(id)context withHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKGameInternal: storeItemURLForGamePlatform:", v15, 2u);
  }

  storeURL = [(GKGameInternal *)self storeURL];
  v13 = storeURL;
  if (handlerCopy)
  {
    if (platform == 3)
    {
      v14 = [storeURL _gkURLByReplacingSchemeWithScheme:@"com.apple.TVAppStore"];

      v13 = v14;
    }

    handlerCopy[2](handlerCopy, v13, 0);
  }
}

+ (id)storeItemURLForURL:(id)l gamePlatform:(int64_t)platform extraQueryParams:(id)params
{
  lCopy = l;
  paramsCopy = params;
  if (platform > 2)
  {
    if (platform != 5 && platform != 3)
    {
      goto LABEL_12;
    }

LABEL_7:
    v9 = @"itunes";
    goto LABEL_8;
  }

  if (platform == 1)
  {
    goto LABEL_7;
  }

  if (platform == 2)
  {
    v9 = @"macappstore";
LABEL_8:
    v10 = [lCopy _gkURLByReplacingSchemeWithScheme:v9];
    goto LABEL_9;
  }

LABEL_12:
  v10 = lCopy;
LABEL_9:
  v11 = v10;
  v12 = [v10 _gkURLByAddingQueryParameters:paramsCopy];

  return v12;
}

- (void)updateWithCacheObject:(id)object
{
  objectCopy = object;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKGameInternal(Cache) updateWithCacheObject:]", [lastPathComponent UTF8String], 74);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  bundleID = [objectCopy bundleID];
  [(GKGameInternal *)self setBundleIdentifier:bundleID];

  bundleVersion = [objectCopy bundleVersion];
  [(GKGameInternal *)self setBundleVersion:bundleVersion];

  shortBundleVersion = [objectCopy shortBundleVersion];
  [(GKGameInternal *)self setShortBundleVersion:shortBundleVersion];

  adamID = [objectCopy adamID];
  [(GKGameInternal *)self setAdamID:adamID];

  externalVersion = [objectCopy externalVersion];
  [(GKGameInternal *)self setExternalVersion:externalVersion];

  platform = [objectCopy platform];
  -[GKGameInternal setPlatform:](self, "setPlatform:", [platform integerValue]);

  v16 = +[GKGameDescriptor gamePlatformStringSetFromGamePlatformSet:](GKGameDescriptor, "gamePlatformStringSetFromGamePlatformSet:", [objectCopy compatiblePlatforms]);
  [(GKGameInternal *)self setCompatiblePlatforms:v16];

  v17 = +[GKSupportedTransport supportedTransportVersionsFromSupportedTransportVersionSet:](GKSupportedTransport, "supportedTransportVersionsFromSupportedTransportVersionSet:", [objectCopy supportedTransportVersions]);
  [(GKGameInternal *)self setSupportedTransports:v17];

  -[GKGameInternal setIsArcadeGame:](self, "setIsArcadeGame:", [objectCopy isArcadeGame]);
  -[GKGameInternal setSupportsChallenges:](self, "setSupportsChallenges:", [objectCopy supportsChallenges]);
  -[GKGameInternal setSupportsLeaderboardChallenges:](self, "setSupportsLeaderboardChallenges:", [objectCopy supportsLeaderboardChallenges]);
  name = [objectCopy name];
  [(GKGameInternal *)self setName:name];

  -[GKGameInternal setPrerendered:](self, "setPrerendered:", [objectCopy prerendered]);
  if ([objectCopy supportsLeaderboards])
  {
    [(GKGameInternal *)self setSupportsLeaderboards:1];
    -[GKGameInternal setHasAggregateLeaderboard:](self, "setHasAggregateLeaderboard:", [objectCopy hasAggregateLeaderboard]);
    -[GKGameInternal setNumberOfLeaderboards:](self, "setNumberOfLeaderboards:", [objectCopy numberOfCategories]);
    defaultCategory = [objectCopy defaultCategory];
    [(GKGameInternal *)self setDefaultLeaderboardIdentifier:defaultCategory];
  }

  if ([objectCopy supportsLeaderboardSets])
  {
    [(GKGameInternal *)self setSupportsLeaderboardSets:1];
    -[GKGameInternal setNumberOfLeaderboardSets:](self, "setNumberOfLeaderboardSets:", [objectCopy numberOfLeaderboardSets]);
  }

  if ([objectCopy supportsAchievements])
  {
    [(GKGameInternal *)self setSupportsAchievements:1];
    -[GKGameInternal setNumberOfAchievements:](self, "setNumberOfAchievements:", [objectCopy numberOfAchievements]);
    -[GKGameInternal setMaxAchievementPoints:](self, "setMaxAchievementPoints:", [objectCopy maxAchievementPoints]);
  }

  -[GKGameInternal setSupportsMultiplayer:](self, "setSupportsMultiplayer:", [objectCopy supportsMultiplayer]);
  -[GKGameInternal setSupportsTurnBasedMultiplayer:](self, "setSupportsTurnBasedMultiplayer:", [objectCopy supportsTurnBasedMultiplayer]);
  imageURLDictionary = [objectCopy imageURLDictionary];
  [(GKGameInternal *)self setIcons:imageURLDictionary];

  expirationDate = [objectCopy expirationDate];
  v22 = +[NSDate distantPast];
  [expirationDate timeIntervalSinceDate:v22];
  [(GKGameInternal *)self setValid:v23 > 0.0];

  artwork = [objectCopy artwork];
  internalRepresentation = [artwork internalRepresentation];
  [(GKGameInternal *)self setArtwork:internalRepresentation];
}

@end
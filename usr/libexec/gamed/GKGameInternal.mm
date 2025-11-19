@interface GKGameInternal
+ (id)storeItemURLForURL:(id)a3 gamePlatform:(int64_t)a4 extraQueryParams:(id)a5;
- (void)storeItemURLForGamePlatform:(int64_t)a3 withContext:(id)a4 withHandler:(id)a5;
- (void)updateWithCacheObject:(id)a3;
@end

@implementation GKGameInternal

- (void)storeItemURLForGamePlatform:(int64_t)a3 withContext:(id)a4 withHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
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

  v12 = [(GKGameInternal *)self storeURL];
  v13 = v12;
  if (v9)
  {
    if (a3 == 3)
    {
      v14 = [v12 _gkURLByReplacingSchemeWithScheme:@"com.apple.TVAppStore"];

      v13 = v14;
    }

    v9[2](v9, v13, 0);
  }
}

+ (id)storeItemURLForURL:(id)a3 gamePlatform:(int64_t)a4 extraQueryParams:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4 > 2)
  {
    if (a4 != 5 && a4 != 3)
    {
      goto LABEL_12;
    }

LABEL_7:
    v9 = @"itunes";
    goto LABEL_8;
  }

  if (a4 == 1)
  {
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    v9 = @"macappstore";
LABEL_8:
    v10 = [v7 _gkURLByReplacingSchemeWithScheme:v9];
    goto LABEL_9;
  }

LABEL_12:
  v10 = v7;
LABEL_9:
  v11 = v10;
  v12 = [v10 _gkURLByAddingQueryParameters:v8];

  return v12;
}

- (void)updateWithCacheObject:(id)a3
{
  v26 = a3;
  v4 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v4, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v5 = +[NSThread callStackSymbols];
    v6 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameInternal(Cache) updateWithCacheObject:]", v5];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/GKInternalRepresentation+Cache.m"];
    v8 = [v7 lastPathComponent];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v6, "-[GKGameInternal(Cache) updateWithCacheObject:]", [v8 UTF8String], 74);

    [NSException raise:@"GameKit Exception" format:@"%@", v9];
  }

  v10 = [v26 bundleID];
  [(GKGameInternal *)self setBundleIdentifier:v10];

  v11 = [v26 bundleVersion];
  [(GKGameInternal *)self setBundleVersion:v11];

  v12 = [v26 shortBundleVersion];
  [(GKGameInternal *)self setShortBundleVersion:v12];

  v13 = [v26 adamID];
  [(GKGameInternal *)self setAdamID:v13];

  v14 = [v26 externalVersion];
  [(GKGameInternal *)self setExternalVersion:v14];

  v15 = [v26 platform];
  -[GKGameInternal setPlatform:](self, "setPlatform:", [v15 integerValue]);

  v16 = +[GKGameDescriptor gamePlatformStringSetFromGamePlatformSet:](GKGameDescriptor, "gamePlatformStringSetFromGamePlatformSet:", [v26 compatiblePlatforms]);
  [(GKGameInternal *)self setCompatiblePlatforms:v16];

  v17 = +[GKSupportedTransport supportedTransportVersionsFromSupportedTransportVersionSet:](GKSupportedTransport, "supportedTransportVersionsFromSupportedTransportVersionSet:", [v26 supportedTransportVersions]);
  [(GKGameInternal *)self setSupportedTransports:v17];

  -[GKGameInternal setIsArcadeGame:](self, "setIsArcadeGame:", [v26 isArcadeGame]);
  -[GKGameInternal setSupportsChallenges:](self, "setSupportsChallenges:", [v26 supportsChallenges]);
  -[GKGameInternal setSupportsLeaderboardChallenges:](self, "setSupportsLeaderboardChallenges:", [v26 supportsLeaderboardChallenges]);
  v18 = [v26 name];
  [(GKGameInternal *)self setName:v18];

  -[GKGameInternal setPrerendered:](self, "setPrerendered:", [v26 prerendered]);
  if ([v26 supportsLeaderboards])
  {
    [(GKGameInternal *)self setSupportsLeaderboards:1];
    -[GKGameInternal setHasAggregateLeaderboard:](self, "setHasAggregateLeaderboard:", [v26 hasAggregateLeaderboard]);
    -[GKGameInternal setNumberOfLeaderboards:](self, "setNumberOfLeaderboards:", [v26 numberOfCategories]);
    v19 = [v26 defaultCategory];
    [(GKGameInternal *)self setDefaultLeaderboardIdentifier:v19];
  }

  if ([v26 supportsLeaderboardSets])
  {
    [(GKGameInternal *)self setSupportsLeaderboardSets:1];
    -[GKGameInternal setNumberOfLeaderboardSets:](self, "setNumberOfLeaderboardSets:", [v26 numberOfLeaderboardSets]);
  }

  if ([v26 supportsAchievements])
  {
    [(GKGameInternal *)self setSupportsAchievements:1];
    -[GKGameInternal setNumberOfAchievements:](self, "setNumberOfAchievements:", [v26 numberOfAchievements]);
    -[GKGameInternal setMaxAchievementPoints:](self, "setMaxAchievementPoints:", [v26 maxAchievementPoints]);
  }

  -[GKGameInternal setSupportsMultiplayer:](self, "setSupportsMultiplayer:", [v26 supportsMultiplayer]);
  -[GKGameInternal setSupportsTurnBasedMultiplayer:](self, "setSupportsTurnBasedMultiplayer:", [v26 supportsTurnBasedMultiplayer]);
  v20 = [v26 imageURLDictionary];
  [(GKGameInternal *)self setIcons:v20];

  v21 = [v26 expirationDate];
  v22 = +[NSDate distantPast];
  [v21 timeIntervalSinceDate:v22];
  [(GKGameInternal *)self setValid:v23 > 0.0];

  v24 = [v26 artwork];
  v25 = [v24 internalRepresentation];
  [(GKGameInternal *)self setArtwork:v25];
}

@end
@interface GKAchievementChallengeCacheObject
- (BOOL)hasDetails;
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKAchievementChallengeCacheObject

- (BOOL)hasDetails
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementChallengeCacheObject hasDetails]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKAchievementChallengeCacheObject hasDetails]", [lastPathComponent UTF8String], 4681);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v13.receiver = self;
  v13.super_class = GKAchievementChallengeCacheObject;
  if (![(GKChallengeCacheObject *)&v13 hasDetails])
  {
    return 0;
  }

  identifier = [(GKAchievementChallengeCacheObject *)self identifier];
  if (identifier)
  {
    v10 = 1;
  }

  else
  {
    groupIdentifier = [(GKAchievementChallengeCacheObject *)self groupIdentifier];
    v10 = groupIdentifier != 0;
  }

  return v10;
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementChallengeCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKAchievementChallengeCacheObject internalRepresentation]", [lastPathComponent UTF8String], 4692);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  list = [(GKAchievementChallengeCacheObject *)self list];
  player = [list player];

  v22.receiver = self;
  v22.super_class = GKAchievementChallengeCacheObject;
  internalRepresentation = [(GKChallengeCacheObject *)&v22 internalRepresentation];
  v12 = +[GKAchievementInternal internalRepresentation];
  identifier = [(GKAchievementChallengeCacheObject *)self identifier];
  [v12 setIdentifier:identifier];

  groupIdentifier = [(GKAchievementChallengeCacheObject *)self groupIdentifier];
  [v12 setGroupIdentifier:groupIdentifier];

  date = [(GKAchievementChallengeCacheObject *)self date];
  [v12 setLastReportedDate:date];

  [(GKAchievementChallengeCacheObject *)self percentComplete];
  [v12 setPercentComplete:v16];
  internalRepresentation2 = [player internalRepresentation];
  [v12 setPlayer:internalRepresentation2];

  title = [(GKAchievementChallengeCacheObject *)self title];
  [v12 setTitle:title];

  maximumPoints = [(GKAchievementChallengeCacheObject *)self maximumPoints];
  [v12 setMaximumPoints:{objc_msgSend(maximumPoints, "integerValue")}];

  [v12 setHidden:{-[GKAchievementChallengeCacheObject hidden](self, "hidden")}];
  [v12 setReplayable:{-[GKAchievementChallengeCacheObject replayable](self, "replayable")}];
  imageURLDictionary = [(GKCacheObject *)self imageURLDictionary];
  [v12 setIcons:imageURLDictionary];

  [internalRepresentation setAchievement:v12];

  return internalRepresentation;
}

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementChallengeCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKAchievementChallengeCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 4717);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v28.receiver = self;
  v28.super_class = GKAchievementChallengeCacheObject;
  [(GKChallengeCacheObject *)&v28 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"achievement"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKey:@"achievement-id"];
    [(GKAchievementChallengeCacheObject *)self setIdentifier:v13];

    v14 = [v12 objectForKey:@"achievement-group-id"];
    [(GKAchievementChallengeCacheObject *)self setGroupIdentifier:v14];

    v15 = [v12 objectForKey:@"achievement-pct"];
    [v15 floatValue];
    [(GKAchievementChallengeCacheObject *)self setPercentComplete:?];

    v16 = [v12 objectForKey:@"timestamp"];
    v17 = [NSDate _gkDateFromServerTimestamp:v16];
    [(GKAchievementChallengeCacheObject *)self setDate:v17];
  }

  v18 = [representationCopy objectForKeyedSubscript:@"achievement-description"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectForKeyedSubscript:@"achievement-id"];
    [(GKAchievementChallengeCacheObject *)self setIdentifier:v20];

    v21 = [v12 objectForKey:@"group-achievement-id"];
    [(GKAchievementChallengeCacheObject *)self setGroupIdentifier:v21];

    v22 = [v19 objectForKeyedSubscript:@"achievement-image-urls"];
    if (v22)
    {
      v23 = [(GKCacheObject *)self updateImagesWithImageURLs:v22];
    }

    v24 = [v19 objectForKeyedSubscript:@"achievement-title"];
    [(GKAchievementChallengeCacheObject *)self setTitle:v24];

    v25 = [v19 objectForKeyedSubscript:@"achievement-max-value"];
    [(GKAchievementChallengeCacheObject *)self setMaximumPoints:v25];

    v26 = [v19 objectForKeyedSubscript:@"achievement-display-unachieved"];
    -[GKAchievementChallengeCacheObject setHidden:](self, "setHidden:", [v26 BOOLValue] ^ 1);

    v27 = [v19 objectForKeyedSubscript:@"is-recyclable"];
    -[GKAchievementChallengeCacheObject setReplayable:](self, "setReplayable:", [v27 BOOLValue]);
  }
}

@end
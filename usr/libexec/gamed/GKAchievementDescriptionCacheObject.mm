@interface GKAchievementDescriptionCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKAchievementDescriptionCacheObject

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementDescriptionCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKAchievementDescriptionCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 1797);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v34.receiver = self;
  v34.super_class = GKAchievementDescriptionCacheObject;
  [(GKCacheObject *)&v34 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"asc-resource-id"];
  [(GKAchievementDescriptionCacheObject *)self setAscResourceID:v11];

  v12 = [representationCopy objectForKey:@"achievement-id"];
  [(GKAchievementDescriptionCacheObject *)self setIdentifier:v12];

  v13 = [representationCopy objectForKey:@"group-achievement-id"];
  [(GKAchievementDescriptionCacheObject *)self setGroupIdentifier:v13];

  v14 = [representationCopy objectForKey:@"achievement-title"];
  [(GKAchievementDescriptionCacheObject *)self setTitle:v14];

  v15 = [representationCopy objectForKey:@"achievement-desc-after"];
  [(GKAchievementDescriptionCacheObject *)self setAchievedDescription:v15];

  v16 = [representationCopy objectForKey:@"achievement-desc-before"];
  [(GKAchievementDescriptionCacheObject *)self setUnachievedDescription:v16];

  v17 = [representationCopy objectForKey:@"achievement-max-value"];
  [(GKAchievementDescriptionCacheObject *)self setMaximumPoints:v17];

  v18 = [representationCopy objectForKey:@"achievement-display-unachieved"];
  -[GKAchievementDescriptionCacheObject setHidden:](self, "setHidden:", [v18 BOOLValue] ^ 1);

  v19 = [representationCopy objectForKey:@"is-recyclable"];
  -[GKAchievementDescriptionCacheObject setReplayable:](self, "setReplayable:", [v19 BOOLValue]);

  v20 = [representationCopy objectForKeyedSubscript:@"activity-vendor-id"];
  [(GKAchievementDescriptionCacheObject *)self setActivityIdentifier:v20];

  v21 = [representationCopy objectForKeyedSubscript:@"activity-properties"];
  if (v21)
  {
    v22 = v21;
    v23 = [representationCopy objectForKeyedSubscript:@"activity-properties"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = [representationCopy objectForKeyedSubscript:@"activity-properties"];
      v26 = [NSDictionary dictionaryWithDictionary:v25];
      [(GKAchievementDescriptionCacheObject *)self setActivityProperties:v26];
    }
  }

  if ([GKAchievementDescriptionCacheObject getIsPrereleaseFromServerRep:representationCopy])
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  [(GKAchievementDescriptionCacheObject *)self setReleaseState:v27];
  v28 = [representationCopy objectForKey:@"percentage-players-earned"];
  v29 = v28;
  if (v28)
  {
    [v28 doubleValue];
    v31 = [NSNumber numberWithDouble:v30 * 100.0];
    [(GKAchievementDescriptionCacheObject *)self setRarityPercent:v31];
  }

  v32 = [representationCopy objectForKey:@"achievement-image-urls"];
  if (v32)
  {
    v33 = [(GKCacheObject *)self updateImagesWithImageURLs:v32];
  }
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKAchievementDescriptionCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKAchievementDescriptionCacheObject internalRepresentation]", [lastPathComponent UTF8String], 1827);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = +[GKAchievementInternal internalRepresentation];
  ascResourceID = [(GKAchievementDescriptionCacheObject *)self ascResourceID];
  [v9 setAscResourceID:ascResourceID];

  identifier = [(GKAchievementDescriptionCacheObject *)self identifier];
  [v9 setIdentifier:identifier];

  title = [(GKAchievementDescriptionCacheObject *)self title];
  [v9 setTitle:title];

  groupIdentifier = [(GKAchievementDescriptionCacheObject *)self groupIdentifier];
  [v9 setGroupIdentifier:groupIdentifier];

  achievedDescription = [(GKAchievementDescriptionCacheObject *)self achievedDescription];
  [v9 setAchievedDescription:achievedDescription];

  unachievedDescription = [(GKAchievementDescriptionCacheObject *)self unachievedDescription];
  [v9 setUnachievedDescription:unachievedDescription];

  maximumPoints = [(GKAchievementDescriptionCacheObject *)self maximumPoints];
  [v9 setMaximumPoints:{objc_msgSend(maximumPoints, "unsignedIntegerValue")}];

  [v9 setHidden:{-[GKAchievementDescriptionCacheObject hidden](self, "hidden")}];
  [v9 setReplayable:{-[GKAchievementDescriptionCacheObject replayable](self, "replayable")}];
  imageURLDictionary = [(GKCacheObject *)self imageURLDictionary];
  [v9 setIcons:imageURLDictionary];

  rarityPercent = [(GKAchievementDescriptionCacheObject *)self rarityPercent];
  [v9 setRarityPercent:rarityPercent];

  activityIdentifier = [(GKAchievementDescriptionCacheObject *)self activityIdentifier];
  [v9 setActivityIdentifier:activityIdentifier];

  activityProperties = [(GKAchievementDescriptionCacheObject *)self activityProperties];
  if (activityProperties)
  {
    activityProperties2 = [(GKAchievementDescriptionCacheObject *)self activityProperties];
    [v9 setActivityProperties:activityProperties2];
  }

  else
  {
    [v9 setActivityProperties:&__NSDictionary0__struct];
  }

  [v9 setReleaseState:{-[GKAchievementDescriptionCacheObject releaseState](self, "releaseState")}];

  return v9;
}

@end
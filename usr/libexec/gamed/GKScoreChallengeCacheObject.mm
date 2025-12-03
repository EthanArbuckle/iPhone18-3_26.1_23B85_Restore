@interface GKScoreChallengeCacheObject
- (BOOL)hasDetails;
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)representation;
@end

@implementation GKScoreChallengeCacheObject

- (BOOL)hasDetails
{
  v6.receiver = self;
  v6.super_class = GKScoreChallengeCacheObject;
  if (![(GKChallengeCacheObject *)&v6 hasDetails])
  {
    return 0;
  }

  value = [(GKScoreChallengeCacheObject *)self value];
  v4 = value != 0;

  return v4;
}

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKScoreChallengeCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKScoreChallengeCacheObject internalRepresentation]", [lastPathComponent UTF8String], 4599);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v23.receiver = self;
  v23.super_class = GKScoreChallengeCacheObject;
  internalRepresentation = [(GKChallengeCacheObject *)&v23 internalRepresentation];
  v10 = +[GKScoreInternal internalRepresentation];
  identifier = [(GKScoreChallengeCacheObject *)self identifier];
  [v10 setLeaderboardIdentifier:identifier];

  groupIdentifier = [(GKScoreChallengeCacheObject *)self groupIdentifier];
  [v10 setGroupLeaderboardIdentifier:groupIdentifier];

  [v10 setRank:{-[GKScoreChallengeCacheObject rank](self, "rank")}];
  value = [(GKScoreChallengeCacheObject *)self value];
  [v10 setValue:{objc_msgSend(value, "longLongValue")}];

  formattedValue = [(GKScoreChallengeCacheObject *)self formattedValue];
  [v10 setFormattedValue:formattedValue];

  date = [(GKScoreChallengeCacheObject *)self date];
  [v10 setDate:date];

  context = [(GKScoreChallengeCacheObject *)self context];
  [v10 setContext:{objc_msgSend(context, "longLongValue")}];

  [internalRepresentation setScore:v10];
  v17 = +[GKLeaderboardInternal internalRepresentation];
  identifier2 = [(GKScoreChallengeCacheObject *)self identifier];
  [v17 setIdentifier:identifier2];

  groupIdentifier2 = [(GKScoreChallengeCacheObject *)self groupIdentifier];
  [v17 setGroupIdentifier:groupIdentifier2];

  localizedTitle = [(GKScoreChallengeCacheObject *)self localizedTitle];
  [v17 setLocalizedTitle:localizedTitle];

  imageURLDictionary = [(GKCacheObject *)self imageURLDictionary];
  [v17 setIcons:imageURLDictionary];

  [internalRepresentation setLeaderboard:v17];

  return internalRepresentation;
}

- (void)updateWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKScoreChallengeCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKScoreChallengeCacheObject updateWithServerRepresentation:]", [lastPathComponent UTF8String], 4627);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v28.receiver = self;
  v28.super_class = GKScoreChallengeCacheObject;
  [(GKChallengeCacheObject *)&v28 updateWithServerRepresentation:representationCopy];
  v11 = [representationCopy objectForKey:@"score"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKey:@"leaderboard-id"];
    [(GKScoreChallengeCacheObject *)self setIdentifier:v13];

    v14 = [v12 objectForKey:@"leaderboard-group-id"];
    [(GKScoreChallengeCacheObject *)self setGroupIdentifier:v14];

    v15 = [v12 objectForKey:@"rank"];
    -[GKScoreChallengeCacheObject setRank:](self, "setRank:", [v15 integerValue]);

    v16 = [v12 objectForKey:@"value"];
    [(GKScoreChallengeCacheObject *)self setValue:v16];

    v17 = [v12 objectForKey:@"formatted-score-value"];
    [(GKScoreChallengeCacheObject *)self setFormattedValue:v17];

    v18 = [v12 objectForKey:@"timestamp"];
    v19 = [NSDate _gkDateFromServerTimestamp:v18];
    [(GKScoreChallengeCacheObject *)self setDate:v19];

    v20 = [v12 objectForKey:@"context"];
    [(GKScoreChallengeCacheObject *)self setContext:v20];
  }

  v21 = [representationCopy objectForKeyedSubscript:@"leaderboard-category"];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 objectForKeyedSubscript:@"category-name"];
    [(GKScoreChallengeCacheObject *)self setIdentifier:v23];

    v24 = [v22 objectForKeyedSubscript:@"group-category-name"];
    [(GKScoreChallengeCacheObject *)self setGroupIdentifier:v24];

    v25 = [v22 objectForKeyedSubscript:@"category-title"];
    [(GKScoreChallengeCacheObject *)self setLocalizedTitle:v25];

    v26 = [v22 objectForKeyedSubscript:@"category-image-urls"];
    if (v26)
    {
      v27 = [(GKCacheObject *)self updateImagesWithImageURLs:v26];
    }
  }
}

@end
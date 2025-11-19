@interface GKScoreChallengeCacheObject
- (BOOL)hasDetails;
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3;
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

  v3 = [(GKScoreChallengeCacheObject *)self value];
  v4 = v3 != 0;

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
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKScoreChallengeCacheObject internalRepresentation]", [v7 UTF8String], 4599);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v23.receiver = self;
  v23.super_class = GKScoreChallengeCacheObject;
  v9 = [(GKChallengeCacheObject *)&v23 internalRepresentation];
  v10 = +[GKScoreInternal internalRepresentation];
  v11 = [(GKScoreChallengeCacheObject *)self identifier];
  [v10 setLeaderboardIdentifier:v11];

  v12 = [(GKScoreChallengeCacheObject *)self groupIdentifier];
  [v10 setGroupLeaderboardIdentifier:v12];

  [v10 setRank:{-[GKScoreChallengeCacheObject rank](self, "rank")}];
  v13 = [(GKScoreChallengeCacheObject *)self value];
  [v10 setValue:{objc_msgSend(v13, "longLongValue")}];

  v14 = [(GKScoreChallengeCacheObject *)self formattedValue];
  [v10 setFormattedValue:v14];

  v15 = [(GKScoreChallengeCacheObject *)self date];
  [v10 setDate:v15];

  v16 = [(GKScoreChallengeCacheObject *)self context];
  [v10 setContext:{objc_msgSend(v16, "longLongValue")}];

  [v9 setScore:v10];
  v17 = +[GKLeaderboardInternal internalRepresentation];
  v18 = [(GKScoreChallengeCacheObject *)self identifier];
  [v17 setIdentifier:v18];

  v19 = [(GKScoreChallengeCacheObject *)self groupIdentifier];
  [v17 setGroupIdentifier:v19];

  v20 = [(GKScoreChallengeCacheObject *)self localizedTitle];
  [v17 setLocalizedTitle:v20];

  v21 = [(GKCacheObject *)self imageURLDictionary];
  [v17 setIcons:v21];

  [v9 setLeaderboard:v17];

  return v9;
}

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKScoreChallengeCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKScoreChallengeCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 4627);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v28.receiver = self;
  v28.super_class = GKScoreChallengeCacheObject;
  [(GKChallengeCacheObject *)&v28 updateWithServerRepresentation:v4];
  v11 = [v4 objectForKey:@"score"];
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

  v21 = [v4 objectForKeyedSubscript:@"leaderboard-category"];
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
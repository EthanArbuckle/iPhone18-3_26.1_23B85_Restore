@interface GKLeaderboardScoreRequest
- (id)bagKey;
- (id)leaderboardForServerRepresentations:(id)a3;
- (id)scoreForServerRepresentation:(id)a3 leaderboard:(id)a4;
- (id)serverPlayerScope;
- (id)serverRequestWithService:(id)a3;
- (id)serverTimeScope;
- (void)generateScoresFromServerResponse:(id)a3 service:(id)a4 context:(id)a5 timeToLive:(double)a6 handler:(id)a7;
- (void)loadScoresWithService:(id)a3 context:(id)a4 handler:(id)a5;
- (void)updatePlayersForLeaderboard:(id)a3 service:(id)a4 handler:(id)a5;
@end

@implementation GKLeaderboardScoreRequest

- (id)serverTimeScope
{
  v2 = [(GKLeaderboardScoreRequest *)self timeScope];
  v3 = @"all-time";
  if (v2 == 1)
  {
    v3 = @"this-week";
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return @"today";
  }
}

- (id)serverPlayerScope
{
  if ([(GKLeaderboardScoreRequest *)self friendsOnly])
  {
    v2 = @"friends";
  }

  else
  {
    v2 = @"all";
  }

  return v2;
}

- (id)bagKey
{
  v2 = [NSString stringWithFormat:@"The concrete subclass must override [GKLeaderboardScoreRequest bagKey]"];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKLeaderboardScoreRequest+GKGameStatService.m"];
  v4 = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "-[GKLeaderboardScoreRequest(GKGameStatService) bagKey]", [v4 UTF8String], 46);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

- (id)serverRequestWithService:(id)a3
{
  v3 = [NSString stringWithFormat:@"The concrete subclass must override [GKLeaderboardScoreRequest serverRequestWithService:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKLeaderboardScoreRequest+GKGameStatService.m"];
  v5 = [v4 lastPathComponent];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKLeaderboardScoreRequest(GKGameStatService) serverRequestWithService:]", [v5 UTF8String], 52);

  [NSException raise:@"GameKit Exception" format:@"%@", v6];
  return 0;
}

- (id)leaderboardForServerRepresentations:(id)a3
{
  v3 = a3;
  v4 = +[GKLeaderboardInternal internalRepresentation];
  v5 = [v3 objectForKeyedSubscript:@"category-title"];
  [v4 setLocalizedTitle:v5];

  v6 = [v3 objectForKeyedSubscript:@"leaderboard-size"];
  [v4 setMaxRank:{objc_msgSend(v6, "unsignedIntegerValue")}];

  v7 = [v3 objectForKeyedSubscript:@"global-alltime-info"];
  if (!v7)
  {
    v7 = v3;
  }

  v8 = [v7 objectForKeyedSubscript:@"category-name"];
  [v4 setIdentifier:v8];

  v9 = [v7 objectForKeyedSubscript:@"group-category-name"];
  [v4 setGroupIdentifier:v9];

  v10 = [v7 objectForKeyedSubscript:@"rank"];
  [v4 setOverallRank:{objc_msgSend(v10, "unsignedIntegerValue")}];

  v11 = [v7 objectForKeyedSubscript:@"leaderboard-size"];
  [v4 setOverallRankCount:{objc_msgSend(v11, "unsignedIntegerValue")}];

  v12 = [v7 objectForKeyedSubscript:@"friend-rank"];
  [v4 setFriendRank:{objc_msgSend(v12, "unsignedIntegerValue")}];

  v13 = [v7 objectForKeyedSubscript:@"num-friends-ranked"];
  [v4 setFriendRankCount:{objc_msgSend(v13, "unsignedIntegerValue")}];

  v14 = [v7 objectForKeyedSubscript:@"category-image-urls"];
  [v4 setIcons:v14];

  v15 = [v7 objectForKeyedSubscript:@"last-submitted"];
  v16 = [NSDate _gkDateFromServerTimestamp:v15];
  [v4 setLastSubmittedDate:v16];

  return v4;
}

- (id)scoreForServerRepresentation:(id)a3 leaderboard:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GKScoreInternal internalRepresentation];
  v8 = [v6 identifier];
  [v7 setLeaderboardIdentifier:v8];

  v9 = [v6 groupIdentifier];

  [v7 setGroupLeaderboardIdentifier:v9];
  v10 = [v5 objectForKeyedSubscript:@"player-id"];
  if (v10)
  {
    v11 = +[GKPlayerInternal internalRepresentation];
    [v11 setPlayerID:v10];
  }

  else
  {
    v11 = 0;
  }

  [v7 setPlayer:v11];
  v12 = [v5 objectForKeyedSubscript:@"rank"];
  [v7 setRank:{objc_msgSend(v12, "integerValue")}];

  v13 = [v5 objectForKeyedSubscript:@"timestamp"];
  v14 = [NSDate _gkDateFromServerTimestamp:v13];
  [v7 setDate:v14];

  v15 = [v5 objectForKeyedSubscript:@"score-value"];
  [v7 setValue:{objc_msgSend(v15, "unsignedLongLongValue")}];

  v16 = [v5 objectForKeyedSubscript:@"formatted-score-value"];
  [v7 setFormattedValue:v16];

  v17 = [v5 objectForKeyedSubscript:@"context"];
  [v7 setContext:{objc_msgSend(v17, "unsignedLongLongValue")}];

  return v7;
}

- (void)updatePlayersForLeaderboard:(id)a3 service:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 scores];
  v11 = [NSMutableArray arrayWithArray:v10];

  v12 = [v7 playerScore];

  if (v12)
  {
    v13 = [v7 playerScore];
    [v11 addObject:v13];
  }

  v14 = [v11 _gkValuesForKeyPath:@"player.playerID"];
  v15 = +[GKAnonymousPlayerInternal internalRepresentation];
  v16 = [(GKService *)GKProfileService serviceFromService:v9];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000F49A4;
  v20[3] = &unk_100361A58;
  v21 = v11;
  v22 = v15;
  v23 = v8;
  v17 = v8;
  v18 = v15;
  v19 = v11;
  [v16 getProfilesForPlayerIDs:v14 handler:v20];
}

- (void)generateScoresFromServerResponse:(id)a3 service:(id)a4 context:(id)a5 timeToLive:(double)a6 handler:(id)a7
{
  v7 = [NSString stringWithFormat:@"The concrete subclass must override [GKLeaderboardScoreRequest generateScoresFromServerResponse:service:context:timeToLive:handler:]", a4, a5, a7, a6];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKLeaderboardScoreRequest+GKGameStatService.m"];
  v9 = [v8 lastPathComponent];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v7, "-[GKLeaderboardScoreRequest(GKGameStatService) generateScoresFromServerResponse:service:context:timeToLive:handler:]", [v9 UTF8String], 146);

  [NSException raise:@"GameKit Exception" format:@"%@", v10];
}

- (void)loadScoresWithService:(id)a3 context:(id)a4 handler:(id)a5
{
  v5 = [NSString stringWithFormat:@"The concrete subclass must override [GKLeaderboardScoreRequest loadScoresForClient:context:handler:]", a4, a5];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKLeaderboardScoreRequest+GKGameStatService.m"];
  v7 = [v6 lastPathComponent];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKLeaderboardScoreRequest(GKGameStatService) loadScoresWithService:context:handler:]", [v7 UTF8String], 153);

  [NSException raise:@"GameKit Exception" format:@"%@", v8];
}

@end
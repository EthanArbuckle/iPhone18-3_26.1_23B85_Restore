@interface GKLeaderboardScoreRequest
- (id)bagKey;
- (id)leaderboardForServerRepresentations:(id)representations;
- (id)scoreForServerRepresentation:(id)representation leaderboard:(id)leaderboard;
- (id)serverPlayerScope;
- (id)serverRequestWithService:(id)service;
- (id)serverTimeScope;
- (void)generateScoresFromServerResponse:(id)response service:(id)service context:(id)context timeToLive:(double)live handler:(id)handler;
- (void)loadScoresWithService:(id)service context:(id)context handler:(id)handler;
- (void)updatePlayersForLeaderboard:(id)leaderboard service:(id)service handler:(id)handler;
@end

@implementation GKLeaderboardScoreRequest

- (id)serverTimeScope
{
  timeScope = [(GKLeaderboardScoreRequest *)self timeScope];
  v3 = @"all-time";
  if (timeScope == 1)
  {
    v3 = @"this-week";
  }

  if (timeScope)
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
  lastPathComponent = [v3 lastPathComponent];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v2, "-[GKLeaderboardScoreRequest(GKGameStatService) bagKey]", [lastPathComponent UTF8String], 46);

  [NSException raise:@"GameKit Exception" format:@"%@", v5];
  return 0;
}

- (id)serverRequestWithService:(id)service
{
  v3 = [NSString stringWithFormat:@"The concrete subclass must override [GKLeaderboardScoreRequest serverRequestWithService:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKLeaderboardScoreRequest+GKGameStatService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKLeaderboardScoreRequest(GKGameStatService) serverRequestWithService:]", [lastPathComponent UTF8String], 52);

  [NSException raise:@"GameKit Exception" format:@"%@", v6];
  return 0;
}

- (id)leaderboardForServerRepresentations:(id)representations
{
  representationsCopy = representations;
  v4 = +[GKLeaderboardInternal internalRepresentation];
  v5 = [representationsCopy objectForKeyedSubscript:@"category-title"];
  [v4 setLocalizedTitle:v5];

  v6 = [representationsCopy objectForKeyedSubscript:@"leaderboard-size"];
  [v4 setMaxRank:{objc_msgSend(v6, "unsignedIntegerValue")}];

  v7 = [representationsCopy objectForKeyedSubscript:@"global-alltime-info"];
  if (!v7)
  {
    v7 = representationsCopy;
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

- (id)scoreForServerRepresentation:(id)representation leaderboard:(id)leaderboard
{
  representationCopy = representation;
  leaderboardCopy = leaderboard;
  v7 = +[GKScoreInternal internalRepresentation];
  identifier = [leaderboardCopy identifier];
  [v7 setLeaderboardIdentifier:identifier];

  groupIdentifier = [leaderboardCopy groupIdentifier];

  [v7 setGroupLeaderboardIdentifier:groupIdentifier];
  v10 = [representationCopy objectForKeyedSubscript:@"player-id"];
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
  v12 = [representationCopy objectForKeyedSubscript:@"rank"];
  [v7 setRank:{objc_msgSend(v12, "integerValue")}];

  v13 = [representationCopy objectForKeyedSubscript:@"timestamp"];
  v14 = [NSDate _gkDateFromServerTimestamp:v13];
  [v7 setDate:v14];

  v15 = [representationCopy objectForKeyedSubscript:@"score-value"];
  [v7 setValue:{objc_msgSend(v15, "unsignedLongLongValue")}];

  v16 = [representationCopy objectForKeyedSubscript:@"formatted-score-value"];
  [v7 setFormattedValue:v16];

  v17 = [representationCopy objectForKeyedSubscript:@"context"];
  [v7 setContext:{objc_msgSend(v17, "unsignedLongLongValue")}];

  return v7;
}

- (void)updatePlayersForLeaderboard:(id)leaderboard service:(id)service handler:(id)handler
{
  leaderboardCopy = leaderboard;
  handlerCopy = handler;
  serviceCopy = service;
  scores = [leaderboardCopy scores];
  v11 = [NSMutableArray arrayWithArray:scores];

  playerScore = [leaderboardCopy playerScore];

  if (playerScore)
  {
    playerScore2 = [leaderboardCopy playerScore];
    [v11 addObject:playerScore2];
  }

  v14 = [v11 _gkValuesForKeyPath:@"player.playerID"];
  v15 = +[GKAnonymousPlayerInternal internalRepresentation];
  v16 = [(GKService *)GKProfileService serviceFromService:serviceCopy];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000F49A4;
  v20[3] = &unk_100361A58;
  v21 = v11;
  v22 = v15;
  v23 = handlerCopy;
  v17 = handlerCopy;
  v18 = v15;
  v19 = v11;
  [v16 getProfilesForPlayerIDs:v14 handler:v20];
}

- (void)generateScoresFromServerResponse:(id)response service:(id)service context:(id)context timeToLive:(double)live handler:(id)handler
{
  live = [NSString stringWithFormat:@"The concrete subclass must override [GKLeaderboardScoreRequest generateScoresFromServerResponse:service:context:timeToLive:handler:]", service, context, handler, live];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKLeaderboardScoreRequest+GKGameStatService.m"];
  lastPathComponent = [v8 lastPathComponent];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", live, "-[GKLeaderboardScoreRequest(GKGameStatService) generateScoresFromServerResponse:service:context:timeToLive:handler:]", [lastPathComponent UTF8String], 146);

  [NSException raise:@"GameKit Exception" format:@"%@", v10];
}

- (void)loadScoresWithService:(id)service context:(id)context handler:(id)handler
{
  handler = [NSString stringWithFormat:@"The concrete subclass must override [GKLeaderboardScoreRequest loadScoresForClient:context:handler:]", context, handler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKLeaderboardScoreRequest+GKGameStatService.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", handler, "-[GKLeaderboardScoreRequest(GKGameStatService) loadScoresWithService:context:handler:]", [lastPathComponent UTF8String], 153);

  [NSException raise:@"GameKit Exception" format:@"%@", v8];
}

@end
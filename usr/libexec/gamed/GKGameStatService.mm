@interface GKGameStatService
+ (id)_alternativeIdentifierForLeaderboardID:(id)d;
+ (id)friendsRequiringHydration:(id)hydration;
+ (id)getFriendsWhoHaveTheseAchievementsPredicate:(id)predicate playerID:(id)d gameBundleID:(id)iD;
+ (id)leaderboards:(id)leaderboards filteredWithIDs:(id)ds;
- (id)getFriendsWhoHaveTheseAchievements:(id)achievements playerID:(id)d gameBundleID:(id)iD context:(id)context;
- (id)playerScopeName:(int64_t)name;
- (id)releaseStateHeaderValueForBundleID:(id)d;
- (id)timeScopeName:(int64_t)name;
- (id)updateAndFilterHiddenLeaderboards:(id)leaderboards bundleID:(id)d requestedLeaderboardIDs:(id)ds;
- (void)_getRecentMatchesForGameDescriptor:(id)descriptor type:(int)type reference:(id)reference handler:(id)handler;
- (void)achievementsForPlayersAndGameDescriptor:(id)descriptor players:(id)players context:(id)context handler:(id)handler;
- (void)cleanUpLeaderboardTitles:(id)titles set:(id)set context:(id)context;
- (void)createLeaderboardBasedOnID:(id)d recipients:(id)recipients inviteMessage:(id)message context:(id)context duration:(double)duration handler:(id)handler;
- (void)deleteLeaderboardWithID:(id)d handler:(id)handler;
- (void)endLeaderboardWithID:(id)d handler:(id)handler;
- (void)fetchAchievementDescriptionsForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler;
- (void)fetchAchievementsForGameDescriptor:(id)descriptor players:(id)players context:(id)context handler:(id)handler;
- (void)fetchLeaderboardWithRecordID:(id)d context:(id)context handler:(id)handler;
- (void)fetchLeaderboardsForGameDescriptor:(id)descriptor player:(id)player setIdentifier:(id)identifier context:(id)context handler:(id)handler;
- (void)fetchRecentGamesBetweenPlayer:(id)player otherPlayer:(id)otherPlayer context:(id)context handler:(id)handler;
- (void)fetchRecentPlayersWithPlayer:(id)player game:(id)game context:(id)context handler:(id)handler;
- (void)generateEntriesFromServerResponse:(id)response context:(id)context leaderboard:(id)leaderboard handler:(id)handler;
- (void)getAchievementDescriptionsForGameDescriptor:(id)descriptor handler:(id)handler;
- (void)getAchievementsForGameDescriptor:(id)descriptor players:(id)players handler:(id)handler;
- (void)getDefaultLeaderboardIDWithHandler:(id)handler;
- (void)getEntriesForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor localPlayer:(id)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(id)players locale:(id)self0 handler:(id)self1;
- (void)getFakeLeaderboardSummaryWithGameDescriptor:(GKGameDescriptor *)descriptor localPlayer:(GKPlayerInternal *)player baseLeaderboardID:(NSString *)d leaderboardID:(NSString *)iD timeScope:(int64_t)scope completionHandler:(id)handler;
- (void)getFakeLeaderboardsWithGameDescriptor:(GKGameDescriptor *)descriptor player:(GKPlayerInternal *)player setIdentifier:(NSString *)identifier leaderboardIDs:(NSArray *)ds completionHandler:(id)handler;
- (void)getLeaderboardForRequest:(id)request handler:(id)handler;
- (void)getLeaderboardSetsForGameDescriptor:(id)descriptor handler:(id)handler;
- (void)getLeaderboardSummaryForGameDescriptor:(id)descriptor localPlayer:(id)player baseLeaderboardID:(id)d leaderboardID:(id)iD timeScope:(int64_t)scope handler:(id)handler;
- (void)getLeaderboardsForGameDescriptor:(id)descriptor player:(id)player leaderboardIDs:(id)ds setIdentifier:(id)identifier handler:(id)handler;
- (void)getLeaderboardsForGameDescriptor:(id)descriptor player:(id)player setIdentifier:(id)identifier handler:(id)handler;
- (void)getPreviousInstanceForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor player:(id)player handler:(id)handler;
- (void)getRecentGamesWithPlayer:(id)player handler:(id)handler;
- (void)getRecentMatchesForGameDescriptor:(id)descriptor otherPlayer:(id)player handler:(id)handler;
- (void)getRecentPlayersForGameDescriptor:(id)descriptor handler:(id)handler;
- (void)getRecentPlayersWithHandler:(id)handler;
- (void)loadAchievementDescriptionsForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler;
- (void)loadAchievementsForGameDescriptor:(id)descriptor players:(id)players context:(id)context handler:(id)handler;
- (void)loadEntriesForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor localPlayer:(id)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(id)players context:(id)self0 locale:(id)self1 handler:(id)self2;
- (void)loadFakeLeaderboardEntriesWithLeaderboard:(GKLeaderboardInternal *)leaderboard game:(GKGameDescriptor *)game localPlayer:(GKPlayerInternal *)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(NSArray *)players locale:(NSLocale *)self0 completionHandler:(id)aBlock;
- (void)loadLeaderboardsForGameDescriptor:(id)descriptor player:(id)player setIdentifier:(id)identifier context:(id)context bagKey:(id)key handler:(id)handler;
- (void)loadPreviousInstanceForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor player:(id)player playerPlayedIn:(BOOL)in context:(id)context handler:(id)handler;
- (void)loadRecentGamesBetweenPlayer:(id)player otherPlayer:(id)otherPlayer context:(id)context handler:(id)handler;
- (void)loadRecentPlayersWithPlayer:(id)player game:(id)game context:(id)context handler:(id)handler;
- (void)primeCacheWithAchievementDescriptions:(id)descriptions context:(id)context gameDescriptor:(id)descriptor players:(id)players missingPlayers:(id)missingPlayers;
- (void)resetAchievementsWithHandler:(id)handler;
- (void)setDefaultLeaderboardID:(id)d handler:(id)handler;
- (void)startLeaderboardWithID:(id)d handler:(id)handler;
- (void)submitAchievements:(id)achievements whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges handler:(id)handler;
- (void)submitFakeScoresWithScore:(int64_t)score context:(int64_t)context leaderboardIDs:(NSArray *)ds player:(GKPlayerInternal *)player screenChallenges:(BOOL)challenges eligibleChallenges:(NSArray *)eligibleChallenges game:(GKGameDescriptor *)game completionHandler:(id)self0;
- (void)submitFakeScoresWithScores:(NSArray *)scores bundleID:(NSString *)d screenChallenges:(BOOL)challenges eligibleChallenges:(NSArray *)eligibleChallenges completionHandler:(id)handler;
- (void)submitInstanceScore:(int64_t)score context:(unint64_t)context leaderboard:(id)leaderboard forPlayer:(id)player whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges handler:(id)handler;
- (void)submitScore:(int64_t)score context:(unint64_t)context leaderboardIDs:(id)ds forPlayer:(id)player whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges gameDescriptor:(id)descriptor handler:(id)self0;
- (void)submitScores:(id)scores whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges handler:(id)handler;
- (void)updateLeaderboardsWithIDs:(id)ds gameDescriptor:(id)descriptor player:(id)player context:(id)context handler:(id)handler;
- (void)updatePlayersForEntries:(id)entries localPlayerEntry:(id)entry handler:(id)handler;
@end

@implementation GKGameStatService

- (void)_getRecentMatchesForGameDescriptor:(id)descriptor type:(int)type reference:(id)reference handler:(id)handler
{
  v7 = *&type;
  referenceCopy = reference;
  handlerCopy = handler;
  dictionaryForRequest = [descriptor dictionaryForRequest];
  if (!dictionaryForRequest)
  {
    clientProxy = [(GKService *)self clientProxy];
    dictionaryForRequest = [clientProxy gameDescriptor];
  }

  v14 = [dictionaryForRequest objectForKeyedSubscript:@"bundle-id"];
  v31 = v14;
  if (v7 == 3)
  {
    v15 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND type = %d AND reference = %@", v14, 3, referenceCopy, v14];
    v46[0] = @"game";
    v46[1] = @"match-type";
    v47[0] = dictionaryForRequest;
    v47[1] = @"achievement-compatible";
    v46[2] = @"achievement-id";
    v47[2] = referenceCopy;
    v16 = v47;
    v17 = v46;
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        v15 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND type = %d", v14, 1];
        v50[0] = @"game";
        v50[1] = @"match-type";
        v51[0] = dictionaryForRequest;
        v51[1] = @"multiplayer-compatible";
        v16 = v51;
        v17 = v50;
      }

      else
      {
        v15 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND type = %d", v14, v7];
        v44[0] = @"game";
        v44[1] = @"match-type";
        v45[0] = dictionaryForRequest;
        v45[1] = @"exact-match";
        v16 = v45;
        v17 = v44;
      }

      v18 = 2;
      goto LABEL_12;
    }

    v15 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND type = %d AND reference = %@", v14, 2, referenceCopy, v14];
    v48[0] = @"game";
    v48[1] = @"match-type";
    v49[0] = dictionaryForRequest;
    v49[1] = @"leaderboard-compatible";
    v48[2] = @"leaderboard-id";
    v49[2] = referenceCopy;
    v16 = v49;
    v17 = v48;
  }

  v18 = 3;
LABEL_12:
  v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:v18];
  v20 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 119, "[GKGameStatService _getRecentMatchesForGameDescriptor:type:reference:handler:]"];
  v21 = [(GKService *)self transactionGroupWithName:v20];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000A72FC;
  v36[3] = &unk_100364428;
  v24 = v21;
  v37 = v24;
  v25 = v15;
  v38 = v25;
  v26 = v19;
  v39 = v26;
  selfCopy = self;
  v43 = v7;
  v27 = referenceCopy;
  v41 = v27;
  v28 = dictionaryForRequest;
  v42 = v28;
  [v24 performOnQueue:replyQueue block:v36];

  if (handlerCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy3 replyQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000A7D48;
    v32[3] = &unk_100360FC8;
    v33 = v24;
    selfCopy2 = self;
    v35 = handlerCopy;
    [v33 notifyOnQueue:replyQueue2 block:v32];
  }
}

- (void)fetchRecentPlayersWithPlayer:(id)player game:(id)game context:(id)context handler:(id)handler
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A8118;
  v14[3] = &unk_100360F28;
  playerCopy = player;
  gameCopy = game;
  contextCopy = context;
  selfCopy = self;
  handlerCopy = handler;
  v10 = handlerCopy;
  v11 = contextCopy;
  v12 = gameCopy;
  v13 = playerCopy;
  [v11 performBlock:v14];
}

- (void)fetchRecentGamesBetweenPlayer:(id)player otherPlayer:(id)otherPlayer context:(id)context handler:(id)handler
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A83EC;
  v14[3] = &unk_100360F28;
  playerCopy = player;
  otherPlayerCopy = otherPlayer;
  contextCopy = context;
  selfCopy = self;
  handlerCopy = handler;
  v10 = handlerCopy;
  v11 = contextCopy;
  v12 = otherPlayerCopy;
  v13 = playerCopy;
  [v11 performBlock:v14];
}

- (void)loadRecentPlayersWithPlayer:(id)player game:(id)game context:(id)context handler:(id)handler
{
  playerCopy = player;
  gameCopy = game;
  contextCopy = context;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 299, "[GKGameStatService loadRecentPlayersWithPlayer:game:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:contextCopy client:clientProxy];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v17 = +[GKPreferences shared];
  maxRecentPlayersCount = [v17 maxRecentPlayersCount];
  [v17 maxRecentPlayersTime];
  [NSDate dateWithTimeIntervalSinceNow:-v19];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000A8884;
  v32[3] = &unk_1003644F0;
  v20 = v39 = maxRecentPlayersCount;
  v33 = v20;
  v21 = gameCopy;
  v34 = v21;
  selfCopy = self;
  v38 = v40;
  v22 = v16;
  v36 = v22;
  v23 = playerCopy;
  v37 = v23;
  [v22 performOnManagedObjectContext:v32];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000A951C;
  v28[3] = &unk_1003618D8;
  v26 = handlerCopy;
  v30 = v26;
  v31 = v40;
  v27 = v22;
  v29 = v27;
  [v27 notifyOnQueue:replyQueue block:v28];

  _Block_object_dispose(v40, 8);
}

- (void)loadRecentGamesBetweenPlayer:(id)player otherPlayer:(id)otherPlayer context:(id)context handler:(id)handler
{
  playerCopy = player;
  otherPlayerCopy = otherPlayer;
  contextCopy = context;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 381, "[GKGameStatService loadRecentGamesBetweenPlayer:otherPlayer:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:contextCopy client:clientProxy];

  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v17 = +[GKPreferences shared];
  maxRecentPlayersCount = [v17 maxRecentPlayersCount];
  [v17 maxRecentPlayersTime];
  v20 = [NSDate dateWithTimeIntervalSinceNow:-v19];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000A98FC;
  v45[3] = &unk_100364518;
  v21 = v16;
  v46 = v21;
  v49 = maxRecentPlayersCount;
  v22 = v20;
  v47 = v22;
  v23 = otherPlayerCopy;
  v48 = v23;
  [contextCopy performBlockAndWait:v45];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000A9A0C;
  v37[3] = &unk_100364540;
  v24 = v21;
  v38 = v24;
  selfCopy = self;
  v44 = v50;
  v25 = contextCopy;
  v40 = v25;
  v26 = playerCopy;
  v41 = v26;
  v27 = v23;
  v42 = v27;
  v28 = v22;
  v43 = v28;
  [v24 perform:v37];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000AA594;
  v33[3] = &unk_1003618D8;
  v31 = handlerCopy;
  v35 = v31;
  v36 = v50;
  v32 = v24;
  v34 = v32;
  [v32 notifyOnQueue:replyQueue block:v33];

  _Block_object_dispose(v50, 8);
}

- (void)getRecentPlayersForGameDescriptor:(id)descriptor handler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 462, "[GKGameStatService getRecentPlayersForGameDescriptor:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AA7F0;
  v19[3] = &unk_100360F00;
  v12 = v9;
  v20 = v12;
  v13 = descriptorCopy;
  v21 = v13;
  selfCopy = self;
  [v12 performOnQueue:replyQueue block:v19];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AB0A4;
    v16[3] = &unk_100360EB0;
    v18 = handlerCopy;
    v17 = v12;
    [v17 notifyOnQueue:replyQueue2 block:v16];
  }
}

- (void)getRecentGamesWithPlayer:(id)player handler:(id)handler
{
  handlerCopy = handler;
  v6 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 518, "[GKGameStatService getRecentGamesWithPlayer:handler:]"];
  v7 = [(GKService *)self transactionGroupWithName:v6];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AB304;
  v16[3] = &unk_100360FF0;
  v10 = v7;
  v17 = v10;
  selfCopy = self;
  [v10 performOnQueue:replyQueue block:v16];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000ABB68;
    v13[3] = &unk_100360EB0;
    v15 = handlerCopy;
    v14 = v10;
    [v14 notifyOnQueue:replyQueue2 block:v13];
  }
}

- (void)getRecentMatchesForGameDescriptor:(id)descriptor otherPlayer:(id)player handler:(id)handler
{
  if (player)
  {
    [(GKGameStatService *)self getRecentGamesWithPlayer:player handler:handler];
  }

  else
  {
    [(GKGameStatService *)self getRecentPlayersForGameDescriptor:descriptor handler:handler];
  }
}

- (void)getRecentPlayersWithHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000ABCC0;
  v5[3] = &unk_1003645E0;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(GKGameStatService *)self getRecentPlayersForGameDescriptor:0 handler:v5];
}

- (void)fetchAchievementDescriptionsForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000ABDB0;
  v10[3] = &unk_100360FC8;
  descriptorCopy = descriptor;
  contextCopy = context;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = contextCopy;
  v9 = descriptorCopy;
  [v8 performBlock:v10];
}

- (id)releaseStateHeaderValueForBundleID:(id)d
{
  v3 = @"live";
  if (d)
  {
    dCopy = d;
    v5 = +[GKDataRequestManager sharedManager];
    v6 = [v5 isDevSignedForBundleID:dCopy];

    v7 = @"prerelease";
    if (!v6)
    {
      v7 = @"live";
    }

    v3 = v7;
  }

  return v3;
}

- (void)loadAchievementDescriptionsForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler
{
  descriptorCopy = descriptor;
  contextCopy = context;
  handlerCopy = handler;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_1000AC1C8;
  v32[4] = sub_1000AC1D8;
  v33 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 624, "[GKGameStatService loadAchievementDescriptionsForGameDescriptor:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v11 context:contextCopy client:clientProxy];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000AC1E0;
  v24[3] = &unk_100364680;
  v14 = descriptorCopy;
  v25 = v14;
  v15 = handlerCopy;
  v28 = v15;
  v29 = v31;
  selfCopy = self;
  v30 = v32;
  v16 = v13;
  v27 = v16;
  [v16 performOnManagedObjectContext:v24];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000ACB38;
  v20[3] = &unk_1003646A8;
  v19 = v16;
  v21 = v19;
  v22 = v32;
  v23 = v31;
  [v19 notifyOnQueue:replyQueue block:v20];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
}

+ (id)friendsRequiringHydration:(id)hydration
{
  hydrationCopy = hydration;
  v4 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = hydrationCopy;
  obj = [hydrationCopy objectForKeyedSubscript:@"results"];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v9 objectForKeyedSubscript:@"friends-with-achievement"];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v20 + 1) + 8 * j) objectForKeyedSubscript:@"friend-player-id"];
              [v4 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];

  return v16;
}

+ (id)getFriendsWhoHaveTheseAchievementsPredicate:(id)predicate playerID:(id)d gameBundleID:(id)iD
{
  dCopy = d;
  predicateCopy = predicate;
  v9 = [NSPredicate predicateWithFormat:@"game.bundleID == %@", iD];
  predicateCopy = [NSPredicate predicateWithFormat:@"achievementDescription.identifier IN %@", predicateCopy];
  predicateCopy2 = [NSPredicate predicateWithFormat:@"achievementDescription.groupIdentifier IN %@", predicateCopy];

  v19[0] = predicateCopy;
  v19[1] = predicateCopy2;
  v12 = [NSArray arrayWithObjects:v19 count:2];
  v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v12];

  dCopy = [NSPredicate predicateWithFormat:@"player.playerID == %@", dCopy];

  v18[0] = dCopy;
  v18[1] = v9;
  v18[2] = v13;
  v15 = [NSArray arrayWithObjects:v18 count:3];
  v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];

  return v16;
}

- (id)getFriendsWhoHaveTheseAchievements:(id)achievements playerID:(id)d gameBundleID:(id)iD context:(id)context
{
  achievementsCopy = achievements;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  if ([achievementsCopy count])
  {
    v13 = os_signpost_id_generate(os_log_GKPerf);
    v14 = os_log_GKPerf;
    v15 = v14;
    v52 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FriendsWhoHaveThisQuery", "", buf, 2u);
    }

    v56 = iDCopy;
    v16 = [GKGameStatService getFriendsWhoHaveTheseAchievementsPredicate:achievementsCopy playerID:dCopy gameBundleID:iDCopy];
    v17 = [(GKCacheObject *)GKAchievementThatAFriendHasListCacheObject fetchRequestForContext:contextCopy];
    v54 = v16;
    [v17 setPredicate:v16];
    v74 = 0;
    v53 = v17;
    v18 = [contextCopy executeFetchRequest:v17 error:&v74];
    v19 = v74;
    if (v19)
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028B9F8();
      }
    }

    v51 = v19;
    spid = v13;
    v55 = contextCopy;
    v57 = dCopy;
    v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v18 count]);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v22 = v18;
    v23 = [v22 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v71;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v71 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v70 + 1) + 8 * i);
          achievementDescription = [v27 achievementDescription];
          identifier = [achievementDescription identifier];

          achievementDescription2 = [v27 achievementDescription];
          groupIdentifier = [achievementDescription2 groupIdentifier];

          if ([identifier length])
          {
            [v21 setObject:v27 forKeyedSubscript:identifier];
          }

          if ([groupIdentifier length])
          {
            [v21 setObject:v27 forKeyedSubscript:groupIdentifier];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v24);
    }

    v50 = v22;

    v61 = objc_alloc_init(NSMutableArray);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v58 = achievementsCopy;
    obj = achievementsCopy;
    v32 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v32)
    {
      v33 = v32;
      v60 = *v67;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v67 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v35 = [v21 objectForKeyedSubscript:*(*(&v66 + 1) + 8 * j)];
          entries = [v35 entries];
          v37 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [entries count]);

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          entries2 = [v35 entries];
          v39 = [entries2 countByEnumeratingWithState:&v62 objects:v76 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v63;
            do
            {
              for (k = 0; k != v40; k = k + 1)
              {
                if (*v63 != v41)
                {
                  objc_enumerationMutation(entries2);
                }

                internalRepresentation = [*(*(&v62 + 1) + 8 * k) internalRepresentation];
                [v37 addObject:internalRepresentation];
              }

              v40 = [entries2 countByEnumeratingWithState:&v62 objects:v76 count:16];
            }

            while (v40);
          }

          v44 = [v37 copy];
          [v61 addObject:v44];
        }

        v33 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v33);
    }

    v45 = os_log_GKPerf;
    v46 = v45;
    dCopy = v57;
    if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, spid, "FriendsWhoHaveThisQuery", "", buf, 2u);
    }

    v47 = [v61 copy];
    achievementsCopy = v58;
    contextCopy = v55;
    iDCopy = v56;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (void)getAchievementDescriptionsForGameDescriptor:(id)descriptor handler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 823, "[GKGameStatService getAchievementDescriptionsForGameDescriptor:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];

  dictionaryForRequest = [descriptorCopy dictionaryForRequest];
  if (!dictionaryForRequest)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    dictionaryForRequest = [clientProxy2 gameDescriptor];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AD888;
  v21[3] = &unk_1003638A0;
  v21[4] = self;
  v14 = dictionaryForRequest;
  v22 = v14;
  v15 = descriptorCopy;
  v23 = v15;
  v16 = v9;
  v24 = v16;
  v17 = replyQueue;
  v25 = v17;
  [v16 performOnManagedObjectContext:v21];
  if (handlerCopy)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AE248;
    v18[3] = &unk_100360EB0;
    v20 = handlerCopy;
    v19 = v16;
    [v19 notifyOnQueue:v17 block:v18];
  }
}

- (void)fetchAchievementsForGameDescriptor:(id)descriptor players:(id)players context:(id)context handler:(id)handler
{
  descriptorCopy = descriptor;
  playersCopy = players;
  contextCopy = context;
  handlerCopy = handler;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 1;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 903, "[GKGameStatService fetchAchievementsForGameDescriptor:players:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:contextCopy client:clientProxy];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000AE538;
  v28[3] = &unk_100363D08;
  v28[4] = self;
  v17 = descriptorCopy;
  v29 = v17;
  v18 = playersCopy;
  v30 = v18;
  v19 = v16;
  v31 = v19;
  v32 = v33;
  [v19 performOnManagedObjectContext:v28];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000AEC14;
  v24[3] = &unk_100361A30;
  v22 = handlerCopy;
  v26 = v22;
  v23 = v19;
  v25 = v23;
  v27 = v33;
  [v23 notifyOnQueue:replyQueue block:v24];

  _Block_object_dispose(v33, 8);
}

- (void)achievementsForPlayersAndGameDescriptor:(id)descriptor players:(id)players context:(id)context handler:(id)handler
{
  descriptorCopy = descriptor;
  playersCopy = players;
  contextCopy = context;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 988, "[GKGameStatService achievementsForPlayersAndGameDescriptor:players:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:contextCopy client:clientProxy];

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000AEF38;
  v27[3] = &unk_100364870;
  v17 = descriptorCopy;
  v28 = v17;
  v18 = handlerCopy;
  v32 = v18;
  v33 = v34;
  v19 = playersCopy;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  selfCopy = self;
  [v20 performOnManagedObjectContext:v27];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000AFB4C;
  v24[3] = &unk_100364898;
  v23 = v20;
  v25 = v23;
  v26 = v34;
  [v23 notifyOnQueue:replyQueue block:v24];

  _Block_object_dispose(v34, 8);
}

- (void)loadAchievementsForGameDescriptor:(id)descriptor players:(id)players context:(id)context handler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  descriptorCopy = descriptor;
  v13 = [players _gkMapWithBlock:&stru_1003648B8];
  [(GKGameStatService *)self achievementsForPlayersAndGameDescriptor:descriptorCopy players:v13 context:contextCopy handler:handlerCopy];
}

- (void)primeCacheWithAchievementDescriptions:(id)descriptions context:(id)context gameDescriptor:(id)descriptor players:(id)players missingPlayers:(id)missingPlayers
{
  descriptionsCopy = descriptions;
  contextCopy = context;
  descriptorCopy = descriptor;
  playersCopy = players;
  missingPlayersCopy = missingPlayers;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1110, "[GKGameStatService primeCacheWithAchievementDescriptions:context:gameDescriptor:players:missingPlayers:]"];
  v18 = [descriptionsCopy transactionGroupWithName:v17];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000AFFFC;
  v37[3] = &unk_100361BF8;
  v37[4] = self;
  v19 = descriptorCopy;
  v38 = v19;
  v39 = missingPlayersCopy;
  v20 = contextCopy;
  v40 = v20;
  v21 = v18;
  v41 = v21;
  v22 = missingPlayersCopy;
  [v21 perform:v37];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000B0110;
  v30[3] = &unk_100361F40;
  v31 = descriptionsCopy;
  v32 = v21;
  selfCopy = self;
  v34 = v19;
  v35 = playersCopy;
  v36 = v20;
  v25 = v20;
  v26 = playersCopy;
  v27 = v19;
  v28 = v21;
  v29 = descriptionsCopy;
  [v29 join:v28 queue:replyQueue block:v30];
}

- (void)getAchievementsForGameDescriptor:(id)descriptor players:(id)players handler:(id)handler
{
  descriptorCopy = descriptor;
  playersCopy = players;
  handlerCopy = handler;
  if (!descriptorCopy)
  {
    v11 = [GKGameDescriptor alloc];
    clientProxy = [(GKService *)self clientProxy];
    gameDescriptor = [clientProxy gameDescriptor];
    descriptorCopy = [v11 initWithDictionary:gameDescriptor];
  }

  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1147, "[GKGameStatService getAchievementsForGameDescriptor:players:handler:]"];
  v15 = [(GKService *)self transactionGroupBypassingMultiUserWithName:v14];

  bundleIdentifier = [descriptorCopy bundleIdentifier];
  dictionaryForRequest = [descriptorCopy dictionaryForRequest];
  if (dictionaryForRequest)
  {
    if (bundleIdentifier)
    {
LABEL_5:
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000B0694;
      v27[3] = &unk_100363068;
      v27[4] = self;
      v28 = descriptorCopy;
      v29 = playersCopy;
      v18 = v15;
      v30 = v18;
      v31 = dictionaryForRequest;
      v32 = bundleIdentifier;
      [v18 performOnManagedObjectContext:v27];
      if (handlerCopy)
      {
        clientProxy2 = [(GKService *)self clientProxy];
        replyQueue = [clientProxy2 replyQueue];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000B0AD8;
        v24[3] = &unk_100360EB0;
        v26 = handlerCopy;
        v25 = v18;
        [v25 notifyOnQueue:replyQueue block:v24];
      }

      goto LABEL_14;
    }
  }

  else
  {
    clientProxy3 = [(GKService *)self clientProxy];
    dictionaryForRequest = [clientProxy3 gameDescriptor];

    if (bundleIdentifier)
    {
      goto LABEL_5;
    }
  }

  if (!os_log_GKGeneral)
  {
    v22 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10028BAA8();
  }

  v23 = [NSError userErrorForCode:17 underlyingError:0];
  [v15 setError:v23];

LABEL_14:
}

- (void)submitAchievements:(id)achievements whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges handler:(id)handler
{
  achievementsCopy = achievements;
  eligibleChallengesCopy = eligibleChallenges;
  handlerCopy = handler;
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1214, "[GKGameStatService submitAchievements:whileScreeningChallenges:withEligibleChallenges:handler:]"];
  v13 = [(GKService *)self transactionGroupWithName:v12];

  v14 = +[NSDate date];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000B0DE4;
  v27[3] = &unk_1003646F8;
  v17 = v13;
  v28 = v17;
  selfCopy = self;
  v18 = achievementsCopy;
  v30 = v18;
  v32 = v33;
  v19 = v14;
  v31 = v19;
  [v17 performOnQueue:replyQueue block:v27];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B16A8;
    v22[3] = &unk_1003649C0;
    v26 = v33;
    v22[4] = self;
    v25 = handlerCopy;
    v23 = v17;
    v24 = v18;
    [v23 notifyOnQueue:replyQueue2 block:v22];
  }

  _Block_object_dispose(v33, 8);
}

- (void)resetAchievementsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1306, "[GKGameStatService resetAchievementsWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B19D4;
  v15[3] = &unk_100360FF0;
  v9 = v6;
  v16 = v9;
  selfCopy = self;
  [v9 performOnQueue:replyQueue block:v15];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B1F30;
    v12[3] = &unk_100360EB0;
    v14 = handlerCopy;
    v13 = v9;
    [v13 notifyOnQueue:replyQueue2 block:v12];
  }
}

- (void)getLeaderboardForRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  gameBundleID = [requestCopy gameBundleID];

  if (!gameBundleID)
  {
    clientProxy = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy bundleIdentifier];
    [requestCopy setGameBundleID:bundleIdentifier];
  }

  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1374, "[GKGameStatService getLeaderboardForRequest:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B21BC;
  v22[3] = &unk_100360F00;
  v15 = v12;
  v23 = v15;
  selfCopy = self;
  v16 = requestCopy;
  v25 = v16;
  [v15 performOnQueue:replyQueue block:v22];

  if (handlerCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy3 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B24F4;
    v19[3] = &unk_100360EB0;
    v21 = handlerCopy;
    v20 = v15;
    [v20 notifyOnQueue:replyQueue2 block:v19];
  }
}

- (void)submitScores:(id)scores whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges handler:(id)handler
{
  scoresCopy = scores;
  eligibleChallengesCopy = eligibleChallenges;
  handlerCopy = handler;
  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1406, "[GKGameStatService submitScores:whileScreeningChallenges:withEligibleChallenges:handler:]"];
  v14 = [(GKService *)self transactionGroupWithName:v13];

  v15 = +[NSDate date];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = scoresCopy;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      v20 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v36 + 1) + 8 * v20) setDate:v15];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v18);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000B2850;
  v30[3] = &unk_100364A60;
  v30[4] = self;
  v21 = v16;
  v31 = v21;
  challengesCopy = challenges;
  v22 = eligibleChallengesCopy;
  v32 = v22;
  v23 = v14;
  v33 = v23;
  v24 = handlerCopy;
  v34 = v24;
  [v23 perform:v30];
  if (v24)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B2D34;
    v27[3] = &unk_100360EB0;
    v29 = v24;
    v28 = v23;
    [v28 notifyOnQueue:replyQueue block:v27];
  }
}

- (void)cleanUpLeaderboardTitles:(id)titles set:(id)set context:(id)context
{
  titlesCopy = titles;
  setCopy = set;
  contextCopy = context;
  v10 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameStatService cleanUpLeaderboardTitles:set:context:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKGameStatService cleanUpLeaderboardTitles:set:context:]", [lastPathComponent UTF8String], 1461);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v16 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [titlesCopy count]);
  leaderboardTitleMapList = [setCopy leaderboardTitleMapList];
  entries = [leaderboardTitleMapList entries];
  v19 = [entries _gkMapDictionaryWithKeyPath:@"identifier"];
  [v16 addEntriesFromDictionary:v19];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = titlesCopy;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * i);
        baseLeaderboardID = [v25 baseLeaderboardID];
        v27 = [v16 objectForKey:baseLeaderboardID];

        localizedTitle = [v27 localizedTitle];
        [v25 setLocalizedTitle:localizedTitle];
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)fetchLeaderboardsForGameDescriptor:(id)descriptor player:(id)player setIdentifier:(id)identifier context:(id)context handler:(id)handler
{
  descriptorCopy = descriptor;
  playerCopy = player;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B3184;
  v19[3] = &unk_100364590;
  identifierCopy = identifier;
  v21 = descriptorCopy;
  v22 = playerCopy;
  contextCopy = context;
  selfCopy = self;
  handlerCopy = handler;
  v14 = handlerCopy;
  v15 = contextCopy;
  v16 = playerCopy;
  v17 = descriptorCopy;
  v18 = identifierCopy;
  [v15 performBlock:v19];
}

- (void)loadLeaderboardsForGameDescriptor:(id)descriptor player:(id)player setIdentifier:(id)identifier context:(id)context bagKey:(id)key handler:(id)handler
{
  descriptorCopy = descriptor;
  playerCopy = player;
  identifierCopy = identifier;
  contextCopy = context;
  keyCopy = key;
  handlerCopy = handler;
  playerID = [playerCopy playerID];

  if (!playerID)
  {
    v18 = [NSString stringWithFormat:@"Assertion failed"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    lastPathComponent = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (player.playerID != ((void *)0))\n[%s (%s:%d)]", v18, "-[GKGameStatService loadLeaderboardsForGameDescriptor:player:setIdentifier:context:bagKey:handler:]", [lastPathComponent UTF8String], 1520);

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
  }

  v22 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1522, "[GKGameStatService loadLeaderboardsForGameDescriptor:player:setIdentifier:context:bagKey:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v24 = [GKCacheTransactionGroup transactionGroupWithName:v22 context:contextCopy client:clientProxy];

  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000B3700;
  v42[3] = &unk_100364AD8;
  v27 = descriptorCopy;
  v43 = v27;
  v28 = playerCopy;
  v44 = v28;
  v29 = identifierCopy;
  v45 = v29;
  v30 = keyCopy;
  v46 = v30;
  selfCopy = self;
  v50 = v51;
  v31 = v24;
  v48 = v31;
  v32 = contextCopy;
  v49 = v32;
  [v31 performOnQueue:replyQueue block:v42];

  if (handlerCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy3 replyQueue];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000B3F08;
    v38[3] = &unk_1003618D8;
    v40 = handlerCopy;
    v41 = v51;
    v39 = v31;
    [v39 notifyOnQueue:replyQueue2 block:v38];
  }

  _Block_object_dispose(v51, 8);
}

- (void)getLeaderboardsForGameDescriptor:(id)descriptor player:(id)player setIdentifier:(id)identifier handler:(id)handler
{
  descriptorCopy = descriptor;
  playerCopy = player;
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1615, "[GKGameStatService getLeaderboardsForGameDescriptor:player:setIdentifier:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];

  if (descriptorCopy)
  {
    if (playerCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = [GKGameDescriptor alloc];
    clientProxy2 = [(GKService *)self clientProxy];
    gameDescriptor = [clientProxy2 gameDescriptor];
    v21 = [v18 initWithDictionary:gameDescriptor];

    descriptorCopy = v21;
    if (playerCopy)
    {
      goto LABEL_6;
    }
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1000AC1C8;
  v59 = sub_1000AC1D8;
  v60 = 0;
  context = [v15 context];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000B44B4;
  v52[3] = &unk_100364898;
  v53 = v15;
  v54 = &v55;
  [context performBlockAndWait:v52];

  playerCopy = v56[5];
  _Block_object_dispose(&v55, 8);

  if (playerCopy)
  {
LABEL_6:
    playerID = [playerCopy playerID];

    if (playerID)
    {
      clientProxy3 = [(GKService *)self clientProxy];
      [clientProxy3 replyQueue];
      v25 = replyQueue;
      v27 = v26 = identifierCopy;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000B462C;
      v41[3] = &unk_100362FC8;
      v28 = &v42;
      playerCopy = playerCopy;
      v42 = playerCopy;
      v36 = descriptorCopy;
      v43 = descriptorCopy;
      v37 = v15;
      v29 = v15;
      v44 = v29;
      selfCopy = self;
      v30 = v26;
      v31 = v26;
      replyQueue = v25;
      v46 = v31;
      v47 = v25;
      [v29 performOnQueue:v27 block:v41];

      if (handlerCopy)
      {
        clientProxy4 = [(GKService *)self clientProxy];
        replyQueue2 = [clientProxy4 replyQueue];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000B5148;
        v38[3] = &unk_100360EB0;
        v40 = handlerCopy;
        v39 = v29;
        [v39 notifyOnQueue:replyQueue2 block:v38];
      }

      identifierCopy = v30;
      descriptorCopy = v36;
      v15 = v37;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v34 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028BB94();
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B45BC;
      block[3] = &unk_100360FA0;
      v28 = &v49;
      v49 = handlerCopy;
      dispatch_async(&_dispatch_main_q, block);
    }

    goto LABEL_20;
  }

  if (!os_log_GKGeneral)
  {
    v35 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10028BC04();
  }

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000B454C;
  v50[3] = &unk_100360FA0;
  v28 = &v51;
  v51 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v50);
  playerCopy = 0;
LABEL_20:
}

- (void)setDefaultLeaderboardID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1715, "[GKGameStatService setDefaultLeaderboardID:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B53AC;
  v19[3] = &unk_100360F00;
  v12 = dCopy;
  v20 = v12;
  selfCopy = self;
  v13 = v9;
  v22 = v13;
  [v13 performOnQueue:replyQueue block:v19];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000B5758;
    v16[3] = &unk_100360EB0;
    v18 = handlerCopy;
    v17 = v13;
    [v17 notifyOnQueue:replyQueue2 block:v16];
  }
}

- (void)getDefaultLeaderboardIDWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(GKService *)GKGameServicePrivate serviceFromService:self];
  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];
  v12 = bundleIdentifier;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B58F4;
  v10[3] = &unk_1003626B0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v5 getGameStatsForPlayer:0 bundleIDs:v8 handler:v10];
}

- (void)getLeaderboardSetsForGameDescriptor:(id)descriptor handler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1764, "[GKGameStatService getLeaderboardSetsForGameDescriptor:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  dictionaryForRequest = [descriptorCopy dictionaryForRequest];
  if (dictionaryForRequest)
  {
    gameDescriptor = dictionaryForRequest;
  }

  else
  {
    clientProxy = [(GKService *)self clientProxy];
    gameDescriptor = [clientProxy gameDescriptor];

    if (!gameDescriptor)
    {
      v19 = [NSError userErrorForCode:17 underlyingError:0];
      [v9 setError:v19];

      v14 = 0;
      goto LABEL_5;
    }
  }

  context = [v9 context];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B5C14;
  v23[3] = &unk_100362008;
  v23[4] = self;
  v24 = descriptorCopy;
  v25 = v9;
  v14 = gameDescriptor;
  v26 = v14;
  [context performBlockAndWait:v23];

LABEL_5:
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B6470;
  v20[3] = &unk_100360EB0;
  v21 = v9;
  v22 = handlerCopy;
  v17 = v9;
  v18 = handlerCopy;
  [v17 notifyOnQueue:replyQueue block:v20];
}

- (void)updateLeaderboardsWithIDs:(id)ds gameDescriptor:(id)descriptor player:(id)player context:(id)context handler:(id)handler
{
  dsCopy = ds;
  descriptorCopy = descriptor;
  playerCopy = player;
  contextCopy = context;
  handlerCopy = handler;
  playerID = [playerCopy playerID];

  if (!playerID)
  {
    v18 = [NSString stringWithFormat:@"Assertion failed"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    [v19 lastPathComponent];
    v20 = handlerCopy;
    v21 = descriptorCopy;
    v23 = v22 = dsCopy;
    v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (player.playerID != ((void *)0))\n[%s (%s:%d)]", v18, "-[GKGameStatService updateLeaderboardsWithIDs:gameDescriptor:player:context:handler:]", [v23 UTF8String], 1853);

    dsCopy = v22;
    descriptorCopy = v21;
    handlerCopy = v20;

    [NSException raise:@"GameKit Exception" format:@"%@", v24];
  }

  v25 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1855, "[GKGameStatService updateLeaderboardsWithIDs:gameDescriptor:player:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v27 = [GKCacheTransactionGroup transactionGroupWithName:v25 context:contextCopy client:clientProxy];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000B6868;
  v40[3] = &unk_100362FC8;
  v30 = descriptorCopy;
  v41 = v30;
  v31 = playerCopy;
  v42 = v31;
  v32 = dsCopy;
  v43 = v32;
  selfCopy = self;
  v33 = v27;
  v45 = v33;
  v34 = contextCopy;
  v46 = v34;
  [v33 performOnQueue:replyQueue block:v40];

  if (handlerCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy3 replyQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B6E5C;
    v37[3] = &unk_100360EB0;
    v39 = handlerCopy;
    v38 = v33;
    [v38 notifyOnQueue:replyQueue2 block:v37];
  }
}

+ (id)_alternativeIdentifierForLeaderboardID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"grp."])
  {
    [dCopy substringFromIndex:4];
  }

  else
  {
    [@"grp." stringByAppendingString:dCopy];
  }
  v4 = ;

  return v4;
}

+ (id)leaderboards:(id)leaderboards filteredWithIDs:(id)ds
{
  leaderboardsCopy = leaderboards;
  dsCopy = ds;
  v8 = dsCopy;
  if (dsCopy && [dsCopy count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B7030;
    v11[3] = &unk_100364C18;
    v12 = v8;
    selfCopy = self;
    v9 = [leaderboardsCopy _gkFilterWithBlock:v11];
  }

  else
  {
    v9 = leaderboardsCopy;
  }

  return v9;
}

- (id)updateAndFilterHiddenLeaderboards:(id)leaderboards bundleID:(id)d requestedLeaderboardIDs:(id)ds
{
  dsCopy = ds;
  dCopy = d;
  leaderboardsCopy = leaderboards;
  v10 = +[GKDataRequestManager sharedManager];
  v11 = [v10 isDevSignedForBundleID:dCopy];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B72BC;
  v22[3] = &unk_100364C38;
  v23 = v11;
  [leaderboardsCopy enumerateObjectsUsingBlock:v22];
  v12 = [NSMutableArray arrayWithArray:leaderboardsCopy];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000B7324;
  v20 = &unk_100364C60;
  v21 = dsCopy;
  v13 = dsCopy;
  v14 = [NSPredicate predicateWithBlock:&v17];
  [v12 filterUsingPredicate:{v14, v17, v18, v19, v20}];
  v15 = [v12 copy];

  return v15;
}

- (void)getLeaderboardsForGameDescriptor:(id)descriptor player:(id)player leaderboardIDs:(id)ds setIdentifier:(id)identifier handler:(id)handler
{
  descriptorCopy = descriptor;
  playerCopy = player;
  dsCopy = ds;
  identifierCopy = identifier;
  handlerCopy = handler;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1983, "[GKGameStatService getLeaderboardsForGameDescriptor:player:leaderboardIDs:setIdentifier:handler:]"];
  v18 = [(GKService *)self transactionGroupWithName:v17];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];

  if (descriptorCopy || (v21 = [GKGameDescriptor alloc], -[GKService clientProxy](self, "clientProxy"), v22 = objc_claimAutoreleasedReturnValue(), [v22 gameDescriptor], v23 = objc_claimAutoreleasedReturnValue(), descriptorCopy = objc_msgSend(v21, "initWithDictionary:", v23), v23, v22, descriptorCopy))
  {
    if (playerCopy)
    {
LABEL_6:
      playerID = [playerCopy playerID];

      if (playerID)
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000B7B64;
        v36[3] = &unk_100364B78;
        v27 = v18;
        v37 = v27;
        selfCopy = self;
        descriptorCopy = descriptorCopy;
        v39 = descriptorCopy;
        playerCopy = playerCopy;
        v40 = playerCopy;
        v41 = identifierCopy;
        v42 = dsCopy;
        v28 = replyQueue;
        v43 = v28;
        [v27 performOnQueue:v28 block:v36];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000B9214;
        v33[3] = &unk_100361270;
        v34 = v27;
        v35 = handlerCopy;
        [v34 notifyOnQueue:v28 block:v33];

        v29 = v37;
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v30 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10028BC40();
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000B7AF4;
        block[3] = &unk_100360FA0;
        v45 = handlerCopy;
        dispatch_async(&_dispatch_main_q, block);
        v29 = v45;
      }

      goto LABEL_14;
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_1000AC1C8;
    v55 = sub_1000AC1D8;
    v56 = 0;
    context = [v18 context];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B79EC;
    v48[3] = &unk_100364898;
    v49 = v18;
    v50 = &v51;
    [context performBlockAndWait:v48];

    v25 = v52[5];
    if (v25)
    {
      playerCopy = v25;

      _Block_object_dispose(&v51, 8);
      goto LABEL_6;
    }

    if (!os_log_GKGeneral)
    {
      v32 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028BC04();
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000B7A84;
    v46[3] = &unk_100360FA0;
    v47 = handlerCopy;
    dispatch_async(&_dispatch_main_q, v46);

    _Block_object_dispose(&v51, 8);
    playerCopy = 0;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v31 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028BCB0();
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000B797C;
    v57[3] = &unk_100360FA0;
    v58 = handlerCopy;
    dispatch_async(&_dispatch_main_q, v57);

    descriptorCopy = 0;
  }

LABEL_14:
}

- (void)fetchLeaderboardWithRecordID:(id)d context:(id)context handler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B93C4;
  v10[3] = &unk_100360FC8;
  dCopy = d;
  contextCopy = context;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = contextCopy;
  v9 = dCopy;
  [v8 performBlock:v10];
}

- (void)loadPreviousInstanceForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor player:(id)player playerPlayedIn:(BOOL)in context:(id)context handler:(id)handler
{
  leaderboardCopy = leaderboard;
  descriptorCopy = descriptor;
  playerCopy = player;
  contextCopy = context;
  handlerCopy = handler;
  playerID = [playerCopy playerID];

  if (!playerID)
  {
    v18 = [NSString stringWithFormat:@"Assertion failed"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    lastPathComponent = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (player.playerID != ((void *)0))\n[%s (%s:%d)]", v18, "-[GKGameStatService loadPreviousInstanceForLeaderboard:gameDescriptor:player:playerPlayedIn:context:handler:]", [lastPathComponent UTF8String], 2186);

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
  }

  v22 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2188, "[GKGameStatService loadPreviousInstanceForLeaderboard:gameDescriptor:player:playerPlayedIn:context:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v24 = [GKCacheTransactionGroup transactionGroupWithName:v22 context:contextCopy client:clientProxy];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000B97A8;
  v41[3] = &unk_100363C68;
  v42 = descriptorCopy;
  v43 = playerCopy;
  inCopy = in;
  v44 = leaderboardCopy;
  selfCopy = self;
  v27 = v24;
  v46 = v27;
  v47 = contextCopy;
  v28 = contextCopy;
  v29 = leaderboardCopy;
  v30 = playerCopy;
  v31 = descriptorCopy;
  [v27 performOnQueue:replyQueue block:v41];

  clientProxy3 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy3 replyQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000B9D04;
  v38[3] = &unk_100360EB0;
  v39 = v27;
  v40 = handlerCopy;
  v34 = v27;
  v35 = handlerCopy;
  [v34 notifyOnQueue:replyQueue2 block:v38];
}

- (void)getPreviousInstanceForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor player:(id)player handler:(id)handler
{
  leaderboardCopy = leaderboard;
  descriptorCopy = descriptor;
  playerCopy = player;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2244, "[GKGameStatService getPreviousInstanceForLeaderboard:gameDescriptor:player:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  if (descriptorCopy || (v16 = [GKGameDescriptor alloc], -[GKService clientProxy](self, "clientProxy"), v17 = objc_claimAutoreleasedReturnValue(), [v17 gameDescriptor], v18 = objc_claimAutoreleasedReturnValue(), descriptorCopy = objc_msgSend(v16, "initWithDictionary:", v18), v18, v17, descriptorCopy))
  {
    if (playerCopy)
    {
LABEL_6:
      playerID = [playerCopy playerID];

      if (playerID)
      {
        clientProxy = [(GKService *)self clientProxy];
        replyQueue = [clientProxy replyQueue];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000BA514;
        v34[3] = &unk_100361BF8;
        v24 = v15;
        v35 = v24;
        selfCopy = self;
        v37 = leaderboardCopy;
        descriptorCopy = descriptorCopy;
        v38 = descriptorCopy;
        playerCopy = playerCopy;
        v39 = playerCopy;
        [v24 performOnQueue:replyQueue block:v34];

        clientProxy2 = [(GKService *)self clientProxy];
        replyQueue2 = [clientProxy2 replyQueue];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000BAAA4;
        v31[3] = &unk_100361270;
        v32 = v24;
        v33 = handlerCopy;
        [v32 notifyOnQueue:replyQueue2 block:v31];

        v27 = v35;
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v28 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10028BE40();
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000BA4A4;
        block[3] = &unk_100360FA0;
        v41 = handlerCopy;
        dispatch_async(&_dispatch_main_q, block);
        v27 = v41;
      }

      goto LABEL_14;
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_1000AC1C8;
    v51 = sub_1000AC1D8;
    v52 = 0;
    context = [v15 context];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000BA39C;
    v44[3] = &unk_100364898;
    v45 = v15;
    v46 = &v47;
    [context performBlockAndWait:v44];

    v20 = v48[5];
    if (v20)
    {
      playerCopy = v20;

      _Block_object_dispose(&v47, 8);
      goto LABEL_6;
    }

    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028BEB0();
    }

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000BA434;
    v42[3] = &unk_100360FA0;
    v43 = handlerCopy;
    dispatch_async(&_dispatch_main_q, v42);

    _Block_object_dispose(&v47, 8);
    playerCopy = 0;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028BEEC();
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000BA32C;
    v53[3] = &unk_100360FA0;
    v54 = handlerCopy;
    dispatch_async(&_dispatch_main_q, v53);

    descriptorCopy = 0;
  }

LABEL_14:
}

- (void)updatePlayersForEntries:(id)entries localPlayerEntry:(id)entry handler:(id)handler
{
  entryCopy = entry;
  handlerCopy = handler;
  entriesCopy = entries;
  v11 = [NSMutableArray arrayWithArray:entriesCopy];
  v12 = v11;
  if (entryCopy)
  {
    [v11 addObject:entryCopy];
  }

  v13 = +[GKAnonymousPlayerInternal internalRepresentation];
  v14 = [entriesCopy _gkValuesForKeyPath:@"player.playerID"];

  v15 = [(GKService *)GKProfileService serviceFromService:self];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BACE8;
  v19[3] = &unk_100361A58;
  v20 = v12;
  v21 = v13;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = v13;
  v18 = v12;
  [v15 getProfilesForPlayerIDs:v14 handler:v19];
}

- (void)generateEntriesFromServerResponse:(id)response context:(id)context leaderboard:(id)leaderboard handler:(id)handler
{
  responseCopy = response;
  leaderboardCopy = leaderboard;
  handlerCopy = handler;
  contextCopy = context;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2361, "[GKGameStatService generateEntriesFromServerResponse:context:leaderboard:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:contextCopy client:clientProxy];

  if (responseCopy)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000BB0D4;
    v24[3] = &unk_1003626D8;
    v25 = responseCopy;
    v26 = leaderboardCopy;
    v27 = v16;
    selfCopy = self;
    [v27 performOnManagedObjectContext:v24];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000BB7FC;
  v21[3] = &unk_100360EB0;
  v22 = v16;
  v23 = handlerCopy;
  v19 = v16;
  v20 = handlerCopy;
  [v19 notifyOnQueue:replyQueue block:v21];
}

- (void)loadEntriesForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor localPlayer:(id)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(id)players context:(id)self0 locale:(id)self1 handler:(id)self2
{
  leaderboardCopy = leaderboard;
  descriptorCopy = descriptor;
  playerCopy = player;
  playersCopy = players;
  contextCopy = context;
  localeCopy = locale;
  handlerCopy = handler;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2448, "[GKGameStatService loadEntriesForLeaderboard:gameDescriptor:localPlayer:playerScope:timeScope:range:players:context:locale:handler:]"];
  clientProxy = [(GKService *)self clientProxy];
  v21 = [GKCacheTransactionGroup transactionGroupWithName:v19 context:contextCopy client:clientProxy];

  v22 = [playersCopy _gkMapWithBlock:&stru_100364E80];
  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000BBC14;
  v45[3] = &unk_100364EF8;
  v45[4] = self;
  v46 = leaderboardCopy;
  v47 = descriptorCopy;
  v48 = playerCopy;
  scopeCopy = scope;
  timeScopeCopy = timeScope;
  rangeCopy = range;
  v49 = playersCopy;
  v50 = localeCopy;
  v25 = v21;
  v51 = v25;
  v52 = v22;
  v53 = contextCopy;
  v40 = contextCopy;
  v38 = v22;
  v36 = localeCopy;
  v35 = playersCopy;
  v26 = playerCopy;
  v27 = descriptorCopy;
  v28 = leaderboardCopy;
  [v25 performOnQueue:replyQueue block:v45];

  clientProxy3 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy3 replyQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000BC3E8;
  v42[3] = &unk_100360EB0;
  v43 = v25;
  v44 = handlerCopy;
  v31 = v25;
  v32 = handlerCopy;
  [v31 notifyOnQueue:replyQueue2 block:v42];
}

- (id)playerScopeName:(int64_t)name
{
  if (name == 1)
  {
    return @"BIDIRECTIONAL-FRIENDS";
  }

  else
  {
    return @"ALL";
  }
}

- (id)timeScopeName:(int64_t)name
{
  v3 = @"AllTIME";
  if (name == 1)
  {
    v3 = @"THISWEEK";
  }

  if (name)
  {
    return v3;
  }

  else
  {
    return @"TODAY";
  }
}

- (void)getEntriesForLeaderboard:(id)leaderboard gameDescriptor:(id)descriptor localPlayer:(id)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(id)players locale:(id)self0 handler:(id)self1
{
  leaderboardCopy = leaderboard;
  descriptorCopy = descriptor;
  playerCopy = player;
  playersCopy = players;
  localeCopy = locale;
  handlerCopy = handler;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2557, "[GKGameStatService getEntriesForLeaderboard:gameDescriptor:localPlayer:playerScope:timeScope:range:players:locale:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  if (!descriptorCopy)
  {
    v21 = v20;
    v22 = [GKGameDescriptor alloc];
    clientProxy = [(GKService *)self clientProxy];
    gameDescriptor = [clientProxy gameDescriptor];
    descriptorCopy = [v22 initWithDictionary:gameDescriptor];

    if (!descriptorCopy)
    {
      if (!os_log_GKGeneral)
      {
        v40 = GKOSLoggers();
      }

      v20 = v21;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028C11C();
      }

      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_1000BCC44;
      v75[3] = &unk_100360FA0;
      v76 = handlerCopy;
      dispatch_async(&_dispatch_main_q, v75);

      descriptorCopy = 0;
      goto LABEL_21;
    }

    v20 = v21;
  }

  baseLeaderboardID = [leaderboardCopy baseLeaderboardID];
  v26 = [baseLeaderboardID length];

  if (!v26)
  {
    if (!os_log_GKGeneral)
    {
      v36 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028C0E0();
    }

    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue = [clientProxy2 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BCCBC;
    block[3] = &unk_100360FA0;
    v74 = handlerCopy;
    dispatch_async(replyQueue, block);

    v35 = v74;
    goto LABEL_20;
  }

  if (playerCopy)
  {
LABEL_8:
    playerID = [playerCopy playerID];

    if (playerID)
    {
      clientProxy3 = [(GKService *)self clientProxy];
      [clientProxy3 replyQueue];
      v31 = v42 = v20;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000BCEBC;
      v49[3] = &unk_100364F20;
      v32 = v42;
      v50 = v32;
      selfCopy = self;
      v52 = leaderboardCopy;
      descriptorCopy = descriptorCopy;
      v53 = descriptorCopy;
      playerCopy = playerCopy;
      v54 = playerCopy;
      scopeCopy = scope;
      timeScopeCopy = timeScope;
      rangeCopy = range;
      v55 = playersCopy;
      v56 = localeCopy;
      [v32 performOnQueue:v31 block:v49];

      clientProxy4 = [(GKService *)self clientProxy];
      replyQueue2 = [clientProxy4 replyQueue];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000BD1D8;
      v46[3] = &unk_100360EB0;
      v48 = handlerCopy;
      v47 = v32;
      [v47 notifyOnQueue:replyQueue2 block:v46];

      v20 = v42;
      v35 = v50;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v39 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028C034();
      }

      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_1000BCE44;
      v60[3] = &unk_100360FA0;
      v61 = handlerCopy;
      dispatch_async(&_dispatch_main_q, v60);
      v35 = v61;
    }

LABEL_20:

    goto LABEL_21;
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_1000AC1C8;
  v71 = sub_1000AC1D8;
  v72 = 0;
  context = [v20 context];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000BCD34;
  v64[3] = &unk_100364898;
  v65 = v20;
  v66 = &v67;
  [context performBlockAndWait:v64];

  v28 = v68[5];
  if (v28)
  {
    playerCopy = v28;

    _Block_object_dispose(&v67, 8);
    goto LABEL_8;
  }

  if (!os_log_GKGeneral)
  {
    v41 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_10028C0A4();
  }

  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000BCDCC;
  v62[3] = &unk_100360FA0;
  v63 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v62);

  _Block_object_dispose(&v67, 8);
  playerCopy = 0;
LABEL_21:
}

- (void)submitScore:(int64_t)score context:(unint64_t)context leaderboardIDs:(id)ds forPlayer:(id)player whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges gameDescriptor:(id)descriptor handler:(id)self0
{
  dsCopy = ds;
  playerCopy = player;
  eligibleChallengesCopy = eligibleChallenges;
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2634, "[GKGameStatService submitScore:context:leaderboardIDs:forPlayer:whileScreeningChallenges:withEligibleChallenges:gameDescriptor:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  v21 = +[NSDate date];
  [NSMutableSet setWithArray:dsCopy];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000BD4D4;
  v32[3] = &unk_100364FE8;
  v33 = v21;
  v35 = v34 = playerCopy;
  v36 = v20;
  selfCopy = self;
  v38 = dsCopy;
  challengesCopy = challenges;
  v39 = eligibleChallengesCopy;
  v40 = descriptorCopy;
  scoreCopy = score;
  contextCopy = context;
  v41 = handlerCopy;
  v31 = handlerCopy;
  v22 = descriptorCopy;
  v23 = eligibleChallengesCopy;
  v24 = dsCopy;
  v25 = v20;
  v26 = v35;
  v27 = playerCopy;
  v28 = v21;
  [(GKGameStatService *)self getLeaderboardsForGameDescriptor:v22 player:v27 leaderboardIDs:v26 setIdentifier:0 handler:v32];
}

- (void)submitInstanceScore:(int64_t)score context:(unint64_t)context leaderboard:(id)leaderboard forPlayer:(id)player whileScreeningChallenges:(BOOL)challenges withEligibleChallenges:(id)eligibleChallenges handler:(id)handler
{
  leaderboardCopy = leaderboard;
  playerCopy = player;
  eligibleChallengesCopy = eligibleChallenges;
  handlerCopy = handler;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2748, "[GKGameStatService submitInstanceScore:context:leaderboard:forPlayer:whileScreeningChallenges:withEligibleChallenges:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  +[NSDate date];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000BE7E4;
  v21 = v31[3] = &unk_100364F48;
  v32 = v21;
  v22 = leaderboardCopy;
  v33 = v22;
  scoreCopy = score;
  contextCopy = context;
  v23 = playerCopy;
  v34 = v23;
  selfCopy = self;
  challengesCopy = challenges;
  v24 = eligibleChallengesCopy;
  v36 = v24;
  v25 = v20;
  v37 = v25;
  [v25 perform:v31];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000BED94;
    v28[3] = &unk_100361270;
    v29 = v25;
    v30 = handlerCopy;
    [v29 notifyOnQueue:replyQueue block:v28];
  }
}

- (void)createLeaderboardBasedOnID:(id)d recipients:(id)recipients inviteMessage:(id)message context:(id)context duration:(double)duration handler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0, duration);
  }
}

- (void)startLeaderboardWithID:(id)d handler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)endLeaderboardWithID:(id)d handler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)deleteLeaderboardWithID:(id)d handler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)getLeaderboardSummaryForGameDescriptor:(id)descriptor localPlayer:(id)player baseLeaderboardID:(id)d leaderboardID:(id)iD timeScope:(int64_t)scope handler:(id)handler
{
  descriptorCopy = descriptor;
  playerCopy = player;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  if (descriptorCopy && dCopy)
  {
    scopeCopy = scope;
    v19 = objc_alloc_init(NSMutableDictionary);
    dictionaryForRequest = [descriptorCopy dictionaryForRequest];
    clientProxy = [(GKService *)self clientProxy];
    isInDebugMode = [clientProxy isInDebugMode];

    v29 = dictionaryForRequest;
    if (isInDebugMode)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000BF1A0;
      v32[3] = &unk_100365010;
      v32[4] = self;
      v23 = &v33;
      v33 = handlerCopy;
      [(GKGameStatService *)self getFakeLeaderboardSummaryWithGameDescriptor:descriptorCopy localPlayer:playerCopy baseLeaderboardID:dCopy leaderboardID:iDCopy timeScope:scopeCopy completionHandler:v32];
    }

    else
    {
      [v19 setObject:dictionaryForRequest forKeyedSubscript:@"game"];
      playerID = [playerCopy playerID];
      [v19 setObject:playerID forKeyedSubscript:@"player-id"];

      [v19 setObject:dCopy forKeyedSubscript:@"base-leaderboard-id"];
      if ([iDCopy length])
      {
        [v19 setObject:iDCopy forKeyedSubscript:@"leaderboard-id"];
      }

      v25 = [(GKGameStatService *)self timeScopeName:scopeCopy, scopeCopy, dictionaryForRequest];
      [v19 setObject:v25 forKeyedSubscript:@"time-scope"];

      v26 = +[GKNetworkRequestManager commonNetworkRequestManager];
      clientProxy2 = [(GKService *)self clientProxy];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000BF2B8;
      v30[3] = &unk_1003627C8;
      v30[4] = self;
      v23 = &v31;
      v31 = handlerCopy;
      [v26 issueRequest:v19 bagKey:@"gk-get-leaderboard-summary" clientProxy:clientProxy2 handler:v30];
    }
  }

  else
  {
    v19 = [NSError userErrorForCode:16 underlyingError:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v19);
  }
}

- (void)loadFakeLeaderboardEntriesWithLeaderboard:(GKLeaderboardInternal *)leaderboard game:(GKGameDescriptor *)game localPlayer:(GKPlayerInternal *)player playerScope:(int64_t)scope timeScope:(int64_t)timeScope range:(_NSRange)range players:(NSArray *)players locale:(NSLocale *)self0 completionHandler:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = leaderboard;
  *(v16 + 24) = game;
  *(v16 + 32) = player;
  *(v16 + 40) = scope;
  *(v16 + 48) = timeScope;
  *(v16 + 56) = range;
  *(v16 + 72) = players;
  *(v16 + 80) = locale;
  *(v16 + 88) = v15;
  *(v16 + 96) = self;
  leaderboardCopy = leaderboard;
  gameCopy = game;
  playerCopy = player;
  playersCopy = players;
  localeCopy = locale;
  selfCopy = self;

  sub_10028022C(&unk_1002C8E58, v16);
}

- (void)getFakeLeaderboardSummaryWithGameDescriptor:(GKGameDescriptor *)descriptor localPlayer:(GKPlayerInternal *)player baseLeaderboardID:(NSString *)d leaderboardID:(NSString *)iD timeScope:(int64_t)scope completionHandler:(id)handler
{
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = descriptor;
  v15[3] = player;
  v15[4] = d;
  v15[5] = iD;
  v15[6] = scope;
  v15[7] = v14;
  v15[8] = self;
  descriptorCopy = descriptor;
  playerCopy = player;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;

  sub_10028022C(&unk_1002C8DD8, v15);
}

- (void)getFakeLeaderboardsWithGameDescriptor:(GKGameDescriptor *)descriptor player:(GKPlayerInternal *)player setIdentifier:(NSString *)identifier leaderboardIDs:(NSArray *)ds completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = descriptor;
  v13[3] = player;
  v13[4] = identifier;
  v13[5] = ds;
  v13[6] = v12;
  v13[7] = self;
  descriptorCopy = descriptor;
  playerCopy = player;
  identifierCopy = identifier;
  dsCopy = ds;
  selfCopy = self;

  sub_10028022C(&unk_1002C8D88, v13);
}

- (void)submitFakeScoresWithScore:(int64_t)score context:(int64_t)context leaderboardIDs:(NSArray *)ds player:(GKPlayerInternal *)player screenChallenges:(BOOL)challenges eligibleChallenges:(NSArray *)eligibleChallenges game:(GKGameDescriptor *)game completionHandler:(id)self0
{
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  *(v18 + 16) = score;
  *(v18 + 24) = context;
  *(v18 + 32) = ds;
  *(v18 + 40) = player;
  *(v18 + 48) = challenges;
  *(v18 + 56) = eligibleChallenges;
  *(v18 + 64) = game;
  *(v18 + 72) = v17;
  *(v18 + 80) = self;
  dsCopy = ds;
  playerCopy = player;
  eligibleChallengesCopy = eligibleChallenges;
  gameCopy = game;
  selfCopy = self;

  sub_10028022C(&unk_1002C8D70, v18);
}

- (void)submitFakeScoresWithScores:(NSArray *)scores bundleID:(NSString *)d screenChallenges:(BOOL)challenges eligibleChallenges:(NSArray *)eligibleChallenges completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = scores;
  *(v13 + 24) = d;
  *(v13 + 32) = challenges;
  *(v13 + 40) = eligibleChallenges;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  scoresCopy = scores;
  dCopy = d;
  eligibleChallengesCopy = eligibleChallenges;
  selfCopy = self;

  sub_10028022C(&unk_1002C8D38, v13);
}

@end
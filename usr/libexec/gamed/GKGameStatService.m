@interface GKGameStatService
+ (id)_alternativeIdentifierForLeaderboardID:(id)a3;
+ (id)friendsRequiringHydration:(id)a3;
+ (id)getFriendsWhoHaveTheseAchievementsPredicate:(id)a3 playerID:(id)a4 gameBundleID:(id)a5;
+ (id)leaderboards:(id)a3 filteredWithIDs:(id)a4;
- (id)getFriendsWhoHaveTheseAchievements:(id)a3 playerID:(id)a4 gameBundleID:(id)a5 context:(id)a6;
- (id)playerScopeName:(int64_t)a3;
- (id)releaseStateHeaderValueForBundleID:(id)a3;
- (id)timeScopeName:(int64_t)a3;
- (id)updateAndFilterHiddenLeaderboards:(id)a3 bundleID:(id)a4 requestedLeaderboardIDs:(id)a5;
- (void)_getRecentMatchesForGameDescriptor:(id)a3 type:(int)a4 reference:(id)a5 handler:(id)a6;
- (void)achievementsForPlayersAndGameDescriptor:(id)a3 players:(id)a4 context:(id)a5 handler:(id)a6;
- (void)cleanUpLeaderboardTitles:(id)a3 set:(id)a4 context:(id)a5;
- (void)createLeaderboardBasedOnID:(id)a3 recipients:(id)a4 inviteMessage:(id)a5 context:(id)a6 duration:(double)a7 handler:(id)a8;
- (void)deleteLeaderboardWithID:(id)a3 handler:(id)a4;
- (void)endLeaderboardWithID:(id)a3 handler:(id)a4;
- (void)fetchAchievementDescriptionsForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5;
- (void)fetchAchievementsForGameDescriptor:(id)a3 players:(id)a4 context:(id)a5 handler:(id)a6;
- (void)fetchLeaderboardWithRecordID:(id)a3 context:(id)a4 handler:(id)a5;
- (void)fetchLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 setIdentifier:(id)a5 context:(id)a6 handler:(id)a7;
- (void)fetchRecentGamesBetweenPlayer:(id)a3 otherPlayer:(id)a4 context:(id)a5 handler:(id)a6;
- (void)fetchRecentPlayersWithPlayer:(id)a3 game:(id)a4 context:(id)a5 handler:(id)a6;
- (void)generateEntriesFromServerResponse:(id)a3 context:(id)a4 leaderboard:(id)a5 handler:(id)a6;
- (void)getAchievementDescriptionsForGameDescriptor:(id)a3 handler:(id)a4;
- (void)getAchievementsForGameDescriptor:(id)a3 players:(id)a4 handler:(id)a5;
- (void)getDefaultLeaderboardIDWithHandler:(id)a3;
- (void)getEntriesForLeaderboard:(id)a3 gameDescriptor:(id)a4 localPlayer:(id)a5 playerScope:(int64_t)a6 timeScope:(int64_t)a7 range:(_NSRange)a8 players:(id)a9 locale:(id)a10 handler:(id)a11;
- (void)getFakeLeaderboardSummaryWithGameDescriptor:(GKGameDescriptor *)a3 localPlayer:(GKPlayerInternal *)a4 baseLeaderboardID:(NSString *)a5 leaderboardID:(NSString *)a6 timeScope:(int64_t)a7 completionHandler:(id)a8;
- (void)getFakeLeaderboardsWithGameDescriptor:(GKGameDescriptor *)a3 player:(GKPlayerInternal *)a4 setIdentifier:(NSString *)a5 leaderboardIDs:(NSArray *)a6 completionHandler:(id)a7;
- (void)getLeaderboardForRequest:(id)a3 handler:(id)a4;
- (void)getLeaderboardSetsForGameDescriptor:(id)a3 handler:(id)a4;
- (void)getLeaderboardSummaryForGameDescriptor:(id)a3 localPlayer:(id)a4 baseLeaderboardID:(id)a5 leaderboardID:(id)a6 timeScope:(int64_t)a7 handler:(id)a8;
- (void)getLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 leaderboardIDs:(id)a5 setIdentifier:(id)a6 handler:(id)a7;
- (void)getLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 setIdentifier:(id)a5 handler:(id)a6;
- (void)getPreviousInstanceForLeaderboard:(id)a3 gameDescriptor:(id)a4 player:(id)a5 handler:(id)a6;
- (void)getRecentGamesWithPlayer:(id)a3 handler:(id)a4;
- (void)getRecentMatchesForGameDescriptor:(id)a3 otherPlayer:(id)a4 handler:(id)a5;
- (void)getRecentPlayersForGameDescriptor:(id)a3 handler:(id)a4;
- (void)getRecentPlayersWithHandler:(id)a3;
- (void)loadAchievementDescriptionsForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5;
- (void)loadAchievementsForGameDescriptor:(id)a3 players:(id)a4 context:(id)a5 handler:(id)a6;
- (void)loadEntriesForLeaderboard:(id)a3 gameDescriptor:(id)a4 localPlayer:(id)a5 playerScope:(int64_t)a6 timeScope:(int64_t)a7 range:(_NSRange)a8 players:(id)a9 context:(id)a10 locale:(id)a11 handler:(id)a12;
- (void)loadFakeLeaderboardEntriesWithLeaderboard:(GKLeaderboardInternal *)a3 game:(GKGameDescriptor *)a4 localPlayer:(GKPlayerInternal *)a5 playerScope:(int64_t)a6 timeScope:(int64_t)a7 range:(_NSRange)a8 players:(NSArray *)a9 locale:(NSLocale *)a10 completionHandler:(id)aBlock;
- (void)loadLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 setIdentifier:(id)a5 context:(id)a6 bagKey:(id)a7 handler:(id)a8;
- (void)loadPreviousInstanceForLeaderboard:(id)a3 gameDescriptor:(id)a4 player:(id)a5 playerPlayedIn:(BOOL)a6 context:(id)a7 handler:(id)a8;
- (void)loadRecentGamesBetweenPlayer:(id)a3 otherPlayer:(id)a4 context:(id)a5 handler:(id)a6;
- (void)loadRecentPlayersWithPlayer:(id)a3 game:(id)a4 context:(id)a5 handler:(id)a6;
- (void)primeCacheWithAchievementDescriptions:(id)a3 context:(id)a4 gameDescriptor:(id)a5 players:(id)a6 missingPlayers:(id)a7;
- (void)resetAchievementsWithHandler:(id)a3;
- (void)setDefaultLeaderboardID:(id)a3 handler:(id)a4;
- (void)startLeaderboardWithID:(id)a3 handler:(id)a4;
- (void)submitAchievements:(id)a3 whileScreeningChallenges:(BOOL)a4 withEligibleChallenges:(id)a5 handler:(id)a6;
- (void)submitFakeScoresWithScore:(int64_t)a3 context:(int64_t)a4 leaderboardIDs:(NSArray *)a5 player:(GKPlayerInternal *)a6 screenChallenges:(BOOL)a7 eligibleChallenges:(NSArray *)a8 game:(GKGameDescriptor *)a9 completionHandler:(id)a10;
- (void)submitFakeScoresWithScores:(NSArray *)a3 bundleID:(NSString *)a4 screenChallenges:(BOOL)a5 eligibleChallenges:(NSArray *)a6 completionHandler:(id)a7;
- (void)submitInstanceScore:(int64_t)a3 context:(unint64_t)a4 leaderboard:(id)a5 forPlayer:(id)a6 whileScreeningChallenges:(BOOL)a7 withEligibleChallenges:(id)a8 handler:(id)a9;
- (void)submitScore:(int64_t)a3 context:(unint64_t)a4 leaderboardIDs:(id)a5 forPlayer:(id)a6 whileScreeningChallenges:(BOOL)a7 withEligibleChallenges:(id)a8 gameDescriptor:(id)a9 handler:(id)a10;
- (void)submitScores:(id)a3 whileScreeningChallenges:(BOOL)a4 withEligibleChallenges:(id)a5 handler:(id)a6;
- (void)updateLeaderboardsWithIDs:(id)a3 gameDescriptor:(id)a4 player:(id)a5 context:(id)a6 handler:(id)a7;
- (void)updatePlayersForEntries:(id)a3 localPlayerEntry:(id)a4 handler:(id)a5;
@end

@implementation GKGameStatService

- (void)_getRecentMatchesForGameDescriptor:(id)a3 type:(int)a4 reference:(id)a5 handler:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a6;
  v12 = [a3 dictionaryForRequest];
  if (!v12)
  {
    v13 = [(GKService *)self clientProxy];
    v12 = [v13 gameDescriptor];
  }

  v14 = [v12 objectForKeyedSubscript:@"bundle-id"];
  v31 = v14;
  if (v7 == 3)
  {
    v15 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND type = %d AND reference = %@", v14, 3, v10, v14];
    v46[0] = @"game";
    v46[1] = @"match-type";
    v47[0] = v12;
    v47[1] = @"achievement-compatible";
    v46[2] = @"achievement-id";
    v47[2] = v10;
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
        v51[0] = v12;
        v51[1] = @"multiplayer-compatible";
        v16 = v51;
        v17 = v50;
      }

      else
      {
        v15 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND type = %d", v14, v7];
        v44[0] = @"game";
        v44[1] = @"match-type";
        v45[0] = v12;
        v45[1] = @"exact-match";
        v16 = v45;
        v17 = v44;
      }

      v18 = 2;
      goto LABEL_12;
    }

    v15 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND type = %d AND reference = %@", v14, 2, v10, v14];
    v48[0] = @"game";
    v48[1] = @"match-type";
    v49[0] = v12;
    v49[1] = @"leaderboard-compatible";
    v48[2] = @"leaderboard-id";
    v49[2] = v10;
    v16 = v49;
    v17 = v48;
  }

  v18 = 3;
LABEL_12:
  v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:v18];
  v20 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 119, "[GKGameStatService _getRecentMatchesForGameDescriptor:type:reference:handler:]"];
  v21 = [(GKService *)self transactionGroupWithName:v20];

  v22 = [(GKService *)self clientProxy];
  v23 = [v22 replyQueue];
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
  v40 = self;
  v43 = v7;
  v27 = v10;
  v41 = v27;
  v28 = v12;
  v42 = v28;
  [v24 performOnQueue:v23 block:v36];

  if (v11)
  {
    v29 = [(GKService *)self clientProxy];
    v30 = [v29 replyQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000A7D48;
    v32[3] = &unk_100360FC8;
    v33 = v24;
    v34 = self;
    v35 = v11;
    [v33 notifyOnQueue:v30 block:v32];
  }
}

- (void)fetchRecentPlayersWithPlayer:(id)a3 game:(id)a4 context:(id)a5 handler:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A8118;
  v14[3] = &unk_100360F28;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = self;
  v19 = a6;
  v10 = v19;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [v11 performBlock:v14];
}

- (void)fetchRecentGamesBetweenPlayer:(id)a3 otherPlayer:(id)a4 context:(id)a5 handler:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A83EC;
  v14[3] = &unk_100360F28;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = self;
  v19 = a6;
  v10 = v19;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [v11 performBlock:v14];
}

- (void)loadRecentPlayersWithPlayer:(id)a3 game:(id)a4 context:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 299, "[GKGameStatService loadRecentPlayersWithPlayer:game:context:handler:]"];
  v15 = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:v12 client:v15];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v17 = +[GKPreferences shared];
  v18 = [v17 maxRecentPlayersCount];
  [v17 maxRecentPlayersTime];
  [NSDate dateWithTimeIntervalSinceNow:-v19];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000A8884;
  v32[3] = &unk_1003644F0;
  v20 = v39 = v18;
  v33 = v20;
  v21 = v11;
  v34 = v21;
  v35 = self;
  v38 = v40;
  v22 = v16;
  v36 = v22;
  v23 = v10;
  v37 = v23;
  [v22 performOnManagedObjectContext:v32];
  v24 = [(GKService *)self clientProxy];
  v25 = [v24 replyQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000A951C;
  v28[3] = &unk_1003618D8;
  v26 = v13;
  v30 = v26;
  v31 = v40;
  v27 = v22;
  v29 = v27;
  [v27 notifyOnQueue:v25 block:v28];

  _Block_object_dispose(v40, 8);
}

- (void)loadRecentGamesBetweenPlayer:(id)a3 otherPlayer:(id)a4 context:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 381, "[GKGameStatService loadRecentGamesBetweenPlayer:otherPlayer:context:handler:]"];
  v15 = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:v12 client:v15];

  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v17 = +[GKPreferences shared];
  v18 = [v17 maxRecentPlayersCount];
  [v17 maxRecentPlayersTime];
  v20 = [NSDate dateWithTimeIntervalSinceNow:-v19];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000A98FC;
  v45[3] = &unk_100364518;
  v21 = v16;
  v46 = v21;
  v49 = v18;
  v22 = v20;
  v47 = v22;
  v23 = v11;
  v48 = v23;
  [v12 performBlockAndWait:v45];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000A9A0C;
  v37[3] = &unk_100364540;
  v24 = v21;
  v38 = v24;
  v39 = self;
  v44 = v50;
  v25 = v12;
  v40 = v25;
  v26 = v10;
  v41 = v26;
  v27 = v23;
  v42 = v27;
  v28 = v22;
  v43 = v28;
  [v24 perform:v37];
  v29 = [(GKService *)self clientProxy];
  v30 = [v29 replyQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000AA594;
  v33[3] = &unk_1003618D8;
  v31 = v13;
  v35 = v31;
  v36 = v50;
  v32 = v24;
  v34 = v32;
  [v32 notifyOnQueue:v30 block:v33];

  _Block_object_dispose(v50, 8);
}

- (void)getRecentPlayersForGameDescriptor:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 462, "[GKGameStatService getRecentPlayersForGameDescriptor:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AA7F0;
  v19[3] = &unk_100360F00;
  v12 = v9;
  v20 = v12;
  v13 = v6;
  v21 = v13;
  v22 = self;
  [v12 performOnQueue:v11 block:v19];

  if (v7)
  {
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AB0A4;
    v16[3] = &unk_100360EB0;
    v18 = v7;
    v17 = v12;
    [v17 notifyOnQueue:v15 block:v16];
  }
}

- (void)getRecentGamesWithPlayer:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 518, "[GKGameStatService getRecentGamesWithPlayer:handler:]"];
  v7 = [(GKService *)self transactionGroupWithName:v6];

  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AB304;
  v16[3] = &unk_100360FF0;
  v10 = v7;
  v17 = v10;
  v18 = self;
  [v10 performOnQueue:v9 block:v16];

  if (v5)
  {
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000ABB68;
    v13[3] = &unk_100360EB0;
    v15 = v5;
    v14 = v10;
    [v14 notifyOnQueue:v12 block:v13];
  }
}

- (void)getRecentMatchesForGameDescriptor:(id)a3 otherPlayer:(id)a4 handler:(id)a5
{
  if (a4)
  {
    [(GKGameStatService *)self getRecentGamesWithPlayer:a4 handler:a5];
  }

  else
  {
    [(GKGameStatService *)self getRecentPlayersForGameDescriptor:a3 handler:a5];
  }
}

- (void)getRecentPlayersWithHandler:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000ABCC0;
  v5[3] = &unk_1003645E0;
  v6 = a3;
  v4 = v6;
  [(GKGameStatService *)self getRecentPlayersForGameDescriptor:0 handler:v5];
}

- (void)fetchAchievementDescriptionsForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000ABDB0;
  v10[3] = &unk_100360FC8;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v11;
  [v8 performBlock:v10];
}

- (id)releaseStateHeaderValueForBundleID:(id)a3
{
  v3 = @"live";
  if (a3)
  {
    v4 = a3;
    v5 = +[GKDataRequestManager sharedManager];
    v6 = [v5 isDevSignedForBundleID:v4];

    v7 = @"prerelease";
    if (!v6)
    {
      v7 = @"live";
    }

    v3 = v7;
  }

  return v3;
}

- (void)loadAchievementDescriptionsForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v12 = [(GKService *)self clientProxy];
  v13 = [GKCacheTransactionGroup transactionGroupWithName:v11 context:v9 client:v12];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000AC1E0;
  v24[3] = &unk_100364680;
  v14 = v8;
  v25 = v14;
  v15 = v10;
  v28 = v15;
  v29 = v31;
  v26 = self;
  v30 = v32;
  v16 = v13;
  v27 = v16;
  [v16 performOnManagedObjectContext:v24];
  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000ACB38;
  v20[3] = &unk_1003646A8;
  v19 = v16;
  v21 = v19;
  v22 = v32;
  v23 = v31;
  [v19 notifyOnQueue:v18 block:v20];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
}

+ (id)friendsRequiringHydration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v3;
  obj = [v3 objectForKeyedSubscript:@"results"];
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

+ (id)getFriendsWhoHaveTheseAchievementsPredicate:(id)a3 playerID:(id)a4 gameBundleID:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [NSPredicate predicateWithFormat:@"game.bundleID == %@", a5];
  v10 = [NSPredicate predicateWithFormat:@"achievementDescription.identifier IN %@", v8];
  v11 = [NSPredicate predicateWithFormat:@"achievementDescription.groupIdentifier IN %@", v8];

  v19[0] = v10;
  v19[1] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:2];
  v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v12];

  v14 = [NSPredicate predicateWithFormat:@"player.playerID == %@", v7];

  v18[0] = v14;
  v18[1] = v9;
  v18[2] = v13;
  v15 = [NSArray arrayWithObjects:v18 count:3];
  v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];

  return v16;
}

- (id)getFriendsWhoHaveTheseAchievements:(id)a3 playerID:(id)a4 gameBundleID:(id)a5 context:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 count])
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

    v56 = v11;
    v16 = [GKGameStatService getFriendsWhoHaveTheseAchievementsPredicate:v9 playerID:v10 gameBundleID:v11];
    v17 = [(GKCacheObject *)GKAchievementThatAFriendHasListCacheObject fetchRequestForContext:v12];
    v54 = v16;
    [v17 setPredicate:v16];
    v74 = 0;
    v53 = v17;
    v18 = [v12 executeFetchRequest:v17 error:&v74];
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
    v55 = v12;
    v57 = v10;
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
          v28 = [v27 achievementDescription];
          v29 = [v28 identifier];

          v30 = [v27 achievementDescription];
          v31 = [v30 groupIdentifier];

          if ([v29 length])
          {
            [v21 setObject:v27 forKeyedSubscript:v29];
          }

          if ([v31 length])
          {
            [v21 setObject:v27 forKeyedSubscript:v31];
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
    v58 = v9;
    obj = v9;
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
          v36 = [v35 entries];
          v37 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v36 count]);

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v38 = [v35 entries];
          v39 = [v38 countByEnumeratingWithState:&v62 objects:v76 count:16];
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
                  objc_enumerationMutation(v38);
                }

                v43 = [*(*(&v62 + 1) + 8 * k) internalRepresentation];
                [v37 addObject:v43];
              }

              v40 = [v38 countByEnumeratingWithState:&v62 objects:v76 count:16];
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
    v10 = v57;
    if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, spid, "FriendsWhoHaveThisQuery", "", buf, 2u);
    }

    v47 = [v61 copy];
    v9 = v58;
    v12 = v55;
    v11 = v56;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (void)getAchievementDescriptionsForGameDescriptor:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 823, "[GKGameStatService getAchievementDescriptionsForGameDescriptor:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];

  v12 = [v6 dictionaryForRequest];
  if (!v12)
  {
    v13 = [(GKService *)self clientProxy];
    v12 = [v13 gameDescriptor];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AD888;
  v21[3] = &unk_1003638A0;
  v21[4] = self;
  v14 = v12;
  v22 = v14;
  v15 = v6;
  v23 = v15;
  v16 = v9;
  v24 = v16;
  v17 = v11;
  v25 = v17;
  [v16 performOnManagedObjectContext:v21];
  if (v7)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AE248;
    v18[3] = &unk_100360EB0;
    v20 = v7;
    v19 = v16;
    [v19 notifyOnQueue:v17 block:v18];
  }
}

- (void)fetchAchievementsForGameDescriptor:(id)a3 players:(id)a4 context:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 1;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 903, "[GKGameStatService fetchAchievementsForGameDescriptor:players:context:handler:]"];
  v15 = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:v12 client:v15];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000AE538;
  v28[3] = &unk_100363D08;
  v28[4] = self;
  v17 = v10;
  v29 = v17;
  v18 = v11;
  v30 = v18;
  v19 = v16;
  v31 = v19;
  v32 = v33;
  [v19 performOnManagedObjectContext:v28];
  v20 = [(GKService *)self clientProxy];
  v21 = [v20 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000AEC14;
  v24[3] = &unk_100361A30;
  v22 = v13;
  v26 = v22;
  v23 = v19;
  v25 = v23;
  v27 = v33;
  [v23 notifyOnQueue:v21 block:v24];

  _Block_object_dispose(v33, 8);
}

- (void)achievementsForPlayersAndGameDescriptor:(id)a3 players:(id)a4 context:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 988, "[GKGameStatService achievementsForPlayersAndGameDescriptor:players:context:handler:]"];
  v15 = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:v12 client:v15];

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000AEF38;
  v27[3] = &unk_100364870;
  v17 = v10;
  v28 = v17;
  v18 = v13;
  v32 = v18;
  v33 = v34;
  v19 = v11;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  v31 = self;
  [v20 performOnManagedObjectContext:v27];
  v21 = [(GKService *)self clientProxy];
  v22 = [v21 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000AFB4C;
  v24[3] = &unk_100364898;
  v23 = v20;
  v25 = v23;
  v26 = v34;
  [v23 notifyOnQueue:v22 block:v24];

  _Block_object_dispose(v34, 8);
}

- (void)loadAchievementsForGameDescriptor:(id)a3 players:(id)a4 context:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 _gkMapWithBlock:&stru_1003648B8];
  [(GKGameStatService *)self achievementsForPlayersAndGameDescriptor:v12 players:v13 context:v11 handler:v10];
}

- (void)primeCacheWithAchievementDescriptions:(id)a3 context:(id)a4 gameDescriptor:(id)a5 players:(id)a6 missingPlayers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1110, "[GKGameStatService primeCacheWithAchievementDescriptions:context:gameDescriptor:players:missingPlayers:]"];
  v18 = [v12 transactionGroupWithName:v17];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000AFFFC;
  v37[3] = &unk_100361BF8;
  v37[4] = self;
  v19 = v14;
  v38 = v19;
  v39 = v16;
  v20 = v13;
  v40 = v20;
  v21 = v18;
  v41 = v21;
  v22 = v16;
  [v21 perform:v37];
  v23 = [(GKService *)self clientProxy];
  v24 = [v23 replyQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000B0110;
  v30[3] = &unk_100361F40;
  v31 = v12;
  v32 = v21;
  v33 = self;
  v34 = v19;
  v35 = v15;
  v36 = v20;
  v25 = v20;
  v26 = v15;
  v27 = v19;
  v28 = v21;
  v29 = v12;
  [v29 join:v28 queue:v24 block:v30];
}

- (void)getAchievementsForGameDescriptor:(id)a3 players:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v11 = [GKGameDescriptor alloc];
    v12 = [(GKService *)self clientProxy];
    v13 = [v12 gameDescriptor];
    v8 = [v11 initWithDictionary:v13];
  }

  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1147, "[GKGameStatService getAchievementsForGameDescriptor:players:handler:]"];
  v15 = [(GKService *)self transactionGroupBypassingMultiUserWithName:v14];

  v16 = [v8 bundleIdentifier];
  v17 = [v8 dictionaryForRequest];
  if (v17)
  {
    if (v16)
    {
LABEL_5:
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000B0694;
      v27[3] = &unk_100363068;
      v27[4] = self;
      v28 = v8;
      v29 = v9;
      v18 = v15;
      v30 = v18;
      v31 = v17;
      v32 = v16;
      [v18 performOnManagedObjectContext:v27];
      if (v10)
      {
        v19 = [(GKService *)self clientProxy];
        v20 = [v19 replyQueue];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000B0AD8;
        v24[3] = &unk_100360EB0;
        v26 = v10;
        v25 = v18;
        [v25 notifyOnQueue:v20 block:v24];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v21 = [(GKService *)self clientProxy];
    v17 = [v21 gameDescriptor];

    if (v16)
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

- (void)submitAchievements:(id)a3 whileScreeningChallenges:(BOOL)a4 withEligibleChallenges:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1214, "[GKGameStatService submitAchievements:whileScreeningChallenges:withEligibleChallenges:handler:]"];
  v13 = [(GKService *)self transactionGroupWithName:v12];

  v14 = +[NSDate date];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v15 = [(GKService *)self clientProxy];
  v16 = [v15 replyQueue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000B0DE4;
  v27[3] = &unk_1003646F8;
  v17 = v13;
  v28 = v17;
  v29 = self;
  v18 = v9;
  v30 = v18;
  v32 = v33;
  v19 = v14;
  v31 = v19;
  [v17 performOnQueue:v16 block:v27];

  if (v11)
  {
    v20 = [(GKService *)self clientProxy];
    v21 = [v20 replyQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B16A8;
    v22[3] = &unk_1003649C0;
    v26 = v33;
    v22[4] = self;
    v25 = v11;
    v23 = v17;
    v24 = v18;
    [v23 notifyOnQueue:v21 block:v22];
  }

  _Block_object_dispose(v33, 8);
}

- (void)resetAchievementsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1306, "[GKGameStatService resetAchievementsWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v7 = [(GKService *)self clientProxy];
  v8 = [v7 replyQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B19D4;
  v15[3] = &unk_100360FF0;
  v9 = v6;
  v16 = v9;
  v17 = self;
  [v9 performOnQueue:v8 block:v15];

  if (v4)
  {
    v10 = [(GKService *)self clientProxy];
    v11 = [v10 replyQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B1F30;
    v12[3] = &unk_100360EB0;
    v14 = v4;
    v13 = v9;
    [v13 notifyOnQueue:v11 block:v12];
  }
}

- (void)getLeaderboardForRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 gameBundleID];

  if (!v8)
  {
    v9 = [(GKService *)self clientProxy];
    v10 = [v9 bundleIdentifier];
    [v6 setGameBundleID:v10];
  }

  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1374, "[GKGameStatService getLeaderboardForRequest:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v13 = [(GKService *)self clientProxy];
  v14 = [v13 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B21BC;
  v22[3] = &unk_100360F00;
  v15 = v12;
  v23 = v15;
  v24 = self;
  v16 = v6;
  v25 = v16;
  [v15 performOnQueue:v14 block:v22];

  if (v7)
  {
    v17 = [(GKService *)self clientProxy];
    v18 = [v17 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B24F4;
    v19[3] = &unk_100360EB0;
    v21 = v7;
    v20 = v15;
    [v20 notifyOnQueue:v18 block:v19];
  }
}

- (void)submitScores:(id)a3 whileScreeningChallenges:(BOOL)a4 withEligibleChallenges:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1406, "[GKGameStatService submitScores:whileScreeningChallenges:withEligibleChallenges:handler:]"];
  v14 = [(GKService *)self transactionGroupWithName:v13];

  v15 = +[NSDate date];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v10;
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
  v35 = a4;
  v22 = v11;
  v32 = v22;
  v23 = v14;
  v33 = v23;
  v24 = v12;
  v34 = v24;
  [v23 perform:v30];
  if (v24)
  {
    v25 = [(GKService *)self clientProxy];
    v26 = [v25 replyQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B2D34;
    v27[3] = &unk_100360EB0;
    v29 = v24;
    v28 = v23;
    [v28 notifyOnQueue:v26 block:v27];
  }
}

- (void)cleanUpLeaderboardTitles:(id)a3 set:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v10, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameStatService cleanUpLeaderboardTitles:set:context:]", v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    v14 = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v12, "-[GKGameStatService cleanUpLeaderboardTitles:set:context:]", [v14 UTF8String], 1461);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v16 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
  v17 = [v8 leaderboardTitleMapList];
  v18 = [v17 entries];
  v19 = [v18 _gkMapDictionaryWithKeyPath:@"identifier"];
  [v16 addEntriesFromDictionary:v19];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v7;
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
        v26 = [v25 baseLeaderboardID];
        v27 = [v16 objectForKey:v26];

        v28 = [v27 localizedTitle];
        [v25 setLocalizedTitle:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)fetchLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 setIdentifier:(id)a5 context:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B3184;
  v19[3] = &unk_100364590;
  v20 = a5;
  v21 = v12;
  v22 = v13;
  v23 = a6;
  v24 = self;
  v25 = a7;
  v14 = v25;
  v15 = v23;
  v16 = v13;
  v17 = v12;
  v18 = v20;
  [v15 performBlock:v19];
}

- (void)loadLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 setIdentifier:(id)a5 context:(id)a6 bagKey:(id)a7 handler:(id)a8
{
  v36 = a3;
  v14 = a4;
  v37 = a5;
  v15 = a6;
  v35 = a7;
  v16 = a8;
  v17 = [v14 playerID];

  if (!v17)
  {
    v18 = [NSString stringWithFormat:@"Assertion failed"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    v20 = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (player.playerID != ((void *)0))\n[%s (%s:%d)]", v18, "-[GKGameStatService loadLeaderboardsForGameDescriptor:player:setIdentifier:context:bagKey:handler:]", [v20 UTF8String], 1520);

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
  }

  v22 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1522, "[GKGameStatService loadLeaderboardsForGameDescriptor:player:setIdentifier:context:bagKey:handler:]"];
  v23 = [(GKService *)self clientProxy];
  v24 = [GKCacheTransactionGroup transactionGroupWithName:v22 context:v15 client:v23];

  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v25 = [(GKService *)self clientProxy];
  v26 = [v25 replyQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000B3700;
  v42[3] = &unk_100364AD8;
  v27 = v36;
  v43 = v27;
  v28 = v14;
  v44 = v28;
  v29 = v37;
  v45 = v29;
  v30 = v35;
  v46 = v30;
  v47 = self;
  v50 = v51;
  v31 = v24;
  v48 = v31;
  v32 = v15;
  v49 = v32;
  [v31 performOnQueue:v26 block:v42];

  if (v16)
  {
    v33 = [(GKService *)self clientProxy];
    v34 = [v33 replyQueue];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000B3F08;
    v38[3] = &unk_1003618D8;
    v40 = v16;
    v41 = v51;
    v39 = v31;
    [v39 notifyOnQueue:v34 block:v38];
  }

  _Block_object_dispose(v51, 8);
}

- (void)getLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 setIdentifier:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1615, "[GKGameStatService getLeaderboardsForGameDescriptor:player:setIdentifier:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];

  if (v10)
  {
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = [GKGameDescriptor alloc];
    v19 = [(GKService *)self clientProxy];
    v20 = [v19 gameDescriptor];
    v21 = [v18 initWithDictionary:v20];

    v10 = v21;
    if (v11)
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
  v22 = [v15 context];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000B44B4;
  v52[3] = &unk_100364898;
  v53 = v15;
  v54 = &v55;
  [v22 performBlockAndWait:v52];

  v11 = v56[5];
  _Block_object_dispose(&v55, 8);

  if (v11)
  {
LABEL_6:
    v23 = [v11 playerID];

    if (v23)
    {
      v24 = [(GKService *)self clientProxy];
      [v24 replyQueue];
      v25 = v17;
      v27 = v26 = v12;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000B462C;
      v41[3] = &unk_100362FC8;
      v28 = &v42;
      v11 = v11;
      v42 = v11;
      v36 = v10;
      v43 = v10;
      v37 = v15;
      v29 = v15;
      v44 = v29;
      v45 = self;
      v30 = v26;
      v31 = v26;
      v17 = v25;
      v46 = v31;
      v47 = v25;
      [v29 performOnQueue:v27 block:v41];

      if (v13)
      {
        v32 = [(GKService *)self clientProxy];
        v33 = [v32 replyQueue];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000B5148;
        v38[3] = &unk_100360EB0;
        v40 = v13;
        v39 = v29;
        [v39 notifyOnQueue:v33 block:v38];
      }

      v12 = v30;
      v10 = v36;
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
      v49 = v13;
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
  v51 = v13;
  dispatch_async(&_dispatch_main_q, v50);
  v11 = 0;
LABEL_20:
}

- (void)setDefaultLeaderboardID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1715, "[GKGameStatService setDefaultLeaderboardID:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B53AC;
  v19[3] = &unk_100360F00;
  v12 = v6;
  v20 = v12;
  v21 = self;
  v13 = v9;
  v22 = v13;
  [v13 performOnQueue:v11 block:v19];

  if (v7)
  {
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000B5758;
    v16[3] = &unk_100360EB0;
    v18 = v7;
    v17 = v13;
    [v17 notifyOnQueue:v15 block:v16];
  }
}

- (void)getDefaultLeaderboardIDWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)GKGameServicePrivate serviceFromService:self];
  v6 = [(GKService *)self clientProxy];
  v7 = [v6 bundleIdentifier];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B58F4;
  v10[3] = &unk_1003626B0;
  v11 = v4;
  v9 = v4;
  [v5 getGameStatsForPlayer:0 bundleIDs:v8 handler:v10];
}

- (void)getLeaderboardSetsForGameDescriptor:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1764, "[GKGameStatService getLeaderboardSetsForGameDescriptor:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [v6 dictionaryForRequest];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = [(GKService *)self clientProxy];
    v11 = [v12 gameDescriptor];

    if (!v11)
    {
      v19 = [NSError userErrorForCode:17 underlyingError:0];
      [v9 setError:v19];

      v14 = 0;
      goto LABEL_5;
    }
  }

  v13 = [v9 context];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B5C14;
  v23[3] = &unk_100362008;
  v23[4] = self;
  v24 = v6;
  v25 = v9;
  v14 = v11;
  v26 = v14;
  [v13 performBlockAndWait:v23];

LABEL_5:
  v15 = [(GKService *)self clientProxy];
  v16 = [v15 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B6470;
  v20[3] = &unk_100360EB0;
  v21 = v9;
  v22 = v7;
  v17 = v9;
  v18 = v7;
  [v17 notifyOnQueue:v16 block:v20];
}

- (void)updateLeaderboardsWithIDs:(id)a3 gameDescriptor:(id)a4 player:(id)a5 context:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v14 playerID];

  if (!v17)
  {
    v18 = [NSString stringWithFormat:@"Assertion failed"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    [v19 lastPathComponent];
    v20 = v16;
    v21 = v13;
    v23 = v22 = v12;
    v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (player.playerID != ((void *)0))\n[%s (%s:%d)]", v18, "-[GKGameStatService updateLeaderboardsWithIDs:gameDescriptor:player:context:handler:]", [v23 UTF8String], 1853);

    v12 = v22;
    v13 = v21;
    v16 = v20;

    [NSException raise:@"GameKit Exception" format:@"%@", v24];
  }

  v25 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1855, "[GKGameStatService updateLeaderboardsWithIDs:gameDescriptor:player:context:handler:]"];
  v26 = [(GKService *)self clientProxy];
  v27 = [GKCacheTransactionGroup transactionGroupWithName:v25 context:v15 client:v26];

  v28 = [(GKService *)self clientProxy];
  v29 = [v28 replyQueue];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000B6868;
  v40[3] = &unk_100362FC8;
  v30 = v13;
  v41 = v30;
  v31 = v14;
  v42 = v31;
  v32 = v12;
  v43 = v32;
  v44 = self;
  v33 = v27;
  v45 = v33;
  v34 = v15;
  v46 = v34;
  [v33 performOnQueue:v29 block:v40];

  if (v16)
  {
    v35 = [(GKService *)self clientProxy];
    v36 = [v35 replyQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B6E5C;
    v37[3] = &unk_100360EB0;
    v39 = v16;
    v38 = v33;
    [v38 notifyOnQueue:v36 block:v37];
  }
}

+ (id)_alternativeIdentifierForLeaderboardID:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"grp."])
  {
    [v3 substringFromIndex:4];
  }

  else
  {
    [@"grp." stringByAppendingString:v3];
  }
  v4 = ;

  return v4;
}

+ (id)leaderboards:(id)a3 filteredWithIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B7030;
    v11[3] = &unk_100364C18;
    v12 = v8;
    v13 = a1;
    v9 = [v6 _gkFilterWithBlock:v11];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)updateAndFilterHiddenLeaderboards:(id)a3 bundleID:(id)a4 requestedLeaderboardIDs:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[GKDataRequestManager sharedManager];
  v11 = [v10 isDevSignedForBundleID:v8];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B72BC;
  v22[3] = &unk_100364C38;
  v23 = v11;
  [v9 enumerateObjectsUsingBlock:v22];
  v12 = [NSMutableArray arrayWithArray:v9];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000B7324;
  v20 = &unk_100364C60;
  v21 = v7;
  v13 = v7;
  v14 = [NSPredicate predicateWithBlock:&v17];
  [v12 filterUsingPredicate:{v14, v17, v18, v19, v20}];
  v15 = [v12 copy];

  return v15;
}

- (void)getLeaderboardsForGameDescriptor:(id)a3 player:(id)a4 leaderboardIDs:(id)a5 setIdentifier:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1983, "[GKGameStatService getLeaderboardsForGameDescriptor:player:leaderboardIDs:setIdentifier:handler:]"];
  v18 = [(GKService *)self transactionGroupWithName:v17];

  v19 = [(GKService *)self clientProxy];
  v20 = [v19 replyQueue];

  if (v12 || (v21 = [GKGameDescriptor alloc], -[GKService clientProxy](self, "clientProxy"), v22 = objc_claimAutoreleasedReturnValue(), [v22 gameDescriptor], v23 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v21, "initWithDictionary:", v23), v23, v22, v12))
  {
    if (v13)
    {
LABEL_6:
      v26 = [v13 playerID];

      if (v26)
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000B7B64;
        v36[3] = &unk_100364B78;
        v27 = v18;
        v37 = v27;
        v38 = self;
        v12 = v12;
        v39 = v12;
        v13 = v13;
        v40 = v13;
        v41 = v15;
        v42 = v14;
        v28 = v20;
        v43 = v28;
        [v27 performOnQueue:v28 block:v36];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000B9214;
        v33[3] = &unk_100361270;
        v34 = v27;
        v35 = v16;
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
        v45 = v16;
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
    v24 = [v18 context];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B79EC;
    v48[3] = &unk_100364898;
    v49 = v18;
    v50 = &v51;
    [v24 performBlockAndWait:v48];

    v25 = v52[5];
    if (v25)
    {
      v13 = v25;

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
    v47 = v16;
    dispatch_async(&_dispatch_main_q, v46);

    _Block_object_dispose(&v51, 8);
    v13 = 0;
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
    v58 = v16;
    dispatch_async(&_dispatch_main_q, v57);

    v12 = 0;
  }

LABEL_14:
}

- (void)fetchLeaderboardWithRecordID:(id)a3 context:(id)a4 handler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B93C4;
  v10[3] = &unk_100360FC8;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v11;
  [v8 performBlock:v10];
}

- (void)loadPreviousInstanceForLeaderboard:(id)a3 gameDescriptor:(id)a4 player:(id)a5 playerPlayedIn:(BOOL)a6 context:(id)a7 handler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v37 = a8;
  v17 = [v15 playerID];

  if (!v17)
  {
    v18 = [NSString stringWithFormat:@"Assertion failed"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameStatService.m"];
    v20 = [v19 lastPathComponent];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (player.playerID != ((void *)0))\n[%s (%s:%d)]", v18, "-[GKGameStatService loadPreviousInstanceForLeaderboard:gameDescriptor:player:playerPlayedIn:context:handler:]", [v20 UTF8String], 2186);

    [NSException raise:@"GameKit Exception" format:@"%@", v21];
  }

  v22 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2188, "[GKGameStatService loadPreviousInstanceForLeaderboard:gameDescriptor:player:playerPlayedIn:context:handler:]"];
  v23 = [(GKService *)self clientProxy];
  v24 = [GKCacheTransactionGroup transactionGroupWithName:v22 context:v16 client:v23];

  v25 = [(GKService *)self clientProxy];
  v26 = [v25 replyQueue];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000B97A8;
  v41[3] = &unk_100363C68;
  v42 = v14;
  v43 = v15;
  v48 = a6;
  v44 = v13;
  v45 = self;
  v27 = v24;
  v46 = v27;
  v47 = v16;
  v28 = v16;
  v29 = v13;
  v30 = v15;
  v31 = v14;
  [v27 performOnQueue:v26 block:v41];

  v32 = [(GKService *)self clientProxy];
  v33 = [v32 replyQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000B9D04;
  v38[3] = &unk_100360EB0;
  v39 = v27;
  v40 = v37;
  v34 = v27;
  v35 = v37;
  [v34 notifyOnQueue:v33 block:v38];
}

- (void)getPreviousInstanceForLeaderboard:(id)a3 gameDescriptor:(id)a4 player:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2244, "[GKGameStatService getPreviousInstanceForLeaderboard:gameDescriptor:player:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  if (v11 || (v16 = [GKGameDescriptor alloc], -[GKService clientProxy](self, "clientProxy"), v17 = objc_claimAutoreleasedReturnValue(), [v17 gameDescriptor], v18 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v16, "initWithDictionary:", v18), v18, v17, v11))
  {
    if (v12)
    {
LABEL_6:
      v21 = [v12 playerID];

      if (v21)
      {
        v22 = [(GKService *)self clientProxy];
        v23 = [v22 replyQueue];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000BA514;
        v34[3] = &unk_100361BF8;
        v24 = v15;
        v35 = v24;
        v36 = self;
        v37 = v10;
        v11 = v11;
        v38 = v11;
        v12 = v12;
        v39 = v12;
        [v24 performOnQueue:v23 block:v34];

        v25 = [(GKService *)self clientProxy];
        v26 = [v25 replyQueue];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000BAAA4;
        v31[3] = &unk_100361270;
        v32 = v24;
        v33 = v13;
        [v32 notifyOnQueue:v26 block:v31];

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
        v41 = v13;
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
    v19 = [v15 context];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000BA39C;
    v44[3] = &unk_100364898;
    v45 = v15;
    v46 = &v47;
    [v19 performBlockAndWait:v44];

    v20 = v48[5];
    if (v20)
    {
      v12 = v20;

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
    v43 = v13;
    dispatch_async(&_dispatch_main_q, v42);

    _Block_object_dispose(&v47, 8);
    v12 = 0;
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
    v54 = v13;
    dispatch_async(&_dispatch_main_q, v53);

    v11 = 0;
  }

LABEL_14:
}

- (void)updatePlayersForEntries:(id)a3 localPlayerEntry:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [NSMutableArray arrayWithArray:v10];
  v12 = v11;
  if (v8)
  {
    [v11 addObject:v8];
  }

  v13 = +[GKAnonymousPlayerInternal internalRepresentation];
  v14 = [v10 _gkValuesForKeyPath:@"player.playerID"];

  v15 = [(GKService *)GKProfileService serviceFromService:self];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000BACE8;
  v19[3] = &unk_100361A58;
  v20 = v12;
  v21 = v13;
  v22 = v9;
  v16 = v9;
  v17 = v13;
  v18 = v12;
  [v15 getProfilesForPlayerIDs:v14 handler:v19];
}

- (void)generateEntriesFromServerResponse:(id)a3 context:(id)a4 leaderboard:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2361, "[GKGameStatService generateEntriesFromServerResponse:context:leaderboard:handler:]"];
  v15 = [(GKService *)self clientProxy];
  v16 = [GKCacheTransactionGroup transactionGroupWithName:v14 context:v13 client:v15];

  if (v10)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000BB0D4;
    v24[3] = &unk_1003626D8;
    v25 = v10;
    v26 = v11;
    v27 = v16;
    v28 = self;
    [v27 performOnManagedObjectContext:v24];
  }

  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000BB7FC;
  v21[3] = &unk_100360EB0;
  v22 = v16;
  v23 = v12;
  v19 = v16;
  v20 = v12;
  [v19 notifyOnQueue:v18 block:v21];
}

- (void)loadEntriesForLeaderboard:(id)a3 gameDescriptor:(id)a4 localPlayer:(id)a5 playerScope:(int64_t)a6 timeScope:(int64_t)a7 range:(_NSRange)a8 players:(id)a9 context:(id)a10 locale:(id)a11 handler:(id)a12
{
  v15 = a3;
  v16 = a4;
  v34 = a5;
  v17 = a9;
  v18 = a10;
  v33 = a11;
  v41 = a12;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2448, "[GKGameStatService loadEntriesForLeaderboard:gameDescriptor:localPlayer:playerScope:timeScope:range:players:context:locale:handler:]"];
  v20 = [(GKService *)self clientProxy];
  v21 = [GKCacheTransactionGroup transactionGroupWithName:v19 context:v18 client:v20];

  v22 = [v17 _gkMapWithBlock:&stru_100364E80];
  v23 = [(GKService *)self clientProxy];
  v24 = [v23 replyQueue];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000BBC14;
  v45[3] = &unk_100364EF8;
  v45[4] = self;
  v46 = v15;
  v47 = v16;
  v48 = v34;
  v54 = a6;
  v55 = a7;
  v56 = a8;
  v49 = v17;
  v50 = v33;
  v25 = v21;
  v51 = v25;
  v52 = v22;
  v53 = v18;
  v40 = v18;
  v38 = v22;
  v36 = v33;
  v35 = v17;
  v26 = v34;
  v27 = v16;
  v28 = v15;
  [v25 performOnQueue:v24 block:v45];

  v29 = [(GKService *)self clientProxy];
  v30 = [v29 replyQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000BC3E8;
  v42[3] = &unk_100360EB0;
  v43 = v25;
  v44 = v41;
  v31 = v25;
  v32 = v41;
  [v31 notifyOnQueue:v30 block:v42];
}

- (id)playerScopeName:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"BIDIRECTIONAL-FRIENDS";
  }

  else
  {
    return @"ALL";
  }
}

- (id)timeScopeName:(int64_t)a3
{
  v3 = @"AllTIME";
  if (a3 == 1)
  {
    v3 = @"THISWEEK";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"TODAY";
  }
}

- (void)getEntriesForLeaderboard:(id)a3 gameDescriptor:(id)a4 localPlayer:(id)a5 playerScope:(int64_t)a6 timeScope:(int64_t)a7 range:(_NSRange)a8 players:(id)a9 locale:(id)a10 handler:(id)a11
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v45 = a9;
  v17 = a10;
  v18 = a11;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2557, "[GKGameStatService getEntriesForLeaderboard:gameDescriptor:localPlayer:playerScope:timeScope:range:players:locale:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  if (!v15)
  {
    v21 = v20;
    v22 = [GKGameDescriptor alloc];
    v23 = [(GKService *)self clientProxy];
    v24 = [v23 gameDescriptor];
    v15 = [v22 initWithDictionary:v24];

    if (!v15)
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
      v76 = v18;
      dispatch_async(&_dispatch_main_q, v75);

      v15 = 0;
      goto LABEL_21;
    }

    v20 = v21;
  }

  v25 = [v14 baseLeaderboardID];
  v26 = [v25 length];

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

    v37 = [(GKService *)self clientProxy];
    v38 = [v37 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BCCBC;
    block[3] = &unk_100360FA0;
    v74 = v18;
    dispatch_async(v38, block);

    v35 = v74;
    goto LABEL_20;
  }

  if (v16)
  {
LABEL_8:
    v29 = [v16 playerID];

    if (v29)
    {
      v30 = [(GKService *)self clientProxy];
      [v30 replyQueue];
      v31 = v42 = v20;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000BCEBC;
      v49[3] = &unk_100364F20;
      v32 = v42;
      v50 = v32;
      v51 = self;
      v52 = v14;
      v15 = v15;
      v53 = v15;
      v16 = v16;
      v54 = v16;
      v57 = a6;
      v58 = a7;
      v59 = a8;
      v55 = v45;
      v56 = v17;
      [v32 performOnQueue:v31 block:v49];

      v33 = [(GKService *)self clientProxy];
      v34 = [v33 replyQueue];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000BD1D8;
      v46[3] = &unk_100360EB0;
      v48 = v18;
      v47 = v32;
      [v47 notifyOnQueue:v34 block:v46];

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
      v61 = v18;
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
  v27 = [v20 context];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000BCD34;
  v64[3] = &unk_100364898;
  v65 = v20;
  v66 = &v67;
  [v27 performBlockAndWait:v64];

  v28 = v68[5];
  if (v28)
  {
    v16 = v28;

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
  v63 = v18;
  dispatch_async(&_dispatch_main_q, v62);

  _Block_object_dispose(&v67, 8);
  v16 = 0;
LABEL_21:
}

- (void)submitScore:(int64_t)a3 context:(unint64_t)a4 leaderboardIDs:(id)a5 forPlayer:(id)a6 whileScreeningChallenges:(BOOL)a7 withEligibleChallenges:(id)a8 gameDescriptor:(id)a9 handler:(id)a10
{
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2634, "[GKGameStatService submitScore:context:leaderboardIDs:forPlayer:whileScreeningChallenges:withEligibleChallenges:gameDescriptor:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  v21 = +[NSDate date];
  [NSMutableSet setWithArray:v14];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000BD4D4;
  v32[3] = &unk_100364FE8;
  v33 = v21;
  v35 = v34 = v15;
  v36 = v20;
  v37 = self;
  v38 = v14;
  v44 = a7;
  v39 = v16;
  v40 = v17;
  v42 = a3;
  v43 = a4;
  v41 = v18;
  v31 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v14;
  v25 = v20;
  v26 = v35;
  v27 = v15;
  v28 = v21;
  [(GKGameStatService *)self getLeaderboardsForGameDescriptor:v22 player:v27 leaderboardIDs:v26 setIdentifier:0 handler:v32];
}

- (void)submitInstanceScore:(int64_t)a3 context:(unint64_t)a4 leaderboard:(id)a5 forPlayer:(id)a6 whileScreeningChallenges:(BOOL)a7 withEligibleChallenges:(id)a8 handler:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2748, "[GKGameStatService submitInstanceScore:context:leaderboard:forPlayer:whileScreeningChallenges:withEligibleChallenges:handler:]"];
  v20 = [(GKService *)self transactionGroupWithName:v19];

  +[NSDate date];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000BE7E4;
  v21 = v31[3] = &unk_100364F48;
  v32 = v21;
  v22 = v15;
  v33 = v22;
  v38 = a3;
  v39 = a4;
  v23 = v16;
  v34 = v23;
  v35 = self;
  v40 = a7;
  v24 = v17;
  v36 = v24;
  v25 = v20;
  v37 = v25;
  [v25 perform:v31];
  if (v18)
  {
    v26 = [(GKService *)self clientProxy];
    v27 = [v26 replyQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000BED94;
    v28[3] = &unk_100361270;
    v29 = v25;
    v30 = v18;
    [v29 notifyOnQueue:v27 block:v28];
  }
}

- (void)createLeaderboardBasedOnID:(id)a3 recipients:(id)a4 inviteMessage:(id)a5 context:(id)a6 duration:(double)a7 handler:(id)a8
{
  if (a8)
  {
    (*(a8 + 2))(a8, 0, 0, a7);
  }
}

- (void)startLeaderboardWithID:(id)a3 handler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)endLeaderboardWithID:(id)a3 handler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)deleteLeaderboardWithID:(id)a3 handler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)getLeaderboardSummaryForGameDescriptor:(id)a3 localPlayer:(id)a4 baseLeaderboardID:(id)a5 leaderboardID:(id)a6 timeScope:(int64_t)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v14 && v16)
  {
    v28 = a7;
    v19 = objc_alloc_init(NSMutableDictionary);
    v20 = [v14 dictionaryForRequest];
    v21 = [(GKService *)self clientProxy];
    v22 = [v21 isInDebugMode];

    v29 = v20;
    if (v22)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000BF1A0;
      v32[3] = &unk_100365010;
      v32[4] = self;
      v23 = &v33;
      v33 = v18;
      [(GKGameStatService *)self getFakeLeaderboardSummaryWithGameDescriptor:v14 localPlayer:v15 baseLeaderboardID:v16 leaderboardID:v17 timeScope:v28 completionHandler:v32];
    }

    else
    {
      [v19 setObject:v20 forKeyedSubscript:@"game"];
      v24 = [v15 playerID];
      [v19 setObject:v24 forKeyedSubscript:@"player-id"];

      [v19 setObject:v16 forKeyedSubscript:@"base-leaderboard-id"];
      if ([v17 length])
      {
        [v19 setObject:v17 forKeyedSubscript:@"leaderboard-id"];
      }

      v25 = [(GKGameStatService *)self timeScopeName:v28, v28, v20];
      [v19 setObject:v25 forKeyedSubscript:@"time-scope"];

      v26 = +[GKNetworkRequestManager commonNetworkRequestManager];
      v27 = [(GKService *)self clientProxy];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000BF2B8;
      v30[3] = &unk_1003627C8;
      v30[4] = self;
      v23 = &v31;
      v31 = v18;
      [v26 issueRequest:v19 bagKey:@"gk-get-leaderboard-summary" clientProxy:v27 handler:v30];
    }
  }

  else
  {
    v19 = [NSError userErrorForCode:16 underlyingError:0];
    (*(v18 + 2))(v18, 0, v19);
  }
}

- (void)loadFakeLeaderboardEntriesWithLeaderboard:(GKLeaderboardInternal *)a3 game:(GKGameDescriptor *)a4 localPlayer:(GKPlayerInternal *)a5 playerScope:(int64_t)a6 timeScope:(int64_t)a7 range:(_NSRange)a8 players:(NSArray *)a9 locale:(NSLocale *)a10 completionHandler:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  *(v16 + 56) = a8;
  *(v16 + 72) = a9;
  *(v16 + 80) = a10;
  *(v16 + 88) = v15;
  *(v16 + 96) = self;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v21 = a10;
  v22 = self;

  sub_10028022C(&unk_1002C8E58, v16);
}

- (void)getFakeLeaderboardSummaryWithGameDescriptor:(GKGameDescriptor *)a3 localPlayer:(GKPlayerInternal *)a4 baseLeaderboardID:(NSString *)a5 leaderboardID:(NSString *)a6 timeScope:(int64_t)a7 completionHandler:(id)a8
{
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = v14;
  v15[8] = self;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = self;

  sub_10028022C(&unk_1002C8DD8, v15);
}

- (void)getFakeLeaderboardsWithGameDescriptor:(GKGameDescriptor *)a3 player:(GKPlayerInternal *)a4 setIdentifier:(NSString *)a5 leaderboardIDs:(NSArray *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = self;

  sub_10028022C(&unk_1002C8D88, v13);
}

- (void)submitFakeScoresWithScore:(int64_t)a3 context:(int64_t)a4 leaderboardIDs:(NSArray *)a5 player:(GKPlayerInternal *)a6 screenChallenges:(BOOL)a7 eligibleChallenges:(NSArray *)a8 game:(GKGameDescriptor *)a9 completionHandler:(id)a10
{
  v17 = _Block_copy(a10);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  *(v18 + 56) = a8;
  *(v18 + 64) = a9;
  *(v18 + 72) = v17;
  *(v18 + 80) = self;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = self;

  sub_10028022C(&unk_1002C8D70, v18);
}

- (void)submitFakeScoresWithScores:(NSArray *)a3 bundleID:(NSString *)a4 screenChallenges:(BOOL)a5 eligibleChallenges:(NSArray *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = self;

  sub_10028022C(&unk_1002C8D38, v13);
}

@end
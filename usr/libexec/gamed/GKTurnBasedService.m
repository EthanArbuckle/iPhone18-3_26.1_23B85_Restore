@interface GKTurnBasedService
- (id)_requestForTurnBasedSubmitValues:(id)a3 withServerLabel:(id)a4 sessionID:(id)a5;
- (id)privateDatabase;
- (id)turnsForParticipantIndexes:(id)a3 turnTimeout:(double)a4;
- (void)_determineCompatibleBundleIDForAppID:(id)a3 bundleVersion:(id)a4 shortBundleVersion:(id)a5 platform:(id)a6 withCompletionHandler:(id)a7;
- (void)_determineCompatibleGamesForMatches:(id)a3 dispatchGroup:(id)a4;
- (void)_determineTurnBasedBadgeCountFromList:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)_updateGamesForTurnBasedMatches:(id)a3 dispatchGroup:(id)a4;
- (void)_updatePlayersForMatches:(id)a3 group:(id)a4;
- (void)acceptInviteForTurnBasedMatch:(id)a3 handler:(id)a4;
- (void)cancelExchange:(id)a3 withMessage:(id)a4 match:(id)a5 handler:(id)a6;
- (void)completeTurnBasedMatch:(id)a3 scores:(id)a4 achievements:(id)a5 handler:(id)a6;
- (void)createTurnBasedGameForMatchRequest:(id)a3 individualMessages:(id)a4 handler:(id)a5;
- (void)declineInviteForTurnBasedMatch:(id)a3 handler:(id)a4;
- (void)fetchDetailsForTurnBasedMatchIDs:(id)a3 includeGameData:(BOOL)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7;
- (void)fetchTurnBasedMatchesForGame:(id)a3 context:(id)a4 handler:(id)a5;
- (void)getDetailsForTurnBasedMatchIDs:(id)a3 includeGameData:(BOOL)a4 prefetchOnly:(BOOL)a5 handler:(id)a6;
- (void)getNextTurnBasedEventWithHandler:(id)a3;
- (void)getTurnBasedMatchesAndCompatibleBundleID:(BOOL)a3 handler:(id)a4;
- (void)loadDetailsForTurnBasedMatchIDs:(id)a3 includeGameData:(BOOL)a4 context:(id)a5 handler:(id)a6;
- (void)loadTurnBasedMatchesForGame:(id)a3 loadDetails:(BOOL)a4 prefetchOnly:(BOOL)a5 context:(id)a6 handler:(id)a7;
- (void)loadURLWithTBGMatch:(id)a3 player:(id)a4 matchRequest:(id)a5 handler:(id)a6;
- (void)removeTurnBasedMatch:(id)a3 handler:(id)a4;
- (void)replyToExchange:(id)a3 withMessage:(id)a4 data:(id)a5 match:(id)a6 handler:(id)a7;
- (void)reserveShareParticipantSlots:(int64_t)a3 minPlayerCount:(int64_t)a4 maxPlayerCount:(int64_t)a5 andInvitePlayers:(id)a6 withMessage:(id)a7 forMatch:(id)a8 handler:(id)a9;
- (void)resignFromTurnBasedGame:(id)a3 outcome:(unint64_t)a4 handler:(id)a5;
- (void)saveDataForTurnBasedMatch:(id)a3 resolvedExchangeIDs:(id)a4 handler:(id)a5;
- (void)saveRecord:(id)a3 withHandler:(id)a4;
- (void)sendExchangeToParticipants:(id)a3 data:(id)a4 message:(id)a5 timeout:(double)a6 match:(id)a7 handler:(id)a8;
- (void)sendReminderToParticipants:(id)a3 message:(id)a4 match:(id)a5 handler:(id)a6;
- (void)sendRequest:(id)a3 forBagKey:(id)a4 exchange:(id)a5 matchID:(id)a6 responseHandler:(id)a7;
- (void)submitTurnForTurnBasedMatch:(id)a3 nextParticipantIndexes:(id)a4 turnTimeout:(double)a5 handler:(id)a6;
@end

@implementation GKTurnBasedService

- (id)turnsForParticipantIndexes:(id)a3 turnTimeout:(double)a4
{
  v5 = a3;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v20[1] = @"turn-timeout";
        v21[0] = v11;
        v20[0] = @"next-turn-on-slot";
        v12 = [NSNumber _gkServerTimeInterval:a4];
        v21[1] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        [v6 addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)createTurnBasedGameForMatchRequest:(id)a3 individualMessages:(id)a4 handler:(id)a5
{
  v7 = a3;
  v63 = a4;
  v58 = a5;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v95 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TBGame - createTurnBasedGameForMatchRequest, matchRequest = %@", buf, 0xCu);
  }

  v10 = +[NSMutableArray array];
  v11 = [v7 recipients];
  v12 = [v11 count];

  v60 = v7;
  if (v12)
  {
    v78 = 0uLL;
    v79 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    obj = [v7 recipients];
    v13 = [obj countByEnumeratingWithState:&v76 objects:v93 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v77;
      v16 = &GKPrimaryCredentialDidChangeNotification_ptr;
      v17 = @"player-id";
      v61 = *v77;
      do
      {
        v18 = 0;
        do
        {
          if (*v77 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v76 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v91[0] = v17;
            v20 = v19;
            v21 = [v20 hostPlayerInternal];
            [v21 playerID];
            v23 = v22 = v17;
            v92[0] = v23;
            v91[1] = @"guest-id";
            [v20 guestIdentifier];
            v24 = v10;
            v26 = v25 = v16;
            v92[1] = v26;
            v27 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];

            v16 = v25;
            v10 = v24;

            v17 = v22;
            v15 = v61;
LABEL_16:

            goto LABEL_17;
          }

          v21 = [v19 playerID];
          v28 = [v63 objectForKeyedSubscript:v21];
          if (v28 || ([v60 inviteMessage], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v20 = v28;
            v89[0] = v17;
            v89[1] = @"invite-message";
            v90[0] = v21;
            v90[1] = v28;
            v27 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
            goto LABEL_16;
          }

          v87 = v17;
          v88 = v21;
          v27 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
LABEL_17:

          [v10 addObject:v27];
          v18 = v18 + 1;
        }

        while (v14 != v18);
        v29 = [obj countByEnumeratingWithState:&v76 objects:v93 count:16];
        v14 = v29;
      }

      while (v29);
    }
  }

  else
  {
    v74 = 0uLL;
    v75 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    obj = [v7 recipientPlayerIDs];
    v30 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = v7;
      v33 = *v73;
      do
      {
        v34 = 0;
        do
        {
          if (*v73 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v72 + 1) + 8 * v34);
          v36 = [v63 objectForKeyedSubscript:v35];
          if (v36 || ([v32 inviteMessage], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v37 = v36;
            v84[0] = @"player-id";
            v84[1] = @"invite-message";
            v85[0] = v35;
            v85[1] = v36;
            v38 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
          }

          else
          {
            v82 = @"player-id";
            v83 = v35;
            v38 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          }

          [v10 addObject:v38];

          v34 = v34 + 1;
        }

        while (v31 != v34);
        v39 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
        v31 = v39;
      }

      while (v39);
    }
  }

  v80[0] = @"bucket-id";
  v40 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v60 playerGroup]);
  v81[0] = v40;
  v80[1] = @"min-players";
  v41 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v60 maxPlayers]);
  v81[1] = v41;
  v80[2] = @"max-players";
  v42 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v60 maxPlayers]);
  v81[2] = v42;
  v80[3] = @"player-attributes";
  v43 = [v60 playerAttributes];
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0xFFFFFFFFLL;
  }

  v45 = [NSString stringWithFormat:@"%#.8x", v44];
  v80[4] = @"invites";
  v81[3] = v45;
  v81[4] = v10;
  v46 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:5];
  v47 = [NSMutableDictionary dictionaryWithDictionary:v46];

  if ([v60 isPreloadedMatch])
  {
    [v47 setObject:&off_1003824A8 forKeyedSubscript:@"can-match-existing-session"];
  }

  v48 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 151, "[GKTurnBasedService createTurnBasedGameForMatchRequest:individualMessages:handler:]"];
  v49 = [(GKService *)self transactionGroupWithName:v48];

  v50 = [(GKService *)self clientProxy];
  v51 = [v50 replyQueue];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000DFB60;
  v68[3] = &unk_100360F00;
  v52 = v49;
  v69 = v52;
  v70 = self;
  v71 = v47;
  v53 = v47;
  [v52 performOnQueue:v51 block:v68];

  v54 = [(GKService *)self clientProxy];
  v55 = [v54 replyQueue];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000DFECC;
  v64[3] = &unk_100360FC8;
  v65 = v52;
  v66 = self;
  v67 = v58;
  v56 = v58;
  v57 = v52;
  [v57 notifyOnQueue:v55 block:v64];
}

- (void)_updateGamesForTurnBasedMatches:(id)a3 dispatchGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [v6 _gkDistinctValuesForKeyPath:@"bundleID"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E04D8;
    v9[3] = &unk_100360F00;
    v10 = v9[4] = self;
    v11 = v6;
    v8 = v10;
    [v7 perform:v9];
  }
}

- (void)_determineCompatibleGamesForMatches:(id)a3 dispatchGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    v9 = v8;
    v10 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 226, "[GKTurnBasedService _determineCompatibleGamesForMatches:dispatchGroup:]"];
    v11 = [GKDispatchGroup dispatchGroupWithName:v10];

    v12 = [NSMutableDictionary dictionaryWithCapacity:v9];
    v13 = [NSMutableDictionary dictionaryWithCapacity:v9];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000E0AEC;
    v45[3] = &unk_100365F48;
    v14 = v12;
    v46 = v14;
    v48 = v9;
    v15 = v13;
    v47 = v15;
    v25 = v6;
    [v6 enumerateObjectsUsingBlock:v45];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v14;
    v27 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v27)
    {
      v26 = *v42;
      do
      {
        v16 = 0;
        do
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v16;
          v17 = *(*(&v41 + 1) + 8 * v16);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v18 = [obj objectForKeyedSubscript:v17];
          v19 = [v18 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v38;
            do
            {
              for (i = 0; i != v20; i = i + 1)
              {
                if (*v38 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v37 + 1) + 8 * i);
                v35[0] = _NSConcreteStackBlock;
                v35[1] = 3221225472;
                v35[2] = sub_1000E0DE0;
                v35[3] = &unk_100361F90;
                v35[4] = self;
                v35[5] = v17;
                v35[6] = v23;
                v36 = v15;
                [v11 perform:v35];
              }

              v20 = [v18 countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v20);
          }

          v16 = v29 + 1;
        }

        while ((v29 + 1) != v27);
        v27 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v27);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E1110;
    v30[3] = &unk_100361F90;
    v31 = v11;
    v32 = self;
    v6 = v25;
    v33 = v25;
    v34 = v7;
    v24 = v11;
    [v34 perform:v30];
  }
}

- (void)_determineCompatibleBundleIDForAppID:(id)a3 bundleVersion:(id)a4 shortBundleVersion:(id)a5 platform:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 298, "[GKTurnBasedService _determineCompatibleBundleIDForAppID:bundleVersion:shortBundleVersion:platform:withCompletionHandler:]"];
  v18 = [GKDispatchGroup dispatchGroupWithName:v17];

  [v18 setObject:v12 forKeyedSubscript:@"bundleID"];
  [v18 setObject:v13 forKeyedSubscript:@"bundleVersion"];
  [v18 setObject:v14 forKeyedSubscript:@"shortBundleVersion"];
  [v18 setObject:v15 forKeyedSubscript:@"platform"];
  if (v12 && v13 | v14)
  {
    v33[0] = @"bundle-id";
    v33[1] = @"bundle-version";
    v34[0] = v12;
    v34[1] = v13;
    v19 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    v20 = [NSMutableDictionary dictionaryWithDictionary:v19];

    if (v14)
    {
      [v20 setObject:v14 forKeyedSubscript:@"short-bundle-version"];
    }

    v21 = [v15 integerValue];
    if (v21)
    {
      v22 = [GKGameDescriptor stringForPlatform:v21];
      [v20 setObject:v22 forKeyedSubscript:@"platform"];
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000E1598;
    v29[3] = &unk_100361F90;
    v29[4] = self;
    v30 = v20;
    v31 = v12;
    v32 = v18;
    v23 = v20;
    [v32 perform:v29];
  }

  if (v16)
  {
    v24 = [(GKService *)self clientProxy];
    v25 = [v24 replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E1A6C;
    v26[3] = &unk_100360EB0;
    v28 = v16;
    v27 = v18;
    [v27 notifyOnQueue:v25 block:v26];
  }
}

- (void)_determineTurnBasedBadgeCountFromList:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E1C18;
  v12[3] = &unk_100360F78;
  v13 = a4;
  v14 = v8;
  v15 = self;
  v16 = a5;
  v9 = v16;
  v10 = v8;
  v11 = v13;
  [v11 performBlock:v12];
}

- (void)loadTurnBasedMatchesForGame:(id)a3 loadDetails:(BOOL)a4 prefetchOnly:(BOOL)a5 context:(id)a6 handler:(id)a7
{
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 418, "[GKTurnBasedService loadTurnBasedMatchesForGame:loadDetails:prefetchOnly:context:handler:]"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E20D4;
  v17[3] = &unk_100360F78;
  v18 = v11;
  v19 = self;
  v20 = v10;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  [GKActivity named:v13 execute:v17];
}

- (void)fetchTurnBasedMatchesForGame:(id)a3 context:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 472, "[GKTurnBasedService fetchTurnBasedMatchesForGame:context:handler:]"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E2A30;
  v15[3] = &unk_100360F78;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [GKActivity named:v11 execute:v15];
}

- (void)getTurnBasedMatchesAndCompatibleBundleID:(BOOL)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 505, "[GKTurnBasedService getTurnBasedMatchesAndCompatibleBundleID:handler:]"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E3038;
  v9[3] = &unk_1003660D8;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [GKActivity named:v7 execute:v9];
}

- (void)_updatePlayersForMatches:(id)a3 group:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E3FE0;
  v7[3] = &unk_100360FF0;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [a4 perform:v7];
}

- (void)fetchDetailsForTurnBasedMatchIDs:(id)a3 includeGameData:(BOOL)a4 responseKind:(int)a5 context:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 644, "[GKTurnBasedService fetchDetailsForTurnBasedMatchIDs:includeGameData:responseKind:context:handler:]"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E48B0;
  v19[3] = &unk_1003661F0;
  v20 = v13;
  v21 = self;
  v24 = a5;
  v25 = a4;
  v22 = v12;
  v23 = v14;
  v16 = v14;
  v17 = v12;
  v18 = v13;
  [GKActivity named:v15 execute:v19];
}

- (void)loadDetailsForTurnBasedMatchIDs:(id)a3 includeGameData:(BOOL)a4 context:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 710, "[GKTurnBasedService loadDetailsForTurnBasedMatchIDs:includeGameData:context:handler:]"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E5164;
  v17[3] = &unk_100361C40;
  v18 = v11;
  v19 = self;
  v22 = a4;
  v20 = v10;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  [GKActivity named:v13 execute:v17];
}

- (void)getDetailsForTurnBasedMatchIDs:(id)a3 includeGameData:(BOOL)a4 prefetchOnly:(BOOL)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 776, "[GKTurnBasedService getDetailsForTurnBasedMatchIDs:includeGameData:prefetchOnly:handler:]"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E5BC4;
  v15[3] = &unk_100366378;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v15[4] = self;
  v19 = a4;
  v13 = v10;
  v14 = v11;
  [GKActivity named:v12 execute:v15];
}

- (void)acceptInviteForTurnBasedMatch:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 838, "[GKTurnBasedService acceptInviteForTurnBasedMatch:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  v11 = [v6 matchID];
  v12 = &off_1002C2000;
  if (v11)
  {
    v35 = v10;
    v36 = v7;
    v13 = +[GKBulletinController sharedController];
    [v13 clearTurnBasedBulletinsForMatchID:v11];

    v37 = self;
    v14 = [(GKService *)self transport];
    v15 = [v14 credential];
    v16 = [v15 playerInternal];
    v17 = [v16 playerID];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v6;
    v18 = [v6 participants];
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v51;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          v24 = [v23 playerID];
          if ([v24 isEqualToString:v17])
          {
            v25 = [v23 status];
            v26 = [v25 isEqualToString:@"Invited"];

            if (!v26)
            {
              v6 = v38;
              self = v37;
              v10 = v35;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v20);
    }

    self = v37;
    v27 = [(GKService *)v37 clientProxy];
    v28 = [v27 replyQueue];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000E69A4;
    v44[3] = &unk_100361BF8;
    v10 = v35;
    v45 = v35;
    v46 = v11;
    v6 = v38;
    v47 = v38;
    v48 = v8;
    v49 = v37;
    [v45 performOnQueue:v28 block:v44];

    v18 = v45;
LABEL_15:

    v7 = v36;
    v12 = &off_1002C2000;
  }

  else
  {
    v29 = [NSError userErrorForCode:17 underlyingError:0];
    [v10 setError:v29];
  }

  v30 = [(GKService *)self clientProxy];
  v31 = [v30 replyQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = *(v12 + 304);
  v39[2] = sub_1000E6DBC;
  v39[3] = &unk_100360F78;
  v40 = v11;
  v41 = v10;
  v42 = self;
  v43 = v7;
  v32 = v7;
  v33 = v10;
  v34 = v11;
  [v33 notifyOnQueue:v31 block:v39];
}

- (void)declineInviteForTurnBasedMatch:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 933, "[GKTurnBasedService declineInviteForTurnBasedMatch:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  v11 = [v6 matchID];
  if (v11)
  {
    v12 = +[GKBulletinController sharedController];
    [v12 clearTurnBasedBulletinsForMatchID:v11];

    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E7764;
    v26[3] = &unk_100361BF8;
    v27 = v10;
    v28 = v11;
    v29 = v6;
    v30 = v8;
    v31 = self;
    [v27 performOnQueue:v14 block:v26];
  }

  else
  {
    v15 = [NSError userErrorForCode:17 underlyingError:0];
    [v10 setError:v15];
  }

  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E7BB0;
  v21[3] = &unk_100360F78;
  v22 = v11;
  v23 = v10;
  v24 = self;
  v25 = v7;
  v18 = v7;
  v19 = v10;
  v20 = v11;
  [v19 notifyOnQueue:v17 block:v21];
}

- (void)removeTurnBasedMatch:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 997, "[GKTurnBasedService removeTurnBasedMatch:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  v11 = [v7 matchID];

  if (v11)
  {
    v12 = +[GKBulletinController sharedController];
    [v12 clearTurnBasedBulletinsForMatchID:v11];

    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E8318;
    v26[3] = &unk_100361F90;
    v27 = v10;
    v28 = v11;
    v29 = v8;
    v30 = self;
    [v27 performOnQueue:v14 block:v26];
  }

  else
  {
    v15 = [NSError userErrorForCode:17 underlyingError:0];
    [v10 setError:v15];
  }

  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E86BC;
  v21[3] = &unk_100360F78;
  v22 = v11;
  v23 = v10;
  v24 = self;
  v25 = v6;
  v18 = v6;
  v19 = v10;
  v20 = v11;
  [v19 notifyOnQueue:v17 block:v21];
}

- (void)submitTurnForTurnBasedMatch:(id)a3 nextParticipantIndexes:(id)a4 turnTimeout:(double)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[GKDataRequestManager sharedManager];
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1051, "[GKTurnBasedService submitTurnForTurnBasedMatch:nextParticipantIndexes:turnTimeout:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  v16 = [v10 matchID];
  v17 = &off_1002C2000;
  if (v16)
  {
    v18 = +[GKBulletinController sharedController];
    [v18 clearTurnBasedBulletinsForMatchID:v16];

    v19 = [(GKService *)self clientProxy];
    v20 = [v19 replyQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E8C00;
    v32[3] = &unk_100365840;
    v33 = v15;
    v34 = v16;
    v35 = v10;
    v36 = self;
    v37 = v11;
    v39 = a5;
    v38 = v13;
    v17 = &off_1002C2000;
    [v33 performOnQueue:v20 block:v32];
  }

  else
  {
    v21 = [NSError userErrorForCode:17 underlyingError:0];
    [v15 setError:v21];
  }

  v22 = [(GKService *)self clientProxy];
  v23 = [v22 replyQueue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = *(v17 + 304);
  v27[2] = sub_1000E9120;
  v27[3] = &unk_100360F78;
  v28 = v16;
  v29 = v15;
  v30 = self;
  v31 = v12;
  v24 = v12;
  v25 = v15;
  v26 = v16;
  [v25 notifyOnQueue:v23 block:v27];
}

- (void)saveDataForTurnBasedMatch:(id)a3 resolvedExchangeIDs:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GKDataRequestManager sharedManager];
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1127, "[GKTurnBasedService saveDataForTurnBasedMatch:resolvedExchangeIDs:handler:]"];
  v13 = [(GKService *)self transactionGroupWithName:v12];

  v14 = [v8 matchID];
  v15 = &off_1002C2000;
  if (v14)
  {
    v16 = +[GKBulletinController sharedController];
    [v16 clearTurnBasedBulletinsForMatchID:v14];

    v17 = [(GKService *)self clientProxy];
    v18 = [v17 replyQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E98B8;
    v30[3] = &unk_100362FC8;
    v31 = v13;
    v32 = v14;
    v33 = v8;
    v34 = v9;
    v35 = v11;
    v36 = self;
    v15 = &off_1002C2000;
    [v31 performOnQueue:v18 block:v30];
  }

  else
  {
    v19 = [NSError userErrorForCode:17 underlyingError:0];
    [v13 setError:v19];
  }

  v20 = [(GKService *)self clientProxy];
  v21 = [v20 replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = *(v15 + 304);
  v25[2] = sub_1000E9D9C;
  v25[3] = &unk_100360F78;
  v26 = v14;
  v27 = v13;
  v28 = self;
  v29 = v10;
  v22 = v10;
  v23 = v13;
  v24 = v14;
  [v23 notifyOnQueue:v21 block:v25];
}

- (void)resignFromTurnBasedGame:(id)a3 outcome:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[GKDataRequestManager sharedManager];
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1188, "[GKTurnBasedService resignFromTurnBasedGame:outcome:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  v13 = [v9 matchID];

  if (v13)
  {
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 replyQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000EA3EC;
    v27[3] = &unk_100364F98;
    v28 = v12;
    v29 = v13;
    v31 = self;
    v32 = a4;
    v30 = v10;
    [v28 performOnQueue:v15 block:v27];
  }

  else
  {
    v16 = [NSError userErrorForCode:17 underlyingError:0];
    [v12 setError:v16];
  }

  v17 = [(GKService *)self clientProxy];
  v18 = [v17 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000EA79C;
  v22[3] = &unk_100360F78;
  v23 = v13;
  v24 = v12;
  v25 = self;
  v26 = v8;
  v19 = v8;
  v20 = v12;
  v21 = v13;
  [v20 notifyOnQueue:v18 block:v22];
}

- (id)_requestForTurnBasedSubmitValues:(id)a3 withServerLabel:(id)a4 sessionID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v25 = a5;
  v9 = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 playerID];
        if (v16)
        {
          v17 = [v9 objectForKeyedSubscript:v16];
          if (!v17)
          {
            v17 = +[NSMutableDictionary dictionary];
            [v17 setObject:v16 forKeyedSubscript:@"player-id"];
            v18 = +[NSMutableArray array];
            [v17 setObject:v18 forKeyedSubscript:v8];

            [v9 setObject:v17 forKeyedSubscript:v16];
          }

          v19 = [v17 objectForKeyedSubscript:v8];
          v20 = [v15 serverRepresentation];
          [v19 addObject:v20];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v21 = v25;
    v30[0] = @"session-id";
    v30[1] = @"players";
    v31[0] = v25;
    v22 = [v9 allValues];
    v31[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  else
  {
    v23 = 0;
    v21 = v25;
  }

  return v23;
}

- (void)completeTurnBasedMatch:(id)a3 scores:(id)a4 achievements:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28 = +[GKDataRequestManager sharedManager];
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1272, "[GKTurnBasedService completeTurnBasedMatch:scores:achievements:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  v16 = [v10 matchID];
  if (v16)
  {
    v17 = +[GKBulletinController sharedController];
    [v17 clearTurnBasedBulletinsForMatchID:v16];

    v18 = [(GKService *)self clientProxy];
    v19 = [v18 replyQueue];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000EB1E4;
    v36[3] = &unk_100361BF8;
    v37 = v15;
    v38 = v16;
    v39 = v10;
    v40 = v28;
    v41 = self;
    [v37 performOnQueue:v19 block:v36];
  }

  else
  {
    v20 = [NSError userErrorForCode:17 underlyingError:0];
    [v15 setError:v20];
  }

  v21 = [(GKService *)self clientProxy];
  v22 = [v21 replyQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000EB6E8;
  v29[3] = &unk_100364590;
  v30 = v16;
  v31 = self;
  v32 = v15;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  v26 = v15;
  v27 = v16;
  [v26 notifyOnQueue:v22 block:v29];
}

- (void)sendExchangeToParticipants:(id)a3 data:(id)a4 message:(id)a5 timeout:(double)a6 match:(id)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v38 = a8;
  v18 = [v17 matchID];
  v19 = +[GKDataRequestManager sharedManager];
  v20 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1376, "[GKTurnBasedService sendExchangeToParticipants:data:message:timeout:match:handler:]"];
  v21 = [(GKService *)self transactionGroupWithName:v20];

  v22 = [v21 context];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000EC428;
  v53[3] = &unk_1003610B8;
  v23 = v18;
  v54 = v23;
  v24 = v21;
  v55 = v24;
  [v22 performBlockAndWait:v53];

  v25 = [(GKService *)self clientProxy];
  v26 = [v25 replyQueue];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000EC4D4;
  v44[3] = &unk_1003644A0;
  v45 = v17;
  v46 = v14;
  v52 = a6;
  v47 = v16;
  v48 = v15;
  v49 = v19;
  v50 = self;
  v27 = v24;
  v51 = v27;
  v37 = v19;
  v28 = v15;
  v29 = v16;
  v30 = v14;
  v31 = v17;
  [v27 performOnQueue:v26 block:v44];

  v32 = [(GKService *)self clientProxy];
  v33 = [v32 replyQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000EC774;
  v39[3] = &unk_100360F78;
  v40 = v27;
  v41 = v23;
  v42 = self;
  v43 = v38;
  v34 = v38;
  v35 = v23;
  v36 = v27;
  [v36 notifyOnQueue:v33 block:v39];
}

- (void)sendRequest:(id)a3 forBagKey:(id)a4 exchange:(id)a5 matchID:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[GKDataRequestManager sharedManager];
  v18 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1433, "[GKTurnBasedService sendRequest:forBagKey:exchange:matchID:responseHandler:]"];
  v19 = [(GKService *)self transactionGroupWithName:v18];

  if (v15)
  {
    v20 = [(GKService *)self clientProxy];
    [v20 replyQueue];
    v31 = v14;
    v21 = v17;
    v22 = v13;
    v24 = v23 = v12;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000ECF88;
    v38[3] = &unk_100362FC8;
    v39 = v19;
    v40 = v15;
    v41 = v21;
    v42 = v23;
    v43 = v22;
    v44 = self;
    [v39 performOnQueue:v24 block:v38];

    v12 = v23;
    v13 = v22;
    v17 = v21;
    v14 = v31;
  }

  v25 = [(GKService *)self clientProxy];
  v26 = [v25 replyQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000ED208;
  v32[3] = &unk_100360F28;
  v33 = v15;
  v34 = v19;
  v35 = self;
  v36 = v14;
  v37 = v16;
  v27 = v16;
  v28 = v14;
  v29 = v19;
  v30 = v15;
  [v29 notifyOnQueue:v26 block:v32];
}

- (void)cancelExchange:(id)a3 withMessage:(id)a4 match:(id)a5 handler:(id)a6
{
  v17[0] = @"session-id";
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 matchID];
  v18[0] = v14;
  v18[1] = v13;
  v17[1] = @"request-id";
  v17[2] = @"notification-message";
  v18[2] = v12;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  v16 = [v11 matchID];

  [(GKTurnBasedService *)self sendRequest:v15 forBagKey:@"gk-tb-cancel-request" exchange:v13 matchID:v16 responseHandler:v10];
}

- (void)replyToExchange:(id)a3 withMessage:(id)a4 data:(id)a5 match:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v21[0] = @"session-id";
  v15 = a7;
  v16 = a6;
  v17 = [v16 matchID];
  v22[0] = v17;
  v22[1] = v12;
  v21[1] = @"request-id";
  v21[2] = @"notification-message";
  v22[2] = v13;
  v21[3] = @"data";
  v18 = v14;
  if (!v14)
  {
    v18 = +[NSData data];
  }

  v22[3] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  if (!v14)
  {
  }

  v20 = [v16 matchID];

  [(GKTurnBasedService *)self sendRequest:v19 forBagKey:@"gk-tb-send-reply" exchange:v12 matchID:v20 responseHandler:v15];
}

- (void)getNextTurnBasedEventWithHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "getNextTurnBasedEventWithHandler called", &v21, 2u);
  }

  v7 = [(GKService *)self clientProxy];
  v8 = [v7 gameDescriptor];

  v9 = +[GKBulletinController sharedController];
  v10 = [v9 acceptedInviteManager];

  v11 = [v10 turnBasedInviteForGame:v8];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 matchID];
    v14 = [v12 exchangeID];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = [v12 pushCommand];
  v16 = [v12 userTapped];
  if (v4)
  {
    v17 = v16;
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      v21 = 138413058;
      v22 = v13;
      v23 = 2112;
      if (v17)
      {
        v20 = @"YES";
      }

      v24 = v14;
      v25 = 2048;
      v26 = v15;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "getNextTurnBasedEventWithHandler matchID: %@ exchangeID:%@ command: %ld userTapped:%@", &v21, 0x2Au);
    }

    (*(v4 + 2))(v4, v13, v14, v15, v17, 0);
  }
}

- (void)sendReminderToParticipants:(id)a3 message:(id)a4 match:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1536, "[GKTurnBasedService sendReminderToParticipants:message:match:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  v16 = +[GKDataRequestManager sharedManager];
  v34[0] = @"session-id";
  v17 = [v13 matchID];

  v35[0] = v17;
  v35[1] = v11;
  v34[1] = @"localized-message";
  v34[2] = @"participants";
  v35[2] = v10;
  v34[3] = @"push-token";
  v18 = [v16 pushToken];
  v19 = v18;
  if (!v18)
  {
    v19 = +[NSData data];
  }

  v35[3] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
  if (!v18)
  {
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000EDF10;
  v29[3] = &unk_100361F90;
  v21 = v16;
  v30 = v21;
  v22 = v20;
  v31 = v22;
  v32 = self;
  v23 = v15;
  v33 = v23;
  [v23 perform:v29];
  if (v12)
  {
    v24 = [(GKService *)self clientProxy];
    v25 = [v24 replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000EE05C;
    v26[3] = &unk_100360EB0;
    v28 = v12;
    v27 = v23;
    [v27 notifyOnQueue:v25 block:v26];
  }
}

- (void)loadURLWithTBGMatch:(id)a3 player:(id)a4 matchRequest:(id)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = [GKDispatchGroup dispatchGroupWithName:@"loadRecordURL"];
  v14 = [(GKService *)self clientProxy];
  v15 = [v14 bundleIdentifier];
  [v12 setObject:v15 forKey:@"bundle-id"];

  v16 = [(GKService *)self clientProxy];
  v17 = [v16 bundleVersion];
  [v12 setObject:v17 forKey:@"bundle-version"];

  v18 = [v11 playerID];

  [v12 setObject:v18 forKey:@"playerID"];
  v19 = [(GKService *)self clientProxy];
  v20 = [v19 bundleShortVersion];

  if (v20)
  {
    v21 = [(GKService *)self clientProxy];
    v22 = [v21 bundleShortVersion];
    [v12 setObject:v22 forKey:@"short-bundle-version"];
  }

  v23 = [(GKService *)self clientProxy];
  v24 = [v23 adamID];

  if (v24)
  {
    v25 = [(GKService *)self clientProxy];
    v26 = [v25 adamID];
    [v12 setObject:v26 forKey:@"adam-id"];
  }

  v27 = [v9 matchID];

  if (v27)
  {
    v28 = [v9 matchID];
    [v12 setObject:v28 forKey:@"session-id"];
  }

  v29 = [NSNumber numberWithInt:1];
  [v12 setObject:v29 forKey:@"turn-count"];

  [v12 setObject:&off_1003824D8 forKey:@"invite-type"];
  v30 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  v31 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.legacygaming.invites" ownerName:CKCurrentUserDefaultName];
  v32 = [[CKRecord alloc] initWithRecordType:@"LegacyMultiplayerInvites" zoneID:v31];
  [v32 setObject:v30 forKeyedSubscript:@"connectionData"];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000EE4B4;
  v40[3] = &unk_100360F00;
  v41 = v32;
  v42 = self;
  v33 = v13;
  v43 = v33;
  v34 = v32;
  [v33 perform:v40];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000EE700;
  v37[3] = &unk_100360EB0;
  v38 = v33;
  v39 = v10;
  v35 = v33;
  v36 = v10;
  [v35 notifyOnQueue:&_dispatch_main_q block:v37];
}

- (void)reserveShareParticipantSlots:(int64_t)a3 minPlayerCount:(int64_t)a4 maxPlayerCount:(int64_t)a5 andInvitePlayers:(id)a6 withMessage:(id)a7 forMatch:(id)a8 handler:(id)a9
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1623, "[GKTurnBasedService reserveShareParticipantSlots:minPlayerCount:maxPlayerCount:andInvitePlayers:withMessage:forMatch:handler:]"];
  v19 = [(GKService *)self transactionGroupWithName:v18];

  v20 = [(GKService *)self clientProxy];
  v21 = [v20 replyQueue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000EE9E8;
  v34[3] = &unk_100366408;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v35 = v16;
  v36 = v14;
  v37 = v15;
  v38 = self;
  v22 = v19;
  v39 = v22;
  v23 = v15;
  v24 = v14;
  v25 = v16;
  [v22 performOnQueue:v21 block:v34];

  v26 = [(GKService *)self clientProxy];
  v27 = [v26 replyQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000EEDC0;
  v31[3] = &unk_100360EB0;
  v32 = v22;
  v33 = v17;
  v28 = v22;
  v29 = v17;
  [v28 notifyOnQueue:v27 block:v31];
}

- (id)privateDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (void)saveRecord:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CKModifyRecordsOperation alloc];
  v19 = v6;
  v9 = [NSArray arrayWithObjects:&v19 count:1];
  v10 = [v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

  v11 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v10 setConfiguration:v11];

  [v10 setSavePolicy:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000EF020;
  v15[3] = &unk_100366430;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v12 = v7;
  v13 = v6;
  [v10 setModifyRecordsCompletionBlock:v15];
  v14 = [(GKTurnBasedService *)self privateDatabase];
  [v14 addOperation:v10];
}

@end
@interface GKTurnBasedService
- (id)_requestForTurnBasedSubmitValues:(id)values withServerLabel:(id)label sessionID:(id)d;
- (id)privateDatabase;
- (id)turnsForParticipantIndexes:(id)indexes turnTimeout:(double)timeout;
- (void)_determineCompatibleBundleIDForAppID:(id)d bundleVersion:(id)version shortBundleVersion:(id)bundleVersion platform:(id)platform withCompletionHandler:(id)handler;
- (void)_determineCompatibleGamesForMatches:(id)matches dispatchGroup:(id)group;
- (void)_determineTurnBasedBadgeCountFromList:(id)list context:(id)context completionHandler:(id)handler;
- (void)_updateGamesForTurnBasedMatches:(id)matches dispatchGroup:(id)group;
- (void)_updatePlayersForMatches:(id)matches group:(id)group;
- (void)acceptInviteForTurnBasedMatch:(id)match handler:(id)handler;
- (void)cancelExchange:(id)exchange withMessage:(id)message match:(id)match handler:(id)handler;
- (void)completeTurnBasedMatch:(id)match scores:(id)scores achievements:(id)achievements handler:(id)handler;
- (void)createTurnBasedGameForMatchRequest:(id)request individualMessages:(id)messages handler:(id)handler;
- (void)declineInviteForTurnBasedMatch:(id)match handler:(id)handler;
- (void)fetchDetailsForTurnBasedMatchIDs:(id)ds includeGameData:(BOOL)data responseKind:(int)kind context:(id)context handler:(id)handler;
- (void)fetchTurnBasedMatchesForGame:(id)game context:(id)context handler:(id)handler;
- (void)getDetailsForTurnBasedMatchIDs:(id)ds includeGameData:(BOOL)data prefetchOnly:(BOOL)only handler:(id)handler;
- (void)getNextTurnBasedEventWithHandler:(id)handler;
- (void)getTurnBasedMatchesAndCompatibleBundleID:(BOOL)d handler:(id)handler;
- (void)loadDetailsForTurnBasedMatchIDs:(id)ds includeGameData:(BOOL)data context:(id)context handler:(id)handler;
- (void)loadTurnBasedMatchesForGame:(id)game loadDetails:(BOOL)details prefetchOnly:(BOOL)only context:(id)context handler:(id)handler;
- (void)loadURLWithTBGMatch:(id)match player:(id)player matchRequest:(id)request handler:(id)handler;
- (void)removeTurnBasedMatch:(id)match handler:(id)handler;
- (void)replyToExchange:(id)exchange withMessage:(id)message data:(id)data match:(id)match handler:(id)handler;
- (void)reserveShareParticipantSlots:(int64_t)slots minPlayerCount:(int64_t)count maxPlayerCount:(int64_t)playerCount andInvitePlayers:(id)players withMessage:(id)message forMatch:(id)match handler:(id)handler;
- (void)resignFromTurnBasedGame:(id)game outcome:(unint64_t)outcome handler:(id)handler;
- (void)saveDataForTurnBasedMatch:(id)match resolvedExchangeIDs:(id)ds handler:(id)handler;
- (void)saveRecord:(id)record withHandler:(id)handler;
- (void)sendExchangeToParticipants:(id)participants data:(id)data message:(id)message timeout:(double)timeout match:(id)match handler:(id)handler;
- (void)sendReminderToParticipants:(id)participants message:(id)message match:(id)match handler:(id)handler;
- (void)sendRequest:(id)request forBagKey:(id)key exchange:(id)exchange matchID:(id)d responseHandler:(id)handler;
- (void)submitTurnForTurnBasedMatch:(id)match nextParticipantIndexes:(id)indexes turnTimeout:(double)timeout handler:(id)handler;
@end

@implementation GKTurnBasedService

- (id)turnsForParticipantIndexes:(id)indexes turnTimeout:(double)timeout
{
  indexesCopy = indexes;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [indexesCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = indexesCopy;
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
        v12 = [NSNumber _gkServerTimeInterval:timeout];
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

- (void)createTurnBasedGameForMatchRequest:(id)request individualMessages:(id)messages handler:(id)handler
{
  requestCopy = request;
  messagesCopy = messages;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v95 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TBGame - createTurnBasedGameForMatchRequest, matchRequest = %@", buf, 0xCu);
  }

  v10 = +[NSMutableArray array];
  recipients = [requestCopy recipients];
  v12 = [recipients count];

  v60 = requestCopy;
  if (v12)
  {
    v78 = 0uLL;
    v79 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    obj = [requestCopy recipients];
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
            hostPlayerInternal = [v20 hostPlayerInternal];
            [hostPlayerInternal playerID];
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

          hostPlayerInternal = [v19 playerID];
          v28 = [messagesCopy objectForKeyedSubscript:hostPlayerInternal];
          if (v28 || ([v60 inviteMessage], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v20 = v28;
            v89[0] = v17;
            v89[1] = @"invite-message";
            v90[0] = hostPlayerInternal;
            v90[1] = v28;
            v27 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
            goto LABEL_16;
          }

          v87 = v17;
          v88 = hostPlayerInternal;
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
    obj = [requestCopy recipientPlayerIDs];
    v30 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = requestCopy;
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
          v36 = [messagesCopy objectForKeyedSubscript:v35];
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
  playerAttributes = [v60 playerAttributes];
  if (playerAttributes)
  {
    v44 = playerAttributes;
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

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000DFB60;
  v68[3] = &unk_100360F00;
  v52 = v49;
  v69 = v52;
  selfCopy = self;
  v71 = v47;
  v53 = v47;
  [v52 performOnQueue:replyQueue block:v68];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000DFECC;
  v64[3] = &unk_100360FC8;
  v65 = v52;
  selfCopy2 = self;
  v67 = handlerCopy;
  v56 = handlerCopy;
  v57 = v52;
  [v57 notifyOnQueue:replyQueue2 block:v64];
}

- (void)_updateGamesForTurnBasedMatches:(id)matches dispatchGroup:(id)group
{
  matchesCopy = matches;
  groupCopy = group;
  if ([matchesCopy count])
  {
    [matchesCopy _gkDistinctValuesForKeyPath:@"bundleID"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E04D8;
    v9[3] = &unk_100360F00;
    v10 = v9[4] = self;
    v11 = matchesCopy;
    v8 = v10;
    [groupCopy perform:v9];
  }
}

- (void)_determineCompatibleGamesForMatches:(id)matches dispatchGroup:(id)group
{
  matchesCopy = matches;
  groupCopy = group;
  v8 = [matchesCopy count];
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
    v25 = matchesCopy;
    [matchesCopy enumerateObjectsUsingBlock:v45];
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
    selfCopy = self;
    matchesCopy = v25;
    v33 = v25;
    v34 = groupCopy;
    v24 = v11;
    [v34 perform:v30];
  }
}

- (void)_determineCompatibleBundleIDForAppID:(id)d bundleVersion:(id)version shortBundleVersion:(id)bundleVersion platform:(id)platform withCompletionHandler:(id)handler
{
  dCopy = d;
  versionCopy = version;
  bundleVersionCopy = bundleVersion;
  platformCopy = platform;
  handlerCopy = handler;
  v17 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 298, "[GKTurnBasedService _determineCompatibleBundleIDForAppID:bundleVersion:shortBundleVersion:platform:withCompletionHandler:]"];
  v18 = [GKDispatchGroup dispatchGroupWithName:v17];

  [v18 setObject:dCopy forKeyedSubscript:@"bundleID"];
  [v18 setObject:versionCopy forKeyedSubscript:@"bundleVersion"];
  [v18 setObject:bundleVersionCopy forKeyedSubscript:@"shortBundleVersion"];
  [v18 setObject:platformCopy forKeyedSubscript:@"platform"];
  if (dCopy && versionCopy | bundleVersionCopy)
  {
    v33[0] = @"bundle-id";
    v33[1] = @"bundle-version";
    v34[0] = dCopy;
    v34[1] = versionCopy;
    v19 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    v20 = [NSMutableDictionary dictionaryWithDictionary:v19];

    if (bundleVersionCopy)
    {
      [v20 setObject:bundleVersionCopy forKeyedSubscript:@"short-bundle-version"];
    }

    integerValue = [platformCopy integerValue];
    if (integerValue)
    {
      v22 = [GKGameDescriptor stringForPlatform:integerValue];
      [v20 setObject:v22 forKeyedSubscript:@"platform"];
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000E1598;
    v29[3] = &unk_100361F90;
    v29[4] = self;
    v30 = v20;
    v31 = dCopy;
    v32 = v18;
    v23 = v20;
    [v32 perform:v29];
  }

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E1A6C;
    v26[3] = &unk_100360EB0;
    v28 = handlerCopy;
    v27 = v18;
    [v27 notifyOnQueue:replyQueue block:v26];
  }
}

- (void)_determineTurnBasedBadgeCountFromList:(id)list context:(id)context completionHandler:(id)handler
{
  listCopy = list;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E1C18;
  v12[3] = &unk_100360F78;
  contextCopy = context;
  v14 = listCopy;
  selfCopy = self;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = listCopy;
  v11 = contextCopy;
  [v11 performBlock:v12];
}

- (void)loadTurnBasedMatchesForGame:(id)game loadDetails:(BOOL)details prefetchOnly:(BOOL)only context:(id)context handler:(id)handler
{
  gameCopy = game;
  contextCopy = context;
  handlerCopy = handler;
  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 418, "[GKTurnBasedService loadTurnBasedMatchesForGame:loadDetails:prefetchOnly:context:handler:]"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E20D4;
  v17[3] = &unk_100360F78;
  v18 = contextCopy;
  selfCopy = self;
  v20 = gameCopy;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = gameCopy;
  v16 = contextCopy;
  [GKActivity named:v13 execute:v17];
}

- (void)fetchTurnBasedMatchesForGame:(id)game context:(id)context handler:(id)handler
{
  gameCopy = game;
  contextCopy = context;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 472, "[GKTurnBasedService fetchTurnBasedMatchesForGame:context:handler:]"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E2A30;
  v15[3] = &unk_100360F78;
  v16 = contextCopy;
  selfCopy = self;
  v18 = gameCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = gameCopy;
  v14 = contextCopy;
  [GKActivity named:v11 execute:v15];
}

- (void)getTurnBasedMatchesAndCompatibleBundleID:(BOOL)d handler:(id)handler
{
  handlerCopy = handler;
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 505, "[GKTurnBasedService getTurnBasedMatchesAndCompatibleBundleID:handler:]"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E3038;
  v9[3] = &unk_1003660D8;
  v9[4] = self;
  v10 = handlerCopy;
  dCopy = d;
  v8 = handlerCopy;
  [GKActivity named:v7 execute:v9];
}

- (void)_updatePlayersForMatches:(id)matches group:(id)group
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E3FE0;
  v7[3] = &unk_100360FF0;
  matchesCopy = matches;
  selfCopy = self;
  v6 = matchesCopy;
  [group perform:v7];
}

- (void)fetchDetailsForTurnBasedMatchIDs:(id)ds includeGameData:(BOOL)data responseKind:(int)kind context:(id)context handler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 644, "[GKTurnBasedService fetchDetailsForTurnBasedMatchIDs:includeGameData:responseKind:context:handler:]"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E48B0;
  v19[3] = &unk_1003661F0;
  v20 = contextCopy;
  selfCopy = self;
  kindCopy = kind;
  dataCopy = data;
  v22 = dsCopy;
  v23 = handlerCopy;
  v16 = handlerCopy;
  v17 = dsCopy;
  v18 = contextCopy;
  [GKActivity named:v15 execute:v19];
}

- (void)loadDetailsForTurnBasedMatchIDs:(id)ds includeGameData:(BOOL)data context:(id)context handler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 710, "[GKTurnBasedService loadDetailsForTurnBasedMatchIDs:includeGameData:context:handler:]"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E5164;
  v17[3] = &unk_100361C40;
  v18 = contextCopy;
  selfCopy = self;
  dataCopy = data;
  v20 = dsCopy;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = dsCopy;
  v16 = contextCopy;
  [GKActivity named:v13 execute:v17];
}

- (void)getDetailsForTurnBasedMatchIDs:(id)ds includeGameData:(BOOL)data prefetchOnly:(BOOL)only handler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 776, "[GKTurnBasedService getDetailsForTurnBasedMatchIDs:includeGameData:prefetchOnly:handler:]"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E5BC4;
  v15[3] = &unk_100366378;
  v16 = dsCopy;
  v17 = handlerCopy;
  onlyCopy = only;
  v15[4] = self;
  dataCopy = data;
  v13 = dsCopy;
  v14 = handlerCopy;
  [GKActivity named:v12 execute:v15];
}

- (void)acceptInviteForTurnBasedMatch:(id)match handler:(id)handler
{
  matchCopy = match;
  handlerCopy = handler;
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 838, "[GKTurnBasedService acceptInviteForTurnBasedMatch:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  matchID = [matchCopy matchID];
  v12 = &off_1002C2000;
  if (matchID)
  {
    v35 = v10;
    v36 = handlerCopy;
    v13 = +[GKBulletinController sharedController];
    [v13 clearTurnBasedBulletinsForMatchID:matchID];

    selfCopy = self;
    transport = [(GKService *)self transport];
    credential = [transport credential];
    playerInternal = [credential playerInternal];
    playerID = [playerInternal playerID];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = matchCopy;
    participants = [matchCopy participants];
    v19 = [participants countByEnumeratingWithState:&v50 objects:v54 count:16];
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
            objc_enumerationMutation(participants);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          playerID2 = [v23 playerID];
          if ([playerID2 isEqualToString:playerID])
          {
            status = [v23 status];
            v26 = [status isEqualToString:@"Invited"];

            if (!v26)
            {
              matchCopy = v38;
              self = selfCopy;
              v10 = v35;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v20 = [participants countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v20);
    }

    self = selfCopy;
    clientProxy = [(GKService *)selfCopy clientProxy];
    replyQueue = [clientProxy replyQueue];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000E69A4;
    v44[3] = &unk_100361BF8;
    v10 = v35;
    v45 = v35;
    v46 = matchID;
    matchCopy = v38;
    v47 = v38;
    v48 = v8;
    v49 = selfCopy;
    [v45 performOnQueue:replyQueue block:v44];

    participants = v45;
LABEL_15:

    handlerCopy = v36;
    v12 = &off_1002C2000;
  }

  else
  {
    v29 = [NSError userErrorForCode:17 underlyingError:0];
    [v10 setError:v29];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = *(v12 + 304);
  v39[2] = sub_1000E6DBC;
  v39[3] = &unk_100360F78;
  v40 = matchID;
  v41 = v10;
  selfCopy2 = self;
  v43 = handlerCopy;
  v32 = handlerCopy;
  v33 = v10;
  v34 = matchID;
  [v33 notifyOnQueue:replyQueue2 block:v39];
}

- (void)declineInviteForTurnBasedMatch:(id)match handler:(id)handler
{
  matchCopy = match;
  handlerCopy = handler;
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 933, "[GKTurnBasedService declineInviteForTurnBasedMatch:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  matchID = [matchCopy matchID];
  if (matchID)
  {
    v12 = +[GKBulletinController sharedController];
    [v12 clearTurnBasedBulletinsForMatchID:matchID];

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E7764;
    v26[3] = &unk_100361BF8;
    v27 = v10;
    v28 = matchID;
    v29 = matchCopy;
    v30 = v8;
    selfCopy = self;
    [v27 performOnQueue:replyQueue block:v26];
  }

  else
  {
    v15 = [NSError userErrorForCode:17 underlyingError:0];
    [v10 setError:v15];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E7BB0;
  v21[3] = &unk_100360F78;
  v22 = matchID;
  v23 = v10;
  selfCopy2 = self;
  v25 = handlerCopy;
  v18 = handlerCopy;
  v19 = v10;
  v20 = matchID;
  [v19 notifyOnQueue:replyQueue2 block:v21];
}

- (void)removeTurnBasedMatch:(id)match handler:(id)handler
{
  handlerCopy = handler;
  matchCopy = match;
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 997, "[GKTurnBasedService removeTurnBasedMatch:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  matchID = [matchCopy matchID];

  if (matchID)
  {
    v12 = +[GKBulletinController sharedController];
    [v12 clearTurnBasedBulletinsForMatchID:matchID];

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E8318;
    v26[3] = &unk_100361F90;
    v27 = v10;
    v28 = matchID;
    v29 = v8;
    selfCopy = self;
    [v27 performOnQueue:replyQueue block:v26];
  }

  else
  {
    v15 = [NSError userErrorForCode:17 underlyingError:0];
    [v10 setError:v15];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E86BC;
  v21[3] = &unk_100360F78;
  v22 = matchID;
  v23 = v10;
  selfCopy2 = self;
  v25 = handlerCopy;
  v18 = handlerCopy;
  v19 = v10;
  v20 = matchID;
  [v19 notifyOnQueue:replyQueue2 block:v21];
}

- (void)submitTurnForTurnBasedMatch:(id)match nextParticipantIndexes:(id)indexes turnTimeout:(double)timeout handler:(id)handler
{
  matchCopy = match;
  indexesCopy = indexes;
  handlerCopy = handler;
  v13 = +[GKDataRequestManager sharedManager];
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1051, "[GKTurnBasedService submitTurnForTurnBasedMatch:nextParticipantIndexes:turnTimeout:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  matchID = [matchCopy matchID];
  v17 = &off_1002C2000;
  if (matchID)
  {
    v18 = +[GKBulletinController sharedController];
    [v18 clearTurnBasedBulletinsForMatchID:matchID];

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E8C00;
    v32[3] = &unk_100365840;
    v33 = v15;
    v34 = matchID;
    v35 = matchCopy;
    selfCopy = self;
    v37 = indexesCopy;
    timeoutCopy = timeout;
    v38 = v13;
    v17 = &off_1002C2000;
    [v33 performOnQueue:replyQueue block:v32];
  }

  else
  {
    v21 = [NSError userErrorForCode:17 underlyingError:0];
    [v15 setError:v21];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = *(v17 + 304);
  v27[2] = sub_1000E9120;
  v27[3] = &unk_100360F78;
  v28 = matchID;
  v29 = v15;
  selfCopy2 = self;
  v31 = handlerCopy;
  v24 = handlerCopy;
  v25 = v15;
  v26 = matchID;
  [v25 notifyOnQueue:replyQueue2 block:v27];
}

- (void)saveDataForTurnBasedMatch:(id)match resolvedExchangeIDs:(id)ds handler:(id)handler
{
  matchCopy = match;
  dsCopy = ds;
  handlerCopy = handler;
  v11 = +[GKDataRequestManager sharedManager];
  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1127, "[GKTurnBasedService saveDataForTurnBasedMatch:resolvedExchangeIDs:handler:]"];
  v13 = [(GKService *)self transactionGroupWithName:v12];

  matchID = [matchCopy matchID];
  v15 = &off_1002C2000;
  if (matchID)
  {
    v16 = +[GKBulletinController sharedController];
    [v16 clearTurnBasedBulletinsForMatchID:matchID];

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E98B8;
    v30[3] = &unk_100362FC8;
    v31 = v13;
    v32 = matchID;
    v33 = matchCopy;
    v34 = dsCopy;
    v35 = v11;
    selfCopy = self;
    v15 = &off_1002C2000;
    [v31 performOnQueue:replyQueue block:v30];
  }

  else
  {
    v19 = [NSError userErrorForCode:17 underlyingError:0];
    [v13 setError:v19];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = *(v15 + 304);
  v25[2] = sub_1000E9D9C;
  v25[3] = &unk_100360F78;
  v26 = matchID;
  v27 = v13;
  selfCopy2 = self;
  v29 = handlerCopy;
  v22 = handlerCopy;
  v23 = v13;
  v24 = matchID;
  [v23 notifyOnQueue:replyQueue2 block:v25];
}

- (void)resignFromTurnBasedGame:(id)game outcome:(unint64_t)outcome handler:(id)handler
{
  handlerCopy = handler;
  gameCopy = game;
  v10 = +[GKDataRequestManager sharedManager];
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1188, "[GKTurnBasedService resignFromTurnBasedGame:outcome:handler:]"];
  v12 = [(GKService *)self transactionGroupWithName:v11];

  matchID = [gameCopy matchID];

  if (matchID)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000EA3EC;
    v27[3] = &unk_100364F98;
    v28 = v12;
    v29 = matchID;
    selfCopy = self;
    outcomeCopy = outcome;
    v30 = v10;
    [v28 performOnQueue:replyQueue block:v27];
  }

  else
  {
    v16 = [NSError userErrorForCode:17 underlyingError:0];
    [v12 setError:v16];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000EA79C;
  v22[3] = &unk_100360F78;
  v23 = matchID;
  v24 = v12;
  selfCopy2 = self;
  v26 = handlerCopy;
  v19 = handlerCopy;
  v20 = v12;
  v21 = matchID;
  [v20 notifyOnQueue:replyQueue2 block:v22];
}

- (id)_requestForTurnBasedSubmitValues:(id)values withServerLabel:(id)label sessionID:(id)d
{
  valuesCopy = values;
  labelCopy = label;
  dCopy = d;
  v9 = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = valuesCopy;
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
        playerID = [v15 playerID];
        if (playerID)
        {
          v17 = [v9 objectForKeyedSubscript:playerID];
          if (!v17)
          {
            v17 = +[NSMutableDictionary dictionary];
            [v17 setObject:playerID forKeyedSubscript:@"player-id"];
            v18 = +[NSMutableArray array];
            [v17 setObject:v18 forKeyedSubscript:labelCopy];

            [v9 setObject:v17 forKeyedSubscript:playerID];
          }

          v19 = [v17 objectForKeyedSubscript:labelCopy];
          serverRepresentation = [v15 serverRepresentation];
          [v19 addObject:serverRepresentation];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v21 = dCopy;
    v30[0] = @"session-id";
    v30[1] = @"players";
    v31[0] = dCopy;
    allValues = [v9 allValues];
    v31[1] = allValues;
    v23 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  else
  {
    v23 = 0;
    v21 = dCopy;
  }

  return v23;
}

- (void)completeTurnBasedMatch:(id)match scores:(id)scores achievements:(id)achievements handler:(id)handler
{
  matchCopy = match;
  scoresCopy = scores;
  achievementsCopy = achievements;
  handlerCopy = handler;
  v28 = +[GKDataRequestManager sharedManager];
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1272, "[GKTurnBasedService completeTurnBasedMatch:scores:achievements:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  matchID = [matchCopy matchID];
  if (matchID)
  {
    v17 = +[GKBulletinController sharedController];
    [v17 clearTurnBasedBulletinsForMatchID:matchID];

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000EB1E4;
    v36[3] = &unk_100361BF8;
    v37 = v15;
    v38 = matchID;
    v39 = matchCopy;
    v40 = v28;
    selfCopy = self;
    [v37 performOnQueue:replyQueue block:v36];
  }

  else
  {
    v20 = [NSError userErrorForCode:17 underlyingError:0];
    [v15 setError:v20];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000EB6E8;
  v29[3] = &unk_100364590;
  v30 = matchID;
  selfCopy2 = self;
  v32 = v15;
  v33 = scoresCopy;
  v34 = achievementsCopy;
  v35 = handlerCopy;
  v23 = handlerCopy;
  v24 = achievementsCopy;
  v25 = scoresCopy;
  v26 = v15;
  v27 = matchID;
  [v26 notifyOnQueue:replyQueue2 block:v29];
}

- (void)sendExchangeToParticipants:(id)participants data:(id)data message:(id)message timeout:(double)timeout match:(id)match handler:(id)handler
{
  participantsCopy = participants;
  dataCopy = data;
  messageCopy = message;
  matchCopy = match;
  handlerCopy = handler;
  matchID = [matchCopy matchID];
  v19 = +[GKDataRequestManager sharedManager];
  v20 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1376, "[GKTurnBasedService sendExchangeToParticipants:data:message:timeout:match:handler:]"];
  v21 = [(GKService *)self transactionGroupWithName:v20];

  context = [v21 context];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000EC428;
  v53[3] = &unk_1003610B8;
  v23 = matchID;
  v54 = v23;
  v24 = v21;
  v55 = v24;
  [context performBlockAndWait:v53];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000EC4D4;
  v44[3] = &unk_1003644A0;
  v45 = matchCopy;
  v46 = participantsCopy;
  timeoutCopy = timeout;
  v47 = messageCopy;
  v48 = dataCopy;
  v49 = v19;
  selfCopy = self;
  v27 = v24;
  v51 = v27;
  v37 = v19;
  v28 = dataCopy;
  v29 = messageCopy;
  v30 = participantsCopy;
  v31 = matchCopy;
  [v27 performOnQueue:replyQueue block:v44];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000EC774;
  v39[3] = &unk_100360F78;
  v40 = v27;
  v41 = v23;
  selfCopy2 = self;
  v43 = handlerCopy;
  v34 = handlerCopy;
  v35 = v23;
  v36 = v27;
  [v36 notifyOnQueue:replyQueue2 block:v39];
}

- (void)sendRequest:(id)request forBagKey:(id)key exchange:(id)exchange matchID:(id)d responseHandler:(id)handler
{
  requestCopy = request;
  keyCopy = key;
  exchangeCopy = exchange;
  dCopy = d;
  handlerCopy = handler;
  v17 = +[GKDataRequestManager sharedManager];
  v18 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1433, "[GKTurnBasedService sendRequest:forBagKey:exchange:matchID:responseHandler:]"];
  v19 = [(GKService *)self transactionGroupWithName:v18];

  if (dCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    [clientProxy replyQueue];
    v31 = exchangeCopy;
    v21 = v17;
    v22 = keyCopy;
    v24 = v23 = requestCopy;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000ECF88;
    v38[3] = &unk_100362FC8;
    v39 = v19;
    v40 = dCopy;
    v41 = v21;
    v42 = v23;
    v43 = v22;
    selfCopy = self;
    [v39 performOnQueue:v24 block:v38];

    requestCopy = v23;
    keyCopy = v22;
    v17 = v21;
    exchangeCopy = v31;
  }

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000ED208;
  v32[3] = &unk_100360F28;
  v33 = dCopy;
  v34 = v19;
  selfCopy2 = self;
  v36 = exchangeCopy;
  v37 = handlerCopy;
  v27 = handlerCopy;
  v28 = exchangeCopy;
  v29 = v19;
  v30 = dCopy;
  [v29 notifyOnQueue:replyQueue block:v32];
}

- (void)cancelExchange:(id)exchange withMessage:(id)message match:(id)match handler:(id)handler
{
  v17[0] = @"session-id";
  handlerCopy = handler;
  matchCopy = match;
  messageCopy = message;
  exchangeCopy = exchange;
  matchID = [matchCopy matchID];
  v18[0] = matchID;
  v18[1] = exchangeCopy;
  v17[1] = @"request-id";
  v17[2] = @"notification-message";
  v18[2] = messageCopy;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  matchID2 = [matchCopy matchID];

  [(GKTurnBasedService *)self sendRequest:v15 forBagKey:@"gk-tb-cancel-request" exchange:exchangeCopy matchID:matchID2 responseHandler:handlerCopy];
}

- (void)replyToExchange:(id)exchange withMessage:(id)message data:(id)data match:(id)match handler:(id)handler
{
  exchangeCopy = exchange;
  messageCopy = message;
  dataCopy = data;
  v21[0] = @"session-id";
  handlerCopy = handler;
  matchCopy = match;
  matchID = [matchCopy matchID];
  v22[0] = matchID;
  v22[1] = exchangeCopy;
  v21[1] = @"request-id";
  v21[2] = @"notification-message";
  v22[2] = messageCopy;
  v21[3] = @"data";
  v18 = dataCopy;
  if (!dataCopy)
  {
    v18 = +[NSData data];
  }

  v22[3] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  if (!dataCopy)
  {
  }

  matchID2 = [matchCopy matchID];

  [(GKTurnBasedService *)self sendRequest:v19 forBagKey:@"gk-tb-send-reply" exchange:exchangeCopy matchID:matchID2 responseHandler:handlerCopy];
}

- (void)getNextTurnBasedEventWithHandler:(id)handler
{
  handlerCopy = handler;
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

  clientProxy = [(GKService *)self clientProxy];
  gameDescriptor = [clientProxy gameDescriptor];

  v9 = +[GKBulletinController sharedController];
  acceptedInviteManager = [v9 acceptedInviteManager];

  v11 = [acceptedInviteManager turnBasedInviteForGame:gameDescriptor];
  v12 = v11;
  if (v11)
  {
    matchID = [v11 matchID];
    exchangeID = [v12 exchangeID];
  }

  else
  {
    exchangeID = 0;
    matchID = 0;
  }

  pushCommand = [v12 pushCommand];
  userTapped = [v12 userTapped];
  if (handlerCopy)
  {
    v17 = userTapped;
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      v21 = 138413058;
      v22 = matchID;
      v23 = 2112;
      if (v17)
      {
        v20 = @"YES";
      }

      v24 = exchangeID;
      v25 = 2048;
      v26 = pushCommand;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "getNextTurnBasedEventWithHandler matchID: %@ exchangeID:%@ command: %ld userTapped:%@", &v21, 0x2Au);
    }

    (*(handlerCopy + 2))(handlerCopy, matchID, exchangeID, pushCommand, v17, 0);
  }
}

- (void)sendReminderToParticipants:(id)participants message:(id)message match:(id)match handler:(id)handler
{
  participantsCopy = participants;
  messageCopy = message;
  handlerCopy = handler;
  matchCopy = match;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1536, "[GKTurnBasedService sendReminderToParticipants:message:match:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  v16 = +[GKDataRequestManager sharedManager];
  v34[0] = @"session-id";
  matchID = [matchCopy matchID];

  v35[0] = matchID;
  v35[1] = messageCopy;
  v34[1] = @"localized-message";
  v34[2] = @"participants";
  v35[2] = participantsCopy;
  v34[3] = @"push-token";
  pushToken = [v16 pushToken];
  v19 = pushToken;
  if (!pushToken)
  {
    v19 = +[NSData data];
  }

  v35[3] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
  if (!pushToken)
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
  selfCopy = self;
  v23 = v15;
  v33 = v23;
  [v23 perform:v29];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000EE05C;
    v26[3] = &unk_100360EB0;
    v28 = handlerCopy;
    v27 = v23;
    [v27 notifyOnQueue:replyQueue block:v26];
  }
}

- (void)loadURLWithTBGMatch:(id)match player:(id)player matchRequest:(id)request handler:(id)handler
{
  matchCopy = match;
  handlerCopy = handler;
  playerCopy = player;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = [GKDispatchGroup dispatchGroupWithName:@"loadRecordURL"];
  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];
  [v12 setObject:bundleIdentifier forKey:@"bundle-id"];

  clientProxy2 = [(GKService *)self clientProxy];
  bundleVersion = [clientProxy2 bundleVersion];
  [v12 setObject:bundleVersion forKey:@"bundle-version"];

  playerID = [playerCopy playerID];

  [v12 setObject:playerID forKey:@"playerID"];
  clientProxy3 = [(GKService *)self clientProxy];
  bundleShortVersion = [clientProxy3 bundleShortVersion];

  if (bundleShortVersion)
  {
    clientProxy4 = [(GKService *)self clientProxy];
    bundleShortVersion2 = [clientProxy4 bundleShortVersion];
    [v12 setObject:bundleShortVersion2 forKey:@"short-bundle-version"];
  }

  clientProxy5 = [(GKService *)self clientProxy];
  adamID = [clientProxy5 adamID];

  if (adamID)
  {
    clientProxy6 = [(GKService *)self clientProxy];
    adamID2 = [clientProxy6 adamID];
    [v12 setObject:adamID2 forKey:@"adam-id"];
  }

  matchID = [matchCopy matchID];

  if (matchID)
  {
    matchID2 = [matchCopy matchID];
    [v12 setObject:matchID2 forKey:@"session-id"];
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
  selfCopy = self;
  v33 = v13;
  v43 = v33;
  v34 = v32;
  [v33 perform:v40];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000EE700;
  v37[3] = &unk_100360EB0;
  v38 = v33;
  v39 = handlerCopy;
  v35 = v33;
  v36 = handlerCopy;
  [v35 notifyOnQueue:&_dispatch_main_q block:v37];
}

- (void)reserveShareParticipantSlots:(int64_t)slots minPlayerCount:(int64_t)count maxPlayerCount:(int64_t)playerCount andInvitePlayers:(id)players withMessage:(id)message forMatch:(id)match handler:(id)handler
{
  playersCopy = players;
  messageCopy = message;
  matchCopy = match;
  handlerCopy = handler;
  v18 = [NSString stringWithFormat:@"%s:%d %s", "GKTurnBasedService.m", 1623, "[GKTurnBasedService reserveShareParticipantSlots:minPlayerCount:maxPlayerCount:andInvitePlayers:withMessage:forMatch:handler:]"];
  v19 = [(GKService *)self transactionGroupWithName:v18];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000EE9E8;
  v34[3] = &unk_100366408;
  slotsCopy = slots;
  countCopy = count;
  playerCountCopy = playerCount;
  v35 = matchCopy;
  v36 = playersCopy;
  v37 = messageCopy;
  selfCopy = self;
  v22 = v19;
  v39 = v22;
  v23 = messageCopy;
  v24 = playersCopy;
  v25 = matchCopy;
  [v22 performOnQueue:replyQueue block:v34];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000EEDC0;
  v31[3] = &unk_100360EB0;
  v32 = v22;
  v33 = handlerCopy;
  v28 = v22;
  v29 = handlerCopy;
  [v28 notifyOnQueue:replyQueue2 block:v31];
}

- (id)privateDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  privateCloudDatabase = [v2 privateCloudDatabase];

  return privateCloudDatabase;
}

- (void)saveRecord:(id)record withHandler:(id)handler
{
  recordCopy = record;
  handlerCopy = handler;
  v8 = [CKModifyRecordsOperation alloc];
  v19 = recordCopy;
  v9 = [NSArray arrayWithObjects:&v19 count:1];
  v10 = [v8 initWithRecordsToSave:v9 recordIDsToDelete:0];

  v11 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v10 setConfiguration:v11];

  [v10 setSavePolicy:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000EF020;
  v15[3] = &unk_100366430;
  v16 = recordCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = recordCopy;
  [v10 setModifyRecordsCompletionBlock:v15];
  privateDatabase = [(GKTurnBasedService *)self privateDatabase];
  [privateDatabase addOperation:v10];
}

@end
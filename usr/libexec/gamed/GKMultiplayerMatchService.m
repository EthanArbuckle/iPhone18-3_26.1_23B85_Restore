@interface GKMultiplayerMatchService
+ (id)makeBaseServerRequestForMatchRequest:(id)a3 playerCount:(int64_t)a4 rematchID:(id)a5 connInfo:(int64_t)a6;
+ (id)makePlayersDictionaryForMatchRequest:(id)a3 transportContext:(id)a4;
- (BOOL)zoneNotFoundFromOperation:(id)a3 operationError:(id)a4;
- (GKPseudonymManager)pseudonymManager;
- (_TtC14GameDaemonCore13GameDaemonTTR)ttrHelper;
- (id)ensureGroup:(id)a3 participants:(id)a4 playedAt:(int64_t)a5 numberOfAutomatched:(int64_t)a6 moc:(id)a7 list:(id)a8;
- (id)privateDatabase;
- (void)_performRelayAction:(id)a3 request:(id)a4 handler:(id)a5;
- (void)acceptGameInvite:(id)a3 transportContext:(id)a4 handler:(id)a5;
- (void)cancelGameInviteWithHandler:(id)a3;
- (void)cancelOutstandingMatchRequestWithHandler:(id)a3;
- (void)cancelRelayRequest:(id)a3 handler:(id)a4;
- (void)convertToInternalObjects:(id)a3 results:(id)a4;
- (void)declineGameInvite:(id)a3 reason:(int64_t)a4 handler:(id)a5;
- (void)fetchDevicePushToken:(id)a3;
- (void)fetchOnDeviceMultiplayerBundleIDsForNewBundleID:(id)a3 handler:(id)a4;
- (void)fetchOnDeviceMultiplayerBundleIDsWithHandler:(id)a3;
- (void)fetchPseudonymIfNeededWithTransportContext:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchTransportOverrideWithHandler:(id)a3;
- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)a3 descriptionAddition:(id)a4 handler:(id)a5;
- (void)forgetParticipant:(id)a3 deviceID:(id)a4 handler:(id)a5;
- (void)getAcceptedGameInviteWithHandler:(id)a3;
- (void)getCompatibilityMatrix:(id)a3 handler:(id)a4;
- (void)getFlowRateForPlayerGroup:(int64_t)a3 handler:(id)a4;
- (void)getFlowRateWithPlayerGroup:(id)a3 queueName:(id)a4 handler:(id)a5;
- (void)getInviteSessionTokenWithHandler:(id)a3;
- (void)getMultiPlayerGroups:(id)a3;
- (void)getPlayersForMatchRequest:(id)a3 playerCount:(int64_t)a4 rematchID:(id)a5 transportContext:(id)a6 handler:(id)a7;
- (void)getPlayersToInviteWithHandlerV2:(id)a3;
- (void)hasCanceledMultiplayerInitiateBulletinForSessionToken:(id)a3 handler:(id)a4;
- (void)hasExistingInviteSessionWithHandler:(id)a3;
- (void)initiateInvitationForMatchRequest:(id)a3 recipients:(id)a4 devicePushTokenMap:(id)a5 isNearbyInvite:(BOOL)a6 availableForMessageV2:(BOOL)a7 transportContext:(id)a8 handler:(id)a9;
- (void)initiateRelayRequest:(id)a3 handler:(id)a4;
- (void)invitePlayersForMatchRequest:(id)a3 devicePushTokenMap:(id)a4 isNearbyInvite:(BOOL)a5 transportContext:(id)a6 handler:(id)a7;
- (void)isGameCenterMultiplayerGameForBundleID:(id)a3 handler:(id)a4;
- (void)loadCloudKitShareURLWithPlayer:(id)a3 matchRequest:(id)a4 transportContext:(id)a5 availableForMessageV2:(BOOL)a6 handler:(id)a7;
- (void)loadCloudKitShareURLWithPlayer:(id)a3 matchRequest:(id)a4 transportContext:(id)a5 handler:(id)a6;
- (void)nearbyInviteWasCancelled:(id)a3;
- (void)presentNearbyInvite:(id)a3;
- (void)putMultiPlayerGroup:(id)a3 participants:(id)a4 playedAt:(int64_t)a5 bundleID:(id)a6 numberOfAutomatched:(int64_t)a7 isSharedLink:(BOOL)a8 completionHandler:(id)a9;
- (void)removeInviteSession;
- (void)removeInviteSessionIfNeeded;
- (void)removePlayersFromGameInviteV2:(id)a3 handler:(id)a4;
- (void)requestTTRLogsWith:(id)a3 handler:(id)a4;
- (void)revokePseudonym:(id)a3 withCompletionHandler:(id)a4;
- (void)saveRecord:(id)a3 shouldRetry:(BOOL)a4 withHandler:(id)a5;
- (void)sendDataToParticipant:(id)a3 deviceID:(id)a4 data:(id)a5 usePeerDiscovery:(BOOL)a6 handler:(id)a7;
- (void)sendInvitationUpdate:(id)a3 handler:(id)a4;
- (void)sendReconnectInvitation:(id)a3 toPlayer:(id)a4 connectionData:(id)a5 sessionToken:(id)a6 pushToken:(id)a7 handler:(id)a8;
- (void)setShareInvitees:(id)a3;
- (void)setShareRecordID:(id)a3;
- (void)setupInviteShareWithRecordID:(id)a3 rootRecord:(id)a4 shouldRetry:(BOOL)a5 handler:(id)a6;
- (void)setupNearbyDiscovery;
- (void)startNearbyAdvertisingWithDiscoveryInfo:(id)a3 handler:(id)a4;
- (void)startNearbyBrowsingWithPlayerID:(id)a3 handler:(id)a4;
- (void)stopNearbyAdvertisingWithHandler:(id)a3;
- (void)stopNearbyBrowsingWithHandler:(id)a3;
- (void)updateCacheWithNearbyProfileDictionary:(id)a3 handler:(id)a4;
- (void)updateRelayRequest:(id)a3 handler:(id)a4;
- (void)uploadLogsForRadar:(id)a3 from:(id)a4 handler:(id)a5;
- (void)validateRequests:(id)a3 andFileMultiplayerTTRIfNeededWithContext:(id)a4;
@end

@implementation GKMultiplayerMatchService

- (_TtC14GameDaemonCore13GameDaemonTTR)ttrHelper
{
  ttrHelper = self->_ttrHelper;
  if (!ttrHelper)
  {
    v4 = [_TtC14GameDaemonCore13GameDaemonTTR alloc];
    v5 = [(GKService *)self clientProxy];
    v6 = [v5 bundleIdentifier];
    v7 = [(GKService *)self localPlayer];
    v8 = [(GameDaemonTTR *)v4 initWithClientProxyBundleIdentifier:v6 localPlayer:v7];
    v9 = self->_ttrHelper;
    self->_ttrHelper = v8;

    ttrHelper = self->_ttrHelper;
  }

  return ttrHelper;
}

- (GKPseudonymManager)pseudonymManager
{
  pseudonymManager = self->_pseudonymManager;
  if (!pseudonymManager)
  {
    v4 = objc_alloc_init(GKPseudonymManager);
    v5 = self->_pseudonymManager;
    self->_pseudonymManager = v4;

    pseudonymManager = self->_pseudonymManager;
  }

  return pseudonymManager;
}

- (void)fetchPseudonymIfNeededWithTransportContext:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 pseudonym];

  if (v8)
  {
    v9 = [v6 pseudonym];
    v7[2](v7, v9, 0);
  }

  else
  {
    v9 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = sub_1000CCBD8;
    v16[4] = sub_1000CCBE8;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_1000CCBD8;
    v14[4] = sub_1000CCBE8;
    v15 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000CCBF0;
    v10[3] = &unk_1003657C8;
    v12 = v16;
    v13 = v14;
    v10[4] = self;
    v11 = v7;
    [v9 isICloudAvailableWithHandler:v10];

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }
}

- (void)getPlayersForMatchRequest:(id)a3 playerCount:(int64_t)a4 rematchID:(id)a5 transportContext:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v12;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Get players for match request: %@, transportContext: %@", buf, 0x16u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CD1B0;
  v22[3] = &unk_100365890;
  v22[4] = self;
  v23 = v12;
  v24 = v14;
  v25 = v13;
  v26 = v15;
  v27 = a4;
  v18 = v15;
  v19 = v13;
  v20 = v14;
  v21 = v12;
  [(GKMultiplayerMatchService *)self cancelOutstandingMatchRequestWithHandler:v22];
}

+ (id)makeBaseServerRequestForMatchRequest:(id)a3 playerCount:(int64_t)a4 rematchID:(id)a5 connInfo:(int64_t)a6
{
  v9 = a3;
  v10 = a5;
  v28[0] = @"min-peers";
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 minPlayers]);
  v29[0] = v11;
  v28[1] = @"max-peers";
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 maxPlayers]);
  v29[1] = v12;
  v28[2] = @"requires-guest-player-capability";
  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 hasGuestPlayers]);
  v29[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (a4)
  {
    v16 = [NSNumber numberWithInteger:a4];
    [v15 setObject:v16 forKey:@"num-players"];
  }

  v17 = [v9 queueName];

  if (v17)
  {
    v18 = [v9 queueName];
    [v15 setObject:v18 forKey:@"queue-name"];

    v19 = [v9 properties];

    if (v19)
    {
      v20 = [v9 properties];
      [v15 setObject:v20 forKey:@"properties"];
    }
  }

  else
  {
    v26[0] = @"bucket-id";
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 playerGroup]);
    v27[0] = v21;
    v26[1] = @"conn-info";
    v22 = [NSNumber numberWithInteger:a6];
    v27[1] = v22;
    v26[2] = @"flags";
    v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#.8x", [v9 playerAttributes]);
    v27[2] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v15 addEntriesFromDictionary:v24];

    if (v10)
    {
      [v15 setObject:v10 forKey:@"match-id"];
    }
  }

  return v15;
}

+ (id)makePlayersDictionaryForMatchRequest:(id)a3 transportContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v42 = +[NSMutableArray array];
  v7 = [v6 localPlayerID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 localPlayerID];
  }

  v10 = v9;

  v11 = [v5 properties];
  v12 = @"player-id";
  if (v11)
  {
    v61[1] = @"properties";
    v62[0] = v10;
    v61[0] = @"player-id";
    v13 = [v5 properties];
    v62[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
  }

  else
  {
    v59 = @"player-id";
    v60 = v10;
    v14 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  }

  v37 = v14;
  [v42 addObject:v14];
  v15 = [v5 recipientPlayerIDs];
  v16 = [NSMutableSet setWithArray:v15];

  v17 = [v6 representedPlayerIDs];

  if (v17)
  {
    v18 = [v6 representedPlayerIDs];
    [v16 addObjectsFromArray:v18];
  }

  v38 = v6;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v16;
  v19 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v50;
    v40 = v5;
    v41 = v10;
    v39 = *v50;
    do
    {
      v22 = 0;
      v43 = v20;
      do
      {
        if (*v50 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v49 + 1) + 8 * v22);
        if (([v23 isEqualToString:v10] & 1) == 0)
        {
          v24 = v12;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v25 = [v5 recipientProperties];
          v26 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v46;
            while (2)
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v46 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v45 + 1) + 8 * i);
                v31 = [v30 playerID];
                v32 = [v31 isEqualToString:v23];

                if (v32)
                {
                  v12 = v24;
                  v55[0] = v24;
                  v55[1] = @"properties";
                  v56[0] = v23;
                  v5 = v40;
                  v33 = [v40 recipientProperties];
                  v34 = [v33 objectForKeyedSubscript:v30];
                  v56[1] = v34;
                  v35 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
                  [v42 addObject:v35];

                  goto LABEL_25;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          v12 = v24;
          v53 = v24;
          v54 = v23;
          v25 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          [v42 addObject:v25];
          v5 = v40;
LABEL_25:

          v10 = v41;
          v21 = v39;
          v20 = v43;
        }

        v22 = v22 + 1;
      }

      while (v22 != v20);
      v20 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v20);
  }

  return v42;
}

- (void)cancelOutstandingMatchRequestWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self clientProxy];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKMultiplayerMatchService: cancelOutstandingMatchRequest", buf, 2u);
  }

  [v5 cancelOutstandingCheckMatchStatus];
  v8 = [v5 currentMatchResponse];
  v9 = v8;
  if (v8 && ([v8 transitionToState:5] & 1) != 0)
  {
    v10 = [v9 rid];
    v11 = [v9 matchRequest];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 playerGroup]);

    v13 = [v9 matchingGroup];
    v14 = v13;
    if (v10 && v12 && v13)
    {
      v26[0] = @"rid";
      v26[1] = @"bucket-id";
      v27[0] = v10;
      v27[1] = v12;
      v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      v16 = [v9 matchingGroup];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000CE888;
      v22[3] = &unk_1003658E0;
      v23 = v15;
      v24 = v5;
      v25 = v4;
      v17 = v15;
      [v16 perform:v22];

LABEL_22:
      goto LABEL_23;
    }

    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v29 = v10;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v14;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "cancelOutstandingMatchRequestWithHandler early return with rid: %@, group: %@, matchingGroup: %@", buf, 0x20u);
      if (!v4)
      {
        goto LABEL_22;
      }
    }

    else if (!v4)
    {
      goto LABEL_22;
    }

    v4[2](v4);
    goto LABEL_22;
  }

  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "cancelOutstandingMatchRequestWithHandler early return due to: cannot transit to canceled state, or response is nil. Response: %@", buf, 0xCu);
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_23:
}

- (void)getFlowRateForPlayerGroup:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  [(GKMultiplayerMatchService *)self getFlowRateWithPlayerGroup:v7 queueName:0 handler:v6];
}

- (void)getFlowRateWithPlayerGroup:(id)a3 queueName:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = [NSString stringWithFormat:@"handler can't be nil"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (handler)\n[%s (%s:%d)]", v11, "-[GKMultiplayerMatchService getFlowRateWithPlayerGroup:queueName:handler:]", [v13 UTF8String], 402);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  if (v8 && v9)
  {
    v15 = [NSString stringWithFormat:@"playerGroup and queueName can't be both non-nil"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    v17 = [v16 lastPathComponent];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (!(playerGroup && queueName))\n[%s (%s:%d)]", v15, "-[GKMultiplayerMatchService getFlowRateWithPlayerGroup:queueName:handler:]", [v17 UTF8String], 403);

    [NSException raise:@"GameKit Exception" format:@"%@", v18];
  }

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_10028C504();
  }

  v20 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 406, "[GKMultiplayerMatchService getFlowRateWithPlayerGroup:queueName:handler:]"];
  v21 = [(GKService *)self transactionGroupWithName:v20];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000CEE24;
  v33[3] = &unk_100365980;
  v33[4] = self;
  v22 = v8;
  v34 = v22;
  v23 = v9;
  v35 = v23;
  v37 = v38;
  v24 = v21;
  v36 = v24;
  [v24 performOnManagedObjectContext:v33];
  v25 = [(GKService *)self clientProxy];
  v26 = [v25 replyQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000CF760;
  v29[3] = &unk_1003618D8;
  v27 = v10;
  v31 = v27;
  v32 = v38;
  v28 = v24;
  v30 = v28;
  [v28 notifyOnQueue:v26 block:v29];

  _Block_object_dispose(v38, 8);
}

- (void)getCompatibilityMatrix:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_10028C600();
  }

  v9 = [(GKService *)self credential];
  if (!v9)
  {
    v10 = +[GKPlayerCredentialController sharedController];
    v11 = [(GKService *)self clientProxy];
    v9 = [v10 primaryCredentialForEnvironment:{objc_msgSend(v11, "environment")}];
  }

  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 486, "[GKMultiplayerMatchService getCompatibilityMatrix:handler:]"];
  v13 = [GKDispatchGroup dispatchGroupWithName:v12];

  v14 = [(GKService *)self clientProxy];
  v15 = [v9 playerInternal];
  v16 = [v15 playerID];
  v17 = [v14 managedObjectContextForPlayerID:v16];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000CFAA0;
  v26[3] = &unk_100361F90;
  v18 = v17;
  v27 = v18;
  v19 = v6;
  v28 = v19;
  v20 = v13;
  v29 = v20;
  v30 = self;
  [v20 perform:v26];
  if (v7)
  {
    v21 = [(GKService *)self clientProxy];
    v22 = [v21 replyQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000D0190;
    v23[3] = &unk_100360EB0;
    v25 = v7;
    v24 = v20;
    [v24 notifyOnQueue:v22 block:v23];
  }
}

- (void)setShareInvitees:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 fetchOrCreateInviteSession];

  v7 = [NSMutableArray arrayWithArray:v4];
  [v6 setShareInvitees:v7];

  v8 = [v6 shareRecordID];

  if (v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 setObject:&stru_100374F10 forKey:*(*(&v22 + 1) + 8 * v14)];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v15 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    v16 = [GKDispatchGroup dispatchGroupWithName:@"saveInvitedPlayers"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000D0458;
    v18[3] = &unk_100360F00;
    v19 = v6;
    v20 = v15;
    v21 = self;
    v17 = v15;
    [v16 perform:v18];
  }
}

- (void)hasExistingInviteSessionWithHandler:(id)a3
{
  v6 = a3;
  v4 = [(GKService *)self clientProxy];
  v5 = [v4 inviteSession];

  if (v6)
  {
    v6[2](v6, v5 != 0);
  }
}

- (void)setShareRecordID:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 fetchOrCreateInviteSession];

  [v6 setShareRecordID:v4];
}

- (void)initiateInvitationForMatchRequest:(id)a3 recipients:(id)a4 devicePushTokenMap:(id)a5 isNearbyInvite:(BOOL)a6 availableForMessageV2:(BOOL)a7 transportContext:(id)a8 handler:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = a9;
  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v43 = v13;
    v44 = 2112;
    v45 = v16;
    v46 = 2112;
    v47 = v14;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Initiate invitation for match request: %@\ntransportContext: %@\nrecipients: %@", buf, 0x20u);
  }

  v20 = objc_alloc_init(GKInviteInitiateResponse);
  v21 = +[GKDataRequestManager sharedManager];
  v22 = +[GKPreferences shared];
  v23 = [v22 forceRelay];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000D0B78;
  v32[3] = &unk_100365A70;
  v33 = v13;
  v34 = v14;
  v40 = a6;
  v35 = v20;
  v36 = v15;
  v37 = self;
  v38 = v16;
  v39 = v17;
  v41 = a7;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v20;
  v28 = v14;
  v29 = v13;
  [v21 getValidNATTypeWithForceRelay:v23 withHandler:v32];
}

- (void)loadCloudKitShareURLWithPlayer:(id)a3 matchRequest:(id)a4 transportContext:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (([v12 validTransportSelected] & 1) != 0 || (objc_msgSend(v12, "supportsTransportVersion:", &off_100382430) & 1) == 0)
  {
    [(GKMultiplayerMatchService *)self loadCloudKitShareURLWithPlayer:v10 matchRequest:v11 transportContext:v12 availableForMessageV2:0 handler:v13];
  }

  else
  {
    v14 = +[NSMutableArray array];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v15 = [v11 messagesBasedRecipients];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000D1F90;
    v32[3] = &unk_100365A98;
    v34 = &v35;
    v16 = v14;
    v33 = v16;
    [v15 enumerateObjectsUsingBlock:v32];

    if ((v36[3] & 1) != 0 || ![v16 count])
    {
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      v22 = os_log_GKMatch;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [NSNumber numberWithBool:*(v36 + 24)];
        v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
        *buf = 138412546;
        v40 = v23;
        v41 = 2112;
        v42 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Skip overriding transport for msg invites. missing: %@, unprefixedHandles count: %@", buf, 0x16u);
      }

      [(GKMultiplayerMatchService *)self loadCloudKitShareURLWithPlayer:v10 matchRequest:v11 transportContext:v12 availableForMessageV2:0 handler:v13];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKMatch;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
        *buf = 138412290;
        v40 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Checking %@ handles' availability for msg invites.", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v20 = [(GKMultiplayerMatchService *)self contactsIntegrationController];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000D2030;
      v25[3] = &unk_100365AC0;
      objc_copyWeak(&v31, buf);
      v26 = v10;
      v27 = v11;
      v28 = v12;
      v29 = v16;
      v30 = v13;
      [v20 fetchMessageTransportV2AvailabilityForUnprefixedHandles:v29 completion:v25];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }

    _Block_object_dispose(&v35, 8);
  }
}

- (void)loadCloudKitShareURLWithPlayer:(id)a3 matchRequest:(id)a4 transportContext:(id)a5 availableForMessageV2:(BOOL)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [GKDispatchGroup dispatchGroupWithName:@"loadRecordURL"];
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Loading a CloudKit share URL for matchRequest: %@, transportContext: %@", buf, 0x16u);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000D2474;
  v28[3] = &unk_1003617E8;
  v28[4] = self;
  v29 = v13;
  v33 = a6;
  v30 = v14;
  v19 = v16;
  v31 = v19;
  v32 = v12;
  v20 = v12;
  v21 = v14;
  v22 = v13;
  [v19 perform:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000D32D8;
  v25[3] = &unk_100360EB0;
  v26 = v19;
  v27 = v15;
  v23 = v19;
  v24 = v15;
  [v23 notifyOnQueue:&_dispatch_main_q block:v25];
}

- (void)setupInviteShareWithRecordID:(id)a3 rootRecord:(id)a4 shouldRetry:(BOOL)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v12)
  {
    v13 = [NSString stringWithFormat:@"Handler not set by callers of setupInviteShareWithRecordID:rootRecord:shouldRetry:handler:."];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (handler)\n[%s (%s:%d)]", v13, "-[GKMultiplayerMatchService setupInviteShareWithRecordID:rootRecord:shouldRetry:handler:]", [v15 UTF8String], 997);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  v17 = [[CKShare alloc] initWithRootRecord:v11 shareID:v10];
  [v17 setPublicPermission:3];
  v18 = [CKModifyRecordsOperation alloc];
  v34[0] = v17;
  v34[1] = v11;
  v19 = [NSArray arrayWithObjects:v34 count:2];
  v20 = [v18 initWithRecordsToSave:v19 recordIDsToDelete:0];

  v21 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v20 setConfiguration:v21];

  [v20 setSavePolicy:1];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000D3620;
  v27[3] = &unk_100365B88;
  v31 = v11;
  v32 = v12;
  v33 = a5;
  v28 = v17;
  v29 = self;
  v30 = v10;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v25 = v17;
  [v20 setModifyRecordsCompletionBlock:v27];
  v26 = [(GKMultiplayerMatchService *)self privateDatabase];
  [v26 addOperation:v20];
}

- (id)privateDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (BOOL)zoneNotFoundFromOperation:(id)a3 operationError:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 code] == 2)
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v8 allValues];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v10)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v16 + 1) + 8 * i) code] == 26)
          {
            if (!os_log_GKGeneral)
            {
              v13 = GKOSLoggers();
            }

            v14 = os_log_GKMatch;
            LOBYTE(v10) = 1;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v21 = v5;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Zone Not Found. Should retry %@ after creating zone.", buf, 0xCu);
            }

            goto LABEL_16;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)saveRecord:(id)a3 shouldRetry:(BOOL)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    v10 = [NSString stringWithFormat:@"Handler not set by callers of saveRecord:shouldRetry:withHandler:."];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (handler)\n[%s (%s:%d)]", v10, "-[GKMultiplayerMatchService saveRecord:shouldRetry:withHandler:]", [v12 UTF8String], 1078);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [CKModifyRecordsOperation alloc];
  v25 = v8;
  v15 = [NSArray arrayWithObjects:&v25 count:1];
  v16 = [v14 initWithRecordsToSave:v15 recordIDsToDelete:0];

  v17 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v16 setConfiguration:v17];

  [v16 setSavePolicy:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D3E30;
  v21[3] = &unk_100365BB0;
  v24 = a4;
  v21[4] = self;
  v22 = v8;
  v23 = v9;
  v18 = v9;
  v19 = v8;
  [v16 setModifyRecordsCompletionBlock:v21];
  v20 = [(GKMultiplayerMatchService *)self privateDatabase];
  [v20 addOperation:v16];
}

- (void)invitePlayersForMatchRequest:(id)a3 devicePushTokenMap:(id)a4 isNearbyInvite:(BOOL)a5 transportContext:(id)a6 handler:(id)a7
{
  v11 = a3;
  v47 = a4;
  v12 = a6;
  v48 = a7;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v67 = v11;
    v68 = 2112;
    v69 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Invite players for matchRequest: %@, transportContext: %@", buf, 0x16u);
  }

  v43 = v12;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1116, "[GKMultiplayerMatchService invitePlayersForMatchRequest:devicePushTokenMap:isNearbyInvite:transportContext:handler:]"];
  v16 = [(GKService *)self transactionGroupWithName:v15];

  v17 = +[NSMutableArray array];
  v18 = [v11 recipients];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000D4478;
  v64[3] = &unk_100362458;
  v19 = v17;
  v65 = v19;
  [v18 enumerateObjectsUsingBlock:v64];

  if (![v19 count])
  {
    v20 = [v11 recipientPlayerIDs];
    [v19 addObjectsFromArray:v20];
  }

  v21 = [v19 count];
  v22 = [[NSMutableArray alloc] initWithCapacity:v21];
  v23 = [[NSMutableDictionary alloc] initWithCapacity:v21];
  v24 = objc_opt_class();
  v25 = [v11 archivedSharePlayInviteeTokensFromProgrammaticInvite];
  v63 = 0;
  v26 = [NSKeyedUnarchiver unarchivedObjectOfClass:v24 fromData:v25 error:&v63];
  v27 = v63;

  if (v27)
  {
    v28 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
      v28 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_10028CA68();
    }
  }

  v30 = [(GKService *)self clientProxy];
  v31 = [v30 replyQueue];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000D44E8;
  v52[3] = &unk_100365C28;
  v42 = v27;
  v53 = v19;
  v54 = v47;
  v55 = v22;
  v56 = v26;
  v57 = v23;
  v32 = v16;
  v58 = v32;
  v59 = self;
  v62 = a5;
  v60 = v11;
  v61 = v43;
  v46 = v43;
  v44 = v11;
  v33 = v23;
  v34 = v26;
  v35 = v22;
  v36 = v47;
  v37 = v19;
  [v32 performOnQueue:v31 block:v52];

  v38 = [(GKService *)self clientProxy];
  v39 = [v38 replyQueue];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000D5570;
  v49[3] = &unk_100360EB0;
  v50 = v32;
  v51 = v48;
  v40 = v32;
  v41 = v48;
  [v40 notifyOnQueue:v39 block:v49];
}

- (void)removePlayersFromGameInviteV2:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKService *)self clientProxy];
  removePlayersFromGameInviteV2(v8, v7, v6);
}

- (void)cancelGameInviteWithHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cancel game invite", buf, 2u);
  }

  v7 = [(GKService *)self clientProxy];
  v8 = [v7 inviteSession];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1383, "[GKMultiplayerMatchService cancelGameInviteWithHandler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D5E94;
  v19[3] = &unk_100360FF0;
  v20 = v8;
  v11 = v7;
  v21 = v11;
  v12 = v8;
  [v10 perform:v19];
  v13 = [v11 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D605C;
  v16[3] = &unk_100361270;
  v17 = v11;
  v18 = v4;
  v14 = v4;
  v15 = v11;
  [v10 notifyOnQueue:v13 block:v16];
}

- (id)ensureGroup:(id)a3 participants:(id)a4 playedAt:(int64_t)a5 numberOfAutomatched:(int64_t)a6 moc:(id)a7 list:(id)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a8;
  if (!v14)
  {
    v15 = [MultiplayerGroupList alloc];
    v16 = +[MultiplayerGroupList entity];
    v14 = [(MultiplayerGroupList *)v15 initWithEntity:v16 insertIntoManagedObjectContext:v13];
  }

  v17 = +[MultiplayerGroup _gkFetchRequest];
  v41 = v11;
  v18 = [NSPredicate predicateWithFormat:@"id == %@", v11];
  [v17 setPredicate:v18];

  v37 = v17;
  v19 = [NSManagedObject _gkRetrieveCleanEntry:v13 request:v17];
  if (!v19)
  {
    v20 = [MultiplayerGroup alloc];
    v21 = +[MultiplayerGroup entity];
    v19 = [(MultiplayerGroup *)v20 initWithEntity:v21 insertIntoManagedObjectContext:v13];

    [(MultiplayerGroupList *)v14 addEntriesObject:v19];
  }

  v36 = v19;
  v38 = v14;
  v22 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = v12;
  v24 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        v29 = [MultiplayerGroupParticipant alloc];
        v30 = +[MultiplayerGroupParticipant entity];
        v31 = [(MultiplayerGroupParticipant *)v29 initWithEntity:v30 insertIntoManagedObjectContext:v13];

        [(MultiplayerGroupParticipant *)v31 setPlayerID:v28];
        [v22 addObject:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v25);
  }

  v32 = [(MultiplayerGroup *)v36 entries];
  [(MultiplayerGroup *)v36 removeEntries:v32];

  [(MultiplayerGroup *)v36 addEntries:v22];
  [(MultiplayerGroup *)v36 setId:v41];
  v33 = [NSNumber numberWithInteger:a6];
  [(MultiplayerGroup *)v36 setNumberOfAutomatched:v33];

  v34 = [NSNumber numberWithInteger:a5];
  [(MultiplayerGroup *)v36 setPlayedAt:v34];

  return v36;
}

- (void)convertToInternalObjects:(id)a3 results:(id)a4
{
  v24 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [a3 entries];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v10 = objc_opt_new();
        v11 = [v9 numberOfAutomatched];
        [v10 setNumberOfAutomached:{objc_msgSend(v11, "longValue")}];

        v12 = [v9 id];
        [v10 setGroupID:v12];

        v13 = objc_opt_new();
        [v10 setParticipants:v13];

        v14 = [v9 playedAt];
        [v10 setPlayedAt:{objc_msgSend(v14, "longValue")}];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = [v9 entries];
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          do
          {
            v19 = 0;
            do
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * v19);
              v21 = [v10 participants];
              v22 = [v20 playerID];
              [v21 addObject:v22];

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v17);
        }

        [v24 addObject:v10];
        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }
}

- (void)getMultiPlayerGroups:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1462, "[GKMultiplayerMatchService getMultiPlayerGroups:]"];
  v6 = [(GKService *)self transactionGroupBypassingMultiUserWithName:v5];

  v7 = objc_opt_new();
  [v6 setResult:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D67D0;
  v11[3] = &unk_1003636E0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = v7;
  [v9 performOnManagedObjectContext:v11];
}

- (void)putMultiPlayerGroup:(id)a3 participants:(id)a4 playedAt:(int64_t)a5 bundleID:(id)a6 numberOfAutomatched:(int64_t)a7 isSharedLink:(BOOL)a8 completionHandler:(id)a9
{
  v36 = a8;
  v13 = a3;
  v37 = a9;
  v14 = a6;
  v15 = a4;
  v16 = [(GKService *)self credential];
  if (!v16)
  {
    v17 = +[GKPlayerCredentialController sharedController];
    v18 = [(GKService *)self clientProxy];
    v16 = [v17 primaryCredentialForEnvironment:{objc_msgSend(v18, "environment")}];
  }

  v19 = [(GKService *)self clientProxy];
  v20 = [v16 playerInternal];
  v21 = [v20 playerID];
  v22 = [v19 managedObjectContextForPlayerID:v21];

  v23 = [NSSet setWithArray:v15];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000D7578;
  v40[3] = &unk_100365CB8;
  v24 = v22;
  v41 = v24;
  v42 = self;
  v25 = v13;
  v43 = v25;
  v26 = v23;
  v44 = v26;
  v45 = a5;
  v46 = a7;
  [v24 performBlockAndWait:v40];
  v27 = [[GKMultiplayerGroupRequest alloc] initWithGroupID:v25];
  [(GKMultiplayerGroupRequest *)v27 setBundleID:v14];

  [(GKMultiplayerGroupRequest *)v27 setParticipants:v26];
  if (a5)
  {
    [(GKMultiplayerGroupRequest *)v27 setPlayedAt:a5];
  }

  if (v36)
  {
    [(GKMultiplayerGroupRequest *)v27 setGroupRelationshipType:@"SHAREDLINK"];
  }

  [(GKMultiplayerGroupRequest *)v27 setPlayerGroupID:v25];
  v47 = @"numberOfAutomatched";
  v28 = [NSNumber numberWithInteger:a7];
  v29 = [NSString stringWithFormat:@"%@", v28];
  v48 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v31 = [v30 mutableCopy];
  [(GKMultiplayerGroupRequest *)v27 setRequestData:v31];

  v32 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v33 = [(GKService *)self clientProxy];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000D760C;
  v38[3] = &unk_100361CB8;
  v39 = v37;
  v34 = v37;
  [v32 writeToNetwork:v27 clientProxy:v33 handler:v38];
}

- (void)acceptGameInvite:(id)a3 transportContext:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Accept game invite: %@, transportContext: %@", buf, 0x16u);
  }

  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1578, "[GKMultiplayerMatchService acceptGameInvite:transportContext:handler:]"];
  v14 = [(GKService *)self transactionGroupWithName:v13];

  v15 = objc_alloc_init(GKInviteAcceptResponse);
  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000D799C;
  v29[3] = &unk_100361BF8;
  v29[4] = self;
  v30 = v8;
  v31 = v9;
  v18 = v14;
  v32 = v18;
  v33 = v15;
  v19 = v15;
  v20 = v9;
  v21 = v8;
  [v18 performOnQueue:v17 block:v29];

  v22 = [(GKService *)self clientProxy];
  v23 = [v22 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000D8298;
  v26[3] = &unk_100360EB0;
  v27 = v18;
  v28 = v10;
  v24 = v18;
  v25 = v10;
  [v24 notifyOnQueue:v23 block:v26];
}

- (void)declineGameInvite:(id)a3 reason:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[GKDataRequestManager sharedManager];
  v11 = [(GKService *)self clientProxy];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 dataUsingEncoding:4];

  v25 = v13;
  v14 = [NSDictionary dictionaryWithObjectsAndKeys:v13, @"s", 0];
  v26 = v10;
  v15 = [v10 pushToken];
  v29[0] = @"session-token";
  v16 = [v9 sessionToken];
  v30[0] = v16;
  v29[1] = @"peer-id";
  v17 = [v9 peerID];
  v30[1] = v17;
  v29[2] = @"peer-push-token";
  v18 = [v9 peerPushToken];

  v30[2] = v18;
  v29[3] = @"self-push-token";
  v19 = v15;
  if (!v15)
  {
    v19 = +[NSData data];
  }

  v30[3] = v19;
  v29[4] = @"reason";
  v20 = [NSNumber numberWithInteger:a4];
  v29[5] = @"client-data";
  v30[4] = v20;
  v30[5] = v14;
  v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];

  if (!v15)
  {
  }

  v22 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v23 = [(GKService *)self clientProxy];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000D862C;
  v27[3] = &unk_1003615D8;
  v28 = v8;
  v24 = v8;
  [v22 issueRequest:v21 bagKey:@"gk-invitation-reject" clientProxy:v23 handler:v27];
}

- (void)getAcceptedGameInviteWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1678, "[GKMultiplayerMatchService getAcceptedGameInviteWithHandler:]"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D872C;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [GKActivity named:v5 execute:v7];
}

- (void)hasCanceledMultiplayerInitiateBulletinForSessionToken:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKMultiplayerMatchService: hasCanceledMultiplayerInitiateBulletinForSessionToken", v12, 2u);
  }

  v9 = +[GKBulletinController sharedController];
  v10 = [v9 acceptedInviteManager];
  v11 = [v10 removeAndReturnQueuedCancelledInviteWithSessionToken:v5];
  if (v6)
  {
    v6[2](v6, v11);
  }
}

- (void)getPlayersToInviteWithHandlerV2:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1744, "[GKMultiplayerMatchService getPlayersToInviteWithHandlerV2:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v7 = [v6 context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D8EE8;
  v14[3] = &unk_1003610B8;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  [v7 performBlockAndWait:v14];

  if (v4)
  {
    v9 = [(GKService *)self clientProxy];
    v10 = [v9 replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D9048;
    v11[3] = &unk_100360EB0;
    v13 = v4;
    v12 = v8;
    [v12 notifyOnQueue:v10 block:v11];
  }
}

- (void)getInviteSessionTokenWithHandler:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_1000CCBD8;
  v13[4] = sub_1000CCBE8;
  v14 = 0;
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 inviteSession];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D91F8;
  v9[3] = &unk_100365D98;
  v12 = v13;
  v7 = v6;
  v10 = v7;
  v8 = v4;
  v11 = v8;
  [v7 performAsync:v9];

  _Block_object_dispose(v13, 8);
}

- (void)removeInviteSession
{
  v2 = [(GKService *)self clientProxy];
  [v2 deleteInviteSession];
}

- (void)removeInviteSessionIfNeeded
{
  v3 = [(GKService *)self clientProxy];
  v4 = [v3 fetchOrCreateInviteSession];
  v5 = [v4 shouldBeCleared];

  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [(GKService *)self clientProxy];
      v10 = [v9 inviteSession];
      v11 = [(GKService *)self clientProxy];
      v12 = [v11 inviteSession];
      v13 = [v12 sessionToken];
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ClientProxy should clear inviteSession: %@, token: %@", &v15, 0x16u);
    }

    v14 = [(GKService *)self clientProxy];
    [v14 deleteInviteSession];
  }
}

- (void)sendReconnectInvitation:(id)a3 toPlayer:(id)a4 connectionData:(id)a5 sessionToken:(id)a6 pushToken:(id)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[GKDataRequestManager sharedManager];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000D95B8;
  v27[3] = &unk_100365DC0;
  v28 = v14;
  v29 = v16;
  v30 = self;
  v31 = v17;
  v32 = v15;
  v33 = v18;
  v34 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v15;
  v24 = v17;
  v25 = v16;
  v26 = v14;
  [v20 getValidNATTypeWithForceRelay:0 withHandler:v27];
}

- (void)sendInvitationUpdate:(id)a3 handler:(id)a4
{
  v5 = a3;
  v45 = a4;
  v6 = +[NSMutableArray array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [v5 playerTokenMap];
  v49 = v5;
  v50 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v50)
  {
    v48 = *v64;
    do
    {
      v7 = 0;
      do
      {
        if (*v64 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v7;
        v8 = *(*(&v63 + 1) + 8 * v7);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v9 = [v5 playerTokenMap];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 countByEnumeratingWithState:&v59 objects:v75 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v60;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v60 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v59 + 1) + 8 * i);
              v73[0] = @"id";
              v73[1] = @"push-token";
              v74[0] = v8;
              v74[1] = v15;
              v16 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
              [v6 addObject:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v59 objects:v75 count:16];
          }

          while (v12);
        }

        v7 = v51 + 1;
        v5 = v49;
      }

      while ((v51 + 1) != v50);
      v50 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v50);
  }

  v71[0] = @"bundle-id";
  v17 = [(GKService *)self clientProxy];
  v18 = [v17 bundleIdentifier];
  v72[0] = v18;
  v71[1] = GKSuggestedTransportVersionPushShortKey;
  v19 = [v5 transportVersionToUse];
  v72[1] = v19;
  v71[2] = GKInviteSessionIDKey;
  v20 = [v5 sessionID];
  v72[2] = v20;
  [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3];
  v22 = v21 = v5;
  v52 = [NSMutableDictionary dictionaryWithDictionary:v22];

  v69[0] = @"session-token";
  v23 = [v21 sessionToken];
  v70[0] = v23;
  v69[1] = @"self-push-token";
  v24 = +[GKDataRequestManager sharedManager];
  v25 = [v24 pushToken];
  v26 = v25;
  if (!v25)
  {
    v26 = +[NSData data];
  }

  v70[1] = v26;
  v69[2] = @"reason";
  v27 = [NSNumber numberWithInt:3];
  v69[3] = @"peers";
  v70[2] = v27;
  v70[3] = v6;
  v28 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
  v29 = [NSMutableDictionary dictionaryWithDictionary:v28];

  if (!v25)
  {
  }

  v30 = [v49 matchID];

  if (v30)
  {
    v31 = [v49 matchID];
    [v52 setObject:v31 forKeyedSubscript:GKMatchmakerMatchID];
  }

  v32 = [v49 playerTokenMap];

  if (v32)
  {
    v33 = [v49 playerTokenMap];
    [v52 setObject:v33 forKeyedSubscript:GKTransportPlayerTokenMapKey];
  }

  v34 = +[NSMutableArray array];
  v35 = [v49 gameParticipants];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000DA304;
  v57[3] = &unk_100365DE8;
  v36 = v34;
  v58 = v36;
  [v35 enumerateObjectsUsingBlock:v57];

  if ([v36 count])
  {
    [v52 setObject:v36 forKey:GKInviteGameParticipantsKey];
  }

  v37 = +[NSMutableArray array];
  v38 = [v49 lobbyParticipants];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000DA35C;
  v55[3] = &unk_100365DE8;
  v39 = v37;
  v56 = v39;
  [v38 enumerateObjectsUsingBlock:v55];

  if ([v39 count])
  {
    [v52 setObject:v39 forKey:GKInviteLobbyParticipantsKey];
  }

  [v29 setObject:v52 forKeyedSubscript:@"client-data"];
  if (!os_log_GKGeneral)
  {
    v40 = GKOSLoggers();
  }

  v41 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v68 = v29;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Sending invitation update with request: %@", buf, 0xCu);
  }

  v42 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v43 = [(GKService *)self clientProxy];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000DA3B4;
  v53[3] = &unk_1003615D8;
  v54 = v45;
  v44 = v45;
  [v42 issueRequest:v29 bagKey:@"gk-invitation-send" clientProxy:v43 handler:v53];
}

- (void)requestTTRLogsWith:(id)a3 handler:(id)a4
{
  v6 = a3;
  v40 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [(GKService *)self clientProxy];
    v11 = [v10 bundleIdentifier];
    *buf = 138412546;
    v61 = v6;
    v62 = 2112;
    v63 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request TTRLogsWith: %@, for client proxy: %@", buf, 0x16u);
  }

  v41 = self;
  v12 = +[NSMutableArray array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = [v6 playersAndPushTokens];
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v53 + 1) + 8 * i) serverRepresentation];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v15);
  }

  v57[0] = @"session-token";
  v19 = +[NSData data];
  v58[0] = v19;
  v57[1] = @"self-push-token";
  v20 = +[GKDataRequestManager sharedManager];
  v21 = [v20 pushToken];
  v22 = v21;
  if (!v21)
  {
    v22 = +[NSData data];
  }

  v58[1] = v22;
  v57[2] = @"reason";
  v23 = [NSNumber numberWithInt:100];
  v58[2] = v23;
  v58[3] = v12;
  v57[3] = @"peers";
  v57[4] = GKTTRBulletinKeyRadarID;
  v24 = [v6 radarID];
  v58[4] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:5];
  v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

  if (!v21)
  {
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000DA9E4;
  v51[3] = &unk_100361CB8;
  v52 = v40;
  v27 = v40;
  v28 = objc_retainBlock(v51);
  v29 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1932, "[GKMultiplayerMatchService requestTTRLogsWith:handler:]"];
  v30 = [v6 requesterPlayerID];
  v31 = [(GKService *)v41 transactionGroupWithName:v29 forPlayerID:v30];

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000DAA74;
  v48[3] = &unk_100361708;
  v32 = v6;
  v49 = v32;
  v33 = v31;
  v50 = v33;
  [v33 performOnManagedObjectContext:v48];
  v34 = [(GKService *)v41 clientProxy];
  v35 = [v34 taskQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000DAB44;
  v42[3] = &unk_100363768;
  v43 = v33;
  v44 = v32;
  v46 = v41;
  v47 = v28;
  v45 = v26;
  v36 = v26;
  v37 = v28;
  v38 = v32;
  v39 = v33;
  [v39 notifyOnQueue:v35 block:v42];
}

- (void)_performRelayAction:(id)a3 request:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1973, "[GKMultiplayerMatchService _performRelayAction:request:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DB150;
  v23[3] = &unk_100361F90;
  v24 = v9;
  v25 = v8;
  v26 = self;
  v13 = v12;
  v27 = v13;
  v14 = v8;
  v15 = v9;
  [v13 perform:v23];
  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DB2BC;
  v20[3] = &unk_100360EB0;
  v21 = v13;
  v22 = v10;
  v18 = v13;
  v19 = v10;
  [v18 notifyOnQueue:v17 block:v20];
}

- (void)initiateRelayRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GKDataRequestManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DB434;
  v11[3] = &unk_100365E10;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getValidNATTypeWithForceRelay:0 withHandler:v11];
}

- (void)updateRelayRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GKDataRequestManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DB6B0;
  v11[3] = &unk_100365E10;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getValidNATTypeWithForceRelay:0 withHandler:v11];
}

- (void)cancelRelayRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "relayCancel serverRequest:%@", &v11, 0xCu);
  }

  [(GKMultiplayerMatchService *)self _performRelayAction:@"gk-invitation-relay-cancel" request:v6 handler:v7];
  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainRelay type:GKReporterRelayCancel];
}

- (void)updateCacheWithNearbyProfileDictionary:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 2038, "[GKMultiplayerMatchService updateCacheWithNearbyProfileDictionary:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [v7 objectForKey:@"profile"];

  v11 = [v10 objectForKey:@"playerID"];
  if (v11)
  {
    v12 = [v9 context];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000DBB94;
    v18[3] = &unk_100361F68;
    v19 = v11;
    v20 = v9;
    v21 = v10;
    [v12 performBlockAndWait:v18];
  }

  if (v6)
  {
    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000DBF64;
    v15[3] = &unk_100360EB0;
    v17 = v6;
    v16 = v9;
    [v16 notifyOnQueue:v14 block:v15];
  }
}

- (void)startNearbyBrowsingWithPlayerID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 peerDiscovery];
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "peerDiscovery (%@) startBrowsing", buf, 0xCu);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DC24C;
  v25[3] = &unk_100360FA0;
  v13 = v7;
  v26 = v13;
  v14 = objc_retainBlock(v25);
  v15 = +[GKPreferences shared];
  v16 = [v15 disableViceroyNearby];

  if ((v16 & 1) == 0)
  {
    v17 = [(GKService *)self clientProxy];
    v18 = [v17 nearbyDiscovery];
    [v18 startBrowsingWithPlayerID:v6];
  }

  v19 = +[GKPreferences shared];
  v20 = [v19 fastSyncTransportEnabled];

  if (v20)
  {
    v21 = [(GKService *)self clientProxy];
    v22 = [v21 peerDiscovery];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000DC2CC;
    v23[3] = &unk_100360FA0;
    v24 = v14;
    [v22 startBrowsingWithCompletionHandler:v23];
  }

  else
  {
    (v14[2])(v14);
  }
}

- (void)stopNearbyBrowsingWithHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(GKService *)self clientProxy];
    v9 = [v8 peerDiscovery];
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "peerDiscovery (%@) stopBrowsing", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DC554;
  v22[3] = &unk_100360FA0;
  v10 = v4;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  v12 = +[GKPreferences shared];
  v13 = [v12 disableViceroyNearby];

  if ((v13 & 1) == 0)
  {
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 nearbyDiscovery];
    [v15 stopBrowsing];
  }

  v16 = +[GKPreferences shared];
  v17 = [v16 fastSyncTransportEnabled];

  if (v17)
  {
    v18 = [(GKService *)self clientProxy];
    v19 = [v18 peerDiscovery];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DC5D4;
    v20[3] = &unk_100360FA0;
    v21 = v11;
    [v19 stopBrowsingWithCompletionHandler:v20];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)startNearbyAdvertisingWithDiscoveryInfo:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 peerDiscovery];
    *buf = 138412290;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "peerDiscovery (%@) startListening", buf, 0xCu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000DC8A4;
  v27[3] = &unk_100361CB8;
  v13 = v7;
  v28 = v13;
  v14 = objc_retainBlock(v27);
  v15 = +[GKPreferences shared];
  v16 = [v15 disableViceroyNearby];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v18 = [(GKService *)self clientProxy];
    v19 = [v18 nearbyDiscovery];
    v17 = [v19 startAdvertisingWithDiscoveryInfo:v6];
  }

  v20 = +[GKPreferences shared];
  v21 = [v20 fastSyncTransportEnabled];

  if (v21)
  {
    v22 = [(GKService *)self clientProxy];
    v23 = [v22 peerDiscovery];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000DC930;
    v24[3] = &unk_100360EB0;
    v26 = v14;
    v25 = v17;
    [v23 startListening:v6 completionHandler:v24];
  }

  else
  {
    (v14[2])(v14, v17);
  }
}

- (void)stopNearbyAdvertisingWithHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(GKService *)self clientProxy];
    v9 = [v8 peerDiscovery];
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "peerDiscovery (%@) stopListening", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DCBBC;
  v22[3] = &unk_100360FA0;
  v10 = v4;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  v12 = +[GKPreferences shared];
  v13 = [v12 disableViceroyNearby];

  if ((v13 & 1) == 0)
  {
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 nearbyDiscovery];
    [v15 stopAdvertising];
  }

  v16 = +[GKPreferences shared];
  v17 = [v16 fastSyncTransportEnabled];

  if (v17)
  {
    v18 = [(GKService *)self clientProxy];
    v19 = [v18 peerDiscovery];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DCC3C;
    v20[3] = &unk_100360FA0;
    v21 = v11;
    [v19 stopListeningWithCompletionHandler:v20];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)presentNearbyInvite:(id)a3
{
  v3 = a3;
  v4 = +[GKDataRequestManager sharedManager];
  [v4 presentNearbyInvite:v3];
}

- (void)nearbyInviteWasCancelled:(id)a3
{
  v3 = a3;
  v4 = +[GKDataRequestManager sharedManager];
  [v4 nearbyInviteWasCancelled:v3];
}

- (void)fetchDevicePushToken:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKMultiplayerMatchService fetchDevicePushToken", v8, 2u);
  }

  v6 = +[GKDataRequestManager sharedManager];
  v7 = [v6 pushToken];

  v3[2](v3, v7);
}

- (void)fetchOnDeviceMultiplayerBundleIDsForNewBundleID:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchOnDeviceMultiplayerBundleIDsForNewBundleID: %@", buf, 0xCu);
  }

  v9 = +[GKClientProxy gameCenterClient];
  v10 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v9 localPlayer:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DCF6C;
  v12[3] = &unk_1003626B0;
  v13 = v6;
  v11 = v6;
  [v10 getOnDeviceMultiplayerGamesForBundleIDs:v5 handler:v12];
}

- (void)fetchOnDeviceMultiplayerBundleIDsWithHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fetchOnDeviceMultiplayerBundleIDsWithHandler", &v16, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Scanning installed apps", &v16, 0xCu);
  }

  v9 = +[GKApplicationWorkspace defaultWorkspace];
  v10 = [v9 availableGameIdentifiers];
  v11 = [v10 count];
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [NSNumber numberWithUnsignedInteger:v11];
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "found %@ installed Game Center games.", &v16, 0xCu);
  }

  [(GKMultiplayerMatchService *)self fetchOnDeviceMultiplayerBundleIDsForNewBundleID:v10 handler:v4];
}

- (void)isGameCenterMultiplayerGameForBundleID:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "isGameCenterMultiplayerGameForBundleID, bundleID: %@", buf, 0xCu);
  }

  v16 = v6;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DD40C;
  v13[3] = &unk_100362408;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(GKMultiplayerMatchService *)self fetchOnDeviceMultiplayerBundleIDsForNewBundleID:v10 handler:v13];
}

- (void)fetchTransportOverrideWithHandler:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetchTransportOverrideWithHandler", v11, 2u);
  }

  v6 = +[GKPreferences shared];
  v7 = [v6 forceEnabledTransportVersions];
  v8 = +[GKPreferences shared];
  v9 = [v8 forceDisabledTransportVersions];
  v10 = +[GKPreferences shared];
  v3[2](v3, v7, v9, [v10 multiplayerHealthCheckEnabled]);
}

- (void)setupNearbyDiscovery
{
  v3 = +[GKPreferences shared];
  v4 = [v3 disableViceroyNearby];

  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Viceroy nearby is disabled. Stop setting up nearby discovery.", buf, 2u);
    }
  }

  else
  {
    v7 = [(GKService *)self clientProxy];
    v8 = [v7 bundleIdentifier];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000DD7E4;
    v21[3] = &unk_100365E60;
    v9 = v8;
    v22 = v9;
    v10 = objc_retainBlock(v21);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000DDAD8;
    v19[3] = &unk_100365EB0;
    v11 = v9;
    v20 = v11;
    v12 = objc_retainBlock(v19);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000DDCEC;
    v17[3] = &unk_100365ED8;
    v18 = v11;
    v13 = v11;
    v14 = objc_retainBlock(v17);
    v15 = [(GKService *)self clientProxy];
    v16 = [v15 nearbyDiscovery];
    [v16 setupWithPlayerFoundHandler:v10 playerLostHandler:v12 receiveDataHandler:v14];
  }
}

- (void)forgetParticipant:(id)a3 deviceID:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKService *)self clientProxy];
  v12 = [v11 nearbyDiscovery];
  [v12 forgetParticipant:v10 deviceID:v9];

  if (v8)
  {
    v8[2](v8);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028CE50();
    }
  }
}

- (void)sendDataToParticipant:(id)a3 deviceID:(id)a4 data:(id)a5 usePeerDiscovery:(BOOL)a6 handler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v18 = @"bonjour in Viceoroy";
    if (v8)
    {
      v18 = @"bonjour in gamed";
    }

    *buf = 138412290;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Sending data to nearby participant with %@", buf, 0xCu);
  }

  v19 = [(GKService *)self clientProxy];
  v20 = v19;
  if (v8)
  {
    v21 = [v19 peerDiscovery];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000DE250;
    v27[3] = &unk_100361CB8;
    v22 = &v28;
    v28 = v15;
    v23 = v15;
    [v21 sendDataToParticipant:v12 deviceID:v13 data:v14 completionHandler:v27];
  }

  else
  {
    v21 = [v19 nearbyDiscovery];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000DE26C;
    v25[3] = &unk_100361CB8;
    v22 = &v26;
    v26 = v15;
    v24 = v15;
    [v21 sendDataToParticipant:v12 deviceID:v13 data:v14 handler:v25];
  }
}

- (void)revokePseudonym:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerMatchService *)self pseudonymManager];
  [v8 revokePseudonym:v7 completionHandler:v6];
}

- (void)validateRequests:(id)a3 andFileMultiplayerTTRIfNeededWithContext:(id)a4
{
  v8 = a4;
  v6 = [a3 objectForKey:GKSupportedTransportVersionsKey];
  v7 = [v6 containsObject:&off_100382478];

  if (v7)
  {
    [(GKMultiplayerMatchService *)self fileMultiplayerTTRWithCallBackIdentifier:&stru_100374F10 descriptionAddition:v8 handler:&stru_100365EF8];
  }
}

- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)a3 descriptionAddition:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GKPreferences shared];
  v12 = [v11 isInternalBuild];

  if (v12)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKMultiplayerService fileMultiplayerTTR with callbackIdentifier: %@", buf, 0xCu);
    }

    v21 = GKTTRBulletinKeyType;
    v22 = &off_100382490;
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

    v17 = [(GKMultiplayerMatchService *)self ttrHelper];
    v18 = [v17 getURLForNewMultiplayerRadarWithCallbackIdentifier:v8 descriptionAddition:v9];

    if (v18)
    {
      [v16 setObject:v18 forKeyedSubscript:GKTTRBulletinKeyURL];
    }

    if (v9)
    {
      [v16 setObject:v9 forKeyedSubscript:GKTTRBulletinKeySubtitle];
    }

    v19 = [GKTTRInitiationBulletin packFakeTTRBulletinWithInfo:v16];
    v20 = +[GKDataRequestManager sharedManager];
    [v20 processIncomingTTR:v19];

    v10[2](v10);
  }
}

- (void)uploadLogsForRadar:(id)a3 from:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GKPreferences shared];
  v12 = [v11 isInternalBuild];

  if (v12)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKMultiplayerServicePrivate uploadLogsForRadar:", v21, 2u);
    }

    v22[0] = GKTTRBulletinKeyType;
    v22[1] = GKTTRBulletinKeyRadarID;
    v23[0] = &off_100382490;
    v23[1] = v8;
    v22[2] = GKTTRBulletinKeyRequesterPlayerAlias;
    v23[2] = v9;
    v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

    v17 = [(GKMultiplayerMatchService *)self ttrHelper];
    v18 = [v17 getURLForExistingMultiplayerRadarWithRadarID:v8];

    if (v18)
    {
      [v16 setObject:v18 forKeyedSubscript:GKTTRBulletinKeyURL];
    }

    v19 = [GKTTRUploadRequestBulletin packFakeTTRBulletinWithInfo:v16];
    v20 = +[GKDataRequestManager sharedManager];
    [v20 processIncomingTTR:v19];

    v10[2](v10);
  }
}

@end
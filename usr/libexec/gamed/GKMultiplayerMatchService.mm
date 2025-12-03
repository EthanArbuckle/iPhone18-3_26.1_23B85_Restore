@interface GKMultiplayerMatchService
+ (id)makeBaseServerRequestForMatchRequest:(id)request playerCount:(int64_t)count rematchID:(id)d connInfo:(int64_t)info;
+ (id)makePlayersDictionaryForMatchRequest:(id)request transportContext:(id)context;
- (BOOL)zoneNotFoundFromOperation:(id)operation operationError:(id)error;
- (GKPseudonymManager)pseudonymManager;
- (_TtC14GameDaemonCore13GameDaemonTTR)ttrHelper;
- (id)ensureGroup:(id)group participants:(id)participants playedAt:(int64_t)at numberOfAutomatched:(int64_t)automatched moc:(id)moc list:(id)list;
- (id)privateDatabase;
- (void)_performRelayAction:(id)action request:(id)request handler:(id)handler;
- (void)acceptGameInvite:(id)invite transportContext:(id)context handler:(id)handler;
- (void)cancelGameInviteWithHandler:(id)handler;
- (void)cancelOutstandingMatchRequestWithHandler:(id)handler;
- (void)cancelRelayRequest:(id)request handler:(id)handler;
- (void)convertToInternalObjects:(id)objects results:(id)results;
- (void)declineGameInvite:(id)invite reason:(int64_t)reason handler:(id)handler;
- (void)fetchDevicePushToken:(id)token;
- (void)fetchOnDeviceMultiplayerBundleIDsForNewBundleID:(id)d handler:(id)handler;
- (void)fetchOnDeviceMultiplayerBundleIDsWithHandler:(id)handler;
- (void)fetchPseudonymIfNeededWithTransportContext:(id)context withCompletionHandler:(id)handler;
- (void)fetchTransportOverrideWithHandler:(id)handler;
- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)identifier descriptionAddition:(id)addition handler:(id)handler;
- (void)forgetParticipant:(id)participant deviceID:(id)d handler:(id)handler;
- (void)getAcceptedGameInviteWithHandler:(id)handler;
- (void)getCompatibilityMatrix:(id)matrix handler:(id)handler;
- (void)getFlowRateForPlayerGroup:(int64_t)group handler:(id)handler;
- (void)getFlowRateWithPlayerGroup:(id)group queueName:(id)name handler:(id)handler;
- (void)getInviteSessionTokenWithHandler:(id)handler;
- (void)getMultiPlayerGroups:(id)groups;
- (void)getPlayersForMatchRequest:(id)request playerCount:(int64_t)count rematchID:(id)d transportContext:(id)context handler:(id)handler;
- (void)getPlayersToInviteWithHandlerV2:(id)v2;
- (void)hasCanceledMultiplayerInitiateBulletinForSessionToken:(id)token handler:(id)handler;
- (void)hasExistingInviteSessionWithHandler:(id)handler;
- (void)initiateInvitationForMatchRequest:(id)request recipients:(id)recipients devicePushTokenMap:(id)map isNearbyInvite:(BOOL)invite availableForMessageV2:(BOOL)v2 transportContext:(id)context handler:(id)handler;
- (void)initiateRelayRequest:(id)request handler:(id)handler;
- (void)invitePlayersForMatchRequest:(id)request devicePushTokenMap:(id)map isNearbyInvite:(BOOL)invite transportContext:(id)context handler:(id)handler;
- (void)isGameCenterMultiplayerGameForBundleID:(id)d handler:(id)handler;
- (void)loadCloudKitShareURLWithPlayer:(id)player matchRequest:(id)request transportContext:(id)context availableForMessageV2:(BOOL)v2 handler:(id)handler;
- (void)loadCloudKitShareURLWithPlayer:(id)player matchRequest:(id)request transportContext:(id)context handler:(id)handler;
- (void)nearbyInviteWasCancelled:(id)cancelled;
- (void)presentNearbyInvite:(id)invite;
- (void)putMultiPlayerGroup:(id)group participants:(id)participants playedAt:(int64_t)at bundleID:(id)d numberOfAutomatched:(int64_t)automatched isSharedLink:(BOOL)link completionHandler:(id)handler;
- (void)removeInviteSession;
- (void)removeInviteSessionIfNeeded;
- (void)removePlayersFromGameInviteV2:(id)v2 handler:(id)handler;
- (void)requestTTRLogsWith:(id)with handler:(id)handler;
- (void)revokePseudonym:(id)pseudonym withCompletionHandler:(id)handler;
- (void)saveRecord:(id)record shouldRetry:(BOOL)retry withHandler:(id)handler;
- (void)sendDataToParticipant:(id)participant deviceID:(id)d data:(id)data usePeerDiscovery:(BOOL)discovery handler:(id)handler;
- (void)sendInvitationUpdate:(id)update handler:(id)handler;
- (void)sendReconnectInvitation:(id)invitation toPlayer:(id)player connectionData:(id)data sessionToken:(id)token pushToken:(id)pushToken handler:(id)handler;
- (void)setShareInvitees:(id)invitees;
- (void)setShareRecordID:(id)d;
- (void)setupInviteShareWithRecordID:(id)d rootRecord:(id)record shouldRetry:(BOOL)retry handler:(id)handler;
- (void)setupNearbyDiscovery;
- (void)startNearbyAdvertisingWithDiscoveryInfo:(id)info handler:(id)handler;
- (void)startNearbyBrowsingWithPlayerID:(id)d handler:(id)handler;
- (void)stopNearbyAdvertisingWithHandler:(id)handler;
- (void)stopNearbyBrowsingWithHandler:(id)handler;
- (void)updateCacheWithNearbyProfileDictionary:(id)dictionary handler:(id)handler;
- (void)updateRelayRequest:(id)request handler:(id)handler;
- (void)uploadLogsForRadar:(id)radar from:(id)from handler:(id)handler;
- (void)validateRequests:(id)requests andFileMultiplayerTTRIfNeededWithContext:(id)context;
@end

@implementation GKMultiplayerMatchService

- (_TtC14GameDaemonCore13GameDaemonTTR)ttrHelper
{
  ttrHelper = self->_ttrHelper;
  if (!ttrHelper)
  {
    v4 = [_TtC14GameDaemonCore13GameDaemonTTR alloc];
    clientProxy = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy bundleIdentifier];
    localPlayer = [(GKService *)self localPlayer];
    v8 = [(GameDaemonTTR *)v4 initWithClientProxyBundleIdentifier:bundleIdentifier localPlayer:localPlayer];
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

- (void)fetchPseudonymIfNeededWithTransportContext:(id)context withCompletionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  pseudonym = [contextCopy pseudonym];

  if (pseudonym)
  {
    pseudonym2 = [contextCopy pseudonym];
    handlerCopy[2](handlerCopy, pseudonym2, 0);
  }

  else
  {
    pseudonym2 = [(GKService *)GKAccountServicePrivate serviceFromService:self];
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
    v11 = handlerCopy;
    [pseudonym2 isICloudAvailableWithHandler:v10];

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }
}

- (void)getPlayersForMatchRequest:(id)request playerCount:(int64_t)count rematchID:(id)d transportContext:(id)context handler:(id)handler
{
  requestCopy = request;
  dCopy = d;
  contextCopy = context;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = requestCopy;
    v30 = 2112;
    v31 = contextCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Get players for match request: %@, transportContext: %@", buf, 0x16u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CD1B0;
  v22[3] = &unk_100365890;
  v22[4] = self;
  v23 = requestCopy;
  v24 = contextCopy;
  v25 = dCopy;
  v26 = handlerCopy;
  countCopy = count;
  v18 = handlerCopy;
  v19 = dCopy;
  v20 = contextCopy;
  v21 = requestCopy;
  [(GKMultiplayerMatchService *)self cancelOutstandingMatchRequestWithHandler:v22];
}

+ (id)makeBaseServerRequestForMatchRequest:(id)request playerCount:(int64_t)count rematchID:(id)d connInfo:(int64_t)info
{
  requestCopy = request;
  dCopy = d;
  v28[0] = @"min-peers";
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestCopy minPlayers]);
  v29[0] = v11;
  v28[1] = @"max-peers";
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestCopy maxPlayers]);
  v29[1] = v12;
  v28[2] = @"requires-guest-player-capability";
  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [requestCopy hasGuestPlayers]);
  v29[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

  if (count)
  {
    v16 = [NSNumber numberWithInteger:count];
    [v15 setObject:v16 forKey:@"num-players"];
  }

  queueName = [requestCopy queueName];

  if (queueName)
  {
    queueName2 = [requestCopy queueName];
    [v15 setObject:queueName2 forKey:@"queue-name"];

    properties = [requestCopy properties];

    if (properties)
    {
      properties2 = [requestCopy properties];
      [v15 setObject:properties2 forKey:@"properties"];
    }
  }

  else
  {
    v26[0] = @"bucket-id";
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestCopy playerGroup]);
    v27[0] = v21;
    v26[1] = @"conn-info";
    v22 = [NSNumber numberWithInteger:info];
    v27[1] = v22;
    v26[2] = @"flags";
    v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#.8x", [requestCopy playerAttributes]);
    v27[2] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v15 addEntriesFromDictionary:v24];

    if (dCopy)
    {
      [v15 setObject:dCopy forKey:@"match-id"];
    }
  }

  return v15;
}

+ (id)makePlayersDictionaryForMatchRequest:(id)request transportContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  v42 = +[NSMutableArray array];
  localPlayerID = [contextCopy localPlayerID];
  v8 = localPlayerID;
  if (localPlayerID)
  {
    localPlayerID2 = localPlayerID;
  }

  else
  {
    localPlayerID2 = [requestCopy localPlayerID];
  }

  v10 = localPlayerID2;

  properties = [requestCopy properties];
  v12 = @"player-id";
  if (properties)
  {
    v61[1] = @"properties";
    v62[0] = v10;
    v61[0] = @"player-id";
    properties2 = [requestCopy properties];
    v62[1] = properties2;
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
  recipientPlayerIDs = [requestCopy recipientPlayerIDs];
  v16 = [NSMutableSet setWithArray:recipientPlayerIDs];

  representedPlayerIDs = [contextCopy representedPlayerIDs];

  if (representedPlayerIDs)
  {
    representedPlayerIDs2 = [contextCopy representedPlayerIDs];
    [v16 addObjectsFromArray:representedPlayerIDs2];
  }

  v38 = contextCopy;
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
    v40 = requestCopy;
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
          recipientProperties = [requestCopy recipientProperties];
          v26 = [recipientProperties countByEnumeratingWithState:&v45 objects:v57 count:16];
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
                  objc_enumerationMutation(recipientProperties);
                }

                v30 = *(*(&v45 + 1) + 8 * i);
                playerID = [v30 playerID];
                v32 = [playerID isEqualToString:v23];

                if (v32)
                {
                  v12 = v24;
                  v55[0] = v24;
                  v55[1] = @"properties";
                  v56[0] = v23;
                  requestCopy = v40;
                  recipientProperties2 = [v40 recipientProperties];
                  v34 = [recipientProperties2 objectForKeyedSubscript:v30];
                  v56[1] = v34;
                  v35 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
                  [v42 addObject:v35];

                  goto LABEL_25;
                }
              }

              v27 = [recipientProperties countByEnumeratingWithState:&v45 objects:v57 count:16];
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
          recipientProperties = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          [v42 addObject:recipientProperties];
          requestCopy = v40;
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

- (void)cancelOutstandingMatchRequestWithHandler:(id)handler
{
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
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

  [clientProxy cancelOutstandingCheckMatchStatus];
  currentMatchResponse = [clientProxy currentMatchResponse];
  v9 = currentMatchResponse;
  if (currentMatchResponse && ([currentMatchResponse transitionToState:5] & 1) != 0)
  {
    v10 = [v9 rid];
    matchRequest = [v9 matchRequest];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [matchRequest playerGroup]);

    matchingGroup = [v9 matchingGroup];
    v14 = matchingGroup;
    if (v10 && v12 && matchingGroup)
    {
      v26[0] = @"rid";
      v26[1] = @"bucket-id";
      v27[0] = v10;
      v27[1] = v12;
      v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      matchingGroup2 = [v9 matchingGroup];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000CE888;
      v22[3] = &unk_1003658E0;
      v23 = v15;
      v24 = clientProxy;
      v25 = handlerCopy;
      v17 = v15;
      [matchingGroup2 perform:v22];

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
      if (!handlerCopy)
      {
        goto LABEL_22;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_22;
    }

    handlerCopy[2](handlerCopy);
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_23:
}

- (void)getFlowRateForPlayerGroup:(int64_t)group handler:(id)handler
{
  handlerCopy = handler;
  v7 = [NSNumber numberWithInteger:group];
  [(GKMultiplayerMatchService *)self getFlowRateWithPlayerGroup:v7 queueName:0 handler:handlerCopy];
}

- (void)getFlowRateWithPlayerGroup:(id)group queueName:(id)name handler:(id)handler
{
  groupCopy = group;
  nameCopy = name;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v11 = [NSString stringWithFormat:@"handler can't be nil"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (handler)\n[%s (%s:%d)]", v11, "-[GKMultiplayerMatchService getFlowRateWithPlayerGroup:queueName:handler:]", [lastPathComponent UTF8String], 402);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  if (groupCopy && nameCopy)
  {
    v15 = [NSString stringWithFormat:@"playerGroup and queueName can't be both non-nil"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    lastPathComponent2 = [v16 lastPathComponent];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (!(playerGroup && queueName))\n[%s (%s:%d)]", v15, "-[GKMultiplayerMatchService getFlowRateWithPlayerGroup:queueName:handler:]", [lastPathComponent2 UTF8String], 403);

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
  v22 = groupCopy;
  v34 = v22;
  v23 = nameCopy;
  v35 = v23;
  v37 = v38;
  v24 = v21;
  v36 = v24;
  [v24 performOnManagedObjectContext:v33];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000CF760;
  v29[3] = &unk_1003618D8;
  v27 = handlerCopy;
  v31 = v27;
  v32 = v38;
  v28 = v24;
  v30 = v28;
  [v28 notifyOnQueue:replyQueue block:v29];

  _Block_object_dispose(v38, 8);
}

- (void)getCompatibilityMatrix:(id)matrix handler:(id)handler
{
  matrixCopy = matrix;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_10028C600();
  }

  credential = [(GKService *)self credential];
  if (!credential)
  {
    v10 = +[GKPlayerCredentialController sharedController];
    clientProxy = [(GKService *)self clientProxy];
    credential = [v10 primaryCredentialForEnvironment:{objc_msgSend(clientProxy, "environment")}];
  }

  v12 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 486, "[GKMultiplayerMatchService getCompatibilityMatrix:handler:]"];
  v13 = [GKDispatchGroup dispatchGroupWithName:v12];

  clientProxy2 = [(GKService *)self clientProxy];
  playerInternal = [credential playerInternal];
  playerID = [playerInternal playerID];
  v17 = [clientProxy2 managedObjectContextForPlayerID:playerID];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000CFAA0;
  v26[3] = &unk_100361F90;
  v18 = v17;
  v27 = v18;
  v19 = matrixCopy;
  v28 = v19;
  v20 = v13;
  v29 = v20;
  selfCopy = self;
  [v20 perform:v26];
  if (handlerCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue = [clientProxy3 replyQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000D0190;
    v23[3] = &unk_100360EB0;
    v25 = handlerCopy;
    v24 = v20;
    [v24 notifyOnQueue:replyQueue block:v23];
  }
}

- (void)setShareInvitees:(id)invitees
{
  inviteesCopy = invitees;
  clientProxy = [(GKService *)self clientProxy];
  fetchOrCreateInviteSession = [clientProxy fetchOrCreateInviteSession];

  v7 = [NSMutableArray arrayWithArray:inviteesCopy];
  [fetchOrCreateInviteSession setShareInvitees:v7];

  shareRecordID = [fetchOrCreateInviteSession shareRecordID];

  if (shareRecordID)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = inviteesCopy;
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
    v19 = fetchOrCreateInviteSession;
    v20 = v15;
    selfCopy = self;
    v17 = v15;
    [v16 perform:v18];
  }
}

- (void)hasExistingInviteSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
  inviteSession = [clientProxy inviteSession];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, inviteSession != 0);
  }
}

- (void)setShareRecordID:(id)d
{
  dCopy = d;
  clientProxy = [(GKService *)self clientProxy];
  fetchOrCreateInviteSession = [clientProxy fetchOrCreateInviteSession];

  [fetchOrCreateInviteSession setShareRecordID:dCopy];
}

- (void)initiateInvitationForMatchRequest:(id)request recipients:(id)recipients devicePushTokenMap:(id)map isNearbyInvite:(BOOL)invite availableForMessageV2:(BOOL)v2 transportContext:(id)context handler:(id)handler
{
  requestCopy = request;
  recipientsCopy = recipients;
  mapCopy = map;
  contextCopy = context;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v43 = requestCopy;
    v44 = 2112;
    v45 = contextCopy;
    v46 = 2112;
    v47 = recipientsCopy;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Initiate invitation for match request: %@\ntransportContext: %@\nrecipients: %@", buf, 0x20u);
  }

  v20 = objc_alloc_init(GKInviteInitiateResponse);
  v21 = +[GKDataRequestManager sharedManager];
  v22 = +[GKPreferences shared];
  forceRelay = [v22 forceRelay];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000D0B78;
  v32[3] = &unk_100365A70;
  v33 = requestCopy;
  v34 = recipientsCopy;
  inviteCopy = invite;
  v35 = v20;
  v36 = mapCopy;
  selfCopy = self;
  v38 = contextCopy;
  v39 = handlerCopy;
  v2Copy = v2;
  v24 = handlerCopy;
  v25 = contextCopy;
  v26 = mapCopy;
  v27 = v20;
  v28 = recipientsCopy;
  v29 = requestCopy;
  [v21 getValidNATTypeWithForceRelay:forceRelay withHandler:v32];
}

- (void)loadCloudKitShareURLWithPlayer:(id)player matchRequest:(id)request transportContext:(id)context handler:(id)handler
{
  playerCopy = player;
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  if (([contextCopy validTransportSelected] & 1) != 0 || (objc_msgSend(contextCopy, "supportsTransportVersion:", &off_100382430) & 1) == 0)
  {
    [(GKMultiplayerMatchService *)self loadCloudKitShareURLWithPlayer:playerCopy matchRequest:requestCopy transportContext:contextCopy availableForMessageV2:0 handler:handlerCopy];
  }

  else
  {
    v14 = +[NSMutableArray array];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    messagesBasedRecipients = [requestCopy messagesBasedRecipients];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000D1F90;
    v32[3] = &unk_100365A98;
    v34 = &v35;
    v16 = v14;
    v33 = v16;
    [messagesBasedRecipients enumerateObjectsUsingBlock:v32];

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

      [(GKMultiplayerMatchService *)self loadCloudKitShareURLWithPlayer:playerCopy matchRequest:requestCopy transportContext:contextCopy availableForMessageV2:0 handler:handlerCopy];
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
      contactsIntegrationController = [(GKMultiplayerMatchService *)self contactsIntegrationController];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000D2030;
      v25[3] = &unk_100365AC0;
      objc_copyWeak(&v31, buf);
      v26 = playerCopy;
      v27 = requestCopy;
      v28 = contextCopy;
      v29 = v16;
      v30 = handlerCopy;
      [contactsIntegrationController fetchMessageTransportV2AvailabilityForUnprefixedHandles:v29 completion:v25];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }

    _Block_object_dispose(&v35, 8);
  }
}

- (void)loadCloudKitShareURLWithPlayer:(id)player matchRequest:(id)request transportContext:(id)context availableForMessageV2:(BOOL)v2 handler:(id)handler
{
  playerCopy = player;
  requestCopy = request;
  contextCopy = context;
  handlerCopy = handler;
  v16 = [GKDispatchGroup dispatchGroupWithName:@"loadRecordURL"];
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v35 = requestCopy;
    v36 = 2112;
    v37 = contextCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Loading a CloudKit share URL for matchRequest: %@, transportContext: %@", buf, 0x16u);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000D2474;
  v28[3] = &unk_1003617E8;
  v28[4] = self;
  v29 = requestCopy;
  v2Copy = v2;
  v30 = contextCopy;
  v19 = v16;
  v31 = v19;
  v32 = playerCopy;
  v20 = playerCopy;
  v21 = contextCopy;
  v22 = requestCopy;
  [v19 perform:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000D32D8;
  v25[3] = &unk_100360EB0;
  v26 = v19;
  v27 = handlerCopy;
  v23 = v19;
  v24 = handlerCopy;
  [v23 notifyOnQueue:&_dispatch_main_q block:v25];
}

- (void)setupInviteShareWithRecordID:(id)d rootRecord:(id)record shouldRetry:(BOOL)retry handler:(id)handler
{
  dCopy = d;
  recordCopy = record;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = [NSString stringWithFormat:@"Handler not set by callers of setupInviteShareWithRecordID:rootRecord:shouldRetry:handler:."];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    lastPathComponent = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (handler)\n[%s (%s:%d)]", v13, "-[GKMultiplayerMatchService setupInviteShareWithRecordID:rootRecord:shouldRetry:handler:]", [lastPathComponent UTF8String], 997);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  v17 = [[CKShare alloc] initWithRootRecord:recordCopy shareID:dCopy];
  [v17 setPublicPermission:3];
  v18 = [CKModifyRecordsOperation alloc];
  v34[0] = v17;
  v34[1] = recordCopy;
  v19 = [NSArray arrayWithObjects:v34 count:2];
  v20 = [v18 initWithRecordsToSave:v19 recordIDsToDelete:0];

  v21 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v20 setConfiguration:v21];

  [v20 setSavePolicy:1];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000D3620;
  v27[3] = &unk_100365B88;
  v31 = recordCopy;
  v32 = handlerCopy;
  retryCopy = retry;
  v28 = v17;
  selfCopy = self;
  v30 = dCopy;
  v22 = recordCopy;
  v23 = dCopy;
  v24 = handlerCopy;
  v25 = v17;
  [v20 setModifyRecordsCompletionBlock:v27];
  privateDatabase = [(GKMultiplayerMatchService *)self privateDatabase];
  [privateDatabase addOperation:v20];
}

- (id)privateDatabase
{
  v2 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions"];
  privateCloudDatabase = [v2 privateCloudDatabase];

  return privateCloudDatabase;
}

- (BOOL)zoneNotFoundFromOperation:(id)operation operationError:(id)error
{
  operationCopy = operation;
  errorCopy = error;
  if ([errorCopy code] == 2)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [v8 allValues];
    v10 = [allValues countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v10)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(allValues);
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
              v21 = operationCopy;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Zone Not Found. Should retry %@ after creating zone.", buf, 0xCu);
            }

            goto LABEL_16;
          }
        }

        v10 = [allValues countByEnumeratingWithState:&v16 objects:v22 count:16];
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

- (void)saveRecord:(id)record shouldRetry:(BOOL)retry withHandler:(id)handler
{
  recordCopy = record;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = [NSString stringWithFormat:@"Handler not set by callers of saveRecord:shouldRetry:withHandler:."];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKMultiplayerMatchService.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (handler)\n[%s (%s:%d)]", v10, "-[GKMultiplayerMatchService saveRecord:shouldRetry:withHandler:]", [lastPathComponent UTF8String], 1078);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [CKModifyRecordsOperation alloc];
  v25 = recordCopy;
  v15 = [NSArray arrayWithObjects:&v25 count:1];
  v16 = [v14 initWithRecordsToSave:v15 recordIDsToDelete:0];

  v17 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v16 setConfiguration:v17];

  [v16 setSavePolicy:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D3E30;
  v21[3] = &unk_100365BB0;
  retryCopy = retry;
  v21[4] = self;
  v22 = recordCopy;
  v23 = handlerCopy;
  v18 = handlerCopy;
  v19 = recordCopy;
  [v16 setModifyRecordsCompletionBlock:v21];
  privateDatabase = [(GKMultiplayerMatchService *)self privateDatabase];
  [privateDatabase addOperation:v16];
}

- (void)invitePlayersForMatchRequest:(id)request devicePushTokenMap:(id)map isNearbyInvite:(BOOL)invite transportContext:(id)context handler:(id)handler
{
  requestCopy = request;
  mapCopy = map;
  contextCopy = context;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v67 = requestCopy;
    v68 = 2112;
    v69 = contextCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Invite players for matchRequest: %@, transportContext: %@", buf, 0x16u);
  }

  v43 = contextCopy;
  v15 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1116, "[GKMultiplayerMatchService invitePlayersForMatchRequest:devicePushTokenMap:isNearbyInvite:transportContext:handler:]"];
  v16 = [(GKService *)self transactionGroupWithName:v15];

  v17 = +[NSMutableArray array];
  recipients = [requestCopy recipients];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000D4478;
  v64[3] = &unk_100362458;
  v19 = v17;
  v65 = v19;
  [recipients enumerateObjectsUsingBlock:v64];

  if (![v19 count])
  {
    recipientPlayerIDs = [requestCopy recipientPlayerIDs];
    [v19 addObjectsFromArray:recipientPlayerIDs];
  }

  v21 = [v19 count];
  v22 = [[NSMutableArray alloc] initWithCapacity:v21];
  v23 = [[NSMutableDictionary alloc] initWithCapacity:v21];
  v24 = objc_opt_class();
  archivedSharePlayInviteeTokensFromProgrammaticInvite = [requestCopy archivedSharePlayInviteeTokensFromProgrammaticInvite];
  v63 = 0;
  v26 = [NSKeyedUnarchiver unarchivedObjectOfClass:v24 fromData:archivedSharePlayInviteeTokensFromProgrammaticInvite error:&v63];
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

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000D44E8;
  v52[3] = &unk_100365C28;
  v42 = v27;
  v53 = v19;
  v54 = mapCopy;
  v55 = v22;
  v56 = v26;
  v57 = v23;
  v32 = v16;
  v58 = v32;
  selfCopy = self;
  inviteCopy = invite;
  v60 = requestCopy;
  v61 = v43;
  v46 = v43;
  v44 = requestCopy;
  v33 = v23;
  v34 = v26;
  v35 = v22;
  v36 = mapCopy;
  v37 = v19;
  [v32 performOnQueue:replyQueue block:v52];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000D5570;
  v49[3] = &unk_100360EB0;
  v50 = v32;
  v51 = handlerCopy;
  v40 = v32;
  v41 = handlerCopy;
  [v40 notifyOnQueue:replyQueue2 block:v49];
}

- (void)removePlayersFromGameInviteV2:(id)v2 handler:(id)handler
{
  handlerCopy = handler;
  v2Copy = v2;
  clientProxy = [(GKService *)self clientProxy];
  removePlayersFromGameInviteV2(clientProxy, v2Copy, handlerCopy);
}

- (void)cancelGameInviteWithHandler:(id)handler
{
  handlerCopy = handler;
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

  clientProxy = [(GKService *)self clientProxy];
  inviteSession = [clientProxy inviteSession];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1383, "[GKMultiplayerMatchService cancelGameInviteWithHandler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D5E94;
  v19[3] = &unk_100360FF0;
  v20 = inviteSession;
  v11 = clientProxy;
  v21 = v11;
  v12 = inviteSession;
  [v10 perform:v19];
  replyQueue = [v11 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D605C;
  v16[3] = &unk_100361270;
  v17 = v11;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = v11;
  [v10 notifyOnQueue:replyQueue block:v16];
}

- (id)ensureGroup:(id)group participants:(id)participants playedAt:(int64_t)at numberOfAutomatched:(int64_t)automatched moc:(id)moc list:(id)list
{
  groupCopy = group;
  participantsCopy = participants;
  mocCopy = moc;
  listCopy = list;
  if (!listCopy)
  {
    v15 = [MultiplayerGroupList alloc];
    v16 = +[MultiplayerGroupList entity];
    listCopy = [(MultiplayerGroupList *)v15 initWithEntity:v16 insertIntoManagedObjectContext:mocCopy];
  }

  v17 = +[MultiplayerGroup _gkFetchRequest];
  v41 = groupCopy;
  groupCopy = [NSPredicate predicateWithFormat:@"id == %@", groupCopy];
  [v17 setPredicate:groupCopy];

  v37 = v17;
  v19 = [NSManagedObject _gkRetrieveCleanEntry:mocCopy request:v17];
  if (!v19)
  {
    v20 = [MultiplayerGroup alloc];
    v21 = +[MultiplayerGroup entity];
    v19 = [(MultiplayerGroup *)v20 initWithEntity:v21 insertIntoManagedObjectContext:mocCopy];

    [(MultiplayerGroupList *)listCopy addEntriesObject:v19];
  }

  v36 = v19;
  v38 = listCopy;
  v22 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = participantsCopy;
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
        v31 = [(MultiplayerGroupParticipant *)v29 initWithEntity:v30 insertIntoManagedObjectContext:mocCopy];

        [(MultiplayerGroupParticipant *)v31 setPlayerID:v28];
        [v22 addObject:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v25);
  }

  entries = [(MultiplayerGroup *)v36 entries];
  [(MultiplayerGroup *)v36 removeEntries:entries];

  [(MultiplayerGroup *)v36 addEntries:v22];
  [(MultiplayerGroup *)v36 setId:v41];
  v33 = [NSNumber numberWithInteger:automatched];
  [(MultiplayerGroup *)v36 setNumberOfAutomatched:v33];

  v34 = [NSNumber numberWithInteger:at];
  [(MultiplayerGroup *)v36 setPlayedAt:v34];

  return v36;
}

- (void)convertToInternalObjects:(id)objects results:(id)results
{
  resultsCopy = results;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [objects entries];
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
        numberOfAutomatched = [v9 numberOfAutomatched];
        [v10 setNumberOfAutomached:{objc_msgSend(numberOfAutomatched, "longValue")}];

        v12 = [v9 id];
        [v10 setGroupID:v12];

        v13 = objc_opt_new();
        [v10 setParticipants:v13];

        playedAt = [v9 playedAt];
        [v10 setPlayedAt:{objc_msgSend(playedAt, "longValue")}];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        entries = [v9 entries];
        v16 = [entries countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(entries);
              }

              v20 = *(*(&v25 + 1) + 8 * v19);
              participants = [v10 participants];
              playerID = [v20 playerID];
              [participants addObject:playerID];

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [entries countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v17);
        }

        [resultsCopy addObject:v10];
        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }
}

- (void)getMultiPlayerGroups:(id)groups
{
  groupsCopy = groups;
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
  v14 = groupsCopy;
  v8 = groupsCopy;
  v9 = v6;
  v10 = v7;
  [v9 performOnManagedObjectContext:v11];
}

- (void)putMultiPlayerGroup:(id)group participants:(id)participants playedAt:(int64_t)at bundleID:(id)d numberOfAutomatched:(int64_t)automatched isSharedLink:(BOOL)link completionHandler:(id)handler
{
  linkCopy = link;
  groupCopy = group;
  handlerCopy = handler;
  dCopy = d;
  participantsCopy = participants;
  credential = [(GKService *)self credential];
  if (!credential)
  {
    v17 = +[GKPlayerCredentialController sharedController];
    clientProxy = [(GKService *)self clientProxy];
    credential = [v17 primaryCredentialForEnvironment:{objc_msgSend(clientProxy, "environment")}];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  playerInternal = [credential playerInternal];
  playerID = [playerInternal playerID];
  v22 = [clientProxy2 managedObjectContextForPlayerID:playerID];

  v23 = [NSSet setWithArray:participantsCopy];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000D7578;
  v40[3] = &unk_100365CB8;
  v24 = v22;
  v41 = v24;
  selfCopy = self;
  v25 = groupCopy;
  v43 = v25;
  v26 = v23;
  v44 = v26;
  atCopy = at;
  automatchedCopy = automatched;
  [v24 performBlockAndWait:v40];
  v27 = [[GKMultiplayerGroupRequest alloc] initWithGroupID:v25];
  [(GKMultiplayerGroupRequest *)v27 setBundleID:dCopy];

  [(GKMultiplayerGroupRequest *)v27 setParticipants:v26];
  if (at)
  {
    [(GKMultiplayerGroupRequest *)v27 setPlayedAt:at];
  }

  if (linkCopy)
  {
    [(GKMultiplayerGroupRequest *)v27 setGroupRelationshipType:@"SHAREDLINK"];
  }

  [(GKMultiplayerGroupRequest *)v27 setPlayerGroupID:v25];
  v47 = @"numberOfAutomatched";
  v28 = [NSNumber numberWithInteger:automatched];
  v29 = [NSString stringWithFormat:@"%@", v28];
  v48 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v31 = [v30 mutableCopy];
  [(GKMultiplayerGroupRequest *)v27 setRequestData:v31];

  v32 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy3 = [(GKService *)self clientProxy];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000D760C;
  v38[3] = &unk_100361CB8;
  v39 = handlerCopy;
  v34 = handlerCopy;
  [v32 writeToNetwork:v27 clientProxy:clientProxy3 handler:v38];
}

- (void)acceptGameInvite:(id)invite transportContext:(id)context handler:(id)handler
{
  inviteCopy = invite;
  contextCopy = context;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v35 = inviteCopy;
    v36 = 2112;
    v37 = contextCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Accept game invite: %@, transportContext: %@", buf, 0x16u);
  }

  v13 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1578, "[GKMultiplayerMatchService acceptGameInvite:transportContext:handler:]"];
  v14 = [(GKService *)self transactionGroupWithName:v13];

  v15 = objc_alloc_init(GKInviteAcceptResponse);
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000D799C;
  v29[3] = &unk_100361BF8;
  v29[4] = self;
  v30 = inviteCopy;
  v31 = contextCopy;
  v18 = v14;
  v32 = v18;
  v33 = v15;
  v19 = v15;
  v20 = contextCopy;
  v21 = inviteCopy;
  [v18 performOnQueue:replyQueue block:v29];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000D8298;
  v26[3] = &unk_100360EB0;
  v27 = v18;
  v28 = handlerCopy;
  v24 = v18;
  v25 = handlerCopy;
  [v24 notifyOnQueue:replyQueue2 block:v26];
}

- (void)declineGameInvite:(id)invite reason:(int64_t)reason handler:(id)handler
{
  handlerCopy = handler;
  inviteCopy = invite;
  v10 = +[GKDataRequestManager sharedManager];
  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];
  v13 = [bundleIdentifier dataUsingEncoding:4];

  v25 = v13;
  v14 = [NSDictionary dictionaryWithObjectsAndKeys:v13, @"s", 0];
  v26 = v10;
  pushToken = [v10 pushToken];
  v29[0] = @"session-token";
  sessionToken = [inviteCopy sessionToken];
  v30[0] = sessionToken;
  v29[1] = @"peer-id";
  peerID = [inviteCopy peerID];
  v30[1] = peerID;
  v29[2] = @"peer-push-token";
  peerPushToken = [inviteCopy peerPushToken];

  v30[2] = peerPushToken;
  v29[3] = @"self-push-token";
  v19 = pushToken;
  if (!pushToken)
  {
    v19 = +[NSData data];
  }

  v30[3] = v19;
  v29[4] = @"reason";
  v20 = [NSNumber numberWithInteger:reason];
  v29[5] = @"client-data";
  v30[4] = v20;
  v30[5] = v14;
  v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];

  if (!pushToken)
  {
  }

  v22 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy2 = [(GKService *)self clientProxy];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000D862C;
  v27[3] = &unk_1003615D8;
  v28 = handlerCopy;
  v24 = handlerCopy;
  [v22 issueRequest:v21 bagKey:@"gk-invitation-reject" clientProxy:clientProxy2 handler:v27];
}

- (void)getAcceptedGameInviteWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1678, "[GKMultiplayerMatchService getAcceptedGameInviteWithHandler:]"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D872C;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [GKActivity named:v5 execute:v7];
}

- (void)hasCanceledMultiplayerInitiateBulletinForSessionToken:(id)token handler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
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
  acceptedInviteManager = [v9 acceptedInviteManager];
  v11 = [acceptedInviteManager removeAndReturnQueuedCancelledInviteWithSessionToken:tokenCopy];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)getPlayersToInviteWithHandlerV2:(id)v2
{
  v2Copy = v2;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1744, "[GKMultiplayerMatchService getPlayersToInviteWithHandlerV2:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  context = [v6 context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D8EE8;
  v14[3] = &unk_1003610B8;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  [context performBlockAndWait:v14];

  if (v2Copy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D9048;
    v11[3] = &unk_100360EB0;
    v13 = v2Copy;
    v12 = v8;
    [v12 notifyOnQueue:replyQueue block:v11];
  }
}

- (void)getInviteSessionTokenWithHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_1000CCBD8;
  v13[4] = sub_1000CCBE8;
  v14 = 0;
  clientProxy = [(GKService *)self clientProxy];
  inviteSession = [clientProxy inviteSession];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D91F8;
  v9[3] = &unk_100365D98;
  v12 = v13;
  v7 = inviteSession;
  v10 = v7;
  v8 = handlerCopy;
  v11 = v8;
  [v7 performAsync:v9];

  _Block_object_dispose(v13, 8);
}

- (void)removeInviteSession
{
  clientProxy = [(GKService *)self clientProxy];
  [clientProxy deleteInviteSession];
}

- (void)removeInviteSessionIfNeeded
{
  clientProxy = [(GKService *)self clientProxy];
  fetchOrCreateInviteSession = [clientProxy fetchOrCreateInviteSession];
  shouldBeCleared = [fetchOrCreateInviteSession shouldBeCleared];

  if (shouldBeCleared)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      clientProxy2 = [(GKService *)self clientProxy];
      inviteSession = [clientProxy2 inviteSession];
      clientProxy3 = [(GKService *)self clientProxy];
      inviteSession2 = [clientProxy3 inviteSession];
      sessionToken = [inviteSession2 sessionToken];
      v15 = 138412546;
      v16 = inviteSession;
      v17 = 2112;
      v18 = sessionToken;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ClientProxy should clear inviteSession: %@, token: %@", &v15, 0x16u);
    }

    clientProxy4 = [(GKService *)self clientProxy];
    [clientProxy4 deleteInviteSession];
  }
}

- (void)sendReconnectInvitation:(id)invitation toPlayer:(id)player connectionData:(id)data sessionToken:(id)token pushToken:(id)pushToken handler:(id)handler
{
  invitationCopy = invitation;
  playerCopy = player;
  dataCopy = data;
  tokenCopy = token;
  pushTokenCopy = pushToken;
  handlerCopy = handler;
  v20 = +[GKDataRequestManager sharedManager];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000D95B8;
  v27[3] = &unk_100365DC0;
  v28 = invitationCopy;
  v29 = dataCopy;
  selfCopy = self;
  v31 = tokenCopy;
  v32 = playerCopy;
  v33 = pushTokenCopy;
  v34 = handlerCopy;
  v21 = handlerCopy;
  v22 = pushTokenCopy;
  v23 = playerCopy;
  v24 = tokenCopy;
  v25 = dataCopy;
  v26 = invitationCopy;
  [v20 getValidNATTypeWithForceRelay:0 withHandler:v27];
}

- (void)sendInvitationUpdate:(id)update handler:(id)handler
{
  updateCopy = update;
  handlerCopy = handler;
  v6 = +[NSMutableArray array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [updateCopy playerTokenMap];
  v49 = updateCopy;
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
        playerTokenMap = [updateCopy playerTokenMap];
        v10 = [playerTokenMap objectForKeyedSubscript:v8];

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
        updateCopy = v49;
      }

      while ((v51 + 1) != v50);
      v50 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v50);
  }

  v71[0] = @"bundle-id";
  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];
  v72[0] = bundleIdentifier;
  v71[1] = GKSuggestedTransportVersionPushShortKey;
  transportVersionToUse = [updateCopy transportVersionToUse];
  v72[1] = transportVersionToUse;
  v71[2] = GKInviteSessionIDKey;
  sessionID = [updateCopy sessionID];
  v72[2] = sessionID;
  [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3];
  v22 = v21 = updateCopy;
  v52 = [NSMutableDictionary dictionaryWithDictionary:v22];

  v69[0] = @"session-token";
  sessionToken = [v21 sessionToken];
  v70[0] = sessionToken;
  v69[1] = @"self-push-token";
  v24 = +[GKDataRequestManager sharedManager];
  pushToken = [v24 pushToken];
  v26 = pushToken;
  if (!pushToken)
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

  if (!pushToken)
  {
  }

  matchID = [v49 matchID];

  if (matchID)
  {
    matchID2 = [v49 matchID];
    [v52 setObject:matchID2 forKeyedSubscript:GKMatchmakerMatchID];
  }

  playerTokenMap2 = [v49 playerTokenMap];

  if (playerTokenMap2)
  {
    playerTokenMap3 = [v49 playerTokenMap];
    [v52 setObject:playerTokenMap3 forKeyedSubscript:GKTransportPlayerTokenMapKey];
  }

  v34 = +[NSMutableArray array];
  gameParticipants = [v49 gameParticipants];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000DA304;
  v57[3] = &unk_100365DE8;
  v36 = v34;
  v58 = v36;
  [gameParticipants enumerateObjectsUsingBlock:v57];

  if ([v36 count])
  {
    [v52 setObject:v36 forKey:GKInviteGameParticipantsKey];
  }

  v37 = +[NSMutableArray array];
  lobbyParticipants = [v49 lobbyParticipants];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000DA35C;
  v55[3] = &unk_100365DE8;
  v39 = v37;
  v56 = v39;
  [lobbyParticipants enumerateObjectsUsingBlock:v55];

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
  clientProxy2 = [(GKService *)self clientProxy];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000DA3B4;
  v53[3] = &unk_1003615D8;
  v54 = handlerCopy;
  v44 = handlerCopy;
  [v42 issueRequest:v29 bagKey:@"gk-invitation-send" clientProxy:clientProxy2 handler:v53];
}

- (void)requestTTRLogsWith:(id)with handler:(id)handler
{
  withCopy = with;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    clientProxy = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy bundleIdentifier];
    *buf = 138412546;
    v61 = withCopy;
    v62 = 2112;
    v63 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request TTRLogsWith: %@, for client proxy: %@", buf, 0x16u);
  }

  selfCopy = self;
  v12 = +[NSMutableArray array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  playersAndPushTokens = [withCopy playersAndPushTokens];
  v14 = [playersAndPushTokens countByEnumeratingWithState:&v53 objects:v59 count:16];
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
          objc_enumerationMutation(playersAndPushTokens);
        }

        serverRepresentation = [*(*(&v53 + 1) + 8 * i) serverRepresentation];
        [v12 addObject:serverRepresentation];
      }

      v15 = [playersAndPushTokens countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v15);
  }

  v57[0] = @"session-token";
  v19 = +[NSData data];
  v58[0] = v19;
  v57[1] = @"self-push-token";
  v20 = +[GKDataRequestManager sharedManager];
  pushToken = [v20 pushToken];
  v22 = pushToken;
  if (!pushToken)
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
  radarID = [withCopy radarID];
  v58[4] = radarID;
  v25 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:5];
  v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

  if (!pushToken)
  {
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000DA9E4;
  v51[3] = &unk_100361CB8;
  v52 = handlerCopy;
  v27 = handlerCopy;
  v28 = objc_retainBlock(v51);
  v29 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1932, "[GKMultiplayerMatchService requestTTRLogsWith:handler:]"];
  requesterPlayerID = [withCopy requesterPlayerID];
  v31 = [(GKService *)selfCopy transactionGroupWithName:v29 forPlayerID:requesterPlayerID];

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000DAA74;
  v48[3] = &unk_100361708;
  v32 = withCopy;
  v49 = v32;
  v33 = v31;
  v50 = v33;
  [v33 performOnManagedObjectContext:v48];
  clientProxy2 = [(GKService *)selfCopy clientProxy];
  taskQueue = [clientProxy2 taskQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000DAB44;
  v42[3] = &unk_100363768;
  v43 = v33;
  v44 = v32;
  v46 = selfCopy;
  v47 = v28;
  v45 = v26;
  v36 = v26;
  v37 = v28;
  v38 = v32;
  v39 = v33;
  [v39 notifyOnQueue:taskQueue block:v42];
}

- (void)_performRelayAction:(id)action request:(id)request handler:(id)handler
{
  actionCopy = action;
  requestCopy = request;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 1973, "[GKMultiplayerMatchService _performRelayAction:request:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DB150;
  v23[3] = &unk_100361F90;
  v24 = requestCopy;
  v25 = actionCopy;
  selfCopy = self;
  v13 = v12;
  v27 = v13;
  v14 = actionCopy;
  v15 = requestCopy;
  [v13 perform:v23];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DB2BC;
  v20[3] = &unk_100360EB0;
  v21 = v13;
  v22 = handlerCopy;
  v18 = v13;
  v19 = handlerCopy;
  [v18 notifyOnQueue:replyQueue block:v20];
}

- (void)initiateRelayRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = +[GKDataRequestManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DB434;
  v11[3] = &unk_100365E10;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  [v8 getValidNATTypeWithForceRelay:0 withHandler:v11];
}

- (void)updateRelayRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = +[GKDataRequestManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DB6B0;
  v11[3] = &unk_100365E10;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  [v8 getValidNATTypeWithForceRelay:0 withHandler:v11];
}

- (void)cancelRelayRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "relayCancel serverRequest:%@", &v11, 0xCu);
  }

  [(GKMultiplayerMatchService *)self _performRelayAction:@"gk-invitation-relay-cancel" request:requestCopy handler:handlerCopy];
  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainRelay type:GKReporterRelayCancel];
}

- (void)updateCacheWithNearbyProfileDictionary:(id)dictionary handler:(id)handler
{
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 2038, "[GKMultiplayerMatchService updateCacheWithNearbyProfileDictionary:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [dictionaryCopy objectForKey:@"profile"];

  v11 = [v10 objectForKey:@"playerID"];
  if (v11)
  {
    context = [v9 context];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000DBB94;
    v18[3] = &unk_100361F68;
    v19 = v11;
    v20 = v9;
    v21 = v10;
    [context performBlockAndWait:v18];
  }

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000DBF64;
    v15[3] = &unk_100360EB0;
    v17 = handlerCopy;
    v16 = v9;
    [v16 notifyOnQueue:replyQueue block:v15];
  }
}

- (void)startNearbyBrowsingWithPlayerID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    clientProxy = [(GKService *)self clientProxy];
    peerDiscovery = [clientProxy peerDiscovery];
    *buf = 138412290;
    v28 = peerDiscovery;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "peerDiscovery (%@) startBrowsing", buf, 0xCu);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DC24C;
  v25[3] = &unk_100360FA0;
  v13 = handlerCopy;
  v26 = v13;
  v14 = objc_retainBlock(v25);
  v15 = +[GKPreferences shared];
  disableViceroyNearby = [v15 disableViceroyNearby];

  if ((disableViceroyNearby & 1) == 0)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    nearbyDiscovery = [clientProxy2 nearbyDiscovery];
    [nearbyDiscovery startBrowsingWithPlayerID:dCopy];
  }

  v19 = +[GKPreferences shared];
  fastSyncTransportEnabled = [v19 fastSyncTransportEnabled];

  if (fastSyncTransportEnabled)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    peerDiscovery2 = [clientProxy3 peerDiscovery];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000DC2CC;
    v23[3] = &unk_100360FA0;
    v24 = v14;
    [peerDiscovery2 startBrowsingWithCompletionHandler:v23];
  }

  else
  {
    (v14[2])(v14);
  }
}

- (void)stopNearbyBrowsingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    clientProxy = [(GKService *)self clientProxy];
    peerDiscovery = [clientProxy peerDiscovery];
    *buf = 138412290;
    v25 = peerDiscovery;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "peerDiscovery (%@) stopBrowsing", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DC554;
  v22[3] = &unk_100360FA0;
  v10 = handlerCopy;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  v12 = +[GKPreferences shared];
  disableViceroyNearby = [v12 disableViceroyNearby];

  if ((disableViceroyNearby & 1) == 0)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    nearbyDiscovery = [clientProxy2 nearbyDiscovery];
    [nearbyDiscovery stopBrowsing];
  }

  v16 = +[GKPreferences shared];
  fastSyncTransportEnabled = [v16 fastSyncTransportEnabled];

  if (fastSyncTransportEnabled)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    peerDiscovery2 = [clientProxy3 peerDiscovery];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DC5D4;
    v20[3] = &unk_100360FA0;
    v21 = v11;
    [peerDiscovery2 stopBrowsingWithCompletionHandler:v20];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)startNearbyAdvertisingWithDiscoveryInfo:(id)info handler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    clientProxy = [(GKService *)self clientProxy];
    peerDiscovery = [clientProxy peerDiscovery];
    *buf = 138412290;
    v30 = peerDiscovery;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "peerDiscovery (%@) startListening", buf, 0xCu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000DC8A4;
  v27[3] = &unk_100361CB8;
  v13 = handlerCopy;
  v28 = v13;
  v14 = objc_retainBlock(v27);
  v15 = +[GKPreferences shared];
  disableViceroyNearby = [v15 disableViceroyNearby];

  if (disableViceroyNearby)
  {
    v17 = 0;
  }

  else
  {
    clientProxy2 = [(GKService *)self clientProxy];
    nearbyDiscovery = [clientProxy2 nearbyDiscovery];
    v17 = [nearbyDiscovery startAdvertisingWithDiscoveryInfo:infoCopy];
  }

  v20 = +[GKPreferences shared];
  fastSyncTransportEnabled = [v20 fastSyncTransportEnabled];

  if (fastSyncTransportEnabled)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    peerDiscovery2 = [clientProxy3 peerDiscovery];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000DC930;
    v24[3] = &unk_100360EB0;
    v26 = v14;
    v25 = v17;
    [peerDiscovery2 startListening:infoCopy completionHandler:v24];
  }

  else
  {
    (v14[2])(v14, v17);
  }
}

- (void)stopNearbyAdvertisingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKFastSync;
  if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    clientProxy = [(GKService *)self clientProxy];
    peerDiscovery = [clientProxy peerDiscovery];
    *buf = 138412290;
    v25 = peerDiscovery;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "peerDiscovery (%@) stopListening", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DCBBC;
  v22[3] = &unk_100360FA0;
  v10 = handlerCopy;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  v12 = +[GKPreferences shared];
  disableViceroyNearby = [v12 disableViceroyNearby];

  if ((disableViceroyNearby & 1) == 0)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    nearbyDiscovery = [clientProxy2 nearbyDiscovery];
    [nearbyDiscovery stopAdvertising];
  }

  v16 = +[GKPreferences shared];
  fastSyncTransportEnabled = [v16 fastSyncTransportEnabled];

  if (fastSyncTransportEnabled)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    peerDiscovery2 = [clientProxy3 peerDiscovery];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DCC3C;
    v20[3] = &unk_100360FA0;
    v21 = v11;
    [peerDiscovery2 stopListeningWithCompletionHandler:v20];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)presentNearbyInvite:(id)invite
{
  inviteCopy = invite;
  v4 = +[GKDataRequestManager sharedManager];
  [v4 presentNearbyInvite:inviteCopy];
}

- (void)nearbyInviteWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v4 = +[GKDataRequestManager sharedManager];
  [v4 nearbyInviteWasCancelled:cancelledCopy];
}

- (void)fetchDevicePushToken:(id)token
{
  tokenCopy = token;
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
  pushToken = [v6 pushToken];

  tokenCopy[2](tokenCopy, pushToken);
}

- (void)fetchOnDeviceMultiplayerBundleIDsForNewBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchOnDeviceMultiplayerBundleIDsForNewBundleID: %@", buf, 0xCu);
  }

  v9 = +[GKClientProxy gameCenterClient];
  v10 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v9 localPlayer:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DCF6C;
  v12[3] = &unk_1003626B0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [v10 getOnDeviceMultiplayerGamesForBundleIDs:dCopy handler:v12];
}

- (void)fetchOnDeviceMultiplayerBundleIDsWithHandler:(id)handler
{
  handlerCopy = handler;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Scanning installed apps", &v16, 0xCu);
  }

  v9 = +[GKApplicationWorkspace defaultWorkspace];
  availableGameIdentifiers = [v9 availableGameIdentifiers];
  v11 = [availableGameIdentifiers count];
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
    selfCopy = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "found %@ installed Game Center games.", &v16, 0xCu);
  }

  [(GKMultiplayerMatchService *)self fetchOnDeviceMultiplayerBundleIDsForNewBundleID:availableGameIdentifiers handler:handlerCopy];
}

- (void)isGameCenterMultiplayerGameForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "isGameCenterMultiplayerGameForBundleID, bundleID: %@", buf, 0xCu);
  }

  v16 = dCopy;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DD40C;
  v13[3] = &unk_100362408;
  v14 = dCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = dCopy;
  [(GKMultiplayerMatchService *)self fetchOnDeviceMultiplayerBundleIDsForNewBundleID:v10 handler:v13];
}

- (void)fetchTransportOverrideWithHandler:(id)handler
{
  handlerCopy = handler;
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
  forceEnabledTransportVersions = [v6 forceEnabledTransportVersions];
  v8 = +[GKPreferences shared];
  forceDisabledTransportVersions = [v8 forceDisabledTransportVersions];
  v10 = +[GKPreferences shared];
  handlerCopy[2](handlerCopy, forceEnabledTransportVersions, forceDisabledTransportVersions, [v10 multiplayerHealthCheckEnabled]);
}

- (void)setupNearbyDiscovery
{
  v3 = +[GKPreferences shared];
  disableViceroyNearby = [v3 disableViceroyNearby];

  if (disableViceroyNearby)
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
    clientProxy = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy bundleIdentifier];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000DD7E4;
    v21[3] = &unk_100365E60;
    v9 = bundleIdentifier;
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
    clientProxy2 = [(GKService *)self clientProxy];
    nearbyDiscovery = [clientProxy2 nearbyDiscovery];
    [nearbyDiscovery setupWithPlayerFoundHandler:v10 playerLostHandler:v12 receiveDataHandler:v14];
  }
}

- (void)forgetParticipant:(id)participant deviceID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  participantCopy = participant;
  clientProxy = [(GKService *)self clientProxy];
  nearbyDiscovery = [clientProxy nearbyDiscovery];
  [nearbyDiscovery forgetParticipant:participantCopy deviceID:dCopy];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
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

- (void)sendDataToParticipant:(id)participant deviceID:(id)d data:(id)data usePeerDiscovery:(BOOL)discovery handler:(id)handler
{
  discoveryCopy = discovery;
  participantCopy = participant;
  dCopy = d;
  dataCopy = data;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v18 = @"bonjour in Viceoroy";
    if (discoveryCopy)
    {
      v18 = @"bonjour in gamed";
    }

    *buf = 138412290;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Sending data to nearby participant with %@", buf, 0xCu);
  }

  clientProxy = [(GKService *)self clientProxy];
  v20 = clientProxy;
  if (discoveryCopy)
  {
    peerDiscovery = [clientProxy peerDiscovery];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000DE250;
    v27[3] = &unk_100361CB8;
    v22 = &v28;
    v28 = handlerCopy;
    v23 = handlerCopy;
    [peerDiscovery sendDataToParticipant:participantCopy deviceID:dCopy data:dataCopy completionHandler:v27];
  }

  else
  {
    peerDiscovery = [clientProxy nearbyDiscovery];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000DE26C;
    v25[3] = &unk_100361CB8;
    v22 = &v26;
    v26 = handlerCopy;
    v24 = handlerCopy;
    [peerDiscovery sendDataToParticipant:participantCopy deviceID:dCopy data:dataCopy handler:v25];
  }
}

- (void)revokePseudonym:(id)pseudonym withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  pseudonymCopy = pseudonym;
  pseudonymManager = [(GKMultiplayerMatchService *)self pseudonymManager];
  [pseudonymManager revokePseudonym:pseudonymCopy completionHandler:handlerCopy];
}

- (void)validateRequests:(id)requests andFileMultiplayerTTRIfNeededWithContext:(id)context
{
  contextCopy = context;
  v6 = [requests objectForKey:GKSupportedTransportVersionsKey];
  v7 = [v6 containsObject:&off_100382478];

  if (v7)
  {
    [(GKMultiplayerMatchService *)self fileMultiplayerTTRWithCallBackIdentifier:&stru_100374F10 descriptionAddition:contextCopy handler:&stru_100365EF8];
  }
}

- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)identifier descriptionAddition:(id)addition handler:(id)handler
{
  identifierCopy = identifier;
  additionCopy = addition;
  handlerCopy = handler;
  v11 = +[GKPreferences shared];
  isInternalBuild = [v11 isInternalBuild];

  if (isInternalBuild)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKMultiplayerService fileMultiplayerTTR with callbackIdentifier: %@", buf, 0xCu);
    }

    v21 = GKTTRBulletinKeyType;
    v22 = &off_100382490;
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

    ttrHelper = [(GKMultiplayerMatchService *)self ttrHelper];
    v18 = [ttrHelper getURLForNewMultiplayerRadarWithCallbackIdentifier:identifierCopy descriptionAddition:additionCopy];

    if (v18)
    {
      [v16 setObject:v18 forKeyedSubscript:GKTTRBulletinKeyURL];
    }

    if (additionCopy)
    {
      [v16 setObject:additionCopy forKeyedSubscript:GKTTRBulletinKeySubtitle];
    }

    v19 = [GKTTRInitiationBulletin packFakeTTRBulletinWithInfo:v16];
    v20 = +[GKDataRequestManager sharedManager];
    [v20 processIncomingTTR:v19];

    handlerCopy[2](handlerCopy);
  }
}

- (void)uploadLogsForRadar:(id)radar from:(id)from handler:(id)handler
{
  radarCopy = radar;
  fromCopy = from;
  handlerCopy = handler;
  v11 = +[GKPreferences shared];
  isInternalBuild = [v11 isInternalBuild];

  if (isInternalBuild)
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
    v23[1] = radarCopy;
    v22[2] = GKTTRBulletinKeyRequesterPlayerAlias;
    v23[2] = fromCopy;
    v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

    ttrHelper = [(GKMultiplayerMatchService *)self ttrHelper];
    v18 = [ttrHelper getURLForExistingMultiplayerRadarWithRadarID:radarCopy];

    if (v18)
    {
      [v16 setObject:v18 forKeyedSubscript:GKTTRBulletinKeyURL];
    }

    v19 = [GKTTRUploadRequestBulletin packFakeTTRBulletinWithInfo:v16];
    v20 = +[GKDataRequestManager sharedManager];
    [v20 processIncomingTTR:v19];

    handlerCopy[2](handlerCopy);
  }
}

@end
@interface GKFriendServicePrivate
+ (id)computeCachedFriendCodesWithIdentifiers:(id)identifiers context:(id)context;
+ (id)messageInboxLocation;
+ (os_unfair_lock_s)messageInboxEntriesLock;
- (void)_invalidateCacheForFriendCode:(id)code handler:(id)handler;
- (void)acceptFriendInvitationWithPlayerID:(id)d completion:(id)completion;
- (void)acceptFriendRequestWithIdentifier:(id)identifier sendPush:(BOOL)push handler:(id)handler;
- (void)cancelFriendInvitationWithPlayerID:(id)d completion:(id)completion;
- (void)cancelFriendRequestWithIdentifier:(id)identifier handler:(id)handler;
- (void)clearActivityFeedCacheWithHandler:(id)handler;
- (void)didAccept:(BOOL)accept friendRequest:(id)request handler:(id)handler;
- (void)expireFriendList;
- (void)fetchFriendCodeDetailsForIdentifiers:(id)identifiers context:(id)context handler:(id)handler;
- (void)getActiveFriendRequests:(id)requests;
- (void)getChallengableFriendsForPlayer:(id)player fetchOptions:(unint64_t)options completion:(id)completion;
- (void)getCombinedFriendInvitationListWithCompletion:(id)completion;
- (void)getConcernsForPlayer:(id)player handler:(id)handler;
- (void)getFakeActiveFriendRequests:(id)requests;
- (void)getFriendCodeDetailWithIdentifiers:(id)identifiers handler:(id)handler;
- (void)getFriendInvitationMailboxWithType:(id)type completion:(id)completion;
- (void)getFriendRequestsBannerDataWithCompletion:(id)completion;
- (void)getFriendsForPlayer:(id)player fetchOptions:(unint64_t)options handler:(id)handler;
- (void)getFriendsForPlayer:(id)player fetchOptions:(unint64_t)options withFilter:(int)filter handler:(id)handler;
- (void)getFriendsForPlayer:(id)player withFilter:(int)filter commonFriends:(BOOL)friends handler:(id)handler;
- (void)getFriendsLatestActivityWithCompletion:(id)completion;
- (void)getMessageInboxEntries:(id)entries;
- (void)getPlayerActivityFeed:(id)feed bundleID:(id)d continuation:(id)continuation gameCategoryFilter:(id)filter handler:(id)handler;
- (void)ignoreFriendInvitationWithPlayerID:(id)d completion:(id)completion;
- (void)notifyMessageBasedFriendRequestSentTo:(id)to nameKind:(int)kind;
- (void)rejectFriendRequestWithIdentifier:(id)identifier handler:(id)handler;
- (void)removeAllFriendsWithHandler:(id)handler;
- (void)removeFriendWithPlayer:(id)player handler:(id)handler;
- (void)removeMessageInboxEntries:(id)entries handler:(id)handler;
- (void)reportConcern:(id)concern handler:(id)handler;
- (void)sendFriendInvitationWithPlayerID:(id)d contactAssociationID:(id)iD completion:(id)completion;
- (void)sendResponselessWithRequest:(id)request bagKey:(id)key refreshFriendsRequestContents:(BOOL)contents completion:(id)completion;
@end

@implementation GKFriendServicePrivate

- (void)getChallengableFriendsForPlayer:(id)player fetchOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  playerCopy = player;
  transport = [(GKService *)self transport];
  clientProxy = [(GKService *)self clientProxy];
  localPlayer = [(GKService *)self localPlayer];
  v13 = [(GKService *)GKProfileServicePrivate serviceWithTransport:transport forClient:clientProxy localPlayer:localPlayer];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000884E0;
  v16[3] = &unk_100362EF0;
  v18 = completionCopy;
  optionsCopy = options;
  v17 = v13;
  v14 = completionCopy;
  v15 = v13;
  [(GKFriendService *)self getChallengableFriendIDsForPlayer:playerCopy handler:v16];
}

- (void)getFriendsForPlayer:(id)player fetchOptions:(unint64_t)options handler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000885A4;
  v9[3] = &unk_100362EF0;
  handlerCopy = handler;
  optionsCopy = options;
  v9[4] = self;
  v8 = handlerCopy;
  [(GKFriendService *)self getFriendIDsForPlayer:player commonFriends:0 handler:v9];
}

- (void)getFriendsForPlayer:(id)player fetchOptions:(unint64_t)options withFilter:(int)filter handler:(id)handler
{
  v6 = *&filter;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100088728;
  v11[3] = &unk_100362EF0;
  handlerCopy = handler;
  optionsCopy = options;
  v11[4] = self;
  v10 = handlerCopy;
  [(GKFriendService *)self getFriendIDsForPlayer:player withFilter:v6 commonFriends:0 handler:v11];
}

- (void)removeFriendWithPlayer:(id)player handler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 428, "[GKFriendServicePrivate removeFriendWithPlayer:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  playerID = [playerCopy playerID];
  v11 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
    v11 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10028A208();
  }

  v13 = &off_1002C2000;
  if (playerID)
  {
    v14 = [GKRemoveFriendNetworkRequest alloc];
    playerID2 = [playerCopy playerID];
    v27 = [(GKRemoveFriendNetworkRequest *)v14 initWithFriendPlayerID:playerID2];

    v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
    clientProxy = [(GKService *)self clientProxy];
    [v16 writeToNetwork:v27 clientProxy:clientProxy handler:0];

    clientProxy2 = [(GKService *)self clientProxy];
    localPlayer = [(GKService *)self localPlayer];
    v20 = [(GKService *)GKGameStatServicePrivate serviceWithTransport:0 forClient:clientProxy2 localPlayer:localPlayer];

    [v20 expireGamesFriendsPlayed];
    transport = [(GKService *)self transport];
    clientProxy3 = [(GKService *)self clientProxy];
    localPlayer2 = [(GKService *)self localPlayer];
    v24 = [(GKService *)GKGameServicePrivate serviceWithTransport:transport forClient:clientProxy3 localPlayer:localPlayer2];

    v13 = &off_1002C2000;
    [v24 clearGamesPlayedSummariesCacheForPlayerID:playerID];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100088B54;
    v30[3] = &unk_100361708;
    v31 = playerID;
    v32 = playerCopy;
    [v9 performOnManagedObjectContext:v30];
  }

  if (handlerCopy)
  {
    clientProxy4 = [(GKService *)self clientProxy];
    replyQueue = [clientProxy4 replyQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = *(v13 + 304);
    v28[2] = sub_100088DBC;
    v28[3] = &unk_100360EB0;
    v28[4] = self;
    v29 = handlerCopy;
    [v9 notifyOnQueue:replyQueue block:v28];
  }
}

- (void)removeAllFriendsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10028A278();
  }

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 474, "[GKFriendServicePrivate removeAllFriendsWithHandler:]"];
  v8 = [(GKService *)self transactionGroupWithName:v7];

  initRequest = [[GKRemoveAllFriendsNetworkRequest alloc] initRequest];
  v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100088FC0;
  v14[3] = &unk_1003613E8;
  v14[4] = self;
  v15 = v8;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v8;
  [v10 writeToNetwork:initRequest clientProxy:clientProxy handler:v14];
}

- (void)getConcernsForPlayer:(id)player handler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 514, "[GKFriendServicePrivate getConcernsForPlayer:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000894C0;
  v17[3] = &unk_100360F00;
  v10 = playerCopy;
  v18 = v10;
  selfCopy = self;
  v11 = v9;
  v20 = v11;
  [v11 perform:v17];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000898BC;
    v14[3] = &unk_100360EB0;
    v16 = handlerCopy;
    v15 = v11;
    [v15 notifyOnQueue:replyQueue block:v14];
  }
}

- (void)reportConcern:(id)concern handler:(id)handler
{
  concernCopy = concern;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 550, "[GKFriendServicePrivate reportConcern:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  player = [concernCopy player];
  playerID = [player playerID];

  message = [concernCopy message];
  v13 = message;
  if (playerID && message)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100089B80;
    v20[3] = &unk_100361BF8;
    v21 = playerID;
    v22 = v13;
    v23 = concernCopy;
    selfCopy = self;
    v25 = v9;
    [v25 perform:v20];

    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = [NSError userErrorForCode:17 userInfo:0];
  [v9 setError:v14];

  if (handlerCopy)
  {
LABEL_6:
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100089D5C;
    v17[3] = &unk_100360EB0;
    v19 = handlerCopy;
    v18 = v9;
    [v18 notifyOnQueue:replyQueue block:v17];
  }

LABEL_7:
}

- (void)getFriendsForPlayer:(id)player withFilter:(int)filter commonFriends:(BOOL)friends handler:(id)handler
{
  friendsCopy = friends;
  v7 = *&filter;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089E80;
  v10[3] = &unk_100362408;
  selfCopy = self;
  handlerCopy = handler;
  v9 = handlerCopy;
  [(GKFriendService *)selfCopy getFriendIDsForPlayer:player withFilter:v7 commonFriends:friendsCopy handler:v10];
}

- (void)cancelFriendRequestWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 599, "[GKFriendServicePrivate cancelFriendRequestWithIdentifier:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008A104;
  v17[3] = &unk_100360F00;
  v10 = identifierCopy;
  v18 = v10;
  selfCopy = self;
  v11 = v9;
  v20 = v11;
  [v11 perform:v17];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008A29C;
    v14[3] = &unk_100360EB0;
    v16 = handlerCopy;
    v15 = v11;
    [v15 notifyOnQueue:replyQueue block:v14];
  }
}

- (void)acceptFriendRequestWithIdentifier:(id)identifier sendPush:(BOOL)push handler:(id)handler
{
  pushCopy = push;
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = +[GKAMPController controller];
  [v10 reportFriendInviteActivityEventAtStage:5 hostApp:0];

  v20[0] = @"friend-code";
  v20[1] = @"send-push";
  v21[0] = identifierCopy;
  v11 = [NSNumber numberWithBool:pushCopy];
  v21[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008A4B0;
  v17[3] = &unk_1003628B8;
  v17[4] = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = identifierCopy;
  [v13 issueRequest:v12 bagKey:@"gk-use-friend-code" clientProxy:clientProxy handler:v17];
}

- (void)rejectFriendRequestWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = +[GKAMPController controller];
  [v8 reportFriendInviteActivityEventAtStage:7 hostApp:0];

  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 651, "[GKFriendServicePrivate rejectFriendRequestWithIdentifier:handler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008A81C;
  v23[3] = &unk_100360F00;
  v11 = identifierCopy;
  v24 = v11;
  selfCopy = self;
  v12 = v10;
  v26 = v12;
  [v12 perform:v23];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008A9B4;
  v18[3] = &unk_100360F78;
  v19 = v12;
  selfCopy2 = self;
  v21 = v11;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = v11;
  v17 = v12;
  [v17 notifyOnQueue:replyQueue block:v18];
}

- (void)_invalidateCacheForFriendCode:(id)code handler:(id)handler
{
  codeCopy = code;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 677, "[GKFriendServicePrivate _invalidateCacheForFriendCode:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008AC2C;
  v19[3] = &unk_100361708;
  v20 = codeCopy;
  v10 = v9;
  v21 = v10;
  v11 = codeCopy;
  [v10 performOnManagedObjectContext:v19];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008ADE0;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = handlerCopy;
  v14 = v10;
  v15 = handlerCopy;
  [v14 notifyOnQueue:replyQueue block:v16];
}

- (void)getFriendCodeDetailWithIdentifiers:(id)identifiers handler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  credential = [(GKService *)self credential];
  if (!credential)
  {
    v8 = +[GKPlayerCredentialController sharedController];
    clientProxy = [(GKService *)self clientProxy];
    credential = [v8 primaryCredentialForEnvironment:{objc_msgSend(clientProxy, "environment")}];
  }

  clientProxy2 = [(GKService *)self clientProxy];
  v41 = credential;
  playerInternal = [credential playerInternal];
  playerID = [playerInternal playerID];
  v13 = [clientProxy2 managedObjectContextForPlayerID:playerID];

  v14 = [objc_opt_class() computeCachedFriendCodesWithIdentifiers:identifiersCopy context:v13];
  v15 = [v14 mutableCopy];

  v40 = identifiersCopy;
  v16 = [identifiersCopy mutableCopy];
  v17 = +[NSMutableOrderedSet orderedSet];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v53;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v52 + 1) + 8 * i);
        friendCode = [v23 friendCode];
        [v16 removeObject:friendCode];

        creatorPlayerID = [v23 creatorPlayerID];

        if (creatorPlayerID)
        {
          creatorPlayerID2 = [v23 creatorPlayerID];
          [v17 addObject:creatorPlayerID2];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v20);
  }

  v27 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 725, "[GKFriendServicePrivate getFriendCodeDetailWithIdentifiers:handler:]"];
  v28 = [GKDispatchGroup dispatchGroupWithName:v27];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10008B28C;
  v46[3] = &unk_100362FC8;
  v46[4] = self;
  v47 = v16;
  v48 = v13;
  v49 = v18;
  v50 = v17;
  v29 = v28;
  v51 = v29;
  v30 = v17;
  v31 = v18;
  v32 = v13;
  v33 = v16;
  [v29 perform:v46];
  clientProxy3 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy3 replyQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10008B948;
  v42[3] = &unk_100361068;
  v44 = v40;
  v45 = handlerCopy;
  v43 = v29;
  v36 = v40;
  v37 = handlerCopy;
  v38 = v29;
  [v38 notifyOnQueue:replyQueue block:v42];
}

+ (id)computeCachedFriendCodesWithIdentifiers:(id)identifiers context:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100086DD0;
  v19 = sub_100086DE0;
  v20 = +[NSMutableArray array];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008BCF0;
  v11[3] = &unk_100362AB0;
  v7 = identifiersCopy;
  v12 = v7;
  v8 = contextCopy;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)fetchFriendCodeDetailsForIdentifiers:(id)identifiers context:(id)context handler:(id)handler
{
  identifiersCopy = identifiers;
  contextCopy = context;
  handlerCopy = handler;
  if ([identifiersCopy count])
  {
    v18 = @"friend-codes";
    v19 = identifiersCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
    clientProxy = [(GKService *)self clientProxy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008C0D0;
    v14[3] = &unk_100363040;
    v17 = handlerCopy;
    v14[4] = self;
    v15 = contextCopy;
    v16 = identifiersCopy;
    [v12 issueRequest:v11 bagKey:@"gk-view-friend-code-details" clientProxy:clientProxy handler:v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0);
  }
}

- (void)getPlayerActivityFeed:(id)feed bundleID:(id)d continuation:(id)continuation gameCategoryFilter:(id)filter handler:(id)handler
{
  feedCopy = feed;
  dCopy = d;
  continuationCopy = continuation;
  filterCopy = filter;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v71 = feedCopy;
    v72 = 2112;
    v73 = dCopy;
    v74 = 2112;
    v75 = continuationCopy;
    v76 = 2112;
    v77 = filterCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "targetPlayerId: %@ bundleId: %@ continuation: %@ filter: %@", buf, 0x2Au);
  }

  v18 = +[GKCDPlayerActivity _gkFetchRequest];
  v50 = dCopy;
  if (!dCopy || ([dCopy isEqualToString:GKDaemonIdentifier] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", GKGameCenterIdentifier) & 1) != 0)
  {
    v19 = @"NoGameId";
  }

  else
  {
    v19 = dCopy;
  }

  v20 = @"NoContinuation";
  if (continuationCopy)
  {
    v20 = continuationCopy;
  }

  v21 = v20;
  v42 = v21;
  v22 = @"NoTargetPlayer";
  if (feedCopy)
  {
    v22 = feedCopy;
  }

  v23 = v22;
  v43 = v23;
  v24 = @"NoCategoryFilter";
  if (filterCopy)
  {
    v24 = filterCopy;
  }

  v46 = v24;
  v48 = [NSPredicate predicateWithFormat:@"(continuation == %@) AND (gameID == %@) AND (targetPlayerID == %@) AND (gameCategoryFilter == %@)", v21, v19, v23, v46];
  [v18 setPredicate:v48];
  v25 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 921, "[GKFriendServicePrivate getPlayerActivityFeed:bundleID:continuation:gameCategoryFilter:handler:]"];
  v26 = [(GKService *)self transactionGroupWithName:v25];

  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10008CBD4;
  v63[3] = &unk_100363068;
  v27 = v18;
  v64 = v27;
  v28 = continuationCopy;
  v65 = v28;
  v29 = v19;
  v66 = v29;
  v30 = feedCopy;
  v67 = v30;
  v31 = filterCopy;
  v68 = v31;
  v32 = v26;
  v69 = v32;
  [v32 performOnManagedObjectContext:v63];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10008CE74;
  v51[3] = &unk_100363108;
  v52 = v32;
  v53 = v29;
  v54 = v30;
  v55 = v28;
  v56 = v31;
  selfCopy = self;
  v58 = v27;
  v59 = v42;
  v60 = v43;
  v61 = v46;
  v62 = handlerCopy;
  v45 = v46;
  v34 = v43;
  v44 = v42;
  v35 = v27;
  v47 = v31;
  v36 = v28;
  v37 = v30;
  v38 = v29;
  v39 = handlerCopy;
  v40 = v32;
  [v40 notifyOnQueue:replyQueue block:v51];
}

- (void)clearActivityFeedCacheWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 1048, "[GKFriendServicePrivate clearActivityFeedCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008DCA0;
  v15[3] = &unk_100362920;
  v7 = v6;
  v16 = v7;
  [v7 performOnManagedObjectContext:v15];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008DD74;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (void)expireFriendList
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Expiring friends list", buf, 2u);
  }

  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 1069, "[GKFriendServicePrivate expireFriendList]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  [v6 performOnManagedObjectContext:&stru_100363128];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008E010;
  v9[3] = &unk_100361770;
  v9[4] = self;
  [v6 notifyOnQueue:replyQueue block:v9];
}

+ (id)messageInboxLocation
{
  if (qword_1003B9118 != -1)
  {
    sub_10028A5F8();
  }

  v3 = qword_1003B9110;

  return v3;
}

+ (os_unfair_lock_s)messageInboxEntriesLock
{
  if (qword_1003B9128 != -1)
  {
    sub_10028A60C();
  }

  return &dword_1003B9120;
}

- (void)getMessageInboxEntries:(id)entries
{
  entriesCopy = entries;
  v30 = objc_opt_new();
  os_unfair_lock_lock(+[GKFriendServicePrivate messageInboxEntriesLock]);
  v3 = +[GKFriendServicePrivate messageInboxLocation];
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:v3];

  os_unfair_lock_unlock(+[GKFriendServicePrivate messageInboxEntriesLock]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v4;
  obj = [v4 allValues];
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v29 = *v32;
    v27 = GKFriendRequestURLSenderHandle;
    v28 = GKFriendRequestURL;
    v26 = GKFriendRequestURLSenderAlias;
    v7 = GKFriendRequestURLContactID;
    v8 = GKFriendRequestURLFriendCode;
    v9 = GKFriendRequestTimestamp;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = objc_alloc_init(GKMessageInboxEntryInternal);
        v13 = [NSData alloc];
        v14 = [v11 objectForKeyedSubscript:v28];
        v15 = [v13 initWithBase64EncodedString:v14 options:0];

        v16 = [[NSString alloc] initWithData:v15 encoding:4];
        v17 = [NSURL URLWithString:v16];
        [v12 setUrl:v17];

        v18 = [v11 objectForKeyedSubscript:v27];
        [v12 setSenderHandle:v18];

        v19 = [v11 objectForKeyedSubscript:v26];
        [v12 setSenderAlias:v19];

        v20 = [v11 objectForKeyedSubscript:v7];
        [v12 setContactID:v20];

        v21 = [v11 objectForKeyedSubscript:v8];
        [v12 setFriendCode:v21];

        v22 = [v11 objectForKeyedSubscript:v9];
        [v12 setTimestamp:v22];

        [v30 addObject:v12];
        v10 = v10 + 1;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  entriesCopy[2](entriesCopy, v30, 0);
}

- (void)removeMessageInboxEntries:(id)entries handler:(id)handler
{
  entriesCopy = entries;
  handlerCopy = handler;
  if (entriesCopy)
  {
    os_unfair_lock_lock(+[GKFriendServicePrivate messageInboxEntriesLock]);
    v7 = +[GKFriendServicePrivate messageInboxLocation];
    v8 = [NSMutableDictionary dictionaryWithContentsOfFile:v7];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = entriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          friendCode = [v14 friendCode];

          if (friendCode)
          {
            friendCode2 = [v14 friendCode];
            [v8 setObject:0 forKeyedSubscript:friendCode2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v17 = +[GKFriendServicePrivate messageInboxLocation];
    [v8 writeToFile:v17 atomically:1];

    os_unfair_lock_unlock(+[GKFriendServicePrivate messageInboxEntriesLock]);
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v8 = [NSError userErrorForCode:17 underlyingError:0];
    (handlerCopy)[2](handlerCopy, v8);
  }
}

- (void)getFakeActiveFriendRequests:(id)requests
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008E738;
  v4[3] = &unk_100362408;
  selfCopy = self;
  requestsCopy = requests;
  v3 = requestsCopy;
  [(GKFriendServicePrivate *)selfCopy getMessageInboxEntries:v4];
}

- (void)getActiveFriendRequests:(id)requests
{
  requestsCopy = requests;
  v5 = +[GKPreferences shared];
  fakeFriendRequestCount = [v5 fakeFriendRequestCount];

  if (fakeFriendRequestCount)
  {
    [(GKFriendServicePrivate *)self getFakeActiveFriendRequests:requestsCopy];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008F2B0;
    v7[3] = &unk_1003632A8;
    v7[4] = self;
    v8 = requestsCopy;
    [(GKFriendServicePrivate *)self getMessageInboxEntries:v7];
  }
}

- (void)didAccept:(BOOL)accept friendRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 1343, "[GKFriendServicePrivate didAccept:friendRequest:handler:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100090558;
  v21[3] = &unk_100363320;
  acceptCopy = accept;
  v21[4] = self;
  v12 = requestCopy;
  v22 = v12;
  v23 = v25;
  [v11 perform:v21];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090DB0;
  v17[3] = &unk_100363348;
  v20 = v25;
  v17[4] = self;
  v15 = handlerCopy;
  v19 = v15;
  v16 = v11;
  v18 = v16;
  [v16 notifyOnQueue:replyQueue block:v17];

  _Block_object_dispose(v25, 8);
}

- (void)notifyMessageBasedFriendRequestSentTo:(id)to nameKind:(int)kind
{
  v4 = *&kind;
  toCopy = to;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = toCopy;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKFriendService: notifyMessageBasedFriendRequestSentTo:%@ nameKind:%d", buf, 0x12u);
  }

  v13[0] = GKFriendRequestRecipientNameKey;
  v13[1] = GKFriendRequestRecipientNameKindKey;
  v14[0] = toCopy;
  v8 = [NSNumber numberWithInt:v4];
  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100090FF4;
  v11[3] = &unk_100361410;
  v12 = v9;
  v10 = v9;
  [GKClientProxy enumerateClientsUsingBlock:v11];
}

- (void)getFriendsLatestActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  [v6 readEntityWithRequest:0 bagKey:@"gk-get-friends-latest-activity" includeStaleCacheData:0 clientProxy:clientProxy completionHandler:completionCopy entityMaker:&stru_100363388];
}

- (void)getFriendInvitationMailboxWithType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v12 = @"type";
  v13 = typeCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v10 = GKBagKeyGetFriendInvitationMailbox;
  clientProxy = [(GKService *)self clientProxy];
  [v8 readEntityWithRequest:v9 bagKey:v10 includeStaleCacheData:0 clientProxy:clientProxy completionHandler:completionCopy entityMaker:&stru_1003633C8];
}

- (void)getCombinedFriendInvitationListWithCompletion:(id)completion
{
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 1472, "[GKFriendServicePrivate getCombinedFriendInvitationListWithCompletion:]"];
    v6 = [GKDispatchGroup dispatchGroupWithName:v5];

    v7 = +[NSMutableDictionary dictionary];
    [v6 setResult:v7];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000914B4;
    v18[3] = &unk_100360FF0;
    v18[4] = self;
    v8 = v6;
    v19 = v8;
    [v8 perform:v18];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100091690;
    v16[3] = &unk_100360FF0;
    v16[4] = self;
    v9 = v8;
    v17 = v9;
    [v9 perform:v16];
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100091D00;
    v13[3] = &unk_100361270;
    v14 = v9;
    v15 = completionCopy;
    v12 = v9;
    [v12 notifyOnQueue:replyQueue block:v13];
  }

  else
  {
    [(GKFriendServicePrivate *)self getActiveFriendRequests:completionCopy];
  }
}

- (void)sendFriendInvitationWithPlayerID:(id)d contactAssociationID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v11 = +[GKClientProxy nonGameCenterForegroundClient];
  bundleIdentifier = [v11 bundleIdentifier];

  if (!bundleIdentifier)
  {
    clientProxy = [(GKService *)self clientProxy];
    bundleIdentifier = [clientProxy originalBundleIdentifier];
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = v14;
  if (dCopy)
  {
    [v14 setObject:dCopy forKeyedSubscript:@"receiving-player-id"];
  }

  if (iDCopy)
  {
    [v15 setObject:iDCopy forKeyedSubscript:@"receiving-player-caid"];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100091FF4;
  v18[3] = &unk_100361198;
  v19 = bundleIdentifier;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = bundleIdentifier;
  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v15 bagKey:@"gk-send-friend-invitation" refreshFriendsRequestContents:0 completion:v18];
}

- (void)acceptFriendInvitationWithPlayerID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v12 = @"issuing-player-id";
  dCopy = d;
  dCopy2 = d;
  v8 = [NSDictionary dictionaryWithObjects:&dCopy forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092228;
  v10[3] = &unk_100361CB8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v8 bagKey:@"gk-accept-friend-invitation" refreshFriendsRequestContents:1 completion:v10];
}

- (void)cancelFriendInvitationWithPlayerID:(id)d completion:(id)completion
{
  v9 = @"receiving-player-id";
  dCopy = d;
  completionCopy = completion;
  dCopy2 = d;
  v8 = [NSDictionary dictionaryWithObjects:&dCopy forKeys:&v9 count:1];

  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v8 bagKey:@"gk-cancel-friend-invitation" refreshFriendsRequestContents:0 completion:completionCopy];
}

- (void)ignoreFriendInvitationWithPlayerID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v12 = @"issuing-player-id";
  dCopy = d;
  dCopy2 = d;
  v8 = [NSDictionary dictionaryWithObjects:&dCopy forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092524;
  v10[3] = &unk_100361CB8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v8 bagKey:@"gk-ignore-friend-invitation" refreshFriendsRequestContents:1 completion:v10];
}

- (void)getFriendRequestsBannerDataWithCompletion:(id)completion
{
  completionCopy = completion;
  transport = [(GKService *)self transport];
  storeBag = [transport storeBag];
  v7 = [storeBag valueForKey:GKFriendRequestsBannerPercentAllowed];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v7 integerValue];
    v9 = 100;
    if (integerValue < 100)
    {
      v9 = integerValue;
    }

    v10 = v9 & ~(v9 >> 63);
  }

  else
  {
    v10 = 100;
  }

  v11 = arc4random_uniform(0x64u);
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKFriending;
  if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [NSNumber numberWithInteger:v11];
    v16 = [NSNumber numberWithInteger:v10];
    v21 = 138412546;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Friend requests banner dice roll: %@, bag value: %@", &v21, 0x16u);
  }

  if (v10 >= v11)
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Fetching required data for friend requests banner", &v21, 2u);
    }

    [(GKFriendServicePrivate *)self getCombinedFriendInvitationListWithCompletion:completionCopy];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKFriending;
    if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Friend requests banner has been disabled", &v21, 2u);
    }

    completionCopy[2](completionCopy, &__NSArray0__struct, 0);
  }
}

- (void)sendResponselessWithRequest:(id)request bagKey:(id)key refreshFriendsRequestContents:(BOOL)contents completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  requestCopy = request;
  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000929DC;
  v16[3] = &unk_1003634D0;
  contentsCopy = contents;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [v13 issueRequest:requestCopy bagKey:keyCopy clientProxy:clientProxy handler:v16];
}

@end
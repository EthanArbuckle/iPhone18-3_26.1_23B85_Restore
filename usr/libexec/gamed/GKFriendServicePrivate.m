@interface GKFriendServicePrivate
+ (id)computeCachedFriendCodesWithIdentifiers:(id)a3 context:(id)a4;
+ (id)messageInboxLocation;
+ (os_unfair_lock_s)messageInboxEntriesLock;
- (void)_invalidateCacheForFriendCode:(id)a3 handler:(id)a4;
- (void)acceptFriendInvitationWithPlayerID:(id)a3 completion:(id)a4;
- (void)acceptFriendRequestWithIdentifier:(id)a3 sendPush:(BOOL)a4 handler:(id)a5;
- (void)cancelFriendInvitationWithPlayerID:(id)a3 completion:(id)a4;
- (void)cancelFriendRequestWithIdentifier:(id)a3 handler:(id)a4;
- (void)clearActivityFeedCacheWithHandler:(id)a3;
- (void)didAccept:(BOOL)a3 friendRequest:(id)a4 handler:(id)a5;
- (void)expireFriendList;
- (void)fetchFriendCodeDetailsForIdentifiers:(id)a3 context:(id)a4 handler:(id)a5;
- (void)getActiveFriendRequests:(id)a3;
- (void)getChallengableFriendsForPlayer:(id)a3 fetchOptions:(unint64_t)a4 completion:(id)a5;
- (void)getCombinedFriendInvitationListWithCompletion:(id)a3;
- (void)getConcernsForPlayer:(id)a3 handler:(id)a4;
- (void)getFakeActiveFriendRequests:(id)a3;
- (void)getFriendCodeDetailWithIdentifiers:(id)a3 handler:(id)a4;
- (void)getFriendInvitationMailboxWithType:(id)a3 completion:(id)a4;
- (void)getFriendRequestsBannerDataWithCompletion:(id)a3;
- (void)getFriendsForPlayer:(id)a3 fetchOptions:(unint64_t)a4 handler:(id)a5;
- (void)getFriendsForPlayer:(id)a3 fetchOptions:(unint64_t)a4 withFilter:(int)a5 handler:(id)a6;
- (void)getFriendsForPlayer:(id)a3 withFilter:(int)a4 commonFriends:(BOOL)a5 handler:(id)a6;
- (void)getFriendsLatestActivityWithCompletion:(id)a3;
- (void)getMessageInboxEntries:(id)a3;
- (void)getPlayerActivityFeed:(id)a3 bundleID:(id)a4 continuation:(id)a5 gameCategoryFilter:(id)a6 handler:(id)a7;
- (void)ignoreFriendInvitationWithPlayerID:(id)a3 completion:(id)a4;
- (void)notifyMessageBasedFriendRequestSentTo:(id)a3 nameKind:(int)a4;
- (void)rejectFriendRequestWithIdentifier:(id)a3 handler:(id)a4;
- (void)removeAllFriendsWithHandler:(id)a3;
- (void)removeFriendWithPlayer:(id)a3 handler:(id)a4;
- (void)removeMessageInboxEntries:(id)a3 handler:(id)a4;
- (void)reportConcern:(id)a3 handler:(id)a4;
- (void)sendFriendInvitationWithPlayerID:(id)a3 contactAssociationID:(id)a4 completion:(id)a5;
- (void)sendResponselessWithRequest:(id)a3 bagKey:(id)a4 refreshFriendsRequestContents:(BOOL)a5 completion:(id)a6;
@end

@implementation GKFriendServicePrivate

- (void)getChallengableFriendsForPlayer:(id)a3 fetchOptions:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(GKService *)self transport];
  v11 = [(GKService *)self clientProxy];
  v12 = [(GKService *)self localPlayer];
  v13 = [(GKService *)GKProfileServicePrivate serviceWithTransport:v10 forClient:v11 localPlayer:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000884E0;
  v16[3] = &unk_100362EF0;
  v18 = v8;
  v19 = a4;
  v17 = v13;
  v14 = v8;
  v15 = v13;
  [(GKFriendService *)self getChallengableFriendIDsForPlayer:v9 handler:v16];
}

- (void)getFriendsForPlayer:(id)a3 fetchOptions:(unint64_t)a4 handler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000885A4;
  v9[3] = &unk_100362EF0;
  v10 = a5;
  v11 = a4;
  v9[4] = self;
  v8 = v10;
  [(GKFriendService *)self getFriendIDsForPlayer:a3 commonFriends:0 handler:v9];
}

- (void)getFriendsForPlayer:(id)a3 fetchOptions:(unint64_t)a4 withFilter:(int)a5 handler:(id)a6
{
  v6 = *&a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100088728;
  v11[3] = &unk_100362EF0;
  v12 = a6;
  v13 = a4;
  v11[4] = self;
  v10 = v12;
  [(GKFriendService *)self getFriendIDsForPlayer:a3 withFilter:v6 commonFriends:0 handler:v11];
}

- (void)removeFriendWithPlayer:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 428, "[GKFriendServicePrivate removeFriendWithPlayer:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [v6 playerID];
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
  if (v10)
  {
    v14 = [GKRemoveFriendNetworkRequest alloc];
    v15 = [v6 playerID];
    v27 = [(GKRemoveFriendNetworkRequest *)v14 initWithFriendPlayerID:v15];

    v16 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v17 = [(GKService *)self clientProxy];
    [v16 writeToNetwork:v27 clientProxy:v17 handler:0];

    v18 = [(GKService *)self clientProxy];
    v19 = [(GKService *)self localPlayer];
    v20 = [(GKService *)GKGameStatServicePrivate serviceWithTransport:0 forClient:v18 localPlayer:v19];

    [v20 expireGamesFriendsPlayed];
    v21 = [(GKService *)self transport];
    v22 = [(GKService *)self clientProxy];
    v23 = [(GKService *)self localPlayer];
    v24 = [(GKService *)GKGameServicePrivate serviceWithTransport:v21 forClient:v22 localPlayer:v23];

    v13 = &off_1002C2000;
    [v24 clearGamesPlayedSummariesCacheForPlayerID:v10];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100088B54;
    v30[3] = &unk_100361708;
    v31 = v10;
    v32 = v6;
    [v9 performOnManagedObjectContext:v30];
  }

  if (v7)
  {
    v25 = [(GKService *)self clientProxy];
    v26 = [v25 replyQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = *(v13 + 304);
    v28[2] = sub_100088DBC;
    v28[3] = &unk_100360EB0;
    v28[4] = self;
    v29 = v7;
    [v9 notifyOnQueue:v26 block:v28];
  }
}

- (void)removeAllFriendsWithHandler:(id)a3
{
  v4 = a3;
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

  v9 = [[GKRemoveAllFriendsNetworkRequest alloc] initRequest];
  v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v11 = [(GKService *)self clientProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100088FC0;
  v14[3] = &unk_1003613E8;
  v14[4] = self;
  v15 = v8;
  v16 = v4;
  v12 = v4;
  v13 = v8;
  [v10 writeToNetwork:v9 clientProxy:v11 handler:v14];
}

- (void)getConcernsForPlayer:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 514, "[GKFriendServicePrivate getConcernsForPlayer:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000894C0;
  v17[3] = &unk_100360F00;
  v10 = v6;
  v18 = v10;
  v19 = self;
  v11 = v9;
  v20 = v11;
  [v11 perform:v17];
  if (v7)
  {
    v12 = [(GKService *)self clientProxy];
    v13 = [v12 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000898BC;
    v14[3] = &unk_100360EB0;
    v16 = v7;
    v15 = v11;
    [v15 notifyOnQueue:v13 block:v14];
  }
}

- (void)reportConcern:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 550, "[GKFriendServicePrivate reportConcern:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = [v6 player];
  v11 = [v10 playerID];

  v12 = [v6 message];
  v13 = v12;
  if (v11 && v12)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100089B80;
    v20[3] = &unk_100361BF8;
    v21 = v11;
    v22 = v13;
    v23 = v6;
    v24 = self;
    v25 = v9;
    [v25 perform:v20];

    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = [NSError userErrorForCode:17 userInfo:0];
  [v9 setError:v14];

  if (v7)
  {
LABEL_6:
    v15 = [(GKService *)self clientProxy];
    v16 = [v15 replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100089D5C;
    v17[3] = &unk_100360EB0;
    v19 = v7;
    v18 = v9;
    [v18 notifyOnQueue:v16 block:v17];
  }

LABEL_7:
}

- (void)getFriendsForPlayer:(id)a3 withFilter:(int)a4 commonFriends:(BOOL)a5 handler:(id)a6
{
  v6 = a5;
  v7 = *&a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089E80;
  v10[3] = &unk_100362408;
  v11 = self;
  v12 = a6;
  v9 = v12;
  [(GKFriendService *)v11 getFriendIDsForPlayer:a3 withFilter:v7 commonFriends:v6 handler:v10];
}

- (void)cancelFriendRequestWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 599, "[GKFriendServicePrivate cancelFriendRequestWithIdentifier:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008A104;
  v17[3] = &unk_100360F00;
  v10 = v6;
  v18 = v10;
  v19 = self;
  v11 = v9;
  v20 = v11;
  [v11 perform:v17];
  if (v7)
  {
    v12 = [(GKService *)self clientProxy];
    v13 = [v12 replyQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008A29C;
    v14[3] = &unk_100360EB0;
    v16 = v7;
    v15 = v11;
    [v15 notifyOnQueue:v13 block:v14];
  }
}

- (void)acceptFriendRequestWithIdentifier:(id)a3 sendPush:(BOOL)a4 handler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[GKAMPController controller];
  [v10 reportFriendInviteActivityEventAtStage:5 hostApp:0];

  v20[0] = @"friend-code";
  v20[1] = @"send-push";
  v21[0] = v8;
  v11 = [NSNumber numberWithBool:v6];
  v21[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v14 = [(GKService *)self clientProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008A4B0;
  v17[3] = &unk_1003628B8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [v13 issueRequest:v12 bagKey:@"gk-use-friend-code" clientProxy:v14 handler:v17];
}

- (void)rejectFriendRequestWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GKAMPController controller];
  [v8 reportFriendInviteActivityEventAtStage:7 hostApp:0];

  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 651, "[GKFriendServicePrivate rejectFriendRequestWithIdentifier:handler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10008A81C;
  v23[3] = &unk_100360F00;
  v11 = v6;
  v24 = v11;
  v25 = self;
  v12 = v10;
  v26 = v12;
  [v12 perform:v23];
  v13 = [(GKService *)self clientProxy];
  v14 = [v13 replyQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008A9B4;
  v18[3] = &unk_100360F78;
  v19 = v12;
  v20 = self;
  v21 = v11;
  v22 = v7;
  v15 = v7;
  v16 = v11;
  v17 = v12;
  [v17 notifyOnQueue:v14 block:v18];
}

- (void)_invalidateCacheForFriendCode:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 677, "[GKFriendServicePrivate _invalidateCacheForFriendCode:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008AC2C;
  v19[3] = &unk_100361708;
  v20 = v6;
  v10 = v9;
  v21 = v10;
  v11 = v6;
  [v10 performOnManagedObjectContext:v19];
  v12 = [(GKService *)self clientProxy];
  v13 = [v12 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008ADE0;
  v16[3] = &unk_100360EB0;
  v17 = v10;
  v18 = v7;
  v14 = v10;
  v15 = v7;
  [v14 notifyOnQueue:v13 block:v16];
}

- (void)getFriendCodeDetailWithIdentifiers:(id)a3 handler:(id)a4
{
  v6 = a3;
  v39 = a4;
  v7 = [(GKService *)self credential];
  if (!v7)
  {
    v8 = +[GKPlayerCredentialController sharedController];
    v9 = [(GKService *)self clientProxy];
    v7 = [v8 primaryCredentialForEnvironment:{objc_msgSend(v9, "environment")}];
  }

  v10 = [(GKService *)self clientProxy];
  v41 = v7;
  v11 = [v7 playerInternal];
  v12 = [v11 playerID];
  v13 = [v10 managedObjectContextForPlayerID:v12];

  v14 = [objc_opt_class() computeCachedFriendCodesWithIdentifiers:v6 context:v13];
  v15 = [v14 mutableCopy];

  v40 = v6;
  v16 = [v6 mutableCopy];
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
        v24 = [v23 friendCode];
        [v16 removeObject:v24];

        v25 = [v23 creatorPlayerID];

        if (v25)
        {
          v26 = [v23 creatorPlayerID];
          [v17 addObject:v26];
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
  v34 = [(GKService *)self clientProxy];
  v35 = [v34 replyQueue];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10008B948;
  v42[3] = &unk_100361068;
  v44 = v40;
  v45 = v39;
  v43 = v29;
  v36 = v40;
  v37 = v39;
  v38 = v29;
  [v38 notifyOnQueue:v35 block:v42];
}

+ (id)computeCachedFriendCodesWithIdentifiers:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v15;
  [v8 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)fetchFriendCodeDetailsForIdentifiers:(id)a3 context:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v18 = @"friend-codes";
    v19 = v8;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v13 = [(GKService *)self clientProxy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008C0D0;
    v14[3] = &unk_100363040;
    v17 = v10;
    v14[4] = self;
    v15 = v9;
    v16 = v8;
    [v12 issueRequest:v11 bagKey:@"gk-view-friend-code-details" clientProxy:v13 handler:v14];
  }

  else
  {
    (*(v10 + 2))(v10, &__NSArray0__struct, 0);
  }
}

- (void)getPlayerActivityFeed:(id)a3 bundleID:(id)a4 continuation:(id)a5 gameCategoryFilter:(id)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v49 = a7;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v71 = v12;
    v72 = 2112;
    v73 = v13;
    v74 = 2112;
    v75 = v14;
    v76 = 2112;
    v77 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "targetPlayerId: %@ bundleId: %@ continuation: %@ filter: %@", buf, 0x2Au);
  }

  v18 = +[GKCDPlayerActivity _gkFetchRequest];
  v50 = v13;
  if (!v13 || ([v13 isEqualToString:GKDaemonIdentifier] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", GKGameCenterIdentifier) & 1) != 0)
  {
    v19 = @"NoGameId";
  }

  else
  {
    v19 = v13;
  }

  v20 = @"NoContinuation";
  if (v14)
  {
    v20 = v14;
  }

  v21 = v20;
  v42 = v21;
  v22 = @"NoTargetPlayer";
  if (v12)
  {
    v22 = v12;
  }

  v23 = v22;
  v43 = v23;
  v24 = @"NoCategoryFilter";
  if (v15)
  {
    v24 = v15;
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
  v28 = v14;
  v65 = v28;
  v29 = v19;
  v66 = v29;
  v30 = v12;
  v67 = v30;
  v31 = v15;
  v68 = v31;
  v32 = v26;
  v69 = v32;
  [v32 performOnManagedObjectContext:v63];
  v41 = [(GKService *)self clientProxy];
  v33 = [v41 replyQueue];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10008CE74;
  v51[3] = &unk_100363108;
  v52 = v32;
  v53 = v29;
  v54 = v30;
  v55 = v28;
  v56 = v31;
  v57 = self;
  v58 = v27;
  v59 = v42;
  v60 = v43;
  v61 = v46;
  v62 = v49;
  v45 = v46;
  v34 = v43;
  v44 = v42;
  v35 = v27;
  v47 = v31;
  v36 = v28;
  v37 = v30;
  v38 = v29;
  v39 = v49;
  v40 = v32;
  [v40 notifyOnQueue:v33 block:v51];
}

- (void)clearActivityFeedCacheWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 1048, "[GKFriendServicePrivate clearActivityFeedCacheWithHandler:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008DCA0;
  v15[3] = &unk_100362920;
  v7 = v6;
  v16 = v7;
  [v7 performOnManagedObjectContext:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008DD74;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
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
  v7 = [(GKService *)self clientProxy];
  v8 = [v7 replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008E010;
  v9[3] = &unk_100361770;
  v9[4] = self;
  [v6 notifyOnQueue:v8 block:v9];
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

- (void)getMessageInboxEntries:(id)a3
{
  v24 = a3;
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

  v24[2](v24, v30, 0);
}

- (void)removeMessageInboxEntries:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    os_unfair_lock_lock(+[GKFriendServicePrivate messageInboxEntriesLock]);
    v7 = +[GKFriendServicePrivate messageInboxLocation];
    v8 = [NSMutableDictionary dictionaryWithContentsOfFile:v7];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v5;
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
          v15 = [v14 friendCode];

          if (v15)
          {
            v16 = [v14 friendCode];
            [v8 setObject:0 forKeyedSubscript:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v17 = +[GKFriendServicePrivate messageInboxLocation];
    [v8 writeToFile:v17 atomically:1];

    os_unfair_lock_unlock(+[GKFriendServicePrivate messageInboxEntriesLock]);
    v6[2](v6, 0);
  }

  else
  {
    v8 = [NSError userErrorForCode:17 underlyingError:0];
    (v6)[2](v6, v8);
  }
}

- (void)getFakeActiveFriendRequests:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008E738;
  v4[3] = &unk_100362408;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(GKFriendServicePrivate *)v5 getMessageInboxEntries:v4];
}

- (void)getActiveFriendRequests:(id)a3
{
  v4 = a3;
  v5 = +[GKPreferences shared];
  v6 = [v5 fakeFriendRequestCount];

  if (v6)
  {
    [(GKFriendServicePrivate *)self getFakeActiveFriendRequests:v4];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008F2B0;
    v7[3] = &unk_1003632A8;
    v7[4] = self;
    v8 = v4;
    [(GKFriendServicePrivate *)self getMessageInboxEntries:v7];
  }
}

- (void)didAccept:(BOOL)a3 friendRequest:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
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
  v24 = a3;
  v21[4] = self;
  v12 = v8;
  v22 = v12;
  v23 = v25;
  [v11 perform:v21];
  v13 = [(GKService *)self clientProxy];
  v14 = [v13 replyQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090DB0;
  v17[3] = &unk_100363348;
  v20 = v25;
  v17[4] = self;
  v15 = v9;
  v19 = v15;
  v16 = v11;
  v18 = v16;
  [v16 notifyOnQueue:v14 block:v17];

  _Block_object_dispose(v25, 8);
}

- (void)notifyMessageBasedFriendRequestSentTo:(id)a3 nameKind:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v5;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKFriendService: notifyMessageBasedFriendRequestSentTo:%@ nameKind:%d", buf, 0x12u);
  }

  v13[0] = GKFriendRequestRecipientNameKey;
  v13[1] = GKFriendRequestRecipientNameKindKey;
  v14[0] = v5;
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

- (void)getFriendsLatestActivityWithCompletion:(id)a3
{
  v4 = a3;
  v6 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [(GKService *)self clientProxy];
  [v6 readEntityWithRequest:0 bagKey:@"gk-get-friends-latest-activity" includeStaleCacheData:0 clientProxy:v5 completionHandler:v4 entityMaker:&stru_100363388];
}

- (void)getFriendInvitationMailboxWithType:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v12 = @"type";
  v13 = v7;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v10 = GKBagKeyGetFriendInvitationMailbox;
  v11 = [(GKService *)self clientProxy];
  [v8 readEntityWithRequest:v9 bagKey:v10 includeStaleCacheData:0 clientProxy:v11 completionHandler:v6 entityMaker:&stru_1003633C8];
}

- (void)getCombinedFriendInvitationListWithCompletion:(id)a3
{
  v4 = a3;
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
    v10 = [(GKService *)self clientProxy];
    v11 = [v10 replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100091D00;
    v13[3] = &unk_100361270;
    v14 = v9;
    v15 = v4;
    v12 = v9;
    [v12 notifyOnQueue:v11 block:v13];
  }

  else
  {
    [(GKFriendServicePrivate *)self getActiveFriendRequests:v4];
  }
}

- (void)sendFriendInvitationWithPlayerID:(id)a3 contactAssociationID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[GKClientProxy nonGameCenterForegroundClient];
  v12 = [v11 bundleIdentifier];

  if (!v12)
  {
    v13 = [(GKService *)self clientProxy];
    v12 = [v13 originalBundleIdentifier];
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = v14;
  if (v8)
  {
    [v14 setObject:v8 forKeyedSubscript:@"receiving-player-id"];
  }

  if (v9)
  {
    [v15 setObject:v9 forKeyedSubscript:@"receiving-player-caid"];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100091FF4;
  v18[3] = &unk_100361198;
  v19 = v12;
  v20 = v10;
  v16 = v10;
  v17 = v12;
  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v15 bagKey:@"gk-send-friend-invitation" refreshFriendsRequestContents:0 completion:v18];
}

- (void)acceptFriendInvitationWithPlayerID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v12 = @"issuing-player-id";
  v13 = a3;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092228;
  v10[3] = &unk_100361CB8;
  v11 = v6;
  v9 = v6;
  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v8 bagKey:@"gk-accept-friend-invitation" refreshFriendsRequestContents:1 completion:v10];
}

- (void)cancelFriendInvitationWithPlayerID:(id)a3 completion:(id)a4
{
  v9 = @"receiving-player-id";
  v10 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v8 bagKey:@"gk-cancel-friend-invitation" refreshFriendsRequestContents:0 completion:v6];
}

- (void)ignoreFriendInvitationWithPlayerID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v12 = @"issuing-player-id";
  v13 = a3;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100092524;
  v10[3] = &unk_100361CB8;
  v11 = v6;
  v9 = v6;
  [(GKFriendServicePrivate *)self sendResponselessWithRequest:v8 bagKey:@"gk-ignore-friend-invitation" refreshFriendsRequestContents:1 completion:v10];
}

- (void)getFriendRequestsBannerDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self transport];
  v6 = [v5 storeBag];
  v7 = [v6 valueForKey:GKFriendRequestsBannerPercentAllowed];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 integerValue];
    v9 = 100;
    if (v8 < 100)
    {
      v9 = v8;
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

    [(GKFriendServicePrivate *)self getCombinedFriendInvitationListWithCompletion:v4];
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

    v4[2](v4, &__NSArray0__struct, 0);
  }
}

- (void)sendResponselessWithRequest:(id)a3 bagKey:(id)a4 refreshFriendsRequestContents:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v14 = [(GKService *)self clientProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000929DC;
  v16[3] = &unk_1003634D0;
  v18 = a5;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v13 issueRequest:v12 bagKey:v11 clientProxy:v14 handler:v16];
}

@end
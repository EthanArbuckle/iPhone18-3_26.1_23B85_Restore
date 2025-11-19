@interface GKFriendService
+ (id)filterFriends:(id)a3 filter:(int)a4;
- (id)predicateForFriendPredicate:(id)a3 withFilter:(id)a4;
- (void)createFriendRequestWithIdentifier:(id)a3 handler:(id)a4;
- (void)establishNearbyRelationshipsUsingPlayerTokens:(id)a3 handler:(id)a4;
- (void)getChallengableFriendsForPlayer:(id)a3 handler:(id)a4;
- (void)getFriendIDsForPlayer:(id)a3 withFilter:(int)a4 commonFriends:(BOOL)a5 handler:(id)a6;
- (void)getFriendsForPlayer:(id)a3 commonFriends:(BOOL)a4 handler:(id)a5;
- (void)getNearbyTokenForLocalPlayerWithHandler:(id)a3;
- (void)notifyWidgetFriendListUpdated;
- (void)updateFriendsOfLocalPlayerWithHandler:(id)a3;
@end

@implementation GKFriendService

- (void)notifyWidgetFriendListUpdated
{
  v3 = [[CHSTimelineController alloc] initForAvocadoIdentifier:@"FriendsArePlayingWidget" inBundleIdentifier:@"com.apple.gamecenter.widgets.extension"];
  v2 = [v3 reloadTimeline];
}

- (void)updateFriendsOfLocalPlayerWithHandler:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086014;
  v5[3] = &unk_1003626B0;
  v6 = a3;
  v4 = v6;
  [(GKFriendService *)self getFriendIDsForPlayer:0 commonFriends:0 handler:v5];
}

- (void)getFriendsForPlayer:(id)a3 commonFriends:(BOOL)a4 handler:(id)a5
{
  v5 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000860DC;
  v8[3] = &unk_100362408;
  v9 = self;
  v10 = a5;
  v7 = v10;
  [(GKFriendService *)v9 getFriendIDsForPlayer:a3 commonFriends:v5 handler:v8];
}

- (void)getChallengableFriendsForPlayer:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKService *)self transport];
  v9 = [(GKService *)self clientProxy];
  v10 = [(GKService *)self localPlayer];
  v11 = [(GKService *)GKProfileService serviceWithTransport:v8 forClient:v9 localPlayer:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000862E8;
  v14[3] = &unk_100362408;
  v15 = v11;
  v16 = v6;
  v12 = v6;
  v13 = v11;
  [(GKFriendService *)self getChallengableFriendIDsForPlayer:v7 handler:v14];
}

- (void)getFriendIDsForPlayer:(id)a3 withFilter:(int)a4 commonFriends:(BOOL)a5 handler:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    v11 = [v9 playerID];
    v12 = [(GKService *)self localPlayer];
    v13 = [v12 playerID];
    v14 = [v11 isEqualToString:v13];

    if (v14)
    {
LABEL_9:

      v9 = 0;
      goto LABEL_10;
    }

    v15 = [v9 playerID];

    if (!v15)
    {
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100289FA0(v9, v17);
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100086720;
  v49[3] = &unk_100362DD8;
  v51 = a4;
  v18 = v10;
  v50 = v18;
  v34 = objc_retainBlock(v49);
  v19 = [(GKService *)self credential];
  if (!v19)
  {
    v20 = +[GKPlayerCredentialController sharedController];
    v21 = [(GKService *)self clientProxy];
    v19 = [v20 primaryCredentialForEnvironment:{objc_msgSend(v21, "environment")}];
  }

  v22 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 166, "[GKFriendService getFriendIDsForPlayer:withFilter:commonFriends:handler:]"];
  v23 = [GKDispatchGroup dispatchGroupWithName:v22];

  v24 = [(GKService *)self clientProxy];
  v25 = [v19 playerInternal];
  v26 = [v25 playerID];
  v27 = [v24 managedObjectContextForPlayerID:v26];

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000868A4;
  v40[3] = &unk_100362EA0;
  v28 = v27;
  v41 = v28;
  v9 = v9;
  v42 = v9;
  v29 = v23;
  v43 = v29;
  v30 = v34;
  v44 = self;
  v45 = v30;
  v46 = v47;
  [v29 perform:v40];
  v31 = [(GKService *)self clientProxy];
  v32 = [v31 replyQueue];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10008729C;
  v35[3] = &unk_100362EC8;
  v33 = v29;
  v36 = v33;
  v38 = v18;
  v39 = v47;
  v37 = self;
  [v33 notifyOnQueue:v32 block:v35];

  _Block_object_dispose(v47, 8);
LABEL_13:
}

- (void)getNearbyTokenForLocalPlayerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 283, "[GKFriendService getNearbyTokenForLocalPlayerWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008773C;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000879A0;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = v4;
  v10 = v7;
  v11 = v4;
  [v10 notifyOnQueue:v9 block:v12];
}

- (id)predicateForFriendPredicate:(id)a3 withFilter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 length])
  {
    v8 = [NSPredicate predicateWithFormat:v7];
    v12[0] = v5;
    v12[1] = v8;
    v9 = [NSArray arrayWithObjects:v12 count:2];
    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (void)establishNearbyRelationshipsUsingPlayerTokens:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10028A130();
  }

  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 319, "[GKFriendService establishNearbyRelationshipsUsingPlayerTokens:handler:]"];
  v11 = [GKDispatchGroup dispatchGroupWithName:v10];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100087D1C;
  v19[3] = &unk_100360F00;
  v12 = v6;
  v20 = v12;
  v21 = self;
  v13 = v11;
  v22 = v13;
  [v13 perform:v19];
  if (v7)
  {
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100087F0C;
    v16[3] = &unk_100360EB0;
    v18 = v7;
    v17 = v13;
    [v17 notifyOnQueue:v15 block:v16];
  }
}

- (void)createFriendRequestWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 342, "[GKFriendService createFriendRequestWithIdentifier:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100088124;
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
    v14[2] = sub_100088314;
    v14[3] = &unk_100360EB0;
    v16 = v7;
    v15 = v11;
    [v15 notifyOnQueue:v13 block:v14];
  }
}

+ (id)filterFriends:(id)a3 filter:(int)a4
{
  v5 = a3;
  if (a3)
  {
    type metadata accessor for GKFilterableFriend();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = sub_1001A6208(v5, a4);

  if (v6)
  {
    type metadata accessor for GKFilterableFriend();
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end
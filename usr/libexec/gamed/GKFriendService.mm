@interface GKFriendService
+ (id)filterFriends:(id)friends filter:(int)filter;
- (id)predicateForFriendPredicate:(id)predicate withFilter:(id)filter;
- (void)createFriendRequestWithIdentifier:(id)identifier handler:(id)handler;
- (void)establishNearbyRelationshipsUsingPlayerTokens:(id)tokens handler:(id)handler;
- (void)getChallengableFriendsForPlayer:(id)player handler:(id)handler;
- (void)getFriendIDsForPlayer:(id)player withFilter:(int)filter commonFriends:(BOOL)friends handler:(id)handler;
- (void)getFriendsForPlayer:(id)player commonFriends:(BOOL)friends handler:(id)handler;
- (void)getNearbyTokenForLocalPlayerWithHandler:(id)handler;
- (void)notifyWidgetFriendListUpdated;
- (void)updateFriendsOfLocalPlayerWithHandler:(id)handler;
@end

@implementation GKFriendService

- (void)notifyWidgetFriendListUpdated
{
  v3 = [[CHSTimelineController alloc] initForAvocadoIdentifier:@"FriendsArePlayingWidget" inBundleIdentifier:@"com.apple.gamecenter.widgets.extension"];
  reloadTimeline = [v3 reloadTimeline];
}

- (void)updateFriendsOfLocalPlayerWithHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086014;
  v5[3] = &unk_1003626B0;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(GKFriendService *)self getFriendIDsForPlayer:0 commonFriends:0 handler:v5];
}

- (void)getFriendsForPlayer:(id)player commonFriends:(BOOL)friends handler:(id)handler
{
  friendsCopy = friends;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000860DC;
  v8[3] = &unk_100362408;
  selfCopy = self;
  handlerCopy = handler;
  v7 = handlerCopy;
  [(GKFriendService *)selfCopy getFriendIDsForPlayer:player commonFriends:friendsCopy handler:v8];
}

- (void)getChallengableFriendsForPlayer:(id)player handler:(id)handler
{
  handlerCopy = handler;
  playerCopy = player;
  transport = [(GKService *)self transport];
  clientProxy = [(GKService *)self clientProxy];
  localPlayer = [(GKService *)self localPlayer];
  v11 = [(GKService *)GKProfileService serviceWithTransport:transport forClient:clientProxy localPlayer:localPlayer];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000862E8;
  v14[3] = &unk_100362408;
  v15 = v11;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v11;
  [(GKFriendService *)self getChallengableFriendIDsForPlayer:playerCopy handler:v14];
}

- (void)getFriendIDsForPlayer:(id)player withFilter:(int)filter commonFriends:(BOOL)friends handler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_13;
  }

  if (playerCopy)
  {
    playerID = [playerCopy playerID];
    localPlayer = [(GKService *)self localPlayer];
    playerID2 = [localPlayer playerID];
    v14 = [playerID isEqualToString:playerID2];

    if (v14)
    {
LABEL_9:

      playerCopy = 0;
      goto LABEL_10;
    }

    playerID3 = [playerCopy playerID];

    if (!playerID3)
    {
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100289FA0(playerCopy, v17);
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100086720;
  v49[3] = &unk_100362DD8;
  filterCopy = filter;
  v18 = handlerCopy;
  v50 = v18;
  v34 = objc_retainBlock(v49);
  credential = [(GKService *)self credential];
  if (!credential)
  {
    v20 = +[GKPlayerCredentialController sharedController];
    clientProxy = [(GKService *)self clientProxy];
    credential = [v20 primaryCredentialForEnvironment:{objc_msgSend(clientProxy, "environment")}];
  }

  v22 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 166, "[GKFriendService getFriendIDsForPlayer:withFilter:commonFriends:handler:]"];
  v23 = [GKDispatchGroup dispatchGroupWithName:v22];

  clientProxy2 = [(GKService *)self clientProxy];
  playerInternal = [credential playerInternal];
  playerID4 = [playerInternal playerID];
  v27 = [clientProxy2 managedObjectContextForPlayerID:playerID4];

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
  playerCopy = playerCopy;
  v42 = playerCopy;
  v29 = v23;
  v43 = v29;
  v30 = v34;
  selfCopy = self;
  v45 = v30;
  v46 = v47;
  [v29 perform:v40];
  clientProxy3 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy3 replyQueue];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10008729C;
  v35[3] = &unk_100362EC8;
  v33 = v29;
  v36 = v33;
  v38 = v18;
  v39 = v47;
  selfCopy2 = self;
  [v33 notifyOnQueue:replyQueue block:v35];

  _Block_object_dispose(v47, 8);
LABEL_13:
}

- (void)getNearbyTokenForLocalPlayerWithHandler:(id)handler
{
  handlerCopy = handler;
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
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000879A0;
  v12[3] = &unk_100360EB0;
  v13 = v7;
  v14 = handlerCopy;
  v10 = v7;
  v11 = handlerCopy;
  [v10 notifyOnQueue:replyQueue block:v12];
}

- (id)predicateForFriendPredicate:(id)predicate withFilter:(id)filter
{
  predicateCopy = predicate;
  filterCopy = filter;
  v7 = filterCopy;
  if (filterCopy && [filterCopy length])
  {
    v8 = [NSPredicate predicateWithFormat:v7];
    v12[0] = predicateCopy;
    v12[1] = v8;
    v9 = [NSArray arrayWithObjects:v12 count:2];
    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  }

  else
  {
    v10 = predicateCopy;
  }

  return v10;
}

- (void)establishNearbyRelationshipsUsingPlayerTokens:(id)tokens handler:(id)handler
{
  tokensCopy = tokens;
  handlerCopy = handler;
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
  v12 = tokensCopy;
  v20 = v12;
  selfCopy = self;
  v13 = v11;
  v22 = v13;
  [v13 perform:v19];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100087F0C;
    v16[3] = &unk_100360EB0;
    v18 = handlerCopy;
    v17 = v13;
    [v17 notifyOnQueue:replyQueue block:v16];
  }
}

- (void)createFriendRequestWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendService.m", 342, "[GKFriendService createFriendRequestWithIdentifier:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100088124;
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
    v14[2] = sub_100088314;
    v14[3] = &unk_100360EB0;
    v16 = handlerCopy;
    v15 = v11;
    [v15 notifyOnQueue:replyQueue block:v14];
  }
}

+ (id)filterFriends:(id)friends filter:(int)filter
{
  friendsCopy = friends;
  if (friends)
  {
    type metadata accessor for GKFilterableFriend();
    friendsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = sub_1001A6208(friendsCopy, filter);

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
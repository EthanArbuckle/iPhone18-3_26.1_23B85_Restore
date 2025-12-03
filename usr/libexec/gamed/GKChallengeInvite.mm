@interface GKChallengeInvite
- (GKChallengeInvite)initWithChallenge:(id)challenge;
- (GKChallengeInvite)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)loadDetailsWithHandler:(id)handler;
- (void)loadGoalTextForGameDescriptor:(id)descriptor handler:(id)handler;
@end

@implementation GKChallengeInvite

- (GKChallengeInvite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = GKChallengeInvite;
  v5 = [(GKChallengeInvite *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receivingPlayer"];
    receivingPlayer = v5->_receivingPlayer;
    v5->_receivingPlayer = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuingPlayer"];
    issuingPlayer = v5->_issuingPlayer;
    v5->_issuingPlayer = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    challenge = v5->_challenge;
    v5->_challenge = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goalText"];
    goalText = v5->_goalText;
    v5->_goalText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gameTitle"];
    gameTitle = v5->_gameTitle;
    v5->_gameTitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolvedBundleID"];
    resolvedBundleID = v5->_resolvedBundleID;
    v5->_resolvedBundleID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challengeID"];
    challengeID = v5->_challengeID;
    v5->_challengeID = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  receivingPlayer = self->_receivingPlayer;
  coderCopy = coder;
  [coderCopy encodeObject:receivingPlayer forKey:@"receivingPlayer"];
  [coderCopy encodeObject:self->_issuingPlayer forKey:@"issuingPlayer"];
  [coderCopy encodeObject:self->_challenge forKey:@"challenge"];
  [coderCopy encodeObject:self->_goalText forKey:@"goalText"];
  [coderCopy encodeObject:self->_gameTitle forKey:@"gameTitle"];
  [coderCopy encodeObject:self->_resolvedBundleID forKey:@"resolvedBundleID"];
  [coderCopy encodeObject:self->_challengeID forKey:@"challengeID"];
}

- (id)description
{
  pushDescriptor = [(GKChallengeInvite *)self pushDescriptor];
  v3 = [NSString stringWithFormat:@"GKChallengeInvite: %@", pushDescriptor];

  return v3;
}

- (GKChallengeInvite)initWithChallenge:(id)challenge
{
  challengeCopy = challenge;
  v9.receiver = self;
  v9.super_class = GKChallengeInvite;
  v6 = [(GKChallengeInvite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_challenge, challenge);
  }

  return v7;
}

- (void)loadDetailsWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeInvite.m", 101, "[GKChallengeInvite loadDetailsWithHandler:]"];
  v5 = [GKDispatchGroup dispatchGroupWithName:v4];

  v6 = +[GKClientProxy gameCenterClient];
  challenge = [(GKChallengeInvite *)self challenge];
  receivingPlayer = [challenge receivingPlayer];
  playerID = [receivingPlayer playerID];
  v32[0] = playerID;
  challenge2 = [(GKChallengeInvite *)self challenge];
  issuingPlayer = [challenge2 issuingPlayer];
  playerID2 = [issuingPlayer playerID];
  v32[1] = playerID2;
  v13 = [NSArray arrayWithObjects:v32 count:2];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10013D4B4;
  v28[3] = &unk_100360F00;
  v14 = v6;
  v29 = v14;
  v30 = v13;
  selfCopy = self;
  v15 = v13;
  [v5 perform:v28];
  bundleID = [(GKChallengeInternal *)self->_challenge bundleID];
  [(GKChallengeInvite *)self setResolvedBundleID:bundleID];

  game = [(GKChallengeInternal *)self->_challenge game];
  name = [game name];
  [(GKChallengeInvite *)self setGameTitle:name];

  replyQueue = [v14 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10013D628;
  v24[3] = &unk_100365868;
  v24[4] = self;
  v25 = game;
  v26 = v14;
  v27 = handlerCopy;
  v20 = v14;
  v21 = handlerCopy;
  v22 = game;
  [v5 notifyOnQueue:replyQueue block:v24];
}

- (void)loadGoalTextForGameDescriptor:(id)descriptor handler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_10013DC5C;
  v28[4] = sub_10013DC6C;
  v29 = 0;
  v9 = +[GKClientProxy gameCenterClient];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = self->_challenge;
    dispatch_group_enter(v8);
    v11 = [(GKService *)GKGameStatService serviceWithTransport:0 forClient:v9 localPlayer:0];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10013DC74;
    v25[3] = &unk_100368078;
    v12 = v10;
    v26 = v12;
    v27[1] = v28;
    v27[0] = v8;
    [v11 getAchievementDescriptionsForGameDescriptor:descriptorCopy handler:v25];
    v13 = &v26;
    v14 = v27;
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = self->_challenge;
    dispatch_group_enter(v8);
    v11 = [(GKService *)GKGameStatService serviceWithTransport:0 forClient:v9 localPlayer:0];
    receivingPlayer = self->_receivingPlayer;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10013DE38;
    v22[3] = &unk_100368078;
    v12 = v15;
    v23 = v12;
    v24[1] = v28;
    v24[0] = v8;
    [v11 getLeaderboardsForGameDescriptor:descriptorCopy player:receivingPlayer setIdentifier:0 handler:v22];
    v13 = &v23;
    v14 = v24;
    goto LABEL_5;
  }

LABEL_6:
  replyQueue = [v9 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013E05C;
  block[3] = &unk_1003680A0;
  v20 = handlerCopy;
  v21 = v28;
  v18 = handlerCopy;
  dispatch_group_notify(v8, replyQueue, block);

  _Block_object_dispose(v28, 8);
}

@end
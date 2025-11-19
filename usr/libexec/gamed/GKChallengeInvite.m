@interface GKChallengeInvite
- (GKChallengeInvite)initWithChallenge:(id)a3;
- (GKChallengeInvite)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)loadDetailsWithHandler:(id)a3;
- (void)loadGoalTextForGameDescriptor:(id)a3 handler:(id)a4;
@end

@implementation GKChallengeInvite

- (GKChallengeInvite)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = GKChallengeInvite;
  v5 = [(GKChallengeInvite *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receivingPlayer"];
    receivingPlayer = v5->_receivingPlayer;
    v5->_receivingPlayer = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuingPlayer"];
    issuingPlayer = v5->_issuingPlayer;
    v5->_issuingPlayer = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    challenge = v5->_challenge;
    v5->_challenge = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"goalText"];
    goalText = v5->_goalText;
    v5->_goalText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gameTitle"];
    gameTitle = v5->_gameTitle;
    v5->_gameTitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolvedBundleID"];
    resolvedBundleID = v5->_resolvedBundleID;
    v5->_resolvedBundleID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"challengeID"];
    challengeID = v5->_challengeID;
    v5->_challengeID = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  receivingPlayer = self->_receivingPlayer;
  v5 = a3;
  [v5 encodeObject:receivingPlayer forKey:@"receivingPlayer"];
  [v5 encodeObject:self->_issuingPlayer forKey:@"issuingPlayer"];
  [v5 encodeObject:self->_challenge forKey:@"challenge"];
  [v5 encodeObject:self->_goalText forKey:@"goalText"];
  [v5 encodeObject:self->_gameTitle forKey:@"gameTitle"];
  [v5 encodeObject:self->_resolvedBundleID forKey:@"resolvedBundleID"];
  [v5 encodeObject:self->_challengeID forKey:@"challengeID"];
}

- (id)description
{
  v2 = [(GKChallengeInvite *)self pushDescriptor];
  v3 = [NSString stringWithFormat:@"GKChallengeInvite: %@", v2];

  return v3;
}

- (GKChallengeInvite)initWithChallenge:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKChallengeInvite;
  v6 = [(GKChallengeInvite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_challenge, a3);
  }

  return v7;
}

- (void)loadDetailsWithHandler:(id)a3
{
  v23 = a3;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeInvite.m", 101, "[GKChallengeInvite loadDetailsWithHandler:]"];
  v5 = [GKDispatchGroup dispatchGroupWithName:v4];

  v6 = +[GKClientProxy gameCenterClient];
  v7 = [(GKChallengeInvite *)self challenge];
  v8 = [v7 receivingPlayer];
  v9 = [v8 playerID];
  v32[0] = v9;
  v10 = [(GKChallengeInvite *)self challenge];
  v11 = [v10 issuingPlayer];
  v12 = [v11 playerID];
  v32[1] = v12;
  v13 = [NSArray arrayWithObjects:v32 count:2];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10013D4B4;
  v28[3] = &unk_100360F00;
  v14 = v6;
  v29 = v14;
  v30 = v13;
  v31 = self;
  v15 = v13;
  [v5 perform:v28];
  v16 = [(GKChallengeInternal *)self->_challenge bundleID];
  [(GKChallengeInvite *)self setResolvedBundleID:v16];

  v17 = [(GKChallengeInternal *)self->_challenge game];
  v18 = [v17 name];
  [(GKChallengeInvite *)self setGameTitle:v18];

  v19 = [v14 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10013D628;
  v24[3] = &unk_100365868;
  v24[4] = self;
  v25 = v17;
  v26 = v14;
  v27 = v23;
  v20 = v14;
  v21 = v23;
  v22 = v17;
  [v5 notifyOnQueue:v19 block:v24];
}

- (void)loadGoalTextForGameDescriptor:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [v11 getAchievementDescriptionsForGameDescriptor:v6 handler:v25];
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
    [v11 getLeaderboardsForGameDescriptor:v6 player:receivingPlayer setIdentifier:0 handler:v22];
    v13 = &v23;
    v14 = v24;
    goto LABEL_5;
  }

LABEL_6:
  v17 = [v9 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013E05C;
  block[3] = &unk_1003680A0;
  v20 = v7;
  v21 = v28;
  v18 = v7;
  dispatch_group_notify(v8, v17, block);

  _Block_object_dispose(v28, 8);
}

@end
@interface GKBulletinServicePrivate
- (void)clearBulletinsForReceivedChallenges:(id)challenges;
- (void)clearBulletinsForTurnBasedTurn:(id)turn exchangeID:(id)d;
- (void)fetchBadgeCountsForBundleID:(id)d handler:(id)handler;
- (void)fetchMessageImageForBundleID:(id)d handler:(id)handler;
- (void)markAllBadgesAsViewedForType:(unint64_t)type;
@end

@implementation GKBulletinServicePrivate

- (void)markAllBadgesAsViewedForType:(unint64_t)type
{
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKBulletinService.m", 63, "[GKBulletinServicePrivate markAllBadgesAsViewedForType:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  context = [v6 context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100060A50;
  v9[3] = &unk_1003615B0;
  selfCopy = self;
  typeCopy = type;
  v10 = v6;
  v8 = v6;
  [context performBlockAndWait:v9];
}

- (void)fetchBadgeCountsForBundleID:(id)d handler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    dCopy = d;
    v7 = +[GKBadgeController sharedController];
    v8 = [v7 badgeCountForBundleID:dCopy badgeType:1];
    v9 = [v7 badgeCountForBundleID:dCopy badgeType:0];
    v10 = [v7 badgeCountForBundleID:dCopy badgeType:2];

    v15[0] = &off_100382388;
    v11 = [NSNumber numberWithUnsignedInteger:v9];
    v16[0] = v11;
    v15[1] = &off_1003823A0;
    v12 = [NSNumber numberWithUnsignedInteger:v8];
    v16[1] = v12;
    v15[2] = &off_1003823B8;
    v13 = [NSNumber numberWithUnsignedInteger:v10];
    v16[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    handlerCopy[2](handlerCopy, v14, 0);
  }
}

- (void)clearBulletinsForReceivedChallenges:(id)challenges
{
  challengesCopy = challenges;
  v4 = +[GKBulletinController sharedController];
  v5 = [v4 getBulletinsOfType:objc_opt_class()];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v14 + 1) + 8 * v9)];
        challenge = [v10 challenge];
        challengeID = [challenge challengeID];
        v13 = [challengesCopy containsObject:challengeID];

        if (v13)
        {
          [v4 withdrawBulletin:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)clearBulletinsForTurnBasedTurn:(id)turn exchangeID:(id)d
{
  turnCopy = turn;
  v5 = +[GKBulletinController sharedController];
  v6 = [v5 getBulletinsOfType:objc_opt_class()];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKey:*(*(&v14 + 1) + 8 * v10)];
        matchID = [v11 matchID];
        v13 = [turnCopy isEqualToString:matchID];

        if (v13)
        {
          [v5 withdrawBulletin:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)fetchMessageImageForBundleID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v6 = +[GKApplicationWorkspace defaultWorkspace];
  v7 = [v6 applicationProxyForBundleID:dCopy];

  bundle = [v7 bundle];
  _gkPathForMessageImage = [bundle _gkPathForMessageImage];
  v10 = [NSData dataWithContentsOfFile:_gkPathForMessageImage];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10);
  }
}

@end
@interface GKBulletinServicePrivate
- (void)clearBulletinsForReceivedChallenges:(id)a3;
- (void)clearBulletinsForTurnBasedTurn:(id)a3 exchangeID:(id)a4;
- (void)fetchBadgeCountsForBundleID:(id)a3 handler:(id)a4;
- (void)fetchMessageImageForBundleID:(id)a3 handler:(id)a4;
- (void)markAllBadgesAsViewedForType:(unint64_t)a3;
@end

@implementation GKBulletinServicePrivate

- (void)markAllBadgesAsViewedForType:(unint64_t)a3
{
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKBulletinService.m", 63, "[GKBulletinServicePrivate markAllBadgesAsViewedForType:]"];
  v6 = [(GKService *)self transactionGroupWithName:v5];

  v7 = [v6 context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100060A50;
  v9[3] = &unk_1003615B0;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  [v7 performBlockAndWait:v9];
}

- (void)fetchBadgeCountsForBundleID:(id)a3 handler:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = +[GKBadgeController sharedController];
    v8 = [v7 badgeCountForBundleID:v6 badgeType:1];
    v9 = [v7 badgeCountForBundleID:v6 badgeType:0];
    v10 = [v7 badgeCountForBundleID:v6 badgeType:2];

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
    v5[2](v5, v14, 0);
  }
}

- (void)clearBulletinsForReceivedChallenges:(id)a3
{
  v3 = a3;
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
        v11 = [v10 challenge];
        v12 = [v11 challengeID];
        v13 = [v3 containsObject:v12];

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

- (void)clearBulletinsForTurnBasedTurn:(id)a3 exchangeID:(id)a4
{
  v4 = a3;
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
        v12 = [v11 matchID];
        v13 = [v4 isEqualToString:v12];

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

- (void)fetchMessageImageForBundleID:(id)a3 handler:(id)a4
{
  v11 = a4;
  v5 = a3;
  v6 = +[GKApplicationWorkspace defaultWorkspace];
  v7 = [v6 applicationProxyForBundleID:v5];

  v8 = [v7 bundle];
  v9 = [v8 _gkPathForMessageImage];
  v10 = [NSData dataWithContentsOfFile:v9];
  if (v11)
  {
    v11[2](v11, v10);
  }
}

@end
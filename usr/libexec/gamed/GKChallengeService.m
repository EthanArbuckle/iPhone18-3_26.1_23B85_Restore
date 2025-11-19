@interface GKChallengeService
- (id)_filterChallenges:(id)a3 compatibleWithBundleID:(id)a4;
- (void)_determineCompatibleGamesForChallenges:(id)a3 dispatchGroup:(id)a4;
- (void)_updateGamesForChallenges:(id)a3 dispatchGroup:(id)a4;
- (void)_updatePlayersForChallenges:(id)a3 dispatchGroup:(id)a4;
- (void)abortChallenges:(id)a3 handler:(id)a4;
- (void)fetchChallengesForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5;
- (void)getChallengeDetailsForChallengeIDs:(id)a3 receiverID:(id)a4 clientBundleID:(id)a5 handler:(id)a6;
- (void)getChallengesForGameDescriptor:(id)a3 handler:(id)a4;
- (void)issueChallenge:(id)a3 toPlayers:(id)a4 handler:(id)a5;
- (void)loadChallengesForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5;
@end

@implementation GKChallengeService

- (void)_updatePlayersForChallenges:(id)a3 dispatchGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C5818;
    v14[3] = &unk_1003654C8;
    v9 = [[NSMutableSet alloc] initWithCapacity:2 * v8];
    v15 = v9;
    [v6 enumerateObjectsUsingBlock:v14];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C58C8;
    v11[3] = &unk_100360F00;
    v11[4] = self;
    v12 = v9;
    v13 = v6;
    v10 = v9;
    [v7 perform:v11];
  }
}

- (id)_filterChallenges:(id)a3 compatibleWithBundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C5C38;
    v11[3] = &unk_1003654F0;
    v12 = v6;
    v8 = [NSPredicate predicateWithBlock:v11];
    v9 = [v5 filteredArrayUsingPredicate:v8];

    v5 = v9;
  }

  return v5;
}

- (void)_determineCompatibleGamesForChallenges:(id)a3 dispatchGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v33 = v6;
    v7 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v34 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          v14 = [v13 bundleID];
          [v7 addObject:v14];

          v15 = [v13 compatibleBundleIDs];
          v16 = [v15 array];
          [v7 addObjectsFromArray:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v10);
    }

    v32 = v7;

    v17 = +[GKApplicationWorkspace defaultWorkspace];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v8;
    v18 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      do
      {
        v21 = 0;
        v35 = v19;
        do
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v41 + 1) + 8 * v21);
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 bundleID];
          v25 = [v17 applicationIsInstalled:v24];

          if ((v25 & 1) == 0)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v26 = [v22 compatibleBundleIDs];
            v27 = [v26 countByEnumeratingWithState:&v37 objects:v49 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v38;
              while (2)
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v38 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v37 + 1) + 8 * j);
                  if ([v17 applicationIsInstalled:v31])
                  {
                    [v22 setBundleID:v31];
                    goto LABEL_25;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v37 objects:v49 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_25:

            v19 = v35;
          }

          objc_autoreleasePoolPop(v23);
          v21 = v21 + 1;
        }

        while (v21 != v19);
        v19 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v19);
    }

    v6 = v33;
    v5 = v34;
  }
}

- (void)_updateGamesForChallenges:(id)a3 dispatchGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [v6 _gkDistinctValuesForKeyPath:@"bundleID"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C60BC;
    v9[3] = &unk_100360F00;
    v10 = v9[4] = self;
    v11 = v6;
    v8 = v10;
    [v7 perform:v9];
  }
}

- (void)fetchChallengesForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C63B8;
  v8[3] = &unk_100361270;
  v9 = a4;
  v10 = a5;
  v6 = v10;
  v7 = v9;
  [v7 performBlock:v8];
}

- (void)loadChallengesForGameDescriptor:(id)a3 context:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(GKService *)self clientProxy];
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 204, "[GKChallengeService loadChallengesForGameDescriptor:context:handler:]"];
  v11 = [GKCacheTransactionGroup transactionGroupWithName:v10 context:v7 client:v9];

  v12 = [(GKService *)self clientProxy];
  v13 = [v12 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C67CC;
  v21[3] = &unk_100361F90;
  v21[4] = self;
  v14 = v11;
  v22 = v14;
  v15 = v7;
  v23 = v15;
  v16 = v9;
  v24 = v16;
  [v14 performOnQueue:v13 block:v21];

  if (v8)
  {
    v17 = [v16 replyQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C6B9C;
    v18[3] = &unk_100360EB0;
    v20 = v8;
    v19 = v14;
    [v19 notifyOnQueue:v17 block:v18];
  }
}

- (void)getChallengesForGameDescriptor:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKService *)self clientProxy];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 251, "[GKChallengeService getChallengesForGameDescriptor:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  v11 = [(GKService *)self clientProxy];
  v12 = [v11 replyQueue];

  if (!v6)
  {
    v13 = [(GKService *)self clientProxy];
    v6 = [v13 gameDescriptor];
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000C6E90;
  v25[3] = &unk_100361F90;
  v14 = v10;
  v26 = v14;
  v27 = self;
  v15 = v6;
  v28 = v15;
  v16 = v12;
  v29 = v16;
  [v14 performOnQueue:v16 block:v25];
  if (v7)
  {
    v17 = [(GKService *)self clientProxy];
    v18 = [v17 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C77E0;
    v19[3] = &unk_100360F28;
    v20 = v14;
    v21 = self;
    v22 = v15;
    v23 = v8;
    v24 = v7;
    [v20 notifyOnQueue:v18 block:v19];
  }
}

- (void)getChallengeDetailsForChallengeIDs:(id)a3 receiverID:(id)a4 clientBundleID:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 347, "[GKChallengeService getChallengeDetailsForChallengeIDs:receiverID:clientBundleID:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  v16 = [(GKService *)self clientProxy];
  v17 = [v16 replyQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000C7E78;
  v31[3] = &unk_100361F90;
  v18 = v15;
  v32 = v18;
  v33 = v10;
  v34 = self;
  v35 = v11;
  v19 = v11;
  v20 = v10;
  [v18 performOnQueue:v17 block:v31];

  v21 = [(GKService *)self clientProxy];
  v22 = [v21 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000C8F10;
  v26[3] = &unk_100360F78;
  v27 = v18;
  v28 = self;
  v29 = v12;
  v30 = v13;
  v23 = v13;
  v24 = v12;
  v25 = v18;
  [v25 notifyOnQueue:v22 block:v26];
}

- (void)issueChallenge:(id)a3 toPlayers:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v8 serverRepresentationForReceivingPlayer:*(*(&v29 + 1) + 8 * v16)];
        [v11 addObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v18 = [GKChallengeNetworkRequest alloc];
  v19 = [(GKService *)self clientProxy];
  v20 = [v19 bundleIdentifier];
  v21 = [(GKChallengeNetworkRequest *)v18 initWithChallenges:v11 bundleID:v20];

  v22 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v23 = [(GKService *)self clientProxy];
  [v22 writeToNetwork:v21 clientProxy:v23 handler:0];

  if (v10)
  {
    v24 = [(GKService *)self clientProxy];
    v25 = [v24 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C96EC;
    block[3] = &unk_100360FA0;
    v28 = v10;
    dispatch_async(v25, block);
  }

  v26 = +[GKReporter reporter];
  [v26 reportEvent:GKReporterDomainChallenge type:GKReporterChallengeIssue];
}

- (void)abortChallenges:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 543, "[GKChallengeService abortChallenges:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  v10 = [(GKService *)self clientProxy];
  v11 = [v10 replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C990C;
  v19[3] = &unk_100360F00;
  v12 = v6;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v22 = self;
  [v13 performOnQueue:v11 block:v19];

  if (v7)
  {
    v14 = [(GKService *)self clientProxy];
    v15 = [v14 replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000C9EEC;
    v17[3] = &unk_100360EB0;
    v17[4] = self;
    v18 = v7;
    [v13 notifyOnQueue:v15 block:v17];
  }

  v16 = +[GKReporter reporter];
  [v16 reportEvent:GKReporterDomainChallenge type:GKReporterChallengeAbort];
}

@end
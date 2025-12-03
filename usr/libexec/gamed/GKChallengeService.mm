@interface GKChallengeService
- (id)_filterChallenges:(id)challenges compatibleWithBundleID:(id)d;
- (void)_determineCompatibleGamesForChallenges:(id)challenges dispatchGroup:(id)group;
- (void)_updateGamesForChallenges:(id)challenges dispatchGroup:(id)group;
- (void)_updatePlayersForChallenges:(id)challenges dispatchGroup:(id)group;
- (void)abortChallenges:(id)challenges handler:(id)handler;
- (void)fetchChallengesForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler;
- (void)getChallengeDetailsForChallengeIDs:(id)ds receiverID:(id)d clientBundleID:(id)iD handler:(id)handler;
- (void)getChallengesForGameDescriptor:(id)descriptor handler:(id)handler;
- (void)issueChallenge:(id)challenge toPlayers:(id)players handler:(id)handler;
- (void)loadChallengesForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler;
@end

@implementation GKChallengeService

- (void)_updatePlayersForChallenges:(id)challenges dispatchGroup:(id)group
{
  challengesCopy = challenges;
  groupCopy = group;
  v8 = [challengesCopy count];
  if (v8)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C5818;
    v14[3] = &unk_1003654C8;
    v9 = [[NSMutableSet alloc] initWithCapacity:2 * v8];
    v15 = v9;
    [challengesCopy enumerateObjectsUsingBlock:v14];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C58C8;
    v11[3] = &unk_100360F00;
    v11[4] = self;
    v12 = v9;
    v13 = challengesCopy;
    v10 = v9;
    [groupCopy perform:v11];
  }
}

- (id)_filterChallenges:(id)challenges compatibleWithBundleID:(id)d
{
  challengesCopy = challenges;
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C5C38;
    v11[3] = &unk_1003654F0;
    v12 = dCopy;
    v8 = [NSPredicate predicateWithBlock:v11];
    v9 = [challengesCopy filteredArrayUsingPredicate:v8];

    challengesCopy = v9;
  }

  return challengesCopy;
}

- (void)_determineCompatibleGamesForChallenges:(id)challenges dispatchGroup:(id)group
{
  challengesCopy = challenges;
  groupCopy = group;
  if ([challengesCopy count])
  {
    v33 = groupCopy;
    v7 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(challengesCopy, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v34 = challengesCopy;
    v8 = challengesCopy;
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
          bundleID = [v13 bundleID];
          [v7 addObject:bundleID];

          compatibleBundleIDs = [v13 compatibleBundleIDs];
          array = [compatibleBundleIDs array];
          [v7 addObjectsFromArray:array];
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
          bundleID2 = [v22 bundleID];
          v25 = [v17 applicationIsInstalled:bundleID2];

          if ((v25 & 1) == 0)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            compatibleBundleIDs2 = [v22 compatibleBundleIDs];
            v27 = [compatibleBundleIDs2 countByEnumeratingWithState:&v37 objects:v49 count:16];
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
                    objc_enumerationMutation(compatibleBundleIDs2);
                  }

                  v31 = *(*(&v37 + 1) + 8 * j);
                  if ([v17 applicationIsInstalled:v31])
                  {
                    [v22 setBundleID:v31];
                    goto LABEL_25;
                  }
                }

                v28 = [compatibleBundleIDs2 countByEnumeratingWithState:&v37 objects:v49 count:16];
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

    groupCopy = v33;
    challengesCopy = v34;
  }
}

- (void)_updateGamesForChallenges:(id)challenges dispatchGroup:(id)group
{
  challengesCopy = challenges;
  groupCopy = group;
  if ([challengesCopy count])
  {
    [challengesCopy _gkDistinctValuesForKeyPath:@"bundleID"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C60BC;
    v9[3] = &unk_100360F00;
    v10 = v9[4] = self;
    v11 = challengesCopy;
    v8 = v10;
    [groupCopy perform:v9];
  }
}

- (void)fetchChallengesForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C63B8;
  v8[3] = &unk_100361270;
  contextCopy = context;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = contextCopy;
  [v7 performBlock:v8];
}

- (void)loadChallengesForGameDescriptor:(id)descriptor context:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 204, "[GKChallengeService loadChallengesForGameDescriptor:context:handler:]"];
  v11 = [GKCacheTransactionGroup transactionGroupWithName:v10 context:contextCopy client:clientProxy];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C67CC;
  v21[3] = &unk_100361F90;
  v21[4] = self;
  v14 = v11;
  v22 = v14;
  v15 = contextCopy;
  v23 = v15;
  v16 = clientProxy;
  v24 = v16;
  [v14 performOnQueue:replyQueue block:v21];

  if (handlerCopy)
  {
    replyQueue2 = [v16 replyQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C6B9C;
    v18[3] = &unk_100360EB0;
    v20 = handlerCopy;
    v19 = v14;
    [v19 notifyOnQueue:replyQueue2 block:v18];
  }
}

- (void)getChallengesForGameDescriptor:(id)descriptor handler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
  v9 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 251, "[GKChallengeService getChallengesForGameDescriptor:handler:]"];
  v10 = [(GKService *)self transactionGroupWithName:v9];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue = [clientProxy2 replyQueue];

  if (!descriptorCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    descriptorCopy = [clientProxy3 gameDescriptor];
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000C6E90;
  v25[3] = &unk_100361F90;
  v14 = v10;
  v26 = v14;
  selfCopy = self;
  v15 = descriptorCopy;
  v28 = v15;
  v16 = replyQueue;
  v29 = v16;
  [v14 performOnQueue:v16 block:v25];
  if (handlerCopy)
  {
    clientProxy4 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy4 replyQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C77E0;
    v19[3] = &unk_100360F28;
    v20 = v14;
    selfCopy2 = self;
    v22 = v15;
    v23 = clientProxy;
    v24 = handlerCopy;
    [v20 notifyOnQueue:replyQueue2 block:v19];
  }
}

- (void)getChallengeDetailsForChallengeIDs:(id)ds receiverID:(id)d clientBundleID:(id)iD handler:(id)handler
{
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 347, "[GKChallengeService getChallengeDetailsForChallengeIDs:receiverID:clientBundleID:handler:]"];
  v15 = [(GKService *)self transactionGroupWithName:v14];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000C7E78;
  v31[3] = &unk_100361F90;
  v18 = v15;
  v32 = v18;
  v33 = dsCopy;
  selfCopy = self;
  v35 = dCopy;
  v19 = dCopy;
  v20 = dsCopy;
  [v18 performOnQueue:replyQueue block:v31];

  clientProxy2 = [(GKService *)self clientProxy];
  replyQueue2 = [clientProxy2 replyQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000C8F10;
  v26[3] = &unk_100360F78;
  v27 = v18;
  selfCopy2 = self;
  v29 = iDCopy;
  v30 = handlerCopy;
  v23 = handlerCopy;
  v24 = iDCopy;
  v25 = v18;
  [v25 notifyOnQueue:replyQueue2 block:v26];
}

- (void)issueChallenge:(id)challenge toPlayers:(id)players handler:(id)handler
{
  challengeCopy = challenge;
  playersCopy = players;
  handlerCopy = handler;
  v11 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [playersCopy count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = playersCopy;
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

        v17 = [challengeCopy serverRepresentationForReceivingPlayer:*(*(&v29 + 1) + 8 * v16)];
        [v11 addObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v18 = [GKChallengeNetworkRequest alloc];
  clientProxy = [(GKService *)self clientProxy];
  bundleIdentifier = [clientProxy bundleIdentifier];
  v21 = [(GKChallengeNetworkRequest *)v18 initWithChallenges:v11 bundleID:bundleIdentifier];

  v22 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy2 = [(GKService *)self clientProxy];
  [v22 writeToNetwork:v21 clientProxy:clientProxy2 handler:0];

  if (handlerCopy)
  {
    clientProxy3 = [(GKService *)self clientProxy];
    replyQueue = [clientProxy3 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C96EC;
    block[3] = &unk_100360FA0;
    v28 = handlerCopy;
    dispatch_async(replyQueue, block);
  }

  v26 = +[GKReporter reporter];
  [v26 reportEvent:GKReporterDomainChallenge type:GKReporterChallengeIssue];
}

- (void)abortChallenges:(id)challenges handler:(id)handler
{
  challengesCopy = challenges;
  handlerCopy = handler;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 543, "[GKChallengeService abortChallenges:handler:]"];
  v9 = [(GKService *)self transactionGroupWithName:v8];

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C990C;
  v19[3] = &unk_100360F00;
  v12 = challengesCopy;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  selfCopy = self;
  [v13 performOnQueue:replyQueue block:v19];

  if (handlerCopy)
  {
    clientProxy2 = [(GKService *)self clientProxy];
    replyQueue2 = [clientProxy2 replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000C9EEC;
    v17[3] = &unk_100360EB0;
    v17[4] = self;
    v18 = handlerCopy;
    [v13 notifyOnQueue:replyQueue2 block:v17];
  }

  v16 = +[GKReporter reporter];
  [v16 reportEvent:GKReporterDomainChallenge type:GKReporterChallengeAbort];
}

@end
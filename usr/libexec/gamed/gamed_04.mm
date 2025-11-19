void sub_1000B7F0C(uint64_t a1, void *a2, char a3, int a4)
{
  v7 = a2;
  if (a3)
  {
    v8 = [GKGameStatService leaderboards:v7 filteredWithIDs:*(a1 + 72)];

    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000B8B18;
    v9 = v56[3] = &unk_100364D00;
    v57 = v9;
    [v8 enumerateObjectsUsingBlock:v56];
    if ([v9 count])
    {
      v74 = 0;
      v75 = &v74;
      v76 = 0x2020000000;
      v77 = 0;
      v10 = *(a1 + 32);
      v11 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2097, "[GKGameStatService getLeaderboardsForGameDescriptor:player:leaderboardIDs:setIdentifier:handler:]_block_invoke_5"];
      v12 = [v10 transactionGroupWithName:v11];

      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000B8BB8;
      v49[3] = &unk_100364B28;
      v49[4] = *(a1 + 40);
      v50 = v9;
      v51 = *(a1 + 48);
      v52 = *(a1 + 56);
      v53 = *(a1 + 32);
      v13 = v12;
      v54 = v13;
      v55 = &v74;
      [v13 perform:v49];
      if ([*(a1 + 72) count])
      {
        v14 = *(a1 + 32);
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000B8D4C;
        v41[3] = &unk_100364B78;
        v42 = v13;
        v43 = *(a1 + 80);
        v44 = *(a1 + 32);
        v15 = v8;
        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v45 = v15;
        v46 = v16;
        v47 = v17;
        v48 = *(a1 + 72);
        [v14 perform:v41];
      }

      else
      {
        v34 = *(a1 + 80);
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1000B91AC;
        v40[3] = &unk_1003624A8;
        v40[4] = *(a1 + 40);
        v40[5] = &v74;
        [v13 notifyOnQueue:v34 block:v40];
      }

      _Block_object_dispose(&v74, 8);
    }

    v35 = *(a1 + 40);
    v36 = [*(a1 + 48) bundleIdentifier];
    v37 = [v35 updateAndFilterHiddenLeaderboards:v8 bundleID:v36 requestedLeaderboardIDs:*(a1 + 72)];
    [*(a1 + 32) setObject:v37 forKeyedSubscript:@"leaderboards"];

    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v18 = *(a1 + 32);
    v19 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 2036, "[GKGameStatService getLeaderboardsForGameDescriptor:player:leaderboardIDs:setIdentifier:handler:]_block_invoke_5"];
    v20 = [v18 transactionGroupWithName:v19];

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000B85EC;
    v68[3] = &unk_100364B28;
    v39 = *(a1 + 40);
    v21 = *(&v39 + 1);
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    *&v24 = v22;
    *(&v24 + 1) = v23;
    v69 = v39;
    v70 = v24;
    v71 = *(a1 + 32);
    v25 = v20;
    v72 = v25;
    v73 = &v74;
    [v25 perform:v68];
    if (a4 && ![*(a1 + 72) count])
    {
      v38 = *(a1 + 80);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1000B8AB0;
      v58[3] = &unk_1003624A8;
      v58[4] = *(a1 + 40);
      v58[5] = &v74;
      [v25 notifyOnQueue:v38 block:v58];
    }

    else
    {
      v26 = *(a1 + 32);
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000B8774;
      v59[3] = &unk_100364CD8;
      v60 = v25;
      v61 = *(a1 + 80);
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v29 = *(a1 + 48);
      v62 = v27;
      v63 = v28;
      v64 = v29;
      v65 = *(a1 + 56);
      v66 = *(a1 + 64);
      v67 = *(a1 + 72);
      [v26 perform:v59];
    }

    v30 = *(a1 + 40);
    v31 = [GKGameStatService leaderboards:v7 filteredWithIDs:*(a1 + 72)];
    v32 = [*(a1 + 48) bundleIdentifier];
    v33 = [v30 updateAndFilterHiddenLeaderboards:v31 bundleID:v32 requestedLeaderboardIDs:*(a1 + 72)];
    [*(a1 + 32) setObject:v33 forKeyedSubscript:@"leaderboards"];

    (*(*(a1 + 88) + 16))();
    _Block_object_dispose(&v74, 8);
    v8 = v7;
  }
}

void sub_1000B85EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 64) context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B86E8;
  v12[3] = &unk_100364B00;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v14 = v3;
  v15 = v10;
  v13 = v9;
  v11 = v3;
  [v4 loadLeaderboardsForGameDescriptor:v5 player:v6 setIdentifier:v7 context:v8 bagKey:@"gk-get-leaderboards" handler:v12];
}

void sub_1000B86E8(void *a1, void *a2, double a3)
{
  v5 = a1[4];
  v8 = a2;
  [v5 setError:v8];
  v7 = a3 > 0.0 && v8 == 0;
  *(*(a1[6] + 8) + 24) = v7;
  (*(a1[5] + 16))();
}

void sub_1000B8774(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B8890;
  v10[3] = &unk_100364CB0;
  v11 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v18 = v3;
  v9 = v3;
  [v4 notifyOnQueue:v5 block:v10];
}

void sub_1000B8890(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 88) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = [*(a1 + 32) context];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B8A04;
    v12[3] = &unk_100364C88;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    v15 = *(a1 + 80);
    v16 = *(a1 + 56);
    v17 = *(a1 + 88);
    [v5 fetchLeaderboardsForGameDescriptor:v6 player:v7 setIdentifier:v8 context:v9 handler:v12];
  }
}

uint64_t sub_1000B8A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [GKGameStatService leaderboards:a2 filteredWithIDs:*(a1 + 48)];
  v5 = [*(a1 + 56) bundleIdentifier];
  v6 = [v3 updateAndFilterHiddenLeaderboards:v4 bundleID:v5 requestedLeaderboardIDs:*(a1 + 48)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"leaderboards"];

  v7 = *(*(a1 + 64) + 16);

  return v7();
}

void sub_1000B8AB0(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) clientProxy];
    [v2 refreshContentsForDataType:9 userInfo:&off_1003830F0];
  }
}

void sub_1000B8B18(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 type] == 1)
  {
    v3 = [v8 nextStartDate];
    [v3 timeIntervalSinceNow];
    v5 = v4;

    if (v5 <= 0.0)
    {
      v6 = *(a1 + 32);
      v7 = [v8 baseLeaderboardID];
      [v6 addObject:v7];
    }
  }
}

void sub_1000B8BB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 64) context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B8CAC;
  v12[3] = &unk_100364D28;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v14 = v3;
  v15 = v10;
  v13 = v9;
  v11 = v3;
  [v4 updateLeaderboardsWithIDs:v5 gameDescriptor:v6 player:v7 context:v8 handler:v12];
}

void sub_1000B8CAC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = a2;
  [v5 setError:v7];
  [*(a1 + 32) setResult:v6];

  *(*(*(a1 + 48) + 8) + 24) = v7 == 0;
  (*(*(a1 + 40) + 16))();
}

void sub_1000B8D4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B8E54;
  v10[3] = &unk_100362030;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = *(a1 + 80);
  v17 = v3;
  v9 = v3;
  [v4 notifyOnQueue:v5 block:v10];
}

uint64_t sub_1000B8E54(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [*(a1 + 40) result];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 baseLeaderboardID];
          [v4 setObject:v10 forKeyedSubscript:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v13 = *(a1 + 48);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000B90C0;
    v23 = &unk_100364D50;
    v24 = v12;
    v25 = v4;
    v14 = v4;
    v15 = v12;
    [v13 enumerateObjectsUsingBlock:&v20];
    v16 = *(a1 + 56);
    v17 = [*(a1 + 64) bundleIdentifier];
    v18 = [v16 updateAndFilterHiddenLeaderboards:v15 bundleID:v17 requestedLeaderboardIDs:*(a1 + 72)];
    [*(a1 + 32) setObject:v18 forKeyedSubscript:@"leaderboards"];
  }

  return (*(*(a1 + 80) + 16))();
}

void sub_1000B90C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v5 baseLeaderboardID];
  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  [v3 addObject:v9];

  v10 = *(a1 + 40);
  v11 = [v5 baseLeaderboardID];

  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
      v13 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10028BCEC(v13, v12);
    }
  }
}

void sub_1000B91AC(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) clientProxy];
    [v2 refreshContentsForDataType:9 userInfo:&off_100383118];
  }
}

void sub_1000B9214(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028BDB8(v2, v5);
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"leaderboards"];
  v8 = [*(a1 + 32) error];
  (*(v6 + 16))(v6, v7, v8);
}

void sub_1000B93C4(void *a1)
{
  v3 = [NSPredicate predicateWithFormat:@"recordID = %@", a1[4]];
  v2 = [(GKCacheObject *)GKLeaderboardCacheObject firstObjectMatchingPredicate:v3 context:a1[5]];
  (*(a1[6] + 16))();
}

void sub_1000B97A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v23[0] = @"game";
  v4 = [*(a1 + 32) dictionaryForRequest];
  v24[0] = v4;
  v23[1] = @"player-id";
  v5 = [*(a1 + 40) playerID];
  v24[1] = v5;
  v23[2] = @"leaderboard-id";
  v6 = [*(a1 + 48) identifier];
  v24[2] = v6;
  v24[3] = &off_100382418;
  v23[3] = @"count";
  v23[4] = @"player-played-in-only";
  v7 = [NSNumber numberWithBool:*(a1 + 80)];
  v24[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v10 = [*(a1 + 56) clientProxy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B9A08;
  v18[3] = &unk_100364DA0;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v19 = v16;
  v20 = v15;
  v21 = *(a1 + 48);
  v22 = v3;
  v17 = v3;
  [v9 issueRequest:v8 bagKey:@"gk-get-previous-leaderboard-instances" clientProxy:v10 handler:v18];
}

void sub_1000B9A08(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (v5 && !a3)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B9B30;
    v10[3] = &unk_100361F40;
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v14 = v5;
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    [v9 performBlockAndWait:v10];
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), v6, v7, v8);
}

void sub_1000B9B30(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionaryForRequest];
  v12 = [GKGameCacheObject gameForGameDescriptor:v2 context:*(a1 + 40)];

  v3 = [*(a1 + 48) playerID];
  v4 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v3 inManagedObjectContext:*(a1 + 40)];

  v5 = [*(a1 + 56) objectForKeyedSubscript:@"results"];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [*(a1 + 64) recordID];
    v8 = [NSPredicate predicateWithFormat:@"recordID = %@", v7];

    v9 = [(GKCacheObject *)GKLeaderboardCacheObject firstObjectMatchingPredicate:v8 context:*(a1 + 40)];
    v10 = [(GKCacheObject *)[GKLeaderboardCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
    [(GKLeaderboardCacheObject *)v10 setGame:v12];
    [(GKLeaderboardCacheObject *)v10 setPlayer:v4];
    [(GKLeaderboardCacheObject *)v10 updateWithServerRepresentation:v6];
    [(GKLeaderboardCacheObject *)v10 setIsPrimary:0];
    [v9 setPreviousInstance:v10];
    [v9 setPreviousInstanceLoaded:1];
    v11 = [(GKLeaderboardCacheObject *)v10 internalRepresentation];
    [*(a1 + 72) setResult:v11];
  }
}

void sub_1000B9D04(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000BA32C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000BA39C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = [v6 internalRepresentationWithPieces:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000BA434(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:6 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000BA4A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000BA514(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BA62C;
  v12[3] = &unk_100361BF8;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v15 = *(a1 + 64);
  v10 = a2;
  [v4 perform:v12];
  v10[2](v10);
}

void sub_1000BA62C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) recordID];
  v6 = [*(a1 + 48) context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BA76C;
  v14[3] = &unk_100364DF0;
  v7 = *(a1 + 48);
  v18 = v3;
  v13 = *(a1 + 32);
  v8 = v13.i64[1];
  v9 = *(a1 + 56);
  v10.i64[0] = v7;
  v10.i64[1] = v9;
  v11 = vzip2q_s64(v13, v10);
  v10.i64[1] = v13.i64[0];
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 64);
  v12 = v3;
  [v4 fetchLeaderboardWithRecordID:v5 context:v6 handler:v14];
}

void sub_1000BA76C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 previousInstanceLoaded])
  {
    v4 = [v3 previousInstance];
    v5 = [v4 internalRepresentation];

    [*(a1 + 32) setResult:v5];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) context];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BA90C;
    v17[3] = &unk_100364DC8;
    v11 = *(a1 + 32);
    v21 = *(a1 + 72);
    *&v12 = v11;
    *(&v12 + 1) = *(a1 + 40);
    v16 = v12;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v18 = v16;
    v19 = v15;
    v20 = *(a1 + 64);
    [v9 loadPreviousInstanceForLeaderboard:v6 gameDescriptor:v7 player:v8 playerPlayedIn:1 context:v10 handler:v17];
  }
}

void sub_1000BA90C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (v5)
  {
    [*(a1 + 32) setResult:v5];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) context];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BAA34;
    v11[3] = &unk_100364A10;
    v12 = *(a1 + 32);
    v13 = *(a1 + 72);
    [v9 loadPreviousInstanceForLeaderboard:v6 gameDescriptor:v7 player:v8 playerPlayedIn:0 context:v10 handler:v11];
  }
}

uint64_t sub_1000BAA34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  [*(a1 + 32) setResult:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000BAAA4(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028BF28(v2, v5);
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) result];
  v8 = [*(a1 + 32) error];
  (*(v6 + 16))(v6, v7, v8);
}

void sub_1000BACE8(uint64_t a1, void *a2)
{
  [a2 _gkMapDictionaryWithKeyPath:@"playerID"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BADBC;
  v9 = v8[3] = &unk_100364E18;
  v3 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = v9;
  [v3 enumerateObjectsUsingBlock:v8];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v7);
}

void sub_1000BADBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 player];
  v5 = [v4 playerID];

  if (!v5)
  {
LABEL_9:
    v7 = *(a1 + 40);
    goto LABEL_10;
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = v6;
  if (!v6 || ([v6 displayNameWithOptions:0], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    v10 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10028BFB0();
    }

    goto LABEL_9;
  }

LABEL_10:
  [v3 setPlayer:v7];
}

void sub_1000BB0D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  v8 = [v7 internalRepresentation];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000AC1C8;
  v41 = sub_1000AC1D8;
  v42 = 0;
  v9 = [*(a1 + 32) objectForKeyedSubscript:@"player-score"];
  if ([v9 count])
  {
    v10 = objc_alloc_init(GKLeaderboardEntryInternal);
    v11 = v38[5];
    v38[5] = v10;

    v12 = [v9 objectForKeyedSubscript:@"context"];
    v13 = [v12 integerValue];
    [v38[5] setContext:v13];

    v14 = [v9 objectForKeyedSubscript:@"score-value"];
    v15 = [v14 integerValue];
    [v38[5] setScore:v15];

    v16 = [v9 objectForKeyedSubscript:@"formatted-score-value"];
    [v38[5] setFormattedScore:v16];

    v17 = [v9 objectForKeyedSubscript:@"rank"];
    v18 = [v17 integerValue];
    [v38[5] setRank:v18];

    v19 = [v9 objectForKeyedSubscript:@"timestamp"];
    v20 = [NSDate _gkDateFromServerTimestamp:v19];
    [v38[5] setDate:v20];

    [v38[5] setPlayer:v8];
    v21 = [*(a1 + 40) baseLeaderboardID];
    [v38[5] setBaseLeaderboardID:v21];
  }

  v22 = [*(a1 + 32) objectForKeyedSubscript:@"total-entries"];
  v23 = [v22 integerValue];

  v24 = [*(a1 + 32) objectForKeyedSubscript:@"results"];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000BB4F0;
  v33[3] = &unk_100364E40;
  v34 = *(a1 + 40);
  v25 = v8;
  v35 = v25;
  v36 = &v37;
  v26 = [v24 _gkMapWithBlock:v33];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000BB738;
  v30[3] = &unk_100361860;
  v27 = *(a1 + 48);
  v30[4] = *(a1 + 56);
  v28 = v26;
  v31 = v28;
  v32 = &v37;
  [v27 perform:v30];
  [*(a1 + 48) setResult:v38[5]];
  [*(a1 + 48) setObject:v28 forKeyedSubscript:@"entries"];
  v29 = [NSNumber numberWithInteger:v23];
  [*(a1 + 48) setObject:v29 forKeyedSubscript:@"count"];

  v6[2](v6);
  _Block_object_dispose(&v37, 8);
}

void sub_1000BB4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000BB4F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(GKLeaderboardEntryInternal);
  v5 = [v3 objectForKeyedSubscript:@"context"];
  [v4 setContext:{objc_msgSend(v5, "integerValue")}];

  v6 = [v3 objectForKeyedSubscript:@"score-value"];
  [v4 setScore:{objc_msgSend(v6, "integerValue")}];

  v7 = [v3 objectForKeyedSubscript:@"formatted-score-value"];
  [v4 setFormattedScore:v7];

  v8 = [v3 objectForKeyedSubscript:@"rank"];
  [v4 setRank:{objc_msgSend(v8, "integerValue")}];

  v9 = [v3 objectForKeyedSubscript:@"timestamp"];
  v10 = [NSDate _gkDateFromServerTimestamp:v9];
  [v4 setDate:v10];

  v11 = [*(a1 + 32) baseLeaderboardID];
  [v4 setBaseLeaderboardID:v11];

  v12 = [v3 objectForKeyedSubscript:@"player-descriptor"];

  v13 = [v12 objectForKeyedSubscript:@"player-id"];

  if (v13)
  {
    v14 = [*(a1 + 40) playerID];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      [v4 setPlayer:*(a1 + 40)];
      v16 = *(*(a1 + 48) + 8);
      if (*(v16 + 40))
      {
        goto LABEL_7;
      }

      v17 = v4;
      v18 = *(v16 + 40);
      *(v16 + 40) = v17;
    }

    else
    {
      v19 = +[GKPlayerInternal internalRepresentation];
      [v4 setPlayer:v19];

      v18 = [v4 player];
      [v18 setPlayerID:v13];
    }
  }

LABEL_7:

  return v4;
}

void sub_1000BB738(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(*(a1[6] + 8) + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BB7EC;
  v8[3] = &unk_100360FA0;
  v9 = v3;
  v7 = v3;
  [v4 updatePlayersForEntries:v5 localPlayerEntry:v6 handler:v8];
}

void sub_1000BB7FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entries"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  (*(v2 + 16))(v2, v5, v3, [v4 integerValue], 0);
}

void sub_1000BBC14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 isInDebugMode];

  if (v5)
  {
    v6 = *(a1 + 40);
    v31 = *(a1 + 32);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = v3;
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    v13 = *(a1 + 64);
    v12 = *(a1 + 72);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000BBFC8;
    v38[3] = &unk_100361A58;
    v39 = v7;
    v40 = *(a1 + 80);
    v41 = v9;
    v30 = *(a1 + 120);
    v14 = v9;
    [v31 loadFakeLeaderboardEntriesWithLeaderboard:v6 game:v8 localPlayer:v39 playerScope:v10 timeScope:v11 range:v30 players:v13 locale:v12 completionHandler:v38];

    v15 = v39;
  }

  else
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v16 = [*(a1 + 48) dictionaryForRequest];
    [v14 setObject:v16 forKeyedSubscript:@"game"];

    v17 = [*(a1 + 56) playerID];
    [v14 setObject:v17 forKeyedSubscript:@"player-id"];

    v18 = [*(a1 + 40) baseLeaderboardID];
    [v14 setObject:v18 forKeyedSubscript:@"base-leaderboard-id"];

    v19 = [*(a1 + 40) identifier];
    [v14 setObject:v19 forKeyedSubscript:@"leaderboard-id"];

    v20 = [*(a1 + 32) timeScopeName:*(a1 + 112)];
    [v14 setObject:v20 forKeyedSubscript:@"time-scope"];

    if ([*(a1 + 88) count])
    {
      [v14 setObject:*(a1 + 88) forKeyedSubscript:@"player-ids"];
      v21 = @"gk-get-leaderboard-entries-for-players";
    }

    else
    {
      v22 = [*(a1 + 32) playerScopeName:*(a1 + 104)];
      [v14 setObject:v22 forKeyedSubscript:@"player-scope"];

      v23 = [NSNumber numberWithUnsignedInteger:*(a1 + 120)];
      [v14 setObject:v23 forKeyedSubscript:@"starting-rank"];

      v24 = [NSNumber numberWithUnsignedInteger:*(a1 + 128)];
      [v14 setObject:v24 forKeyedSubscript:@"count"];

      v21 = @"gk-get-leaderboard-entries";
    }

    v25 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v26 = [*(a1 + 32) clientProxy];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000BC160;
    v32[3] = &unk_100364BF0;
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    v29 = *(a1 + 32);
    v33 = v28;
    v34 = v29;
    v35 = *(a1 + 96);
    v36 = *(a1 + 40);
    v37 = v3;
    v15 = v3;
    [v25 issueRequest:v14 bagKey:v21 clientProxy:v26 locale:v27 handler:v32];
  }
}

void sub_1000BBFC8(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BC0EC;
  v8[3] = &unk_100364EA8;
  v9 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 _gkFirstObjectPassingTest:v8];
  [*(a1 + 40) setResult:v5];
  [*(a1 + 40) setObject:v4 forKeyedSubscript:@"entries"];
  v6 = [v4 count];

  v7 = [NSNumber numberWithInteger:v6];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:@"count"];

  (*(*(a1 + 48) + 16))();
}

id sub_1000BC0EC(uint64_t a1, void *a2)
{
  v3 = [a2 player];
  v4 = [v3 playerID];
  v5 = [*(a1 + 32) playerID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_1000BC160(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (v5 && !a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BC268;
    v7[3] = &unk_100361BF8;
    v6 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    v8 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    [v6 perform:v7];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_1000BC268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000BC334;
  v9[3] = &unk_100364ED0;
  v10 = *(a1 + 64);
  v11 = v3;
  v8 = v3;
  [v4 generateEntriesFromServerResponse:v5 context:v6 leaderboard:v7 handler:v9];
}

uint64_t sub_1000BC334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 setResult:a2];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"entries"];

  v9 = [NSNumber numberWithInteger:a4];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"count"];

  v10 = *(*(a1 + 40) + 16);

  return v10();
}

void sub_1000BC3E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entries"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  v5 = [v4 integerValue];
  v6 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v7, v3, v5, v6);
}

void sub_1000BCC44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void sub_1000BCCBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void sub_1000BCD34(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = [v6 internalRepresentationWithPieces:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000BCDCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:6 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void sub_1000BCE44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void sub_1000BCEBC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BCFF8;
  v12[3] = &unk_100364F20;
  v11 = *(a1 + 40);
  v5 = *(&v11 + 1);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v9 = *(a1 + 104);
  v18 = *(a1 + 88);
  v19 = v9;
  v15 = *(a1 + 72);
  v16 = *(a1 + 32);
  v17 = *(a1 + 80);
  v10 = a2;
  [v4 perform:v12];
  v10[2](v10);
}

void sub_1000BCFF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  v8 = *(a1 + 64);
  v9 = [*(a1 + 72) context];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000BD108;
  v15[3] = &unk_100364ED0;
  v10 = *(a1 + 80);
  v16 = *(a1 + 72);
  v17 = v3;
  v12 = *(a1 + 104);
  v11 = v3;
  [v14 loadEntriesForLeaderboard:v13 gameDescriptor:v4 localPlayer:v5 playerScope:v6 timeScope:v7 range:v12 players:v8 context:v9 locale:v10 handler:v15];
}

uint64_t sub_1000BD108(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a3;
  v11 = a2;
  [v9 setError:a5];
  [*(a1 + 32) setResult:v11];

  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"entries"];
  v12 = [NSNumber numberWithInteger:a4];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:@"totalPlayerCount"];

  v13 = *(*(a1 + 40) + 16);

  return v13();
}

void sub_1000BD1D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entries"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"totalPlayerCount"];
  v5 = [v4 integerValue];
  v6 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v7, v3, v5, v6);
}

void sub_1000BD4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    do
    {
      v9 = 0;
      do
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v53 + 1) + 8 * v9);
        v11 = objc_alloc_init(GKScoreInternal);
        [v11 setDate:*(a1 + 32)];
        v12 = [v10 baseLeaderboardID];
        [v11 setLeaderboardIdentifier:v12];

        [v11 setValue:*(a1 + 104)];
        [v11 setContext:*(a1 + 112)];
        [v11 setPlayer:*(a1 + 40)];
        if ([v10 type] == 1)
        {
          v13 = v4;
        }

        else
        {
          v13 = v5;
        }

        [v13 addObject:v11];
        v14 = *(a1 + 48);
        v15 = [v10 baseLeaderboardID];
        [v14 removeObject:v15];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v7);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = *(a1 + 48);
  v17 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      v20 = 0;
      do
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v49 + 1) + 8 * v20);
        v22 = objc_alloc_init(GKScoreInternal);
        [v22 setDate:*(a1 + 32)];
        [v22 setLeaderboardIdentifier:v21];
        [v22 setValue:*(a1 + 104)];
        [v22 setContext:*(a1 + 112)];
        [v22 setPlayer:*(a1 + 40)];
        [v5 addObject:v22];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v18);
  }

  v23 = *(a1 + 56);
  v24 = [*(a1 + 64) clientProxy];
  v25 = [v24 replyQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000BD964;
  v38[3] = &unk_100364FC0;
  v33 = *(a1 + 56);
  v26 = v33.i64[0];
  v39 = vextq_s8(v33, v33, 8uLL);
  v47 = *(a1 + 104);
  v40 = *(a1 + 72);
  v41 = *(a1 + 40);
  v48 = *(a1 + 120);
  v42 = *(a1 + 80);
  v43 = *(a1 + 88);
  v27 = v4;
  v44 = v27;
  v28 = obj;
  v45 = v28;
  v29 = v5;
  v46 = v29;
  [v23 performOnQueue:v25 block:v38];

  if (*(a1 + 96))
  {
    v30 = *(a1 + 56);
    v31 = [*(a1 + 64) clientProxy];
    v32 = [v31 replyQueue];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000BE4E0;
    v35[3] = &unk_100361270;
    v36 = *(a1 + 56);
    v37 = *(a1 + 96);
    [v30 notifyOnQueue:v32 block:v35];
  }
}

void sub_1000BD964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 isInDebugMode];

  if (v5)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000BDC18;
    v32[3] = &unk_100364F48;
    v6 = *(a1 + 40);
    v32[4] = *(a1 + 32);
    v38 = *(a1 + 104);
    v33 = *(a1 + 48);
    v34 = *(a1 + 56);
    v39 = *(a1 + 120);
    v35 = *(a1 + 64);
    v36 = *(a1 + 72);
    v37 = *(a1 + 40);
    [v6 perform:v32];

    v7 = v33;
LABEL_9:

    goto LABEL_10;
  }

  v8 = [*(a1 + 32) clientProxy];
  v9 = [v8 notifyAboutScoreSubmissions];

  if (v9)
  {
    [GKScoreSubmissionBulletin presentForScores:*(a1 + 80) leaderboards:*(a1 + 88)];
    [GKScoreSubmissionBulletin presentForScores:*(a1 + 96) leaderboards:*(a1 + 88)];
  }

  if ([*(a1 + 80) count])
  {
    v10 = *(a1 + 40);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000BDD50;
    v26[3] = &unk_100364F98;
    v27 = *(a1 + 80);
    v11 = *(a1 + 64);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v28 = v11;
    v29 = v12;
    v14 = v13;
    v15 = *(a1 + 104);
    v30 = v14;
    v31 = v15;
    [v10 perform:v26];
  }

  if ([*(a1 + 96) count])
  {
    v16 = *(a1 + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000BE294;
    v20[3] = &unk_100364F98;
    v17 = *(a1 + 96);
    v25 = *(a1 + 104);
    v18 = v17;
    v19 = *(a1 + 32);
    v21 = v18;
    v22 = v19;
    v23 = *(a1 + 64);
    v24 = *(a1 + 40);
    [v16 perform:v20];

    v7 = v21;
    goto LABEL_9;
  }

LABEL_10:
  v3[2](v3);
}

void sub_1000BDC18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 88);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 96);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = *(a1 + 80);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BDD08;
  v13[3] = &unk_100361198;
  v10 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = v3;
  v11 = v3;
  [v5 submitFakeScoresWithScore:v12 context:v4 leaderboardIDs:v6 player:v8 screenChallenges:v7 eligibleChallenges:v9 game:v10 completionHandler:v13];
}

uint64_t sub_1000BDD08(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000BDD50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * v9) serverRepresentation];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  [v11 setObject:v4 forKeyedSubscript:@"scores"];
  [v11 setObject:*(a1 + 40) forKeyedSubscript:@"eligible-challenges"];
  v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v13 = [*(a1 + 48) clientProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BDFB0;
  v17[3] = &unk_100364F70;
  v18 = *(a1 + 32);
  v16 = *(a1 + 40);
  v14 = v16.i64[0];
  v19 = vextq_s8(v16, v16, 8uLL);
  v20 = *(a1 + 56);
  v21 = v3;
  v22 = *(a1 + 64);
  v15 = v3;
  [v12 issueRequest:v11 bagKey:@"gk-submit-scores" clientProxy:v13 handler:v17];
}

void sub_1000BDFB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "In-process score submission failed due to error: %@", buf, 0xCu);
    }

    v15 = [GKScoreNetworkRequest alloc];
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) clientProxy];
    v18 = [v17 bundleIdentifier];
    v19 = [(GKScoreNetworkRequest *)v15 initWithScores:v16 bundleID:v18 eligibleChallenges:*(a1 + 48)];

    v20 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v21 = [*(a1 + 40) clientProxy];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000BE24C;
    v22[3] = &unk_100361198;
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    [v20 writeToNetwork:v19 clientProxy:v21 handler:v22];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 72);
      v11 = v9;
      v12 = [NSNumber numberWithInteger:v10];
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Score %@ submitted successfully in-process", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

uint64_t sub_1000BE24C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000BE294(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 64);
    v7 = v5;
    v8 = [NSNumber numberWithInteger:v6];
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Score %@ submitted via store and forward for classic", buf, 0xCu);
  }

  v9 = [GKScoreNetworkRequest alloc];
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) clientProxy];
  v12 = [v11 bundleIdentifier];
  v13 = [(GKScoreNetworkRequest *)v9 initWithScores:v10 bundleID:v12 eligibleChallenges:*(a1 + 48)];

  v14 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v15 = [*(a1 + 40) clientProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BE498;
  v17[3] = &unk_100361198;
  v18 = *(a1 + 56);
  v19 = v3;
  v16 = v3;
  [v14 writeToNetwork:v13 clientProxy:v15 handler:v17];
}

uint64_t sub_1000BE498(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000BE4E0(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028C158(v2, v5);
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) error];
  (*(v6 + 16))(v6, v7);
}

void sub_1000BE7E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(GKScoreInternal);
  [v4 setDate:*(a1 + 32)];
  v5 = [*(a1 + 40) identifier];
  [v4 setLeaderboardIdentifier:v5];

  [v4 setValue:*(a1 + 80)];
  [v4 setContext:*(a1 + 88)];
  [v4 setPlayer:*(a1 + 48)];
  v6 = [*(a1 + 56) clientProxy];
  v7 = [v6 isInDebugMode];

  v8 = *(a1 + 56);
  if (v7)
  {
    v40 = v4;
    v9 = [NSArray arrayWithObjects:&v40 count:1];
    v10 = [*(a1 + 56) clientProxy];
    v11 = [v10 bundleIdentifier];
    v12 = *(a1 + 96);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000BEB94;
    v35[3] = &unk_100361198;
    v13 = *(a1 + 64);
    v36 = *(a1 + 72);
    v37 = v3;
    v14 = v3;
    [v8 submitFakeScoresWithScores:v9 bundleID:v11 screenChallenges:v12 eligibleChallenges:v13 completionHandler:v35];

    v15 = v36;
  }

  else
  {
    v16 = [*(a1 + 56) clientProxy];
    v17 = [v16 notifyAboutScoreSubmissions];

    if (v17)
    {
      v39 = v4;
      v18 = [NSArray arrayWithObjects:&v39 count:1];
      v38 = *(a1 + 40);
      v19 = [NSArray arrayWithObjects:&v38 count:1];
      [GKScoreSubmissionBulletin presentForScores:v18 leaderboards:v19];
    }

    v20 = [v4 serverRepresentation];
    v14 = [v20 mutableCopy];

    v21 = [v4 leaderboardIdentifier];
    [v14 setObject:v21 forKeyedSubscript:@"leaderboard-id"];

    v22 = [*(a1 + 48) playerID];
    [v14 setObject:v22 forKeyedSubscript:@"player-id"];

    v23 = *(a1 + 64);
    if (v23)
    {
      [v14 setObject:v23 forKeyedSubscript:@"challenges"];
    }

    v24 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v25 = [*(a1 + 56) clientProxy];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000BEBDC;
    v29[3] = &unk_100364BF0;
    v26 = v4;
    v27 = *(a1 + 56);
    v28 = *(a1 + 64);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    v33 = *(a1 + 72);
    v34 = v3;
    v15 = v3;
    [v24 issueRequest:v14 bagKey:@"gk-submit-instance-score" clientProxy:v25 handler:v29];
  }
}

uint64_t sub_1000BEB94(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000BEBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = [GKInstanceScoreNetworkRequest alloc];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) clientProxy];
    v8 = [v7 bundleIdentifier];
    v9 = [(GKInstanceScoreNetworkRequest *)v5 initWithInstanceScore:v6 bundleID:v8 challenges:*(a1 + 48)];

    v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v11 = [*(a1 + 40) clientProxy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BED4C;
    v12[3] = &unk_100361198;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    [v10 writeToNetwork:v9 clientProxy:v11 handler:v12];
  }

  else
  {
    v4 = *(*(a1 + 64) + 16);

    v4();
  }
}

uint64_t sub_1000BED4C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000BED94(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028C1E0(v2, v5);
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) error];
  (*(v6 + 16))(v6, v7);
}

void sub_1000BF1A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BF2A0;
  block[3] = &unk_100361538;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_1000BF2B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    if (v5)
    {
      v9 = [v5 objectForKeyedSubscript:@"status"];
      v10 = [v9 longValue];

      if (!v10)
      {
        v12 = objc_alloc_init(GKLeaderboardSummaryInternal);
        v18 = [v5 objectForKeyedSubscript:@"start-date"];
        [v12 setStartDate:{objc_msgSend(v18, "longValue")}];

        v19 = [v5 objectForKeyedSubscript:@"duration"];
        [v12 setDuration:{objc_msgSend(v19, "longValue")}];

        v20 = [v5 objectForKeyedSubscript:@"next-start-date"];
        [v12 setNextStartDate:{objc_msgSend(v20, "longValue")}];

        v21 = [v5 objectForKeyedSubscript:@"score-value"];
        [v12 setScoreValue:{objc_msgSend(v21, "longValue")}];

        v22 = [v5 objectForKeyedSubscript:@"rank"];
        [v12 setRank:{objc_msgSend(v22, "longValue")}];

        v23 = [v5 objectForKeyedSubscript:@"total-entries"];
        [v12 setTotalEntries:{objc_msgSend(v23, "longValue")}];

        v24 = [v5 objectForKeyedSubscript:@"friend-rank"];
        [v12 setFriendRank:{objc_msgSend(v24, "longValue")}];

        v25 = [v5 objectForKeyedSubscript:@"total-friend-entries"];
        [v12 setTotalFriendEntries:{objc_msgSend(v25, "longValue")}];

        v26 = [v5 objectForKeyedSubscript:@"context"];
        [v12 setContext:{objc_msgSend(v26, "longValue")}];

        v27 = [v5 objectForKeyedSubscript:@"leaderboard-id"];
        [v12 setLeaderboardID:v27];

        v28 = [v5 objectForKeyedSubscript:@"base-leaderboard-id"];
        [v12 setBaseLeaderboardID:v28];

        v29 = [v5 objectForKeyedSubscript:@"group-id"];
        [v12 setGroupID:v29];

        v30 = [v5 objectForKeyedSubscript:@"title"];
        [v12 setTitle:v30];

        v31 = [v5 objectForKeyedSubscript:@"type"];
        [v12 setType:v31];

        v32 = [v5 objectForKeyedSubscript:@"formatted-score-value"];
        [v12 setFormattedScoreValue:v32];

        v11 = 0;
        goto LABEL_7;
      }
    }

    v8 = [NSError userErrorForCode:3 underlyingError:0];
  }

  v11 = v8;
  v12 = 0;
LABEL_7:
  v13 = [*(a1 + 32) clientProxy];
  v14 = [v13 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BF6B4;
  block[3] = &unk_100361538;
  v15 = *(a1 + 40);
  v35 = v11;
  v36 = v15;
  v34 = v12;
  v16 = v11;
  v17 = v12;
  dispatch_async(v14, block);
}

void sub_1000BF7C0(uint64_t a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BF874;
  v7[3] = &unk_100365030;
  v8 = *(a1 + 40);
  v5 = a2;
  v6 = [a3 _gkFilterWithBlock:v7];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

id sub_1000BF874(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (((*(a1 + 32) & 1) != 0 || ([v3 lastReportedDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5)) && ((*(a1 + 33) & 1) != 0 || !objc_msgSend(v4, "isHidden") || objc_msgSend(v4, "isCompleted")))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000BFA1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKGameServicePrivate serviceFromService:*(a1 + 32)];
  v5 = [*(a1 + 40) bundleIdentifier];
  v17 = v5;
  v6 = [NSArray arrayWithObjects:&v17 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BFB80;
  v10[3] = &unk_100365198;
  v16 = *(a1 + 72);
  v11 = *(a1 + 48);
  v12 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v15 = *(a1 + 64);
  v13 = v7;
  v14 = v8;
  v9 = v3;
  [v4 getGameMetadataForBundleIDs:v6 handler:v10];
}

void sub_1000BFB80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000BFDC4;
  v22[3] = &unk_1003650D0;
  v25 = *(a1 + 72);
  v23 = *(a1 + 32);
  v7 = v6;
  v24 = v7;
  v8 = objc_retainBlock(v22);
  if (*(a1 + 64))
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = *(a1 + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C0010;
    v20[3] = &unk_100365148;
    v21 = v9;
    v11 = v9;
    [v10 enumerateKeysAndObjectsUsingBlock:v20];
    v12 = +[GKContactsIntegrationController sharedController];
    v13 = [*(a1 + 48) clientProxy];
    v14 = [v13 replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000C0194;
    v15[3] = &unk_100365170;
    v18 = *(a1 + 56);
    v19 = v8;
    v16 = *(a1 + 40);
    v17 = v5;
    [v12 populateContactInfoForProfiles:v11 replyOnQueue:v14 withCompletionHandler:v15];
  }
}

id sub_1000BFDC4(uint64_t a1, uint64_t a2)
{
  v3 = [GKGameStatServicePrivate filterUnreportedAndHiddenAchievements:a2 includeUnreported:*(a1 + 48) includeHidden:*(a1 + 49)];
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000BFE9C;
  v9[3] = &unk_1003650A8;
  v5 = v3;
  v10 = v5;
  v11 = *(a1 + 40);
  [v4 enumerateObjectsUsingBlock:v9];
  v6 = v11;
  v7 = v5;

  return v5;
}

void sub_1000BFE9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 playerID];
  v5 = [v4 length];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 playerID];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000BFF98;
    v9[3] = &unk_100365080;
    v10 = *(a1 + 40);
    v11 = v3;
    [v8 enumerateObjectsUsingBlock:v9];
  }
}

void sub_1000BFF98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGameHint:v3];
  v5 = [*(a1 + 40) minimalInternal];
  [v4 setPlayer:v5];
}

void sub_1000C0010(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C009C;
  v4[3] = &unk_100365120;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1000C009C(uint64_t a1, void *a2)
{
  v3 = [a2 friendsWhoHaveThis];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C013C;
  v4[3] = &unk_1003650F8;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void sub_1000C013C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 friendPlayer];
  [v2 addObject:v3];
}

void sub_1000C0194(void *a1)
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028C268();
  }

  v4 = a1[6];
  v5 = (*(a1[7] + 16))();
  (*(v4 + 16))(v4, v5, a1[5]);
}

void sub_1000C0484(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C0584;
  v15[3] = &unk_1003651E8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 112);
  v17 = v3;
  v18 = v12;
  v16 = v11;
  v14 = *(a1 + 96);
  v13 = v3;
  [v4 getEntriesForLeaderboard:v5 gameDescriptor:v6 localPlayer:v7 playerScope:v8 timeScope:v9 range:v14 players:v10 handler:v15];
}

void sub_1000C0584(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = *(a1 + 32);
  v11 = a2;
  [v10 setError:a5];
  [*(a1 + 32) setResult:v11];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"entries"];
  v12 = [NSNumber numberWithInteger:a4];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:@"totalPlayerCount"];

  if (!a5 && (*(a1 + 48) & 1) != 0)
  {
    v13 = [v9 _gkValuesForKeyPath:@"player"];
    v14 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000C06DC;
    v16[3] = &unk_100362920;
    v17 = v13;
    v15 = v13;
    [v14 performOnManagedObjectContext:v16];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000C06DC(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = +[GKContactsIntegrationController sharedController];
  [v6 populateContactInfoForProfiles:*(a1 + 32) withContext:v5];

  v7[2]();
}

void sub_1000C0770(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entries"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"totalPlayerCount"];
  v5 = [v4 integerValue];
  v6 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v7, v3, v5, v6);
}

NSSecureCoding *__cdecl sub_1000C096C(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 objectForKeyedSubscript:@"results"];
  if ([v2 count])
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v2;
    obj = v2;
    v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:{@"category-name", v20}];
          if ([v9 length])
          {
            v26 = @"leaderboardID";
            v27 = v9;
            v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
            v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

            v12 = [v8 objectForKeyedSubscript:@"group-category-name"];
            [v11 setObject:v12 forKeyedSubscript:@"groupID"];

            v13 = [v8 objectForKeyedSubscript:@"type"];
            [v11 setObject:v13 forKeyedSubscript:@"type"];

            v14 = [v8 objectForKeyedSubscript:@"rank"];
            [v11 setObject:v14 forKeyedSubscript:@"rank"];

            v15 = [v8 objectForKeyedSubscript:@"leaderboard-size"];
            [v11 setObject:v15 forKeyedSubscript:@"maxRank"];

            v16 = [v8 objectForKeyedSubscript:@"friend-rank"];
            [v11 setObject:v16 forKeyedSubscript:@"friendRank"];

            v17 = [v8 objectForKeyedSubscript:@"num-friends-ranked"];
            [v11 setObject:v17 forKeyedSubscript:@"maxFriendRank"];

            v18 = [v8 objectForKeyedSubscript:@"friends-with-score"];
            if ([v18 count])
            {
              [v11 setObject:v18 forKeyedSubscript:@"friendPlayerIDs"];
            }

            [v3 addObject:v11];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v5);
    }

    v2 = v20;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

void sub_1000C0E94(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = [a2 lastObject];
    v6 = [v5 defaultLeaderboardIdentifier];
    v7 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000C10E4;
    v16[3] = &unk_100365258;
    v17 = v6;
    v8 = v6;
    v9 = [v7 _gkMapWithBlock:v16];
    v18[0] = @"game";
    v10 = [*(a1 + 40) dictionaryForRequest];
    v18[1] = @"scores";
    v19[0] = v10;
    v19[1] = v9;
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

    v12 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v13 = [*(a1 + 48) clientProxy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C11E8;
    v14[3] = &unk_1003615D8;
    v15 = *(a1 + 56);
    [v12 issueRequest:v11 bagKey:@"gk-get-hypothetical-score-rank" clientProxy:v13 handler:v14];
  }
}

id sub_1000C10E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 leaderboardIdentifier];
  if (!v4)
  {
    v4 = *(a1 + 32);
  }

  v9[0] = @"score-value";
  v5 = [v3 value];

  v6 = [NSNumber numberWithLongLong:v5];
  v9[1] = @"category";
  v10[0] = v6;
  v10[1] = v4;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

void sub_1000C11E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"results"];
  (*(*(a1 + 32) + 16))();
}

void sub_1000C1378(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v5 updateWithGameDescriptor:v6];
}

void sub_1000C15DC(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!v7 || v8)
  {
    if (!v8)
    {
      v9 = [NSError userErrorForCode:3 underlyingError:0];
    }

    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Error getting games friends played from server plist: %@, error: %@", buf, 0x16u);
    }

    v22 = *(a1 + 48);
    if (v22)
    {
      (*(v22 + 16))(v22, 0, v9);
    }
  }

  else
  {
    v10 = [NSDate dateWithTimeIntervalSinceNow:a4];
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Games friends played data new expiration date is: %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3227, "[GKGameStatServicePrivate loadGamesFriendsPlayed:matchingBundleIDs:handler:]_block_invoke"];
    v15 = [v13 transactionGroupBypassingMultiUserWithName:v14];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000C18A4;
    v23[3] = &unk_100365338;
    v16 = v7;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v10;
    v28 = *(a1 + 48);
    v19 = v10;
    [v15 performOnManagedObjectContext:v23];

    v9 = 0;
  }
}

void sub_1000C18A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v47 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [(GKCacheObject *)GKPlayerProfileCacheObject fetchRequestForContext:v5];
  v8 = [NSPredicate predicateWithFormat:@"friendBiDirectional == %@", &off_100382418];
  [v7 setPredicate:v8];

  v46 = v7;
  v9 = [v5 executeFetchRequest:v7 error:0];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v60;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        v15 = [v14 playerID];
        [v6 setObject:v14 forKeyedSubscript:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v11);
  }

  v16 = [*(a1 + 32) objectForKeyedSubscript:@"results"];
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
    *buf = 138412546;
    v65 = v20;
    v66 = 2112;
    v67 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Number of cached friends: %@, games and players: %@", buf, 0x16u);
  }

  v44 = [v16 _gkMapWithBlock:&stru_1003652E8];
  v22 = [*(a1 + 40) ensureGameObjectsForDescriptors:? moc:?];
  v43 = +[FriendsPlayedGameList _gkFetchRequest];
  v40 = [v5 executeFetchRequest:? error:?];
  v23 = [FriendsPlayedGameList alloc];
  v24 = +[FriendsPlayedGameList entity];
  v25 = [(FriendsPlayedGameList *)v23 initWithEntity:v24 insertIntoManagedObjectContext:v5];

  v26 = objc_alloc_init(NSMutableSet);
  v27 = +[NSMutableArray array];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000C1E44;
  v52[3] = &unk_100365310;
  v41 = v22;
  v53 = v41;
  v28 = v5;
  v54 = v28;
  v42 = v6;
  v55 = v42;
  v56 = *(a1 + 48);
  v29 = v27;
  v57 = v29;
  v30 = v26;
  v58 = v30;
  v45 = v16;
  [v16 enumerateObjectsUsingBlock:v52];
  [(FriendsPlayedGameList *)v25 setEntries:v30];
  [(FriendsPlayedGameList *)v25 setExpirationDate:*(a1 + 56)];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = v40;
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [v28 deleteObject:*(*(&v48 + 1) + 8 * j)];
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v33);
  }

  v36 = [*(a1 + 40) clientProxy];
  v37 = [*(a1 + 40) currentLocalPlayer];
  v38 = [(GKService *)GKFriendServicePrivate serviceWithTransport:0 forClient:v36 localPlayer:v37];

  [v38 notifyWidgetFriendListUpdated];
  v39 = *(a1 + 64);
  if (v39)
  {
    (*(v39 + 16))(v39, v29, 0);
  }

  v47[2](v47);
}

void sub_1000C1E44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v41 = [v6 internalRepresentation];
  v7 = [FriendPlayedGameEntry alloc];
  v8 = +[FriendPlayedGameEntry entity];
  v9 = [(FriendPlayedGameEntry *)v7 initWithEntity:v8 insertIntoManagedObjectContext:*(a1 + 40)];

  v35 = v9;
  v37 = v6;
  [(FriendPlayedGameEntry *)v9 setGame:v6];
  v40 = objc_alloc_init(NSMutableSet);
  v36 = v5;
  v10 = [v5 objectForKeyedSubscript:@"friends"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    v38 = *v43;
    v39 = v10;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"player-id"];
        if (v16)
        {
          v17 = [*(a1 + 48) objectForKeyedSubscript:v16];

          if (v17)
          {
            v18 = [v15 objectForKeyedSubscript:@"played-at"];
            if (v18)
            {
              if (!os_log_GKGeneral)
              {
                v19 = GKOSLoggers();
              }

              v20 = os_log_GKDaemon;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v47 = v15;
                _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Using friendInfo: %@", buf, 0xCu);
              }

              v21 = [FriendPlayedEntry alloc];
              v22 = +[FriendPlayedEntry entity];
              v23 = [(FriendPlayedEntry *)v21 initWithEntity:v22 insertIntoManagedObjectContext:*(a1 + 40)];

              [v18 doubleValue];
              v25 = [NSDate dateWithTimeIntervalSince1970:v24 / 1000.0];
              [(FriendPlayedEntry *)v23 setPlayedAt:v25];
              v26 = [*(a1 + 48) objectForKeyedSubscript:v16];
              [(FriendPlayedEntry *)v23 setFriend:v26];

              [v40 addObject:v23];
              v27 = [GKFriendPlayerInternal alloc];
              v28 = [(FriendPlayedEntry *)v23 friend];
              v29 = [v27 initWithCacheObject:v28];

              [v29 setLastPlayedGame:v41];
              [v29 setLastPlayedDate:v25];
              v30 = *(a1 + 56);
              if (!v30 || ([v37 bundleID], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "containsObject:", v31), v31, v32))
              {
                [*(a1 + 64) addObject:v29];
              }

              v13 = v38;
              v10 = v39;
            }

            else
            {
              if (!os_log_GKGeneral)
              {
                v33 = GKOSLoggers();
              }

              v34 = os_log_GKDaemon;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v47 = v15;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Missing required field, skipping friendInfo: %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v12);
  }

  [(FriendPlayedGameEntry *)v35 setFriendsPlayed:v40];
  [*(a1 + 72) addObject:v35];
}

void sub_1000C26A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = [GKGameStatServicePrivate currentFriendsPlayedList:a2];
  if (v9)
  {
    [v9 setExpirationDate:0];
  }

  v6 = [*(a1 + 32) clientProxy];
  v7 = [*(a1 + 32) currentLocalPlayer];
  v8 = [(GKService *)GKFriendServicePrivate serviceWithTransport:0 forClient:v6 localPlayer:v7];

  [v8 expireFriendList];
  [v8 notifyWidgetFriendListUpdated];
  v5[2](v5);
}

void sub_1000C291C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_1000AC1C8;
  v27[4] = sub_1000AC1D8;
  v28 = 0;
  if (v6)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    if (*(a1 + 72))
    {
      v8 = [NSNumber numberWithInteger:?];
      [v7 setObject:v8 forKeyedSubscript:@"limit"];
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:@"type"];
    }

    if (*(a1 + 80))
    {
      v10 = [NSNumber numberWithInteger:?];
      [v7 setObject:v10 forKeyedSubscript:@"within-secs"];
    }

    v11 = *(a1 + 40);
    v12 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3389, "[GKGameStatServicePrivate getGamesFriendsPlayed:type:fetchOptions:withinSecs:matchingBundleIDs:handler:]_block_invoke"];
    v13 = [*(a1 + 48) playerID];
    v14 = [v11 transactionGroupWithName:v12 forPlayerID:v13];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C2BA8;
    v20[3] = &unk_100365388;
    v25 = v27;
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v21 = v15;
    v22 = v16;
    v17 = v7;
    v23 = v17;
    v18 = *(a1 + 64);
    v19 = *(a1 + 88);
    v24 = v18;
    v26 = v19;
    [v14 performOnManagedObjectContext:v20];
  }

  _Block_object_dispose(v27, 8);
}

void sub_1000C2B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C2BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [GKGameStatServicePrivate currentFriendsPlayedList:v5];
  v51 = a1;
  if (v7)
  {
    v45 = v6;
    v46 = v5;
    v8 = objc_alloc_init(NSMutableArray);
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v44 = v7;
    obj = [v7 entries];
    v11 = a1;
    v49 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v49)
    {
      v48 = *v57;
      do
      {
        v12 = 0;
        do
        {
          if (*v57 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = v12;
          v13 = *(*(&v56 + 1) + 8 * v12);
          v14 = [v13 game];
          v15 = [v14 internalRepresentation];

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v16 = [v13 friendsPlayed];
          v17 = [v16 countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v53;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v53 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v52 + 1) + 8 * i);
                v22 = *(v11 + 32);
                if (v22)
                {
                  v23 = [v13 game];
                  v24 = [v23 bundleID];
                  v25 = [v22 containsObject:v24];

                  v11 = v51;
                  if (!v25)
                  {
                    continue;
                  }
                }

                v26 = [GKFriendPlayerInternal alloc];
                v27 = [v21 friend];
                v28 = [v26 initWithCacheObject:v27];

                [v28 setLastPlayedGame:v15];
                v29 = [v21 playedAt];
                [v28 setLastPlayedDate:v29];

                [*(*(*(v11 + 64) + 8) + 40) addObject:v28];
              }

              v18 = [v16 countByEnumeratingWithState:&v52 objects:v62 count:16];
            }

            while (v18);
          }

          v12 = v50 + 1;
        }

        while ((v50 + 1) != v49);
        v49 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v49);
    }

    a1 = v11;
    v6 = v45;
    v5 = v46;
    v7 = v44;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v30 = [v7 expirationDate];
    v31 = [v7 _gkIsExpired:v30];

    if (v31)
    {
      if (!os_log_GKGeneral)
      {
        v32 = GKOSLoggers();
      }

      v33 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v34 = v33;
        v35 = [v7 expirationDate];
        *buf = 138412290;
        v61 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Games friends played cache data is expired, refreshing from server: %@", buf, 0xCu);
      }

      [*(v51 + 40) loadGamesFriendsPlayed:*(v51 + 48) matchingBundleIDs:*(v51 + 32) handler:0];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v40 = GKOSLoggers();
      }

      v41 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Using games friends played cache data as it is still valid", buf, 2u);
      }
    }

    if (*(v51 + 72))
    {
      v42 = +[GKContactsIntegrationController sharedController];
      [v42 populateContactInfoForProfiles:*(*(*(v51 + 64) + 8) + 40) withContext:v5];
    }

    v43 = *(v51 + 56);
    if (v43)
    {
      (*(v43 + 16))(v43, *(*(*(v51 + 64) + 8) + 40), 0);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v36 = GKOSLoggers();
    }

    v37 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v38 = v37;
      v39 = [v7 expirationDate];
      *buf = 138412290;
      v61 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "No games friends played cache data, refreshing from server: %@", buf, 0xCu);
    }

    [*(v51 + 40) loadGamesFriendsPlayed:*(v51 + 48) matchingBundleIDs:*(v51 + 32) handler:*(v51 + 56)];
  }

  v6[2](v6);
}

void sub_1000C3E18(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 3571, "[GKGameStatServicePrivate loadReengagementAchievements:handler:]_block_invoke"];
  v11 = [v9 transactionGroupBypassingMultiUserWithName:v10];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C3F84;
  v18[3] = &unk_100365428;
  v25 = a4;
  v19 = v7;
  v20 = v8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v24 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v11;
  v15 = v11;
  v16 = v8;
  v17 = v7;
  [v15 performOnManagedObjectContext:v18];
}

void sub_1000C3F84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_1000AC1C8;
  v58[4] = sub_1000AC1D8;
  v59 = 0;
  v7 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 80)];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1000AC1C8;
  v56 = sub_1000AC1D8;
  v57 = 0;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v62 = v10;
    v63 = 2112;
    v64 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "THE reengagement server response is: %@ with expiration of: %@", buf, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = v53;
    v13 = v11;
    v14 = v12[5];
    v12[5] = v13;
LABEL_7:

    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138412546;
      v62 = v17;
      v63 = 2112;
      v64 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "error getting reengagement from server plist %@ error: %@", buf, 0x16u);
    }

    v19 = *(a1 + 72);
    if (v19)
    {
      (*(v19 + 16))(v19, 0, 0, v53[5]);
    }

    v6[2](v6);
    goto LABEL_26;
  }

  v20 = *(a1 + 32);
  if (!v20)
  {
    v32 = [NSError userErrorForCode:3 underlyingError:0];
    v14 = v53[5];
    v53[5] = v32;
    goto LABEL_7;
  }

  v21 = [v20 objectForKeyedSubscript:@"results"];
  if ([v21 count])
  {
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = *(a1 + 48);
    v24 = [v22 objectForKeyedSubscript:@"game"];
    v25 = [v23 ensureGameObject:v5 gameDescriptor:v24];

    v26 = *(a1 + 48);
    v27 = [v22 objectForKeyedSubscript:@"game"];
    v60 = *(a1 + 56);
    v28 = [NSArray arrayWithObjects:&v60 count:1];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000C4508;
    v40[3] = &unk_100365400;
    v41 = *(a1 + 40);
    v48 = *(a1 + 72);
    v49 = v6;
    v29 = *(a1 + 64);
    v50 = v58;
    v30 = *(a1 + 48);
    v42 = v29;
    v43 = v30;
    v44 = v21;
    v45 = *(a1 + 56);
    v46 = v7;
    v31 = v25;
    v47 = v31;
    v51 = &v52;
    [v26 fetchAchievementsForGameDescriptor:v27 players:v28 context:v5 handler:v40];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v33 = GKOSLoggers();
    }

    v34 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      *buf = 138412546;
      v62 = v35;
      v63 = 2112;
      v64 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "No reengagement results from server plist %@ error: %@", buf, 0x16u);
    }

    v37 = [NSError userErrorForCode:3 underlyingError:0];
    v38 = v53[5];
    v53[5] = v37;

    v39 = *(a1 + 72);
    if (v39)
    {
      (*(v39 + 16))(v39, 0, 0, v53[5]);
    }

    v6[2](v6);
  }

LABEL_26:
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(v58, 8);
}

void sub_1000C44C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_1000C4508(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (*(a1 + 32))
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, 0);
    }

    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C469C;
    v20[3] = &unk_1003653D8;
    v19 = *(a1 + 48);
    v10 = *(a1 + 104);
    v11 = *(&v19 + 1);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v21 = v19;
    v22 = v14;
    v15 = *(a1 + 88);
    v16 = *(a1 + 80);
    v25 = *(a1 + 112);
    *&v17 = *(a1 + 96);
    *(&v17 + 1) = v10;
    *&v18 = v16;
    *(&v18 + 1) = v15;
    v23 = v18;
    v24 = v17;
    [v9 performOnManagedObjectContext:v20];
  }
}

void sub_1000C469C(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [*(a1 + 32) processReengagementResults:*(a1 + 40) localPlayer:*(a1 + 48) expirationDate:*(a1 + 56) context:a2];
  v6 = *(*(a1 + 88) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(a1 + 72))
  {
    v8 = [*(a1 + 64) internalRepresentation];
    if (!v8 || !*(*(*(a1 + 88) + 8) + 40))
    {
      v9 = [NSError userErrorForCode:3 underlyingError:0];
      v10 = *(*(a1 + 96) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    (*(*(a1 + 72) + 16))();
  }

  v12[2]();
  (*(*(a1 + 80) + 16))();
}

void sub_1000C49D4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = [a1[5] playerID];
  v9 = [v7 existingReengagementAchievement:v8 context:v5];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v9 expirationDate];
    *buf = 138412546;
    v40 = v9;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "achievementEntry = %@ and expiry : %@", buf, 0x16u);
  }

  if (v9 && ([v9 expirationDate], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v9, "_gkIsExpired:", v14), v14, (v15 & 1) == 0))
  {
    v16 = [v9 bundleID];
    v17 = [GKGameCacheObject gameForBundleID:v16 context:v5];

    v18 = [[GKGameDescriptor alloc] initWithCacheObject:v17];
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [v9 expirationDate];
      v23 = [v9 bundleID];
      *buf = 138412546;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Using reengagement cache as it is still valid: %@ game: %@", buf, 0x16u);
    }

    v24 = a1[4];
    v25 = [a1[5] playerID];
    v38 = v25;
    v26 = [NSArray arrayWithObjects:&v38 count:1];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000C4D70;
    v30[3] = &unk_1003654A0;
    v27 = a1[6];
    v28 = a1[4];
    v31 = v27;
    v32 = v28;
    v33 = v9;
    v36 = a1[7];
    v34 = v17;
    v35 = a1[5];
    v37 = v6;
    v29 = v17;
    [v24 achievementsForPlayersAndGameDescriptor:v18 players:v26 context:v5 handler:v30];
  }

  else
  {
    [a1[4] loadReengagementAchievements:a1[5] handler:a1[7]];
    v6[2](v6);
  }
}

void sub_1000C4D70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4E68;
  v8[3] = &unk_100365478;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v11 = *(a1 + 72);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 80);
  [v2 performOnManagedObjectContext:v8];
}

void sub_1000C4E68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v6 bundleID];
  v10 = [*(a1 + 40) identifier];
  v11 = [*(a1 + 40) percentComplete];
  [v11 doubleValue];
  v13 = v12;
  v14 = [*(a1 + 40) lastReportedDate];
  v17 = [v5 findAchievementInternal:v9 identifier:v10 context:v8 existingPercent:v14 existingDate:v13];

  if (v17)
  {
    v15 = *(a1 + 64);
    v16 = [*(a1 + 48) internalRepresentation];
    (*(v15 + 16))(v15, v17, v16, 0);
  }

  else
  {
    [*(a1 + 32) loadReengagementAchievements:*(a1 + 56) handler:*(a1 + 64)];
  }

  v7[2](v7);

  (*(*(a1 + 72) + 16))();
}

void sub_1000C51B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKAchievementListCacheObject _gkFetchRequest];
  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v7];
  v11 = 0;
  v9 = [v5 executeRequest:v8 error:&v11];
  v10 = v11;
  [*(a1 + 32) setError:v10];
  v6[2](v6);
}

void sub_1000C5284(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKAchievementDescriptionListCacheObject _gkFetchRequest];
  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v7];
  v11 = 0;
  v9 = [v5 executeRequest:v8 error:&v11];
  v10 = v11;
  [*(a1 + 32) setError:v10];
  v6[2](v6);
}

void sub_1000C5358(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1000C5558(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKLeaderboardListCacheObject _gkFetchRequest];
  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v7];
  v11 = 0;
  v9 = [v5 executeRequest:v8 error:&v11];
  v10 = v11;
  [*(a1 + 32) setError:v10];
  v6[2](v6);
}

void sub_1000C562C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

id sub_1000C56A0(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1000C5818(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 issuingPlayer];
  v4 = [v3 playerID];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  v5 = [v7 receivingPlayer];
  v6 = [v5 playerID];

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_1000C58C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKProfileService serviceFromService:*(a1 + 32)];
  v5 = [*(a1 + 40) allObjects];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C59AC;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getProfilesForPlayerIDs:v5 handler:v7];
}

void sub_1000C59AC(uint64_t a1, void *a2)
{
  v3 = [a2 _gkMapDictionaryWithKeyPath:@"playerID"];
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C5A6C;
  v6[3] = &unk_1003654C8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_1000C5A6C(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 receivingPlayer];
  v4 = [v3 playerID];

  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    [v9 setReceivingPlayer:v5];
  }

  v6 = [v9 issuingPlayer];
  v7 = [v6 playerID];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v9 setIssuingPlayer:v8];
  }
}

id sub_1000C5C38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 compatibleBundleIDs];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    [v3 setBundleID:*(a1 + 32)];
  }

  return v5;
}

void sub_1000C60BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKGameServicePrivate serviceFromService:*(a1 + 32)];
  v5 = [*(a1 + 40) allObjects];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C61A0;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 getGameMetadataForBundleIDs:v5 handler:v7];
}

void sub_1000C61A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 _gkMapDictionaryWithKeyPath:@"bundleIdentifier"];
  v9 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C6294;
  v11[3] = &unk_1003654C8;
  v12 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v11];

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

void sub_1000C6294(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 bundleID];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v3 setGame:v4];
}

void sub_1000C63B8(uint64_t a1)
{
  v15 = +[GKPlayerProfileCacheObject selfPlayerID];
  v2 = +[NSDate date];
  v3 = [(GKCacheObject *)GKChallengeListCacheObject fetchRequestForContext:*(a1 + 32)];
  [v3 setResultType:1];
  [v3 setFetchLimit:1];
  [v3 setReturnsDistinctResults:1];
  v4 = [NSPredicate predicateWithFormat:@"expirationDate > %@ && player.playerID = %@", v2, v15];
  [v3 setPredicate:v4];

  v5 = [*(a1 + 32) executeFetchRequest:v3 error:0];
  v6 = [v5 firstObject];

  if (!v6)
  {
    v8 = [NSPredicate predicateWithFormat:@"expirationDate != nil && player.playerID = %@", v15];
    [v3 setPredicate:v8];

    v9 = [*(a1 + 32) executeFetchRequest:v3 error:0];
    v7 = [v9 firstObject];

    v10 = *(a1 + 40);
    if (!v10)
    {
      goto LABEL_8;
    }

    if (!v7)
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v11 = [*(a1 + 32) objectWithID:v7];
    v12 = [v11 entries];
    v13 = [v12 _gkValuesForKeyPath:@"challengeID"];

    v10 = *(a1 + 40);
    v14 = 1;
LABEL_7:
    (*(v10 + 16))(v10, v13, v6 != 0, v14);

    goto LABEL_8;
  }

  v7 = v6;
  if (*(a1 + 40))
  {
    goto LABEL_6;
  }

LABEL_8:
}

void sub_1000C67CC(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [a1[4] clientProxy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C68E0;
  v7[3] = &unk_1003635D8;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = v3;
  v6 = v3;
  [v4 issueRequest:0 bagKey:@"gk-get-challenge-ids" clientProxy:v5 handler:v7];
}

void sub_1000C68E0(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [NSNumber numberWithDouble:a4];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"ttl"];

  [*(a1 + 32) setError:v8];
  if (v7 && !v8)
  {
    v13 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C6A20;
    v14[3] = &unk_100364518;
    v18 = a4;
    v15 = v13;
    v16 = v7;
    v17 = *(a1 + 48);
    [v15 performBlockAndWait:v14];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v10, v11, v12);
}

void sub_1000C6A20(uint64_t a1)
{
  v10 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 56)];
  v2 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:*(a1 + 32)];
  v3 = [v2 challengeList];
  if (!v3)
  {
    v3 = [(GKCacheObject *)[GKChallengeListCacheObject alloc] initWithManagedObjectContext:*(a1 + 32)];
    [(GKChallengeListCacheObject *)v3 setPlayer:v2];
  }

  [(GKChallengeListCacheObject *)v3 updateWithServerRepresentation:*(a1 + 40) expirationDate:v10];
  if ([*(a1 + 48) isGameCenter])
  {
    v4 = [NSFetchRequest alloc];
    v5 = +[GKChallengeCacheObject entityName];
    v6 = [v4 initWithEntityName:v5];

    v7 = [NSPredicate predicateWithFormat:@"wasViewed == NO"];
    [v6 setPredicate:v7];

    v8 = [*(a1 + 32) countForFetchRequest:v6 error:0];
    v9 = +[GKBadgeController sharedController];
    [v9 setBadgeCount:v8 forBundleID:GKGameCenterIdentifier badgeType:0];
  }
}

void sub_1000C6B9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ttl"];
  [v6 doubleValue];
  v4 = v3;
  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v4);
}

void sub_1000C6E90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C6F90;
  v12[3] = &unk_100361F90;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = a2;
  [v4 perform:v12];
  v10[2](v10);
}

void sub_1000C6F90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C70B0;
  v14[3] = &unk_100364C88;
  v7 = *(a1 + 48);
  v13 = *(a1 + 32);
  v8 = v13.i64[1];
  v9 = *(a1 + 56);
  v10.i64[0] = v7;
  v10.i64[1] = v9;
  v11 = vzip2q_s64(v13, v10);
  v10.i64[1] = v13.i64[0];
  v16 = v11;
  v15 = v10;
  v17 = v3;
  v12 = v3;
  [v4 fetchChallengesForGameDescriptor:v5 context:v6 handler:v14];
}

void sub_1000C70B0(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  if ((a3 & 1) == 0)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v8 = *(a1 + 32);
    v9 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 264, "[GKChallengeService getChallengesForGameDescriptor:handler:]_block_invoke_3"];
    v10 = [v8 transactionGroupWithName:v9];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000C7364;
    v25[3] = &unk_100363D58;
    v11 = *(a1 + 48);
    v25[4] = *(a1 + 40);
    v26 = v11;
    v27 = *(a1 + 32);
    v12 = v10;
    v28 = v12;
    v29 = v30;
    [v12 perform:v25];
    if (a4)
    {
      v13 = *(a1 + 56);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000C7700;
      v20[3] = &unk_1003624A8;
      v20[4] = *(a1 + 40);
      v20[5] = v30;
      [v12 notifyOnQueue:v13 block:v20];
    }

    else
    {
      v14 = *(a1 + 32);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000C74D0;
      v21[3] = &unk_100361BF8;
      v22 = v12;
      *&v15 = *(a1 + 56);
      *(&v15 + 1) = *(a1 + 40);
      v19 = v15;
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      *&v18 = v16;
      *(&v18 + 1) = v17;
      v23 = v19;
      v24 = v18;
      [v14 perform:v21];
    }

    _Block_object_dispose(v30, 8);
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"challengeIDs"];
  (*(*(a1 + 64) + 16))();
}

void sub_1000C7364(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C7444;
  v10[3] = &unk_100364B00;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v3;
  v13 = v8;
  v11 = v7;
  v9 = v3;
  [v4 loadChallengesForGameDescriptor:v5 context:v6 handler:v10];
}

void sub_1000C7444(void *a1, void *a2, double a3)
{
  v5 = a1[4];
  v8 = a2;
  [v5 setError:v8];
  v7 = a3 > 0.0 && v8 == 0;
  *(*(a1[6] + 8) + 24) = v7;
  (*(a1[5] + 16))();
}

void sub_1000C74D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C75B4;
  v8[3] = &unk_100360F28;
  v6 = *(a1 + 56);
  v8[4] = *(a1 + 48);
  v9 = v6;
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = v3;
  v7 = v3;
  [v4 notifyOnQueue:v5 block:v8];
}

void sub_1000C75B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C7690;
  v5[3] = &unk_100365518;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v2 fetchChallengesForGameDescriptor:v3 context:v4 handler:v5];
}

uint64_t sub_1000C7690(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"challengeIDs"];
  v3 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v3];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_1000C7700(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v1 = [*(a1 + 32) clientProxy];
    v4 = @"scroll";
    v2 = [NSNumber numberWithBool:0];
    v5 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v1 refreshContentsForDataType:1 userInfo:v3];
  }
}

void sub_1000C77E0(id *a1)
{
  v2 = [a1[4] error];

  if (!v2)
  {
    v3 = a1[4];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C7988;
    v20[3] = &unk_100360F00;
    v4 = v3;
    v5 = a1[5];
    v6 = a1[6];
    v21 = v4;
    v22 = v5;
    v23 = v6;
    [v4 perform:v20];
  }

  v7 = a1[4];
  v8 = [a1[5] clientProxy];
  v9 = [v8 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C7B04;
  v16[3] = &unk_100360F28;
  v10 = a1[4];
  v11 = a1[6];
  v15 = a1[5];
  v12 = a1[7];
  *&v13 = v15;
  *(&v13 + 1) = v12;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v17 = v14;
  v18 = v13;
  v19 = a1[8];
  [v7 notifyOnQueue:v9 block:v16];
}

void sub_1000C7988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"challengeIDs"];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) objectForKeyedSubscript:@"bundle-id"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C7A84;
  v8[3] = &unk_100362408;
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  [v5 getChallengeDetailsForChallengeIDs:v4 receiverID:0 clientBundleID:v6 handler:v8];
}

void sub_1000C7A84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"challenges"];
  if (v5)
  {
    [*(a1 + 32) setError:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000C7B04(uint64_t a1)
{
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"challenges"];
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"bundle-id"];
  if (+[NSBundle _gkBundleIdentifierIsAnyOverlayUI:](NSBundle, "_gkBundleIdentifierIsAnyOverlayUI:", v2) & 1) != 0 || ([v2 isEqual:GKDaemonIdentifier])
  {
    v3 = v8;
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = v2;
    if (!v2)
    {
      v7 = [*(a1 + 56) bundleIdentifier];
    }

    v3 = [v6 _filterChallenges:v8 compatibleWithBundleID:v7];
    if (!v2)
    {
    }
  }

  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) error];
  (*(v4 + 16))(v4, v3, v5);
}

void sub_1000C7E78(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C7FB0;
  v10[3] = &unk_100364998;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v13 = v14;
  v9 = *(a1 + 48);
  v7 = *(&v9 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v12 = v9;
  v11 = v8;
  [v4 performOnManagedObjectContext:v10];
  v3[2](v3);

  _Block_object_dispose(v14, 8);
}

void sub_1000C7FB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v45 = a3;
  v43 = [*(a1 + 32) count];
  v44 = v5;
  v6 = [GKChallengeCacheObject challengesWithChallengeIDs:*(a1 + 32) context:v5];
  v7 = [[NSMutableSet alloc] initWithArray:*(a1 + 32)];
  v8 = [v6 count];
  v9 = [*(a1 + 32) count];
  v61 = 0u;
  v62 = 0u;
  v10 = v8 == v9;
  v63 = 0u;
  v64 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v12)
  {
    v13 = *v62;
    v14 = INFINITY;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v61 + 1) + 8 * i);
        if ([v16 hasDetails])
        {
          v17 = [v16 detailsExpirationDate];
          [v17 timeIntervalSinceNow];
          v19 = v18 > 0.0;

          if (v19)
          {
            v20 = [v16 challengeID];
            [v7 removeObject:v20];
          }

          v21 = [v16 detailsExpirationDate];
          [v21 timeIntervalSinceNow];
          v23 = v22;

          v14 = fmin(v14, v23);
        }

        else
        {
          v10 = 0;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v12);
    v24 = v14 > 0.0;
  }

  else
  {
    v24 = 1;
  }

  if ([v7 count] != 0 && !v10 || (objc_msgSend(v11, "valueForKeyPath:", @"internalRepresentation"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "setObject:forKeyedSubscript:", v25, @"challenges"), v25, *(*(*(a1 + 64) + 8) + 24) = 1, !v24))
  {
    v26 = *(a1 + 40);
    v27 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 387, "[GKChallengeService getChallengeDetailsForChallengeIDs:receiverID:clientBundleID:handler:]_block_invoke_2"];
    v28 = [v26 transactionGroupWithName:v27];

    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x2020000000;
    v60 = 0;
    v29 = [v7 _gkMapWithBlock:&stru_100365538];
    v30 = [*(a1 + 48) clientProxy];
    v31 = [v30 replyQueue];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000C85E4;
    v50[3] = &unk_1003655D0;
    v32 = v29;
    v51 = v32;
    v52 = *(a1 + 56);
    v42 = *(a1 + 40);
    v33 = v42.i64[0];
    v53 = vextq_s8(v42, v42, 8uLL);
    v56 = v59;
    v34 = v28;
    v54 = v34;
    v58 = v43;
    v35 = *(a1 + 32);
    v36 = *(a1 + 64);
    v55 = v35;
    v57 = v36;
    [v34 performOnQueue:v31 block:v50];

    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v37 = [*(a1 + 48) clientProxy];
      v38 = [v37 replyQueue];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000C8E30;
      v46[3] = &unk_1003624A8;
      v46[4] = *(a1 + 48);
      v46[5] = v59;
      [v34 notifyOnQueue:v38 block:v46];
    }

    else
    {
      v39 = *(a1 + 40);
      v40 = [*(a1 + 48) clientProxy];
      v41 = [v40 replyQueue];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000C8DA0;
      v47[3] = &unk_1003610B8;
      v48 = *(a1 + 40);
      v49 = v34;
      [v39 join:v49 queue:v41 block:v47];
    }

    _Block_object_dispose(v59, 8);
  }

  v45[2]();
}

id sub_1000C8520(id a1, id a2)
{
  v6[0] = @"GKChallengeInternal";
  v6[1] = a2;
  v2 = a2;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [GKResourceIdentifier resourceIdentifierForKeys:v3];

  return v4;
}

void sub_1000C85E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _gkMapWithBlock:&stru_100365558];
  v24 = @"challenge-ids";
  v25 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  v7 = *(a1 + 40);
  if (v7)
  {
    [v6 setObject:v7 forKey:@"player-id"];
  }

  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v9 = [*(a1 + 48) clientProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C881C;
  v16[3] = &unk_1003655A8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v17 = v10;
  v21 = v11;
  v12 = *(a1 + 64);
  v13 = *(a1 + 96);
  v18 = v12;
  v23 = v13;
  v14 = *(a1 + 72);
  v22 = *(a1 + 88);
  v19 = v14;
  v20 = v3;
  v15 = v3;
  [v8 issueRequest:v6 bagKey:@"gk-get-challenges" clientProxy:v9 handler:v16];
}

id sub_1000C87C8(id a1, GKResourceIdentifier *a2, unint64_t a3)
{
  v3 = [(GKResourceIdentifier *)a2 keys];
  v4 = [v3 objectAtIndexedSubscript:1];

  return v4;
}

void sub_1000C881C(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  [*(a1 + 32) setError:v8];
  if (v7 && !v8)
  {
    *(*(*(a1 + 64) + 8) + 24) = a4 > 0.0;
    v9 = [*(a1 + 40) context];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C897C;
    v14[3] = &unk_100365580;
    v20 = a4;
    v10 = v7;
    v11 = *(a1 + 80);
    v15 = v10;
    v21 = v11;
    v16 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 72);
    v17 = v12;
    v19 = v13;
    v18 = *(a1 + 40);
    [v9 performBlockAndWait:v14];
  }

  [*(a1 + 40) setError:v8];
  (*(*(a1 + 56) + 16))();
}

void sub_1000C897C(uint64_t a1)
{
  v33 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 72)];
  v2 = [*(a1 + 32) objectForKey:@"results"];
  v3 = [[NSMutableDictionary alloc] initWithCapacity:*(a1 + 80)];
  v4 = *(a1 + 40);
  v32 = a1;
  v5 = [*(a1 + 48) context];
  v6 = [GKChallengeCacheObject challengesWithChallengeIDs:v4 context:v5];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 challengeID];
        [v3 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v31 = v7;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v2;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v36 + 1) + 8 * j);
        v20 = [v19 objectForKey:{@"status", v31}];
        v21 = [v20 integerValue];

        if (!v21)
        {
          v22 = [v19 objectForKey:@"challenge"];
          v23 = v22;
          if (v22)
          {
            v24 = [v22 objectForKey:@"challenge-id"];
            v25 = [v3 objectForKey:v24];
            if (v25)
            {
              v26 = v25;
              [v25 updateWithServerRepresentation:v23];
            }

            else
            {
              v27 = [*(v32 + 48) context];
              v26 = [GKChallengeCacheObject challengeWithServerRepresentation:v23 context:v27];
            }

            v28 = [v26 challengeID];
            [v3 setObject:v26 forKeyedSubscript:v28];

            [v26 setDetailsExpirationDate:v33];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v16);
  }

  if ((*(*(*(v32 + 64) + 8) + 24) & 1) == 0)
  {
    v29 = *(v32 + 40);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000C8D4C;
    v34[3] = &unk_100363430;
    v35 = v3;
    v30 = [v29 _gkFilterWithBlock:v34];
    [*(v32 + 56) setObject:v30 forKeyedSubscript:@"challenges"];
  }
}

id sub_1000C8D4C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = [v2 internalRepresentation];

  return v3;
}

void sub_1000C8DA0(uint64_t a1)
{
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"challenges"];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"challenges"];

  v3 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v3];
}

void sub_1000C8E30(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v1 = [*(a1 + 32) clientProxy];
    v4 = @"scroll";
    v2 = [NSNumber numberWithBool:0];
    v5 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v1 refreshContentsForDataType:1 userInfo:v3];
  }
}

void sub_1000C8F10(id *a1)
{
  v2 = [a1[4] objectForKeyedSubscript:@"challenges"];
  v3 = v2;
  if (v2)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C90CC;
    v18[3] = &unk_100360F00;
    v4 = a1[4];
    v18[4] = a1[5];
    v19 = v2;
    v20 = a1[4];
    [v4 perform:v18];
  }

  v5 = a1[4];
  v6 = [a1[5] clientProxy];
  v7 = [v6 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C9280;
  v14[3] = &unk_100362C68;
  v15 = v3;
  v13 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  *&v10 = a1[4];
  *(&v10 + 1) = v9;
  *&v11 = v13;
  *(&v11 + 1) = v8;
  v16 = v11;
  v17 = v10;
  v12 = v3;
  [v5 notifyOnQueue:v7 block:v14];
}

void sub_1000C90CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeService.m", 480, "[GKChallengeService getChallengeDetailsForChallengeIDs:receiverID:clientBundleID:handler:]_block_invoke_12"];
  v5 = [GKDispatchGroup dispatchGroupWithName:v4];

  [*(a1 + 32) _determineCompatibleGamesForChallenges:*(a1 + 40) dispatchGroup:v5];
  v6 = [*(a1 + 32) clientProxy];
  v7 = [v6 replyQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C922C;
  v10[3] = &unk_100360F78;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v3;
  v9 = v3;
  [v5 notifyOnQueue:v7 block:v10];
}

uint64_t sub_1000C922C(uint64_t a1)
{
  [*(a1 + 32) _updatePlayersForChallenges:*(a1 + 40) dispatchGroup:*(a1 + 48)];
  [*(a1 + 32) _updateGamesForChallenges:*(a1 + 40) dispatchGroup:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void sub_1000C9280(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clientProxy];
  v4 = [v3 isGameCenter];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [*(a1 + 40) clientProxy];
      v6 = [v7 bundleIdentifier];
    }

    v8 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C93F4;
    v14[3] = &unk_1003655F8;
    v9 = v6;
    v15 = v9;
    v10 = [v8 indexesOfObjectsPassingTest:v14];
    if ([v10 count])
    {
      v11 = [*(a1 + 32) objectsAtIndexes:v10];
    }

    else
    {
      v11 = 0;
    }

    v2 = v11;
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = [*(a1 + 56) error];
    (*(v12 + 16))(v12, v2, v13);
  }
}

id sub_1000C93F4(uint64_t a1, void *a2)
{
  v3 = [a2 compatibleBundleIDs];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void sub_1000C990C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableSet set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v29 + 1) + 8 * v9) challengeID];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v17 = +[GKBulletinController sharedController];
        [v17 clearChallengeBulletinsForChallengeID:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }

  v18 = *(a1 + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C9B90;
  v22[3] = &unk_100361348;
  v23 = v11;
  v21 = *(a1 + 40);
  v19 = v21.i64[0];
  v24 = vextq_s8(v21, v21, 8uLL);
  v20 = v11;
  [v18 performOnManagedObjectContext:v22];
  v3[2](v3);
}

void sub_1000C9B90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  v6 = [NSPredicate predicateWithFormat:@"challengeID in %@", *(a1 + 32)];
  v7 = [(GKCacheObject *)GKChallengeCacheObject objectsMatchingPredicate:v6 context:v5];
  v8 = +[GKBadgeController sharedController];
  v9 = GKGameCenterIdentifier;
  v28 = v8;
  v10 = [v8 badgeCountForBundleID:GKGameCenterIdentifier badgeType:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v10 -= [*(*(&v32 + 1) + 8 * v15) wasViewed] ^ 1;
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  v16 = +[GKBadgeController sharedController];
  [v16 setBadgeCount:v10 forBundleID:v9 badgeType:0];

  v17 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  v18 = [v17 challengeList];
  [v18 expire];

  [(GKCacheObject *)GKChallengeCacheObject deleteObjectsMatchingPredicate:v6 context:v5];
  [(GKExpiringCacheObject *)GKChallengeListCacheObject expireObjectsMatchingPredicate:0 context:v5];
  v19 = [GKAbortChallengeNetworkRequest alloc];
  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) clientProxy];
  v22 = [v21 bundleIdentifier];
  v23 = [(GKChallengeNetworkRequest *)v19 initWithChallenges:v20 bundleID:v22];

  v24 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v25 = [*(a1 + 40) clientProxy];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000C9EA4;
  v29[3] = &unk_100361198;
  v30 = *(a1 + 48);
  v31 = v27;
  v26 = v27;
  [v24 writeToNetwork:v23 clientProxy:v25 handler:v29];
}

uint64_t sub_1000C9EA4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000C9EEC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) clientProxy];
  [v2 refreshContentsForDataType:1 userInfo:&off_100383140];
}

void sub_1000CA1FC(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v5 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = [v5 challengeList];
  if ([v3 isValid])
  {
    v4 = [v3 entries];
    *(*(*(a1 + 40) + 8) + 24) = [v4 count];

    *(*(*(a1 + 48) + 8) + 24) = [v3 expired];
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"profile"];
}

void sub_1000CA2D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CA3AC;
  v9[3] = &unk_100364B00;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v3;
  v12 = v7;
  v10 = v6;
  v8 = v3;
  [v4 loadChallengesForGameDescriptor:0 context:v5 handler:v9];
}

void sub_1000CA3AC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = [*(a1 + 32) context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CA46C;
  v9[3] = &unk_100364898;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  [v3 performBlockAndWait:v9];

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v7, v8);
}

void sub_1000CA46C(uint64_t a1)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"profile"];
  v2 = [*(a1 + 32) context];
  [v2 refreshObject:v5 mergeChanges:1];

  v3 = [v5 challengeList];
  v4 = [v3 entries];
  *(*(*(a1 + 40) + 8) + 24) = [v4 count];
}

void sub_1000CA51C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, v3);
}

void sub_1000CA754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GKBagKeyChallengeApprovedGames;
  v5 = [v3 objectForKeyedSubscript:GKBagKeyChallengeApprovedGames];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v3 objectForKeyedSubscript:v4];
  }

  else
  {
    v9[0] = @"com.hipsterwhale.crossy";
    v9[1] = @"com.ketchapp.ballz";
    v9[2] = @"com.seabaa.finity";
    v9[3] = @"3Tank.TimeLockerPlus";
    v9[4] = @"com.pixelperfectdude.htdrive";
    v9[5] = @"com.apple.TheCoast";
    v9[6] = GKGKTester2OldIdentifier;
    v9[7] = GKGKTester2Identifier;
    v7 = [NSArray arrayWithObjects:v9 count:8];
  }

  v8 = v7;
  (*(v6 + 16))(v6, v7);
}

_TtC14GameDaemonCore17GKCacheableEntity *__cdecl sub_1000CAAC8(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [GKLeaderboardChallengeInternal alloc];
  v4 = [(NSDictionary *)v2 objectForKeyedSubscript:@"result"];

  v5 = [v3 initWithServerRepresentation:v4];
  v11 = @"challenge-id";
  v6 = [v5 challengeID];
  v12 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [GKNetworkRequestManager makeEntityIDWithRequest:v7 bagKey:@"gk-challenge-detail"];
  v9 = [_TtC14GameDaemonCore17GKCacheableEntity createWithBagKey:@"gk-challenge-detail" entityID:v8 entity:v5];

  return v9;
}

NSSecureCoding *__cdecl sub_1000CAD30(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeInternal alloc] initWithServerRepresentation:v2];

  return v3;
}

NSSecureCoding *__cdecl sub_1000CAEEC(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeSummaryInternal alloc] initWithServerRepresentation:v2];

  return v3;
}

void sub_1000CB224(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) clientProxy];
  v6 = [v5 replyQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CB2F8;
  v9[3] = &unk_100360EB0;
  v7 = *(a1 + 40);
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(v6, v9);
}

void sub_1000CB484(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB584;
  block[3] = &unk_100361068;
  v13 = v6;
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

void sub_1000CB584(void *a1)
{
  v1 = a1[6];
  if (a1[4])
  {
    v2 = *(v1 + 16);
    v3 = a1[6];

    v2(v3, 0);
  }

  else
  {
    v4 = [[GKLeaderboardChallengeInviteStatusInternal alloc] initWithServerRepresentation:a1[5]];
    (*(v1 + 16))(v1, v4, 0);
  }
}

void sub_1000CB8E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:8 description:@"Request playerID does not match local player"];
  (*(v1 + 16))(v1, 0, v2);
}

NSSecureCoding *__cdecl sub_1000CBAC8(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeComparisonInternal alloc] initWithServerRepresentation:v2];

  return v3;
}

NSSecureCoding *__cdecl sub_1000CBC94(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeDetailsPageInternal alloc] initWithServerRepresentation:v2];

  return v3;
}

NSSecureCoding *__cdecl sub_1000CBE60(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeCompletedSummaryInternal alloc] initWithServerRepresentation:v2];

  return v3;
}

void sub_1000CC05C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028C2A8(v6, v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v5 activeChallenges];
    v10 = [v9 actives];
    v11 = [v10 _gkDistinctValuesForKeyPath:@"challengeID"];

    v12 = *(a1 + 32);
    v13 = [v11 allObjects];
    [v12 getLeaderboardChallengeDetailsForChallengeIDs:v13 allowStaleData:*(a1 + 48) completionHandler:*(a1 + 40)];
  }
}

void sub_1000CC3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CC4C8;
  v10[3] = &unk_100365728;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [v4 getLeaderboardChallengeDetailsForChallengeID:v5 allowStaleData:v6 completionHandler:v10];
}

void sub_1000CC4C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) setError:v5];
  }

  else if (v6)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000CC554(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) allValues];
  v3 = [v7 allValues];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v6);
}

void sub_1000CC724(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] clientProxy];
  v8 = [v7 replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CC83C;
  v11[3] = &unk_1003635B0;
  v12 = v6;
  v15 = a1[6];
  v13 = v5;
  v14 = a1[5];
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void sub_1000CC83C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 56);

    v2(v3, 0);
  }

  else
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    (*(v1 + 16))(v1, v4, 0);
  }
}

void sub_1000CCBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CCBD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CCBF0(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 113, "[GKMultiplayerMatchService fetchPseudonymIfNeededWithTransportContext:withCompletionHandler:]_block_invoke"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v9 = *(a1 + 48);
  if (a2 && !*(*(v9 + 8) + 40))
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000CCD8C;
    v16[3] = &unk_100365778;
    v10 = *(a1 + 56);
    v16[4] = *(a1 + 32);
    v16[5] = v10;
    v16[6] = v9;
    [v8 perform:v16];
    v9 = *(a1 + 48);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000CCEEC;
  v12[3] = &unk_1003657A0;
  v11 = *(a1 + 56);
  v14 = v9;
  v15 = v11;
  v13 = *(a1 + 40);
  [v8 notifyOnMainQueueWithBlock:v12];
}

void sub_1000CCD8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pseudonymManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CCE48;
  v6[3] = &unk_100365750;
  v8 = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 fetchPseudonymWithCompletionHandler:v6];
}

void sub_1000CCE48(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

uint64_t sub_1000CCEEC(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028C320();
    }
  }

  if (*(*(a1[6] + 8) + 40) || ([NSError userErrorForCode:35 underlyingError:*(*(a1[5] + 8) + 40)], v3 = objc_claimAutoreleasedReturnValue(), v4 = *(a1[5] + 8), v5 = *(v4 + 40), *(v4 + 40) = v3, v5, *(*(a1[6] + 8) + 40)))
  {
    v6 = *(a1[4] + 16);
  }

  else
  {
    v6 = *(a1[4] + 16);
  }

  return v6();
}

void sub_1000CD1B0(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_10028C398();
  }

  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 160, "[GKMultiplayerMatchService getPlayersForMatchRequest:playerCount:rematchID:transportContext:handler:]_block_invoke"];
  v5 = [v3 transactionGroupWithName:v4];

  v6 = objc_alloc_init(GKMatchResponse);
  [v6 transitionToState:1];
  [v6 setMatchingGroup:v5];
  [v6 setMatchRequest:*(a1 + 40)];
  v7 = [*(a1 + 32) clientProxy];
  [v7 setCurrentMatchResponse:v6];

  v8 = [*(a1 + 32) clientProxy];
  v9 = [v8 replyQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000CD474;
  v24[3] = &unk_100365840;
  v24[4] = *(a1 + 32);
  v25 = *(a1 + 48);
  v10 = v5;
  v26 = v10;
  v11 = v6;
  v27 = v11;
  v12 = *(a1 + 40);
  v13 = *(a1 + 72);
  v28 = v12;
  v30 = v13;
  v29 = *(a1 + 56);
  [v10 performOnQueue:v9 block:v24];

  v14 = [*(a1 + 32) clientProxy];
  v15 = [v14 replyQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CDB84;
  v19[3] = &unk_100365868;
  v20 = v11;
  v21 = v10;
  v16 = *(a1 + 64);
  v22 = *(a1 + 32);
  v23 = v16;
  v17 = v10;
  v18 = v11;
  [v17 notifyOnQueue:v15 block:v19];
}

void sub_1000CD474(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDataRequestManager sharedManager];
  [v4 beginTransaction:@"matchRequest"];

  v5 = +[GKDataRequestManager sharedManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000CD5C8;
  v15[3] = &unk_100365818;
  v14 = *(a1 + 32);
  v6 = *(&v14 + 1);
  v7 = *(a1 + 48);
  v20 = v3;
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v16 = v14;
  v17 = v9;
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v11 = *(a1 + 80);
  v18 = v10;
  v21 = v11;
  v19 = v12;
  v13 = v3;
  [v5 getValidNATTypeWithForceRelay:0 withHandler:v15];
}

void sub_1000CD5C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CD6DC;
  v10[3] = &unk_1003657F0;
  v11 = *(a1 + 48);
  v17 = *(a1 + 80);
  v6 = *(a1 + 56);
  v18 = a2;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 88);
  v14 = v8;
  v19 = v9;
  v15 = *(a1 + 72);
  v16 = *(a1 + 40);
  [v4 fetchPseudonymIfNeededWithTransportContext:v5 withCompletionHandler:v10];
}

void sub_1000CD6DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) setError:a3];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    [*(a1 + 40) setSelfPseudonym:v5];
    v6 = +[GKReachability _gkReachabilityForInternetConnection];
    v7 = [objc_opt_class() makeBaseServerRequestForMatchRequest:*(a1 + 56) playerCount:*(a1 + 96) rematchID:*(a1 + 64) connInfo:{*(a1 + 88) | (8 * (objc_msgSend(v6, "_gkCurrentReachabilityStatus") == 2))}];
    v8 = [objc_opt_class() makePlayersDictionaryForMatchRequest:*(a1 + 56) transportContext:*(a1 + 72)];
    [v7 setObject:v8 forKey:@"players"];

    if ([*(a1 + 56) matchType])
    {
      v9 = [NSNumber numberWithInteger:1];
      [v7 setObject:v9 forKey:GKServerHostedKey];
    }

    else
    {
      [*(a1 + 72) enrichServerRequest:v7 withMatchRequest:*(a1 + 56) selfPseudonym:v5];
      [*(a1 + 48) validateRequests:v7 andFileMultiplayerTTRIfNeededWithContext:@"[Internal Only] Found invalid transport version for matchmaking request."];
      v9 = [v7 objectForKeyedSubscript:GKMatchClientDataKey];
      v10 = [NSNumber numberWithInteger:*(a1 + 88)];
      [v9 setObject:v10 forKey:@"nat-type"];

      v11 = +[GKDataRequestManager sharedManager];
      v12 = [v11 pushToken];

      if (v12)
      {
        [v9 setObject:v12 forKey:GKMatchPushTokenKey];
      }

      [v9 setObject:v5 forKey:GKTransportPseudonymKey];
      v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 56) isLateJoin]);
      [v7 setObject:v13 forKeyedSubscript:@"is-late-join"];
    }

    [*(a1 + 40) setServerRequest:v7];
    v14 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000CD9C4;
    v17[3] = &unk_100360F00;
    v15 = *(a1 + 48);
    v18 = v7;
    v19 = v15;
    v20 = v14;
    v16 = v7;
    [v14 perform:v17];
    (*(*(a1 + 80) + 16))();
  }
}

void sub_1000CD9C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CDABC;
  v9[3] = &unk_1003628B8;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = v3;
  v8 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-request-match" clientProxy:v6 handler:v9];
}

void sub_1000CDABC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028C3D8();
    }
  }

  else
  {
    v8 = [*(a1 + 32) clientProxy];
    [v8 processMatchResponse:v5];
  }

  [*(a1 + 40) setError:v6];
  (*(*(a1 + 48) + 16))();
}

void sub_1000CDB84(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = 2;
  }

  else if ([*(a1 + 32) isTimeout])
  {
    v2 = 33;
  }

  else
  {
    if (![*(a1 + 32) isNetworkError])
    {
      goto LABEL_8;
    }

    v2 = 3;
  }

  v3 = [NSError userErrorForCode:v2 underlyingError:0];
  [*(a1 + 40) setError:v3];

LABEL_8:
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) error];
    (*(v4 + 16))(v4, v5, v6);
  }

  v8 = *(a1 + 48);
  v7 = (a1 + 48);
  v9 = [v8 clientProxy];
  v10 = [v9 currentMatchResponse];
  v11 = [v10 matchingGroup];
  v12 = [v11 isEqual:*(v7 - 1)];

  if (v12)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v15 = *v7;
      v16 = v14;
      v17 = [v15 clientProxy];
      v18 = [v17 bundleIdentifier];
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Invalidating current match response for client: %@", &v23, 0xCu);
    }

    v19 = [*v7 clientProxy];
    [v19 setCurrentMatchResponse:0];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_10028C448(v7, v21);
    }
  }

  v22 = +[GKDataRequestManager sharedManager];
  [v22 endTransaction:@"matchRequest"];
}

void sub_1000CE888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CE96C;
  v8[3] = &unk_1003658B8;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-cancel-match" clientProxy:v6 handler:v8];
}

uint64_t sub_1000CE96C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000CEE24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 gameDescriptor];
  v9 = [GKGameCacheObject gameForGameDescriptor:v8 context:v5];

  v10 = [NSPredicate predicateWithFormat:@"game == %@ && playerGroup == %@ && queueName == %@", v9, *(a1 + 40), *(a1 + 48)];
  v11 = [(GKCacheObject *)GKFlowRateCacheObject firstObjectMatchingPredicate:v10 context:v5];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 playersPerMinute];
    *(*(*(a1 + 64) + 8) + 24) = [v13 unsignedIntegerValue];

    v14 = [v12 expirationDate];
    [v14 timeIntervalSinceNow];
    v16 = v15 > 0.0;
  }

  else
  {
    v16 = 0;
  }

  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_10028C57C();
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else if (v16)
  {
    goto LABEL_16;
  }

  v18 = *(a1 + 56);
  v19 = [NSString stringWithFormat:@"%s:%d %s", "GKMultiplayerMatchService.m", 423, "[GKMultiplayerMatchService getFlowRateWithPlayerGroup:queueName:handler:]_block_invoke"];
  v20 = [v18 transactionGroupWithName:v19];

  v21 = *(a1 + 40);
  if (v21)
  {
    v49 = @"bucket-id";
    v50 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    v47 = @"queue-name";
    v48 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

    v22 = v24;
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000CF224;
  v37[3] = &unk_100365958;
  v25 = v22;
  v26 = *(a1 + 32);
  v38 = v25;
  v39 = v26;
  v27 = v20;
  v40 = v27;
  v41 = v12;
  v42 = v5;
  v43 = v9;
  v44 = *(a1 + 40);
  v28 = *(a1 + 48);
  v29 = *(a1 + 64);
  v45 = v28;
  v46 = v29;
  [v27 perform:v37];
  if (!v12)
  {
    v30 = *(a1 + 56);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000CF610;
    v33[3] = &unk_100360F00;
    v31 = v27;
    v32 = *(a1 + 32);
    v34 = v31;
    v35 = v32;
    v36 = *(a1 + 56);
    [v30 perform:v33];
  }

LABEL_16:
  v6[2](v6);
}

void sub_1000CF224(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CF39C;
  v16[3] = &unk_100365930;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v17 = v12;
  v18 = v11;
  v19 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v21 = v3;
  v22 = v14;
  v20 = v13;
  v15 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-get-flow-rate" clientProxy:v6 handler:v16];
}

void sub_1000CF39C(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 && !v8)
  {
    v10 = [*(a1 + 32) context];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000CF518;
    v22 = &unk_100365908;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v23 = v16;
    v24 = v15;
    v25 = *(a1 + 72);
    v17 = v7;
    v28 = a4;
    v18 = *(a1 + 88);
    v26 = v17;
    v27 = v18;
    [v10 performBlockAndWait:&v19];
  }

  [*(a1 + 32) setError:{v9, v19, v20, v21, v22}];
  (*(*(a1 + 80) + 16))();
}

void sub_1000CF518(uint64_t a1)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = [(GKCacheObject *)[GKFlowRateCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
    [(GKFlowRateCacheObject *)v5 setGame:*(a1 + 48)];
    [(GKFlowRateCacheObject *)v5 setPlayerGroup:*(a1 + 56)];
    [(GKFlowRateCacheObject *)v5 setQueueName:*(a1 + 64)];
  }

  v2 = [*(a1 + 72) valueForKey:@"players-per-min"];
  [(GKFlowRateCacheObject *)v5 setPlayersPerMinute:v2];

  v3 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 88)];
  [(GKFlowRateCacheObject *)v5 setExpirationDate:v3];

  v4 = [(GKFlowRateCacheObject *)v5 playersPerMinute];
  *(*(*(a1 + 80) + 8) + 24) = [v4 unsignedIntegerValue];
}

void sub_1000CF610(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [a1[5] clientProxy];
  v6 = [v5 replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CF704;
  v8[3] = &unk_100360FC8;
  v9 = a1[6];
  v10 = a1[4];
  v11 = v3;
  v7 = v3;
  [v4 notifyOnQueue:v6 block:v8];
}

uint64_t sub_1000CF704(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000CF760(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, v3);
}

void sub_1000CFAA0(id *a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000CFD14;
  v14[3] = &unk_1003659A8;
  v4 = a1[4];
  v15 = a1[5];
  v16 = a1[4];
  v17 = a1[6];
  v18 = &v19;
  [v4 performBlockAndWait:v14];
  if (*(v20 + 24) == 1)
  {
    v3[2](v3);
  }

  else
  {
    v5 = a1[5];
    v23 = @"game";
    v24 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v7 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v8 = [a1[7] clientProxy];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000CFF24;
    v9[3] = &unk_1003659D0;
    v10 = a1[6];
    v13 = v3;
    v11 = a1[4];
    v12 = a1[5];
    [v7 issueRequest:v6 bagKey:@"gk-get-compatible-games" clientProxy:v8 handler:v9];
  }

  _Block_object_dispose(&v19, 8);
}

void sub_1000CFD14(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"short-bundle-version"];

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"bundle-id"];
  if (v2)
  {
    v4 = @"short-bundle-version";
  }

  else
  {
    v4 = @"bundle-version";
  }

  if (v2)
  {
    v5 = @"bundleID = %@ AND shortVersion = %@";
  }

  else
  {
    v5 = @"bundleID = %@ AND version = %@";
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v7 = [NSPredicate predicateWithFormat:v5, v3, v6];

  v8 = [(GKCacheObject *)GKCompatibilityListCacheObject firstObjectMatchingPredicate:v7 context:*(a1 + 40)];
  if ([v8 isValid])
  {
    v9 = [v8 internalRepresentation];
    [*(a1 + 48) setObject:v9 forKeyedSubscript:@"result"];

    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 48);
      v13 = v11;
      v14 = [v12 objectForKeyedSubscript:@"result"];
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "List of compatible games:%@", buf, 0xCu);
    }

    v15 = [v8 expirationDate];
    [v15 timeIntervalSinceNow];
    *(*(*(a1 + 56) + 8) + 24) = v16 > 0.0;
  }
}

void sub_1000CFF24(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  if (!v7 || a3)
  {
    [*(a1 + 32) setError:a3];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D0050;
    v9[3] = &unk_100365890;
    v15 = a4;
    v10 = v8;
    v11 = *(a1 + 48);
    v12 = v7;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    [v10 performBlock:v9];
  }
}

void sub_1000D0050(uint64_t a1)
{
  v7 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 72)];
  v2 = [(GKCacheObject *)[GKCompatibilityListCacheObject alloc] initWithManagedObjectContext:*(a1 + 32)];
  v3 = [*(a1 + 40) objectForKey:@"bundle-id"];
  [(GKCompatibilityListCacheObject *)v2 setBundleID:v3];

  v4 = [*(a1 + 40) objectForKey:@"bundle-version"];
  [(GKCompatibilityListCacheObject *)v2 setVersion:v4];

  v5 = [*(a1 + 40) objectForKey:@"short-bundle-version"];
  [(GKCompatibilityListCacheObject *)v2 setShortVersion:v5];

  [(GKCompatibilityListCacheObject *)v2 updateWithServerRepresentation:*(a1 + 48) expirationDate:v7];
  [*(a1 + 32) _gkSafeSave];
  v6 = [(GKListCacheObject *)v2 internalRepresentation];
  [*(a1 + 56) setObject:v6 forKeyedSubscript:@"result"];

  (*(*(a1 + 64) + 16))();
}

void sub_1000D0190(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000D0458(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) shareRecordID];
  v15 = v4;
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  v6 = +[GKCloudKitMultiplayerUtils privateDatabase];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D05B4;
  v10[3] = &unk_100363560;
  v11 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  [GKCloudKitMultiplayerUtils fetchShareRecordsWithRecordIDs:v5 inDatabase:v6 handler:v10];
}

void sub_1000D05B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 shareRecordID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 setObject:*(a1 + 40) forKeyedSubscript:@"invitedPlayers"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D071C;
    v13[3] = &unk_1003659F8;
    v10 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v10 saveRecord:v9 withHandler:v13];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028C668((a1 + 32), v12, v5);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000D071C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028C71C();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Saved invitee record to CloudKit, where invitedPlayers entry maps [MessagesID : playerID].", v10, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000D0B78(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v49 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) hasGuestPlayers]);
  [v4 setObject:v5 forKey:@"requires-guest-player-capability"];

  [v4 setObject:*(a1 + 40) forKey:@"peers"];
  if (*(a1 + 88))
  {
    v6 = 3;
    v7 = @"nearby";
  }

  else if ([*(a1 + 56) count] || objc_msgSend(*(a1 + 40), "count") && (objc_msgSend(*(a1 + 40), "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", @"push-token"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v6 = 4;
    v7 = @"shareplay";
  }

  else
  {
    v6 = 1;
    v7 = @"standard";
  }

  [v4 setObject:v7 forKeyedSubscript:@"mode"];
  v10 = [NSNumber numberWithInt:v6];
  [*(a1 + 48) setApproachUsed:v10];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isLateJoin]);
  [v4 setObject:v11 forKeyedSubscript:@"is-late-join"];

  v12 = +[GKDataRequestManager sharedManager];
  v13 = [v12 pushToken];

  if (v13)
  {
    [v4 setObject:v13 forKey:@"self-push-token"];
  }

  v14 = [*(a1 + 64) clientProxy];
  v15 = [v14 fetchOrCreateInviteSession];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000D1088;
  v46[3] = &unk_1003610B8;
  v16 = v15;
  v47 = v16;
  v17 = v4;
  v48 = v17;
  [v16 performSync:v46];
  v18 = [NSNumber numberWithUnsignedChar:v2];
  [v17 setObject:v18 forKey:@"self-nat-type"];

  v19 = [*(a1 + 32) inviteMessage];
  v20 = v19;
  if (!v19)
  {
    v19 = &stru_100374F10;
  }

  v21 = [(__CFString *)v19 dataUsingEncoding:4];

  v22 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v21 length] + 2);
  [v22 appendBytes:&v49 length:1];
  v45 = [*(a1 + 32) matchType] == 1;
  [v22 appendBytes:&v45 length:1];
  [v22 appendData:v21];
  [v22 appendBytes:&unk_1002C2A50 length:1];
  v23 = [*(a1 + 72) defaultInviteVersionFromMinimumSupportedTransportVersion];
  v24 = [v23 unsignedIntValue];

  v44 = v24;
  [v22 appendBytes:&v44 length:1];
  v25 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v22, @"s", 0];
  [v17 setObject:v25 forKey:GKMatchClientDataKey];
  v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) playerGroup]);
  [v25 setObject:v26 forKey:@"g"];

  v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) playerAttributes]);
  [v25 setObject:v27 forKey:@"a"];

  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000D11A0;
  v34[3] = &unk_100365A48;
  v41 = *(a1 + 80);
  v42 = v49;
  v35 = *(a1 + 48);
  v36 = v13;
  v37 = *(a1 + 72);
  v38 = v17;
  v30 = *(a1 + 64);
  v43 = *(a1 + 89);
  v39 = v30;
  v40 = v16;
  v31 = v16;
  v32 = v17;
  v33 = v13;
  [v28 fetchPseudonymIfNeededWithTransportContext:v29 withCompletionHandler:v34];
}

void sub_1000D1088(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionToken];
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKey:@"session-token"];
  }

  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 sessionToken];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Session token for initiate request: %@", &v8, 0xCu);
  }
}

void sub_1000D11A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 80) + 16);

    v4();
  }

  else
  {
    [*(a1 + 32) setSelfPseudonym:a2];
    [*(a1 + 32) setSelfPushToken:*(a1 + 40)];
    [*(a1 + 48) enrichServerRequest:*(a1 + 56) andInviteResponse:*(a1 + 32)];
    [*(a1 + 64) validateRequests:*(a1 + 56) andFileMultiplayerTTRIfNeededWithContext:@"[Internal Only] Found invalid transport version for invitation request."];
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 56);
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "gk-invitation-initiate request: %@", buf, 0xCu);
    }

    v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v9 = *(a1 + 56);
    v10 = [*(a1 + 64) clientProxy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D13DC;
    v13[3] = &unk_100365A20;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v19 = *(a1 + 96);
    v16 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    v17 = v11;
    v18 = v12;
    [v8 issueRequest:v9 bagKey:@"gk-invitation-initiate" clientProxy:v10 handler:v13];
  }
}

void sub_1000D13DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028C78C();
    }

    v9 = [v5 objectForKeyedSubscript:@"status"];

    if (!v9 || ([v5 objectForKeyedSubscript:@"status"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v11 != 5020) || (objc_msgSend(v5, "objectForKeyedSubscript:", @"peers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13) || (v14 = v5, objc_msgSend(v7, "userInfo"), v15 = objc_claimAutoreleasedReturnValue(), +[NSError userErrorForCode:userInfo:](NSError, "userErrorForCode:userInfo:", 5020, v15), v16 = objc_claimAutoreleasedReturnValue(), v7, v15, v7 = v16, !v5))
    {
LABEL_10:
      v17 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v18 = v5;
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      sub_10028C7FC();
    }

    v7 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v20 = [v5 objectForKeyedSubscript:GKSuggestedTransportVersionKey];
  v21 = v20;
  if (v20 && [v20 integerValue])
  {
    [*(a1 + 32) setTransportVersionToUse:v21];
  }

  else if ([*(a1 + 40) validTransportSelected])
  {
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 40);
      v25 = v23;
      v26 = [v24 selectedTransport];
      *buf = 138412290;
      v52 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "We didn't get transport suggestion from server, but we have previously selected transport. Use it. %@", buf, 0xCu);
    }

    v27 = [*(a1 + 40) selectedTransport];
    v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 version]);
    [*(a1 + 32) setTransportVersionToUse:v28];
  }

  v29 = [*(a1 + 32) transportVersionToUse];

  if (!v29)
  {
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) setTransportVersionToUse:&off_100382430];
      if (!os_log_GKGeneral)
      {
        v33 = GKOSLoggers();
      }

      v34 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Use V2 transport since message invitees are all available for v2.", buf, 2u);
      }
    }

    else
    {
      v44 = *(a1 + 40);
      v46 = +[GKPreferences shared];
      v45 = [v46 forceEnabledTransportVersions];
      v35 = +[GKPreferences shared];
      v36 = [v35 forceDisabledTransportVersions];
      v37 = +[GKPreferences shared];
      v38 = [v44 defaultTransportWithForceEnabledTransports:v45 forceDisabledTransports:v36 andHealthMonitorEnabled:{objc_msgSend(v37, "multiplayerHealthCheckEnabled")}];
      v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 version]);
      [*(a1 + 32) setTransportVersionToUse:v39];

      if (!os_log_GKGeneral)
      {
        v40 = GKOSLoggers();
      }

      v41 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        v43 = [NSNumber numberWithInteger:1];
        *buf = 138412290;
        v52 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Default to use GKDefaultTransportVersionIfNeeded = %@, since this is not included in the response.", buf, 0xCu);
      }
    }
  }

  v17 = v5;
LABEL_27:
  v30 = *(a1 + 48);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000D1990;
  v47[3] = &unk_100361F68;
  v31 = v17;
  v48 = v31;
  v49 = *(a1 + 48);
  v50 = *(a1 + 32);
  [v30 performSync:v47];
  v32 = *(a1 + 56);
  if (v32)
  {
    (*(v32 + 16))(v32, v31, *(a1 + 64), v7, *(a1 + 32));
  }
}

void sub_1000D1990(id *a1)
{
  v2 = [a1[4] objectForKey:@"session-token"];
  if (v2)
  {
    [a1[5] setSessionToken:v2];
    [a1[6] setSessionToken:v2];
  }

  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Session token from initiate response: %@", &v10, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = a1[5];
    v8 = v6;
    v9 = [v7 sessionToken];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "session.sessionToken %@", &v10, 0xCu);
  }
}

void sub_1000D1F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak((v17 + 72));
  objc_destroyWeak((v18 - 144));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D1F90(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 messagesID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v9 messagesID];
    [v7 addObject:v8];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1000D2030(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v21 = 138412802;
    v22 = v9;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Fetched IDS message V2. Error: %@. available: %@ unavailable: %@", &v21, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = [*(a1 + 56) count];
  v20 = v19 == [v7 count] && objc_msgSend(v8, "count") == 0;
  [WeakRetained loadCloudKitShareURLWithPlayer:v16 matchRequest:v17 transportContext:v18 availableForMessageV2:v20 handler:*(a1 + 64)];
}

void sub_1000D2474(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D259C;
  v11[3] = &unk_100365B10;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17 = v3;
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v14 = *(a1 + 64);
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v10 = v3;
  [v4 initiateInvitationForMatchRequest:v5 recipients:&__NSArray0__struct devicePushTokenMap:0 isNearbyInvite:0 availableForMessageV2:v6 transportContext:v7 handler:v11];
}

void sub_1000D259C(uint64_t a1, void *a2, unsigned __int8 a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028C864();
    }

    [*(a1 + 32) setError:v10];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = [*(a1 + 40) clientProxy];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 bundleIdentifier];
      v17 = [v15 bundleVersion];
      v60 = [v15 bundleShortVersion];
      v59 = [v15 adamID];
      if (v16)
      {
        [v13 setObject:v16 forKey:@"bundle-id"];
      }

      if (v17)
      {
        [v13 setObject:v17 forKey:@"bundle-version"];
      }

      if (v60)
      {
        [v13 setObject:v60 forKey:@"short-bundle-version"];
      }

      v56 = v17;
      v57 = v16;
      v58 = v9;
      if (v59)
      {
        [v13 setObject:v59 forKey:@"adam-id"];
      }

      v18 = [*(a1 + 48) playerID];
      [v13 setObject:v18 forKey:@"playerID"];

      v19 = [NSNumber numberWithUnsignedChar:a3];
      [v13 setObject:v19 forKey:@"self-nat-type"];

      [*(a1 + 56) enrichConnectionDictionary:v13 inviteResponse:v11];
      [v15 fetchOrCreateInviteSession];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1000D2E80;
      v69 = v68[3] = &unk_1003610B8;
      v20 = v13;
      v70 = v20;
      v55 = v69;
      [v69 performSync:v68];
      v21 = +[GKDataRequestManager sharedManager];
      v22 = [v21 pushToken];

      if (v22)
      {
        v23 = [v22 base64EncodedStringWithOptions:0];
        [v20 setObject:v23 forKey:@"self-push-token"];
      }

      v54 = v22;
      v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 64) playerGroup]);
      [v20 setObject:v24 forKey:@"g"];

      v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 64) playerAttributes]);
      [v20 setObject:v25 forKey:@"a"];

      v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 64) matchType]);
      [v20 setObject:v26 forKey:@"matchType"];

      v27 = [*(a1 + 56) defaultInviteVersionFromMinimumSupportedTransportVersion];
      [v20 setObject:v27 forKey:@"inviteVersion"];

      [v20 setObject:&off_100382448 forKey:@"invite-type"];
      v28 = [v11 selfPseudonym];
      [v20 setObject:v28 forKey:GKTransportPseudonymKey];

      v29 = [v11 transportVersionToUse];
      [v20 setObject:v29 forKey:GKSuggestedTransportVersionPushShortKey];

      v30 = [v11 transportVersionToUse];
      v31 = [v30 integerValue];

      if (v31 == 2)
      {
        v32 = +[NSMutableDictionary dictionary];
        v33 = [v11 lobbyParticipantsInfo];

        if (v33)
        {
          v34 = [v11 lobbyParticipantsInfo];
          [v32 setObject:v34 forKey:GKInviteLobbyParticipantsKey];
        }

        v35 = [v11 gameParticipantsInfo];

        if (v35)
        {
          v36 = [v11 gameParticipantsInfo];
          [v32 setObject:v36 forKey:GKInviteGameParticipantsKey];
        }

        if ([v32 count])
        {
          v67 = 0;
          v37 = [NSKeyedArchiver archivedDataWithRootObject:v32 requiringSecureCoding:1 error:&v67];
          v38 = v67;
          v39 = v38;
          if (v37)
          {
            [v20 setObject:v37 forKey:GKInviteArchivedParticipantInfoKey];
          }

          else if (v38)
          {
            if (!os_log_GKGeneral)
            {
              v41 = GKOSLoggers();
            }

            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
            {
              sub_10028C8D4();
            }
          }
        }

        [v20 setObject:&off_100382430 forKey:@"inviteVersion"];
      }

      if (!os_log_GKGeneral)
      {
        v42 = GKOSLoggers();
      }

      v43 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v72 = v20;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "GK-InviteMessages: loadDataForURL connectionDictionary: %@", buf, 0xCu);
      }

      v44 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.legacygaming.invites" ownerName:CKCurrentUserDefaultName];
      v45 = [[CKRecord alloc] initWithRecordType:@"LegacyMultiplayerInvites" zoneID:v44];
      v66 = 0;
      v46 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v66];
      v47 = v66;
      if (v47)
      {
        [*(a1 + 32) setError:v47];
        if (!os_log_GKGeneral)
        {
          v48 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
        {
          sub_10028C94C();
        }
      }

      else
      {
        [v45 setObject:v46 forKeyedSubscript:@"connectionData"];
        if (!os_log_GKGeneral)
        {
          v49 = GKOSLoggers();
        }

        v50 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v72 = v46;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "GK-InviteMessages: loadDataForURL record for inviteData: %@", buf, 0xCu);
        }

        v51 = *(a1 + 32);
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1000D2F90;
        v61[3] = &unk_100361F90;
        v52 = v45;
        v53 = *(a1 + 40);
        v62 = v52;
        v63 = v53;
        v64 = v11;
        v65 = *(a1 + 32);
        [v51 perform:v61];
      }

      (*(*(a1 + 72) + 16))();

      v9 = v58;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v40 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        sub_10028C9BC();
      }

      (*(*(a1 + 72) + 16))();
    }
  }
}

void sub_1000D2E80(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionToken];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [v2 base64EncodedStringWithOptions:0];
    [v4 setObject:v5 forKey:@"session-token"];
  }

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Session token for CloudKit record: %@", &v8, 0xCu);
  }
}

void sub_1000D2F90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) share];
  v5 = [v4 recordID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [CKRecordID alloc];
    v9 = [*(a1 + 32) recordID];
    v10 = [v9 recordName];
    v11 = [NSString stringWithFormat:@"%@%@", @"share", v10];
    v12 = [*(a1 + 32) recordID];
    v13 = [v12 zoneID];
    v7 = [v8 initWithRecordName:v11 zoneID:v13];
  }

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) recordID];
  [v14 setShareRecordID:v15];

  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    *buf = 138412290;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Setting up CKShare for record: %@", buf, 0xCu);
  }

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000D3208;
  v22[3] = &unk_100365AE8;
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = v3;
  v21 = v3;
  [v19 setupInviteShareWithRecordID:v7 rootRecord:v20 handler:v22];
}

void sub_1000D3208(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 URL];
  [*(a1 + 32) setCloudKitShareURL:v6];

  [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:@"inviteResponse"];
  if (v5)
  {
    [*(a1 + 40) setError:v5];
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028C9F8();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000D32D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"inviteResponse"];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

void sub_1000D3620(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000D3814;
  v20[3] = &unk_100365B38;
  v8 = v6;
  v21 = v8;
  v22 = *(a1 + 32);
  v24 = *(a1 + 64);
  v9 = v7;
  v23 = v9;
  v10 = objc_retainBlock(v20);
  if (*(a1 + 72) == 1 && [*(a1 + 40) zoneNotFoundFromOperation:@"setupInviteShareWithRecordID" operationError:v9])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000D3970;
    v16[3] = &unk_100365B60;
    v15 = *(a1 + 40);
    v11 = *(&v15 + 1);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v17 = v15;
    v18 = v14;
    v19 = v10;
    [GKCloudKitMultiplayerUtils createZoneWithName:@"com.apple.legacygaming.invites" handler:v16];
  }

  else
  {
    (v10[2])(v10, v9);
  }
}

void sub_1000D3814(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 recordID];
        v8 = [*(a1 + 40) recordID];
        v9 = [v7 isEqual:v8];

        if (v9)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  (*(*(a1 + 56) + 16))();
}

id sub_1000D3970(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 64) + 16))();
  }

  else
  {
    return [*(a1 + 32) setupInviteShareWithRecordID:*(a1 + 40) rootRecord:*(a1 + 48) shouldRetry:0 handler:*(a1 + 56)];
  }
}

void sub_1000D3E30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 56) == 1 && [*(a1 + 32) zoneNotFoundFromOperation:@"saveRecord" operationError:v9])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D3F5C;
    v11[3] = &unk_1003613E8;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    v13 = *(a1 + 48);
    [GKCloudKitMultiplayerUtils createZoneWithName:@"com.apple.legacygaming.invites" handler:v11];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id sub_1000D3F5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), a2);
  }

  else
  {
    return [*(a1 + 32) saveRecord:*(a1 + 40) shouldRetry:0 withHandler:*(a1 + 48)];
  }
}

void sub_1000D4478(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isGuestPlayer] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v5 playerID];
    [v3 addObject:v4];
  }
}

void sub_1000D44E8(uint64_t a1, void *a2)
{
  v32 = a2;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    v33 = *v54;
    v34 = v3;
    do
    {
      v7 = 0;
      v35 = v5;
      do
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v53 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        if (v9)
        {
          v37 = v7;
          v10 = [v9 objectForKeyedSubscript:v8];
          if ([v10 count])
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v49 objects:v63 count:16];
            if (v12)
            {
              v13 = v12;
              v36 = v10;
              v14 = *v50;
              do
              {
                v15 = 0;
                do
                {
                  if (*v50 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v49 + 1) + 8 * v15);
                  v17 = +[NSMutableDictionary dictionary];
                  [v17 setObject:v8 forKeyedSubscript:@"raw-id"];
                  [v17 setObject:v16 forKeyedSubscript:@"push-token"];
                  [*(a1 + 48) addObject:v17];

                  v15 = v15 + 1;
                }

                while (v13 != v15);
                v13 = [v11 countByEnumeratingWithState:&v49 objects:v63 count:16];
              }

              while (v13);
              v6 = v33;
              v3 = v34;
              v5 = v35;
              v10 = v36;
            }

            else
            {
              v5 = v35;
            }
          }

          else
          {
            v25 = *(a1 + 48);
            v61 = @"raw-id";
            v62 = v8;
            v11 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            [v25 addObject:v11];
          }

          v7 = v37;
        }

        else
        {
          v18 = *(a1 + 56);
          if (v18 && ([v18 objectForKeyedSubscript:*(*(&v53 + 1) + 8 * v7)], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v20 = v19;
            v38 = *(a1 + 48);
            v59[0] = @"raw-id";
            v59[1] = @"push-token";
            v60[0] = v8;
            v60[1] = v19;
            [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
            v21 = v6;
            v22 = v3;
            v24 = v23 = v20;
            [v38 addObject:v24];

            v10 = v23;
            v3 = v22;
            v6 = v21;
          }

          else
          {
            v26 = *(a1 + 48);
            v57 = @"raw-id";
            v58 = v8;
            v10 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1, v32];
            [v26 addObject:v10];
          }
        }

        v27 = *(a1 + 64);
        v28 = [NSNumber numberWithInteger:0];
        [v27 setObject:v28 forKey:v8];

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 48) count])
  {
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000D4998;
    v48[3] = &unk_100362920;
    v29 = *(a1 + 72);
    v48[4] = *(a1 + 80);
    [v29 performOnManagedObjectContext:v48];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000D4A80;
    v39[3] = &unk_100365C00;
    v30 = *(a1 + 72);
    v31 = *(a1 + 88);
    v39[4] = *(a1 + 80);
    v40 = v31;
    v41 = *(a1 + 48);
    v42 = *(a1 + 40);
    v47 = *(a1 + 104);
    v43 = *(a1 + 96);
    v44 = *(a1 + 72);
    v45 = *(a1 + 32);
    v46 = *(a1 + 64);
    [v30 perform:v39];
  }

  v32[2](v32);
}

void sub_1000D4998(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v6];
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 bundleIdentifier];
  v9 = [GKGameCacheObject gameForBundleID:v8 context:v6];

  [v10 expireRecentMatchesWithGame:v9];
  v5[2](v5);
}

void sub_1000D4A80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 96);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D4BB0;
  v13[3] = &unk_100365B10;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v19 = v3;
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v18 = *(a1 + 48);
  v12 = v3;
  [v4 initiateInvitationForMatchRequest:v5 recipients:v6 devicePushTokenMap:v7 isNearbyInvite:v8 availableForMessageV2:0 transportContext:v9 handler:v13];
}

void sub_1000D4BB0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  if (v8 && v9 && [v9 code] != 5020)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028CAD0();
    }

    [*(a1 + 32) setError:v9];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v11 = [(GKService *)GKProfileService serviceFromService:*(a1 + 40)];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D4D94;
    v14[3] = &unk_100365BD8;
    v12 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v15 = v8;
    v16 = v9;
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = v10;
    v20 = *(a1 + 32);
    v21 = *(a1 + 72);
    [v11 getProfilesForPlayerIDs:v12 handler:v14];
  }
}

void sub_1000D4D94(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v61 = a3;
  v6 = [a1[4] clientProxy];
  v67 = [v6 fetchOrCreateInviteSession];

  v60 = v5;
  v69 = [v5 _gkMapDictionaryWithKeyPath:@"playerID"];
  v64 = a1;
  v7 = [a1[5] objectForKey:@"peers"];
  v68 = +[NSMutableDictionary dictionary];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v8)
  {
    v9 = v8;
    v66 = 0;
    v10 = *v83;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v83 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v82 + 1) + 8 * i);
        v13 = [v12 objectForKey:@"raw-id"];
        v14 = [v12 objectForKey:@"status"];
        v15 = [v14 integerValue];

        v16 = [v69 objectForKeyedSubscript:v13];
        v17 = [v12 objectForKey:@"push-token"];
        v18 = v17;
        if (v16)
        {
          v19 = v15 == 0;
        }

        else
        {
          v19 = 0;
        }

        if (!v19 || v17 == 0)
        {
          if (!os_log_GKGeneral)
          {
            v21 = GKOSLoggers();
          }

          v22 = os_log_GKMatch;
          v66 = 1;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            v23 = v22;
            v24 = [v16 conciseDescription];
            *buf = 138412802;
            v90 = v24;
            v91 = 2048;
            v92 = v15;
            v93 = 2112;
            v94 = v18;
            v66 = 1;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Invite to %@ failed with status %ld. pushToken: %@", buf, 0x20u);
          }
        }

        else
        {
          v25 = [v68 objectForKeyedSubscript:v13];
          v26 = [v25 mutableCopy];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = +[NSMutableArray array];
          }

          v29 = v28;

          [v29 addObject:v18];
          [v68 setObject:v29 forKeyedSubscript:v13];
          [v67 addInvitee:v16 reference:v18];
          if (!os_log_GKGeneral)
          {
            v30 = GKOSLoggers();
          }

          v31 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v90 = v67;
            v91 = 2112;
            v92 = v16;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "InviteSession (%@) added one player: %@.", buf, 0x16u);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v9);
  }

  else
  {
    v66 = 0;
  }

  v32 = v61;
  v33 = v64;
  if (v61 || (v32 = v64[6]) != 0)
  {
    v34 = [v32 userInfo];
    v35 = [v34 objectForKey:NSUnderlyingErrorKey];

    if ([v35 isGKCompoundError])
    {
      v63 = v35;
      v62 = v32;
      v36 = [v64[5] objectForKeyedSubscript:@"peers"];
      v37 = +[NSMutableSet set];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v38 = v36;
      v39 = [v38 countByEnumeratingWithState:&v78 objects:v88 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v79;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v79 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v78 + 1) + 8 * j);
            v44 = [v43 objectForKeyedSubscript:@"status"];
            v45 = [v43 objectForKeyedSubscript:@"raw-id"];
            if ([v44 integerValue])
            {
              [v64[7] setObject:v44 forKey:v45];
            }

            else
            {
              [v37 addObject:v45];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v78 objects:v88 count:16];
        }

        while (v40);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v46 = [v64[7] allKeys];
      v47 = [v46 countByEnumeratingWithState:&v74 objects:v87 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v75;
        do
        {
          for (k = 0; k != v48; k = k + 1)
          {
            if (*v75 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v74 + 1) + 8 * k);
            if (([v37 containsObject:v51] & 1) == 0)
            {
              v52 = [NSNumber numberWithInteger:1];
              [v64[7] setObject:v52 forKeyedSubscript:v51];
            }

            if ([v37 containsObject:v51])
            {
              [v64[7] setObject:&off_100382460 forKeyedSubscript:v51];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v74 objects:v87 count:16];
        }

        while (v48);
      }

      v32 = v62;
      v33 = v64;
      v35 = v63;
    }

    else
    {
      if (v35)
      {
        v53 = v35;
      }

      else
      {
        v53 = v32;
      }

      v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v53 code]);
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v37 = v64[8];
      v54 = [v37 countByEnumeratingWithState:&v70 objects:v86 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v71;
        do
        {
          for (m = 0; m != v55; m = m + 1)
          {
            if (*v71 != v56)
            {
              objc_enumerationMutation(v37);
            }

            v58 = [*(*(&v70 + 1) + 8 * m) objectForKey:@"raw-id"];
            [v64[7] setObject:v38 forKey:v58];
          }

          v55 = [v37 countByEnumeratingWithState:&v70 objects:v86 count:16];
        }

        while (v55);
      }
    }
  }

  if (v66)
  {
    v59 = +[GKReporter reporter];
    [v59 reportEvent:GKReporterDomainInvite type:GKReporterInviteFail];
  }

  [v33[9] setInvitedUserIDs:v33[7]];
  [v33[9] setPlayerTokenMap:v68];
  [v33[10] setObject:v33[9] forKeyedSubscript:@"inviteResponse"];
  [v33[10] setError:v32];
  (*(v33[11] + 2))();
}

void sub_1000D5570(uint64_t a1)
{
  v2 = +[GKReporter reporter];
  [v2 reportEvent:GKReporterDomainInvite type:GKReporterInviteInitiate];

  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"inviteResponse"];
    v4 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, v5, v4);
  }
}

void removePlayersFromGameInviteV2(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Remove players from game inviteV2: %@", buf, 0xCu);
  }

  v10 = [v5 inviteSession];
  v11 = [v10 sessionToken];
  v12 = dispatch_group_create();
  v13 = v12;
  if (v10 && v11)
  {
    dispatch_group_enter(v12);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000D5898;
    v18[3] = &unk_100361FE0;
    v19 = v6;
    v20 = v10;
    v21 = v11;
    v22 = v5;
    v23 = v13;
    [v20 performAsync:v18];
  }

  v14 = [v5 replyQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D5BD8;
  v16[3] = &unk_100360FA0;
  v17 = v7;
  v15 = v7;
  dispatch_group_notify(v13, v14, v16);
}

void sub_1000D5898(uint64_t a1)
{
  v1 = a1;
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(v1 + 32);
  v22 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v22)
  {
    v20 = v1;
    v21 = *v30;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v29 + 1) + 8 * i);
        v5 = [*(v1 + 40) referencesForInvitee:v4];
        if ([v5 count])
        {
          v23 = v5;
          v24 = i;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v6 = v5;
          v7 = [v6 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v26;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v26 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v25 + 1) + 8 * j);
                v35[0] = @"id";
                v12 = [v4 playerID];
                v35[1] = @"push-token";
                v36[0] = v12;
                v36[1] = v11;
                v13 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
                [v2 addObject:v13];
              }

              v8 = [v6 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v8);
          }

          v1 = v20;
          [*(v20 + 40) removeInvitee:v4 reference:0];
          v5 = v23;
          i = v24;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v22);
  }

  if ([v2 count])
  {
    v14 = *(v1 + 48);
    v33[0] = @"session-token";
    v33[1] = @"peers";
    v34[0] = v14;
    v34[1] = v2;
    v33[2] = @"reason";
    v15 = [NSNumber numberWithInteger:0];
    v34[2] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];

    v17 = +[GKNetworkRequestManager commonNetworkRequestManager];
    [v17 issueRequest:v16 bagKey:@"gk-invitation-cancel" clientProxy:*(v1 + 56) handler:&stru_100365C68];

    v18 = +[GKReporter reporter];
    [v18 reportEvent:GKReporterDomainInvite type:GKReporterInviteUninvite];
  }

  dispatch_group_leave(*(v1 + 64));
}

uint64_t sub_1000D5BD8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000D5E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000D5F74;
    v6[3] = &unk_100360FC8;
    v7 = v5;
    v8 = *(a1 + 40);
    v9 = v4;
    [v7 performAsync:v6];
  }

  else
  {
    (*(v3 + 2))(v3);
  }
}

void sub_1000D5F74(uint64_t a1)
{
  v2 = [*(a1 + 32) allInvitees];
  if ([v2 count])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000D604C;
    v4[3] = &unk_100360FA0;
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    removePlayersFromGameInviteV2(v3, v2, v4);
  }

  else
  {
    [*(a1 + 32) removeAllInvitees];
    [*(a1 + 32) removeAllResponses];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_1000D605C(uint64_t a1)
{
  v2 = +[GKReporter reporter];
  [v2 reportEvent:GKReporterDomainInvite type:GKReporterInviteCancel];

  [*(a1 + 32) deleteInviteSession];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000D67D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[MultiplayerGroupList _gkFetchRequest];
  v8 = [NSManagedObject _gkRetrieveCleanEntry:v6 request:v7];

  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v10 = [v9 relatedTasksExistForBagKey:@"gk-get-player-groups"];

  v11 = &off_1002C2000;
  if (!v8 || (([v8 expirationDate], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v8, "_gkIsExpired:", v12), v12, v13) ? (v14 = v10 == 2) : (v14 = 0), v14))
  {
    v23 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v24 = [*(a1 + 32) clientProxy];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000D6B88;
    v34[3] = &unk_100364BF0;
    v35 = *(a1 + 48);
    v25 = v7;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v39 = v5;
    [v23 issueRequest:&__NSDictionary0__struct bagKey:@"gk-get-player-groups" clientProxy:v24 handler:v34];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v17 = v10 != 2;
      v18 = v16;
      v19 = [v8 expirationDate];
      v20 = [v8 entries];
      v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
      v22 = [NSNumber numberWithBool:v17];
      *buf = 138412802;
      v41 = v19;
      v42 = 2112;
      v43 = v21;
      v44 = 2112;
      v45 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "getMultiPlayerGroups using cache: %@ %@ storeAndForwardActiveUseCache: %@", buf, 0x20u);

      v11 = &off_1002C2000;
    }

    [*(a1 + 32) convertToInternalObjects:v8 results:*(a1 + 40)];
    v5[2](v5);
  }

  v28 = *(a1 + 48);
  v29 = [*(a1 + 32) clientProxy];
  v30 = [v29 replyQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = *(v11 + 304);
  v31[2] = sub_1000D7158;
  v31[3] = &unk_100360EB0;
  v33 = *(a1 + 56);
  v32 = *(a1 + 48);
  [v28 notifyOnQueue:v30 block:v31];
}

void sub_1000D6B88(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  [*(a1 + 32) setError:v8];
  if (!v7 || v8)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "getMultiPlayerGroups error: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D6D40;
    v15[3] = &unk_100365C90;
    v9 = *(a1 + 32);
    v16 = *(a1 + 40);
    v10 = v7;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v17 = v10;
    v18 = v11;
    v21 = a4;
    v19 = v12;
    v20 = *(a1 + 64);
    [v9 performOnManagedObjectContext:v15];
  }
}

void sub_1000D6D40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v29 = a3;
  v35 = a1;
  v33 = v5;
  v34 = [NSManagedObject _gkRetrieveCleanEntry:v5 request:*(a1 + 32)];
  if (!v34)
  {
    v6 = [MultiplayerGroupList alloc];
    v7 = +[MultiplayerGroupList entity];
    v34 = [(MultiplayerGroupList *)v6 initWithEntity:v7 insertIntoManagedObjectContext:v33];
  }

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [(MultiplayerGroupList *)v34 expirationDate];
    v12 = [(MultiplayerGroupList *)v34 entries];
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
    *buf = 138412546;
    v43 = v11;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "getMultiPlayerGroups from server: %@ %@", buf, 0x16u);
  }

  v14 = [*(v35 + 40) objectForKey:@"groups"];
  v32 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v14;
  v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v36)
  {
    v31 = *v38;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"participants"];
        v18 = [v16 objectForKeyedSubscript:@"played-at"];
        v19 = [v18 longValue];
        v20 = [v16 objectForKeyedSubscript:@"player-group-id"];
        v21 = [v16 objectForKeyedSubscript:@"properties"];
        v22 = [v21 objectForKeyedSubscript:@"numberOfAutomatched"];
        v23 = [v22 integerValue];
        v24 = *(v35 + 48);
        v25 = [NSSet setWithArray:v17];
        v26 = [v24 ensureGroup:v20 participants:v25 playedAt:v19 numberOfAutomatched:v23 moc:v33 list:v34];

        [v32 addObject:v26];
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v36);
  }

  v27 = [NSDate dateWithTimeIntervalSinceNow:*(v35 + 72)];
  [(MultiplayerGroupList *)v34 setExpirationDate:v27];
  v28 = [(MultiplayerGroupList *)v34 entries];
  [(MultiplayerGroupList *)v34 removeEntries:v28];

  [(MultiplayerGroupList *)v34 addEntries:v32];
  [*(v35 + 48) convertToInternalObjects:v34 results:*(v35 + 56)];
  v29[2](v29);
  (*(*(v35 + 64) + 16))();
}

void sub_1000D7158(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000D7578(uint64_t a1)
{
  v4 = +[MultiplayerGroupList _gkFetchRequest];
  v2 = [NSManagedObject _gkRetrieveCleanEntry:*(a1 + 32) request:v4];
  v3 = [*(a1 + 40) ensureGroup:*(a1 + 48) participants:*(a1 + 56) playedAt:*(a1 + 64) numberOfAutomatched:*(a1 + 72) moc:*(a1 + 32) list:v2];
  [*(a1 + 32) _gkSafeSave];
}

void sub_1000D760C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKMultiplayerGroupRequest successfully registered with store and forward", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000D799C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDataRequestManager sharedManager];
  v5 = +[GKPreferences shared];
  v6 = [v5 forceRelay];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D7AE0;
  v13[3] = &unk_100365D08;
  v12 = *(a1 + 32);
  v7 = *(&v12 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v14 = v12;
  v15 = v10;
  v17 = v3;
  v16 = *(a1 + 64);
  v11 = v3;
  [v4 getValidNATTypeWithForceRelay:v6 withHandler:v13];
}

void sub_1000D7AE0(id *a1, unsigned __int8 a2)
{
  v4 = +[NSMutableData data];
  v5 = [a1[4] clientProxy];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 dataUsingEncoding:4];
  [v4 appendData:v7];

  if ([a1[5] version])
  {
    [v4 appendBytes:&unk_1002C2A50 length:1];
    v8 = +[GKPreferences shared];
    v9 = [v8 maximumInviteVersionSupported];

    v38 = v9;
    [v4 appendBytes:&v38 length:1];
  }

  v41 = @"s";
  v42 = v4;
  v29 = v4;
  v10 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v28 = [NSMutableDictionary dictionaryWithDictionary:v10];

  v39[0] = @"session-token";
  v11 = [a1[5] sessionToken];
  v40[0] = v11;
  v39[1] = @"self-nat-type";
  v12 = [NSNumber numberWithUnsignedChar:a2];
  v40[1] = v12;
  v39[2] = @"peer-id";
  v13 = [a1[5] peerID];
  v40[2] = v13;
  v39[3] = @"peer-push-token";
  v14 = [a1[5] peerPushToken];
  v40[3] = v14;
  v39[4] = @"peer-nat-type";
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1[5] peerNATType]);
  v40[4] = v15;
  v39[5] = @"peer-nat-ip";
  v16 = [a1[5] peerNATIP];
  v40[5] = v16;
  v39[6] = @"peer-blob";
  v17 = [a1[5] peerBlob];
  v40[6] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:7];
  v19 = [NSMutableDictionary dictionaryWithDictionary:v18];

  [a1[6] enrichServerRequestWithConnectionData:v19];
  v20 = +[GKDataRequestManager sharedManager];
  v21 = [v20 pushToken];

  if (v21)
  {
    [v19 setObject:v21 forKey:@"self-push-token"];
  }

  v22 = a1[4];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000D7ECC;
  v30[3] = &unk_100365CE0;
  v23 = a1[6];
  v31 = a1[7];
  v37 = a1[9];
  v32 = a1[8];
  v33 = v28;
  v24 = a1[4];
  v25 = a1[5];
  v34 = v19;
  v35 = v24;
  v36 = v25;
  v26 = v19;
  v27 = v28;
  [v22 fetchPseudonymIfNeededWithTransportContext:v23 withCompletionHandler:v30];
}

void sub_1000D7ECC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) setError:a3];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    [*(a1 + 40) setSelfPseudonym:v5];
    [*(a1 + 48) setObject:v5 forKey:GKTransportPseudonymKey];
    [*(a1 + 56) setObject:*(a1 + 48) forKey:@"client-data"];
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 56);
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Created data request for gk-invitation-accept request: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000D80B8;
    v12[3] = &unk_100361BF8;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v13 = v10;
    v14 = v11;
    v15 = *(a1 + 40);
    v16 = *(a1 + 72);
    v17 = *(a1 + 32);
    [v9 perform:v12];
    (*(*(a1 + 80) + 16))();
  }
}

void sub_1000D80B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D81D4;
  v8[3] = &unk_1003635D8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = v3;
  v7 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-invitation-accept" clientProxy:v6 handler:v8];
}

uint64_t sub_1000D81D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResponsePlist:a2];
  v7 = [*(a1 + 40) sessionID];
  [*(a1 + 32) setSessionID:v7];

  v8 = [*(a1 + 40) transportVersionToUse];
  [*(a1 + 32) setTransportVersionToUse:v8];

  [*(a1 + 48) setObject:*(a1 + 32) forKeyedSubscript:@"acceptResponse"];
  [*(a1 + 48) setError:v6];

  v9 = *(*(a1 + 56) + 16);

  return v9();
}

void sub_1000D8298(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"acceptResponse"];
    v4 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v3, v4);
  }

  v5 = +[GKReporter reporter];
  [v5 reportEvent:GKReporterDomainInvite type:GKReporterInviteAcceptApp];
}

uint64_t sub_1000D862C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000D872C(uint64_t a1)
{
  v2 = [GKDispatchGroup dispatchGroupWithName:@"getAcceptedGameInvite"];
  v3 = [*(a1 + 32) clientProxy];
  v4 = [v3 gameDescriptor];
  v5 = +[GKBulletinController sharedController];
  v6 = [v5 acceptedInviteManager];
  v7 = [v6 multiplayerInviteForGame:v4];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000CCBD8;
  v21[4] = sub_1000CCBE8;
  v22 = 0;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKMatchMaker invite manager and bullentin are set", buf, 2u);
    }

    v10 = [v7 originatorPlayer];

    if (!v10)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000D89F8;
      v18[3] = &unk_100361620;
      v19 = v7;
      [v2 perform:v18];
    }

    v11 = [v3 replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D8AA0;
    v13[3] = &unk_100365D30;
    v14 = v7;
    v17 = v21;
    v16 = *(a1 + 40);
    v15 = v5;
    [v2 notifyOnQueue:v11 block:v13];
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, 0);
    }
  }

  _Block_object_dispose(v21, 8);
}

void sub_1000D89E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D89F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8A90;
  v6[3] = &unk_100361CB8;
  v7 = v3;
  v5 = v3;
  [v4 loadOriginatorPlayerWithCompletionHandler:v6];
}

void sub_1000D8AA0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [GKInviteInternal inviteWithBulletin:?];
    v3 = [*(a1 + 32) declineReason];

    if (v3)
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      v5 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found a declined invite due to incompatible transport version.", &v8, 2u);
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    }
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 48))
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKGetAcceptedInviteHandler invite: %@", &v8, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 40) withdrawBulletin:?];
  }
}

void sub_1000D8EE8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [v2 gameDescriptor];
  v4 = [*(a1 + 40) context];
  v10 = [GKGameCacheObject gameForGameDescriptor:v3 context:v4];

  v5 = [NSPredicate predicateWithFormat:@"game = %@", v10];
  v6 = [*(a1 + 40) context];
  v7 = [(GKCacheObject *)GKPlayerToInviteCacheObject objectsMatchingPredicate:v5 context:v6];

  v8 = [v7 _gkMapWithBlock:&stru_100365D70];
  if ([v8 count])
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:@"players"];
  }

  v9 = [*(a1 + 40) context];
  [v9 _gkDeleteObjects:v7];
}

void sub_1000D9048(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"players"];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_1000D91E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D91F8(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionToken];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1000D95B8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = 0;
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = &stru_100374F10;
  }

  v4 = [(__CFString *)v3 dataUsingEncoding:4];
  v5 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v4 length] + 2);
  [v5 appendBytes:&v47 length:1];
  [v5 appendBytes:&v46 length:1];
  v39 = v4;
  [v5 appendData:v4];
  [v5 appendBytes:&unk_1002C2A50 length:1];
  v6 = +[GKPreferences shared];
  v7 = [v6 maximumInviteVersionSupported];

  v45 = v7;
  [v5 appendBytes:&v45 length:1];
  v58[0] = *(a1 + 40);
  v57[0] = @"B";
  v57[1] = @"A";
  v8 = [GKViceroyNATConfiguration externalAddressForSelfConnectionData:?];
  v58[1] = v8;
  v57[2] = @"N";
  v9 = [NSNumber numberWithUnsignedChar:v47];
  v58[2] = v9;
  v57[3] = @"i";
  v10 = [*(a1 + 48) clientProxy];
  v11 = [v10 bundleIdentifier];
  v58[3] = v11;
  v57[4] = @"v";
  v12 = [*(a1 + 48) clientProxy];
  v13 = [v12 bundleVersion];
  v57[5] = @"s";
  v58[4] = v13;
  v58[5] = v5;
  v14 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:6];

  v38 = v14;
  v15 = [v14 mutableCopy];
  v16 = [*(a1 + 48) clientProxy];
  v17 = [v16 bundleShortVersion];

  if (v17)
  {
    v18 = [*(a1 + 48) clientProxy];
    v19 = [v18 bundleShortVersion];
    [v15 setObject:v19 forKeyedSubscript:@"V"];
  }

  v20 = v15;
  v56[0] = *(a1 + 56);
  v55[0] = @"session-token";
  v55[1] = @"self-push-token";
  v21 = +[GKDataRequestManager sharedManager];
  v22 = [v21 pushToken];
  v23 = v22;
  if (!v22)
  {
    v23 = +[NSData data];
  }

  v56[1] = v23;
  v55[2] = @"reason";
  v24 = [NSNumber numberWithInt:2];
  v56[2] = v24;
  v55[3] = @"peers";
  v52[0] = @"id";
  v25 = [*(a1 + 64) playerID];
  v52[1] = @"push-token";
  v53[0] = v25;
  v53[1] = *(a1 + 72);
  v26 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
  v54 = v26;
  v27 = [NSArray arrayWithObjects:&v54 count:1];
  v55[4] = @"client-data";
  v56[3] = v27;
  v56[4] = v20;
  v37 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:5];

  if (!v22)
  {
  }

  v28 = [[GKInviteSession alloc] initWithSessionToken:*(a1 + 56)];
  if (!os_log_GKGeneral)
  {
    v29 = GKOSLoggers();
  }

  v30 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v31 = v30;
    v32 = [(GKInviteSession *)v28 sessionToken];
    *buf = 134218242;
    v49 = v28;
    v50 = 2112;
    v51 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "SendReconnectInvitation: created a new GKInviteSession(%p): %@", buf, 0x16u);
  }

  v33 = [*(a1 + 48) clientProxy];
  [v33 setInviteSession:v28];

  v34 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v35 = [*(a1 + 48) clientProxy];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000D9B74;
  v40[3] = &unk_1003635D8;
  v41 = v28;
  v42 = *(a1 + 64);
  v43 = *(a1 + 72);
  v44 = *(a1 + 80);
  v36 = v28;
  [v34 issueRequest:v37 bagKey:@"gk-invitation-send" clientProxy:v35 handler:v40];
}

void sub_1000D9B74(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) addInvitee:*(a1 + 40) reference:*(a1 + 48)];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1000DA304(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serverRepresentation];
  [v2 addObject:v3];
}

void sub_1000DA35C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serverRepresentation];
  [v2 addObject:v3];
}

void sub_1000DA3B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Invitation send done. plist: %@, error: %@", &v10, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

void sub_1000DA9E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028CB48();
    }
  }
}

void sub_1000DAA74(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 requesterPlayerID];
  v10 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v8 inManagedObjectContext:v7];

  v9 = [v10 alias];
  [*(a1 + 40) setResult:v9];

  v6[2](v6);
}

void sub_1000DAB44(id *a1)
{
  v2 = [a1[4] result];
  if (v2)
  {
    v3 = [a1[4] result];
  }

  else
  {
    v3 = @"RemotePlayer";
  }

  v4 = [a1[5] radarID];

  if (v4)
  {
    v26[0] = GKTTRBulletinKeyRadarID;
    v5 = [a1[5] radarID];
    v26[1] = GKTTRBulletinKeyRequesterPlayerAlias;
    v27[0] = v5;
    v27[1] = v3;
    v6 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

    [a1[6] setObject:v6 forKeyedSubscript:@"client-data"];
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v10 = a1[6];
      v9 = a1[7];
      v11 = v8;
      v12 = [v9 clientProxy];
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sending TTRLogs with request: %@, self.clientProxy: %@", buf, 0x16u);
    }

    v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v14 = a1[6];
    v15 = [a1[7] clientProxy];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DAE64;
    v20[3] = &unk_1003615D8;
    v21 = a1[8];
    [v13 issueRequest:v14 bagKey:@"gk-invitation-send" clientProxy:v15 handler:v20];
  }

  else
  {
    v16 = GKInternalErrorDomain;
    v28 = @"reason";
    v17 = [a1[5] radarID];
    v18 = [NSString stringWithFormat:@"Invalid GKTTRLogRequestInfo(radarID: %@, requesterAlias: %@)", v17, v3];
    v29 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v6 = [NSError errorWithDomain:v16 code:900 userInfo:v19];

    (*(a1[8] + 2))();
  }
}

void sub_1000DAE64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "TTRLogs send is done. plist: %@, error: %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000DB150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) clientProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DB244;
  v9[3] = &unk_1003627C8;
  v10 = *(a1 + 56);
  v11 = v3;
  v8 = v3;
  [v4 issueRequest:v5 bagKey:v6 clientProxy:v7 handler:v9];
}

uint64_t sub_1000DB244(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"result"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000DB2BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

void sub_1000DB434(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) mutableCopy];
  v5 = +[GKDataRequestManager sharedManager];
  v6 = [v5 pushToken];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"self-push-token"];
  }

  v7 = [NSNumber numberWithInteger:a2];
  [v4 setObject:v7 forKey:@"self-nat-type"];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "relayInit serverRequest:%@", &v11, 0xCu);
  }

  [*(a1 + 40) _performRelayAction:@"gk-invitation-relay-initiate" request:v4 handler:*(a1 + 48)];
  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainRelay type:GKReporterRelayInitiate];
}

void sub_1000DB6B0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) mutableCopy];
  v5 = +[GKDataRequestManager sharedManager];
  v6 = [v5 pushToken];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"self-push-token"];
  }

  v7 = [NSNumber numberWithInteger:a2];
  [v4 setObject:v7 forKey:@"self-nat-type"];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "relayUpdate serverRequest:%@", &v11, 0xCu);
  }

  [*(a1 + 40) _performRelayAction:@"gk-invitation-relay-update" request:v4 handler:*(a1 + 48)];
  v10 = +[GKReporter reporter];
  [v10 reportEvent:GKReporterDomainRelay type:GKReporterRelayUpdate];
}

void sub_1000DBB94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v4 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v2 inManagedObjectContext:v3];

  [v4 setAvailablePieces:{objc_msgSend(v4, "availablePieces") | 1}];
  v5 = [NSDate dateWithTimeIntervalSinceNow:600.0];
  [v4 setExpirationDate:v5];

  v6 = [*(a1 + 48) objectForKey:@"alias"];
  [v4 setAlias:v6];

  v7 = [*(a1 + 48) objectForKey:@"photos"];
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = [v4 updateImagesWithImageURLs:v8];
  }

  v33 = v8;
  v34 = a1;
  v35 = v4;
  v10 = [*(a1 + 48) objectForKey:@"photoData"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    v14 = NSCocoaErrorDomain;
    v36 = v10;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [v10 objectForKey:v16];
        if (v17)
        {
          v18 = [NSURL URLWithString:v16];
          v19 = GKImageCachePathForURL();

          v20 = [v16 lastPathComponent];
          v21 = [v19 stringByAppendingPathComponent:v20];

          v22 = +[NSFileManager defaultManager];
          v37 = 0;
          [v22 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v37];
          v23 = v37;

          if (v23)
          {
            v24 = [v23 domain];
            if (([v24 isEqual:v14] & 1) == 0)
            {

              goto LABEL_16;
            }

            v25 = v12;
            v26 = v13;
            v27 = v14;
            v28 = [v23 code];

            v29 = v28 == 516;
            v14 = v27;
            v13 = v26;
            v12 = v25;
            v10 = v36;
            if (!v29)
            {
LABEL_16:
              if (!os_log_GKGeneral)
              {
                v30 = GKOSLoggers();
              }

              v31 = os_log_GKMatch;
              if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v43 = v23;
                _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "GKMultiplayerMatchService error while trying to create path error/warning while updating cache with nearby: %@", buf, 0xCu);
              }
            }
          }

          [v17 writeToFile:v21 atomically:1];
          _gkMarkFileAsPurgeable();
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = [v35 internalRepresentation];
  [*(v34 + 40) setResult:v32];
}
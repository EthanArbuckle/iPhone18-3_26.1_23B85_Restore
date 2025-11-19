void sub_100096254(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v36 = a3;
  v6 = +[GKCDGameFriendList _gkFetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"bundleID == %@", *(a1 + 32)];
  [v6 setPredicate:v7];

  v8 = *(a1 + 40);
  v46 = 0;
  v35 = v6;
  v9 = [v8 executeFetchRequest:v6 error:&v46];
  v34 = v46;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v5 deleteObject:*(*(&v42 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v12);
  }

  v33 = v10;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 48);
  v15 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      v18 = 0;
      do
      {
        v19 = a1;
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v38 + 1) + 8 * v18);
        v21 = [GKCDGameFriend alloc];
        v22 = +[GKCDGameFriend entity];
        v23 = [(GKCDGameFriend *)v21 initWithEntity:v22 insertIntoManagedObjectContext:v5];

        v24 = [v20 objectForKeyedSubscript:@"player-id"];
        [(GKCDGameFriend *)v23 setPlayerID:v24];

        a1 = v19;
        [*(v19 + 56) addObject:v23];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v16);
  }

  v25 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 80)];
  v26 = [GKCDGameFriendList alloc];
  v27 = +[GKCDGameFriendList entity];
  v28 = [(GKCDGameFriendList *)v26 initWithEntity:v27 insertIntoManagedObjectContext:*(a1 + 40)];

  [(GKCDGameFriendList *)v28 setExpirationDate:v25];
  [(GKCDGameFriendList *)v28 setBundleID:*(a1 + 32)];
  if ([*(a1 + 56) count])
  {
    v29 = [*(a1 + 56) copy];
    [(GKCDGameFriendList *)v28 setEntries:v29];

    v30 = *(a1 + 72);
    v31 = [(GKCDGameFriendList *)v28 entries];
    v32 = (*(v30 + 16))(v30, v31);
    [*(a1 + 64) setResult:v32];
  }

  v36[2](v36);
}

void sub_1000965F8(uint64_t a1)
{
  v4 = [*(a1 + 32) result];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

NSString *__cdecl sub_100096A08(id a1, NSString *a2, unint64_t a3)
{
  v3 = a2;
  v9 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 fetchingPlaceholder:0 error:&v9];
  v5 = v4;
  if (v4)
  {
    if ([v4 isGameCenterEnabled])
    {
      v6 = v3;
      goto LABEL_9;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_10028AC80();
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

void sub_100096AE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v26 = a3;
  v6 = +[GKCDLoadedGame _gkFetchRequest];
  v24 = [NSPredicate predicateWithFormat:@"bundleId IN %@", *(a1 + 32)];
  [v6 setPredicate:?];
  v25 = v6;
  v7 = [NSManagedObject _gkObjectsFromFetchRequest:v6 withContext:v5];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 40);
        v13 = [*(*(&v31 + 1) + 8 * v11) bundleId];
        [v12 removeObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v23 = v7;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * v18);
        v20 = [GKCDLoadedGame alloc];
        v21 = +[GKCDLoadedGame entity];
        v22 = [(GKCDLoadedGame *)v20 initWithEntity:v21 insertIntoManagedObjectContext:v5];

        [(GKCDLoadedGame *)v22 setBundleId:v19];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  [*(a1 + 48) setResult:*(a1 + 40)];
  v26[2](v26);
}

void sub_100096D78(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  if ([v2 count] && *(a1 + 40))
  {
    v3 = *(a1 + 48);
    v9 = *(a1 + 40);
    v4 = [NSArray arrayWithObjects:&v9 count:1];
    v5 = [v2 allObjects];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100096EC4;
    v7[3] = &unk_100362408;
    v6 = *(a1 + 64);
    v7[4] = *(a1 + 56);
    v8 = v6;
    [v3 loadScopedPlayerIDs:v4 gameBundleIDs:v5 handler:v7];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100096EC4(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v7 = [a2 firstObject];
  v8 = v7;
  if (!v7)
  {
    v3 = [*(a1 + 32) credential];
    v4 = [v3 playerInternal];
    v8 = [v4 scopedIDs];
  }

  v9 = [*(a1 + 32) credential];
  v10 = [v9 playerInternal];
  [v10 setScopedIDs:v8];

  if (!v7)
  {
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009725C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 643, "[GKGameServicePrivate submitFriendListAccess:value:handler:]_block_invoke"];
    v6 = [v4 transactionGroupBypassingMultiUserWithName:v5];

    [v6 performOnManagedObjectContext:&stru_100363788];
    v7 = [*(a1 + 32) clientProxy];
    v8 = [v7 replyQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100097524;
    v9[3] = &unk_100360FA0;
    v10 = *(a1 + 40);
    [v6 notifyOnQueue:v8 block:v9];
  }
}

void sub_1000973B4(id a1, NSManagedObjectContext *a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[GKCDGameAccessList _gkFetchRequest];
  v18 = 0;
  v7 = [(NSManagedObjectContext *)v4 executeFetchRequest:v6 error:&v18];
  v8 = v18;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSManagedObjectContext *)v4 deleteObject:*(*(&v14 + 1) + 8 * v13), v14];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }

  v5[2](v5);
}

void sub_100097708(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v32 = a3;
  if (*(a1 + 32) && *(a1 + 56))
  {
    v30 = a1;
    v5 = [*(a1 + 48) cachedGamesPlayed:? context:?];
    v31 = v5;
    if (v5 && ([v5 expirationDate], v6 = objc_claimAutoreleasedReturnValue(), v7 = v31, v8 = objc_msgSend(v31, "_gkIsExpired:", v6), v6, !v8))
    {
      v35 = objc_alloc_init(NSMutableArray);
      if (!os_log_GKGeneral)
      {
        v19 = GKOSLoggers();
        v7 = v31;
      }

      v20 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "getGamesPlayedMetaData using cache", buf, 2u);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = [v7 entries];
      v21 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
      if (v21)
      {
        v22 = 0;
        v23 = 0;
        v24 = *v37;
        do
        {
          v25 = 0;
          v26 = v22;
          v27 = v23;
          do
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v36 + 1) + 8 * v25);
            v23 = [[GKGameInternal alloc] initWithCacheObject:v28];

            v22 = [GKGameRecordInternal gameRecordForGame:v23];

            v29 = [v28 timeStamp];
            [v22 setLastPlayedDate:v29];

            [v35 addObject:v22];
            v25 = v25 + 1;
            v26 = v22;
            v27 = v23;
          }

          while (v21 != v25);
          v21 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
        }

        while (v21);
      }

      [v30[5] setResult:v35];
      v32[2]();
    }

    else
    {
      v9 = v30[4];
      v51 = @"requested-player-id";
      v52 = v9;
      v35 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *buf = 0;
      v47 = buf;
      v48 = 0x2020000000;
      v10 = +[NSDate date];
      [v10 timeIntervalSince1970];
      v12 = v11;

      v49 = v12;
      v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
      v14 = [v30[6] clientProxy];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100097B74;
      v40[3] = &unk_100363800;
      v45 = buf;
      v15 = v30[5];
      v16 = v30[6];
      v41 = v15;
      v42 = v16;
      v43 = v30[4];
      v44 = v32;
      [v13 issueRequest:v35 bagKey:@"gk-get-games-played-metadata" clientProxy:v14 handler:v40];

      _Block_object_dispose(buf, 8);
    }

    v18 = v32;
  }

  else
  {
    v17 = [NSError userErrorForCode:8 underlyingError:0];
    [*(a1 + 40) setError:v17];

    v18 = v32;
    (v32[2])(v32);
  }
}

void sub_100097B74(void *a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v35 = v11;
  v12 = [NSDate dateWithTimeIntervalSinceNow:a4];
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKDaemon;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [NSNumber numberWithDouble:v33[3] - *(*(a1[8] + 8) + 24)];
    *buf = 138412290;
    v37 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "getGamesPlayedMetaData perf server:%@", buf, 0xCu);
  }

  v16 = a1[4];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100097E08;
  v22[3] = &unk_1003637D8;
  v23 = v16;
  v17 = v8;
  v24 = v17;
  v18 = v7;
  v29 = a1[8];
  v19 = a1[5];
  v20 = a1[6];
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v21 = v12;
  v31 = a4;
  v28 = v21;
  v30 = &v32;
  [v23 performOnManagedObjectContext:v22];
  (*(a1[7] + 16))();

  _Block_object_dispose(&v32, 8);
}

void sub_100097DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100097E08(uint64_t a1, void *a2, void *a3)
{
  v62 = a2;
  v5 = a3;
  [*(a1 + 32) setError:*(a1 + 40)];
  if (*(a1 + 48) && !*(a1 + 40))
  {
    v60 = v5;
    v9 = +[NSDate date];
    [v9 timeIntervalSince1970];
    *(*(*(a1 + 80) + 8) + 24) = v10;

    v11 = [*(a1 + 48) objectForKeyedSubscript:@"results"];
    v66 = objc_alloc_init(NSMutableArray);
    v12 = [*(a1 + 56) cachedGamesPlayed:*(a1 + 64) context:v62];
    if (!v12)
    {
      v13 = [GamesPlayed alloc];
      v14 = +[GamesPlayed entity];
      v12 = [(GamesPlayed *)v13 initWithEntity:v14 insertIntoManagedObjectContext:v62];

      [(GamesPlayed *)v12 setPlayerID:*(a1 + 64)];
    }

    v61 = v12;
    [(GamesPlayed *)v12 setExpirationDate:*(a1 + 72)];
    v68 = objc_alloc_init(NSMutableSet);
    v65 = objc_alloc_init(NSMutableDictionary);
    v15 = objc_alloc_init(NSMutableSet);
    v71 = objc_alloc_init(NSMutableDictionary);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v81;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v81 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v80 + 1) + 8 * i) objectForKeyedSubscript:@"game-metadata"];
          v22 = [v21 objectForKeyedSubscript:@"bundle-id"];

          if (v22)
          {
            [v15 addObject:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v18);
    }

    v23 = [NSPredicate predicateWithFormat:@"bundleID IN %@", v15];
    v24 = [(GKCacheObject *)GKGameCacheObject fetchRequestForContext:v62];
    v58 = v23;
    [v24 setPredicate:v23];
    v57 = v24;
    [v62 executeFetchRequest:v24 error:0];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v79 = 0u;
    v25 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v77;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v77 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v76 + 1) + 8 * j);
          v30 = [v29 bundleID];
          [v71 setObject:v29 forKeyedSubscript:v30];
        }

        v26 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v26);
    }

    v59 = v15;
    v67 = a1;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v64 = v16;
    v70 = [v64 countByEnumeratingWithState:&v72 objects:v88 count:16];
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (v70)
    {
      v69 = *v73;
      do
      {
        for (k = 0; k != v70; k = k + 1)
        {
          if (*v73 != v69)
          {
            objc_enumerationMutation(v64);
          }

          v35 = *(*(&v72 + 1) + 8 * k);
          v36 = [v35 objectForKeyedSubscript:@"game-metadata"];
          v37 = [v36 objectForKeyedSubscript:@"bundle-id"];

          if (v37)
          {
            v38 = [v71 objectForKeyedSubscript:v37];

            if (!v38)
            {
              v38 = [[GKGameCacheObject alloc] initWithContext:v62];
            }

            v39 = [v35 objectForKeyedSubscript:@"game-metadata"];
            v40 = [NSDate dateWithTimeIntervalSinceNow:*(v67 + 96)];
            [(GKGameCacheObject *)v38 updateWithServerRepresentation:v39 expirationDate:v40];

            [(GKGameCacheObject *)v38 setBundleID:v37];
            v41 = [v35 objectForKeyedSubscript:@"timestamp"];
            v42 = [NSDate _gkDateFromServerTimestamp:v41];
            [(GKGameCacheObject *)v38 setTimeStamp:v42];

            [v68 addObject:v38];
            v43 = [(GKGameCacheObject *)v38 adamID];
            [v65 setObject:v38 forKeyedSubscript:v43];

            v44 = [[GKGameInternal alloc] initWithCacheObject:v38];
            v45 = [GKGameRecordInternal gameRecordForGame:v44];

            v46 = [(GKGameCacheObject *)v38 timeStamp];
            [v45 setLastPlayedDate:v46];

            [v66 addObject:v45];
            v31 = v38;
            v32 = v44;
            v33 = v45;
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v47 = GKOSLoggers();
            }

            v48 = os_log_GKDaemon;
            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v35;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "game-metadata/bundle-id missing for game: %@", buf, 0xCu);
            }
          }
        }

        v70 = [v64 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v70);
    }

    v49 = +[NSDate date];
    [v49 timeIntervalSince1970];
    *(*(*(v67 + 88) + 8) + 24) = v50;

    [(GamesPlayed *)v61 setEntries:v68];
    if (!os_log_GKGeneral)
    {
      v51 = GKOSLoggers();
    }

    v52 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v53 = *(*(*(v67 + 88) + 8) + 24) - *(*(*(v67 + 80) + 8) + 24);
      v54 = v52;
      v55 = [NSNumber numberWithDouble:v53];
      v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v64 count]);
      *buf = 138412546;
      v85 = v55;
      v86 = 2112;
      v87 = v56;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "getGamesPlayedMetaData perf cache time:%@ results %@", buf, 0x16u);
    }

    [*(v67 + 32) setResult:v66];
    v5 = v60;
    v60[2](v60);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v85 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Error: %@", buf, 0xCu);
    }

    [*(a1 + 32) setError:*(a1 + 40)];
    v5[2](v5);
  }
}

void sub_10009867C(uint64_t a1)
{
  v4 = [*(a1 + 32) result];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10009898C(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1[4])
  {
    v6 = [GKCachingUtils ensureGamesPlayedList:a2 playerID:?];
    v7 = [a1[6] longValue];
    v8 = [v6 expirationDate];
    if (([v6 _gkIsExpired:v8] & 1) == 0)
    {
      v9 = [v6 withinSecs];
      if ([v9 longValue])
      {
        v10 = [v6 withinSecs];
        if (v7 > [v10 longValue])
        {

          goto LABEL_6;
        }

        v23 = a1[6];

        if (!v23 || !v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      if (!os_log_GKGeneral)
      {
        v24 = GKOSLoggers();
      }

      v25 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v26 = a1[4];
        *buf = 138412290;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Using cached games played descriptors for : %@", buf, 0xCu);
      }

      v27 = [v6 entries];
      v28 = [v27 count];

      if (v28)
      {
        v29 = [v6 entries];
        v30 = [NSOrderedSet orderedSetWithOrderedSet:v29];

        v31 = [GKGameSummaryInternal internalGameSummariesFromResults:v30 limit:a1[8]];
        [a1[5] setResult:v31];
      }

      v5[2](v5);
      goto LABEL_28;
    }

LABEL_6:

LABEL_7:
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = a1[4];
      *buf = 138412290;
      v41 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Going to server for games played descriptors for : %@", buf, 0xCu);
    }

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = a1[4];
    v16 = [a1[7] localPlayer];
    v17 = [v16 playerID];
    LOBYTE(v15) = [v15 isEqualToString:v17];

    if ((v15 & 1) == 0)
    {
      [v14 setObject:a1[4] forKeyedSubscript:@"requested-player-id"];
    }

    if (a1[6] && v7)
    {
      [v14 setObject:? forKeyedSubscript:?];
    }

    v18 = [v6 objectID];
    v19 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v20 = [a1[7] clientProxy];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100098E0C;
    v32[3] = &unk_100363878;
    v33 = a1[5];
    v34 = v18;
    v35 = a1[4];
    v36 = a1[6];
    v37 = v6;
    v38 = a1[8];
    v39 = v5;
    v21 = v18;
    [v19 issueRequest:v14 bagKey:@"gk-get-games-played-summaries" clientProxy:v20 handler:v32];

LABEL_28:
    goto LABEL_29;
  }

  v22 = [NSError userErrorForCode:8 underlyingError:?];
  [a1[5] setError:v22];

  v5[2](v5);
LABEL_29:
}

void sub_100098E0C(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) setError:v8];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100098F9C;
  v17[3] = &unk_100363850;
  v10 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = v7;
  v27 = a4;
  v21 = v8;
  v22 = v9;
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 32);
  v26 = *(a1 + 72);
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 performOnManagedObjectContext:v17];
  (*(*(a1 + 80) + 16))(*(a1 + 80), v14, v15, v16);
}

void sub_100098F9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v48 = 0;
  v43 = v5;
  v8 = [v5 existingObjectWithID:v7 error:&v48];
  v9 = v48;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028AD08();
    }

    v12 = [GKCachingUtils ensureGamesPlayedList:v5 playerID:*(a1 + 40)];

    v8 = v12;
  }

  if (*(a1 + 48) && !*(a1 + 56))
  {
    v15 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 104)];
    [*(a1 + 48) objectForKeyedSubscript:@"results"];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v47 = 0u;
    v16 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v38 = v15;
      v39 = v9;
      v40 = v6;
      v41 = a1;
      v18 = 0;
      v19 = *v45;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          v21 = v18;
          if (*v45 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:@"game"];
          v24 = [v22 objectForKeyedSubscript:@"timestamp"];
          v25 = [NSDate _gkDateFromServerTimestamp:v24];

          v26 = [GameSummary alloc];
          v27 = +[GameSummary entity];
          v18 = [(GameSummary *)v26 initWithEntity:v27 insertIntoManagedObjectContext:v43];

          v28 = [v23 objectForKeyedSubscript:@"adam-id"];
          [(GameSummary *)v18 setAdamID:v28];

          v29 = [v23 objectForKeyedSubscript:@"bundle-id"];
          [(GameSummary *)v18 setBundleID:v29];

          v30 = [(GameSummary *)v18 bundleID];
          if (v30)
          {
            v31 = v30;
            v32 = [(GameSummary *)v18 adamID];

            if (v32)
            {
              [(GameSummary *)v18 setPlayedAt:v25];
              v33 = [v23 objectForKeyedSubscript:@"is-arcade-game"];
              [(GameSummary *)v18 setIsArcade:v33];

              v34 = [NSNumber numberWithUnsignedInt:[GKCachingUtils compatiblePlatforms:v23]];
              [(GameSummary *)v18 setCompatiblePlatforms:v34];

              [*(v41 + 64) addObject:v18];
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v17);

      v6 = v40;
      a1 = v41;
      v9 = v39;
      v15 = v38;
    }

    [v8 setExpirationDate:v15];
    if (*(a1 + 72))
    {
      v35 = *(a1 + 72);
    }

    else
    {
      v35 = &off_100382400;
    }

    [v8 setWithinSecs:v35];
    if ([*(a1 + 64) count])
    {
      v14 = [NSOrderedSet orderedSetWithArray:*(a1 + 64)];
      v36 = [*(a1 + 80) entries];
      [v8 removeEntries:v36];

      [v8 addEntries:v14];
      [*(a1 + 88) setObject:v14 forKeyedSubscript:@"response"];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_33;
  }

  v13 = [v8 entries];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v8 entries];
    v14 = [NSOrderedSet orderedSetWithOrderedSet:v15];
LABEL_33:
  }

  v37 = [GKGameSummaryInternal internalGameSummariesFromResults:v14 limit:*(a1 + 96)];
  [*(a1 + 88) setResult:v37];
  v6[2](v6);
}

void sub_100099480(uint64_t a1)
{
  v2 = os_log_GKPerf;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "GamesPlayedSummaries", "", v8, 2u);
  }

  v5 = [*(a1 + 32) result];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) error];
  (*(v6 + 16))(v6, v5, v7);
}

void sub_1000998CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKLibraryDependencies shared];
  v5 = [v4 gamePolicyLibrary];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000999A8;
  v8[3] = &unk_1003638F0;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 appsWith:v6 completionHandler:v8];
}

uint64_t sub_1000999A8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000999F0(uint64_t a1)
{
  v2 = os_log_GKPerf;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "GamePolicies", "", v7, 2u);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) result];
  (*(v5 + 16))(v5, v6, 0);
}

void sub_100099D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKInstallMetadataCache alloc];
  v5 = [*(a1 + 32) localPlayer];
  v6 = [v5 playerID];
  v7 = +[GKClientProxy gameCenterClient];
  v8 = [v7 language];
  v23 = 0;
  v9 = [(GKInstallMetadataCache *)v4 initWithPlayerID:v6 language:v8 error:&v23];
  v10 = v23;

  if (v10)
  {
    [*(a1 + 40) setError:v10];
    v3[2](v3);
  }

  else
  {
    v11 = [GKInstallMetadataFetcher alloc];
    v12 = +[GKDataRequestManager sharedManager];
    v13 = [v12 codeSigningManager];
    v14 = [(GKInstallMetadataFetcher *)v11 initWithCodeSigning:v13 cache:v9];

    objc_initWeak(&location, v14);
    v15 = *(a1 + 48);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100099F78;
    v16[3] = &unk_100363940;
    v16[4] = *(a1 + 32);
    v21 = *(a1 + 56);
    v17 = v15;
    objc_copyWeak(&v20, &location);
    v18 = *(a1 + 40);
    v19 = v3;
    [(GKInstallMetadataFetcher *)v14 fetchWithBundleIDs:v17 completionHandler:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_100099F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100099F78(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = [v11 cachedBundleIDs];
    if (*(a1 + 72) == 1)
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = 0;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [v6 refreshInstallMetadataForBundleIDs:v7 deleteNonmatchingBundleIDs:v8 fetcher:WeakRetained];
  }

  v10 = [v11 metadatas];
  [*(a1 + 48) setResult:v10];

  [*(a1 + 48) setError:v5];
  (*(*(a1 + 56) + 16))();
}

void sub_10009A070(uint64_t a1)
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
      sub_10028AD70(v2, v5);
    }
  }

  v6 = os_log_GKPerf;
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "InstallMetadata", "", v12, 2u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) result];
  v11 = [*(a1 + 32) error];
  (*(v9 + 16))(v9, v10, v11);
}

void sub_10009A360(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009A408;
  v7[3] = &unk_100363968;
  v7[4] = a1[6];
  v8 = v3;
  v6 = v3;
  [v4 refreshWithBundleIDs:v5 completionHandler:v7];
}

void sub_10009A408(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028AE10();
    }
  }

  else if (a2)
  {
    v7 = [*(a1 + 32) clientProxy];
    [v7 refreshContentsForDataType:23 userInfo:0];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009A4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009A564;
  v7[3] = &unk_100361CB8;
  v8 = v3;
  v6 = v3;
  [v5 deleteNonmatchingBundleIDs:v4 completionHandler:v7];
}

void sub_10009A564(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028AE78();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10009A8F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [*(a1 + 32) localPlayer];
  v6 = [v5 playerID];

  v7 = [*(a1 + 32) ampController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009AA64;
  v13[3] = &unk_100363990;
  v19 = *(a1 + 64);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = v6;
  v23 = *(a1 + 88);
  v8 = *(a1 + 80);
  v21 = *(a1 + 72);
  v22 = v8;
  v9 = *(a1 + 56);
  v20 = v3;
  v17 = v9;
  v18 = v4;
  v10 = v4;
  v11 = v3;
  v12 = v6;
  [v7 getBagWithCompletion:v13];
}

void sub_10009AA64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v5 = [v4 appMetadataFetcher];

    v6 = [GKAppMetadataFetcherRequest alloc];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = +[GKClientProxy gameCenterClient];
    v11 = [v10 language];
    v12 = *(a1 + 104);
    v13 = *(a1 + 88);
    v14 = *(a1 + 96);
    v23 = 0;
    v15 = [(GKAppMetadataFetcherRequest *)v6 initWithBundleIDs:v7 adamIDs:v8 playerID:v9 language:v11 environment:v13 localDataOnly:v12 ttlOption:v14 error:&v23];
    v16 = v23;

    if (v16)
    {
      [*(a1 + 56) setError:v16];
      (*(*(a1 + 80) + 16))();
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10009ACC8;
      v21[3] = &unk_100361090;
      v22 = *(a1 + 64);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10009AD5C;
      v18[3] = &unk_100360ED8;
      v19 = *(a1 + 56);
      v20 = *(a1 + 80);
      [v5 fetchWithRequest:v15 bag:v3 refreshExpiredCompletion:v21 completionHandler:v18];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKLibrary, OS_LOG_TYPE_ERROR))
    {
      sub_10028AEE0();
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10009ACC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028AF20();
  }

  if ([v3 count])
  {
    [*(a1 + 32) refreshContentsForDataType:22 userInfo:0];
  }
}

uint64_t sub_10009AD5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_10009ADCC(uint64_t a1)
{
  v2 = os_log_GKPerf;
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "AppMetadata", "%@", &v9, 0xCu);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) result];
  v8 = [*(a1 + 40) error];
  (*(v6 + 16))(v6, v7, v8);
}

void sub_10009B144(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(GKGameLibraryBiome);
  v4 = [(GKGameLibraryBiome *)v5 appInFocusDataFor:*(a1 + 40)];
  [*(a1 + 32) setResult:v4];

  v3[2](v3);
}

void sub_10009B1D8(uint64_t a1)
{
  v2 = os_log_GKPerf;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "BiomeData", "", v8, 2u);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) result];
  v7 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v6, v7);
}

void sub_10009B448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKAppMetadataCache alloc];
  v5 = [*(a1 + 32) localPlayer];
  v6 = [v5 playerID];
  v7 = +[GKClientProxy gameCenterClient];
  v8 = [v7 language];
  v14 = 0;
  v9 = [(GKAppMetadataCache *)v4 initWithPlayerID:v6 language:v8 error:&v14];
  v10 = v14;

  if (v10)
  {
    [*(a1 + 40) setError:v10];
    v3[2](v3);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009B5B8;
    v11[3] = &unk_100361198;
    v12 = *(a1 + 40);
    v13 = v3;
    [(GKAppMetadataCache *)v9 deleteAllWithCompletionHandler:v11];
  }
}

uint64_t sub_10009B5B8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10009B600(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10009B7C4(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [*(a1 + 32) replyQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009B8C4;
  v15[3] = &unk_100363A08;
  v12 = *(a1 + 40);
  v17 = v10;
  v18 = v12;
  v16 = v9;
  v19 = a4;
  v20 = a5;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

void sub_10009B8E4(uint64_t a1)
{
  v2 = [(GKCacheObject *)GKOnDeviceMultiplayerGameListCacheObject firstObjectMatchingPredicate:0 context:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 bundleIDs];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if (([v4 containsObject:{v10, v18}] & 1) == 0)
          {
            if (!os_log_GKGeneral)
            {
              v12 = GKOSLoggers();
            }

            v13 = os_log_GKMatch;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v23 = v10;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "needForceUpdate = YES, since one/more bundleID is not existing in the cached list: %@", buf, 0xCu);
            }

            v11 = 0;
            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_16:

    v14 = [v3 isValid];
    v15 = *(a1 + 48);
    if (v11 && v14)
    {
      v16 = [v3 multiplayerGames];
      v17 = [v3 seed];
      (*(v15 + 16))(v15, v16, v17, [v3 expired] ^ 1, 1);
    }

    else
    {
      (*(v15 + 16))(v15, 0, 0, 0, 0);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10009BD68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v13 = @"games";
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009BEC0;
  v9[3] = &unk_100363A58;
  v7 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v3;
  v11 = *(a1 + 56);
  v8 = v3;
  [v4 issueRequest:v6 bagKey:@"gk-get-game-features" clientProxy:v7 handler:v9];
}

void sub_10009BEC0(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  if (v7)
  {
    v8 = [NSNumber numberWithDouble:a4];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"ttl"];

    v9 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009BFF0;
    v10[3] = &unk_100363A30;
    v11 = v9;
    v12 = v7;
    v14 = a4;
    v13 = *(a1 + 48);
    [v11 performBlock:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10009BFF0(uint64_t a1)
{
  v2 = [(GKCacheObject *)GKOnDeviceMultiplayerGameListCacheObject firstObjectMatchingPredicate:0 context:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [(GKCacheObject *)[GKOnDeviceMultiplayerGameListCacheObject alloc] initWithManagedObjectContext:*(a1 + 32)];
  }

  v5 = v4;

  v6 = *(a1 + 40);
  v7 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 56)];
  [(GKOnDeviceMultiplayerGameListCacheObject *)v5 updateWithServerRepresentation:v6 expirationDate:v7];

  [*(a1 + 32) _gkSafeSave];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_10028AF5C(v9);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10009C0EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ttl"];
  [v6 doubleValue];
  v4 = v3;
  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v4);
}

void sub_10009C3AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009C4C0;
  v12[3] = &unk_100363AA8;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v18 = v3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v11 = v3;
  [v4 fetchOnDeviceMultiplayerGamesInContext:v5 forBundleIDs:v6 clientProxy:v7 handler:v12];
}

void sub_10009C4C0(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = a2;
  [*(a1 + 32) setResult:v6];
  if (a4)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
    {
      sub_10028AFF8(v8);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009C66C;
    v19[3] = &unk_100363A80;
    v13 = *(a1 + 32);
    v23 = *(a1 + 72);
    *&v14 = v13;
    *(&v14 + 1) = *(a1 + 40);
    v18 = v14;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v20 = v18;
    v21 = v17;
    v22 = *(a1 + 64);
    [v9 loadOnDeviceMultiplayerGamesWithContext:v10 forBundleIDs:v11 clientProxy:v12 handler:v19];
  }
}

void sub_10009C66C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setError:v3];
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
    {
      sub_10028B084();
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009C7B4;
    v9[3] = &unk_1003625E8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 72);
    [v5 fetchOnDeviceMultiplayerGamesInContext:v6 forBundleIDs:v7 clientProxy:v8 handler:v9];
  }
}

void sub_10009C7B4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setResult:v3];
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_10028B0F4(v5);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009C84C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10009C9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CB04;
  block[3] = &unk_100363B48;
  v15 = v3;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = *(a1 + 64);
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_10009CB04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_10028B180();
  }

  v4 = +[GKApplicationWorkspace defaultWorkspace];
  v5 = [v4 availableGameIdentifiers];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = [NSMutableSet setWithCapacity:v6];
    v9 = [NSMutableDictionary dictionaryWithCapacity:v7];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009CD7C;
    v23[3] = &unk_100363AD0;
    v24 = v4;
    v10 = v8;
    v25 = v10;
    v11 = v9;
    v26 = v11;
    [v5 enumerateObjectsUsingBlock:v23];
    v12 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009CE24;
    v15[3] = &unk_100362030;
    v16 = v10;
    v17 = v12;
    v18 = *(a1 + 48);
    v19 = v11;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    v13 = v11;
    v14 = v10;
    [v12 performBlock:v15];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10009CD7C(id *a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [a1[4] applicationProxyForBundleID:v6];
  [a1[5] addObject:v6];
  v5 = [v4 purchaseDate];
  if (v5)
  {
    [a1[6] setObject:v5 forKeyedSubscript:v6];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10009CE24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) allObjects];
  v4 = [GKGameCacheObject gamesForBundleIDs:v3 context:*(a1 + 40)];

  v5 = [GKPlayerProfileCacheObject profileForPlayer:*(a1 + 48) context:*(a1 + 40)];
  v6 = [GKGameRecordCacheObject recordsForGames:v4 playerProfile:v5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009D098;
  v16[3] = &unk_100363AF8;
  v17 = *(a1 + 56);
  v18 = *(a1 + 40);
  [v6 enumerateObjectsUsingBlock:v16];
  v7 = *(a1 + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009D138;
  v12[3] = &unk_100360F00;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 72);
  [v7 perform:v12];
  v8 = [v5 gameList];
  v9 = v8;
  if (v5 && !v8)
  {
    v9 = [(GKCacheObject *)[GKGameListCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
    [(GKGameListCacheObject *)v9 setPlayer:v5];
  }

  [(GKListCacheObject *)v9 updateSeed];
  [*(a1 + 40) refreshObject:v9 mergeChanges:1];
  [*(a1 + 40) _gkSaveIfDirty];
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10028B1F4();
  }

  (*(*(a1 + 80) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10009D098(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 game];
  v6 = [v4 bundleID];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v6];
  [v3 setPurchaseDate:v5];

  [*(a1 + 40) refreshObject:v3 mergeChanges:1];
}

void sub_10009D138(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009D20C;
  v8[3] = &unk_100363B20;
  v9 = v3;
  v7 = v3;
  [GKGameServicePrivate loadGameMetadataForBundleIDs:v4 context:v6 clientProxy:v5 handler:v8];
}

void sub_10009D490(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10009D4B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) playerID];
  v8 = [(GKCacheObject *)GKGameListCacheObject fetchRequestForContext:v5];
  [v8 setFetchLimit:1];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v9 = [NSPredicate predicateWithFormat:@"expirationDate != nil && player.playerID = %@", v7];
  }

  else
  {
    v10 = +[NSDate date];
    v9 = [NSPredicate predicateWithFormat:@"expirationDate > %@ && player.playerID = %@", v10, v7];
  }

  [v8 setPredicate:v9];
  v30 = 0;
  v11 = [v5 executeFetchRequest:v8 error:&v30];
  v12 = v30;
  v13 = [v11 firstObject];

  *(*(*(a1 + 64) + 8) + 24) = v13 != 0;
  *(*(*(a1 + 56) + 8) + 24) = v13 != 0;
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && *(a1 + 72))
  {
    v24 = v7;
    v14 = [v13 seed];
    [*(a1 + 40) setObject:v14 forKeyedSubscript:@"seed"];

    v15 = [v13 entries];
    v16 = [v15 _gkValuesForKeyPath:@"bundleID"];

    if (*(a1 + 76) == 1)
    {
      v17 = [NSMutableSet setWithArray:v16];
      +[GKApplicationWorkspace defaultWorkspace];
      v18 = v23 = v12;
      v19 = [v18 availableGameIdentifiers];
      [v17 addObjectsFromArray:v19];

      v12 = v23;
      v20 = [v17 allObjects];

      v16 = v20;
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009D7D4;
    v25[3] = &unk_100361BF8;
    v21 = *(a1 + 40);
    v25[4] = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = v16;
    v28 = v5;
    v29 = *(a1 + 40);
    v22 = v16;
    [v21 perform:v25];

    v7 = v24;
  }

  v6[2](v6);
}

void sub_10009D7D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009D8A4;
  v9[3] = &unk_1003625E8;
  v10 = *(a1 + 64);
  v11 = v3;
  v8 = v3;
  [v4 fetchGameStatsForPlayer:v5 bundleIdentifiers:v6 responseKind:2 context:v7 handler:v9];
}

void sub_10009D8A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:0 comparator:&stru_100363B88];
  v4 = [NSArray arrayWithObject:v6];
  v5 = [v3 sortedArrayUsingDescriptors:v4];

  [*(a1 + 32) setResult:v5];
  (*(*(a1 + 40) + 16))();
}

int64_t sub_10009D970(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 platform];
  if ((v8 == 1) == ([v7 platform] != 1))
  {
    if (v8 == 1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v9 = [v6 lastPlayedDate];
    if (v9)
    {
      [v6 lastPlayedDate];
    }

    else
    {
      [v6 purchaseDate];
    }
    v11 = ;

    v12 = [v7 lastPlayedDate];
    if (v12)
    {
      [v7 lastPlayedDate];
    }

    else
    {
      [v7 purchaseDate];
    }
    v13 = ;

    v10 = [v11 compare:v13];
  }

  return v10;
}

void sub_10009DA98(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  (*(v2 + 16))(v2, v4, v3, *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24));
}

void sub_10009DD94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 isLocalPlayer];
  v9 = [*(a1 + 32) playerID];
  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) replyQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009DFD0;
    v22[3] = &unk_100363CE0;
    v29 = v8;
    v12 = v9;
    v13 = *(a1 + 56);
    v23 = v12;
    v24 = v13;
    v14 = *(a1 + 40);
    v15 = *(a1 + 64);
    v25 = v14;
    v28 = v15;
    v26 = v5;
    v27 = *(a1 + 32);
    [v10 performOnQueue:v11 block:v22];

    v16 = v23;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 56);
      v20 = v18;
      v21 = [v19 clientProxy];
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Cannot load games with no playerID and no localPlayer for %@", buf, 0xCu);
    }

    v16 = [NSError userErrorForCode:17 underlyingError:0];
    [*(a1 + 40) setError:v16];
  }

  v7[2](v7);
}

void sub_10009DFD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 80))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v20 = @"requested-player-id";
    v21 = v5;
    v4 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

  v6 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v7 = [*(a1 + 40) clientProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009E1A0;
  v13[3] = &unk_100363CB8;
  v8 = *(a1 + 48);
  v18 = *(a1 + 72);
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 40);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v14 = v11;
  v15 = v10;
  v19 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v3;
  v12 = v3;
  [v6 issueRequest:v4 bagKey:@"gk-get-games-played-descriptor" clientProxy:v7 handler:v13];
}

void sub_10009E1A0(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    *(*(*(a1 + 80) + 8) + 24) = a4;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009E2D8;
    v15[3] = &unk_100363C90;
    v22 = a4;
    v11 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 40);
    v18 = v7;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v19 = v12;
    v20 = v13;
    v23 = *(a1 + 88);
    v21 = v14;
    [v11 performBlockAndWait:v15];
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), v8, v9, v10);
}

void sub_10009E2D8(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 80)];
  v3 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  v4 = [v3 gameList];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v5 = [(GKCacheObject *)[GKGameListCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
    [(GKGameListCacheObject *)v5 setPlayer:v3];
  }

  [(GKGameListCacheObject *)v5 updateWithServerRepresentation:*(a1 + 48) expirationDate:v2];
  v7 = [(GKGameListCacheObject *)v5 seed];
  [*(a1 + 56) setObject:v7 forKeyedSubscript:@"seed"];

  v8 = [(GKGameListCacheObject *)v5 entries];
  v9 = [v8 array];
  v10 = [v9 _gkMapWithBlock:&stru_100363BF0];

  if ([v10 count])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009E4D0;
    v12[3] = &unk_100363C68;
    v11 = *(a1 + 56);
    v12[4] = *(a1 + 64);
    v13 = v10;
    v14 = *(a1 + 40);
    v15 = v5;
    v16 = *(a1 + 56);
    v18 = *(a1 + 88);
    v17 = *(a1 + 72);
    [v11 perform:v12];
  }
}

void sub_10009E4D0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 32) clientProxy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009E680;
  v14[3] = &unk_100363C40;
  objc_copyWeak(&v19, &location);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v20 = *(a1 + 80);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v15 = v12;
  v16 = v11;
  v17 = *(a1 + 40);
  v13 = v3;
  v18 = v13;
  [GKGameServicePrivate loadGameMetadataForBundleIDs:v5 context:v4 clientProxy:v6 handler:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void sub_10009E65C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10009E680(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009E7BC;
  v10[3] = &unk_100361770;
  v3 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v3 performBlockAndWait:v10];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009E7C8;
  v5[3] = &unk_100363C18;
  v9 = *(a1 + 88);
  v5[4] = WeakRetained;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v4 perform:v5];
}

void sub_10009E7C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009E8C0;
    v11[3] = &unk_100362408;
    v12 = v5;
    v13 = v4;
    [v6 getGameStatsForPlayer:v12 bundleIDs:v7 handler:v11];
  }

  else
  {
    (*(v3 + 2))(v3);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v8, v9, v10);
}

void sub_10009E8C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Error getting the stats for player:%@ error:%@", &v10, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009E9C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v4, v3);
}

void sub_10009ED80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_10009EDA8(uint64_t a1)
{
  v2 = +[GKPlayerProfileCacheObject selfPlayerID];
  [*(a1 + 32) setPlayerID:v2];
}

void sub_10009EE04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = *(a1 + 64) != 0;
  v8 = *(a1 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009EF80;
  v14[3] = &unk_100363DF8;
  objc_copyWeak(&v19, (a1 + 72));
  v9 = *(a1 + 56);
  v10 = v3;
  v17 = v10;
  v11 = *(a1 + 40);
  v20 = *(a1 + 80);
  *&v12 = *(a1 + 48);
  *(&v12 + 1) = *(a1 + 32);
  *&v13 = v9;
  *(&v13 + 1) = v11;
  v15 = v13;
  v16 = v12;
  v18 = *(a1 + 64);
  [v4 fetchGamesForPlayer:v5 includeInstalled:v6 responseKind:v7 context:v8 handler:v14];

  objc_destroyWeak(&v19);
}

void sub_10009EF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_10009EF80(uint64_t a1, void *a2, void *a3, char a4, int a5)
{
  v9 = a2;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v12 = WeakRetained;
  if ((a4 & 1) != 0 || !WeakRetained)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:@"games"];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:@"seed"];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028B230(a1, v14);
    }

    v15 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1598, "[GKGameServicePrivate getGamesForPlayer:includeInstalled:handler:]_block_invoke"];
    v16 = [GKDispatchGroup dispatchGroupWithName:v15];

    if (*(a1 + 88) == 1)
    {
      [v12 scanInstalledGamesForPlayer:*(a1 + 40) group:v16 moc:*(a1 + 48)];
    }

    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10009F334;
    v34[3] = &unk_100363D58;
    v34[4] = v12;
    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    v17 = v16;
    v37 = v17;
    v38 = v39;
    [v17 perform:v34];
    if (a5)
    {
      v18 = [v12 clientProxy];
      v19 = [v18 replyQueue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10009F4AC;
      v32[3] = &unk_100363D80;
      v33[2] = v39;
      v33[0] = v17;
      v33[1] = v12;
      [v33[0] notifyOnQueue:v19 block:v32];

      (*(*(a1 + 64) + 16))();
      v20 = v33;
    }

    else
    {
      v21 = *(a1 + 32);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10009F598;
      v24[3] = &unk_100363DD0;
      v22 = v17;
      v23 = *(a1 + 56);
      v25[0] = v22;
      v25[1] = v23;
      v26 = *(a1 + 32);
      v27 = v12;
      v28 = *(a1 + 40);
      v31 = *(a1 + 88);
      v30 = *(a1 + 72);
      v29 = *(a1 + 48);
      [v21 perform:v24];
      (*(*(a1 + 64) + 16))();
      v20 = v25;
    }

    _Block_object_dispose(v39, 8);
  }
}

void sub_10009F334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009F400;
  v10[3] = &unk_100363D30;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v3;
  v13 = v8;
  v11 = v7;
  v9 = v3;
  [v4 loadGamesForPlayer:v5 context:v6 handler:v10];
}

void sub_10009F400(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = *(a1 + 32);
  v10 = a3;
  [v7 setObject:a2 forKeyedSubscript:@"seed"];
  [*(a1 + 32) setError:v10];
  v9 = a4 > 0.0 && v10 == 0;
  *(*(*(a1 + 48) + 8) + 24) = v9;
  (*(*(a1 + 40) + 16))();
}

void sub_10009F4AC(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
    v3 = v2;
    if (v2)
    {
      v6 = GKRefreshSeedKey;
      v7 = v2;
      v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    }

    else
    {
      v4 = 0;
    }

    v5 = [*(a1 + 40) clientProxy];
    [v5 refreshContentsForDataType:5 userInfo:v4];
  }
}

void sub_10009F598(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) clientProxy];
  v6 = [v5 replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009F6D4;
  v11[3] = &unk_100363DA8;
  v12 = *(a1 + 48);
  v7 = *(a1 + 32);
  v17 = v3;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v19 = *(a1 + 88);
  v18 = *(a1 + 80);
  v16 = *(a1 + 72);
  v10 = v3;
  [v4 notifyOnQueue:v6 block:v11];
}

void sub_10009F6D4(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 88);
    v8 = 2 * (*(a1 + 80) != 0);
    v9 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009F81C;
    v10[3] = &unk_1003625E8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 72);
    [v5 fetchGamesForPlayer:v6 includeInstalled:v7 responseKind:v8 context:v9 handler:v10];
  }
}

uint64_t sub_10009F81C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"games"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"seed"];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_10009F89C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"games"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v3, v4);
}

void sub_10009FBD8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10009FBFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSDate date];
  v8 = [(GKCacheObject *)GKGameRecordCacheObject fetchRequestForContext:v5];
  [v8 setFetchLimit:*(a1 + 72)];
  v9 = *(*(*(a1 + 56) + 8) + 24);
  v10 = [*(a1 + 32) playerID];
  v11 = v10;
  v12 = *(a1 + 40);
  if (v9)
  {
    v13 = [NSPredicate predicateWithFormat:@"player.playerID = %@ && game.bundleID in %@", v10, v12];
    [v8 setPredicate:v13];
  }

  else
  {
    v14 = [NSPredicate predicateWithFormat:@"expirationDate > %@ && player.playerID = %@ && game.bundleID in %@", v7, v10, v12];
    [v8 setPredicate:v14];

    v15 = [v5 countForFetchRequest:v8 error:0] == *(a1 + 72);
    *(*(*(a1 + 64) + 8) + 24) = v15;
    *(*(*(a1 + 56) + 8) + 24) = v15;
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v16 = [*(a1 + 32) playerID];
      v17 = [NSPredicate predicateWithFormat:@"expirationDate != nil && player.playerID = %@ && game.bundleID in %@", v16, *(a1 + 40)];
      [v8 setPredicate:v17];

      *(*(*(a1 + 56) + 8) + 24) = [v5 countForFetchRequest:v8 error:0] == *(a1 + 72);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && *(a1 + 80))
  {
    v18 = [v5 executeFetchRequest:v8 error:0];
    v19 = [v18 _gkMapDictionaryWithKeyPath:@"game.bundleID"];
    v20 = *(a1 + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009FEBC;
    v23[3] = &unk_100363E48;
    v24 = v19;
    v21 = v19;
    v22 = [v20 _gkFilterWithBlock:v23];
    [*(a1 + 48) setResult:v22];
  }

  v6[2](v6);
}

id sub_10009FEBC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v2)
  {
    v3 = [GKGameRecordInternal internalRepresentationForCacheObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10009FF28(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) result];
  (*(v2 + 16))(v2, v3, 0, *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24));
}

void sub_1000A01BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[NSMutableSet alloc] initWithArray:*(a1 + 32)];
  v8 = [GKPlayerProfileCacheObject profileForPlayer:*(a1 + 40) context:v6];
  v9 = [GKGameCacheObject gamesForBundleIDs:*(a1 + 32) context:v6];

  v10 = [GKGameRecordCacheObject recordsForGames:v9 playerProfile:v8];
  v11 = [*(a1 + 40) playerID];
  v12 = [GKPlayerProfileCacheObject familiarityForPlayerID:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000A03F0;
  v23[3] = &unk_100363E98;
  v13 = v7;
  v24 = v13;
  [v10 enumerateObjectsUsingBlock:v23];
  if ([v13 count])
  {
    v14 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A0484;
    v17[3] = &unk_100363F50;
    v18 = v13;
    v22 = v12;
    v19 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = v16.i64[0];
    v20 = vextq_s8(v16, v16, 8uLL);
    v21 = v8;
    [v14 perform:v17];
  }

  v5[2](v5);
}

void sub_1000A03F0(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 valid] && (objc_msgSend(v6, "expired") & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v6 game];
    v5 = [v4 bundleID];
    [v3 removeObject:v5];
  }
}

void sub_1000A0484(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 _gkMapWithBlock:&stru_100363ED8];
  if (*(a1 + 72) == 1 || ([*(a1 + 40) playerID], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v20 = @"games-played";
    v21 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

  else
  {
    v18[0] = @"games-played";
    v18[1] = @"requested-player-id";
    v19[0] = v5;
    v7 = [*(a1 + 40) playerID];
    v19[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v10 = [*(a1 + 48) clientProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A0748;
  v13[3] = &unk_1003635D8;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = v4;
  v17 = v3;
  v11 = v3;
  v12 = v4;
  [v9 issueRequest:v8 bagKey:@"gk-get-games-played" clientProxy:v10 handler:v13];
}

id sub_1000A06A8(id a1, NSString *a2, unint64_t a3)
{
  v6 = @"bundle-id";
  v7 = a2;
  v3 = a2;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

void sub_1000A0748(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    v11 = [NSNumber numberWithDouble:a4];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:@"ttl"];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A0874;
    v13[3] = &unk_100363F28;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    v17 = a4;
    v15 = *(a1 + 48);
    v16 = v7;
    [v12 performOnManagedObjectContext:v13];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v8, v9, v10);
}

void sub_1000A0874(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v5 refreshObject:v6 mergeChanges:1];
  v8 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 56)];
  v9 = [GKGameCacheObject gamesForBundleIDs:*(a1 + 40) context:v5];
  v10 = [GKGameRecordCacheObject recordsForGames:v9 playerProfile:*(a1 + 32)];
  v11 = [*(a1 + 48) objectForKeyedSubscript:@"results"];
  [v10 _gkMapDictionaryWithKeyPath:@"game.bundleID"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A0A24;
  v16 = v15[3] = &unk_100363F00;
  v17 = v8;
  v18 = v5;
  v19 = *(a1 + 40);
  v12 = v5;
  v13 = v8;
  v14 = v16;
  [v11 enumerateObjectsUsingBlock:v15];
  v7[2](v7);
}

void sub_1000A0A24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"status"];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKeyedSubscript:@"game-metadata"];
  v9 = [v8 objectForKeyedSubscript:@"bundle-id"];
  if (v9)
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      if (v7)
      {
        if (!os_log_GKGeneral)
        {
          v12 = GKOSLoggers();
        }

        v13 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 56);
          v15 = v13;
          v16 = [v14 objectAtIndexedSubscript:a3];
          v17[0] = 67109378;
          v17[1] = v7;
          v18 = 2112;
          v19 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Unrecognized game(%d) %@", v17, 0x12u);
        }

        [v11 setExpirationDate:*(a1 + 40)];
      }

      else
      {
        [v10 updateWithServerRepresentation:v5 expirationDate:*(a1 + 40)];
        [v11 setValid:1];
        [*(a1 + 48) refreshObject:v11 mergeChanges:1];
      }
    }
  }
}

void sub_1000A0BFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ttl"];
  [v6 doubleValue];
  v4 = v3;
  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v4);
}

void sub_1000A0EAC(uint64_t a1, void *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A0FB8;
  v10[3] = &unk_100364018;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = v9.i64[1];
  v13 = *(a1 + 64);
  v7.i64[0] = *(a1 + 32);
  v7.i64[1] = v5;
  v12 = vextq_s8(v9, v7, 8uLL);
  v11 = vextq_s8(v7, v9, 8uLL);
  v8 = a2;
  [v4 performOnManagedObjectContext:v10];
  v8[2](v8);
}

void sub_1000A0FB8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKLocalPlayerInternal internalRepresentation];
  v8 = +[GKPlayerProfileCacheObject selfPlayerID];
  [v7 setPlayerID:v8];

  v9 = [a1[4] playerID];
  v10 = v7;
  if (v9)
  {
    v10 = a1[4];
  }

  v11 = v10;

  objc_initWeak(&location, a1[5]);
  v13 = a1[5];
  v12 = a1[6];
  v14 = a1[8] != 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A11A0;
  v19[3] = &unk_100363FF0;
  objc_copyWeak(&v26, &location);
  v20 = a1[7];
  v15 = v11;
  v21 = v15;
  v16 = a1[6];
  v17 = a1[5];
  v22 = v16;
  v23 = v17;
  v24 = a1[8];
  v18 = v6;
  v25 = v18;
  [v13 fetchGameStatsForPlayer:v15 bundleIdentifiers:v12 responseKind:v14 context:v5 handler:v19];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void sub_1000A1184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A11A0(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"records"];

  if ((a4 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028B2E8(a1, v11);
    }

    v12 = *(a1 + 32);
    v13 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 1843, "[GKGameServicePrivate getGameStatsForPlayer:bundleIDs:handler:]_block_invoke"];
    v14 = [v12 transactionGroupWithName:v13];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000A147C;
    v33[3] = &unk_100360F00;
    v34 = *(a1 + 48);
    v15 = v14;
    v16 = *(a1 + 56);
    v35 = v15;
    v36 = v16;
    [v15 perform:v33];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000A1570;
    v29[3] = &unk_100361F90;
    v29[4] = WeakRetained;
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v17 = v15;
    v32 = v17;
    [v17 perform:v29];
    if ((a5 & 1) == 0)
    {
      v18 = *(a1 + 32);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000A1694;
      v21[3] = &unk_100363FC8;
      v19 = v17;
      v20 = *(a1 + 56);
      v22 = v19;
      v23 = v20;
      v24 = *(a1 + 32);
      v25 = WeakRetained;
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = *(a1 + 64);
      [v18 perform:v21];
    }
  }

  (*(*(a1 + 72) + 16))();
}

void sub_1000A147C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  v6 = [*(a1 + 48) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A1560;
  v8[3] = &unk_100363B20;
  v9 = v3;
  v7 = v3;
  [GKGameServicePrivate loadGameMetadataForBundleIDs:v4 context:v5 clientProxy:v6 handler:v8];
}

void sub_1000A1570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A164C;
  v9[3] = &unk_100363F78;
  v10 = *(a1 + 56);
  v11 = v3;
  v8 = v3;
  [v4 loadGameStatsForPlayer:v5 bundleIdentifiers:v6 context:v7 handler:v9];
}

uint64_t sub_1000A164C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000A1694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) clientProxy];
  v6 = [v5 replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A17C4;
  v11[3] = &unk_100363FA0;
  v12 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = v3;
  v10 = v3;
  [v4 notifyOnQueue:v6 block:v11];
}

void sub_1000A17C4(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 80) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = 2 * (*(a1 + 72) != 0);
    v9 = [*(a1 + 32) context];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A1918;
    v10[3] = &unk_1003625E8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 80);
    [v5 fetchGameStatsForPlayer:v6 bundleIdentifiers:v7 responseKind:v8 context:v9 handler:v10];
  }
}

uint64_t sub_1000A1918(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"records"];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000A1968(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"records"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000A1CA0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000A1CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A1DB4;
  v10[3] = &unk_100364068;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v11 = v5;
  v15 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v12 = v7;
  v16 = v8;
  v17 = *(a1 + 72);
  v13 = *(a1 + 48);
  v14 = v3;
  v9 = v3;
  [v4 performBlock:v10];
}

uint64_t sub_1000A1DB4(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) count];
  if (*(*(*(v2 + 32) + 8) + 24))
  {
    goto LABEL_15;
  }

  v4 = +[NSDate date];
  v5 = [(GKCacheObject *)GKGameCacheObject fetchRequestForContext:*(a1 + 40)];
  [v5 setFetchLimit:v3];
  v6 = [NSPredicate predicateWithFormat:@"expirationDate > %@ && bundleID in %@", v4, *(a1 + 32)];
  [v5 setPredicate:v6];

  v7 = [*(a1 + 40) countForFetchRequest:v5 error:0] == v3;
  *(*(*(a1 + 72) + 8) + 24) = v7;
  *(*(*(a1 + 64) + 8) + 24) = v7;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v8 = [NSPredicate predicateWithFormat:@"expirationDate != nil && bundleID in %@", *(a1 + 32)];
    [v5 setPredicate:v8];

    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) countForFetchRequest:v5 error:0] == v3;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
LABEL_15:
    if (*(a1 + 80))
    {
      v9 = [GKGameCacheObject gamesForBundleIDs:*(a1 + 32) context:*(a1 + 40)];
      if ([v9 count] != v3)
      {
        if (!os_log_GKGeneral)
        {
          v10 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
        {
          sub_10028B3B4();
        }
      }

      v11 = [v9 _gkMapDictionaryWithKeyPath:@"bundleID"];
      v12 = *(a1 + 32);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000A2048;
      v16[3] = &unk_100363E48;
      v17 = v11;
      v13 = v11;
      v14 = [v12 _gkFilterWithBlock:v16];
      [*(a1 + 48) setResult:v14];
    }
  }

  return (*(*(a1 + 56) + 16))();
}

id sub_1000A2048(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v2)
  {
    v3 = [GKGameInternal internalRepresentationForCacheObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000A20B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) result];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24));
}

uint64_t sub_1000A25E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A2600(uint64_t a1)
{
  v2 = [(GKCacheObject *)GKGameCacheObject fetchRequestForContext:*(a1 + 32)];
  v3 = [NSPredicate predicateWithFormat:@"bundleID in %@", *(a1 + 40)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 32) executeFetchRequest:v2 error:0];
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (([v11 expired] & 1) == 0)
        {
          v12 = [v11 bundleID];

          if (v12)
          {
            v13 = [v11 bundleID];
            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [NSMutableSet setWithArray:*(a1 + 40)];
  [v14 minusSet:v5];
  v15 = [v14 allObjects];
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_1000A2814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  Current = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_10028B488(Current, v5, v8);
  }

  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v10 = *(a1 + 32);
  v21 = @"game";
  v22 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A2A18;
  v15[3] = &unk_1003640E0;
  v16 = v5;
  v12 = *(a1 + 40);
  v17 = *(a1 + 48);
  v20 = v3;
  v18 = *(a1 + 56);
  v19 = *(a1 + 32);
  v13 = v3;
  v14 = v5;
  [v9 issueRequest:v11 bagKey:@"gk-get-game-metadata" clientProxy:v12 handler:v15];
}

void sub_1000A2A18(id *a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_10028B54C(Current, a1, v11);
  }

  [a1[5] setError:v8];

  if (v8 || ![v7 count])
  {
    (*(a1[8] + 2))();
  }

  else
  {
    v12 = [NSNumber numberWithDouble:a4];
    [a1[5] setObject:v12 forKeyedSubscript:@"ttl"];

    v13 = a1[6];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A2BC8;
    v14[3] = &unk_100363018;
    v19 = a4;
    v15 = v7;
    v16 = a1[7];
    v17 = a1[6];
    v18 = a1[8];
    [v13 performBlock:v14];
  }
}

void sub_1000A2BC8(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 64)];
  v3 = [*(a1 + 32) objectForKey:@"game-metadata"];
  v4 = [GKGameCacheObject gamesForFullGameDescriptors:*(a1 + 40) context:*(a1 + 48)];
  v5 = +[GKPreferences shared];
  v6 = [v5 supportsChallenges];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A2D04;
  v9[3] = &unk_1003640B8;
  v10 = v4;
  v11 = v2;
  v12 = v6;
  v7 = v2;
  v8 = v4;
  [v3 enumerateObjectsUsingBlock:v9];
  [*(a1 + 48) _gkSafeSave];
  (*(*(a1 + 56) + 16))();
}

void sub_1000A2D04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v7 updateWithServerRepresentation:v6 expirationDate:*(a1 + 40) supportsChallenges:*(a1 + 48)];
}

void sub_1000A2D80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ttl"];
  [v6 doubleValue];
  v4 = v3;
  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v4);
}

void sub_1000A2FEC(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  v6 = +[GamesPlayedSummaryList _gkFetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"playerID == %@", *(a1 + 32)];
  [v6 setPredicate:v7];

  v8 = [NSManagedObject _gkRetrieveCleanEntry:v5 request:v6];

  v9 = [v8 entries];

  if (v9)
  {
    v10 = [v8 entries];
    v11 = [NSOrderedSet orderedSetWithOrderedSet:v10];

    v12 = [GKGameSummaryInternal internalGameSummariesFromResults:v11 limit:*(a1 + 48)];
    [*(a1 + 40) setResult:v12];
  }

  v13[2]();
}

void sub_1000A3148(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000A337C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [GKGameCacheObject gamesForBundleIDs:*(a1 + 32) context:a2];
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 bundleID];
        if ([v14 length])
        {
          v15 = [v13 internalRepresentation];
          [v7 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [*(a1 + 40) setResult:v7];
  v5[2](v5);
}

void sub_1000A3524(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

id sub_1000A35AC(id a1, NSString *a2, unint64_t a3)
{
  v3 = GKPreferencesIdentifier;
  v4 = a2;
  if ([(NSString *)v4 isEqualToString:v3])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

void sub_1000A3880(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSArray array];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_1000A38E8(uint64_t a1)
{
  v2 = [GKDispatchGroup dispatchGroupWithName:@"_getGameMetadataForBundleIDs"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A3C28;
  v24[3] = &unk_100360F00;
  v3 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v25 = v3;
  v4 = v2;
  v26 = v4;
  [v4 perform:v24];
  if ([v4 waitWithTimeout:10.0])
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      sub_10028B6D0();
    }

    v6 = GKInternalErrorDomain;
    v27 = NSUnderlyingErrorKey;
    v7 = [NSString stringWithFormat:@"metadata request[%@] timed out.", *(a1 + 48)];
    v28 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v9 = [NSError errorWithDomain:v6 code:106 userInfo:v8];
    [v4 setError:v9];
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_10028B73C(a1, v12, Current);
  }

  v13 = os_log_GKPerf;
  v14 = v13;
  v15 = *(a1 + 72);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v15, "GameMetadata", "", buf, 2u);
  }

  v16 = [*(a1 + 32) clientProxy];
  v17 = [v16 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A3D50;
  block[3] = &unk_100360EB0;
  v18 = *(a1 + 56);
  v21 = v4;
  v22 = v18;
  v19 = v4;
  dispatch_async(v17, block);
}

void sub_1000A3C28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A3CE0;
  v7[3] = &unk_100362408;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 _getGameMetadataForBundleIDs:v5 handler:v7];
}

uint64_t sub_1000A3CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000A3D50(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000A401C(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[9] != 0;
  v6 = a1[4];
  v5 = a1[5];
  v7 = [a1[6] clientProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A418C;
  v13[3] = &unk_1003641C8;
  v8 = a1[7];
  v17 = v3;
  v9 = a1[4];
  *&v10 = a1[5];
  *(&v10 + 1) = a1[6];
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v14 = v11;
  v15 = v10;
  v16 = a1[8];
  v18 = a1[9];
  v12 = v3;
  [GKGameServicePrivate _fetchGameMetadataForBundleIDs:v6 responseKind:v4 context:v5 clientProxy:v7 handler:v13];
}

void sub_1000A418C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"games"];
  if (a3)
  {
    v7 = *(*(a1 + 72) + 16);

    v7();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028B840();
    }

    v9 = [NSString stringWithFormat:@"%s:%d %s", "GKGameService.m", 2171, "[GKGameServicePrivate _getGameMetadataForBundleIDs:handler:]_block_invoke"];
    v10 = [GKDispatchGroup dispatchGroupWithName:v9];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000A4434;
    v25[3] = &unk_100361F90;
    v26 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v27 = v11;
    v28 = v12;
    v13 = v10;
    v29 = v13;
    [v13 perform:v25];
    if (a4)
    {
      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v14 = *(a1 + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000A4560;
      v17[3] = &unk_1003641A0;
      v18 = v13;
      v19 = *(a1 + 64);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v24 = *(a1 + 80);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v22 = v15;
      v23 = v16;
      [v14 perform:v17];
      (*(*(a1 + 72) + 16))();
    }
  }
}

void sub_1000A4434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A4518;
  v8[3] = &unk_100363F78;
  v9 = *(a1 + 56);
  v10 = v3;
  v7 = v3;
  [GKGameServicePrivate loadGameMetadataForBundleIDs:v4 context:v5 clientProxy:v6 handler:v8];
}

uint64_t sub_1000A4518(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000A4560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A4670;
  v9[3] = &unk_100364178;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v15 = v3;
  v12 = *(a1 + 56);
  v16 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v13 = v6;
  v14 = v7;
  v8 = v3;
  [v4 notifyOnQueue:v5 block:v9];
}

void sub_1000A4670(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v5 = 2 * (*(a1 + 80) != 0);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = [*(a1 + 64) clientProxy];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A47CC;
    v9[3] = &unk_100364150;
    v10 = *(a1 + 32);
    v11 = *(a1 + 72);
    [GKGameServicePrivate _fetchGameMetadataForBundleIDs:v6 responseKind:v5 context:v7 clientProxy:v8 handler:v9];
  }
}

uint64_t sub_1000A47CC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"games"];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000A49F4(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A4AC4;
  v7[3] = &unk_100361348;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = a2;
  [v4 performOnManagedObjectContext:v7];
  v6[2](v6);
}

void sub_1000A4AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 localPlayer];
  v9 = [v8 playerID];
  v10 = [(GKResource *)GKMutableResource resourceWithID:v9];

  v11 = +[NSMutableSet set];
  v12 = [GKResource resourceForRemoveGames:*(a1 + 40)];
  [v11 addObject:v12];
  [v10 setRepresentedItem:v11];
  v13 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v7];
  v14 = [NSPredicate predicateWithFormat:@"player = %@ && game.bundleID = %@", v13, *(a1 + 40)];
  [(GKCacheObject *)GKGameRecordCacheObject deleteObjectsMatchingPredicate:v14 context:v7];

  v15 = [*(a1 + 32) clientProxy];
  v16 = [*(a1 + 32) credential];
  v17 = [v15 removeGameWriterWithCredential:v16];
  v18 = [NSSet setWithObject:v10];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A4CEC;
  v20[3] = &unk_100361198;
  v21 = *(a1 + 48);
  v22 = v5;
  v19 = v5;
  [v17 writeResources:v18 handler:v20];
}

uint64_t sub_1000A4CEC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000A4EDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDLoadedGame _gkFetchRequest];
  v23 = 0;
  v18 = v5;
  v8 = [v5 executeFetchRequest:v7 error:&v23];
  v9 = v23;
  v10 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * v15) bundleId];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [v10 copy];
  [*(a1 + 32) setResult:v17];

  [*(a1 + 32) setError:v9];
  v6[2](v6);
}

void sub_1000A50A8(uint64_t a1)
{
  v4 = [*(a1 + 32) result];
  if ([v4 count])
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) error];
    (*(v2 + 16))(v2, v4, v3);
  }

  else
  {
    [*(a1 + 40) restoreGameIdCacheWithHandler:*(a1 + 48)];
  }
}

void sub_1000A55E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:*(a1 + 32)];
  [v7 setResultType:2];
  v15 = 0;
  v8 = [v6 executeRequest:v7 error:&v15];

  v9 = v15;
  if (v9)
  {
    [*(a1 + 40) setError:v9];
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13 = [v8 result];
    v14 = *(a1 + 48);
    *buf = 138412802;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v9;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Cleared %@ cached %@ entities (error: %@)", buf, 0x20u);
  }

  v5[2](v5);
}

void sub_1000A578C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

NSArray *__cdecl sub_1000A5988(id a1, NSSet *a2)
{
  v2 = a2;
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKGameServicePrivate getFriendListAccessForAllGames:]_block_invoke", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKGameService.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKGameServicePrivate getFriendListAccessForAllGames:]_block_invoke", [v7 UTF8String], 2333);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v9 = [(NSSet *)v2 _gkMapWithBlock:&stru_100364298];

  return v9;
}

id sub_1000A5AE8(id a1, GKCDGameSettings *a2)
{
  v2 = a2;
  v3 = [(GKCDGameSettings *)v2 bundleID];
  if ([v3 isEqualToString:GKGameCenterIdentifier])
  {
    v4 = 0;
  }

  else
  {
    v4 = [[GKGameSettingsInternal alloc] initWithGameSettings:v2];
  }

  return v4;
}

void sub_1000A5B70(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GKCDGameAccessList _gkFetchRequest];
  v43 = 0;
  v8 = [v5 executeFetchRequest:v7 error:&v43];
  v9 = v43;
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v5 deleteObject:*(*(&v39 + 1) + 8 * i)];
        }

        v15 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v15);
    }

    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKDaemon;
    v7 = v11;
    v6 = v10;
    v8 = v12;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Could not fetch data from cache: %@", buf, 0xCu);
    }
  }

  else if ([v8 count])
  {
    v20 = [v8 firstObject];
    goto LABEL_16;
  }

  v21 = [GKCDGameAccessList alloc];
  v22 = +[GKCDGameAccessList entity];
  v20 = [(GKCDGameAccessList *)v21 initWithEntity:v22 insertIntoManagedObjectContext:v5];

LABEL_16:
  v23 = [(GKCDGameAccessList *)v20 expirationDate];
  v24 = [(GKCDGameAccessList *)v20 _gkIsExpired:v23];

  if (v24)
  {
    v25 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v26 = v8;
    v27 = GKBagKeyGetAllowFriendListAccessForAllGames;
    v28 = [a1[4] clientProxy];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000A5F34;
    v35[3] = &unk_1003642E8;
    v36 = a1[5];
    v37 = a1[6];
    v38 = v6;
    v29 = v27;
    v8 = v26;
    [v25 issueRequest:&__NSDictionary0__struct bagKey:v29 clientProxy:v28 handler:v35];
  }

  else
  {
    v30 = [(GKCDGameAccessList *)v20 entries];
    v31 = [v30 count];

    if (v31)
    {
      v32 = a1[6];
      v33 = [(GKCDGameAccessList *)v20 entries];
      v34 = v32[2](v32, v33);
      [a1[5] setResult:v34];
    }

    v6[2](v6);
  }
}

void sub_1000A5F34(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    v8 = [v7 objectForKey:@"results"];
    +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v8 count]);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A608C;
    v12[3] = &unk_1003642C0;
    v14 = v13 = v8;
    v17 = a4;
    v9 = *(a1 + 32);
    v15 = v9;
    v16 = *(a1 + 40);
    v10 = v14;
    v11 = v8;
    [v9 performOnManagedObjectContext:v12];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000A608C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v36 = a3;
  +[GKCDGameAccessList _gkFetchRequest];
  v35 = v46 = 0;
  v6 = [v5 executeFetchRequest:? error:?];
  v7 = 0;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028B908();
    }
  }

  v34 = v7;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v5 deleteObject:*(*(&v42 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v11);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = a1;
  obj = *(a1 + 32);
  v15 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        v20 = [GKCDGameSettings alloc];
        v21 = +[GKCDGameSettings entity];
        v22 = [(GKCDGameSettings *)v20 initWithEntity:v21 insertIntoManagedObjectContext:v5];

        v23 = [v19 objectForKeyedSubscript:@"allow-friend-list-access"];
        [(GKCDGameSettings *)v22 setAllowFriendListAccess:v23];

        v24 = [v19 objectForKeyedSubscript:@"bundle-id"];
        [(GKCDGameSettings *)v22 setBundleID:v24];

        [*(v14 + 40) addObject:v22];
      }

      v16 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v16);
  }

  v25 = v14;
  v26 = [NSDate dateWithTimeIntervalSinceNow:*(v14 + 64)];
  v27 = [GKCDGameAccessList alloc];
  v28 = +[GKCDGameAccessList entity];
  v29 = [(GKCDGameAccessList *)v27 initWithEntity:v28 insertIntoManagedObjectContext:v5];

  [(GKCDGameAccessList *)v29 setExpirationDate:v26];
  if ([*(v25 + 40) count])
  {
    v30 = [*(v25 + 40) copy];
    [(GKCDGameAccessList *)v29 setEntries:v30];

    v31 = *(v25 + 56);
    v32 = [(GKCDGameAccessList *)v29 entries];
    v33 = (*(v31 + 16))(v31, v32);
    [*(v25 + 48) setResult:v33];
  }

  v36[2](v36);
}

void sub_1000A6464(uint64_t a1)
{
  v4 = [*(a1 + 32) result];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000A68C4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = [v3 requiredDeviceCapabilities];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A6A04;
    v7[3] = &unk_100364338;
    v7[4] = &v8;
    [v4 enumerateObjectsUsingBlock:v7];

    if (([v3 isGameCenterEnabled] & 1) != 0 || *(v9 + 24) == 1)
    {
      v5 = *(a1 + 32);
      v6 = [v3 bundleIdentifier];
      [v5 addObject:v6];
    }

    _Block_object_dispose(&v8, 8);
  }
}

void sub_1000A69EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A6A04(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:@"gamekit"];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1000A6B1C(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[GKApplicationProxy alloc] initWithProxy:v8];
    if ([v3 isGameCenterEnabled])
    {
      v4 = [v3 bundleID];
      v5 = [v8 itemName];

      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = [v8 itemName];
        [v6 setObject:v4 forKey:v7];
      }
    }
  }
}

void sub_1000A72FC(uint64_t a1, void *a2)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A7428;
  v11[3] = &unk_100364400;
  v4 = (a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = *v4;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v16 = *(a1 + 80);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v10 = a2;
  [v5 performOnManagedObjectContext:v11];
  v10[2](v10);
}

void sub_1000A7428(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(GKCacheObject *)GKCompatiblePlayerListCacheObject firstObjectMatchingPredicate:*(a1 + 32) context:v5];
  v8 = [v7 isValid];
  v9 = v8;
  if (!v8 || ([v7 internalRepresentation], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "setResult:", v10), v10, objc_msgSend(v7, "expirationDate"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceNow"), v13 = v12, v11, v13 <= 0.0))
  {
    v14 = *(a1 + 40);
    v15 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 139, "[GKGameStatService _getRecentMatchesForGameDescriptor:type:reference:handler:]_block_invoke_2"];
    v16 = [v14 transactionGroupWithName:v15];

    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000A7754;
    v30[3] = &unk_1003643D8;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v31 = v17;
    v32 = v18;
    v19 = v16;
    v33 = v19;
    v34 = v7;
    v38 = *(a1 + 80);
    v35 = *(a1 + 64);
    v36 = *(a1 + 72);
    v37 = v39;
    [v19 perform:v30];
    if (v9)
    {
      v20 = [*(a1 + 56) clientProxy];
      v21 = [v20 replyQueue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000A7CE4;
      v25[3] = &unk_1003624A8;
      v25[4] = *(a1 + 56);
      v25[5] = v39;
      [v19 notifyOnQueue:v21 block:v25];
    }

    else
    {
      v22 = *(a1 + 40);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000A7B74;
      v26[3] = &unk_100360F00;
      v23 = v19;
      v24 = *(a1 + 56);
      v27 = v23;
      v28 = v24;
      v29 = *(a1 + 40);
      [v22 perform:v26];
    }

    _Block_object_dispose(v39, 8);
  }

  v6[2](v6);
}

void sub_1000A7754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A78B0;
  v15[3] = &unk_1003643B0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v20 = *(a1 + 88);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = *(a1 + 80);
  v18 = v3;
  v19 = v13;
  v14 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-get-friends-who-played-game" clientProxy:v6 handler:v15];
}

void sub_1000A78B0(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 && !v8)
  {
    v10 = [*(a1 + 32) context];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A7A34;
    v17[3] = &unk_100364388;
    v11 = *(a1 + 40);
    v21 = a4;
    v12 = *(a1 + 32);
    v22 = *(a1 + 80);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v18 = v16;
    v19 = v15;
    v20 = v7;
    [v10 performBlockAndWait:v17];

    *(*(*(a1 + 72) + 8) + 24) = a4 > 0.0;
  }

  [*(a1 + 32) setError:v9];
  (*(*(a1 + 64) + 16))();
}

void sub_1000A7A34(uint64_t a1)
{
  v9 = *(a1 + 32);
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 72)];
  if (!v9)
  {
    v3 = [GKCompatiblePlayerListCacheObject alloc];
    v4 = [*(a1 + 40) context];
    v9 = [(GKCacheObject *)v3 initWithManagedObjectContext:v4];

    [(GKCompatiblePlayerListCacheObject *)v9 setType:*(a1 + 80)];
    [(GKCompatiblePlayerListCacheObject *)v9 setReference:*(a1 + 48)];
    v5 = *(a1 + 56);
    v6 = [*(a1 + 40) context];
    v7 = [GKGameCacheObject gameForGameDescriptor:v5 context:v6];
    [(GKCompatiblePlayerListCacheObject *)v9 setGame:v7];
  }

  [(GKCompatiblePlayerListCacheObject *)v9 updateWithServerRepresentation:*(a1 + 64) expirationDate:v2];
  v8 = [(GKPlayerListCacheObject *)v9 internalRepresentation];
  [*(a1 + 40) setResult:v8];
}

void sub_1000A7B74(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [a1[5] clientProxy];
  v6 = [v5 replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A7C68;
  v8[3] = &unk_100360FC8;
  v9 = a1[6];
  v10 = a1[4];
  v11 = v3;
  v7 = v3;
  [v4 notifyOnQueue:v6 block:v8];
}

uint64_t sub_1000A7C68(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) result];
  [*(a1 + 32) setResult:v3];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_1000A7CE4(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) clientProxy];
    [v2 refreshContentsForDataType:7 userInfo:0];
  }
}

void sub_1000A7D48(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 _gkValuesForKeyPath:@"player.playerID"];

  v4 = [(GKService *)GKProfileService serviceFromService:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A7E3C;
  v5[3] = &unk_100362408;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  [v4 getProfilesForPlayerIDs:v3 handler:v5];
}

void sub_1000A7E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 _gkMapDictionaryWithKeyPath:@"playerID"];
  v7 = [*(a1 + 32) result];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A7F54;
  v14[3] = &unk_100364450;
  v15 = v6;
  v8 = v6;
  v9 = [v7 _gkMapWithBlock:v14];

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) error];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v5;
  }

  (*(v10 + 16))(v10, v9, v13);
}

id sub_1000A7F54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 player];
  v5 = [v4 playerID];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [v3 setPlayer:v6];
  }

  return v3;
}

void sub_1000A8118(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"player == %@ && game == %@", *(a1 + 32), *(a1 + 40)];
  v3 = [(GKCacheObject *)GKRecentPlayerListCacheObject firstObjectMatchingPredicate:v2 context:*(a1 + 48)];

  v4 = [v3 isValid];
  v5 = v4;
  if (v4)
  {
    v6 = [v3 internalRepresentation];
    v7 = [v3 seed];
    v8 = [v3 expirationDate];
    [v8 timeIntervalSinceNow];
    v10 = v9 > 0.0;
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v7 = 0;
  }

  v11 = [*(a1 + 56) clientProxy];
  v12 = [v11 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A82C0;
  block[3] = &unk_100363A08;
  v13 = *(a1 + 64);
  v18 = v7;
  v19 = v13;
  v17 = v6;
  v20 = v10;
  v21 = v5;
  v14 = v7;
  v15 = v6;
  dispatch_async(v12, block);
}

void sub_1000A83EC(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"player == %@ && otherPlayer == %@", *(a1 + 32), *(a1 + 40)];
  v3 = [(GKCacheObject *)GKRecentGameListCacheObject firstObjectMatchingPredicate:v2 context:*(a1 + 48)];

  v4 = [v3 isValid];
  v5 = v4;
  if (v4)
  {
    v6 = [v3 internalRepresentation];
    v7 = [v3 seed];
    v8 = [v3 expirationDate];
    [v8 timeIntervalSinceNow];
    v10 = v9 > 0.0;
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v7 = 0;
  }

  v11 = [*(a1 + 56) clientProxy];
  v12 = [v11 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8594;
  block[3] = &unk_100363A08;
  v13 = *(a1 + 64);
  v18 = v7;
  v19 = v13;
  v17 = v6;
  v20 = v10;
  v21 = v5;
  v14 = v7;
  v15 = v6;
  dispatch_async(v12, block);
}

void sub_1000A8884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v28[0] = @"count";
  v7 = [NSNumber numberWithInteger:*(a1 + 80)];
  v29[0] = v7;
  v28[1] = @"since-time";
  v8 = [*(a1 + 32) _gkServerTimestamp];
  v29[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v11 gameDescriptor];
    [v10 setObject:v12 forKeyedSubscript:@"game"];
  }

  v13 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v14 = [*(a1 + 48) clientProxy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A8AD8;
  v19[3] = &unk_1003644C8;
  v27 = *(a1 + 72);
  v20 = *(a1 + 56);
  v21 = v5;
  v22 = *(a1 + 64);
  v23 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v24 = v15;
  v25 = v16;
  v26 = v6;
  v17 = v6;
  v18 = v5;
  [v13 issueRequest:v10 bagKey:@"gk-get-recently-matched" clientProxy:v14 handler:v19];
}

void sub_1000A8AD8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  *(*(*(a1 + 88) + 8) + 24) = a4;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000A8C38;
    v20[3] = &unk_1003644A0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v26 = a4;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v21 = v17;
    v22 = v16;
    v23 = v7;
    v18 = *(a1 + 32);
    v19 = *(a1 + 72);
    v24 = v18;
    v25 = v19;
    [v11 perform:v20];
  }

  (*(*(a1 + 80) + 16))(*(a1 + 80), v8, v9, v10);
}

void sub_1000A8C38(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A8D78;
  v14[3] = &unk_100364478;
  v21 = *(a1 + 88);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  v17 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v18 = v11;
  v19 = v12;
  v20 = v3;
  v13 = v3;
  [v4 performBlock:v14];
}

void sub_1000A8D78(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 96)];
  v3 = [NSPredicate predicateWithFormat:@"player == %@ && game == %@", *(a1 + 32), *(a1 + 40)];
  v4 = [(GKCacheObject *)GKRecentPlayerListCacheObject firstObjectMatchingPredicate:v3 context:*(a1 + 48)];

  if (!v4)
  {
    v4 = [(GKCacheObject *)[GKRecentPlayerListCacheObject alloc] initWithManagedObjectContext:*(a1 + 48)];
    [(GKRecentPlayerListCacheObject *)v4 setGame:*(a1 + 40)];
    [(GKRecentPlayerListCacheObject *)v4 setPlayer:*(a1 + 32)];
  }

  [(GKRecentPlayerListCacheObject *)v4 setSinceDate:*(a1 + 56)];
  [(GKRecentPlayerListCacheObject *)v4 updateWithServerRepresentation:*(a1 + 64) expirationDate:v2];
  v5 = [(GKRecentPlayerListCacheObject *)v4 entries];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(GKRecentPlayerListCacheObject *)v4 entries];
    v8 = [v7 _gkValuesForKeyPath:@"playerID"];
    v9 = [*(a1 + 32) playerID];
    v10 = [v8 arrayByAddingObject:v9];

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000A91A4;
    v44[3] = &unk_100360FF0;
    v11 = *(a1 + 72);
    v44[4] = *(a1 + 80);
    v12 = v10;
    v45 = v12;
    [v11 perform:v44];
    v13 = *(a1 + 40);
    if (v13)
    {
      v29 = v2;
      v14 = [v13 bundleID];
      v47 = v14;
      v15 = [NSArray arrayWithObjects:&v47 count:1];

      v16 = *(a1 + 72);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000A935C;
      v40[3] = &unk_100360F00;
      v17 = v15;
      v41 = v17;
      v18 = *(a1 + 48);
      v19 = *(a1 + 80);
      v42 = v18;
      v43 = v19;
      [v16 perform:v40];
      v28 = v12;
      v20 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:v12 inManagedObjectContext:*(a1 + 48)];
      v21 = [(GKService *)GKGameServicePrivate serviceFromService:*(a1 + 80)];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v20;
      v22 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v36 + 1) + 8 * i);
            v27 = *(a1 + 72);
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_1000A9440;
            v31[3] = &unk_100361F90;
            v32 = v21;
            v33 = v26;
            v34 = v17;
            v35 = *(a1 + 48);
            [v27 perform:v31];
          }

          v23 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
        }

        while (v23);
      }

      v2 = v29;
      v12 = v28;
    }
  }

  (*(*(a1 + 88) + 16))();
}

void sub_1000A91A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKProfileService serviceFromService:*(a1 + 32)];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9268;
  v7[3] = &unk_1003626B0;
  v8 = v3;
  v6 = v3;
  [v4 getProfilesForPlayerIDs:v5 handler:v7];
}

void sub_1000A9268(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "recent Player profiles:%@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000A935C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A9430;
  v8[3] = &unk_100363B20;
  v9 = v3;
  v7 = v3;
  [GKGameServicePrivate loadGameMetadataForBundleIDs:v4 context:v5 clientProxy:v6 handler:v8];
}

void sub_1000A9440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) internalRepresentation];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A950C;
  v9[3] = &unk_100363B20;
  v10 = v3;
  v8 = v3;
  [v4 loadGameStatsForPlayer:v5 bundleIdentifiers:v7 context:v6 handler:v9];
}

void sub_1000A951C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_1000A98FC(uint64_t a1)
{
  v6[0] = @"count";
  v2 = [NSNumber numberWithInteger:*(a1 + 56)];
  v7[0] = v2;
  v6[1] = @"since-time";
  v3 = [*(a1 + 40) _gkServerTimestamp];
  v7[1] = v3;
  v6[2] = @"other-player-id";
  v4 = [*(a1 + 48) playerID];
  v7[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"request"];
}

void sub_1000A9A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"request"];
  v5 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v6 = [*(a1 + 40) clientProxy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A9B7C;
  v10[3] = &unk_1003644C8;
  v18 = *(a1 + 80);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 40);
  v15 = v7;
  v16 = v8;
  v17 = v3;
  v9 = v3;
  [v5 issueRequest:v4 bagKey:@"gk-get-recently-matched" clientProxy:v6 handler:v10];
}

void sub_1000A9B7C(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  *(*(*(a1 + 88) + 8) + 24) = a4;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000A9CDC;
    v20[3] = &unk_1003644A0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v26 = a4;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v21 = v17;
    v22 = v16;
    v23 = v7;
    v18 = *(a1 + 32);
    v19 = *(a1 + 72);
    v24 = v18;
    v25 = v19;
    [v11 perform:v20];
  }

  (*(*(a1 + 80) + 16))(*(a1 + 80), v8, v9, v10);
}

void sub_1000A9CDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A9E1C;
  v14[3] = &unk_100364478;
  v21 = *(a1 + 88);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  v17 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v18 = v11;
  v19 = v12;
  v20 = v3;
  v13 = v3;
  [v4 performBlock:v14];
}

void sub_1000A9E1C(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 96)];
  v3 = [NSPredicate predicateWithFormat:@"player == %@ && otherPlayer == %@", *(a1 + 32), *(a1 + 40)];
  v4 = [(GKCacheObject *)GKRecentGameListCacheObject firstObjectMatchingPredicate:v3 context:*(a1 + 48)];

  if (!v4)
  {
    v4 = [(GKCacheObject *)[GKRecentGameListCacheObject alloc] initWithManagedObjectContext:*(a1 + 48)];
    [(GKRecentGameListCacheObject *)v4 setPlayer:*(a1 + 32)];
    [(GKRecentGameListCacheObject *)v4 setOtherPlayer:*(a1 + 40)];
  }

  [(GKRecentGameListCacheObject *)v4 setSinceDate:*(a1 + 56)];
  [(GKRecentGameListCacheObject *)v4 updateWithServerRepresentation:*(a1 + 64) expirationDate:v2];
  v5 = [(GKRecentGameListCacheObject *)v4 entries];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(GKRecentGameListCacheObject *)v4 entries];
    v8 = [v7 _gkValuesForKeyPath:@"bundleID"];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000AA1A4;
    v35[3] = &unk_100360F00;
    v9 = *(a1 + 72);
    v35[4] = *(a1 + 80);
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    [v9 perform:v35];
    v10 = *(a1 + 72);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000AA2F8;
    v31[3] = &unk_100360F00;
    v11 = v8;
    v32 = v11;
    v12 = *(a1 + 48);
    v13 = *(a1 + 80);
    v33 = v12;
    v34 = v13;
    [v10 perform:v31];
    v14 = [(GKService *)GKGameServicePrivate serviceFromService:*(a1 + 80)];
    v15 = *(a1 + 72);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000AA3DC;
    v26[3] = &unk_100361F90;
    v16 = v14;
    v27 = v16;
    v28 = *(a1 + 32);
    v17 = v11;
    v29 = v17;
    v30 = *(a1 + 48);
    [v15 perform:v26];
    v18 = *(a1 + 72);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000AA4B8;
    v21[3] = &unk_100361F90;
    v22 = v16;
    v23 = *(a1 + 32);
    v24 = v17;
    v25 = *(a1 + 48);
    v19 = v17;
    v20 = v16;
    [v18 perform:v21];
  }

  (*(*(a1 + 88) + 16))();
}

void sub_1000AA1A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKProfileService serviceFromService:*(a1 + 32)];
  v5 = [*(a1 + 40) playerID];
  v11[0] = v5;
  v6 = [*(a1 + 48) playerID];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AA2E8;
  v9[3] = &unk_1003626B0;
  v10 = v3;
  v8 = v3;
  [v4 getProfilesForPlayerIDs:v7 handler:v9];
}

void sub_1000AA2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) clientProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA3CC;
  v8[3] = &unk_100363B20;
  v9 = v3;
  v7 = v3;
  [GKGameServicePrivate loadGameMetadataForBundleIDs:v4 context:v5 clientProxy:v6 handler:v8];
}

void sub_1000AA3DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) internalRepresentation];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AA4A8;
  v9[3] = &unk_100363B20;
  v10 = v3;
  v8 = v3;
  [v4 loadGameStatsForPlayer:v5 bundleIdentifiers:v7 context:v6 handler:v9];
}

void sub_1000AA4B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) internalRepresentation];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AA584;
  v9[3] = &unk_100363B20;
  v10 = v3;
  v8 = v3;
  [v4 loadGameStatsForPlayer:v5 bundleIdentifiers:v7 context:v6 handler:v9];
}

void sub_1000AA594(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_1000AA7F0(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA8BC;
  v8[3] = &unk_100361348;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 32);
  v7 = a2;
  [v4 performOnManagedObjectContext:v8];
  v7[2](v7);
}

void sub_1000AA8BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 dictionaryForRequest];
    v10 = [GKGameCacheObject gameForGameDescriptor:v9 context:v5];
  }

  else
  {
    v10 = 0;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AAA1C;
  v17[3] = &unk_1003645B8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v18 = v12;
  v19 = v13;
  v20 = v7;
  v21 = v10;
  v22 = v6;
  v14 = v6;
  v15 = v10;
  v16 = v7;
  [v11 fetchRecentPlayersWithPlayer:v16 game:v15 context:v5 handler:v17];
}

void sub_1000AAA1C(uint64_t a1, void *a2, void *a3, int a4, char a5)
{
  v9 = a2;
  v10 = a3;
  if (a4 && (a5 & 1) != 0)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKFriendList:recent list of players:%@", buf, 0xCu);
    }

    [*(a1 + 32) setObject:v9 forKeyedSubscript:@"players"];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:@"seed"];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKFriendList:list from cache is not valid/good going to server:%@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 475, "[GKGameStatService getRecentPlayersForGameDescriptor:handler:]_block_invoke"];
    v17 = [v15 transactionGroupWithName:v16];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000AAD88;
    v33[3] = &unk_100361F90;
    v18 = *(a1 + 48);
    v33[4] = *(a1 + 40);
    v34 = v18;
    v35 = *(a1 + 56);
    v19 = v17;
    v36 = v19;
    [v19 perform:v33];
    v20 = [*(a1 + 40) clientProxy];
    v21 = [v20 replyQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000AAEAC;
    v28[3] = &unk_100364590;
    v29 = *(a1 + 32);
    v30 = v19;
    v27 = *(a1 + 40);
    v22 = *(&v27 + 1);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    *&v25 = v23;
    *(&v25 + 1) = v24;
    v31 = v27;
    v32 = v25;
    v26 = v19;
    [v26 notifyOnQueue:v21 block:v28];
  }
}

void sub_1000AAD88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AAE64;
  v9[3] = &unk_100363F78;
  v10 = *(a1 + 56);
  v11 = v3;
  v8 = v3;
  [v4 loadRecentPlayersWithPlayer:v5 game:v6 context:v7 handler:v9];
}

uint64_t sub_1000AAE64(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000AAEAC(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = [*(a1 + 32) context];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000AB004;
    v9[3] = &unk_100364568;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 72);
    [v5 fetchRecentPlayersWithPlayer:v6 game:v7 context:v8 handler:v9];
  }
}

uint64_t sub_1000AB004(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"players"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"seed"];

  v7 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v7];

  v8 = *(*(a1 + 48) + 16);

  return v8();
}

void sub_1000AB0A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"players"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v3, v4);
}

void sub_1000AB304(int8x16_t *a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AB3C0;
  v6[3] = &unk_100361708;
  v5 = a1[2];
  v3 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v4 = a2;
  [v3 performOnManagedObjectContext:v6];
  v4[2](v4);
}

void sub_1000AB3C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v6];
  v8 = [v7 playerID];
  v9 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v8 inManagedObjectContext:v6];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AB510;
  v16[3] = &unk_1003645B8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v17 = v11;
  v18 = v12;
  v19 = v7;
  v20 = v9;
  v21 = v5;
  v13 = v5;
  v14 = v9;
  v15 = v7;
  [v10 fetchRecentGamesBetweenPlayer:v15 otherPlayer:v14 context:v6 handler:v16];
}

uint64_t sub_1000AB510(uint64_t a1, uint64_t a2, void *a3, int a4, char a5)
{
  v9 = *(a1 + 32);
  v10 = a3;
  [v9 setObject:a2 forKeyedSubscript:@"games"];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"seed"];

  if (!a4 || (a5 & 1) == 0)
  {
    v11 = *(a1 + 32);
    v12 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 530, "[GKGameStatService getRecentGamesWithPlayer:handler:]_block_invoke_3"];
    v13 = [v11 transactionGroupWithName:v12];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000AB744;
    v25[3] = &unk_100361F90;
    v14 = *(a1 + 48);
    v25[4] = *(a1 + 40);
    v26 = v14;
    v27 = *(a1 + 56);
    v15 = v13;
    v28 = v15;
    [v15 perform:v25];
    if ((a5 & 1) == 0)
    {
      v16 = *(a1 + 32);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000AB868;
      v20[3] = &unk_100361BF8;
      v21 = v15;
      v19 = *(a1 + 32);
      v17 = v19.i64[0];
      v22 = vextq_s8(v19, v19, 8uLL);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      [v16 perform:v20];
    }
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_1000AB744(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) context];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AB820;
  v9[3] = &unk_100363F78;
  v10 = *(a1 + 56);
  v11 = v3;
  v8 = v3;
  [v4 loadRecentGamesBetweenPlayer:v5 otherPlayer:v6 context:v7 handler:v9];
}

uint64_t sub_1000AB820(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000AB868(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [a1[5] clientProxy];
  v6 = [v5 replyQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AB9A4;
  v14[3] = &unk_100364590;
  v7 = a1[6];
  v8 = a1[4];
  v13 = a1[5];
  v9 = a1[7];
  *&v10 = v13;
  *(&v10 + 1) = v9;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  v15 = v11;
  v16 = v10;
  v17 = a1[8];
  v18 = v3;
  v12 = v3;
  [v4 notifyOnQueue:v6 block:v14];
}

void sub_1000AB9A4(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = [*(a1 + 32) context];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000ABAE8;
    v9[3] = &unk_1003625E8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 72);
    [v5 fetchRecentGamesBetweenPlayer:v6 otherPlayer:v7 context:v8 handler:v9];
  }
}

uint64_t sub_1000ABAE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"games"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"seed"];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000ABB68(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"games"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"seed"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v3, v4);
}

void sub_1000ABDB0(void *a1)
{
  v2 = [GKGameCacheObject gameForGameDescriptor:a1[4] context:a1[5]];
  v3 = [v2 achievementDescriptionList];
  if ([v3 isValid])
  {
    v5 = [v3 internalRepresentation];
    v4 = [v3 expirationDate];
    [v4 timeIntervalSinceNow];
  }

  else
  {
    v5 = 0;
  }

  (*(a1[6] + 16))();
}

void sub_1000AC1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC1C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AC1E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [GKGameCacheObject gameForGameDescriptor:v5 context:a2];
  v8 = [v7 bundleID];
  if (v8)
  {
    v9 = [v7 achievementDescriptionList];
    v10 = [v9 expirationDate];
    [v10 timeIntervalSinceNow];
    *(*(*(a1 + 64) + 8) + 24) = v11;

    v12 = [*(a1 + 40) releaseStateHeaderValueForBundleID:v8];
    v40[0] = v8;
    v40[1] = v12;
    v13 = [NSArray arrayWithObjects:v40 count:2];
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (v9 && ![v9 expired])
    {
      [*(a1 + 48) setObject:&off_100382418 forKeyedSubscript:@"skipCallbacks"];
      v28 = *(a1 + 56);
      v29 = *(*(*(a1 + 64) + 8) + 24);
      v25 = [*(a1 + 48) error];
      (*(v28 + 16))(v28, v25, v29);
    }

    else
    {
      v38[0] = @"game";
      v16 = [v7 gameDescriptor];
      v38[1] = @"x-gk-release-state";
      v39[0] = v16;
      v39[1] = v12;
      v17 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

      v18 = *(a1 + 48);
      v19 = [*(a1 + 40) clientProxy];
      v20 = [v19 replyQueue];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000AC514;
      v30[3] = &unk_100364658;
      v36 = *(a1 + 72);
      v35 = *(a1 + 56);
      v21 = *(a1 + 48);
      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v31 = v21;
      v32 = v22;
      v24 = *(a1 + 64);
      v33 = v17;
      v37 = v24;
      v34 = v23;
      v25 = v17;
      [v18 performOnQueue:v20 block:v30];
    }

    v6[2](v6);
  }

  else
  {
    v26 = *(a1 + 56);
    v27 = [NSError userErrorForCode:15 underlyingError:0];
    (*(v26 + 16))(v26, v27, 0.0);

    v6[2](v6);
    v9 = v6;
  }
}

void sub_1000AC514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(*(*(a1 + 72) + 8) + 40);
  v6 = objc_retainBlock(*(a1 + 64));
  LODWORD(v5) = [v4 doesCallbackListExistFor:@"gk-get-game-achievements" parameters:v5 callback:v6];

  if (v5)
  {
    [*(a1 + 32) setObject:&off_100382418 forKeyedSubscript:@"skipCallbacks"];
    v3[2](v3);
  }

  else
  {
    v7 = +[GKPlayerCredentialController sharedController];
    v8 = [*(a1 + 40) clientProxy];
    v9 = [v7 pushCredentialForEnvironment:{objc_msgSend(v8, "environment")}];

    v10 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v11 = *(a1 + 48);
    v12 = [*(a1 + 40) clientProxy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AC704;
    v16[3] = &unk_100364630;
    v13 = *(a1 + 32);
    v14 = *(a1 + 80);
    v17 = v13;
    v22 = v14;
    v18 = *(a1 + 56);
    v19 = v9;
    v20 = *(a1 + 40);
    v21 = v3;
    v15 = v9;
    [v10 issueRequestForPlayer:v11 bagKey:@"gk-get-game-achievements" clientProxy:v12 locale:0 playerCredential:v15 handler:v16];
  }
}

void sub_1000AC704(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  *(*(*(a1 + 72) + 8) + 24) = a4;
  if (v7 && !a3)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AC810;
    v11[3] = &unk_100364608;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16 = a4;
    v13 = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v14 = v9;
    v15 = v10;
    [v8 performOnManagedObjectContext:v11];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_1000AC810(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = a3;
  v6 = [GKGameCacheObject gameForGameDescriptor:*(a1 + 32) context:v5];
  v7 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 64)];
  v28 = v6;
  v8 = [v6 achievementDescriptionList];
  if (!v8)
  {
    v8 = [(GKCacheObject *)[GKAchievementDescriptionListCacheObject alloc] initWithManagedObjectContext:v5];
    [(GKAchievementDescriptionListCacheObject *)v8 setGame:v28];
  }

  v27 = v7;
  [(GKAchievementDescriptionListCacheObject *)v8 updateWithServerRepresentation:*(a1 + 40) expirationDate:v7];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = v8;
  obj = [(GKAchievementDescriptionListCacheObject *)v8 entries];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = [(GKCacheObject *)[GKAchievementThatAFriendHasListCacheObject alloc] initWithManagedObjectContext:v5];
        [(GKAchievementThatAFriendHasListCacheObject *)v14 setGame:v28];
        v15 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
        [(GKAchievementThatAFriendHasListCacheObject *)v14 setPlayer:v15];

        [(GKAchievementThatAFriendHasListCacheObject *)v14 setAchievementDescription:v13];
        v16 = *(a1 + 40);
        v17 = [*(a1 + 48) playerInternal];
        v18 = [v17 playerID];
        v19 = [v13 identifier];
        [(GKAchievementThatAFriendHasListCacheObject *)v14 updateWithServerRepresentation:v16 expirationDate:v27 playerId:v18 achievementId:v19];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  v20 = [(GKService *)GKProfileService serviceFromService:*(a1 + 56)];
  v21 = [GKGameStatService friendsRequiringHydration:*(a1 + 40)];
  v22 = [v21 allObjects];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000ACB28;
  v29[3] = &unk_1003626B0;
  v30 = v25;
  v23 = v25;
  [v20 getProfilesForPlayerIDs:v22 handler:v29];
}

void sub_1000ACB38(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"skipCallbacks"];
  if (v2)
  {
  }

  else if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v4 = [v3 retrieveAndClearCallbacks:@"gk-get-game-achievements" parameters:*(*(*(a1 + 40) + 8) + 40)];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = *(*(*(a1 + 48) + 8) + 24);
          v12 = [*(a1 + 32) error];
          (*(v10 + 16))(v10, v12, v11);

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

void sub_1000AD888(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AD9CC;
  v16[3] = &unk_100364720;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v21 = v6;
  v11 = *(a1 + 40);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v17 = v13;
  v18 = v12;
  v19 = v5;
  v20 = *(a1 + 64);
  v14 = v5;
  v15 = v6;
  [v8 fetchAchievementDescriptionsForGameDescriptor:v7 context:v14 handler:v16];
}

void sub_1000AD9CC(id *a1, void *a2, void *a3, int a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [a1[4] clientProxy];
  v12 = [v11 isInDebugMode];

  if (v12)
  {
    v13 = [a1[4] clientProxy];
    v14 = [v13 originalBundleIdentifier];
    [a1[5] setBundleIdentifier:v14];

    v15 = [a1[6] context];
    v16 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v15];

    v17 = [v16 internalRepresentationWithPieces:0];
    v18 = a1[4];
    v19 = a1[5];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000ADDC0;
    v43[3] = &unk_100362408;
    v44 = a1[6];
    v45 = a1[10];
    [v18 loadFakeAchievementDescriptionsWithGame:v19 player:v17 completionHandler:v43];
  }

  else
  {
    [a1[6] setObject:v9 forKeyedSubscript:@"results"];
    if (!a4 || (a5 & 1) == 0)
    {
      v20 = a1[6];
      v21 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 846, "[GKGameStatService getAchievementDescriptionsForGameDescriptor:handler:]_block_invoke_2"];
      v22 = [v20 transactionGroupWithName:v21];

      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v42 = 0;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000ADE38;
      v36[3] = &unk_1003646F8;
      v36[4] = a1[4];
      v37 = a1[7];
      v38 = a1[8];
      v40 = v41;
      v23 = v22;
      v39 = v23;
      [v23 perform:v36];
      if (a5)
      {
        v24 = a1[9];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000AE1E4;
        v28[3] = &unk_1003624A8;
        v28[4] = a1[4];
        v28[5] = v41;
        [v23 notifyOnQueue:v24 block:v28];
      }

      else
      {
        v25 = a1[6];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000ADF80;
        v29[3] = &unk_100362FC8;
        v30 = v23;
        v31 = a1[9];
        v26 = a1[6];
        v27 = a1[4];
        v32 = v26;
        v33 = v27;
        v34 = a1[7];
        v35 = a1[8];
        [v25 perform:v29];
      }

      _Block_object_dispose(v41, 8);
    }

    (*(a1[10] + 2))();
  }
}

uint64_t sub_1000ADDC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"results"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000ADE38(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000ADF04;
  v9[3] = &unk_1003646D0;
  v7 = a1[6];
  v6 = a1[7];
  v12 = a1[8];
  v10 = v6;
  v11 = v3;
  v8 = v3;
  [v4 loadAchievementDescriptionsForGameDescriptor:v5 context:v7 handler:v9];
}

void sub_1000ADF04(void *a1, void *a2, double a3)
{
  v5 = a3 > 0.0 && a2 == 0;
  *(*(a1[6] + 8) + 24) = v5;
  v6 = a1[4];
  v7 = a2;
  [v6 setError:v7];
  (*(a1[5] + 16))();
}

void sub_1000ADF80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE074;
  v10[3] = &unk_100364590;
  v11 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = *(a1 + 72);
  v16 = v3;
  v9 = v3;
  [v4 notifyOnQueue:v5 block:v10];
}

void sub_1000AE074(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000AE194;
    v8[3] = &unk_1003625E8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 72);
    [v5 fetchAchievementDescriptionsForGameDescriptor:v6 context:v7 handler:v8];
  }
}

uint64_t sub_1000AE194(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"results"];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000AE1E4(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) clientProxy];
    [v2 refreshContentsForDataType:8 userInfo:0];
  }
}

void sub_1000AE248(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"results"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000AE538(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AE668;
  v17[3] = &unk_1003647D8;
  v18 = v5;
  v9 = v8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = *(a1 + 32);
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v19 = v14;
  v20 = v13;
  v21 = v6;
  v22 = v12;
  v15 = v6;
  v16 = v5;
  [v7 loadAchievementDescriptionsForGameDescriptor:v8 context:v16 handler:v17];
}

void sub_1000AE668(uint64_t a1)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AE76C;
  v13[3] = &unk_1003647B0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v14 = v8;
  v15 = v7;
  v9 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v9;
  [v2 performBlockAndWait:v13];
  (*(*(a1 + 72) + 16))(*(a1 + 72), v10, v11, v12);
}

void sub_1000AE76C(uint64_t a1)
{
  v2 = [GKGameCacheObject gameForGameDescriptor:*(a1 + 32) context:*(a1 + 40)];
  v3 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:*(a1 + 40)];
  v29 = v3;
  if ([*(a1 + 48) count])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    [*(a1 + 56) setObject:0 forKeyedSubscript:@"results"];
    [*(a1 + 56) setObject:0 forKeyedSubscript:@"missingPlayers"];
  }

  else
  {
    if ([*(a1 + 48) count])
    {
      v5 = [GKPlayerProfileCacheObject playerProfilesWithPlayers:*(a1 + 48) inManagedObjectContext:*(a1 + 40)];
    }

    else
    {
      v39 = v3;
      v5 = [NSArray arrayWithObjects:&v39 count:1];
    }

    v6 = v5;
    v7 = [v5 count];
    v28 = [NSMutableDictionary dictionaryWithCapacity:v7];
    v26 = [NSMutableArray arrayWithCapacity:v7];
    [*(a1 + 40) refreshObject:v2 mergeChanges:1];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v6;
    v30 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v30)
    {
      v27 = *v35;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v34 + 1) + 8 * i);
          [*(a1 + 40) refreshObject:v9 mergeChanges:1];
          v10 = [v9 achievementLists];
          v11 = [NSMutableSet setWithSet:v10];

          v12 = [v2 achievementLists];
          [v11 intersectSet:v12];

          v31 = v11;
          v13 = [v11 anyObject];
          v14 = v13;
          if (!v13 || [v13 expired])
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v15 = [v9 internalRepresentation];
            [v26 addObject:v15];
          }

          v16 = [v14 internalRepresentation];
          v17 = [v16 _gkMapWithBlock:&stru_100364760];
          v18 = *(a1 + 64);
          v19 = [v29 playerID];
          v20 = [v2 bundleID];
          v21 = [v18 getFriendsWhoHaveTheseAchievements:v17 playerID:v19 gameBundleID:v20 context:*(a1 + 40)];

          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1000AEBA4;
          v32[3] = &unk_100364788;
          v33 = v16;
          v22 = v16;
          [v21 enumerateObjectsUsingBlock:v32];
          if (v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = &__NSArray0__struct;
          }

          v24 = [v9 playerID];
          [v28 setObject:v23 forKeyedSubscript:v24];
        }

        v30 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v30);
    }

    [*(a1 + 56) setObject:v26 forKeyedSubscript:@"missingPlayers"];
    [*(a1 + 56) setObject:v28 forKeyedSubscript:@"results"];
  }
}

void sub_1000AEBA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v6 setFriendsWhoHaveThis:v5];
}

void sub_1000AEC14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"results"];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    (*(v2 + 16))(v2, v4, 1, 0);
  }

  else
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"missingPlayers"];
    (*(v2 + 16))(v2, v4, 0, v3);
  }
}

void sub_1000AEF38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dictionaryForRequest];
  v8 = [GKGameCacheObject gameForGameDescriptor:v7 context:v5];

  if (v8)
  {
    v9 = [v8 bundleID];
    v37 = [v8 gameDescriptor];
    v10 = *(a1 + 40);
    if (!v10 || ![v10 count])
    {
      v11 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
        v11 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_10028BA68();
      }
    }

    v39 = v5;
    v13 = +[NSMutableSet set];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = a1;
    v14 = *(a1 + 40);
    v15 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v50;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v50 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v49 + 1) + 8 * i);
          if ([v19 length] && objc_msgSend(v9, "length"))
          {
            v57[0] = @"GKPlayerAchievements";
            v57[1] = v9;
            v57[2] = v19;
            v20 = [NSArray arrayWithObjects:v57 count:3];
            v21 = [GKResourceIdentifier resourceIdentifierForKeys:v20];
            [v13 addObject:v21];
          }

          else
          {
            v22 = os_log_GKGeneral;
            if (!os_log_GKGeneral)
            {
              v23 = GKOSLoggers();
              v22 = os_log_GKGeneral;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              v24 = *(v40 + 40);
              *buf = 138412546;
              v54 = v9;
              v55 = 2112;
              v56 = v24;
              _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "================ GameKit - GKGameStatService requested a simulated crash.\nachievementsForPlayersAndGame:players:context:handler: got an invalid playerID from bundleID: %@, playerIDs: %@ ================", buf, 0x16u);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v16);
    }

    v25 = *(v40 + 48);
    v26 = [*(v40 + 56) clientProxy];
    v27 = [v26 replyQueue];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000AF3A8;
    v41[3] = &unk_100364848;
    v42 = v13;
    v43 = *(v40 + 48);
    v47 = *(v40 + 64);
    v28 = *(v40 + 56);
    v44 = v38;
    v45 = v28;
    v29 = v8;
    v30 = *(v40 + 72);
    v46 = v29;
    v48 = v30;
    v31 = v38;
    v32 = v13;
    [v25 performOnQueue:v27 block:v41];

    v6[2](v6);
    v5 = v39;
  }

  else
  {
    v33 = *(a1 + 64);
    v34 = *(*(*(a1 + 72) + 8) + 24);
    v35 = [*(a1 + 32) dictionaryForRequest];
    v36 = [NSError userErrorForCode:15 userInfo:v35];
    (*(v33 + 16))(v33, v36, v34);

    v6[2](v6);
  }
}

void sub_1000AF3A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 _gkMapWithBlock:&stru_1003647F8];
  if ([v5 count])
  {
    v6 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AF564;
    v11[3] = &unk_100364848;
    v12 = v6;
    v13 = v5;
    v7 = *(a1 + 72);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = *(a1 + 56);
    v10 = v8;
    *&v9 = *(a1 + 64);
    *(&v9 + 1) = v7;
    v14 = v10;
    v15 = v9;
    v16 = *(a1 + 80);
    [v12 perform:v11];
  }

  v3[2](v3);
}

id sub_1000AF510(id a1, GKResourceIdentifier *a2, unint64_t a3)
{
  v3 = [(GKResourceIdentifier *)a2 keys];
  v4 = [v3 objectAtIndexedSubscript:2];

  return v4;
}

void sub_1000AF564(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"playerIDsToLoad"];
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 40);
  v6 = objc_retainBlock(*(a1 + 72));
  LODWORD(v5) = [v4 doesCallbackListExistFor:@"gk-get-player-achievements" parameters:v5 callback:v6];

  if (v5)
  {
    [*(a1 + 32) setObject:&off_100382418 forKeyedSubscript:@"skipCallbacks"];
    v3[2](v3);
  }

  else
  {
    v19[0] = @"game";
    v19[1] = @"requested-player-ids";
    v7 = *(a1 + 40);
    v20[0] = *(a1 + 48);
    v20[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v10 = [*(a1 + 56) clientProxy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000AF778;
    v13[3] = &unk_100364820;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = *(a1 + 80);
    v16 = v11;
    v18 = v12;
    v17 = v3;
    [v9 issueRequest:v8 bagKey:@"gk-get-player-achievements" clientProxy:v10 handler:v13];
  }
}

void sub_1000AF778(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 && !v8)
  {
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000AF88C;
    v14 = &unk_100363F28;
    v10 = *(a1 + 32);
    v15 = *(a1 + 40);
    v18 = a4;
    v16 = v7;
    v17 = *(a1 + 48);
    [v10 performOnManagedObjectContext:&v11];
  }

  *(*(*(a1 + 64) + 8) + 24) = a4;
  [*(a1 + 32) setError:{v9, v11, v12, v13, v14}];
  (*(*(a1 + 56) + 16))();
}

void sub_1000AF88C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = a3;
  v24 = v5;
  v20 = [GKPlayerProfileCacheObject playerProfilesWithPlayerIDs:*(a1 + 32) inManagedObjectContext:v5];
  v23 = [v20 _gkMapDictionaryWithKeyPath:@"playerID"];
  v25 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 56)];
  v6 = [*(a1 + 40) objectForKey:@"results"];
  v22 = a1;
  v7 = [*(a1 + 48) achievementLists];
  v8 = [v7 _gkMapDictionaryWithKeyPath:@"player.playerID"];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 objectForKey:@"player-id"];
        if (v15)
        {
          v16 = [v8 objectForKeyedSubscript:v15];
          if (!v16)
          {
            v16 = [(GKCacheObject *)[GKAchievementListCacheObject alloc] initWithManagedObjectContext:v24];
            [(GKAchievementListCacheObject *)v16 setGame:*(v22 + 48)];
            v17 = [v23 objectForKeyedSubscript:v15];
            [(GKAchievementListCacheObject *)v16 setPlayer:v17];
          }

          v18 = [v14 objectForKeyedSubscript:@"achievements"];
          v30 = @"results";
          v31 = v18;
          v19 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          [(GKAchievementListCacheObject *)v16 updateWithServerRepresentation:v19 expirationDate:v25];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v21[2](v21);
}

void sub_1000AFB4C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"skipCallbacks"];

  if (!v2)
  {
    v3 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"playerIDsToLoad"];
    v5 = [v3 retrieveAndClearCallbacks:@"gk-get-player-achievements" parameters:v4];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
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

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = *(*(*(a1 + 40) + 8) + 24);
          v13 = [*(a1 + 32) error];
          (*(v11 + 16))(v11, v13, v12);

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000AFFFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B00C8;
  v9[3] = &unk_100363F78;
  v10 = *(a1 + 64);
  v11 = v3;
  v8 = v3;
  [v4 loadAchievementsForGameDescriptor:v5 players:v6 context:v7 handler:v9];
}

uint64_t sub_1000B00C8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000B0110(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0208;
  v7[3] = &unk_100362FC8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v2 perform:v7];
}

void sub_1000B0208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v4];

  v5 = [*(a1 + 40) error];

  if (v5)
  {
    v3[2](v3);
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) dictionaryForRequest];
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B0330;
    v10[3] = &unk_1003648E0;
    v11 = *(a1 + 32);
    v12 = v3;
    [v6 fetchAchievementsForGameDescriptor:v7 players:v8 context:v9 handler:v10];
  }
}

uint64_t sub_1000B0330(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000B0694(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 isInDebugMode];

  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [*(a1 + 32) clientProxy];
    v11 = [v10 originalBundleIdentifier];
    [*(a1 + 40) setBundleIdentifier:v11];

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B0894;
    v27[3] = &unk_100360ED8;
    v14 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = v6;
    v15 = v6;
    [v12 loadFakeAchievementsWithGame:v13 players:v14 completionHandler:v27];

    v16 = v28;
  }

  else
  {
    v17 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B08DC;
    v20[3] = &unk_100364948;
    v20[4] = v9;
    v18 = *(a1 + 64);
    v21 = *(a1 + 56);
    v22 = v5;
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(a1 + 72);
    v26 = v6;
    v19 = v6;
    [v9 fetchAchievementsForGameDescriptor:v18 players:v17 context:v22 handler:v20];

    v16 = v21;
  }
}

uint64_t sub_1000B0894(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000B08DC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  if ((a3 & 1) == 0)
  {
    [*(a1 + 32) primeCacheWithAchievementDescriptions:*(a1 + 40) context:*(a1 + 48) gameDescriptor:*(a1 + 56) players:*(a1 + 64) missingPlayers:a4];
  }

  v8 = +[GKDataRequestManager sharedManager];
  v9 = [v8 isDevSignedForBundleID:*(a1 + 72)];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B09CC;
  v10[3] = &unk_100364920;
  v11 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  [*(a1 + 40) setResult:v7];
  (*(*(a1 + 80) + 16))();
}

id sub_1000B09CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B0A44;
  v4[3] = &unk_100364900;
  v5 = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void sub_1000B0A44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 32) & 1) == 0 && [v3 releaseState] != 1)
  {
    v5 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v5 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10028BB18();
    }

    [v4 setReleaseState:0];
  }
}

void sub_1000B0AD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000B0DE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B0EF0;
  v12[3] = &unk_100364998;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = a2;
  [v4 performOnManagedObjectContext:v12];
  v10[2](v10);
}

void sub_1000B0EF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 isInDebugMode];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_1000B160C;
    v86[3] = &unk_100364970;
    v89 = *(a1 + 64);
    v87 = *(a1 + 48);
    v88 = v6;
    [v9 submitFakeAchievements:v10 completionHandler:v86];

    v11 = v87;
    goto LABEL_25;
  }

  v69 = v6;
  v12 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  v13 = [*(a1 + 32) clientProxy];
  v14 = [v13 bundleIdentifier];
  v71 = v5;
  v15 = [GKGameCacheObject gameForBundleID:v14 context:v5];

  v16 = [v15 achievementLists];
  v17 = [NSMutableSet setWithSet:v16];

  v68 = v12;
  v18 = [v12 achievementLists];
  [v17 intersectSet:v18];

  v66 = v17;
  v19 = [v17 anyObject];
  v20 = [v19 entries];
  v21 = [v20 _gkMapDictionaryWithKeyPath:@"identifier"];
  v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

  v23 = [v19 entries];
  v24 = [v23 _gkMapDictionaryWithKeyPath:@"groupIdentifier"];
  [v22 addEntriesFromDictionary:v24];

  v25 = [v15 achievementDescriptionList];
  v26 = [v25 entries];
  v27 = [v26 _gkMapDictionaryWithKeyPath:@"identifier"];
  v28 = [NSMutableDictionary dictionaryWithDictionary:v27];

  v67 = v15;
  v29 = [v15 achievementDescriptionList];
  v30 = [v29 entries];
  v31 = [v30 _gkMapDictionaryWithKeyPath:@"groupIdentifier"];
  [v28 addEntriesFromDictionary:v31];

  v70 = v19;
  v32 = v19;
  v33 = v22;
  v34 = v28;
  v35 = [v32 entries];
  v72 = [v35 mutableCopy];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = *(a1 + 40);
  v36 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (!v36)
  {
    goto LABEL_21;
  }

  v37 = v36;
  v38 = *v83;
  v73 = a1;
  do
  {
    v39 = 0;
    v74 = v37;
    do
    {
      if (*v83 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v82 + 1) + 8 * v39);
      v41 = [v40 identifier];
      v42 = [v33 objectForKey:v41];
      v43 = [v34 objectForKey:v41];
      if (v43)
      {
        v77 = v40;
        v78 = v41;
        if (!v42)
        {
          v42 = [(GKCacheObject *)[GKAchievementCacheObject alloc] initWithManagedObjectContext:v71];
          [v72 addObject:v42];
          v44 = [v43 identifier];
          [(GKAchievementCacheObject *)v42 setIdentifier:v44];

          v45 = [v43 groupIdentifier];
          [(GKAchievementCacheObject *)v42 setGroupIdentifier:v45];
        }

        v46 = [(GKAchievementCacheObject *)v42 identifier];
        v47 = [v43 identifier];
        if ([v46 isEqualToString:v47])
        {
          v48 = [(GKAchievementCacheObject *)v42 groupIdentifier];
          [v43 groupIdentifier];
          v49 = v38;
          v50 = v34;
          v52 = v51 = v33;
          v76 = [v48 isEqualToString:v52];

          v33 = v51;
          v34 = v50;
          v38 = v49;
          v37 = v74;

          a1 = v73;
          if (v76)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }

        v53 = [v43 identifier];
        [(GKAchievementCacheObject *)v42 setIdentifier:v53];

        v54 = [v43 groupIdentifier];
        [(GKAchievementCacheObject *)v42 setGroupIdentifier:v54];

LABEL_16:
        v40 = v77;
        v41 = v78;
      }

      [(GKAchievementCacheObject *)v42 percentComplete];
      v56 = v55;
      [v40 percentComplete];
      if (v57 > v56)
      {
        [v40 percentComplete];
        *&v58 = v58;
        [(GKAchievementCacheObject *)v42 setPercentComplete:v58];
        [(GKAchievementCacheObject *)v42 setLastReportedDate:*(a1 + 56)];
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      v39 = v39 + 1;
    }

    while (v37 != v39);
    v37 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  }

  while (v37);
LABEL_21:

  [v70 setEntries:v72];
  v6 = v69;
  if ([*(a1 + 40) count])
  {
    v59 = [GKAchievementNetworkRequest alloc];
    v60 = *(a1 + 40);
    v61 = [*(a1 + 32) clientProxy];
    v62 = [v61 bundleIdentifier];
    v63 = [(GKAchievementNetworkRequest *)v59 initWithAchievements:v60 bundleID:v62];

    v64 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v65 = [*(a1 + 32) clientProxy];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000B1660;
    v79[3] = &unk_100361198;
    v80 = *(a1 + 48);
    v81 = v69;
    [v64 writeToNetwork:v63 clientProxy:v65 handler:v79];
  }

  else
  {
    v69[2](v69);
  }

  v5 = v71;

  v11 = v68;
LABEL_25:
}

uint64_t sub_1000B160C(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = 0;
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_1000B1660(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000B16A8(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) clientProxy];
    [v2 refreshContentsForDataType:8 userInfo:0];
  }

  v3 = *(a1 + 56);
  v4 = [*(a1 + 40) error];
  (*(v3 + 16))(v3, v4);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 48);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = +[GKAchievementBiome shared];
        [v11 logEarnedWithAchievement:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_1000B19D4(int8x16_t *a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B1A90;
  v6[3] = &unk_100361708;
  v5 = a1[2];
  v3 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v4 = a2;
  [v3 performOnManagedObjectContext:v6];
  v4[2](v4);
}

void sub_1000B1A90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) clientProxy];
  v8 = [v7 isInDebugMode];

  v9 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 internalRepresentationWithPieces:0];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B1DA8;
    v28[3] = &unk_100361198;
    v12 = *(a1 + 32);
    v29 = *(a1 + 40);
    v30 = v6;
    [v12 resetFakeAchievementsWithPlayer:v11 completionHandler:v28];
  }

  else
  {
    if (v9)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000B1DF0;
      v26[3] = &unk_100360FF0;
      v13 = *(a1 + 40);
      v26[4] = *(a1 + 32);
      v27 = v13;
      [v27 perform:v26];
      v14 = [*(a1 + 32) clientProxy];
      v15 = [v14 bundleIdentifier];
      v16 = [GKGameCacheObject gameForBundleID:v15 context:v5];

      [v10 expire];
      v17 = [GKGameRecordCacheObject recordForGame:v16 playerProfile:v10];
      [v17 expire];
      v18 = [NSPredicate predicateWithFormat:@"game = %@ AND player = %@", v16, v10];
      [(GKCacheObject *)GKAchievementListCacheObject deleteObjectsMatchingPredicate:v18 context:v5];

      v19 = +[GKClientProxy gameCenterClient];
      v20 = *(a1 + 40);
      v21 = [v19 replyQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000B1F20;
      v24[3] = &unk_100361770;
      v25 = v19;
      v22 = v19;
      [v20 notifyOnQueue:v21 block:v24];
    }

    else
    {
      v23 = +[NSError gkUnauthenticatedError];
      [*(a1 + 40) setError:v23];
    }

    v6[2](v6);
  }
}

uint64_t sub_1000B1DA8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000B1DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [*(a1 + 32) clientProxy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B1EDC;
  v7[3] = &unk_1003627C8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v4 issueRequest:0 bagKey:@"gk-reset-achievements" clientProxy:v5 handler:v7];
}

uint64_t sub_1000B1EDC(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000B1F30(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_1000B21BC(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B228C;
  v7[3] = &unk_100360F00;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = a2;
  [v4 perform:v7];
  v6[2](v6);
}

void sub_1000B228C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 isInDebugMode];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B2404;
    v20[3] = &unk_1003649E8;
    v8 = &v21;
    v9 = *(a1 + 48);
    v10 = &v22;
    v21 = v9;
    v22 = v3;
    v11 = v3;
    [v6 getFakeLeaderboardWithRequest:v7 completionHandler:v20];
  }

  else
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = [*(a1 + 48) context];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B247C;
    v17[3] = &unk_100364A10;
    v8 = &v18;
    v15 = *(a1 + 48);
    v10 = &v19;
    v18 = v15;
    v19 = v3;
    v16 = v3;
    [v12 loadScoresWithService:v13 context:v14 handler:v17];
  }
}

uint64_t sub_1000B2404(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"result"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

uint64_t sub_1000B247C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"result"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_1000B24F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"result"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000B2850(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 isInDebugMode];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [v6 clientProxy];
    v9 = [v8 bundleIdentifier];
    v10 = *(a1 + 72);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000B2C20;
    v36[3] = &unk_100361198;
    v11 = *(a1 + 48);
    v37 = *(a1 + 56);
    v38 = v3;
    [v6 submitFakeScoresWithScores:v7 bundleID:v9 screenChallenges:v10 eligibleChallenges:v11 completionHandler:v36];

    v12 = v37;
    goto LABEL_8;
  }

  if ([*(a1 + 40) count])
  {
    v13 = [*(a1 + 32) clientProxy];
    v14 = [v13 notifyAboutScoreSubmissions];

    if (v14)
    {
      v15 = [GKGameDescriptor alloc];
      v16 = [*(a1 + 32) clientProxy];
      v17 = [v16 gameDescriptor];
      v18 = [v15 initWithDictionary:v17];

      if (!v18)
      {
        if (!os_log_GKGeneral)
        {
          v28 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10028BB58();
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000B2C68;
        block[3] = &unk_100360FA0;
        v35 = *(a1 + 64);
        dispatch_async(&_dispatch_main_q, block);
        v12 = v35;
        goto LABEL_8;
      }

      v19 = [*(a1 + 40) firstObject];
      v20 = [v19 player];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000B2CD4;
      v32[3] = &unk_100364A38;
      v21 = *(a1 + 32);
      v33 = *(a1 + 40);
      [v21 getLeaderboardsForGameDescriptor:v18 player:v20 leaderboardIDs:0 setIdentifier:0 handler:v32];
    }

    v22 = [GKScoreNetworkRequest alloc];
    v23 = *(a1 + 40);
    v24 = [*(a1 + 32) clientProxy];
    v25 = [v24 bundleIdentifier];
    v12 = [(GKScoreNetworkRequest *)v22 initWithScores:v23 bundleID:v25 eligibleChallenges:*(a1 + 48)];

    v26 = +[GKNetworkRequestManager commonNetworkRequestManager];
    v27 = [*(a1 + 32) clientProxy];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000B2CEC;
    v29[3] = &unk_100361198;
    v30 = *(a1 + 56);
    v31 = v3;
    [v26 writeToNetwork:v12 clientProxy:v27 handler:v29];

LABEL_8:
  }
}

uint64_t sub_1000B2C20(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000B2C68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1000B2CEC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000B2D34(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_1000B3184(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = [*(a1 + 48) playerID];
  v5 = v4;
  if (v2)
  {
    [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND player.playerID = %@ AND set.identifier = %@", v3, v4, *(a1 + 32)];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND player.playerID = %@ AND set.identifier = nil", v3, v4, v16];
  }
  v6 = ;

  v7 = [(GKCacheObject *)GKLeaderboardListCacheObject firstObjectMatchingPredicate:v6 context:*(a1 + 56)];
  v17 = [v7 internalRepresentation];
  if (*(a1 + 32))
  {
    v8 = [*(a1 + 40) dictionaryForRequest];
    v9 = [GKGameCacheObject gameForGameDescriptor:v8 context:*(a1 + 56)];

    v10 = [v9 leaderboardSetWithIdentifier:*(a1 + 32)];
    [*(a1 + 64) cleanUpLeaderboardTitles:v17 set:v10 context:*(a1 + 56)];
  }

  v11 = [v7 isValid];
  if (v11)
  {
    v12 = [v7 expired] ^ 1;
    v13 = [v7 game];
    if ([v13 numberOfCategories])
    {
      v14 = [v17 count] != 0;

      v12 = v14 & v12;
    }

    else
    {
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    (*(v15 + 16))(v15, v17, v12, v11);
  }
}

void sub_1000B3700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [*(a1 + 32) dictionaryForRequest];
  [v4 setObject:v5 forKeyedSubscript:@"game"];

  v6 = [*(a1 + 40) playerID];
  [v4 setObject:v6 forKeyedSubscript:@"player-id"];

  v7 = *(a1 + 48);
  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"set-name"];
  }

  if ([*(a1 + 56) isEqualToString:@"gk-get-leaderboards"])
  {
    v8 = *(a1 + 64);
    v9 = [*(a1 + 32) bundleIdentifier];
    v10 = [v8 releaseStateHeaderValueForBundleID:v9];
    [v4 setObject:v10 forKeyedSubscript:@"x-gk-release-state"];
  }

  v11 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v12 = *(a1 + 56);
  v13 = [*(a1 + 64) clientProxy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B3940;
  v21[3] = &unk_100364AB0;
  v26 = *(a1 + 88);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v22 = v19;
  v23 = v18;
  v24 = *(a1 + 48);
  v25 = v3;
  v20 = v3;
  [v11 issueRequest:v4 bagKey:v12 clientProxy:v13 handler:v21];
}

void sub_1000B3940(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  *(*(*(a1 + 80) + 8) + 24) = a4;
  [*(a1 + 32) setError:a3];
  if (v7 && !a3)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B3A88;
    v18[3] = &unk_100364A88;
    v22 = a4;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v19 = v17;
    v20 = v16;
    v21 = v7;
    [v11 performBlockAndWait:v18];
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), v8, v9, v10);
}

void sub_1000B3A88(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 72)];
  v3 = [*(a1 + 32) dictionaryForRequest];
  v4 = [GKGameCacheObject gameForGameDescriptor:v3 context:*(a1 + 40)];

  v5 = [*(a1 + 48) playerID];
  v6 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v5 inManagedObjectContext:*(a1 + 40)];

  v7 = [v4 leaderboardSetWithIdentifier:*(a1 + 56)];
  v8 = [v4 defaultCategory];

  if (!v8)
  {
    v9 = [*(a1 + 64) objectForKey:@"default-category-name"];
    [v4 setDefaultCategory:v9];
  }

  v10 = [(GKCacheObject *)[GKLeaderboardListCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
  v34 = v4;
  [(GKLeaderboardListCacheObject *)v10 setGame:v4];
  v33 = v6;
  [(GKLeaderboardListCacheObject *)v10 setPlayer:v6];
  v30 = v7;
  [(GKLeaderboardListCacheObject *)v10 setSet:v7];
  v31 = v2;
  v32 = v10;
  [(GKLeaderboardListCacheObject *)v10 updateWithServerRepresentation:*(a1 + 64) expirationDate:v2];
  v11 = objc_alloc_init(NSMutableDictionary);
  [*(a1 + 64) objectForKeyedSubscript:@"results"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v12 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"global-alltime-info"];
        if (!v17)
        {
          v17 = v16;
        }

        v18 = [v17 objectForKeyedSubscript:@"base-leaderboard-id"];
        if (!v18)
        {
          v18 = [v17 objectForKeyedSubscript:@"category-name"];
        }

        [v11 setObject:v16 forKeyedSubscript:v18];
      }

      v13 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v13);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = [(GKLeaderboardListCacheObject *)v10 entries];
  v19 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v37 = *v39;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v22 = *(*(&v38 + 1) + 8 * j);
        v23 = [*(a1 + 32) bundleIdentifier];
        v24 = [*(a1 + 48) playerID];
        v25 = [v22 baseLeaderboardID];
        v26 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND player.playerID = %@ AND baseLeaderboardID = %@ AND isPrimary == YES", v23, v24, v25];

        v27 = [(GKCacheObject *)GKLeaderboardCacheObject firstObjectMatchingPredicate:v26 context:*(a1 + 40)];
        if (!v27)
        {
          v27 = [(GKCacheObject *)[GKLeaderboardCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
          [(GKLeaderboardCacheObject *)v27 setGame:v34];
          [(GKLeaderboardCacheObject *)v27 setPlayer:v33];
        }

        v28 = [v22 baseLeaderboardID];
        v29 = [v11 objectForKeyedSubscript:v28];
        [(GKLeaderboardCacheObject *)v27 updateWithServerRepresentation:v29];

        [v22 setLeaderboard:v27];
      }

      v20 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v20);
  }
}

void sub_1000B3F08(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v3, v2);
}

void sub_1000B44B4(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = [v6 internalRepresentationWithPieces:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000B454C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:6 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000B45BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000B462C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && (v4 = *(a1 + 40)) != 0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B4770;
    v7[3] = &unk_100362FC8;
    v5 = *(a1 + 48);
    v7[4] = *(a1 + 56);
    v8 = v4;
    v9 = *(a1 + 32);
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    [v5 perform:v7];
    v3[2](v3);
  }

  else
  {
    v6 = [NSError userErrorForCode:17 underlyingError:0];
    [*(a1 + 48) setError:v6];
  }
}

void sub_1000B4770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 64) context];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B48AC;
  v13[3] = &unk_100364BA0;
  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v20 = v3;
  v12 = v3;
  [v4 fetchLeaderboardsForGameDescriptor:v5 player:v6 setIdentifier:v7 context:v8 handler:v13];
}

void sub_1000B48AC(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  if ((a3 & 1) == 0)
  {
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 0;
    v8 = *(a1 + 32);
    v9 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1659, "[GKGameStatService getLeaderboardsForGameDescriptor:player:setIdentifier:handler:]_block_invoke_4"];
    v10 = [v8 transactionGroupWithName:v9];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000B4BE0;
    v34[3] = &unk_100364B28;
    v24 = *(a1 + 40);
    v11 = *(&v24 + 1);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v35 = v24;
    v36 = v14;
    v37 = *(a1 + 32);
    v15 = v10;
    v38 = v15;
    v39 = v40;
    [v15 perform:v34];
    if (a4)
    {
      v16 = *(a1 + 72);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000B5068;
      v25[3] = &unk_1003624A8;
      v25[4] = *(a1 + 40);
      v25[5] = v40;
      [v15 notifyOnQueue:v16 block:v25];
    }

    else
    {
      v17 = *(a1 + 32);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000B4D68;
      v26[3] = &unk_100364B78;
      v27 = v15;
      v28 = *(a1 + 72);
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v32 = *(a1 + 56);
      v33 = *(a1 + 64);
      [v17 perform:v26];
    }

    _Block_object_dispose(v40, 8);
  }

  v21 = *(a1 + 40);
  v22 = [*(a1 + 48) bundleIdentifier];
  v23 = [v21 updateAndFilterHiddenLeaderboards:v7 bundleID:v22 requestedLeaderboardIDs:0];
  [*(a1 + 32) setObject:v23 forKeyedSubscript:@"leaderboards"];

  (*(*(a1 + 80) + 16))();
}

void sub_1000B4BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 64) context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B4CDC;
  v12[3] = &unk_100364B00;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v14 = v3;
  v15 = v10;
  v13 = v9;
  v11 = v3;
  [v4 loadLeaderboardsForGameDescriptor:v5 player:v6 setIdentifier:v7 context:v8 bagKey:@"gk-get-leaderboard-categories" handler:v12];
}

void sub_1000B4CDC(void *a1, void *a2, double a3)
{
  v5 = a1[4];
  v8 = a2;
  [v5 setError:v8];
  v7 = a3 > 0.0 && v8 == 0;
  *(*(a1[6] + 8) + 24) = v7;
  (*(a1[5] + 16))();
}

void sub_1000B4D68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B4E70;
  v10[3] = &unk_100362030;
  v11 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = v3;
  v9 = v3;
  [v4 notifyOnQueue:v5 block:v10];
}

void sub_1000B4E70(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = [*(a1 + 40) error];

  if (v3)
  {
    v4 = *(*(a1 + 80) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = [*(a1 + 32) context];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B4FCC;
    v13[3] = &unk_100364B50;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = *(a1 + 80);
    [v5 fetchLeaderboardsForGameDescriptor:v6 player:v7 setIdentifier:v8 context:v9 handler:v13];
  }
}

uint64_t sub_1000B4FCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v4 bundleIdentifier];
  v7 = [v3 updateAndFilterHiddenLeaderboards:v5 bundleID:v6 requestedLeaderboardIDs:0];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"leaderboards"];
  v8 = *(*(a1 + 56) + 16);

  return v8();
}

void sub_1000B5068(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v1 = [*(a1 + 32) clientProxy];
    v4 = @"scroll";
    v2 = [NSNumber numberWithBool:0];
    v5 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v1 refreshContentsForDataType:9 userInfo:v3];
  }
}

void sub_1000B5148(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"leaderboards"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1000B53AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = @"timestamp";
  v4 = +[NSDate _gkServerTimestamp];
  v5 = v4;
  v17[1] = @"category";
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = &stru_100374F10;
  }

  v18[0] = v4;
  v18[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v8 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v9 = [*(a1 + 40) clientProxy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B5560;
  v13[3] = &unk_1003635D8;
  v14 = *(a1 + 48);
  v12 = *(a1 + 32);
  v10 = v12.i64[0];
  v15 = vextq_s8(v12, v12, 8uLL);
  v16 = v3;
  v11 = v3;
  [v8 issueRequest:v7 bagKey:@"gk-set-default-leaderboard" clientProxy:v9 handler:v13];
}

void sub_1000B5560(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    v5 = [*(a1 + 32) context];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B5658;
    v8[3] = &unk_100361F68;
    v7 = *(a1 + 32);
    v6 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = *(a1 + 48);
    [v5 performBlockAndWait:v8];
  }

  [*(a1 + 32) setError:{v4, *&v7}];
  (*(*(a1 + 56) + 16))();
}

void sub_1000B5658(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [v2 gameDescriptor];
  v4 = [*(a1 + 40) context];
  v8 = [GKGameCacheObject gameForGameDescriptor:v3 context:v4];

  v5 = [*(a1 + 40) context];
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];

  v7 = [GKGameRecordCacheObject recordForGame:v8 playerProfile:v6];
  [v7 setDefaultLeaderboardIdentifier:*(a1 + 48)];
}

void sub_1000B5758(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_1000B58F4(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 lastObject];
  v6 = [v5 defaultLeaderboardIdentifier];
  v7 = v10 | v6;

  if (!v7)
  {
    v10 = [NSError userErrorForCode:16 underlyingError:0];
  }

  v8 = *(a1 + 32);
  v9 = [v5 defaultLeaderboardIdentifier];
  (*(v8 + 16))(v8, v9, v10);
}

void sub_1000B5C14(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  v3 = [v2 isInDebugMode];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000B5F48;
    v36[3] = &unk_100364A38;
    v37 = *(a1 + 48);
    [v4 getFakeLeaderboardSetsWithGameDescriptor:v5 completionHandler:v36];
    v6 = v37;
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = [*(a1 + 48) context];
    v6 = [GKGameCacheObject gameForGameDescriptor:v7 context:v8];

    v9 = [v6 leaderboardSetList];
    v10 = [v9 isValid];
    v11 = v10;
    if (!v10 || ([v9 internalRepresentation], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 48), "setObject:forKeyedSubscript:", v12, @"sets"), v12, objc_msgSend(v9, "expirationDate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceNow"), v15 = v14, v13, v15 <= 0.0))
    {
      v16 = *(a1 + 48);
      v17 = [NSString stringWithFormat:@"%s:%d %s", "GKGameStatService.m", 1795, "[GKGameStatService getLeaderboardSetsForGameDescriptor:handler:]_block_invoke"];
      v18 = [v16 transactionGroupWithName:v17];

      v19 = *(a1 + 56);
      v38 = @"game";
      v39 = v19;
      [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000B5FBC;
      v20 = v30[3] = &unk_100362CF8;
      v21 = *(a1 + 32);
      v31 = v20;
      v32 = v21;
      v22 = v18;
      v33 = v22;
      v34 = v6;
      v35 = v11;
      [v22 perform:v30];
      if ((v11 & 1) == 0)
      {
        v23 = *(a1 + 48);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000B62E8;
        v26[3] = &unk_100360F00;
        v24 = v22;
        v25 = *(a1 + 32);
        v27 = v24;
        v28 = v25;
        v29 = *(a1 + 48);
        [v23 perform:v26];
      }
    }
  }
}

void sub_1000B5F48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"sets"];
  [*(a1 + 32) setError:v6];
}

void sub_1000B5FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) clientProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B60CC;
  v9[3] = &unk_100361648;
  v10 = *(a1 + 48);
  v7 = *(a1 + 56);
  v13 = *(a1 + 64);
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v4 issueRequest:v5 bagKey:@"gk-get-leaderboard-sets" clientProxy:v6 handler:v9];
}

void sub_1000B60CC(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 && !v8)
  {
    v10 = [*(a1 + 32) context];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B61F0;
    v11[3] = &unk_100364BC8;
    v12 = *(a1 + 40);
    v15 = a4;
    v13 = *(a1 + 32);
    v14 = v7;
    v16 = *(a1 + 56);
    [v10 performBlockAndWait:v11];
  }

  [*(a1 + 32) setError:v9];
  (*(*(a1 + 48) + 16))();
}

void sub_1000B61F0(uint64_t a1)
{
  v6 = [*(a1 + 32) leaderboardSetList];
  v2 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 56)];
  if (!v6)
  {
    v3 = [GKLeaderboardSetListCacheObject alloc];
    v4 = [*(a1 + 40) context];
    v6 = [(GKCacheObject *)v3 initWithManagedObjectContext:v4];

    [*(a1 + 32) setLeaderboardSetList:v6];
  }

  [(GKLeaderboardSetListCacheObject *)v6 updateWithServerRepresentation:*(a1 + 48) expirationDate:v2];
  if ((*(a1 + 64) & 1) == 0)
  {
    v5 = [(GKListCacheObject *)v6 internalRepresentation];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:@"sets"];
  }
}

void sub_1000B62E8(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [a1[5] clientProxy];
  v6 = [v5 replyQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B63DC;
  v8[3] = &unk_100360FC8;
  v9 = a1[6];
  v10 = a1[4];
  v11 = v3;
  v7 = v3;
  [v4 notifyOnQueue:v6 block:v8];
}

uint64_t sub_1000B63DC(uint64_t a1)
{
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"sets"];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"sets"];

  v3 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v3];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_1000B6470(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"sets"];
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v4, v3);
  }
}

void sub_1000B6868(uint64_t a1, void *a2)
{
  v3 = a2;
  v24[0] = @"game";
  v4 = [*(a1 + 32) dictionaryForRequest];
  v25[0] = v4;
  v24[1] = @"player-id";
  v5 = [*(a1 + 40) playerID];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v25[1] = v5;
  v25[2] = v6;
  v24[2] = @"base-leaderboard-ids";
  v24[3] = @"x-gk-release-state";
  v8 = [*(a1 + 32) bundleIdentifier];
  v9 = [v7 releaseStateHeaderValueForBundleID:v8];
  v25[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];

  v11 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v12 = [*(a1 + 56) clientProxy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B6A94;
  v20[3] = &unk_100364BF0;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v21 = v18;
  v22 = v17;
  v23 = v3;
  v19 = v3;
  [v11 issueRequest:v10 bagKey:@"gk-get-leaderboards" clientProxy:v12 handler:v20];
}

void sub_1000B6A94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (v5 && !a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B6BA8;
    v7[3] = &unk_100361FE0;
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = v5;
    v12 = *(a1 + 32);
    [v6 performBlockAndWait:v7];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_1000B6BA8(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionaryForRequest];
  v18 = [GKGameCacheObject gameForGameDescriptor:v2 context:*(a1 + 40)];

  v3 = [*(a1 + 48) playerID];
  v17 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v3 inManagedObjectContext:*(a1 + 40)];

  v4 = [*(a1 + 56) objectForKeyedSubscript:@"results"];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"base-leaderboard-id"];
        v12 = [*(a1 + 32) bundleIdentifier];
        v13 = [*(a1 + 48) playerID];
        v14 = [NSPredicate predicateWithFormat:@"game.bundleID = %@ AND player.playerID = %@ AND baseLeaderboardID = %@ AND isPrimary == YES", v12, v13, v11];

        v15 = [(GKCacheObject *)GKLeaderboardCacheObject firstObjectMatchingPredicate:v14 context:*(a1 + 40)];
        if (!v15)
        {
          v15 = [(GKCacheObject *)[GKLeaderboardCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
          [(GKLeaderboardCacheObject *)v15 setGame:v18];
          [(GKLeaderboardCacheObject *)v15 setPlayer:v17];
        }

        [(GKLeaderboardCacheObject *)v15 updateWithServerRepresentation:v10];
        v16 = [(GKLeaderboardCacheObject *)v15 internalRepresentation];
        [v5 addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [*(a1 + 64) setResult:v5];
}

void sub_1000B6E5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

id sub_1000B7030(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 baseLeaderboardID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v7 = [v3 groupIdentifier];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [v3 baseLeaderboardID];
      v10 = [v8 _alternativeIdentifierForLeaderboardID:v9];

      if (v10 && [*(a1 + 32) containsObject:v10])
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_1000B72BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 32) & 1) == 0)
  {
    v5 = v3;
    v4 = [v3 releaseState] == 1;
    v3 = v5;
    if (!v4)
    {
      [v5 setReleaseState:0];
      v3 = v5;
    }
  }
}

uint64_t sub_1000B7324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 visibility];
  v5 = [v4 isEqualToString:@"HIDE_FOR_ALL"];

  if ([*(a1 + 32) count])
  {
    v6 = *(a1 + 32);
    v7 = [v3 baseLeaderboardID];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1u | ((v5 & 1) == 0);
}

void sub_1000B797C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000B79EC(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = [v6 internalRepresentationWithPieces:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000B7A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:6 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000B7AF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError userErrorForCode:17 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000B7B64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B7C94;
  v11[3] = &unk_100364B78;
  v10 = *(a1 + 40);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  v9 = a2;
  [v4 perform:v11];
  v9[2](v9);
}

void sub_1000B7C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientProxy];
  v5 = [v4 isInDebugMode];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  if (v5)
  {
    v10 = [*(a1 + 64) allObjects];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B7E94;
    v27[3] = &unk_100362408;
    v11 = &v28;
    v28 = *(a1 + 72);
    v29 = v3;
    v12 = v3;
    [v6 getFakeLeaderboardsWithGameDescriptor:v7 player:v8 setIdentifier:v9 leaderboardIDs:v10 completionHandler:v27];

    v13 = v29;
  }

  else
  {
    v14 = [*(a1 + 72) context];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B7F0C;
    v19[3] = &unk_100364D78;
    v11 = v20;
    v15 = *(a1 + 72);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v20[0] = v15;
    v20[1] = v16;
    v21 = v17;
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = *(a1 + 80);
    v26 = v3;
    v18 = v3;
    [v6 fetchLeaderboardsForGameDescriptor:v7 player:v8 setIdentifier:v9 context:v14 handler:v19];

    v13 = v21;
  }
}

uint64_t sub_1000B7E94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"leaderboards"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}
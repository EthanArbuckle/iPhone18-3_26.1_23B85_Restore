@interface GKSystemBulletin
+ (void)expireCachesForBagKey:(id)a3 payload:(id)a4 context:(id)a5 group:(id)a6;
+ (void)expireCachesForBagKey:(id)a3 payload:(id)a4 context:(id)a5 profile:(id)a6 client:(id)a7 localPlayerInternal:(id)a8;
+ (void)expireFriendCodeDetails:(id)a3 context:(id)a4;
+ (void)expireGetPerGameFriendPlayerIDsCache:(id)a3 context:(id)a4;
+ (void)expireGetPerGameSettingsCaches:(id)a3 payload:(id)a4 context:(id)a5;
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
+ (void)presentGameCenterInviteUpdate:(id)a3 playerAlias:(id)a4;
- (void)handleAction:(id)a3;
@end

@implementation GKSystemBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKSystemBulletin loadBulletinsForPushNotification: withHandler:", buf, 2u);
  }

  v10 = +[GKDataRequestManager sharedManager];
  v11 = +[GKBulletin cacheTransactionGroup];
  v12 = [[a1 alloc] initWithPushNotification:v6];
  v13 = [v12 pushCommand];
  if (v13 <= 0xEFu)
  {
    if (v13 == 51)
    {
      v17 = [v6 objectForKey:GKFriendRequestURLFriendCode];
      [v6 objectForKey:GKFriendRequestPushAcceptorID];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10017F894;
      v25 = v24[3] = &unk_100361348;
      v26 = v17;
      v27 = v6;
      v18 = v17;
      v19 = v25;
      [v11 performOnManagedObjectContext:v24];

      if (!v7)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v13 != 68)
    {
      goto LABEL_25;
    }

    v14 = [v6 objectForKeyedSubscript:@"game"];
    v15 = [v14 objectForKeyedSubscript:@"bundle-id"];
    v16 = v15;
    if (v14 && v15)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10017F660;
      v31[3] = &unk_100361708;
      v32 = v15;
      v33 = v14;
      [v11 performOnManagedObjectContext:v31];
    }

LABEL_19:
    if (!v7)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  switch(v13)
  {
    case 0xF0u:
      v14 = [v6 objectForKeyedSubscript:GKPushReceiverID];
      if (![GKBulletin playerIsLocal:v14])
      {
        if (!os_log_GKGeneral)
        {
          v22 = GKOSLoggers();
        }

        v23 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "GKSystemBulletin bulletin is not meant for current local player. Skipping.", buf, 2u);
        }

        v7[2](v7, 0);

        goto LABEL_30;
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10017F724;
      v28[3] = &unk_100361708;
      v29 = v6;
      v30 = v11;
      [v30 performOnManagedObjectContext:v28];

      goto LABEL_19;
    case 0xFEu:
      [v10 resetEnvironment];
      if (!v7)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    case 0xFDu:
      [v10 clearPushEnvironment];
      if (!v7)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
  }

LABEL_25:
  if (!os_log_GKGeneral)
  {
    v20 = GKOSLoggers();
  }

  v21 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100294E18(v13, v21);
    if (!v7)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v7)
  {
LABEL_29:
    v7[2](v7, 0);
  }

LABEL_30:
}

+ (void)presentGameCenterInviteUpdate:(id)a3 playerAlias:(id)a4
{
  v6 = a4;
  v7 = a3;
  v16 = [[a1 alloc] initWithPushNotification:v7];
  v8 = +[NSDate date];
  [v16 setDate:v8];

  v9 = [NSDate dateWithTimeIntervalSinceNow:600.0];
  [v16 setExpirationDate:v9];

  [v16 setBulletinType:1];
  v10 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings GAME_CENTER_FRIEND_REQUEST_ACCEPTED];
  [v16 setMessage:v10];

  [v16 setHasSound:1];
  [v16 setSoundPath:0];
  v11 = +[NSDate date];
  [v16 setDate:v11];

  [v16 setTitle:v6];
  v12 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v12 setType:2];
  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_VIEW];
  [(GKBulletinAction *)v12 setTitle:v13];

  v14 = [v7 objectForKeyedSubscript:GKFriendRequestPushAcceptorID];

  [(GKBulletinAction *)v12 setInfo:v14];
  [v16 setDefaultAction:v12];
  v15 = +[GKBulletinController sharedController];
  [v15 presentBulletin:v16];
}

+ (void)expireGetPerGameSettingsCaches:(id)a3 payload:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[GKCDGameSettings _gkFetchRequest];
  if ([v7 length])
  {
    v11 = [NSPredicate predicateWithFormat:@"bundleID == %@", v7];
    [v10 setPredicate:v11];
  }

  v42 = 0;
  v12 = [v9 executeFetchRequest:v10 error:&v42];
  v13 = v42;
  if (v13)
  {
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v9 deleteObject:*(*(&v38 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v16);
    }

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "expireGetPerGameSettingsCaches: Could not fetch data from cache: %@", buf, 0xCu);
    }
  }

  else
  {
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v34 + 1) + 8 * j) setExpirationDate:0];
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v23);
    }
  }

  v26 = GKPushFriendsAuthorizationStatus;
  v27 = [v8 objectForKeyedSubscript:GKPushFriendsAuthorizationStatus];
  if (v27)
  {
    v28 = v27;
    v29 = [v8 objectForKeyedSubscript:v26];
    v30 = [v29 integerValue];
    v31 = GKPushFriendsAuthorizationStatusRemoved;

    if (v30 == v31)
    {
      v32 = +[GKClientProxy gameCenterClient];
      v33 = [(GKService *)GKGameService serviceWithTransport:0 forClient:v32 credential:0];
      [v33 resetTCCAuthorization:&stru_100369ED8];
    }
  }
}

+ (void)expireGetPerGameFriendPlayerIDsCache:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GKCDGameFriendList _gkFetchRequest];
  if ([v5 length])
  {
    v8 = [NSPredicate predicateWithFormat:@"bundleID == %@", v5];
    [v7 setPredicate:v8];
  }

  v31 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v31];
  v10 = v31;
  if (v10)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v6 deleteObject:*(*(&v27 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v13);
    }

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "expireGetPerGameFriendPlayerIDsCache: Could not fetch data from cache: %@", buf, 0xCu);
    }
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * j) setExpirationDate:0];
        }

        v20 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v20);
    }
  }
}

+ (void)expireFriendCodeDetails:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GKCDFriendCodeDetail _gkFetchRequest];
  if ([v5 length])
  {
    v8 = [NSPredicate predicateWithFormat:@"friendCode == %@", v5];
    [v7 setPredicate:v8];
  }

  v31 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v31];
  v10 = v31;
  if (v10)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v6 deleteObject:*(*(&v27 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v13);
    }

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "expireGetPerGameFriendPlayerIDsCache: Could not fetch data from cache: %@", buf, 0xCu);
    }
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * j) setExpirationDate:0];
        }

        v20 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v20);
    }
  }
}

+ (void)expireCachesForBagKey:(id)a3 payload:(id)a4 context:(id)a5 group:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GKSystemBulletin expireCachesForKey: context:", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100294E90(v9, v16);
  }

  v17 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v17, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v18 = +[NSThread callStackSymbols];
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKSystemBulletin expireCachesForBagKey:payload:context:group:]", v18);
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKSystemBulletin.m"];
    v21 = [v20 lastPathComponent];
    v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v19, "+[GKSystemBulletin expireCachesForBagKey:payload:context:group:]", [v21 UTF8String], 253);

    [NSException raise:@"GameKit Exception" format:@"%@", v22];
  }

  v23 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v11];
  if (v23)
  {
    v24 = +[GKClientProxy gameCenterClient];
    v25 = [v23 internalRepresentation];
    v26 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v24 localPlayer:v25];
    if (v9)
    {
      v27 = [v25 playerID];

      if (v27)
      {
        v28 = [v25 playerID];
        [v24 onServerCacheInvalidationReceivedWithBagKey:v9 playerID:v28];
      }
    }

    [GKSystemBulletin expireCachesForBagKey:v9 payload:v10 context:v11 profile:v23 client:v24 localPlayerInternal:v25];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100180720;
    v30[3] = &unk_100360FF0;
    v31 = v26;
    v32 = v9;
    v29 = v26;
    [v12 perform:v30];
  }
}

+ (void)expireCachesForBagKey:(id)a3 payload:(id)a4 context:(id)a5 profile:(id)a6 client:(id)a7 localPlayerInternal:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(GKService *)GKFriendServicePrivate serviceWithTransport:0 forClient:v18 localPlayer:v19];
  v21 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v18 localPlayer:v19];
  v22 = [(GKService *)GKGameStatServicePrivate serviceWithTransport:0 forClient:v18 localPlayer:v19];
  v63 = [(GKService *)GKProfileServicePrivate serviceWithTransport:0 forClient:v18 localPlayer:v19];
  if ([v14 isEqualToString:GKBagKeyGetFriendIDs])
  {
    v55 = v21;
    [v17 invalidate];
    v23 = [v17 friendList];
    [v23 invalidate];

    v24 = [v17 friendRequestList];
    [v24 invalidate];

    v25 = [v17 playerID];
    v26 = v25;
    if (v25)
    {
      v69 = v25;
      v27 = [NSArray arrayWithObjects:&v69 count:1];
      [v63 getProfilesForPlayerIDs:v27 handler:&stru_100369F18];
    }

    v28 = [v17 internalRepresentation];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100180EE4;
    v64[3] = &unk_100368508;
    v65 = v18;
    v66 = v19;
    [v20 getFriendsForPlayer:v28 commonFriends:0 handler:v64];

    [(GKExpiringCacheObject *)GKCompatiblePlayerListCacheObject invalidateObjectsMatchingPredicate:0 context:v16];
    [GKSystemBulletin expireGetPerGameFriendPlayerIDsCache:0 context:v16];
    [GKSystemBulletin expireFriendCodeDetails:0 context:v16];

    v29 = v15;
    v21 = v55;
    goto LABEL_5;
  }

  if (([v14 isEqualToString:GKBagKeyGetGamesPlayed] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"gk-get-games-played"))
  {
    [v17 expire];
    v31 = [v17 gameList];
    [v31 expire];

    v54 = [NSPredicate predicateWithFormat:@"player = %@", v17];
    [(GKExpiringCacheObject *)GKGameRecordCacheObject expireObjectsMatchingPredicate:v54 context:v16];
    [v17 playerID];
    v32 = v19;
    v33 = v18;
    v34 = v17;
    v35 = v16;
    v36 = v14;
    v38 = v37 = v21;
    v68 = v38;
    [NSArray arrayWithObjects:&v68 count:1];
    v56 = v20;
    v58 = v22;
    v40 = v39 = v15;
    v30 = v63;
    [v63 getProfilesForPlayerIDs:v40 handler:&stru_100369F38];

    v21 = v37;
    v14 = v36;
    v16 = v35;
    v17 = v34;
    v18 = v33;
    v19 = v32;
    v41 = [v17 internalRepresentation];
    [v21 getGamesForPlayer:v41 includeInstalled:0 handler:0];

    v29 = v39;
    v20 = v56;
    v22 = v58;
LABEL_9:
    v42 = v54;
LABEL_10:

    goto LABEL_11;
  }

  if ([v14 isEqualToString:GKBagKeyGamesFriendsPlayed])
  {
    [v22 expireGamesFriendsPlayed];
  }

  else
  {
    if ([v14 isEqualToString:@"gk-get-player-achievements"])
    {
      [v17 expire];
      [v17 gameRecords];
      v57 = v20;
      v43 = v59 = v15;
      [v43 makeObjectsPerformSelector:"expire"];

      v54 = [NSPredicate predicateWithFormat:@"player == %@", a1];
      [(GKExpiringCacheObject *)GKAchievementListCacheObject expireObjectsMatchingPredicate:v54 context:v16];
      v44 = [v17 playerID];
      v67 = v44;
      [NSArray arrayWithObjects:&v67 count:1];
      v45 = v22;
      v46 = v19;
      v47 = v18;
      v48 = v17;
      v49 = v16;
      v50 = v14;
      v52 = v51 = v21;
      v30 = v63;
      [v63 getProfilesForPlayerIDs:v52 handler:&stru_100369F58];

      v21 = v51;
      v14 = v50;
      v16 = v49;
      v17 = v48;
      v18 = v47;
      v19 = v46;
      v22 = v45;

      v20 = v57;
      v29 = v59;
      goto LABEL_9;
    }

    if ([v14 isEqualToString:GKBagKeyGetPerGameSettings])
    {
      v53 = [v15 objectForKeyedSubscript:GKInviteGameIDKey];
      [GKSystemBulletin expireGetPerGameSettingsCaches:v53 payload:v15 context:v16];
    }

    else
    {
      if (![v14 isEqualToString:GKBagKeyGetPerGameFriendPlayerIDs])
      {
        v29 = v15;
        v30 = v63;
        if (![v14 isEqualToString:GKBagKeyGetFriendInvitationMailbox])
        {
          goto LABEL_11;
        }

        [v17 invalidate];
        v60 = [v17 friendList];
        [v60 invalidate];

        v61 = [v17 friendRequestList];
        [v61 invalidate];

        v62 = [(GKService *)GKBulletinService serviceWithTransport:0 forClient:v18 localPlayer:v19];
        [v62 sendRefreshContentsForDataTypeToAllClientProxy:3];
        v42 = v62;
        goto LABEL_10;
      }

      v53 = [v15 objectForKeyedSubscript:GKInviteGameIDKey];
      [GKSystemBulletin expireGetPerGameFriendPlayerIDsCache:v53 context:v16];
    }
  }

  v29 = v15;
LABEL_5:
  v30 = v63;
LABEL_11:
}

- (void)handleAction:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKSystemBulletin handleAction: %@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = GKSystemBulletin;
  [(GKBulletin *)&v7 handleAction:v4];
}

@end
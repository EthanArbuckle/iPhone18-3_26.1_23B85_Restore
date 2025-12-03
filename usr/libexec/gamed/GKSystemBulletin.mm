@interface GKSystemBulletin
+ (void)expireCachesForBagKey:(id)key payload:(id)payload context:(id)context group:(id)group;
+ (void)expireCachesForBagKey:(id)key payload:(id)payload context:(id)context profile:(id)profile client:(id)client localPlayerInternal:(id)internal;
+ (void)expireFriendCodeDetails:(id)details context:(id)context;
+ (void)expireGetPerGameFriendPlayerIDsCache:(id)cache context:(id)context;
+ (void)expireGetPerGameSettingsCaches:(id)caches payload:(id)payload context:(id)context;
+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler;
+ (void)presentGameCenterInviteUpdate:(id)update playerAlias:(id)alias;
- (void)handleAction:(id)action;
@end

@implementation GKSystemBulletin

+ (void)loadBulletinsForPushNotification:(id)notification withHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
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
  v12 = [[self alloc] initWithPushNotification:notificationCopy];
  pushCommand = [v12 pushCommand];
  if (pushCommand <= 0xEFu)
  {
    if (pushCommand == 51)
    {
      v17 = [notificationCopy objectForKey:GKFriendRequestURLFriendCode];
      [notificationCopy objectForKey:GKFriendRequestPushAcceptorID];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10017F894;
      v25 = v24[3] = &unk_100361348;
      v26 = v17;
      v27 = notificationCopy;
      v18 = v17;
      v19 = v25;
      [v11 performOnManagedObjectContext:v24];

      if (!handlerCopy)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (pushCommand != 68)
    {
      goto LABEL_25;
    }

    v14 = [notificationCopy objectForKeyedSubscript:@"game"];
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
    if (!handlerCopy)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  switch(pushCommand)
  {
    case 0xF0u:
      v14 = [notificationCopy objectForKeyedSubscript:GKPushReceiverID];
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

        handlerCopy[2](handlerCopy, 0);

        goto LABEL_30;
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10017F724;
      v28[3] = &unk_100361708;
      v29 = notificationCopy;
      v30 = v11;
      [v30 performOnManagedObjectContext:v28];

      goto LABEL_19;
    case 0xFEu:
      [v10 resetEnvironment];
      if (!handlerCopy)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    case 0xFDu:
      [v10 clearPushEnvironment];
      if (!handlerCopy)
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
    sub_100294E18(pushCommand, v21);
    if (!handlerCopy)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (handlerCopy)
  {
LABEL_29:
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_30:
}

+ (void)presentGameCenterInviteUpdate:(id)update playerAlias:(id)alias
{
  aliasCopy = alias;
  updateCopy = update;
  v16 = [[self alloc] initWithPushNotification:updateCopy];
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

  [v16 setTitle:aliasCopy];
  v12 = objc_alloc_init(GKBulletinAction);
  [(GKBulletinAction *)v12 setType:2];
  v13 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings BULLETIN_VIEW];
  [(GKBulletinAction *)v12 setTitle:v13];

  v14 = [updateCopy objectForKeyedSubscript:GKFriendRequestPushAcceptorID];

  [(GKBulletinAction *)v12 setInfo:v14];
  [v16 setDefaultAction:v12];
  v15 = +[GKBulletinController sharedController];
  [v15 presentBulletin:v16];
}

+ (void)expireGetPerGameSettingsCaches:(id)caches payload:(id)payload context:(id)context
{
  cachesCopy = caches;
  payloadCopy = payload;
  contextCopy = context;
  v10 = +[GKCDGameSettings _gkFetchRequest];
  if ([cachesCopy length])
  {
    cachesCopy = [NSPredicate predicateWithFormat:@"bundleID == %@", cachesCopy];
    [v10 setPredicate:cachesCopy];
  }

  v42 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v42];
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

          [contextCopy deleteObject:*(*(&v38 + 1) + 8 * i)];
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
  v27 = [payloadCopy objectForKeyedSubscript:GKPushFriendsAuthorizationStatus];
  if (v27)
  {
    v28 = v27;
    v29 = [payloadCopy objectForKeyedSubscript:v26];
    integerValue = [v29 integerValue];
    v31 = GKPushFriendsAuthorizationStatusRemoved;

    if (integerValue == v31)
    {
      v32 = +[GKClientProxy gameCenterClient];
      v33 = [(GKService *)GKGameService serviceWithTransport:0 forClient:v32 credential:0];
      [v33 resetTCCAuthorization:&stru_100369ED8];
    }
  }
}

+ (void)expireGetPerGameFriendPlayerIDsCache:(id)cache context:(id)context
{
  cacheCopy = cache;
  contextCopy = context;
  v7 = +[GKCDGameFriendList _gkFetchRequest];
  if ([cacheCopy length])
  {
    cacheCopy = [NSPredicate predicateWithFormat:@"bundleID == %@", cacheCopy];
    [v7 setPredicate:cacheCopy];
  }

  v31 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v31];
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

          [contextCopy deleteObject:*(*(&v27 + 1) + 8 * i)];
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

+ (void)expireFriendCodeDetails:(id)details context:(id)context
{
  detailsCopy = details;
  contextCopy = context;
  v7 = +[GKCDFriendCodeDetail _gkFetchRequest];
  if ([detailsCopy length])
  {
    detailsCopy = [NSPredicate predicateWithFormat:@"friendCode == %@", detailsCopy];
    [v7 setPredicate:detailsCopy];
  }

  v31 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v31];
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

          [contextCopy deleteObject:*(*(&v27 + 1) + 8 * i)];
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

+ (void)expireCachesForBagKey:(id)key payload:(id)payload context:(id)context group:(id)group
{
  keyCopy = key;
  payloadCopy = payload;
  contextCopy = context;
  groupCopy = group;
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
    sub_100294E90(keyCopy, v16);
  }

  v17 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v17, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v18 = +[NSThread callStackSymbols];
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s not invoked on managed object context queue at %@", "+[GKSystemBulletin expireCachesForBagKey:payload:context:group:]", v18);
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKSystemBulletin.m"];
    lastPathComponent = [v20 lastPathComponent];
    v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v19, "+[GKSystemBulletin expireCachesForBagKey:payload:context:group:]", [lastPathComponent UTF8String], 253);

    [NSException raise:@"GameKit Exception" format:@"%@", v22];
  }

  v23 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:contextCopy];
  if (v23)
  {
    v24 = +[GKClientProxy gameCenterClient];
    internalRepresentation = [v23 internalRepresentation];
    v26 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v24 localPlayer:internalRepresentation];
    if (keyCopy)
    {
      playerID = [internalRepresentation playerID];

      if (playerID)
      {
        playerID2 = [internalRepresentation playerID];
        [v24 onServerCacheInvalidationReceivedWithBagKey:keyCopy playerID:playerID2];
      }
    }

    [GKSystemBulletin expireCachesForBagKey:keyCopy payload:payloadCopy context:contextCopy profile:v23 client:v24 localPlayerInternal:internalRepresentation];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100180720;
    v30[3] = &unk_100360FF0;
    v31 = v26;
    v32 = keyCopy;
    v29 = v26;
    [groupCopy perform:v30];
  }
}

+ (void)expireCachesForBagKey:(id)key payload:(id)payload context:(id)context profile:(id)profile client:(id)client localPlayerInternal:(id)internal
{
  keyCopy = key;
  payloadCopy = payload;
  contextCopy = context;
  profileCopy = profile;
  clientCopy = client;
  internalCopy = internal;
  v20 = [(GKService *)GKFriendServicePrivate serviceWithTransport:0 forClient:clientCopy localPlayer:internalCopy];
  v21 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:clientCopy localPlayer:internalCopy];
  v22 = [(GKService *)GKGameStatServicePrivate serviceWithTransport:0 forClient:clientCopy localPlayer:internalCopy];
  v63 = [(GKService *)GKProfileServicePrivate serviceWithTransport:0 forClient:clientCopy localPlayer:internalCopy];
  if ([keyCopy isEqualToString:GKBagKeyGetFriendIDs])
  {
    v55 = v21;
    [profileCopy invalidate];
    friendList = [profileCopy friendList];
    [friendList invalidate];

    friendRequestList = [profileCopy friendRequestList];
    [friendRequestList invalidate];

    playerID = [profileCopy playerID];
    v26 = playerID;
    if (playerID)
    {
      v69 = playerID;
      v27 = [NSArray arrayWithObjects:&v69 count:1];
      [v63 getProfilesForPlayerIDs:v27 handler:&stru_100369F18];
    }

    internalRepresentation = [profileCopy internalRepresentation];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100180EE4;
    v64[3] = &unk_100368508;
    v65 = clientCopy;
    v66 = internalCopy;
    [v20 getFriendsForPlayer:internalRepresentation commonFriends:0 handler:v64];

    [(GKExpiringCacheObject *)GKCompatiblePlayerListCacheObject invalidateObjectsMatchingPredicate:0 context:contextCopy];
    [GKSystemBulletin expireGetPerGameFriendPlayerIDsCache:0 context:contextCopy];
    [GKSystemBulletin expireFriendCodeDetails:0 context:contextCopy];

    v29 = payloadCopy;
    v21 = v55;
    goto LABEL_5;
  }

  if (([keyCopy isEqualToString:GKBagKeyGetGamesPlayed] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"gk-get-games-played"))
  {
    [profileCopy expire];
    gameList = [profileCopy gameList];
    [gameList expire];

    profileCopy = [NSPredicate predicateWithFormat:@"player = %@", profileCopy];
    [(GKExpiringCacheObject *)GKGameRecordCacheObject expireObjectsMatchingPredicate:profileCopy context:contextCopy];
    [profileCopy playerID];
    v32 = internalCopy;
    v33 = clientCopy;
    v34 = profileCopy;
    v35 = contextCopy;
    v36 = keyCopy;
    v38 = v37 = v21;
    v68 = v38;
    [NSArray arrayWithObjects:&v68 count:1];
    v56 = v20;
    v58 = v22;
    v40 = v39 = payloadCopy;
    v30 = v63;
    [v63 getProfilesForPlayerIDs:v40 handler:&stru_100369F38];

    v21 = v37;
    keyCopy = v36;
    contextCopy = v35;
    profileCopy = v34;
    clientCopy = v33;
    internalCopy = v32;
    internalRepresentation2 = [profileCopy internalRepresentation];
    [v21 getGamesForPlayer:internalRepresentation2 includeInstalled:0 handler:0];

    v29 = v39;
    v20 = v56;
    v22 = v58;
LABEL_9:
    v42 = profileCopy;
LABEL_10:

    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:GKBagKeyGamesFriendsPlayed])
  {
    [v22 expireGamesFriendsPlayed];
  }

  else
  {
    if ([keyCopy isEqualToString:@"gk-get-player-achievements"])
    {
      [profileCopy expire];
      [profileCopy gameRecords];
      v57 = v20;
      v43 = v59 = payloadCopy;
      [v43 makeObjectsPerformSelector:"expire"];

      profileCopy = [NSPredicate predicateWithFormat:@"player == %@", self];
      [(GKExpiringCacheObject *)GKAchievementListCacheObject expireObjectsMatchingPredicate:profileCopy context:contextCopy];
      playerID2 = [profileCopy playerID];
      v67 = playerID2;
      [NSArray arrayWithObjects:&v67 count:1];
      v45 = v22;
      v46 = internalCopy;
      v47 = clientCopy;
      v48 = profileCopy;
      v49 = contextCopy;
      v50 = keyCopy;
      v52 = v51 = v21;
      v30 = v63;
      [v63 getProfilesForPlayerIDs:v52 handler:&stru_100369F58];

      v21 = v51;
      keyCopy = v50;
      contextCopy = v49;
      profileCopy = v48;
      clientCopy = v47;
      internalCopy = v46;
      v22 = v45;

      v20 = v57;
      v29 = v59;
      goto LABEL_9;
    }

    if ([keyCopy isEqualToString:GKBagKeyGetPerGameSettings])
    {
      v53 = [payloadCopy objectForKeyedSubscript:GKInviteGameIDKey];
      [GKSystemBulletin expireGetPerGameSettingsCaches:v53 payload:payloadCopy context:contextCopy];
    }

    else
    {
      if (![keyCopy isEqualToString:GKBagKeyGetPerGameFriendPlayerIDs])
      {
        v29 = payloadCopy;
        v30 = v63;
        if (![keyCopy isEqualToString:GKBagKeyGetFriendInvitationMailbox])
        {
          goto LABEL_11;
        }

        [profileCopy invalidate];
        friendList2 = [profileCopy friendList];
        [friendList2 invalidate];

        friendRequestList2 = [profileCopy friendRequestList];
        [friendRequestList2 invalidate];

        v62 = [(GKService *)GKBulletinService serviceWithTransport:0 forClient:clientCopy localPlayer:internalCopy];
        [v62 sendRefreshContentsForDataTypeToAllClientProxy:3];
        v42 = v62;
        goto LABEL_10;
      }

      v53 = [payloadCopy objectForKeyedSubscript:GKInviteGameIDKey];
      [GKSystemBulletin expireGetPerGameFriendPlayerIDsCache:v53 context:contextCopy];
    }
  }

  v29 = payloadCopy;
LABEL_5:
  v30 = v63;
LABEL_11:
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKSystemBulletin handleAction: %@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = GKSystemBulletin;
  [(GKBulletin *)&v7 handleAction:actionCopy];
}

@end
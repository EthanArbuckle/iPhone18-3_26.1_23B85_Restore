@interface GKDataRequestManager
+ (id)pushQueue;
+ (id)ratingsQueue;
+ (id)statsQueue;
+ (id)syncQueue;
- (APSConnection)activePushConnection;
- (BOOL)hasValidNATSettings;
- (BOOL)isDevSignedForBundleID:(id)d;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (GKDataRequestManager)init;
- (NSData)pushToken;
- (id)pushConnectionForEnvironment:(int64_t)environment;
- (id)updateRequestWithPushToken:(id)token;
- (int64_t)activePushEnvironment;
- (int64_t)preferredEnvironment;
- (void)_clearPushConnections;
- (void)_setActivePushEnvironment:(int64_t)environment;
- (void)_setPushToken:(id)token;
- (void)_updateNotificationTopicsForcefully:(BOOL)forcefully;
- (void)_updatePushEnvironmentWithStoreBag:(id)bag;
- (void)appStateChanged:(id)changed;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)awaitNATSettingsAndUpdateIfNeededWithCompletionHandler:(id)handler;
- (void)beginTransaction:(id)transaction completion:(id)completion;
- (void)clearAllNearbyInvites;
- (void)clearPushEnvironment;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)endTransaction:(id)transaction;
- (void)finishStartup;
- (void)gameCenterDidBecomeRestricted;
- (void)getValidNATTypeWithForceRelay:(BOOL)relay withHandler:(id)handler;
- (void)handleNearbyInviteResponse:(id)response;
- (void)iCloudAccountAvailabilityChanged:(id)changed;
- (void)libraryDependenciesDidChangeFor:(unsigned int)for;
- (void)loadLocalizedGameNameForBundleID:(id)d handler:(id)handler;
- (void)nearbyInviteWasCancelled:(id)cancelled;
- (void)performAsync:(id)async;
- (void)performSync:(id)sync;
- (void)presentNearbyInvite:(id)invite;
- (void)processIncomingMessage:(id)message;
- (void)processIncomingiMessageInvite:(id)invite;
- (void)reachabilityDidChange:(id)change;
- (void)resetEnvironmentWithHandler:(id)handler;
- (void)sendPushTokenWithReplyQueue:(id)queue completion:(id)completion;
- (void)setActivePushEnvironment:(int64_t)environment;
- (void)setUpCloudKitNotificationTopics;
- (void)storeBagChanged:(id)changed;
- (void)synchronizeBagWithPreferences;
- (void)terminate;
- (void)terminateClient:(id)client;
- (void)updateActivePushEnvironment;
- (void)updateCachedNATSettingsIfNeededWithCompletionHandler:(id)handler;
- (void)updateNotificationTopicsForceFully:(BOOL)fully;
@end

@implementation GKDataRequestManager

- (id)updateRequestWithPushToken:(id)token
{
  tokenCopy = token;
  pushToken = [(GKDataRequestManager *)self pushToken];
  if (pushToken)
  {
    v6 = [tokenCopy mutableCopy];
    [v6 setObject:pushToken forKey:@"push-token"];
  }

  else
  {
    v6 = tokenCopy;
  }

  return v6;
}

- (void)presentNearbyInvite:(id)invite
{
  inviteCopy = invite;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKDataRequestManager+Nearby: presentNearbyInvite", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = inviteCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "presenting nearby invite:%@", buf, 0xCu);
  }

  [(GKDataRequestManager *)self beginTransaction:@"presentNearbyInvite"];
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "begun presentNearbyInvite:", buf, 2u);
  }

  [inviteCopy objectForKey:@"bundleID"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100154038;
  v13[3] = &unk_100368B58;
  v14 = v13[4] = self;
  v15 = inviteCopy;
  v11 = inviteCopy;
  v12 = v14;
  [(GKDataRequestManager *)self loadLocalizedGameNameForBundleID:v12 handler:v13];
}

- (void)nearbyInviteWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKDataRequestManager: nearbyInviteWasCancelled", buf, 2u);
  }

  v6 = [cancelledCopy objectForKey:@"playerID"];
  v7 = [cancelledCopy objectForKey:@"deviceID"];
  v8 = [cancelledCopy objectForKey:@"bundleID"];
  v9 = [GKInviteInternal nearbyInviteIDForPlayerID:v6 deviceID:v7 bundleID:v8];
  v10 = v9;
  if (v8 && v9)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKDataRequestManager: nearbyInviteWasCancelled - Telling Client", v14, 2u);
    }

    v13 = [GKClientProxy clientForBundleID:v8];
    [v13 cancelGameInvite:v10];
  }
}

- (void)handleNearbyInviteResponse:(id)response
{
  responseCopy = response;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKDataRequestManager+Nearby: handleNearbyInviteResponse", &v24, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v24 = 138412290;
    v25 = responseCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "nearby invite NC response: %@", &v24, 0xCu);
  }

  v8 = [responseCopy objectForKey:@"inviteDictionary"];
  v9 = [v8 objectForKey:@"bundleID"];

  v10 = [GKClientProxy clientForBundleID:v9];
  if (v10)
  {
    v11 = [responseCopy objectForKey:@"buttonPressed"];
    integerValue = [v11 integerValue];
    v13 = [responseCopy objectForKey:@"type"];
    integerValue2 = [v13 integerValue];

    if (integerValue2 == 1)
    {
      v15 = [responseCopy objectForKey:@"inviteDictionary"];
      v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

      v17 = [NSNumber numberWithBool:integerValue != 0];
      [v16 setObject:v17 forKey:@"accepted"];

      if (!integerValue)
      {
        if (v11)
        {
          v18 = 1;
        }

        else
        {
          v18 = 3;
        }

        v19 = [NSNumber numberWithInteger:v18];
        [v16 setObject:v19 forKey:@"declineReason"];
      }

      [v10 respondedToNearbyInvite:v16];
    }

    else
    {
      v22 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
        v22 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_100292508(responseCopy, integerValue2, v22);
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100292590(responseCopy, v21);
    }
  }
}

- (void)clearAllNearbyInvites
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKDataRequestManager+Nearby: clearAllNearbyInvites", buf, 2u);
  }

  v4 = +[GKBulletinController sharedController];
  v5 = [v4 getBulletinsOfType:objc_opt_class()];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v11 + 1) + 8 * v9)];
        [v4 withdrawBulletin:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (id)pushQueue
{
  if (qword_1003B9328 != -1)
  {
    sub_100292608();
  }

  v3 = qword_1003B9320;

  return v3;
}

+ (id)syncQueue
{
  if (qword_1003B9338 != -1)
  {
    sub_10029261C();
  }

  v3 = qword_1003B9330;

  return v3;
}

- (void)performSync:(id)sync
{
  block = sync;
  syncQueue = [objc_opt_class() syncQueue];
  v4 = dispatch_get_current_queue();

  if (v4 == syncQueue)
  {
    label = dispatch_queue_get_label(syncQueue);
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s invoked on the same queue(%s), would deadlock at %@", "[GKDataRequestManager performSync:]", label, v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", v7, "-[GKDataRequestManager performSync:]", [lastPathComponent UTF8String], 327);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  dispatch_sync(syncQueue, block);
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  syncQueue = [objc_opt_class() syncQueue];
  dispatch_async(syncQueue, asyncCopy);
}

- (GKDataRequestManager)init
{
  v7.receiver = self;
  v7.super_class = GKDataRequestManager;
  v2 = [(GKDataRequestManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100154F68;
    v5[3] = &unk_100361770;
    v6 = v2;
    [GKActivity named:@"gamed - init" execute:v5];
  }

  return v3;
}

- (void)iCloudAccountAvailabilityChanged:(id)changed
{
  changedCopy = changed;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKAccount;
  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
  {
    sub_100292630(v5);
  }

  +[GKCloudKitMultiplayer refetchUserRecordID];
}

- (void)reachabilityDidChange:(id)change
{
  if ([(GKReachability *)self->_reachability _gkCurrentReachabilityStatus])
  {
    currentEnvironment = self->_currentEnvironment;

    [GKClientProxy performDelayedRequestsForEnvironment:currentEnvironment];
  }
}

- (void)libraryDependenciesDidChangeFor:(unsigned int)for
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100155210;
  v3[3] = &unk_100361290;
  forCopy = for;
  [GKClientProxy enumerateClientsUsingBlock:v3];
}

- (void)finishStartup
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001552A0;
  v2[3] = &unk_100361770;
  v2[4] = self;
  [GKActivity named:@"gamed - finishStartup" execute:v2];
}

- (void)storeBagChanged:(id)changed
{
  changedCopy = changed;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received store bag did change notification", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100156264;
  v8[3] = &unk_1003610B8;
  v9 = changedCopy;
  selfCopy = self;
  v7 = changedCopy;
  [(GKDataRequestManager *)self performAsync:v8];
}

- (id)pushConnectionForEnvironment:(int64_t)environment
{
  v3 = 72;
  if (environment == 3)
  {
    v3 = 80;
  }

  return *(&self->super.isa + v3);
}

- (APSConnection)activePushConnection
{
  activePushEnvironment = [(GKDataRequestManager *)self activePushEnvironment];

  return [(GKDataRequestManager *)self pushConnectionForEnvironment:activePushEnvironment];
}

- (void)_updateNotificationTopicsForcefully:(BOOL)forcefully
{
  syncQueue = [objc_opt_class() syncQueue];
  v6 = dispatch_get_current_queue();
  v7 = v6;
  if (v6 != syncQueue)
  {
    label = dispatch_queue_get_label(v6);
    v9 = dispatch_queue_get_label(syncQueue);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager _updateNotificationTopicsForcefully:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == syncQueue)\n[%s (%s:%d)]", v11, "-[GKDataRequestManager _updateNotificationTopicsForcefully:]", [lastPathComponent UTF8String], 595);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  if (forcefully || ![(GKDataRequestManager *)self pushUpdatesBusy])
  {
    [(GKDataRequestManager *)self setPushUpdatesBusy:1];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10015694C;
    v40[3] = &unk_1003610B8;
    v41 = syncQueue;
    selfCopy = self;
    v15 = objc_retainBlock(v40);
    if (!self->_activePushEnvironment)
    {
      [(GKDataRequestManager *)self _clearPushConnections];
LABEL_38:
      (v15[2])(v15);
      goto LABEL_39;
    }

    v16 = [(GKDataRequestManager *)self pushConnectionForEnvironment:?];
    pushConnectionProd = self->_pushConnectionProd;
    if (v16 == pushConnectionProd)
    {
      pushConnectionProd = self->_pushConnectionDev;
    }

    v39 = pushConnectionProd;
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      if (v39 == self->_pushConnectionProd)
      {
        v20 = @"prod";
      }

      else
      {
        v20 = @"dev";
      }

      *buf = 138412290;
      v46 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Clearing gamed topic for %@", buf, 0xCu);
    }

    v21 = +[NSArray array];
    v50 = @"com.apple.gamed";
    v22 = [NSArray arrayWithObjects:&v50 count:1];
    [(APSConnection *)v39 setEnabledTopics:v21 ignoredTopics:v22];

    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v25 = @"dev";
      if (v16 == self->_pushConnectionProd)
      {
        v25 = @"prod";
      }

      *buf = 138412290;
      v46 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Enabling gamed topic for %@", buf, 0xCu);
    }

    v49 = @"com.apple.gamed";
    v26 = [NSArray arrayWithObjects:&v49 count:1];
    v27 = +[NSArray array];
    [(APSConnection *)v16 setEnabledTopics:v26 ignoredTopics:v27];

    if (!os_log_GKGeneral)
    {
      v28 = GKOSLoggers();
    }

    v29 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v30 = self->_pushConnectionProd;
      *buf = 138412546;
      v46 = @"com.apple.gamed";
      v47 = 2112;
      v48 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Enabling topic (%@) for %@", buf, 0x16u);
    }

    v44 = @"com.apple.gamed";
    v31 = [NSArray arrayWithObjects:&v44 count:1];
    [(APSConnection *)self->_pushConnectionProd _setEnabledTopics:v31];

    if (!os_log_GKGeneral)
    {
      v32 = GKOSLoggers();
    }

    v33 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      pushConnectionDev = self->_pushConnectionDev;
      *buf = 138412546;
      v46 = @"com.apple.gamed";
      v47 = 2112;
      v48 = pushConnectionDev;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Enabling topic (%@) for %@", buf, 0x16u);
    }

    v43 = @"com.apple.gamed";
    v35 = [NSArray arrayWithObjects:&v43 count:1];
    [(APSConnection *)self->_pushConnectionDev _setEnabledTopics:v35];

    publicToken = [(APSConnection *)v16 publicToken];
    v37 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v38 = GKOSLoggers();
      v37 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      sub_100292B00();
      if (publicToken)
      {
LABEL_33:
        [(GKDataRequestManager *)self _setPushToken:publicToken];
        if ([publicToken length])
        {
          [(GKDataRequestManager *)self sendPushTokenWithReplyQueue:0 completion:v15];

LABEL_39:
          goto LABEL_40;
        }
      }
    }

    else if (publicToken)
    {
      goto LABEL_33;
    }

    goto LABEL_38;
  }

LABEL_40:
}

- (void)setUpCloudKitNotificationTopics
{
  v3 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.gamed"];
  if (!self->_apsConnection)
  {
    v4 = [APSConnection alloc];
    v5 = APSEnvironmentProduction;
    v6 = dispatch_get_global_queue(0, 0);
    v7 = [v4 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.aps.gamed.CK" queue:v6];
    apsConnection = self->_apsConnection;
    self->_apsConnection = v7;

    [(APSConnection *)self->_apsConnection setDelegate:self];
  }

  v10 = v3;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(APSConnection *)self->_apsConnection _setEnabledTopics:v9];
}

- (void)updateNotificationTopicsForceFully:(BOOL)fully
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100156C38;
  v3[3] = &unk_100362728;
  v3[4] = self;
  fullyCopy = fully;
  [(GKDataRequestManager *)self performAsync:v3];
}

- (void)_clearPushConnections
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    pushConnectionProd = self->_pushConnectionProd;
    v9 = 138412290;
    v10 = pushConnectionProd;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clearing topics for prod %@", &v9, 0xCu);
  }

  [(APSConnection *)self->_pushConnectionProd _setEnabledTopics:&__NSArray0__struct];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    pushConnectionDev = self->_pushConnectionDev;
    v9 = 138412290;
    v10 = pushConnectionDev;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Clearing topics for dev %@", &v9, 0xCu);
  }

  [(APSConnection *)self->_pushConnectionDev _setEnabledTopics:&__NSArray0__struct];
}

- (void)clearPushEnvironment
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100156E04;
  v2[3] = &unk_100361770;
  v2[4] = self;
  [(GKDataRequestManager *)self performAsync:v2];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(GKDataRequestManager *)self setReceivesMemoryWarnings:0];
  v4 = +[GKPreferences shared];
  [v4 setPreferencesDelegate:0];

  [(GKDataRequestManager *)self setGameModeListener:0];
  v5.receiver = self;
  v5.super_class = GKDataRequestManager;
  [(GKDataRequestManager *)&v5 dealloc];
}

- (int64_t)preferredEnvironment
{
  v2 = +[GKPreferences shared];
  environment = [v2 environment];

  return environment;
}

- (void)resetEnvironmentWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Resetting environment", buf, 2u);
  }

  v7 = +[GKPlayerCredentialController sharedController];
  currentEnvironment = [(GKDataRequestManager *)self currentEnvironment];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001570A8;
  v10[3] = &unk_100361198;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v7 removeAllCredentialsForEnvironment:currentEnvironment completionHandler:v10];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = [[GKEntitlements alloc] initWithConnection:connectionCopy];
  processIdentifier = [connectionCopy processIdentifier];
  if (processIdentifier)
  {
    v11 = [NSBundle _gkBundleIdentifierFromConnection:connectionCopy];
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v12 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100292C4C();
    }

    v14 = [GKClientProxy clientForBundleID:v11 pid:processIdentifier connectionEntitlements:v9];
    [v14 setOriginalBundleIdentifier:v11];
    if (v14)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        grandfatheredEntitlementsForSpoofedApps = [(GKEntitlements *)v9 grandfatheredEntitlementsForSpoofedApps];

        v9 = grandfatheredEntitlementsForSpoofedApps;
      }

      if ([(GKEntitlements *)v9 hasAnyEntitlement])
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        v18 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          log = v18;
          bundleIdentifier = [v14 bundleIdentifier];
          originalBundleIdentifier = [v14 originalBundleIdentifier];
          *buf = 67110146;
          v50 = processIdentifier;
          v51 = 2112;
          v52 = bundleIdentifier;
          v53 = 2112;
          v54 = originalBundleIdentifier;
          v55 = 1024;
          v56 = isKindOfClass & 1;
          v57 = 2112;
          v58 = v9;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "accepted client connection (pid:%d, bundleID:%@, originalBundleIdentifier: %@, isSpoofing:%d, entitlements:%@)", buf, 0x2Cu);
        }

        [v14 setEntitlements:v9];
        [connectionCopy setExportedObject:v14];
        v21 = +[GKDaemonInterface interface];
        [connectionCopy setExportedInterface:v21];

        v22 = +[GKClientInterface interface];
        [connectionCopy setRemoteObjectInterface:v22];

        objc_initWeak(&location, connectionCopy);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1001578B4;
        v45[3] = &unk_100368CC8;
        objc_copyWeak(&v47, &location);
        v23 = v14;
        v46 = v23;
        [connectionCopy setInterruptionHandler:v45];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1001579B4;
        v41[3] = &unk_100368CF0;
        objc_copyWeak(&v44, &location);
        v24 = v23;
        v42 = v24;
        selfCopy = self;
        [connectionCopy setInvalidationHandler:v41];
        [v24 setPid:processIdentifier];
        [v24 setConnection:connectionCopy];
        originalBundleIdentifier2 = [v24 originalBundleIdentifier];
        v26 = originalBundleIdentifier2;
        if (originalBundleIdentifier2)
        {
          bundleIdentifier2 = originalBundleIdentifier2;
        }

        else
        {
          bundleIdentifier2 = [v24 bundleIdentifier];
        }

        processIdentifier = bundleIdentifier2;

        applicationStateMonitor = [(GKDataRequestManager *)self applicationStateMonitor];
        if ([applicationStateMonitor startObservingStateChangesForBundleID:processIdentifier] && objc_msgSend(v24, "applicationState") == 8)
        {
          [v24 didEnterForeground];
        }

        [connectionCopy resume];
        if (!os_log_GKGeneral)
        {
          v37 = GKOSLoggers();
        }

        v38 = os_log_GKPerf;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = CFAbsoluteTimeGetCurrent();
          sub_100292CC0(v39, Current);
        }

        objc_destroyWeak(&v44);
        objc_destroyWeak(&v47);
        objc_destroyWeak(&location);

        LOBYTE(processIdentifier) = 1;
        goto LABEL_28;
      }

      if (!os_log_GKGeneral)
      {
        v30 = GKOSLoggers();
      }

      v31 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v32 = v31;
        bundleIdentifier3 = [v14 bundleIdentifier];
        originalBundleIdentifier3 = [v14 originalBundleIdentifier];
        *buf = 67109634;
        v50 = processIdentifier;
        v51 = 2112;
        v52 = bundleIdentifier3;
        v53 = 2112;
        v54 = originalBundleIdentifier3;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "rejected connection from client lacking any entitlement (pid:%d, bundleID:%@, originalBundleIdentifier: %@)", buf, 0x1Cu);
      }
    }

    else
    {
LABEL_17:
      if (!os_log_GKGeneral)
      {
        v28 = GKOSLoggers();
      }

      v29 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v50 = processIdentifier;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Could not get client for pid (%d)", buf, 8u);
      }

      NSLog(@"Could not get client for pid (%d)", processIdentifier);
    }

    LOBYTE(processIdentifier) = 0;
LABEL_28:
  }

  return processIdentifier;
}

- (void)awaitNATSettingsAndUpdateIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  commonNATSettings = [(GKDataRequestManager *)self commonNATSettings];

  if (commonNATSettings)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[NAT] Has cached NAT settings. Returning.", v8, 2u);
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    [(GKDataRequestManager *)self updateCachedNATSettingsIfNeededWithCompletionHandler:handlerCopy];
  }
}

- (void)updateCachedNATSettingsIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dispatch_get_specific(&off_1003B5050) == "com.apple.GameKit.GKDataRequestManager.sync")
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[NAT] Updating cached settings.", buf, 2u);
    }

    storeBag = [(GKDataRequestManager *)self storeBag];
    if (storeBag)
    {
      v10 = +[GKViceroyNATConfiguration settingsKeys];
      syncQueue = [objc_opt_class() syncQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100157EB4;
      v14[3] = &unk_100362058;
      v14[4] = self;
      v15 = storeBag;
      v16 = handlerCopy;
      [v15 getValuesForKeys:v10 queue:syncQueue completion:v14];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[NAT] No store bag, not updating NAT settings", buf, 2u);
      }

      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[NAT] Not on sync queue, switching to sync queue.", buf, 2u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100157EA8;
    v17[3] = &unk_100361270;
    v17[4] = self;
    v18 = handlerCopy;
    [(GKDataRequestManager *)self performAsync:v17];
  }
}

- (void)getValidNATTypeWithForceRelay:(BOOL)relay withHandler:(id)handler
{
  relayCopy = relay;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (relayCopy)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[NAT] Returning forced relay NAT type.", buf, 2u);
    }

    (v7)[2](v7, +[GKViceroyNATTypeHelper forceRelayNATType]);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001582A0;
    v10[3] = &unk_100361270;
    v10[4] = self;
    v11 = handlerCopy;
    [(GKDataRequestManager *)self performAsync:v10];
  }
}

- (BOOL)hasValidNATSettings
{
  commonNATSettings = [(GKDataRequestManager *)self commonNATSettings];
  v3 = commonNATSettings != 0;

  return v3;
}

- (int64_t)activePushEnvironment
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100158DD4;
  v4[3] = &unk_1003624A8;
  v4[4] = self;
  v4[5] = &v5;
  [(GKDataRequestManager *)self performSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setActivePushEnvironment:(int64_t)environment
{
  v5 = dispatch_get_current_queue();
  syncQueue = [objc_opt_class() syncQueue];

  if (v5 != syncQueue)
  {
    label = dispatch_queue_get_label(v5);
    syncQueue2 = [objc_opt_class() syncQueue];
    v9 = dispatch_queue_get_label(syncQueue2);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager _setActivePushEnvironment:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [[self class] syncQueue])\n[%s (%s:%d)]", v11, "-[GKDataRequestManager _setActivePushEnvironment:]", [lastPathComponent UTF8String], 997);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  if (environment <= 2)
  {
    environmentCopy = 2;
  }

  else
  {
    environmentCopy = environment;
  }

  if (environmentCopy != self->_activePushEnvironment)
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      activePushEnvironment = self->_activePushEnvironment;
      *buf = 67109376;
      LODWORD(v29[0]) = activePushEnvironment;
      WORD2(v29[0]) = 1024;
      *(v29 + 6) = environmentCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Changing push environment from %d to %d", buf, 0xEu);
    }

    self->_activePushEnvironment = environmentCopy;
    v19 = +[NSUserDefaults standardUserDefaults];
    [v19 setInteger:self->_activePushEnvironment forKey:GKPushEnvironmentKey];
    [v19 synchronize];
    if (self->_activePushEnvironment == 3 && !self->_pushConnectionDev)
    {
      v20 = [APSConnection alloc];
      v21 = APSEnvironmentDevelopment;
      v22 = +[GKDataRequestManager pushQueue];
      v23 = [v20 initWithEnvironmentName:v21 namedDelegatePort:@"com.apple.gamed.apsdev" queue:v22];
      pushConnectionDev = self->_pushConnectionDev;
      self->_pushConnectionDev = v23;

      if (!os_log_GKGeneral)
      {
        v25 = GKOSLoggers();
      }

      v26 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v27 = self->_pushConnectionDev;
        *buf = 138412290;
        v29[0] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Created dev push connection: %@", buf, 0xCu);
      }

      [(APSConnection *)self->_pushConnectionDev setDelegate:self];
    }

    [(GKDataRequestManager *)self _updateNotificationTopicsForcefully:1];
  }
}

- (void)setActivePushEnvironment:(int64_t)environment
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001591A0;
  v3[3] = &unk_1003676D8;
  v3[4] = self;
  v3[5] = environment;
  [(GKDataRequestManager *)self performAsync:v3];
}

- (NSData)pushToken
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1001592AC;
  v9 = sub_1001592BC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001592C4;
  v4[3] = &unk_1003624A8;
  v4[4] = self;
  v4[5] = &v5;
  [(GKDataRequestManager *)self performSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setPushToken:(id)token
{
  tokenCopy = token;
  v6 = dispatch_get_current_queue();
  syncQueue = [objc_opt_class() syncQueue];

  if (v6 != syncQueue)
  {
    v23 = tokenCopy;
    label = dispatch_queue_get_label(v6);
    syncQueue2 = [objc_opt_class() syncQueue];
    v10 = dispatch_queue_get_label(syncQueue2);
    v11 = +[NSThread callStackSymbols];
    v12 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager _setPushToken:]", label, v10, v11];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [[self class] syncQueue])\n[%s (%s:%d)]", v12, "-[GKDataRequestManager _setPushToken:]", [lastPathComponent UTF8String], 1043);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
    tokenCopy = v23;
  }

  objc_storeStrong(&self->_pushToken, token);
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    pushToken = self->_pushToken;
    activePushEnvironment = self->_activePushEnvironment;
    *buf = 138412546;
    v25 = pushToken;
    v26 = 1024;
    v27 = activePushEnvironment;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "pushToken: %@ activePushEnvironment: %d", buf, 0x12u);
  }

  v20 = self->_pushToken;
  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = v21;
  if (v20)
  {
    [v21 setObject:self->_pushToken forKey:GKPushTokenKey];
  }

  else
  {
    [v21 removeObjectForKey:GKPushTokenKey];
  }
}

- (void)_updatePushEnvironmentWithStoreBag:(id)bag
{
  bagCopy = bag;
  v5 = +[GKPreferences shared];
  pushEnvironment = [v5 pushEnvironment];

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 67109120;
    LODWORD(v13) = pushEnvironment;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "default pushEnvironment = %d", &v12, 8u);
  }

  if (pushEnvironment <= 1)
  {
    v9 = [bagCopy objectForKey:@"gk-apns-env"];
    if ([v9 isEqual:@"dev"])
    {
      pushEnvironment = 3;
    }

    else
    {
      pushEnvironment = 2;
    }

    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v9;
      v14 = 1024;
      v15 = pushEnvironment;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "using bag pushEnvironment %@ (%d)", &v12, 0x12u);
    }
  }

  [(GKDataRequestManager *)self _setActivePushEnvironment:pushEnvironment];
}

- (void)updateActivePushEnvironment
{
  storeBag = [(GKDataRequestManager *)self storeBag];
  syncQueue = [objc_opt_class() syncQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001597D4;
  v6[3] = &unk_100368D90;
  v6[4] = self;
  v7 = storeBag;
  v5 = storeBag;
  [v5 getValuesForKeys:&off_100383430 queue:syncQueue completion:v6];
}

- (void)sendPushTokenWithReplyQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  syncQueue = [objc_opt_class() syncQueue];
  v9 = syncQueue;
  if (!queueCopy)
  {
    queueCopy = syncQueue;
  }

  currentEnvironment = self->_currentEnvironment;
  activePushEnvironment = self->_activePushEnvironment;
  storeBag = [(GKDataRequestManager *)self storeBag];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100159B18;
  v15[3] = &unk_100368E28;
  v18 = currentEnvironment;
  v19 = activePushEnvironment;
  v16 = v9;
  v17 = completionCopy;
  v15[4] = self;
  v13 = v9;
  v14 = completionCopy;
  [storeBag getValuesForKeys:&off_100383448 queue:queueCopy completion:v15];
}

- (void)synchronizeBagWithPreferences
{
  storeBag = [(GKDataRequestManager *)self storeBag];
  v5[0] = GKMaxRecentPlayersCount;
  v5[1] = GKMaxRecentPlayersTime;
  v3 = [NSArray arrayWithObjects:v5 count:2];
  syncQueue = [objc_opt_class() syncQueue];
  [storeBag getValuesForKeys:v3 queue:syncQueue completion:&stru_100368E68];
}

- (void)terminateClient:(id)client
{
  clientCopy = client;
  v5 = dispatch_get_current_queue();
  syncQueue = [objc_opt_class() syncQueue];

  if (v5 != syncQueue)
  {
    label = dispatch_queue_get_label(v5);
    syncQueue2 = [objc_opt_class() syncQueue];
    v9 = dispatch_queue_get_label(syncQueue2);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager terminateClient:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == [[self class] syncQueue])\n[%s (%s:%d)]", v11, "-[GKDataRequestManager terminateClient:]", [lastPathComponent UTF8String], 1221);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_DEBUG))
  {
    sub_100292EE8();
  }

  v16 = [(GKService *)GKMultiplayerMatchService serviceWithTransport:0 forClient:clientCopy localPlayer:0];
  [v16 cancelGameInviteWithHandler:&stru_100368E88];

  v17 = [(GKService *)GKMultiplayerMatchService serviceWithTransport:0 forClient:clientCopy localPlayer:0];
  [v17 cancelOutstandingMatchRequestWithHandler:&stru_100368EA8];

  [(GKDataRequestManager *)self clearAllNearbyInvites];
  [clientCopy clearDiscoveryInfo];
  [GKClientProxy removeClient:clientCopy];
  [clientCopy terminateWithCompletionHandler:&stru_100368EE8];
}

- (void)appStateChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy objectForKeyedSubscript:GKApplicationStateKey];
  integerValue = [v5 integerValue];
  v7 = [changedCopy objectForKeyedSubscript:GKApplicationStateDisplayIDKey];
  v8 = [changedCopy objectForKeyedSubscript:GKApplicationStatePIDKey];
  integerValue2 = [v8 integerValue];

  v10 = [GKClientProxy clientForBundleID:v7 pid:integerValue2 createIfNecessary:integerValue == 8];
  v11 = v10;
  if (!v10 || ([v10 isUIService] & 1) != 0 || (objc_msgSend(v11, "isExtension") & 1) != 0)
  {
    goto LABEL_27;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    *buf = 138413058;
    v32 = v11;
    v33 = 1024;
    applicationState = [v11 applicationState];
    v35 = 1024;
    v36 = integerValue;
    v37 = 2112;
    v38 = changedCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "appState for client %@ changed from %d to %d -- userinfo = %@", buf, 0x22u);
  }

  [v11 setPreviousApplicationState:{objc_msgSend(v11, "applicationState")}];
  [v11 setApplicationState:integerValue];
  if (integerValue <= 3)
  {
    if (integerValue == 1)
    {
      v18 = +[GKPlayerCredentialController sharedController];
      v19 = [v18 primaryCredentialForEnvironment:{objc_msgSend(v11, "environment")}];

      if (v19)
      {
        v25 = _NSConcreteStackBlock;
        v26 = 3221225472;
        v27 = sub_10015AA8C;
        v28 = &unk_1003610B8;
        selfCopy = self;
        v30 = v11;
        [(GKDataRequestManager *)self performSync:&v25];
      }

      else
      {
        [GKClientProxy removeClient:v11];
      }

      originalBundleIdentifier = [v11 originalBundleIdentifier];
      v21 = originalBundleIdentifier;
      if (originalBundleIdentifier)
      {
        bundleIdentifier = originalBundleIdentifier;
      }

      else
      {
        bundleIdentifier = [v11 bundleIdentifier];
      }

      v23 = bundleIdentifier;

      applicationStateMonitor = [(GKDataRequestManager *)self applicationStateMonitor];
      [applicationStateMonitor stopObservingStateChangesForBundleID:v23];

      goto LABEL_27;
    }

    if (integerValue != 2)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (integerValue == 4)
  {
LABEL_15:
    if ([v11 isGameCenter])
    {
      [(GKDataRequestManager *)self setAuthenticatingWithSettingsBundleID:0];
    }

    v15 = +[GKPlayerCredentialController sharedController];
    v16 = [v15 primaryCredentialForEnvironment:{objc_msgSend(v11, "environment")}];

    if (v16)
    {
      [v11 backgroundWithCompletionHandler:0];
    }

    v17 = [(GKService *)GKMultiplayerMatchService serviceWithTransport:0 forClient:v11 localPlayer:0];
    [v17 cancelOutstandingMatchRequestWithHandler:&stru_100368F08];

    [(GKDataRequestManager *)self clearAllNearbyInvites];
    goto LABEL_27;
  }

  if (integerValue == 8)
  {
    [v11 didEnterForeground];
  }

LABEL_27:
}

- (void)loadLocalizedGameNameForBundleID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKDataRequestManager: loadLocalizedGameNameForBundleID", buf, 2u);
  }

  if (handlerCopy)
  {
    v9 = +[GKClientProxy gameCenterClient];
    v10 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v9 localPlayer:0];
    v16 = dCopy;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10015AC54;
    v12[3] = &unk_100362408;
    v13 = dCopy;
    v14 = handlerCopy;
    [v10 getGameMetadataForBundleIDs:v11 handler:v12];
  }
}

- (void)gameCenterDidBecomeRestricted
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKDataRequestManager: gameCenterDidBecomeRestricted", v5, 2u);
  }

  [(GKDataRequestManager *)self resetEnvironment];
}

- (void)processIncomingiMessageInvite:(id)invite
{
  inviteCopy = invite;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = inviteCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Processing incoming Messages invite data dictionary: %@", &v6, 0xCu);
  }

  [GKBulletin bulletinsForPushNotification:inviteCopy withHandler:&stru_100368F48];
}

- (BOOL)isDevSignedForBundleID:(id)d
{
  if (!d)
  {
    return 0;
  }

  dCopy = d;
  codeSigningManager = [(GKDataRequestManager *)self codeSigningManager];
  v6 = [codeSigningManager isDevSignedWithBundleID:dCopy];

  return v6;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKDataRequestManager: connection:didReceivePublicToken:", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = connectionCopy;
    v19 = 2112;
    v20 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "connection: %@ publicToken: %@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10015B248;
  v14[3] = &unk_100361F68;
  v14[4] = self;
  v15 = connectionCopy;
  v16 = tokenCopy;
  v12 = tokenCopy;
  v13 = connectionCopy;
  [(GKDataRequestManager *)self performAsync:v14];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKDataRequestManager: connection:didReceiveIncomingMessage:", &v25, 2u);
  }

  userInfo = [messageCopy userInfo];
  topic = [messageCopy topic];
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    v26 = userInfo;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Received push: %@", &v25, 0xCu);
  }

  v14 = +[GKReporter reporter];
  [v14 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountAll];

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v25 = 138412546;
    v26 = topic;
    v27 = 2112;
    v28 = userInfo;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "received push for topic %@, userInfo = %@", &v25, 0x16u);
  }

  if ([topic isEqualToString:@"com.apple.gamed"])
  {
    v17 = +[GKPreferences shared];
    isGameCenterDisabled = [v17 isGameCenterDisabled];

    if ((isGameCenterDisabled & 1) == 0)
    {
      [(GKDataRequestManager *)self processIncomingMessage:userInfo];
    }
  }

  else
  {
    v19 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.gamed"];
    v20 = [topic isEqualToString:v19];

    if ((v20 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      v22 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "GKDataRequestManager: PUSH FAILED: unknown topic", &v25, 2u);
      }

      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
      }

      v24 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = topic;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "PUSH FAILED: Unknown topic (%@)", &v25, 0xCu);
      }
    }
  }
}

- (void)processIncomingMessage:(id)message
{
  messageCopy = message;
  [(GKDataRequestManager *)self beginTransaction:@"processMessage"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015B73C;
  block[3] = &unk_100361770;
  v7 = messageCopy;
  v5 = messageCopy;
  dispatch_async(&_dispatch_main_q, block);
  [(GKDataRequestManager *)self endTransaction:@"processMessage"];
}

- (void)endTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKDataRequestManager: endTransaction:", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015B968;
  v8[3] = &unk_1003610B8;
  v8[4] = self;
  v9 = transactionCopy;
  v7 = transactionCopy;
  [(GKDataRequestManager *)self performAsync:v8];
}

- (void)beginTransaction:(id)transaction completion:(id)completion
{
  transactionCopy = transaction;
  completionCopy = completion;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKDataRequestManager: beginTransaction:", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015BB44;
  v12[3] = &unk_100360FC8;
  v12[4] = self;
  v13 = transactionCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = transactionCopy;
  [(GKDataRequestManager *)self performAsync:v12];
}

- (void)terminate
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKDataRequestManager: Forced termination", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Forced termination. Goodbye.", v7, 2u);
  }

  [(GKDataRequestManager *)self performSync:&stru_100368F88];
}

+ (id)statsQueue
{
  if (qword_1003B9348 != -1)
  {
    sub_100292F5C();
  }

  v3 = qword_1003B9340;

  return v3;
}

+ (id)ratingsQueue
{
  if (qword_1003B9358 != -1)
  {
    sub_100292F70();
  }

  v3 = qword_1003B9350;

  return v3;
}

- (void)applicationsWillUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  selfCopy = self;
  removedApp = [(GKDataRequestManager *)self removedApp];

  if (!removedApp)
  {
    v6 = +[NSMutableSet set];
    [(GKDataRequestManager *)self setRemovedApp:v6];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = uninstallCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = GKInfoPlistKeyFriendsAPIUsageDescription;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        bundleURL = [v13 bundleURL];

        if (bundleURL)
        {
          bundleURL2 = [v13 bundleURL];
          v16 = [NSBundle bundleWithURL:bundleURL2];
          infoDictionary = [v16 infoDictionary];

          v18 = [infoDictionary objectForKeyedSubscript:v11];

          if (v18)
          {
            removedApp2 = [(GKDataRequestManager *)selfCopy removedApp];
            bundleIdentifier = [v13 bundleIdentifier];
            [removedApp2 addObject:bundleIdentifier];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(GKDataRequestManager *)self removedApp];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = objc_opt_new();
        [v8 setBundleID:v7];
        [v8 setAllowFriendListAccess:3];
        v9 = +[GKClientProxy gameCenterClient];
        v10 = [(GKService *)GKGameServicePrivate serviceWithTransport:0 forClient:v9 localPlayer:0];
        bundleID = [v8 bundleID];
        serverAllowFriendListAccessValue = [v8 serverAllowFriendListAccessValue];
        [v10 submitFriendListAccess:bundleID value:serverAllowFriendListAccessValue handler:&stru_100368FE8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  removedApp = [(GKDataRequestManager *)self removedApp];
  [removedApp removeAllObjects];
}

@end
@interface GKUtilityServicePrivate
+ (id)serializeFriendSuggestions:(id)suggestions contactIDsSupportingPushFriending:(id)friending;
+ (id)sharedFriendSuggestionDenier;
+ (void)removeCacheDirectory:(id)directory;
- (void)callBlockWithFriendSuggester:(id)suggester;
- (void)cancelNetworkManagerTasks;
- (void)checkAndUpdateArcadeSubscriberStatusWithHandler:(id)handler;
- (void)clearCachesWithHandler:(id)handler;
- (void)clearEntityCacheForBagKey:(id)key completionHandler:(id)handler;
- (void)clearFriendSuggestionsDenyList;
- (void)currentNonGameCenterForegroundGameHandler:(id)handler;
- (void)denyContact:(id)contact handler:(id)handler;
- (void)denyPlayer:(id)player handler:(id)handler;
- (void)fetchFriendSuggestionsWithHandler:(id)handler;
- (void)getArcadeSubscription:(id)subscription;
- (void)getBagDataWithHandler:(id)handler;
- (void)getCacheLocationsForPlayerID:(id)d completionHandler:(id)handler;
- (void)getCentralCacheLocationForPlayerID:(id)d completionHandler:(id)handler;
- (void)getCredentialInfoAndStoreBagValuesForKeys:(id)keys handler:(id)handler;
- (void)getFriendSuggestionDenyListWithHandler:(id)handler;
- (void)getFriendSuggestionsWithHandler:(id)handler;
- (void)getGameInviteFriendSuggestionsWithHandler:(id)handler;
- (void)getHostGameWithHandler:(id)handler;
- (void)getWidgetStoreBagValueWithHandler:(id)handler;
- (void)handleFriendSuggestionDenialWithNotificationPayload:(id)payload error:(id)error handler:(id)handler;
- (void)healthCheckImplWithHandler:(id)handler;
- (void)invokeASCAppLaunchTrampolineWithURL:(id)l handler:(id)handler;
- (void)invokeGameTrampolineWithURL:(id)l handler:(id)handler;
- (void)invokeGameTrampolineWithURL:(id)l inviterPlayerID:(id)d handler:(id)handler;
- (void)loadDataForURL:(id)l postBody:(id)body completionHandler:(id)handler;
- (void)notifyRemoteAlertCompletedPresentingDashboard;
- (void)openGameCenterSettings;
- (void)openSettings;
- (void)pingWithHandler:(id)handler;
- (void)postGamesMapEventWithGamesUserID:(id)d gameCenterUserID:(id)iD actionType:(id)type hostAppBundleId:(id)id additionalFields:(id)fields;
- (void)refreshAppMetadataForGameDescriptor:(id)descriptor;
- (void)refreshPreferencesWithDataType:(unsigned int)type;
- (void)rerankedFriendSuggestionsHandlesWithHandler:(id)handler;
- (void)resetEnvironmentWithHandler:(id)handler;
- (void)resetSignInPromptsWithCompletionHandler:(id)handler;
- (void)suggestedContactsListWithLimit:(id)limit handler:(id)handler;
- (void)suggestedFriendsWithHandler:(id)handler;
- (void)terminate;
- (void)updateNotificationTopicsForcefully:(BOOL)forcefully;
- (void)willLaunchGameCenterUIForGameDescriptor:(id)descriptor completionHandler:(id)handler;
@end

@implementation GKUtilityServicePrivate

+ (id)sharedFriendSuggestionDenier
{
  if (qword_1003B90F8 != -1)
  {
    sub_100287434();
  }

  v3 = qword_1003B90F0;

  return v3;
}

- (void)currentNonGameCenterForegroundGameHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[GKClientProxy nonGameCenterForegroundClient];
  currentGame = [v6 currentGame];
  (*(handler + 2))(handlerCopy, currentGame);
}

- (void)notifyRemoteAlertCompletedPresentingDashboard
{
  v2 = +[GKRemoteAlertLauncher shared];
  [v2 notifyDashboardDidLaunch];
}

- (void)invokeASCAppLaunchTrampolineWithURL:(id)l handler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = lCopy;
  v6 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  queryItems = [v6 queryItems];

  v8 = [queryItems countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v8)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v46;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v46 != v12)
      {
        objc_enumerationMutation(queryItems);
      }

      v14 = *(*(&v45 + 1) + 8 * i);
      name = [v14 name];
      v16 = [name isEqualToString:@"appId"];

      if (v16)
      {
        value = [v14 value];
        v18 = v11;
        v11 = value;
      }

      else
      {
        name2 = [v14 name];
        v20 = [name2 isEqualToString:@"bundleId"];

        if (!v20)
        {
          continue;
        }

        value2 = [v14 value];
        v18 = v10;
        v10 = value2;
      }
    }

    v9 = [queryItems countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v9);
LABEL_15:

  if ([GKGame isNewsApp:v10])
  {
    v22 = +[GKApplicationWorkspace defaultWorkspace];
    [v22 openNewsApp];

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B050;
    block[3] = &unk_100360EB0;
    v25 = handlerCopy;
    v44 = handlerCopy;
    v43 = v11;
    dispatch_async(replyQueue, block);

    v26 = v44;
    v27 = v34;
  }

  else
  {
    v28 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 852, "[GKUtilityServicePrivate invokeASCAppLaunchTrampolineWithURL:handler:]"];
    v29 = [GKDispatchGroup dispatchGroupWithName:v28];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10005B08C;
    v38[3] = &unk_100360F00;
    v27 = v34;
    v39 = v34;
    v40 = v11;
    v26 = v29;
    v41 = v26;
    [v26 perform:v38];
    v25 = handlerCopy;
    if (handlerCopy)
    {
      clientProxy2 = [(GKService *)self clientProxy];
      replyQueue2 = [clientProxy2 replyQueue];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10005B518;
      v35[3] = &unk_100360EB0;
      v37 = handlerCopy;
      v36 = v26;
      [v36 notifyOnQueue:replyQueue2 block:v35];
    }
  }
}

- (void)invokeGameTrampolineWithURL:(id)l handler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = +[GKPlayerCredentialController sharedController];
  v9 = +[GKClientProxy gameCenterClient];
  v10 = [v8 pushCredentialForEnvironment:{objc_msgSend(v9, "environment")}];
  playerInternal = [v10 playerInternal];
  playerID = [playerInternal playerID];

  if (playerID)
  {
    [(GKUtilityServicePrivate *)self invokeGameTrampolineWithURL:lCopy inviterPlayerID:playerID handler:handlerCopy];
  }

  else
  {
    v13 = +[GKClientProxy gameCenterClient];
    v14 = [v13 parsedBundleIDFromPartyURL:lCopy];

    v15 = GKApplicationWithIdentifierIsInstalled(v14);
    v16 = os_log_GKGeneral;
    if (v15)
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
        v16 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = lCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Player not signed in but game installed. Launching game for activity party url: %@", buf, 0xCu);
      }

      GKLaunchApplicationWithIdentifier(v14, 0);
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      v19 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100287448(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      v27 = +[GKApplicationWorkspace defaultWorkspace];
      openMoltresAppIfInstalled = [v27 openMoltresAppIfInstalled];

      if ((openMoltresAppIfInstalled & 1) == 0)
      {
        v29 = +[GKApplicationWorkspace defaultWorkspace];
        [v29 openGameCenterSettings];
      }
    }

    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B8A0;
    block[3] = &unk_100360FA0;
    v33 = handlerCopy;
    dispatch_async(replyQueue, block);
  }
}

- (void)invokeGameTrampolineWithURL:(id)l inviterPlayerID:(id)d handler:(id)handler
{
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  v11 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
    v11 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100287480();
  }

  v13 = os_log_GKGeneral;
  if (lCopy && dCopy)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
      v13 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "About to launch game and pass the activity.", buf, 2u);
    }

    v15 = +[GKClientProxy gameCenterClient];
    [v15 onGameActivityOpenedWithPartyURL:lCopy creatorPlayerID:dCopy];

    v16 = 0;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002874E8();
    }

    v16 = [NSError gkInternalErrorWithCode:501];
  }

  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005BACC;
  v22[3] = &unk_100360EB0;
  v23 = v16;
  v24 = handlerCopy;
  v20 = v16;
  v21 = handlerCopy;
  dispatch_async(replyQueue, v22);
}

- (void)getHostGameWithHandler:(id)handler
{
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10005BC44;
  v19 = sub_10005BC54;
  v20 = 0;
  clientProxy = [(GKService *)self clientProxy];
  originalBundleIdentifier = [clientProxy originalBundleIdentifier];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10005BC5C;
  v12 = &unk_1003611C0;
  v7 = originalBundleIdentifier;
  v13 = v7;
  v14 = &v15;
  [GKClientProxy enumerateClientsUsingBlock:&v9];
  currentGame = [v16[5] currentGame];
  handlerCopy[2](handlerCopy, currentGame);

  _Block_object_dispose(&v15, 8);
}

- (void)getCredentialInfoAndStoreBagValuesForKeys:(id)keys handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKUtilityService: getCredentialInfoAndStoreBagValuesForKeys:", buf, 2u);
  }

  v10 = [(GKUtilityService *)self _bagValuesForKeys:keysCopy];
  error = [v10 error];

  if (!error)
  {
    v12 = +[GKDataRequestManager sharedManager];
    pushToken = [v12 pushToken];
    [v10 setObject:pushToken forKeyedSubscript:@"pushToken"];

    credential = [(GKService *)self credential];
    playerInternal = [credential playerInternal];
    playerID = [playerInternal playerID];
    [v10 setObject:playerID forKeyedSubscript:@"playerID"];

    authenticationToken = [credential authenticationToken];
    [v10 setObject:authenticationToken forKeyedSubscript:@"authToken"];

    accountName = [credential accountName];
    [v10 setObject:accountName forKeyedSubscript:@"accountName"];
  }

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10005BF44;
    v21[3] = &unk_100360EB0;
    v23 = handlerCopy;
    v22 = v10;
    [v22 notifyOnQueue:replyQueue block:v21];
  }
}

- (void)openSettings
{
  v2 = +[GKApplicationWorkspace defaultWorkspace];
  [v2 openSettings];
}

- (void)openGameCenterSettings
{
  v2 = +[GKApplicationWorkspace defaultWorkspace];
  [v2 openGameCenterSettings];
}

- (void)terminate
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Exiting in response to termination request", v4, 2u);
  }

  dispatch_async(&_dispatch_main_q, &stru_1003611E0);
}

- (void)willLaunchGameCenterUIForGameDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKUtilityService: willLaunchGameCenterUIForGameDescriptor:completionHandler", v11, 2u);
  }

  v10 = [(GKService *)GKProfileServicePrivate serviceFromService:self];
  [v10 startContactsIntegrationSyncWithOptions:2 completionHandler:&stru_100361220];
  [(GKUtilityServicePrivate *)self refreshAppMetadataForGameDescriptor:descriptorCopy];
  handlerCopy[2](handlerCopy, 0);
}

- (void)refreshAppMetadataForGameDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (_os_feature_enabled_impl())
  {
    bundleIdentifier = [descriptorCopy bundleIdentifier];
    if ([bundleIdentifier length])
    {
      v6 = [(GKService *)GKGameServicePrivate serviceFromService:self];
      adamID = [descriptorCopy adamID];
      stringValue = [adamID stringValue];

      if (stringValue)
      {
        v17 = stringValue;
        v9 = [NSArray arrayWithObjects:&v17 count:1];
        v10 = 0;
      }

      else
      {
        v16 = bundleIdentifier;
        v10 = [NSArray arrayWithObjects:&v16 count:1];
        v9 = 0;
      }

      v12 = +[GKDataRequestManager sharedManager];
      v13 = [v12 isDevSignedForBundleID:bundleIdentifier];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10005C564;
      v14[3] = &unk_100361248;
      v15 = descriptorCopy;
      [v6 getAppMetadataForBundleIDs:v10 adamIDs:v9 ttlOption:0 environment:v13 localDataOnly:0 withCompletion:v14];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKLibrary, OS_LOG_TYPE_ERROR))
      {
        sub_1002875B8();
      }
    }
  }
}

+ (void)removeCacheDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtPath:directoryCopy error:&v10];
  v6 = v10;

  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = directoryCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully cleared GameKit cache directory: %@", buf, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_1002876F4();
    }
  }
}

- (void)clearCachesWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005C81C;
  v4[3] = &unk_100361270;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)resetEnvironmentWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[GKDataRequestManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CA74;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 resetEnvironmentWithHandler:v7];
}

- (void)pingWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)updateNotificationTopicsForcefully:(BOOL)forcefully
{
  forcefullyCopy = forcefully;
  v4 = +[GKDataRequestManager sharedManager];
  [v4 updateNotificationTopicsForceFully:forcefullyCopy];
}

- (void)refreshPreferencesWithDataType:(unsigned int)type
{
  v4 = +[GKPreferences shared];
  [v4 synchronize];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 synchronize];

  CFPreferencesSynchronize(@"com.apple.VideoConference", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.persistentconnection", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  CFPreferencesAppSynchronize(@"com.apple.logging");
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005CCC0;
  v6[3] = &unk_100361290;
  typeCopy = type;
  [GKClientProxy enumerateClientsUsingBlock:v6];
}

- (void)loadDataForURL:(id)l postBody:(id)body completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    bodyCopy = body;
    lCopy = l;
    transport = [(GKService *)self transport];
    storeBag = [transport storeBag];

    clientProxy = [(GKService *)self clientProxy];
    credential = [(GKService *)self credential];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005CE04;
    v15[3] = &unk_1003612B8;
    v16 = handlerCopy;
    [storeBag readDataForURL:lCopy postData:bodyCopy client:clientProxy credential:credential includeUDID:1 includeAPNS:1 completion:v15];
  }
}

- (void)cancelNetworkManagerTasks
{
  v2 = +[GKNetworkRequestManager commonNetworkRequestManager];
  [v2 cancelCurrentTasks];
}

- (void)checkAndUpdateArcadeSubscriberStatusWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 1177, "[GKUtilityServicePrivate checkAndUpdateArcadeSubscriberStatusWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005CFFC;
  v16[3] = &unk_100360FF0;
  v16[4] = self;
  v7 = v6;
  v17 = v7;
  [v7 perform:v16];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005D108;
  v12[3] = &unk_100361068;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = v7;
  v10 = handlerCopy;
  v11 = v7;
  [v11 notifyOnQueue:replyQueue block:v12];
}

- (void)getArcadeSubscription:(id)subscription
{
  if (subscription)
  {
    subscriptionCopy = subscription;
    v5 = +[GKPreferences shared];
    (*(subscription + 2))(subscriptionCopy, [v5 arcadeSubscriptionState]);
  }
}

- (void)callBlockWithFriendSuggester:(id)suggester
{
  suggesterCopy = suggester;
  v5 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005DB58;
  v7[3] = &unk_100361398;
  v7[4] = self;
  v8 = suggesterCopy;
  v6 = suggesterCopy;
  [v5 denyListWithCompletionHandler:v7];
}

- (void)rerankedFriendSuggestionsHandlesWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DCDC;
  v4[3] = &unk_1003613C0;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(GKUtilityServicePrivate *)selfCopy callBlockWithFriendSuggester:v4];
}

- (void)getFriendSuggestionDenyListWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E058;
  v7[3] = &unk_100361398;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 denyListWithCompletionHandler:v7];
}

- (void)denyPlayer:(id)player handler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = playerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "denyPlayer: Adding %@ to the deny list.", buf, 0xCu);
  }

  if (playerCopy)
  {
    v10 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005E414;
    v16[3] = &unk_1003613E8;
    v16[4] = self;
    v17 = playerCopy;
    v18 = handlerCopy;
    v11 = handlerCopy;
    [v10 denyPlayerID:v17 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E400;
    block[3] = &unk_100360FA0;
    v20 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(replyQueue, block);

    v12 = v20;
  }
}

- (void)denyContact:(id)contact handler:(id)handler
{
  contactCopy = contact;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = contactCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "denyContact: Adding %@ to the deny list.", buf, 0xCu);
  }

  if (contactCopy)
  {
    v10 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005E6DC;
    v16[3] = &unk_1003613E8;
    v16[4] = self;
    v17 = contactCopy;
    v18 = handlerCopy;
    v11 = handlerCopy;
    [v10 denyContactID:v17 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E6C8;
    block[3] = &unk_100360FA0;
    v20 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(replyQueue, block);

    v12 = v20;
  }
}

- (void)handleFriendSuggestionDenialWithNotificationPayload:(id)payload error:(id)error handler:(id)handler
{
  payloadCopy = payload;
  errorCopy = error;
  handlerCopy = handler;
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E8A4;
  block[3] = &unk_100360FC8;
  v17 = errorCopy;
  v18 = payloadCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = payloadCopy;
  v15 = errorCopy;
  dispatch_async(replyQueue, block);
}

- (void)clearFriendSuggestionsDenyList
{
  v2 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
  [v2 clearDenyList];
}

- (void)suggestedFriendsWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005EA44;
  v4[3] = &unk_1003614A0;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(GKUtilityServicePrivate *)selfCopy fetchFriendSuggestionsWithHandler:v4];
}

+ (id)serializeFriendSuggestions:(id)suggestions contactIDsSupportingPushFriending:(id)friending
{
  suggestionsCopy = suggestions;
  friendingCopy = friending;
  v6 = +[NSMutableDictionary dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        contactID = [v12 contactID];
        v14 = [v6 objectForKeyedSubscript:contactID];

        if (!v14)
        {
          v27[0] = @"contactID";
          v27[1] = @"supportsFriendingViaPush";
          v28[0] = contactID;
          v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [friendingCopy containsObject:contactID]);
          v28[1] = v15;
          v16 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
          v17 = [NSMutableDictionary dictionaryWithDictionary:v16];

          handle = [v12 handle];
          [v17 _gkSetIfNonNilObject:handle forKey:@"handle"];

          contactAssociationID = [v12 contactAssociationID];
          [v17 _gkSetIfNonNilObject:contactAssociationID forKey:@"caid"];

          [v6 setObject:v17 forKeyedSubscript:contactID];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }

  allValues = [v6 allValues];

  return allValues;
}

- (void)getFriendSuggestionsWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005EF10;
  v4[3] = &unk_1003614A0;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(GKUtilityServicePrivate *)selfCopy fetchFriendSuggestionsWithHandler:v4];
}

- (void)fetchFriendSuggestionsWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005F03C;
  v4[3] = &unk_1003613C0;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(GKUtilityServicePrivate *)selfCopy callBlockWithFriendSuggester:v4];
}

- (void)getGameInviteFriendSuggestionsWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005F5A4;
  v4[3] = &unk_1003613C0;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(GKUtilityServicePrivate *)selfCopy callBlockWithFriendSuggester:v4];
}

- (void)suggestedContactsListWithLimit:(id)limit handler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005F944;
  v6[3] = &unk_100361510;
  handlerCopy = handler;
  v5 = handlerCopy;
  [(GKUtilityServicePrivate *)self getFriendSuggestionsWithHandler:v6];
}

- (void)getWidgetStoreBagValueWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 1516, "[GKUtilityServicePrivate getWidgetStoreBagValueWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005FAEC;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005FCC0;
  v12[3] = &unk_100361270;
  v13 = v7;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = v7;
  [v11 notifyOnQueue:replyQueue block:v12];
}

- (void)clearEntityCacheForBagKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  clientProxy = [(GKService *)self clientProxy];
  [v9 deleteEntitiesWithBagKey:keyCopy clientProxy:clientProxy completionHandler:handlerCopy];
}

- (void)getCacheLocationsForPlayerID:(id)d completionHandler:(id)handler
{
  v24[0] = @"Insecure Cache";
  handlerCopy = handler;
  dCopy = d;
  v7 = GKInsecureCacheRoot();
  v24[1] = @"Support Data";
  v25[0] = v7;
  v8 = GKSupportDataRoot();
  v25[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  v11 = +[GKSecureFileLocator shared];
  v12 = GKGameCenterIdentifier;
  clientProxy = [(GKService *)self clientProxy];
  language = [clientProxy language];
  v15 = +[GKSecureFileLocator globalContextID];
  v16 = [v11 databaseDirectoryWithBundleID:v12 language:language contextID:v15];
  gkFileSystemRepresentation = [v16 gkFileSystemRepresentation];
  [v10 setObject:gkFileSystemRepresentation forKeyedSubscript:@"Global Cache"];

  clientProxy2 = [(GKService *)self clientProxy];
  language2 = [clientProxy2 language];
  v20 = [v11 databaseDirectoryWithBundleID:v12 language:language2 contextID:dCopy];

  gkFileSystemRepresentation2 = [v20 gkFileSystemRepresentation];
  [v10 setObject:gkFileSystemRepresentation2 forKeyedSubscript:@"Player Cache"];

  v22 = [v10 copy];
  handlerCopy[2](handlerCopy, v22);
}

- (void)getCentralCacheLocationForPlayerID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  clientProxy = [(GKService *)self clientProxy];
  language = [clientProxy language];
  v10 = +[NSFileManager defaultManager];
  v11 = [GKClientProxy gameCenterCacheDatabaseURLForPlayerID:dCopy language:language name:@"database.sqlite3" fileManager:v10];

  gkFileSystemRepresentation = [v11 gkFileSystemRepresentation];
  (*(handler + 2))(handlerCopy, gkFileSystemRepresentation);
}

- (void)resetSignInPromptsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GKUtilityServicePrivate: Resetting sign in prompt limits", v7, 2u);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"GKFullscreenSignInPresentationDataKey"];
  [v6 removeObjectForKey:@"GKSignInBannerPresentationDataKey"];
  handlerCopy[2](handlerCopy);
}

- (void)getBagDataWithHandler:(id)handler
{
  handlerCopy = handler;
  ampController = [(GKUtilityService *)self ampController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100060328;
  v7[3] = &unk_100361018;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [ampController getBagWithCompletion:v7];
}

- (void)postGamesMapEventWithGamesUserID:(id)d gameCenterUserID:(id)iD actionType:(id)type hostAppBundleId:(id)id additionalFields:(id)fields
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  idCopy = id;
  fieldsCopy = fields;
  v16 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
    v16 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = typeCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKUtilityServicePrivate: posting Games Map event with action type: %@", &v19, 0xCu);
  }

  v18 = +[GKAMPController controller];
  [v18 reportGamesMappingEventWithGamesUserId:dCopy gameCenterUserId:iDCopy actionType:typeCopy hostAppBundleId:idCopy additionalFields:fieldsCopy];
}

- (void)healthCheckImplWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_10028022C(&unk_1002C74D0, v5);
}

@end
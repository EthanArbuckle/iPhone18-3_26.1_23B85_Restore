@interface GKUtilityServicePrivate
+ (id)serializeFriendSuggestions:(id)a3 contactIDsSupportingPushFriending:(id)a4;
+ (id)sharedFriendSuggestionDenier;
+ (void)removeCacheDirectory:(id)a3;
- (void)callBlockWithFriendSuggester:(id)a3;
- (void)cancelNetworkManagerTasks;
- (void)checkAndUpdateArcadeSubscriberStatusWithHandler:(id)a3;
- (void)clearCachesWithHandler:(id)a3;
- (void)clearEntityCacheForBagKey:(id)a3 completionHandler:(id)a4;
- (void)clearFriendSuggestionsDenyList;
- (void)currentNonGameCenterForegroundGameHandler:(id)a3;
- (void)denyContact:(id)a3 handler:(id)a4;
- (void)denyPlayer:(id)a3 handler:(id)a4;
- (void)fetchFriendSuggestionsWithHandler:(id)a3;
- (void)getArcadeSubscription:(id)a3;
- (void)getBagDataWithHandler:(id)a3;
- (void)getCacheLocationsForPlayerID:(id)a3 completionHandler:(id)a4;
- (void)getCentralCacheLocationForPlayerID:(id)a3 completionHandler:(id)a4;
- (void)getCredentialInfoAndStoreBagValuesForKeys:(id)a3 handler:(id)a4;
- (void)getFriendSuggestionDenyListWithHandler:(id)a3;
- (void)getFriendSuggestionsWithHandler:(id)a3;
- (void)getGameInviteFriendSuggestionsWithHandler:(id)a3;
- (void)getHostGameWithHandler:(id)a3;
- (void)getWidgetStoreBagValueWithHandler:(id)a3;
- (void)handleFriendSuggestionDenialWithNotificationPayload:(id)a3 error:(id)a4 handler:(id)a5;
- (void)healthCheckImplWithHandler:(id)a3;
- (void)invokeASCAppLaunchTrampolineWithURL:(id)a3 handler:(id)a4;
- (void)invokeGameTrampolineWithURL:(id)a3 handler:(id)a4;
- (void)invokeGameTrampolineWithURL:(id)a3 inviterPlayerID:(id)a4 handler:(id)a5;
- (void)loadDataForURL:(id)a3 postBody:(id)a4 completionHandler:(id)a5;
- (void)notifyRemoteAlertCompletedPresentingDashboard;
- (void)openGameCenterSettings;
- (void)openSettings;
- (void)pingWithHandler:(id)a3;
- (void)postGamesMapEventWithGamesUserID:(id)a3 gameCenterUserID:(id)a4 actionType:(id)a5 hostAppBundleId:(id)a6 additionalFields:(id)a7;
- (void)refreshAppMetadataForGameDescriptor:(id)a3;
- (void)refreshPreferencesWithDataType:(unsigned int)a3;
- (void)rerankedFriendSuggestionsHandlesWithHandler:(id)a3;
- (void)resetEnvironmentWithHandler:(id)a3;
- (void)resetSignInPromptsWithCompletionHandler:(id)a3;
- (void)suggestedContactsListWithLimit:(id)a3 handler:(id)a4;
- (void)suggestedFriendsWithHandler:(id)a3;
- (void)terminate;
- (void)updateNotificationTopicsForcefully:(BOOL)a3;
- (void)willLaunchGameCenterUIForGameDescriptor:(id)a3 completionHandler:(id)a4;
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

- (void)currentNonGameCenterForegroundGameHandler:(id)a3
{
  v4 = a3;
  v6 = +[GKClientProxy nonGameCenterForegroundClient];
  v5 = [v6 currentGame];
  (*(a3 + 2))(v4, v5);
}

- (void)notifyRemoteAlertCompletedPresentingDashboard
{
  v2 = +[GKRemoteAlertLauncher shared];
  [v2 notifyDashboardDidLaunch];
}

- (void)invokeASCAppLaunchTrampolineWithURL:(id)a3 handler:(id)a4
{
  v5 = a3;
  v33 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = v5;
  v6 = [[NSURLComponents alloc] initWithURL:v5 resolvingAgainstBaseURL:0];
  v7 = [v6 queryItems];

  v8 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v45 + 1) + 8 * i);
      v15 = [v14 name];
      v16 = [v15 isEqualToString:@"appId"];

      if (v16)
      {
        v17 = [v14 value];
        v18 = v11;
        v11 = v17;
      }

      else
      {
        v19 = [v14 name];
        v20 = [v19 isEqualToString:@"bundleId"];

        if (!v20)
        {
          continue;
        }

        v21 = [v14 value];
        v18 = v10;
        v10 = v21;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v9);
LABEL_15:

  if ([GKGame isNewsApp:v10])
  {
    v22 = +[GKApplicationWorkspace defaultWorkspace];
    [v22 openNewsApp];

    v23 = [(GKService *)self clientProxy];
    v24 = [v23 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B050;
    block[3] = &unk_100360EB0;
    v25 = v33;
    v44 = v33;
    v43 = v11;
    dispatch_async(v24, block);

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
    v25 = v33;
    if (v33)
    {
      v30 = [(GKService *)self clientProxy];
      v31 = [v30 replyQueue];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10005B518;
      v35[3] = &unk_100360EB0;
      v37 = v33;
      v36 = v26;
      [v36 notifyOnQueue:v31 block:v35];
    }
  }
}

- (void)invokeGameTrampolineWithURL:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GKPlayerCredentialController sharedController];
  v9 = +[GKClientProxy gameCenterClient];
  v10 = [v8 pushCredentialForEnvironment:{objc_msgSend(v9, "environment")}];
  v11 = [v10 playerInternal];
  v12 = [v11 playerID];

  if (v12)
  {
    [(GKUtilityServicePrivate *)self invokeGameTrampolineWithURL:v6 inviterPlayerID:v12 handler:v7];
  }

  else
  {
    v13 = +[GKClientProxy gameCenterClient];
    v14 = [v13 parsedBundleIDFromPartyURL:v6];

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
        v35 = v6;
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
      v28 = [v27 openMoltresAppIfInstalled];

      if ((v28 & 1) == 0)
      {
        v29 = +[GKApplicationWorkspace defaultWorkspace];
        [v29 openGameCenterSettings];
      }
    }

    v30 = [(GKService *)self clientProxy];
    v31 = [v30 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005B8A0;
    block[3] = &unk_100360FA0;
    v33 = v7;
    dispatch_async(v31, block);
  }
}

- (void)invokeGameTrampolineWithURL:(id)a3 inviterPlayerID:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  if (v8 && v9)
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
    [v15 onGameActivityOpenedWithPartyURL:v8 creatorPlayerID:v9];

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

  v18 = [(GKService *)self clientProxy];
  v19 = [v18 replyQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005BACC;
  v22[3] = &unk_100360EB0;
  v23 = v16;
  v24 = v10;
  v20 = v16;
  v21 = v10;
  dispatch_async(v19, v22);
}

- (void)getHostGameWithHandler:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10005BC44;
  v19 = sub_10005BC54;
  v20 = 0;
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 originalBundleIdentifier];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10005BC5C;
  v12 = &unk_1003611C0;
  v7 = v6;
  v13 = v7;
  v14 = &v15;
  [GKClientProxy enumerateClientsUsingBlock:&v9];
  v8 = [v16[5] currentGame];
  v4[2](v4, v8);

  _Block_object_dispose(&v15, 8);
}

- (void)getCredentialInfoAndStoreBagValuesForKeys:(id)a3 handler:(id)a4
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
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKUtilityService: getCredentialInfoAndStoreBagValuesForKeys:", buf, 2u);
  }

  v10 = [(GKUtilityService *)self _bagValuesForKeys:v6];
  v11 = [v10 error];

  if (!v11)
  {
    v12 = +[GKDataRequestManager sharedManager];
    v13 = [v12 pushToken];
    [v10 setObject:v13 forKeyedSubscript:@"pushToken"];

    v14 = [(GKService *)self credential];
    v15 = [v14 playerInternal];
    v16 = [v15 playerID];
    [v10 setObject:v16 forKeyedSubscript:@"playerID"];

    v17 = [v14 authenticationToken];
    [v10 setObject:v17 forKeyedSubscript:@"authToken"];

    v18 = [v14 accountName];
    [v10 setObject:v18 forKeyedSubscript:@"accountName"];
  }

  if (v7)
  {
    v19 = [(GKService *)self clientProxy];
    v20 = [v19 replyQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10005BF44;
    v21[3] = &unk_100360EB0;
    v23 = v7;
    v22 = v10;
    [v22 notifyOnQueue:v20 block:v21];
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

- (void)willLaunchGameCenterUIForGameDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [(GKUtilityServicePrivate *)self refreshAppMetadataForGameDescriptor:v6];
  v7[2](v7, 0);
}

- (void)refreshAppMetadataForGameDescriptor:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 bundleIdentifier];
    if ([v5 length])
    {
      v6 = [(GKService *)GKGameServicePrivate serviceFromService:self];
      v7 = [v4 adamID];
      v8 = [v7 stringValue];

      if (v8)
      {
        v17 = v8;
        v9 = [NSArray arrayWithObjects:&v17 count:1];
        v10 = 0;
      }

      else
      {
        v16 = v5;
        v10 = [NSArray arrayWithObjects:&v16 count:1];
        v9 = 0;
      }

      v12 = +[GKDataRequestManager sharedManager];
      v13 = [v12 isDevSignedForBundleID:v5];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10005C564;
      v14[3] = &unk_100361248;
      v15 = v4;
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

+ (void)removeCacheDirectory:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v10];
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
      v12 = v3;
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

- (void)clearCachesWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005C81C;
  v4[3] = &unk_100361270;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)resetEnvironmentWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[GKDataRequestManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CA74;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 resetEnvironmentWithHandler:v7];
}

- (void)pingWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)updateNotificationTopicsForcefully:(BOOL)a3
{
  v3 = a3;
  v4 = +[GKDataRequestManager sharedManager];
  [v4 updateNotificationTopicsForceFully:v3];
}

- (void)refreshPreferencesWithDataType:(unsigned int)a3
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
  v7 = a3;
  [GKClientProxy enumerateClientsUsingBlock:v6];
}

- (void)loadDataForURL:(id)a3 postBody:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = a4;
    v10 = a3;
    v11 = [(GKService *)self transport];
    v12 = [v11 storeBag];

    v13 = [(GKService *)self clientProxy];
    v14 = [(GKService *)self credential];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005CE04;
    v15[3] = &unk_1003612B8;
    v16 = v8;
    [v12 readDataForURL:v10 postData:v9 client:v13 credential:v14 includeUDID:1 includeAPNS:1 completion:v15];
  }
}

- (void)cancelNetworkManagerTasks
{
  v2 = +[GKNetworkRequestManager commonNetworkRequestManager];
  [v2 cancelCurrentTasks];
}

- (void)checkAndUpdateArcadeSubscriberStatusWithHandler:(id)a3
{
  v4 = a3;
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
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005D108;
  v12[3] = &unk_100361068;
  v14 = self;
  v15 = v4;
  v13 = v7;
  v10 = v4;
  v11 = v7;
  [v11 notifyOnQueue:v9 block:v12];
}

- (void)getArcadeSubscription:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[GKPreferences shared];
    (*(a3 + 2))(v4, [v5 arcadeSubscriptionState]);
  }
}

- (void)callBlockWithFriendSuggester:(id)a3
{
  v4 = a3;
  v5 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005DB58;
  v7[3] = &unk_100361398;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 denyListWithCompletionHandler:v7];
}

- (void)rerankedFriendSuggestionsHandlesWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DCDC;
  v4[3] = &unk_1003613C0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(GKUtilityServicePrivate *)v5 callBlockWithFriendSuggester:v4];
}

- (void)getFriendSuggestionDenyListWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E058;
  v7[3] = &unk_100361398;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 denyListWithCompletionHandler:v7];
}

- (void)denyPlayer:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "denyPlayer: Adding %@ to the deny list.", buf, 0xCu);
  }

  if (v6)
  {
    v10 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005E414;
    v16[3] = &unk_1003613E8;
    v16[4] = self;
    v17 = v6;
    v18 = v7;
    v11 = v7;
    [v10 denyPlayerID:v17 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E400;
    block[3] = &unk_100360FA0;
    v20 = v7;
    v15 = v7;
    dispatch_async(v14, block);

    v12 = v20;
  }
}

- (void)denyContact:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "denyContact: Adding %@ to the deny list.", buf, 0xCu);
  }

  if (v6)
  {
    v10 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005E6DC;
    v16[3] = &unk_1003613E8;
    v16[4] = self;
    v17 = v6;
    v18 = v7;
    v11 = v7;
    [v10 denyContactID:v17 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E6C8;
    block[3] = &unk_100360FA0;
    v20 = v7;
    v15 = v7;
    dispatch_async(v14, block);

    v12 = v20;
  }
}

- (void)handleFriendSuggestionDenialWithNotificationPayload:(id)a3 error:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKService *)self clientProxy];
  v12 = [v11 replyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E8A4;
  block[3] = &unk_100360FC8;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  dispatch_async(v12, block);
}

- (void)clearFriendSuggestionsDenyList
{
  v2 = +[GKUtilityServicePrivate sharedFriendSuggestionDenier];
  [v2 clearDenyList];
}

- (void)suggestedFriendsWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005EA44;
  v4[3] = &unk_1003614A0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(GKUtilityServicePrivate *)v5 fetchFriendSuggestionsWithHandler:v4];
}

+ (id)serializeFriendSuggestions:(id)a3 contactIDsSupportingPushFriending:(id)a4
{
  v5 = a3;
  v22 = a4;
  v6 = +[NSMutableDictionary dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
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
        v13 = [v12 contactID];
        v14 = [v6 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v27[0] = @"contactID";
          v27[1] = @"supportsFriendingViaPush";
          v28[0] = v13;
          v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v22 containsObject:v13]);
          v28[1] = v15;
          v16 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
          v17 = [NSMutableDictionary dictionaryWithDictionary:v16];

          v18 = [v12 handle];
          [v17 _gkSetIfNonNilObject:v18 forKey:@"handle"];

          v19 = [v12 contactAssociationID];
          [v17 _gkSetIfNonNilObject:v19 forKey:@"caid"];

          [v6 setObject:v17 forKeyedSubscript:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }

  v20 = [v6 allValues];

  return v20;
}

- (void)getFriendSuggestionsWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005EF10;
  v4[3] = &unk_1003614A0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(GKUtilityServicePrivate *)v5 fetchFriendSuggestionsWithHandler:v4];
}

- (void)fetchFriendSuggestionsWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005F03C;
  v4[3] = &unk_1003613C0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(GKUtilityServicePrivate *)v5 callBlockWithFriendSuggester:v4];
}

- (void)getGameInviteFriendSuggestionsWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005F5A4;
  v4[3] = &unk_1003613C0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(GKUtilityServicePrivate *)v5 callBlockWithFriendSuggester:v4];
}

- (void)suggestedContactsListWithLimit:(id)a3 handler:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005F944;
  v6[3] = &unk_100361510;
  v7 = a4;
  v5 = v7;
  [(GKUtilityServicePrivate *)self getFriendSuggestionsWithHandler:v6];
}

- (void)getWidgetStoreBagValueWithHandler:(id)a3
{
  v4 = a3;
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
  v8 = [(GKService *)self clientProxy];
  v9 = [v8 replyQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005FCC0;
  v12[3] = &unk_100361270;
  v13 = v7;
  v14 = v4;
  v10 = v4;
  v11 = v7;
  [v11 notifyOnQueue:v9 block:v12];
}

- (void)clearEntityCacheForBagKey:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v8 = [(GKService *)self clientProxy];
  [v9 deleteEntitiesWithBagKey:v7 clientProxy:v8 completionHandler:v6];
}

- (void)getCacheLocationsForPlayerID:(id)a3 completionHandler:(id)a4
{
  v24[0] = @"Insecure Cache";
  v6 = a4;
  v23 = a3;
  v7 = GKInsecureCacheRoot();
  v24[1] = @"Support Data";
  v25[0] = v7;
  v8 = GKSupportDataRoot();
  v25[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  v11 = +[GKSecureFileLocator shared];
  v12 = GKGameCenterIdentifier;
  v13 = [(GKService *)self clientProxy];
  v14 = [v13 language];
  v15 = +[GKSecureFileLocator globalContextID];
  v16 = [v11 databaseDirectoryWithBundleID:v12 language:v14 contextID:v15];
  v17 = [v16 gkFileSystemRepresentation];
  [v10 setObject:v17 forKeyedSubscript:@"Global Cache"];

  v18 = [(GKService *)self clientProxy];
  v19 = [v18 language];
  v20 = [v11 databaseDirectoryWithBundleID:v12 language:v19 contextID:v23];

  v21 = [v20 gkFileSystemRepresentation];
  [v10 setObject:v21 forKeyedSubscript:@"Player Cache"];

  v22 = [v10 copy];
  v6[2](v6, v22);
}

- (void)getCentralCacheLocationForPlayerID:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v13 = [(GKService *)self clientProxy];
  v9 = [v13 language];
  v10 = +[NSFileManager defaultManager];
  v11 = [GKClientProxy gameCenterCacheDatabaseURLForPlayerID:v8 language:v9 name:@"database.sqlite3" fileManager:v10];

  v12 = [v11 gkFileSystemRepresentation];
  (*(a4 + 2))(v7, v12);
}

- (void)resetSignInPromptsWithCompletionHandler:(id)a3
{
  v3 = a3;
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
  v3[2](v3);
}

- (void)getBagDataWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKUtilityService *)self ampController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100060328;
  v7[3] = &unk_100361018;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getBagWithCompletion:v7];
}

- (void)postGamesMapEventWithGamesUserID:(id)a3 gameCenterUserID:(id)a4 actionType:(id)a5 hostAppBundleId:(id)a6 additionalFields:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
    v16 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKUtilityServicePrivate: posting Games Map event with action type: %@", &v19, 0xCu);
  }

  v18 = +[GKAMPController controller];
  [v18 reportGamesMappingEventWithGamesUserId:v11 gameCenterUserId:v12 actionType:v13 hostAppBundleId:v14 additionalFields:v15];
}

- (void)healthCheckImplWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_10028022C(&unk_1002C74D0, v5);
}

@end
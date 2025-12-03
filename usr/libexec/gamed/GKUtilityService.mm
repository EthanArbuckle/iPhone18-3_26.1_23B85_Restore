@interface GKUtilityService
- (BOOL)shouldUseGameControllerSPI:(id)i;
- (GKOverlayServiceUtils)overlayServiceUtils;
- (id)_bagValuesForKeys:(id)keys;
- (void)cacheImageData:(id)data inSubdirectory:(id)subdirectory withFileName:(id)name handler:(id)handler;
- (void)closeOverlay;
- (void)completeGameRecording;
- (void)completeMatchRecording:(id)recording matchType:(id)type;
- (void)deleteCachedImageDataFromSubdirectory:(id)subdirectory withFileName:(id)name handler:(id)handler;
- (void)emitMultiplayerMessage:(id)message;
- (void)getBSServiceConnectionEndpointForMachName:(id)name service:(id)service instance:(id)instance handler:(id)handler;
- (void)getStoreBagValuesForKeys:(id)keys handler:(id)handler;
- (void)handleGameControllerHomeButtonPressed;
- (void)launchApp;
- (void)launchOverlayForGameBundleId:(id)id;
- (void)launchOverlaySystemSettingsForGameBundleId:(id)id;
- (void)loadCachedImageDataFromSubdirectory:(id)subdirectory withFileName:(id)name handler:(id)handler;
- (void)openDashboardAsRemoteAlertForGame:(id)game hostPID:(int)d deeplink:(id)deeplink;
- (void)openDashboardAsRemoteAlertForGame:(id)game hostPID:(int)d deeplink:(id)deeplink launchContext:(id)context;
- (void)openHTTPsUniversalLink:(id)link;
- (void)openICloudSettings;
- (void)openSoftwareUpdateSettings;
- (void)recordActiveDevices:(id)devices;
- (void)recordGameStart;
- (void)recordMatchServer:(id)server;
- (void)recordMatchStart:(id)start minPlayers:(id)players maxPlayers:(id)maxPlayers;
- (void)recordSharePlayDevices:(id)devices;
- (void)reportLoadUrlMetricsEvent:(id)event;
- (void)reportMetricsEventWithTopic:(id)topic shouldFlush:(id)flush metricsFields:(id)fields;
- (void)reportMultiplayerActivityMetricsEvent:(id)event;
- (void)reportPerformanceMetricsEvent:(id)event;
- (void)requestImageDataForURL:(id)l subdirectory:(id)subdirectory fileName:(id)name handler:(id)handler;
- (void)viewableThresholdWithCompletion:(id)completion;
@end

@implementation GKUtilityService

- (GKOverlayServiceUtils)overlayServiceUtils
{
  overlayServiceUtils = self->_overlayServiceUtils;
  if (!overlayServiceUtils)
  {
    v4 = objc_alloc_init(GKOverlayServiceUtils);
    v5 = self->_overlayServiceUtils;
    self->_overlayServiceUtils = v4;

    overlayServiceUtils = self->_overlayServiceUtils;
  }

  return overlayServiceUtils;
}

- (void)getStoreBagValuesForKeys:(id)keys handler:(id)handler
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
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKUtilityService: getStoreBagValuesForKeys:", buf, 2u);
  }

  v10 = [(GKUtilityService *)self _bagValuesForKeys:keysCopy];
  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100057944;
    v13[3] = &unk_100360EB0;
    v15 = handlerCopy;
    v14 = v10;
    [v14 notifyOnQueue:replyQueue block:v13];
  }
}

- (id)_bagValuesForKeys:(id)keys
{
  keysCopy = keys;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 133, "[GKUtilityService _bagValuesForKeys:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100057AD8;
  v12[3] = &unk_100360F00;
  v12[4] = self;
  v13 = keysCopy;
  v7 = v6;
  v14 = v7;
  v8 = keysCopy;
  [v7 perform:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)requestImageDataForURL:(id)l subdirectory:(id)subdirectory fileName:(id)name handler:(id)handler
{
  lCopy = l;
  subdirectoryCopy = subdirectory;
  nameCopy = name;
  handlerCopy = handler;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100057E70;
  v28[3] = &unk_100360F28;
  v14 = lCopy;
  v29 = v14;
  v15 = subdirectoryCopy;
  v30 = v15;
  v16 = nameCopy;
  v31 = v16;
  selfCopy = self;
  v17 = handlerCopy;
  v33 = v17;
  v18 = objc_retainBlock(v28);
  path = [v14 path];
  v20 = GKImageCacheRoot();
  v21 = [path hasPrefix:v20];

  if (v21)
  {
    (v18[2])(v18);
  }

  else
  {
    transport = [(GKService *)self transport];
    storeBag = [transport storeBag];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100057F04;
    v24[3] = &unk_100360F50;
    v25 = v14;
    v26 = v17;
    v27 = v18;
    [v25 hasTrustedImageDomainWithStoreBag:storeBag completionHandler:v24];
  }
}

- (void)cacheImageData:(id)data inSubdirectory:(id)subdirectory withFileName:(id)name handler:(id)handler
{
  dataCopy = data;
  subdirectoryCopy = subdirectory;
  nameCopy = name;
  handlerCopy = handler;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 179, "[GKUtilityService cacheImageData:inSubdirectory:withFileName:handler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  if (subdirectoryCopy && nameCopy)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000581B0;
    v20[3] = &unk_100360F00;
    v21 = subdirectoryCopy;
    v22 = nameCopy;
    v23 = dataCopy;
    [v15 perform:v20];
  }

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100058360;
    v18[3] = &unk_100360FA0;
    v19 = handlerCopy;
    [v15 notifyOnQueue:replyQueue block:v18];
  }
}

- (void)loadCachedImageDataFromSubdirectory:(id)subdirectory withFileName:(id)name handler:(id)handler
{
  subdirectoryCopy = subdirectory;
  nameCopy = name;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 204, "[GKUtilityService loadCachedImageDataFromSubdirectory:withFileName:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  if (subdirectoryCopy && nameCopy)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100058550;
    v18[3] = &unk_100360F00;
    v19 = subdirectoryCopy;
    v20 = nameCopy;
    v21 = v12;
    [v21 perform:v18];
  }

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100058718;
    v15[3] = &unk_100360EB0;
    v17 = handlerCopy;
    v16 = v12;
    [v16 notifyOnQueue:replyQueue block:v15];
  }
}

- (void)deleteCachedImageDataFromSubdirectory:(id)subdirectory withFileName:(id)name handler:(id)handler
{
  subdirectoryCopy = subdirectory;
  nameCopy = name;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 232, "[GKUtilityService deleteCachedImageDataFromSubdirectory:withFileName:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  if (subdirectoryCopy && nameCopy)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005893C;
    v17[3] = &unk_100360FF0;
    v18 = subdirectoryCopy;
    v19 = nameCopy;
    [v12 perform:v17];
  }

  if (handlerCopy)
  {
    clientProxy = [(GKService *)self clientProxy];
    replyQueue = [clientProxy replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100058B24;
    v15[3] = &unk_100360FA0;
    v16 = handlerCopy;
    [v12 notifyOnQueue:replyQueue block:v15];
  }
}

- (void)openICloudSettings
{
  v2 = +[GKApplicationWorkspace defaultWorkspace];
  [v2 openICloudSettings];
}

- (void)openSoftwareUpdateSettings
{
  v2 = +[GKApplicationWorkspace defaultWorkspace];
  [v2 openSoftwareUpdateSettings];
}

- (void)viewableThresholdWithCompletion:(id)completion
{
  completionCopy = completion;
  clientProxy = [(GKService *)self clientProxy];
  replyQueue = [clientProxy replyQueue];

  v7 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 276, "[GKUtilityService viewableThresholdWithCompletion:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100058D80;
  v17[3] = &unk_100360FF0;
  v17[4] = self;
  v9 = v8;
  v18 = v9;
  [v9 perform:v17];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100058E8C;
  v13[3] = &unk_100361068;
  v15 = replyQueue;
  v16 = completionCopy;
  v14 = v9;
  v10 = replyQueue;
  v11 = completionCopy;
  v12 = v9;
  [v12 notifyOnQueue:v10 block:v13];
}

- (void)reportMetricsEventWithTopic:(id)topic shouldFlush:(id)flush metricsFields:(id)fields
{
  fieldsCopy = fields;
  flushCopy = flush;
  topicCopy = topic;
  clientProxy = [(GKService *)self clientProxy];
  originalBundleIdentifier = [clientProxy originalBundleIdentifier];

  v12 = [fieldsCopy objectForKeyedSubscript:@"hostApp"];
  v13 = [v12 isMemberOfClass:objc_opt_class()];

  if (v13)
  {
    v14 = [fieldsCopy objectForKeyedSubscript:@"hostApp"];

    originalBundleIdentifier = v14;
  }

  v15 = +[GKAMPController controller];
  [v15 reportMetricsEventWithTopic:topicCopy hostAppBundleId:originalBundleIdentifier shouldFlush:flushCopy metricsFields:fieldsCopy];
}

- (void)reportPerformanceMetricsEvent:(id)event
{
  eventCopy = event;
  v7 = +[GKAMPController controller];
  clientProxy = [(GKService *)self clientProxy];
  originalBundleIdentifier = [clientProxy originalBundleIdentifier];
  [v7 reportPerformanceEventWithHostAppBundleId:originalBundleIdentifier metricsFields:eventCopy];
}

- (void)reportMultiplayerActivityMetricsEvent:(id)event
{
  eventCopy = event;
  v7 = +[GKAMPController controller];
  clientProxy = [(GKService *)self clientProxy];
  originalBundleIdentifier = [clientProxy originalBundleIdentifier];
  [v7 reportMultiplayerActivityEventWithHostAppBundleId:originalBundleIdentifier metricsFields:eventCopy];
}

- (void)reportLoadUrlMetricsEvent:(id)event
{
  eventCopy = event;
  v4 = +[GKAMPController controller];
  [v4 reportLoadUrlMetricsEventWithMetricsFields:eventCopy];
}

- (void)recordMatchStart:(id)start minPlayers:(id)players maxPlayers:(id)maxPlayers
{
  startCopy = start;
  playersCopy = players;
  maxPlayersCopy = maxPlayers;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "match making recording started", v13, 2u);
  }

  v12 = +[GKMatchReporter shared];
  [v12 recordMatchStartWithType:startCopy minPlayers:playersCopy maxPlayers:maxPlayersCopy];
}

- (void)recordMatchServer:(id)server
{
  serverCopy = server;
  v4 = +[GKMatchReporter shared];
  [v4 recordMatchServerWithType:serverCopy];
}

- (void)recordActiveDevices:(id)devices
{
  devicesCopy = devices;
  v4 = +[GKMatchReporter shared];
  [v4 recordActiveDevicesWithCount:devicesCopy];
}

- (void)recordSharePlayDevices:(id)devices
{
  devicesCopy = devices;
  v4 = +[GKMatchReporter shared];
  [v4 recordSharePlayDevicesWithCount:devicesCopy];
}

- (void)completeMatchRecording:(id)recording matchType:(id)type
{
  recordingCopy = recording;
  typeCopy = type;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v13 = recordingCopy;
    v14 = 2112;
    v15 = typeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "recording completed result: %@ type: %@", buf, 0x16u);
  }

  v10 = +[GKMatchReporter shared];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100059714;
  v11[3] = &unk_100361090;
  v11[4] = self;
  [v10 recordMatchCompleteWithMatchType:typeCopy result:recordingCopy completion:v11];
}

- (void)recordGameStart
{
  v2 = +[GKMatchReporter shared];
  [v2 recordGameStart];
}

- (void)completeGameRecording
{
  v3 = +[GKMatchReporter shared];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059890;
  v4[3] = &unk_100361090;
  v4[4] = self;
  [v3 recordGameCompleteWithCompletion:v4];
}

- (void)emitMultiplayerMessage:(id)message
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000599CC;
  v4[3] = &unk_1003610B8;
  v4[4] = self;
  messageCopy = message;
  v3 = messageCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)openHTTPsUniversalLink:(id)link
{
  linkCopy = link;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = linkCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Opening universal link: %@", buf, 0xCu);
  }

  v7 = dispatch_get_global_queue(2, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059B70;
  v9[3] = &unk_1003610B8;
  v10 = linkCopy;
  selfCopy = self;
  v8 = linkCopy;
  dispatch_async(v7, v9);
}

- (void)openDashboardAsRemoteAlertForGame:(id)game hostPID:(int)d deeplink:(id)deeplink
{
  v6 = *&d;
  gameCopy = game;
  deeplinkCopy = deeplink;
  bundleIdentifier = [gameCopy bundleIdentifier];
  v10 = [bundleIdentifier isEqualToString:GKGameControllerDaemonIdentifier];

  if (v10)
  {
    v11 = &GKDashboardLaunchContextGameController;
  }

  else
  {
    bundleIdentifier2 = [gameCopy bundleIdentifier];
    v13 = [NSBundle _gkBundleIdentifierIsRelatedToContactsUI:bundleIdentifier2];

    if (v13)
    {
      v11 = &GKDashboardLaunchContextContacts;
    }

    else
    {
      bundleIdentifier3 = [gameCopy bundleIdentifier];
      v15 = [bundleIdentifier3 isEqualToString:GKAppStoreIdentifier];

      if ((v15 & 1) == 0)
      {
        bundleIdentifier4 = [gameCopy bundleIdentifier];
        v18 = [NSString stringWithFormat:@"Unknown bundleId attempting to open the dashboard. Use openDashboardAsRemoteAlertForGame:hostPID:deeplink:launchContext: instead: %@", bundleIdentifier4];
        v19 = [NSException exceptionWithName:NSInvalidArgumentException reason:v18 userInfo:0];
        v20 = v19;

        objc_exception_throw(v19);
      }

      v11 = &GKDashboardLaunchContextAppStore;
    }
  }

  v16 = *v11;
  [(GKUtilityService *)self openDashboardAsRemoteAlertForGame:gameCopy hostPID:v6 deeplink:deeplinkCopy launchContext:v16];
}

- (void)openDashboardAsRemoteAlertForGame:(id)game hostPID:(int)d deeplink:(id)deeplink launchContext:(id)context
{
  gameCopy = game;
  deeplinkCopy = deeplink;
  contextCopy = context;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    bundleIdentifier = [gameCopy bundleIdentifier];
    v19 = 138413058;
    v20 = bundleIdentifier;
    v21 = 1024;
    dCopy = d;
    v23 = 2112;
    v24 = deeplinkCopy;
    v25 = 2112;
    v26 = contextCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "RemoteAlert: openDashboardAsRemoteAlertForGame:%@\n hostPID:%d\n deeplink:%@\n launchContext:%@", &v19, 0x26u);
  }

  if ([(GKUtilityService *)self shouldUseGameControllerSPI:gameCopy])
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "RemoteAlert: redirecting to handleGameControllerHomeButtonPressed", &v19, 2u);
    }

    [(GKUtilityService *)self handleGameControllerHomeButtonPressed];
  }

  else
  {
    [GKOverlayServiceUtils showDashboardWithGame:gameCopy deepLink:deeplinkCopy launchContext:contextCopy];
  }
}

- (BOOL)shouldUseGameControllerSPI:(id)i
{
  iCopy = i;
  bundleIdentifier = [iCopy bundleIdentifier];
  if ([bundleIdentifier isEqualToString:GKGameControllerDaemonIdentifier])
  {
    v5 = 1;
  }

  else
  {
    bundleIdentifier2 = [iCopy bundleIdentifier];
    v5 = [bundleIdentifier2 isEqualToString:GKGameCenterIdentifier];
  }

  return v5;
}

- (void)handleGameControllerHomeButtonPressed
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "RemoteAlert: handleGameControllerHomeButtonPressed", buf, 2u);
  }

  v5 = +[GKClientProxy nonGameCenterForegroundClient];
  v6 = _os_feature_enabled_impl();
  v7 = os_log_GKGeneral;
  if (!v6 || v5)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "handleGameControllerHomeButtonPressed: In-game dashboard invocation.", v13, 2u);
    }

    currentGame = [v5 currentGame];
    [GKOverlayServiceUtils showDashboardWithGame:currentGame deepLink:&__NSDictionary0__struct launchContext:GKDashboardLaunchContextGameController];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "handleGameControllerHomeButtonPressed: OOG dashboard invocation - launching app.", v14, 2u);
    }

    currentGame = +[GKApplicationWorkspace defaultWorkspace];
    appLaunchURLString = [(GKUtilityService *)self appLaunchURLString];
    v11 = [NSURL URLWithString:appLaunchURLString];
    [currentGame openURL:v11];
  }
}

- (void)launchOverlayForGameBundleId:(id)id
{
  idCopy = id;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = idCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "launchOverlayForGameBundleId: %@", &v8, 0xCu);
  }

  v6 = [GKClientProxy clientForBundleID:idCopy];
  currentGame = [v6 currentGame];
  [GKOverlayServiceUtils showDashboardWithGame:currentGame deepLink:&__NSDictionary0__struct launchContext:@"gameController"];
}

- (void)launchOverlaySystemSettingsForGameBundleId:(id)id
{
  idCopy = id;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = idCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "launchOverlaySystemSettingsForGameBundleId: %@", buf, 0xCu);
  }

  v6 = [GKClientProxy clientForBundleID:idCopy];
  currentGame = [v6 currentGame];
  v9 = GKRemoteAlertDeeplinkActionKey;
  v10 = GKRemoteAlertDeeplinkActionSystemSettingsValue;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [GKOverlayServiceUtils showDashboardWithGame:currentGame deepLink:v8 launchContext:@"gameModeBanner"];
}

- (void)closeOverlay
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "closeOverlay called", v4, 2u);
  }

  +[GKOverlayServiceUtils closeDashboard];
}

- (void)launchApp
{
  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "launchApp called", v8, 2u);
  }

  v5 = +[GKApplicationWorkspace defaultWorkspace];
  appLaunchURLString = [(GKUtilityService *)self appLaunchURLString];
  v7 = [NSURL URLWithString:appLaunchURLString];
  [v5 openURL:v7];
}

- (void)getBSServiceConnectionEndpointForMachName:(id)name service:(id)service instance:(id)instance handler:(id)handler
{
  handlerCopy = handler;
  v10 = [BSServiceConnectionEndpoint endpointForSystemMachName:name service:service instance:instance];
  handlerCopy[2](handlerCopy, v10);
}

@end
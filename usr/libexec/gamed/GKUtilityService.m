@interface GKUtilityService
- (BOOL)shouldUseGameControllerSPI:(id)a3;
- (GKOverlayServiceUtils)overlayServiceUtils;
- (id)_bagValuesForKeys:(id)a3;
- (void)cacheImageData:(id)a3 inSubdirectory:(id)a4 withFileName:(id)a5 handler:(id)a6;
- (void)closeOverlay;
- (void)completeGameRecording;
- (void)completeMatchRecording:(id)a3 matchType:(id)a4;
- (void)deleteCachedImageDataFromSubdirectory:(id)a3 withFileName:(id)a4 handler:(id)a5;
- (void)emitMultiplayerMessage:(id)a3;
- (void)getBSServiceConnectionEndpointForMachName:(id)a3 service:(id)a4 instance:(id)a5 handler:(id)a6;
- (void)getStoreBagValuesForKeys:(id)a3 handler:(id)a4;
- (void)handleGameControllerHomeButtonPressed;
- (void)launchApp;
- (void)launchOverlayForGameBundleId:(id)a3;
- (void)launchOverlaySystemSettingsForGameBundleId:(id)a3;
- (void)loadCachedImageDataFromSubdirectory:(id)a3 withFileName:(id)a4 handler:(id)a5;
- (void)openDashboardAsRemoteAlertForGame:(id)a3 hostPID:(int)a4 deeplink:(id)a5;
- (void)openDashboardAsRemoteAlertForGame:(id)a3 hostPID:(int)a4 deeplink:(id)a5 launchContext:(id)a6;
- (void)openHTTPsUniversalLink:(id)a3;
- (void)openICloudSettings;
- (void)openSoftwareUpdateSettings;
- (void)recordActiveDevices:(id)a3;
- (void)recordGameStart;
- (void)recordMatchServer:(id)a3;
- (void)recordMatchStart:(id)a3 minPlayers:(id)a4 maxPlayers:(id)a5;
- (void)recordSharePlayDevices:(id)a3;
- (void)reportLoadUrlMetricsEvent:(id)a3;
- (void)reportMetricsEventWithTopic:(id)a3 shouldFlush:(id)a4 metricsFields:(id)a5;
- (void)reportMultiplayerActivityMetricsEvent:(id)a3;
- (void)reportPerformanceMetricsEvent:(id)a3;
- (void)requestImageDataForURL:(id)a3 subdirectory:(id)a4 fileName:(id)a5 handler:(id)a6;
- (void)viewableThresholdWithCompletion:(id)a3;
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

- (void)getStoreBagValuesForKeys:(id)a3 handler:(id)a4
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
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKUtilityService: getStoreBagValuesForKeys:", buf, 2u);
  }

  v10 = [(GKUtilityService *)self _bagValuesForKeys:v6];
  if (v7)
  {
    v11 = [(GKService *)self clientProxy];
    v12 = [v11 replyQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100057944;
    v13[3] = &unk_100360EB0;
    v15 = v7;
    v14 = v10;
    [v14 notifyOnQueue:v12 block:v13];
  }
}

- (id)_bagValuesForKeys:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 133, "[GKUtilityService _bagValuesForKeys:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100057AD8;
  v12[3] = &unk_100360F00;
  v12[4] = self;
  v13 = v4;
  v7 = v6;
  v14 = v7;
  v8 = v4;
  [v7 perform:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)requestImageDataForURL:(id)a3 subdirectory:(id)a4 fileName:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100057E70;
  v28[3] = &unk_100360F28;
  v14 = v10;
  v29 = v14;
  v15 = v11;
  v30 = v15;
  v16 = v12;
  v31 = v16;
  v32 = self;
  v17 = v13;
  v33 = v17;
  v18 = objc_retainBlock(v28);
  v19 = [v14 path];
  v20 = GKImageCacheRoot();
  v21 = [v19 hasPrefix:v20];

  if (v21)
  {
    (v18[2])(v18);
  }

  else
  {
    v22 = [(GKService *)self transport];
    v23 = [v22 storeBag];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100057F04;
    v24[3] = &unk_100360F50;
    v25 = v14;
    v26 = v17;
    v27 = v18;
    [v25 hasTrustedImageDomainWithStoreBag:v23 completionHandler:v24];
  }
}

- (void)cacheImageData:(id)a3 inSubdirectory:(id)a4 withFileName:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 179, "[GKUtilityService cacheImageData:inSubdirectory:withFileName:handler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  if (v11 && v12)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000581B0;
    v20[3] = &unk_100360F00;
    v21 = v11;
    v22 = v12;
    v23 = v10;
    [v15 perform:v20];
  }

  if (v13)
  {
    v16 = [(GKService *)self clientProxy];
    v17 = [v16 replyQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100058360;
    v18[3] = &unk_100360FA0;
    v19 = v13;
    [v15 notifyOnQueue:v17 block:v18];
  }
}

- (void)loadCachedImageDataFromSubdirectory:(id)a3 withFileName:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 204, "[GKUtilityService loadCachedImageDataFromSubdirectory:withFileName:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  if (v8 && v9)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100058550;
    v18[3] = &unk_100360F00;
    v19 = v8;
    v20 = v9;
    v21 = v12;
    [v21 perform:v18];
  }

  if (v10)
  {
    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100058718;
    v15[3] = &unk_100360EB0;
    v17 = v10;
    v16 = v12;
    [v16 notifyOnQueue:v14 block:v15];
  }
}

- (void)deleteCachedImageDataFromSubdirectory:(id)a3 withFileName:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKUtilityService.m", 232, "[GKUtilityService deleteCachedImageDataFromSubdirectory:withFileName:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  if (v8 && v9)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005893C;
    v17[3] = &unk_100360FF0;
    v18 = v8;
    v19 = v9;
    [v12 perform:v17];
  }

  if (v10)
  {
    v13 = [(GKService *)self clientProxy];
    v14 = [v13 replyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100058B24;
    v15[3] = &unk_100360FA0;
    v16 = v10;
    [v12 notifyOnQueue:v14 block:v15];
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

- (void)viewableThresholdWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 replyQueue];

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
  v15 = v6;
  v16 = v4;
  v14 = v9;
  v10 = v6;
  v11 = v4;
  v12 = v9;
  [v12 notifyOnQueue:v10 block:v13];
}

- (void)reportMetricsEventWithTopic:(id)a3 shouldFlush:(id)a4 metricsFields:(id)a5
{
  v16 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(GKService *)self clientProxy];
  v11 = [v10 originalBundleIdentifier];

  v12 = [v16 objectForKeyedSubscript:@"hostApp"];
  v13 = [v12 isMemberOfClass:objc_opt_class()];

  if (v13)
  {
    v14 = [v16 objectForKeyedSubscript:@"hostApp"];

    v11 = v14;
  }

  v15 = +[GKAMPController controller];
  [v15 reportMetricsEventWithTopic:v9 hostAppBundleId:v11 shouldFlush:v8 metricsFields:v16];
}

- (void)reportPerformanceMetricsEvent:(id)a3
{
  v4 = a3;
  v7 = +[GKAMPController controller];
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 originalBundleIdentifier];
  [v7 reportPerformanceEventWithHostAppBundleId:v6 metricsFields:v4];
}

- (void)reportMultiplayerActivityMetricsEvent:(id)a3
{
  v4 = a3;
  v7 = +[GKAMPController controller];
  v5 = [(GKService *)self clientProxy];
  v6 = [v5 originalBundleIdentifier];
  [v7 reportMultiplayerActivityEventWithHostAppBundleId:v6 metricsFields:v4];
}

- (void)reportLoadUrlMetricsEvent:(id)a3
{
  v3 = a3;
  v4 = +[GKAMPController controller];
  [v4 reportLoadUrlMetricsEventWithMetricsFields:v3];
}

- (void)recordMatchStart:(id)a3 minPlayers:(id)a4 maxPlayers:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
  [v12 recordMatchStartWithType:v7 minPlayers:v8 maxPlayers:v9];
}

- (void)recordMatchServer:(id)a3
{
  v3 = a3;
  v4 = +[GKMatchReporter shared];
  [v4 recordMatchServerWithType:v3];
}

- (void)recordActiveDevices:(id)a3
{
  v3 = a3;
  v4 = +[GKMatchReporter shared];
  [v4 recordActiveDevicesWithCount:v3];
}

- (void)recordSharePlayDevices:(id)a3
{
  v3 = a3;
  v4 = +[GKMatchReporter shared];
  [v4 recordSharePlayDevicesWithCount:v3];
}

- (void)completeMatchRecording:(id)a3 matchType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "recording completed result: %@ type: %@", buf, 0x16u);
  }

  v10 = +[GKMatchReporter shared];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100059714;
  v11[3] = &unk_100361090;
  v11[4] = self;
  [v10 recordMatchCompleteWithMatchType:v7 result:v6 completion:v11];
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

- (void)emitMultiplayerMessage:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000599CC;
  v4[3] = &unk_1003610B8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)openHTTPsUniversalLink:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Opening universal link: %@", buf, 0xCu);
  }

  v7 = dispatch_get_global_queue(2, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059B70;
  v9[3] = &unk_1003610B8;
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)openDashboardAsRemoteAlertForGame:(id)a3 hostPID:(int)a4 deeplink:(id)a5
{
  v6 = *&a4;
  v21 = a3;
  v8 = a5;
  v9 = [v21 bundleIdentifier];
  v10 = [v9 isEqualToString:GKGameControllerDaemonIdentifier];

  if (v10)
  {
    v11 = &GKDashboardLaunchContextGameController;
  }

  else
  {
    v12 = [v21 bundleIdentifier];
    v13 = [NSBundle _gkBundleIdentifierIsRelatedToContactsUI:v12];

    if (v13)
    {
      v11 = &GKDashboardLaunchContextContacts;
    }

    else
    {
      v14 = [v21 bundleIdentifier];
      v15 = [v14 isEqualToString:GKAppStoreIdentifier];

      if ((v15 & 1) == 0)
      {
        v17 = [v21 bundleIdentifier];
        v18 = [NSString stringWithFormat:@"Unknown bundleId attempting to open the dashboard. Use openDashboardAsRemoteAlertForGame:hostPID:deeplink:launchContext: instead: %@", v17];
        v19 = [NSException exceptionWithName:NSInvalidArgumentException reason:v18 userInfo:0];
        v20 = v19;

        objc_exception_throw(v19);
      }

      v11 = &GKDashboardLaunchContextAppStore;
    }
  }

  v16 = *v11;
  [(GKUtilityService *)self openDashboardAsRemoteAlertForGame:v21 hostPID:v6 deeplink:v8 launchContext:v16];
}

- (void)openDashboardAsRemoteAlertForGame:(id)a3 hostPID:(int)a4 deeplink:(id)a5 launchContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v10 bundleIdentifier];
    v19 = 138413058;
    v20 = v16;
    v21 = 1024;
    v22 = a4;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "RemoteAlert: openDashboardAsRemoteAlertForGame:%@\n hostPID:%d\n deeplink:%@\n launchContext:%@", &v19, 0x26u);
  }

  if ([(GKUtilityService *)self shouldUseGameControllerSPI:v10])
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
    [GKOverlayServiceUtils showDashboardWithGame:v10 deepLink:v11 launchContext:v12];
  }
}

- (BOOL)shouldUseGameControllerSPI:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:GKGameControllerDaemonIdentifier])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 bundleIdentifier];
    v5 = [v6 isEqualToString:GKGameCenterIdentifier];
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

    v9 = [v5 currentGame];
    [GKOverlayServiceUtils showDashboardWithGame:v9 deepLink:&__NSDictionary0__struct launchContext:GKDashboardLaunchContextGameController];
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

    v9 = +[GKApplicationWorkspace defaultWorkspace];
    v10 = [(GKUtilityService *)self appLaunchURLString];
    v11 = [NSURL URLWithString:v10];
    [v9 openURL:v11];
  }
}

- (void)launchOverlayForGameBundleId:(id)a3
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
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "launchOverlayForGameBundleId: %@", &v8, 0xCu);
  }

  v6 = [GKClientProxy clientForBundleID:v3];
  v7 = [v6 currentGame];
  [GKOverlayServiceUtils showDashboardWithGame:v7 deepLink:&__NSDictionary0__struct launchContext:@"gameController"];
}

- (void)launchOverlaySystemSettingsForGameBundleId:(id)a3
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
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "launchOverlaySystemSettingsForGameBundleId: %@", buf, 0xCu);
  }

  v6 = [GKClientProxy clientForBundleID:v3];
  v7 = [v6 currentGame];
  v9 = GKRemoteAlertDeeplinkActionKey;
  v10 = GKRemoteAlertDeeplinkActionSystemSettingsValue;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [GKOverlayServiceUtils showDashboardWithGame:v7 deepLink:v8 launchContext:@"gameModeBanner"];
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
  v6 = [(GKUtilityService *)self appLaunchURLString];
  v7 = [NSURL URLWithString:v6];
  [v5 openURL:v7];
}

- (void)getBSServiceConnectionEndpointForMachName:(id)a3 service:(id)a4 instance:(id)a5 handler:(id)a6
{
  v9 = a6;
  v10 = [BSServiceConnectionEndpoint endpointForSystemMachName:a3 service:a4 instance:a5];
  v9[2](v9, v10);
}

@end
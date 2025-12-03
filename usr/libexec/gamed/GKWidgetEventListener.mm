@interface GKWidgetEventListener
- (BOOL)isActionDefined:(id)defined;
- (BOOL)isKnownScheme:(id)scheme;
- (id)makeDeepLinkDictionaryFrom:(id)from;
- (void)activateListener;
- (void)eventServiceListener:(id)listener didReceiveOpenEventWithURL:(id)l;
@end

@implementation GKWidgetEventListener

- (void)activateListener
{
  v3 = [[CHSWidgetEventServiceListener alloc] initWithServiceDomain:@"com.apple.chrono.event-service.gamed" delegate:self];
  [(GKWidgetEventListener *)self setListener:v3];

  listener = [(GKWidgetEventListener *)self listener];
  [listener activate];

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Activating CHSWidgetEventServiceListener listener", v7, 2u);
  }
}

- (BOOL)isKnownScheme:(id)scheme
{
  v3 = qword_1003B94A0[0];
  schemeCopy = scheme;
  if (v3 != -1)
  {
    sub_1002968AC();
  }

  v5 = [qword_1003B9498 containsObject:schemeCopy];

  return v5;
}

- (BOOL)isActionDefined:(id)defined
{
  definedCopy = defined;
  if ([definedCopy isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentPlayer] & 1) != 0 || (objc_msgSend(definedCopy, "isEqualToString:", GKActivityFeedMarkdownURLFormulationPathComponentLeaderboard) & 1) != 0 || (objc_msgSend(definedCopy, "isEqualToString:", GKActivityFeedMarkdownURLFormulationPathComponentAchievement) & 1) != 0 || (objc_msgSend(definedCopy, "isEqualToString:", GKActivityFeedMarkdownURLFormulationPathComponentGame))
  {
    v4 = 1;
  }

  else
  {
    v4 = [definedCopy isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentDashboard];
  }

  return v4;
}

- (id)makeDeepLinkDictionaryFrom:(id)from
{
  fromCopy = from;
  host = [fromCopy host];
  v4 = host;
  if (host)
  {
    v41 = host;
    *buf = 0;
    v94 = buf;
    v95 = 0x3032000000;
    v96 = sub_1001A3E94;
    v97 = sub_1001A3EA4;
    v98 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = sub_1001A3E94;
    v91 = sub_1001A3EA4;
    v92 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = sub_1001A3E94;
    v85 = sub_1001A3EA4;
    v86 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_1001A3E94;
    v79 = sub_1001A3EA4;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = sub_1001A3E94;
    v73 = sub_1001A3EA4;
    v74 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_1001A3E94;
    v67 = sub_1001A3EA4;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_1001A3E94;
    v61 = sub_1001A3EA4;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_1001A3E94;
    v55 = sub_1001A3EA4;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_1001A3E94;
    v49 = sub_1001A3EA4;
    v50 = 0;
    queryItems = [fromCopy queryItems];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001A3EAC;
    v44[3] = &unk_10036A618;
    v44[4] = buf;
    v44[5] = &v87;
    v44[6] = &v81;
    v44[7] = &v75;
    v44[8] = &v69;
    v44[9] = &v63;
    v44[10] = &v57;
    v44[11] = &v45;
    v44[12] = &v51;
    [queryItems enumerateObjectsUsingBlock:v44];

    if ([v41 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentDashboard])
    {
      if ([v64[5] length])
      {
        v107[0] = GKRemoteAlertDeeplinkActionKey;
        v107[1] = GKRemoteAlertDeeplinkActionIdentifierKey;
        v6 = v64[5];
        if (!v6)
        {
          v6 = &stru_100374F10;
        }

        v108[0] = GKRemoteAlertDeeplinkActionActivityIdValue;
        v108[1] = v6;
        v7 = v46[5];
        if (!v7)
        {
          v7 = &stru_100374F10;
        }

        v107[2] = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
        v107[3] = GKRemoteAlertDeeplinkActionActivityTypeKey;
        v8 = v58[5];
        if (!v8)
        {
          v8 = &stru_100374F10;
        }

        v108[2] = v7;
        v108[3] = v8;
        v9 = v52[5];
        if (!v9)
        {
          v9 = &stru_100374F10;
        }

        v107[4] = GKRemoteAlertDeeplinkActionWidgetIdKey;
        v107[5] = GKRemoteAlertDeeplinkGameAdamIdKey;
        v10 = v88[5];
        if (!v10)
        {
          v10 = &stru_100374F10;
        }

        v11 = v107;
        v12 = v108;
        v108[4] = v9;
        v108[5] = v10;
        v13 = 6;
        goto LABEL_37;
      }

      v23 = v46[5];
      if (!v23)
      {
        v23 = &stru_100374F10;
      }

      v109[0] = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
      v109[1] = GKRemoteAlertDeeplinkActionWidgetIdKey;
      v24 = v52[5];
      if (!v24)
      {
        v24 = &stru_100374F10;
      }

      v110[0] = v23;
      v110[1] = v24;
      v11 = v109;
      v12 = v110;
LABEL_36:
      v13 = 2;
LABEL_37:
      v16 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:v13];
LABEL_73:
      v4 = v41;
LABEL_74:
      _Block_object_dispose(&v45, 8);

      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v57, 8);

      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v69, 8);

      _Block_object_dispose(&v75, 8);
      _Block_object_dispose(&v81, 8);

      _Block_object_dispose(&v87, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_75;
    }

    if ([v41 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentPlayer])
    {
      if ([v76[5] length])
      {
        v105[0] = GKRemoteAlertDeeplinkActionKey;
        v105[1] = GKRemoteAlertDeeplinkPlayerIdentifierKey;
        v17 = v76[5];
        v106[0] = GKRemoteAlertDeeplinkActionPlayerProfileValue;
        v106[1] = v17;
        v11 = v105;
        v12 = v106;
        goto LABEL_36;
      }

      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v32 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *v43 = 0;
        v33 = "GKWidgetEventListener: Received malformed player data";
LABEL_71:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, v33, v43, 2u);
      }
    }

    else
    {
      if ([v41 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentLeaderboard])
      {
        [*(v94 + 5) firstObject];
        v18 = v4 = v41;
        if ([v18 length] && objc_msgSend(v70[5], "length") && objc_msgSend(v76[5], "length") && objc_msgSend(v82[5], "length"))
        {
          v103[0] = GKRemoteAlertDeeplinkActionKey;
          v103[1] = GKRemoteAlertDeeplinkActionIdentifierKey;
          v19 = v82[5];
          v103[2] = GKRemoteAlertDeeplinkGameBundleIdentifierKey;
          v103[3] = GKRemoteAlertDeeplinkPlayerIdentifierKey;
          v20 = v76[5];
          v104[2] = v19;
          v104[3] = v20;
          v21 = v70[5];
          v103[4] = GKRemoteAlertDeeplinkActionNameKey;
          v103[5] = GKRemoteAlertDeeplinkGameAdamIdKey;
          v22 = v88[5];
          if (!v22)
          {
            v22 = &stru_100374F10;
          }

          v104[0] = GKRemoteAlertDeeplinkActionLeaderboardValue;
          v104[1] = v18;
          v104[4] = v21;
          v104[5] = v22;
          v16 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:6];
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v29 = GKOSLoggers();
          }

          v30 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received malformed leaderboard data", v43, 2u);
          }

          v16 = 0;
        }

        goto LABEL_74;
      }

      if ([v41 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentAchievement])
      {
        if ([v82[5] length] && objc_msgSend(v76[5], "length") && objc_msgSend(v70[5], "length"))
        {
          v102[0] = GKRemoteAlertDeeplinkActionAchievementsValue;
          v101[0] = GKRemoteAlertDeeplinkActionKey;
          v101[1] = GKRemoteAlertDeeplinkAchievementsIdsKey;
          v25 = [*(v94 + 5) componentsJoinedByString:{@", "}];
          v26 = v82[5];
          v102[1] = v25;
          v102[2] = v26;
          v101[2] = GKRemoteAlertDeeplinkGameBundleIdentifierKey;
          v101[3] = GKRemoteAlertDeeplinkPlayerIdentifierKey;
          v27 = v70[5];
          v102[3] = v76[5];
          v102[4] = v27;
          v101[4] = GKRemoteAlertDeeplinkActionNameKey;
          v101[5] = GKRemoteAlertDeeplinkGameAdamIdKey;
          v28 = v88[5];
          if (!v28)
          {
            v28 = &stru_100374F10;
          }

          v102[5] = v28;
          v16 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:6];

          v4 = v41;
          goto LABEL_74;
        }

        if (!os_log_GKGeneral)
        {
          v38 = GKOSLoggers();
        }

        v32 = os_log_GKDaemon;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_72;
        }

        *v43 = 0;
        v33 = "GKWidgetEventListener: Received malformed achievement data";
        goto LABEL_71;
      }

      if ([v41 isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentGame])
      {
        if ([v82[5] length] && objc_msgSend(v88[5], "length"))
        {
          v34 = v82[5];
          v99[0] = GKRemoteAlertDeeplinkGameBundleIdentifierKey;
          v99[1] = GKRemoteAlertDeeplinkGameAdamIdKey;
          v35 = v88[5];
          v100[0] = v34;
          v100[1] = v35;
          v36 = v46[5];
          if (!v36)
          {
            v36 = &stru_100374F10;
          }

          v99[2] = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
          v99[3] = GKRemoteAlertDeeplinkActionWidgetIdKey;
          v37 = v52[5];
          if (!v37)
          {
            v37 = &stru_100374F10;
          }

          v100[2] = v36;
          v100[3] = v37;
          v11 = v99;
          v12 = v100;
          v13 = 4;
          goto LABEL_37;
        }

        if (!os_log_GKGeneral)
        {
          v39 = GKOSLoggers();
        }

        v32 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *v43 = 0;
          v33 = "GKWidgetEventListener: Received malformed achievement data";
          goto LABEL_71;
        }
      }
    }

LABEL_72:
    v16 = 0;
    goto LABEL_73;
  }

  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Missing host from recived url", buf, 2u);
  }

  v16 = 0;
LABEL_75:

  return v16;
}

- (void)eventServiceListener:(id)listener didReceiveOpenEventWithURL:(id)l
{
  listenerCopy = listener;
  lCopy = l;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    absoluteString = [lCopy absoluteString];
    *buf = 138412290;
    v126 = absoluteString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received url %@", buf, 0xCu);
  }

  v12 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  if (v12)
  {
    if (_os_feature_enabled_impl())
    {
      scheme = [v12 scheme];
      v14 = [scheme isEqualToString:@"game-overlay-ui"];

      if (v14)
      {
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
        }

        v16 = os_log_GKDaemon;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    scheme2 = [v12 scheme];
    v18 = [scheme2 isEqualToString:@"GCActivityFeedLockup"];

    if (v18)
    {
      v19 = +[GKClientProxy gameCenterClient];
      v20 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v19 credential:0];

      host = [v12 host];
      if ([(__CFString *)host isEqualToString:GKMarkdownURLFormulationPathComponentASCLaunchTrampoline])
      {
        v22 = objc_opt_new();
        queryItems = [v12 queryItems];
        v119[0] = _NSConcreteStackBlock;
        v119[1] = 3221225472;
        v119[2] = sub_1001A4FAC;
        v119[3] = &unk_10036A640;
        v24 = v22;
        v120 = v24;
        [queryItems enumerateObjectsUsingBlock:v119];

        v104 = [(__CFString *)v24 objectForKeyedSubscript:GKActivityFeedMarkdownURLFormulationQueryAdamId];
        v102 = [(__CFString *)v24 objectForKeyedSubscript:GKActivityFeedMarkdownURLFormulationQueryBundleId];
        v25 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryWidgetId];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &stru_100374F10;
        }

        v99 = v27;

        v28 = GKMarkdownURLFormulationQueryWidgetSize;
        v29 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryWidgetSize];

        if (v29)
        {
          v30 = [(__CFString *)v24 objectForKeyedSubscript:v28];
        }

        else
        {
          v30 = &off_100382CA0;
        }

        v56 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryLocalizedName];
        v57 = v56;
        if (v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = &stru_100374F10;
        }

        v97 = v58;

        v107 = v20;
        if (v104)
        {
          v101 = listenerCopy;
          v59 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryOpenInGamesUI];
          v60 = v59;
          v61 = @"false";
          if (v59)
          {
            v61 = v59;
          }

          v62 = v61;

          v63 = [(__CFString *)v62 isEqual:@"true"];
          intValue = [v30 intValue];
          v65 = [(__CFString *)v24 objectForKeyedSubscript:GKMarkdownURLFormulationQueryTopic];
          v66 = v65;
          if (v65)
          {
            v67 = v65;
          }

          else
          {
            v67 = &stru_100374F10;
          }

          if (v63)
          {
            v68 = v104;
            v69 = v99;
            v70 = intValue;
            v71 = v97;
            [ASCAppLaunchTrampolineURL gamesURLWithAdamId:v104 bundleId:v102 widgetId:v99 widgetSize:v70 deepLinkUrl:0 localizedName:v97 sourceApplication:@"com.apple.gamecenter.widgets.extension" topic:v67];
          }

          else
          {
            v68 = v104;
            v69 = v99;
            v74 = intValue;
            v71 = v97;
            [ASCAppLaunchTrampolineURL URLWithAdamId:v104 bundleId:v102 widgetId:v99 widgetSize:v74 localizedName:v97 sourceApplication:@"com.apple.gamecenter.widgets.extension" topic:v67];
          }
          v75 = ;

          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_1001A5048;
          v113[3] = &unk_10036A668;
          v114 = v69;
          v115 = v30;
          v116 = v71;
          v117 = v68;
          v118 = v107;
          [v118 invokeASCAppLaunchTrampolineWithURL:v75 handler:v113];

          listenerCopy = v101;
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v72 = GKOSLoggers();
          }

          v73 = os_log_GKDaemon;
          v68 = 0;
          v71 = v97;
          v69 = v99;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v126 = v99;
            v127 = 2112;
            v128 = v30;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Unexpected nil value returned in adamId for widgetId: %@, size: %@", buf, 0x16u);
          }
        }

        v20 = v107;
      }

      else if ([(GKWidgetEventListener *)self isActionDefined:host])
      {
        v106 = v20;
        v100 = listenerCopy;
        v39 = [(GKWidgetEventListener *)self makeDeepLinkDictionaryFrom:v12];
        v40 = v39;
        v41 = &__NSDictionary0__struct;
        if (v39)
        {
          v41 = v39;
        }

        v24 = v41;

        v42 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkActionWidgetIdKey];
        v43 = v42;
        v44 = &stru_100374F10;
        if (v42)
        {
          v44 = v42;
        }

        v105 = v44;

        v45 = GKRemoteAlertDeeplinkActionWidgetFamilyKey;
        v46 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkActionWidgetFamilyKey];
        if (v46)
        {
          v47 = v46;
          v48 = [(__CFString *)v24 objectForKeyedSubscript:v45];
          v49 = [&off_100383320 objectForKeyedSubscript:v48];

          if (v49)
          {
            v50 = [(__CFString *)v24 objectForKeyedSubscript:v45];
            v103 = [&off_100383320 objectForKeyedSubscript:v50];
          }

          else
          {
            v103 = &off_100382CA0;
          }

          v20 = v106;
        }

        else
        {
          v103 = &off_100382CA0;
          v20 = v106;
        }

        if ([(__CFString *)host isEqualToString:GKActivityFeedMarkdownURLFormulationPathComponentGame])
        {
          v76 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkGameAdamIdKey];
          v77 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkGameBundleIdentifierKey];
          if (v76)
          {
            intValue2 = [v103 intValue];
            [ASCAppLaunchTrampolineURL URLWithAdamId:v76 bundleId:v77 widgetId:v105 widgetSize:intValue2 localizedName:&stru_100374F10 sourceApplication:@"com.apple.gamecenter.widgets.extension" topic:GKReporterCSTopic];
            v80 = v79 = v77;
            v108[0] = _NSConcreteStackBlock;
            v108[1] = 3221225472;
            v108[2] = sub_1001A5390;
            v108[3] = &unk_10036A690;
            v109 = v105;
            v110 = v103;
            v111 = v76;
            v112 = v20;
            [v112 invokeASCAppLaunchTrampolineWithURL:v80 handler:v108];

            listenerCopy = v100;
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v95 = GKOSLoggers();
            }

            v96 = os_log_GKDaemon;
            listenerCopy = v100;
            v79 = v77;
            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v126 = v105;
              v127 = 2112;
              v128 = v103;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Unexpected nil value returned in adamId for widgetId: %@, size: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v81 = GKOSLoggers();
          }

          v82 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v126 = v24;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Opening remote dashboard with deepLink %@", buf, 0xCu);
          }

          v83 = +[GKPlayerActivityItemInternal typeToConstantMapMetrics];
          v84 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkActionActivityTypeKey];
          integerValue = [v84 integerValue];

          v86 = [NSNumber numberWithInteger:integerValue];
          v87 = [v83 objectForKeyedSubscript:v86];
          v88 = v87;
          v89 = @"dashboard";
          if (v87)
          {
            v89 = v87;
          }

          v90 = v89;

          v98 = [NSMutableDictionary alloc];
          v123[0] = @"eventType";
          v123[1] = @"actionType";
          v124[0] = @"click";
          v124[1] = @"navigate";
          v124[2] = v105;
          v123[2] = @"pageType";
          v123[3] = @"widgetContext";
          v121[0] = @"widgetId";
          v121[1] = @"size";
          v122[0] = v105;
          v122[1] = v103;
          v91 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:2];
          v124[3] = v91;
          v124[4] = v105;
          v123[4] = @"widgetId";
          v123[5] = @"size";
          v124[5] = v103;
          v124[6] = @"dashboard";
          v123[6] = @"targetId";
          v123[7] = @"targetType";
          v123[8] = @"location";
          v124[7] = v90;
          v124[8] = &off_1003834C0;
          v92 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:9];

          v93 = [v98 initWithDictionary:v92];
          v94 = [(__CFString *)v24 objectForKeyedSubscript:GKRemoteAlertDeeplinkGameAdamIdKey];
          if (v94)
          {
            [v93 setObject:v94 forKeyedSubscript:@"subjectId"];
          }

          v20 = v106;
          [v106 reportMetricsEventWithTopic:GKReporterCSTopic shouldFlush:&__kCFBooleanFalse metricsFields:v93];

          v76 = +[GKGameInternal createGamedGameInternal];
          [v106 openDashboardAsRemoteAlertForGame:v76 hostPID:getpid() deeplink:v24 launchContext:GKDashboardLaunchContextWidget];
          listenerCopy = v100;
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v54 = GKOSLoggers();
        }

        v55 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v126 = host;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "GKWidgetEventListener: No action defined for %@", buf, 0xCu);
        }

        v24 = +[GKGameInternal createGamedGameInternal];
        [v20 openDashboardAsRemoteAlertForGame:v24 hostPID:getpid() deeplink:&__NSDictionary0__struct launchContext:GKDashboardLaunchContextWidget];
      }
    }

    else
    {
      scheme3 = [v12 scheme];
      v34 = [(GKWidgetEventListener *)self isKnownScheme:scheme3];

      if (v34)
      {
        if (!os_log_GKGeneral)
        {
          v35 = GKOSLoggers();
        }

        v16 = os_log_GKDaemon;
        if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

LABEL_27:
        v36 = v16;
        scheme4 = [v12 scheme];
        *buf = 138412290;
        v126 = scheme4;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received a known scheme %@ and will open the URL", buf, 0xCu);

LABEL_28:
        v38 = +[GKApplicationWorkspace defaultWorkspace];
        [v38 openURL:lCopy];
LABEL_29:

        goto LABEL_88;
      }

      if (!os_log_GKGeneral)
      {
        v51 = GKOSLoggers();
      }

      v52 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v38 = v52;
        scheme5 = [v12 scheme];
        *buf = 138412290;
        v126 = scheme5;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Received an unknown scheme %@", buf, 0xCu);

        goto LABEL_29;
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v31 = GKOSLoggers();
    }

    v32 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "GKWidgetEventListener: Unable to parse url", buf, 2u);
    }
  }

LABEL_88:
}

@end
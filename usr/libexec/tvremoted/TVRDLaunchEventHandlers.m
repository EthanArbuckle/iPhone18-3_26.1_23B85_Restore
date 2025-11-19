@interface TVRDLaunchEventHandlers
+ (id)sharedInstance;
- (void)_enableTVRemoteControlCenterModule;
- (void)_setupDistnotedHandlers;
- (void)_setupNotificationHandlers;
- (void)_setupNotifydHandlers;
- (void)setupHandlers;
@end

@implementation TVRDLaunchEventHandlers

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[TVRDLaunchEventHandlers sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __41__TVRDLaunchEventHandlers_sharedInstance__block_invoke(id a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(TVRDLaunchEventHandlers);

  _objc_release_x1();
}

- (void)setupHandlers
{
  [(TVRDLaunchEventHandlers *)self _setupNotifydHandlers];
  [(TVRDLaunchEventHandlers *)self _setupDistnotedHandlers];

  [(TVRDLaunchEventHandlers *)self _setupNotificationHandlers];
}

- (void)_setupNotificationHandlers
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up NSNotification handlers", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_enableTVRemoteControlCenterModule" name:TVRXManagedConfigManagerTVRemoteAllowedTVAdded object:0];
}

- (void)_setupDistnotedHandlers
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up com.apple.distnoted.matching handlers", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __50__TVRDLaunchEventHandlers__setupDistnotedHandlers__block_invoke;
  handler[3] = &unk_1000207A8;
  objc_copyWeak(&v6, buf);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, handler);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __50__TVRDLaunchEventHandlers__setupDistnotedHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string && !strcmp("tvremote.applicationRegistered", string))
  {
    v5 = _TVRDXPCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received an application registered LaunchEvent", buf, 2u);
    }

    v6 = xpc_dictionary_get_value(v3, "UserInfo");
    v7 = v6;
    if (!v6 || xpc_get_type(v6) != &_xpc_type_dictionary)
    {
      goto LABEL_23;
    }

    v8 = _CFXPCCreateCFObjectFromXPCObject();
    v9 = v8;
    if (!v8)
    {
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    v10 = [v8 objectForKeyedSubscript:@"bundleIDs"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      WeakRetained = _TVRDXPCLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        __50__TVRDLaunchEventHandlers__setupDistnotedHandlers__block_invoke_cold_1(WeakRetained);
      }

      goto LABEL_20;
    }

    v11 = [v9 objectForKeyedSubscript:@"isPlaceholder"];
    v12 = [v11 BOOLValue];

    if ((v12 & 1) == 0)
    {
      if ([v10 containsObject:@"com.apple.TVRemote"])
      {
        v13 = _TVRDXPCLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 0;
          v14 = "TVRemote application registered";
          v15 = &v18;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      if ([v10 containsObject:@"com.apple.Remote"])
      {
        v13 = _TVRDXPCLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 0;
          v14 = "iTunes Remote application registered";
          v15 = &v17;
          goto LABEL_18;
        }

LABEL_19:

        WeakRetained = objc_loadWeakRetained((a1 + 32));
        [WeakRetained _enableTVRemoteControlCenterModule];
LABEL_20:
      }
    }

    goto LABEL_22;
  }

LABEL_24:
}

- (void)_setupNotifydHandlers
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up com.apple.notifyd.matching handlers", buf, 2u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __48__TVRDLaunchEventHandlers__setupNotifydHandlers__block_invoke;
  handler[3] = &unk_1000207D0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
}

void __48__TVRDLaunchEventHandlers__setupNotifydHandlers__block_invoke(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    if (!strcmp("tvremote.TapToSetupUsed", string))
    {
      v12 = _TVRDXPCLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received tvremote.TapToSetupUsed LaunchEvent", v24, 2u);
      }

      v13 = CFPreferencesCopyValue(@"atvSetupCompleted", @"com.apple.Sharing", @"mobile", kCFPreferencesCurrentHost);
      if (v13)
      {
        v14 = v13;
        v15 = CFGetInt64() != 0;
        CFRelease(v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = _TVRDXPCLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 67109120;
        *&v24[4] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Value for atvSetupCompleted is %d", v24, 8u);
      }

      if (v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!strcmp("tvremote.ContinuityKeyBoardEnabled", v4))
      {
        v9 = _TVRDXPCLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          v11 = "Received tvremote.ContinuityKeyBoardEnabled LaunchEvent";
          goto LABEL_22;
        }

LABEL_23:

LABEL_37:
        [*(a1 + 32) _enableTVRemoteControlCenterModule];
        return;
      }

      if (!strcmp("tvremote.connectionRequested", v4))
      {
        v9 = _TVRDXPCLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          v11 = "Received tvremote.connectionRequested LaunchEvent";
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      if (!strcmp("tvremote.dataMigrationFinished", v4))
      {
        v18 = _TVRDXPCLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received tvremote.dataMigrationFinished LaunchEvent", v24, 2u);
        }

        v19 = +[LSApplicationWorkspace defaultWorkspace];
        v20 = [v19 applicationIsInstalled:@"com.apple.TVRemote"];

        v21 = +[LSApplicationWorkspace defaultWorkspace];
        v22 = [v21 applicationIsInstalled:@"com.apple.Remote"];

        v23 = _TVRDXPCLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 67109376;
          *&v24[4] = v20;
          *&v24[8] = 1024;
          *&v24[10] = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Value for remoteAppInstalled is %d, iTunesRemoteAppInstalled is %d", v24, 0xEu);
        }

        if ((v20 | v22))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (!strcmp("tvremote.airplayTVAdded", v4) || !strcmp("tvremote.appleTVAdded", v4))
        {
          v17 = _TVRDXPCLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 136446210;
            *&v24[4] = v4;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received %{public}s LaunchEvent", v24, 0xCu);
          }

          goto LABEL_37;
        }

        if (strcmp("tvremote.mdmProfileInstalled", v4))
        {
          return;
        }

        v5 = _TVRDXPCLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 136446210;
          *&v24[4] = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %{public}s LaunchEvent", v24, 0xCu);
        }

        v6 = +[TVRXManagedConfigManager sharedInstance];
        [v6 refreshState];

        v7 = +[TVRXManagedConfigManager sharedInstance];
        v8 = [v7 isManagedConfigProfileInstalled];

        v9 = _TVRDXPCLog();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          if (v10)
          {
            *v24 = 0;
            v11 = "MDM Profile installed with MCFeatureTVRemoteAllowedTVs";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, v24, 2u);
            goto LABEL_23;
          }

          goto LABEL_23;
        }

        if (v10)
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MDM Profile installed but did not include MCFeatureTVRemoteAllowedTVs", v24, 2u);
        }
      }
    }
  }
}

- (void)_enableTVRemoteControlCenterModule
{
  v3 = _TVRDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling TVRemote module if necessary", buf, 2u);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  if ([v4 BOOLForKey:@"AppleTVDetectionRanOnce"])
  {
    v5 = _TVRDXPCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Module already enabled once, bailing out without doing anything.", buf, 2u);
    }
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke;
    v6[3] = &unk_100020820;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestedModuleEnablement];
  v3 = _TVRDXPCLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "There is an existing request to enable TVRemote CC module in progress. Ignoring this request", buf, 2u);
    }

    goto LABEL_12;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client requested enabling TVRemote module in Control Center", buf, 2u);
  }

  if (GestaltGetDeviceClass() == 3)
  {
    v5 = [[CCSIconElementRequest alloc] initWithIntent:2 moduleIdentifier:@"com.apple.control-center.AppleTVRemoteModule" containerBundleIdentifier:@"com.apple.TVRemoteUIService" moduleSize:0];
  }

  else
  {
    if (GestaltGetDeviceClass() != 1)
    {
      return;
    }

    v5 = [[CCSIconElementRequest alloc] initWithIntent:2 controlKind:@"com.apple.TVRemoteUIService.widget.button" controlType:2 extensionBundleIdentifier:@"com.apple.TVRemoteUIService.TVRemoteWidget" containerBundleIdentifier:@"com.apple.TVRemoteUIService" size:0];
  }

  v3 = v5;
  if (v5)
  {
    [*(a1 + 32) setRequestedModuleEnablement:1];
    v6 = +[CCSControlCenterService sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57;
    v8[3] = &unk_1000207F8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v6 handleIconElementRequest:v3 completionHandler:v8];

LABEL_12:
  }
}

void __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _TVRDXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = "Successfully added TVRemote module to Control Center";
      v9 = &v13;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    v10 = [v5 code];
    v11 = _TVRDXPCLog();
    v7 = v11;
    if (v10 == 5)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "TVRemote module already exists in Control Center";
        v9 = &v12;
        goto LABEL_7;
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57_cold_1(v6, v7);
    }
  }

  [*(a1 + 32) setRequestedModuleEnablement:0];
  [*(a1 + 40) setBool:1 forKey:@"AppleTVDetectionRanOnce"];
}

void __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add TVRemote module to Control Center %{public}@", &v2, 0xCu);
}

@end
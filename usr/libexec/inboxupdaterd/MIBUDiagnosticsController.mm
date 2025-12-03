@interface MIBUDiagnosticsController
- (BOOL)terminate:(id *)terminate;
- (MIBUDiagnosticsController)initWithDelegate:(id)delegate;
- (void)diagnosticsAppDidExitWithReason:(int64_t)reason;
- (void)diagnosticsAppLaunchedWithResult:(int64_t)result;
- (void)start;
@end

@implementation MIBUDiagnosticsController

- (MIBUDiagnosticsController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = MIBUDiagnosticsController;
  v5 = [(MIBUDiagnosticsController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUDiagnosticsController *)v5 setDelegate:delegateCopy];
    v7 = +[MIBUWiFiHelper sharedInstance];
    [(MIBUDiagnosticsController *)v6 setWifiHelper:v7];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v8 = qword_1000B83C0;
    v17 = qword_1000B83C0;
    if (!qword_1000B83C0)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100018780;
      v13[3] = &unk_10009B0A8;
      v13[4] = &v14;
      sub_100018780(v13);
      v8 = v15[3];
    }

    v9 = v8;
    _Block_object_dispose(&v14, 8);
    v10 = [[v8 alloc] initWithDelegate:v6];
    [(MIBUDiagnosticsController *)v6 setDiagsLauncher:v10];
  }

  return v6;
}

- (void)start
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100017CE8;
  v27 = sub_100017CF8;
  v28 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058454();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting diagnostics controller...", buf, 2u);
  }

  diagsLauncher = [(MIBUDiagnosticsController *)selfCopy diagsLauncher];

  if (diagsLauncher)
  {
    if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 skipWiFiAssociation], v5, v6))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100058514();
      }

      v7 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping WiFi Association...", buf, 2u);
      }
    }

    else
    {
      wifiHelper = [(MIBUDiagnosticsController *)selfCopy wifiHelper];
      v9 = v24;
      obj = v24[5];
      [wifiHelper connectAndMonitor:&obj];
      objc_storeStrong(v9 + 5, obj);

      if (v24[5])
      {
        sub_10005847C();
        objc_sync_exit(selfCopy);

        selfCopy = [(MIBUDiagnosticsController *)selfCopy delegate];
        [(MIBUDiagnosticsController *)selfCopy appDidExitWithError:v24[5]];
        goto LABEL_20;
      }
    }

    v10 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100017F20;
    v19[3] = &unk_1000994A8;
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005853C();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100058564(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017DD0;
    block[3] = &unk_10009AFA0;
    block[5] = &v23;
  }

  v10[4] = selfCopy;
  dispatch_async(&_dispatch_main_q, v10);
  objc_sync_exit(selfCopy);
LABEL_20:

  _Block_object_dispose(&v23, 8);
}

- (BOOL)terminate:(id *)terminate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005859C();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Terminating diagnostics controller...", buf, 2u);
  }

  wifiHelper = [(MIBUDiagnosticsController *)selfCopy wifiHelper];
  [wifiHelper stopMonitor];

  v7 = [RBSProcessPredicate predicateMatchingBundleIdentifier:@"com.apple.Diagnostics"];
  v8 = [[RBSTerminateContext alloc] initWithExplanation:@"Terminated by inboxupdaterd"];
  v9 = [[RBSTerminateRequest alloc] initWithPredicate:v7 context:v8];
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000585B0();
  }

  v10 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = @"com.apple.Diagnostics";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Terminating app: %{public}@", buf, 0xCu);
  }

  v13 = 0;
  v11 = [v9 execute:&v13];
  if (terminate)
  {
    *terminate = v13;
  }

  objc_sync_exit(selfCopy);
  return v11;
}

- (void)diagnosticsAppLaunchedWithResult:(int64_t)result
{
  if (result == 2)
  {
    v14 = 0;
    sub_100016130(&v14, 3221225472, 0, @"Diagnostics app failed to launch!", v3, v4, v5, v6, v12);
    v10 = v14;
    goto LABEL_12;
  }

  if (result == 1)
  {
    v15 = 0;
    sub_100016130(&v15, 3221225472, 0, @"Diagnostics app launched, but unable to communicate with launcher service over XPC", v3, v4, v5, v6, v12);
    v10 = v15;
LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  if (result)
  {
    v13 = 0;
    sub_100016130(&v13, 3221225472, 0, @"Unhandled Diagnostics app launch result %ld.", v3, v4, v5, v6, result);
    v10 = v13;
    goto LABEL_12;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_1000585D8();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Diagnostics app launched successfully. Waiting for exit...", buf, 2u);
  }

  v9 = 0;
LABEL_13:
  delegate = [(MIBUDiagnosticsController *)self delegate];
  [delegate appDidLaunchWithError:v9];
}

- (void)diagnosticsAppDidExitWithReason:(int64_t)reason
{
  if (reason <= 2)
  {
    if (reason == -1)
    {
      v20 = 0;
      sub_100016130(&v20, 3221225477, 0, @"Diagnostics app exited without sending a reason", v3, v4, v5, v6, v13);
      v8 = v20;
      goto LABEL_19;
    }

    if (reason)
    {
      if (reason != 2)
      {
LABEL_16:
        v14 = 0;
        sub_100016130(&v14, 3221225477, 0, @"Unhandled Diagnostics app exit reason: %ld", v3, v4, v5, v6, reason);
        v8 = v14;
        goto LABEL_19;
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_1000585EC();
      }

      v9 = qword_1000B84A0;
      if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v11 = 0;
        goto LABEL_26;
      }

      *buf = 0;
      v10 = "Diagnostics app was exited because the session archived.";
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100058600();
      }

      v9 = qword_1000B84A0;
      if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v10 = "Diagnostics app was exited by the user.";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    goto LABEL_25;
  }

  if (reason <= 4)
  {
    if (reason == 3)
    {
      v18 = 0;
      sub_100016130(&v18, 3221225473, 0, @"Diagnostics app was exited because of a fatal AST2 error", v3, v4, v5, v6, v13);
      v8 = v18;
    }

    else
    {
      v17 = 0;
      sub_100016130(&v17, 3221225474, 0, @"Diagnostics app was exited because the network is not reachable.", v3, v4, v5, v6, v13);
      v8 = v17;
    }

    goto LABEL_19;
  }

  if (reason == 5)
  {
    v16 = 0;
    sub_100016130(&v16, 3221225475, 0, @"Diagnostics app was exited due to inactivity.", v3, v4, v5, v6, v13);
    v8 = v16;
    goto LABEL_19;
  }

  if (reason != 6)
  {
    goto LABEL_16;
  }

  v15 = 0;
  sub_100016130(&v15, 3221225476, 0, @"Diagnostics app exited due to a fatal error.", v3, v4, v5, v6, v13);
  v8 = v15;
LABEL_19:
  v11 = v8;
LABEL_26:
  delegate = [(MIBUDiagnosticsController *)self delegate];
  [delegate appDidExitWithError:v11];
}

@end
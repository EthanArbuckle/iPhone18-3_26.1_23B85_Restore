@interface CRVideoSettingsSessionController
- (BOOL)performForVehicleID:(id)a3 videoSettingsRelayUpdate:(id)a4;
- (CRSessionStoredVehicleProviding)storedVehicleProvider;
- (CRVideoSettingsSessionController)initWithSessionStatus:(id)a3 storedVehicleProvider:(id)a4;
- (void)_setupForSession:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation CRVideoSettingsSessionController

- (CRVideoSettingsSessionController)initWithSessionStatus:(id)a3 storedVehicleProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CRVideoSettingsSessionController;
  v9 = [(CRVideoSettingsSessionController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionStatus, a3);
    [v7 addSessionObserver:v10];
    objc_storeWeak(&v10->_storedVehicleProvider, v8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000B55C;
    v12[3] = &unk_1000DD580;
    v13 = v7;
    v14 = v10;
    dispatch_async(&_dispatch_main_q, v12);
  }

  return v10;
}

- (BOOL)performForVehicleID:(id)a3 videoSettingsRelayUpdate:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = [(CRVideoSettingsSessionController *)self videoSettingsRelay];

  if (!v6)
  {
    v7 = sub_100002A68(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "will not relay video diagnostics setting, not in a session", v9, 2u);
    }

    goto LABEL_6;
  }

  if (v5)
  {
    v7 = [(CRVideoSettingsSessionController *)self videoSettingsRelay];
    v5[2](v5, v7);
LABEL_6:
  }

  return v6 != 0;
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = [(CRVideoSettingsSessionController *)self videoSettingsRelay];

  if (v4)
  {
    v5 = [(CRVideoSettingsSessionController *)self videoSettingsRelay];
    [v5 invalidate];

    [(CRVideoSettingsSessionController *)self setVideoSettingsRelay:0];
  }
}

- (void)_setupForSession:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 videoPlaybackSupported];

  if (v6)
  {
    v7 = [CRVideoSettingsRelay settingsRelayForSession:v4];
    [(CRVideoSettingsSessionController *)self setVideoSettingsRelay:v7];
    v8 = [(CRVideoSettingsSessionController *)self storedVehicleProvider];
    v9 = [v8 storedVehicleForSession:v4];

    if (v9)
    {
      v10 = [v9 subtitleSettings];
      if (!v10)
      {
        v11 = sub_100002A68(6uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "using default subtitle settings", &v18, 2u);
        }

        v10 = +[CRSubtitleSettings defaultSettings];
      }

      v12 = sub_100002A68(6uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending subtitle settings: %@", &v18, 0xCu);
      }

      [v7 sendSubtitleSettings:v10];
      v13 = [v9 videoDiagnosticsEnabled];
      if (v13)
      {
        v14 = [v9 videoDiagnosticsEnabled];
        v15 = [v14 BOOLValue];
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_100002A68(6uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (v15)
        {
          v17 = @"YES";
        }

        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sending video diagnostics enabled: %@", &v18, 0xCu);
      }

      [v7 sendDiagnosticsSetting:v15];
    }

    else
    {
      v10 = sub_100002A68(6uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "no pairing for video settings", &v18, 2u);
      }
    }
  }
}

- (CRSessionStoredVehicleProviding)storedVehicleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_storedVehicleProvider);

  return WeakRetained;
}

@end
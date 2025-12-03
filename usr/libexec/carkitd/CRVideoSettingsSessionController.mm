@interface CRVideoSettingsSessionController
- (BOOL)performForVehicleID:(id)d videoSettingsRelayUpdate:(id)update;
- (CRSessionStoredVehicleProviding)storedVehicleProvider;
- (CRVideoSettingsSessionController)initWithSessionStatus:(id)status storedVehicleProvider:(id)provider;
- (void)_setupForSession:(id)session;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CRVideoSettingsSessionController

- (CRVideoSettingsSessionController)initWithSessionStatus:(id)status storedVehicleProvider:(id)provider
{
  statusCopy = status;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = CRVideoSettingsSessionController;
  v9 = [(CRVideoSettingsSessionController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionStatus, status);
    [statusCopy addSessionObserver:v10];
    objc_storeWeak(&v10->_storedVehicleProvider, providerCopy);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000B55C;
    v12[3] = &unk_1000DD580;
    v13 = statusCopy;
    v14 = v10;
    dispatch_async(&_dispatch_main_q, v12);
  }

  return v10;
}

- (BOOL)performForVehicleID:(id)d videoSettingsRelayUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  videoSettingsRelay = [(CRVideoSettingsSessionController *)self videoSettingsRelay];

  if (!videoSettingsRelay)
  {
    videoSettingsRelay2 = sub_100002A68(6uLL);
    if (os_log_type_enabled(videoSettingsRelay2, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, videoSettingsRelay2, OS_LOG_TYPE_DEFAULT, "will not relay video diagnostics setting, not in a session", v9, 2u);
    }

    goto LABEL_6;
  }

  if (updateCopy)
  {
    videoSettingsRelay2 = [(CRVideoSettingsSessionController *)self videoSettingsRelay];
    updateCopy[2](updateCopy, videoSettingsRelay2);
LABEL_6:
  }

  return videoSettingsRelay != 0;
}

- (void)sessionDidDisconnect:(id)disconnect
{
  videoSettingsRelay = [(CRVideoSettingsSessionController *)self videoSettingsRelay];

  if (videoSettingsRelay)
  {
    videoSettingsRelay2 = [(CRVideoSettingsSessionController *)self videoSettingsRelay];
    [videoSettingsRelay2 invalidate];

    [(CRVideoSettingsSessionController *)self setVideoSettingsRelay:0];
  }
}

- (void)_setupForSession:(id)session
{
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  videoPlaybackSupported = [configuration videoPlaybackSupported];

  if (videoPlaybackSupported)
  {
    v7 = [CRVideoSettingsRelay settingsRelayForSession:sessionCopy];
    [(CRVideoSettingsSessionController *)self setVideoSettingsRelay:v7];
    storedVehicleProvider = [(CRVideoSettingsSessionController *)self storedVehicleProvider];
    v9 = [storedVehicleProvider storedVehicleForSession:sessionCopy];

    if (v9)
    {
      subtitleSettings = [v9 subtitleSettings];
      if (!subtitleSettings)
      {
        v11 = sub_100002A68(6uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "using default subtitle settings", &v18, 2u);
        }

        subtitleSettings = +[CRSubtitleSettings defaultSettings];
      }

      v12 = sub_100002A68(6uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = subtitleSettings;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending subtitle settings: %@", &v18, 0xCu);
      }

      [v7 sendSubtitleSettings:subtitleSettings];
      videoDiagnosticsEnabled = [v9 videoDiagnosticsEnabled];
      if (videoDiagnosticsEnabled)
      {
        videoDiagnosticsEnabled2 = [v9 videoDiagnosticsEnabled];
        bOOLValue = [videoDiagnosticsEnabled2 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v16 = sub_100002A68(6uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (bOOLValue)
        {
          v17 = @"YES";
        }

        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sending video diagnostics enabled: %@", &v18, 0xCu);
      }

      [v7 sendDiagnosticsSetting:bOOLValue];
    }

    else
    {
      subtitleSettings = sub_100002A68(6uLL);
      if (os_log_type_enabled(subtitleSettings, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, subtitleSettings, OS_LOG_TYPE_DEFAULT, "no pairing for video settings", &v18, 2u);
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
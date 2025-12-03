@interface CRSessionSilentModeManager
- (CRSessionSilentModeManager)initWithSessionStatus:(id)status;
- (void)matchDeviceSilentModeToCarPlaySilentModeWithReason:(id)reason;
- (void)ringerSwitchDidChange;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setupObservers;
- (void)silentModeDidChangeDuringSession;
- (void)silentModePanelStateDidChange;
- (void)tearDownObservers;
@end

@implementation CRSessionSilentModeManager

- (CRSessionSilentModeManager)initWithSessionStatus:(id)status
{
  statusCopy = status;
  v11.receiver = self;
  v11.super_class = CRSessionSilentModeManager;
  v6 = [(CRSessionSilentModeManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionStatus, status);
    [(CARSessionStatus *)v7->_sessionStatus addSessionObserver:v7];
    v8 = objc_alloc_init(CRSessionSilentModeStatus);
    muteStatus = v7->_muteStatus;
    v7->_muteStatus = v8;
  }

  return v7;
}

- (void)sessionDidConnect:(id)connect
{
  getCarPlaySilentModePreference = [(CRSessionSilentModeStatus *)self->_muteStatus getCarPlaySilentModePreference];
  v5 = CarSilentModeLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"CarPlay silent mode state has not been set yet";
    if (getCarPlaySilentModePreference == 2)
    {
      v6 = @"Unmute when session starts";
    }

    if (getCarPlaySilentModePreference == 1)
    {
      v6 = @"Mute when session starts";
    }

    v7 = v6;
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session connecting, Silent Mode Status: %@", &v15, 0xCu);
  }

  isDeviceSilentModeOn = [(CRSessionSilentModeStatus *)self->_muteStatus isDeviceSilentModeOn];
  self->_deviceIsMuted = isDeviceSilentModeOn;
  self->_shouldResetToMuted = isDeviceSilentModeOn;
  self->_shouldResetMuteState = 0;
  v9 = CarSilentModeLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (getCarPlaySilentModePreference == 1)
  {
    if (v10)
    {
      if (self->_deviceIsMuted)
      {
        v13 = @"Muted, maintaining mute state";
      }

      else
      {
        v13 = @"Unmuted, attempting to mute.";
      }

      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device is %@", &v15, 0xCu);
    }

    if (!self->_deviceIsMuted)
    {
      v12 = @"Muting for CarPlay session";
      goto LABEL_23;
    }
  }

  else
  {
    if (getCarPlaySilentModePreference != 2)
    {
      if (v10)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Mirroring iPhone silent mode state", &v15, 2u);
      }

      v14 = 0;
      goto LABEL_27;
    }

    if (v10)
    {
      if (self->_deviceIsMuted)
      {
        v11 = @"Muted, attempting to unmute";
      }

      else
      {
        v11 = @"Unmuted, maintaining mute state.";
      }

      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device is %@", &v15, 0xCu);
    }

    if (self->_deviceIsMuted)
    {
      v12 = @"Unmuting for CarPlay session";
LABEL_23:
      [(CRSessionSilentModeManager *)self matchDeviceSilentModeToCarPlaySilentModeWithReason:v12];
      v14 = 1;
      self->_shouldResetMuteState = 1;
LABEL_27:
      self->_lastModeChangeByCarkitd = v14;
    }
  }

  [(CRSessionSilentModeManager *)self setupObservers];
}

- (void)sessionDidDisconnect:(id)disconnect
{
  v4 = CarSilentModeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_shouldResetMuteState)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Session disconnected, will reset mute state: %@", &v6, 0xCu);
  }

  if (self->_shouldResetMuteState)
  {
    [(CRSessionSilentModeStatus *)self->_muteStatus setDeviceSilentMode:self->_shouldResetToMuted reason:@"CarPlay session ended."];
  }

  [(CRSessionSilentModeManager *)self tearDownObservers];
}

- (void)silentModeDidChangeDuringSession
{
  isDeviceSilentModeOn = [(CRSessionSilentModeStatus *)self->_muteStatus isDeviceSilentModeOn];
  if (self->_deviceIsMuted != isDeviceSilentModeOn)
  {
    v4 = CarSilentModeLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"Unmuted";
      if (self->_deviceIsMuted)
      {
        v6 = @"Muted";
      }

      else
      {
        v6 = @"Unmuted";
      }

      if (isDeviceSilentModeOn)
      {
        v5 = @"Muted";
      }

      lastModeChangeByCarkitd = self->_lastModeChangeByCarkitd;
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      if (lastModeChangeByCarkitd)
      {
        v8 = @"CarPlay";
      }

      else
      {
        v8 = @"Other Process";
      }

      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Silent mode changed during CarPlay session. Old State: %@ New State: %@. Changed by: %@", &v10, 0x20u);
    }

    if (self->_lastModeChangeByCarkitd)
    {
      self->_shouldResetMuteState = 1;
    }

    else
    {
      self->_shouldResetToMuted = isDeviceSilentModeOn;
      self->_shouldResetMuteState = 0;
      v9 = +[NSDistributedNotificationCenter defaultCenter];
      [v9 postNotificationName:CRExternalProcessChangedSilentMode object:0 userInfo:0];
    }
  }

  self->_lastModeChangeByCarkitd = 0;
  self->_deviceIsMuted = isDeviceSilentModeOn;
}

- (void)setupObservers
{
  v3 = +[AVSystemController sharedAVSystemController];
  v8 = AVSystemController_SilentModeEnabledDidChangeNotification;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"silentModeDidChangeDuringSession" name:AVSystemController_SilentModeEnabledDidChangeNotification object:0];

  v6 = +[NSDistributedNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"ringerSwitchDidChange" name:CRDeviceRingerSwitchToggledNotification object:0 suspensionBehavior:4];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"silentModePanelStateDidChange" name:CRSilentModePanelInteraction object:0 suspensionBehavior:4];
}

- (void)tearDownObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)ringerSwitchDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C790;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)silentModePanelStateDidChange
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006C8D8;
  v2[3] = &unk_1000DDA60;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)matchDeviceSilentModeToCarPlaySilentModeWithReason:(id)reason
{
  muteStatus = self->_muteStatus;
  reasonCopy = reason;
  [(CRSessionSilentModeStatus *)self->_muteStatus setDeviceSilentMode:[(CRSessionSilentModeStatus *)muteStatus getCarPlaySilentModePreference]== 1 reason:reasonCopy];
}

@end
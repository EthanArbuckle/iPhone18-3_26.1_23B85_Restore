@interface FMDLostModeManager
+ (id)sharedInstance;
- (FMDLostModeManager)init;
- (id)initSingleton;
- (void)_loadLostModeInfo;
- (void)_storeLostModeInfo;
- (void)_updateLocationServicesState;
- (void)dealloc;
- (void)disableLostMode;
@end

@implementation FMDLostModeManager

+ (id)sharedInstance
{
  if (qword_100314500 != -1)
  {
    sub_10022637C();
  }

  v2 = qword_1003144F8;
  if (!qword_1003144F8)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMDLostModeManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1003144F8;
  }

  return v2;
}

- (FMDLostModeManager)init
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1002263D4(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v7.receiver = self;
  v7.super_class = FMDLostModeManager;
  v2 = [(FMDLostModeManager *)&v7 init];
  if (v2)
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100226418(v3);
    }

    v4 = objc_alloc_init(FMStateCapture);
    [(FMDLostModeManager *)v2 setStateCapture:v4];

    v5 = [(FMDLostModeManager *)v2 stateCapture];
    [v5 setStateCaptureBlock:&stru_1002CD800];

    [(FMDLostModeManager *)v2 _loadLostModeInfo];
    [(FMDLostModeManager *)v2 _updateLocationServicesState];
    objc_storeStrong(&qword_1003144F8, v2);
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  v4 = qword_1003144F8;
  qword_1003144F8 = 0;

  v5.receiver = self;
  v5.super_class = FMDLostModeManager;
  [(FMDLostModeManager *)&v5 dealloc];
}

- (void)_updateLocationServicesState
{
  v3 = [(FMDLostModeManager *)self enableLocationServices];
  v4 = [(FMDLostModeManager *)self locationServicesAssertion];

  if (v3)
  {
    if (!v4)
    {
      v5 = sub_100002880();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accquiring emergency location services assertion", buf, 2u);
      }

      v6 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
      v7 = [CLEmergencyEnablementAssertion newAssertionForBundle:v6 withReason:@"LostMode"];
      [(FMDLostModeManager *)self setLocationServicesAssertion:v7];
    }
  }

  else if (v4)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Releasing the emergency location services assertion", v10, 2u);
    }

    v9 = [(FMDLostModeManager *)self locationServicesAssertion];
    [v9 invalidate];

    [(FMDLostModeManager *)self setLocationServicesAssertion:0];
  }
}

- (void)_storeLostModeInfo
{
  if ([(FMDLostModeManager *)self lostModeEnabled])
  {
    v15[0] = @"lostModeEnabled";
    v3 = [NSNumber numberWithBool:[(FMDLostModeManager *)self lostModeEnabled]];
    v16[0] = v3;
    v15[1] = @"lostModeMessage";
    v4 = [(FMDLostModeManager *)self lockScreenMessage];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &stru_1002DCE08;
    }

    v16[1] = v6;
    v15[2] = @"lostModeOwnerNumber";
    v7 = [(FMDLostModeManager *)self lockScreenOwnerNumber];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1002DCE08;
    }

    v16[2] = v9;
    v15[3] = @"lostModeFacetimeCapable";
    v10 = [NSNumber numberWithBool:[(FMDLostModeManager *)self lockScreenFacetimeCapable]];
    v16[3] = v10;
    v15[4] = off_100312768;
    v11 = [NSNumber numberWithBool:[(FMDLostModeManager *)self enableLocationServices]];
    v16[4] = v11;
    v15[5] = off_100312770;
    v12 = [NSNumber numberWithBool:[(FMDLostModeManager *)self turnStatusBarIconOffAfterLostMode]];
    v16[5] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
  }

  else
  {
    v13 = 0;
  }

  [FMDPreferencesMgr setLostModeInfo:v13];
  v14 = +[FMDFMIPSharedStateManager sharedInstance];
  [v14 recalculateLostMode];
}

- (void)_loadLostModeInfo
{
  v9 = +[FMDPreferencesMgr lostModeInfo];
  v3 = [v9 objectForKeyedSubscript:@"lostModeEnabled"];
  -[FMDLostModeManager setLostModeEnabled:](self, "setLostModeEnabled:", [v3 BOOLValue]);

  v4 = [v9 objectForKeyedSubscript:@"lockScreenMessage"];
  [(FMDLostModeManager *)self setLockScreenMessage:v4];

  v5 = [v9 objectForKeyedSubscript:@"lockScreenOwnerNumber"];
  [(FMDLostModeManager *)self setLockScreenOwnerNumber:v5];

  v6 = [v9 objectForKeyedSubscript:@"lostModeFacetimeCapable"];
  -[FMDLostModeManager setLockScreenFacetimeCapable:](self, "setLockScreenFacetimeCapable:", [v6 BOOLValue]);

  v7 = [v9 objectForKeyedSubscript:off_100312768];
  -[FMDLostModeManager setEnableLocationServices:](self, "setEnableLocationServices:", [v7 BOOLValue]);

  v8 = [v9 objectForKeyedSubscript:off_100312770];
  -[FMDLostModeManager setTurnStatusBarIconOffAfterLostMode:](self, "setTurnStatusBarIconOffAfterLostMode:", [v8 BOOLValue]);
}

- (void)disableLostMode
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Lost mode is being disabled", buf, 2u);
  }

  if ([(FMDLostModeManager *)self enableLocationServices])
  {
    [(FMDLostModeManager *)self setEnableLocationServices:0];
    [(FMDLostModeManager *)self _updateLocationServicesState];
  }

  if ([(FMDLostModeManager *)self turnStatusBarIconOffAfterLostMode])
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Turning off status bar icon since it was off before the device entered lost mode", v6, 2u);
    }

    [CLLocationManager setStatusBarIconEnabled:0 forLocationEntityClass:4];
    [(FMDLostModeManager *)self setTurnStatusBarIconOffAfterLostMode:0];
  }

  [(FMDLostModeManager *)self setLostModeEnabled:0];
  [(FMDLostModeManager *)self _storeLostModeInfo];
  [(FMDLostModeManager *)self _loadLostModeInfo];
  +[FMDMessage stopAllSounds];
  dispatch_async(&_dispatch_main_q, &stru_1002CD820);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kLostModeChangedRestrictedNotification, 0, 0, 1u);
}

@end
@interface _APRSRecommendationEngine
+ (id)sharedInstance;
- (BOOL)isAppRunning:(id)running;
- (BOOL)wasAppForegrounded:(id)foregrounded;
- (_APRSRecommendationEngine)init;
- (void)handleStateTransitionForProcess:(id)process withUpdate:(id)update;
- (void)registerForTrial;
- (void)updateCurrentRecommendations;
- (void)updateTrialParameters;
@end

@implementation _APRSRecommendationEngine

- (_APRSRecommendationEngine)init
{
  v24.receiver = self;
  v24.super_class = _APRSRecommendationEngine;
  v2 = [(_APRSRecommendationEngine *)&v24 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_freezerDisabled = 0;
    v4 = os_log_create("com.apple.aprs", "appResume.RecomEngine");
    log = v3->_log;
    v3->_log = v4;

    v6 = +[_APRSFreezerRecommendation sharedInstance];
    freezerRecommender = v3->_freezerRecommender;
    v3->_freezerRecommender = v6;

    v8 = +[_APRSPrewarmRecommendation sharedInstance];
    prewarmRecommender = v3->_prewarmRecommender;
    v3->_prewarmRecommender = v8;

    [(_APRSRecommendationEngine *)v3 registerForTrial];
    [(_APRSRecommendationEngine *)v3 updateTrialParameters];
    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    byte_10020B5F0 = [v10 BOOLForKey:@"prewarmOnAppDeath"];

    v11 = +[RBSProcessStateDescriptor descriptor];
    [v11 setValues:1];
    [v11 setEndowmentNamespaces:&off_1001CADF8];
    v12 = +[NSMutableDictionary dictionary];
    foregroundedApps = v3->_foregroundedApps;
    v3->_foregroundedApps = v12;

    v14 = +[NSMutableDictionary dictionary];
    runningApps = v3->_runningApps;
    v3->_runningApps = v14;

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009362C;
    v21[3] = &unk_1001B7568;
    v22 = v11;
    v16 = v3;
    v23 = v16;
    v17 = v11;
    v18 = [RBSProcessMonitor monitorWithConfiguration:v21];
    appMonitor = v16->_appMonitor;
    v16->_appMonitor = v18;
  }

  return v3;
}

- (BOOL)wasAppForegrounded:(id)foregrounded
{
  foregroundedCopy = foregrounded;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_foregroundedApps allKeys];
  v7 = [allKeys containsObject:foregroundedCopy];

  objc_sync_exit(selfCopy);
  return v7;
}

- (BOOL)isAppRunning:(id)running
{
  runningCopy = running;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_runningApps allKeys];
  v7 = [allKeys containsObject:runningCopy];

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)handleStateTransitionForProcess:(id)process withUpdate:(id)update
{
  processCopy = process;
  updateCopy = update;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundle = [processCopy bundle];
  identifier = [bundle identifier];

  if (identifier)
  {
    state = [updateCopy state];
    isRunning = [state isRunning];

    runningApps = selfCopy->_runningApps;
    if ((isRunning & 1) == 0)
    {
      [(NSMutableDictionary *)runningApps removeObjectForKey:identifier];
      v20 = [LSApplicationProxy applicationProxyForIdentifier:identifier];
      bundleExecutable = [v20 bundleExecutable];

      if (bundleExecutable)
      {
        [(NSMutableDictionary *)selfCopy->_foregroundedApps removeObjectForKey:bundleExecutable];
      }

      if (byte_10020B5F0 == 1)
      {
        v21 = +[_APRSPrewarmInterface sharedInstance];
        v22 = [v21 prewarmLaunchAppFromBundleID:identifier];
      }

      goto LABEL_14;
    }

    [(NSMutableDictionary *)runningApps setObject:processCopy forKey:identifier];
    state2 = [updateCopy state];
    endowmentNamespaces = [state2 endowmentNamespaces];
    v16 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

    if (v16)
    {
      v17 = [LSApplicationProxy applicationProxyForIdentifier:identifier];
      bundleExecutable = [v17 bundleExecutable];

      if (bundleExecutable)
      {
        [(NSMutableDictionary *)selfCopy->_foregroundedApps setObject:processCopy forKey:bundleExecutable];
      }

      else
      {
        log = selfCopy->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_10012461C(identifier, log);
        }
      }

LABEL_14:
    }
  }

  else
  {
    v19 = selfCopy->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No bundleIdentifier was associated with the process handle, aborting state transition", v24, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

+ (id)sharedInstance
{
  if (qword_10020B600 != -1)
  {
    sub_100124694();
  }

  v3 = qword_10020B5F8;

  return v3;
}

- (void)updateCurrentRecommendations
{
  if (self->_freezerDisabled)
  {
    freezerRecommendations = &__NSArray0__struct;
  }

  else
  {
    freezerRecommendations = [(_APRSFreezerRecommendation *)self->_freezerRecommender freezerRecommendations];
  }

  freezerRecommendations = self->_freezerRecommendations;
  self->_freezerRecommendations = freezerRecommendations;

  if (self->_prewarmDisabled)
  {
    recommendations = &__NSArray0__struct;
  }

  else
  {
    recommendations = [(_APRSPrewarmRecommendation *)self->_prewarmRecommender recommendations];
  }

  prewarmRecommendations = self->_prewarmRecommendations;
  self->_prewarmRecommendations = recommendations;

  _objc_release_x1(recommendations, prewarmRecommendations);
}

- (void)registerForTrial
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  [v3 addDelegate:self];
}

- (void)updateTrialParameters
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  v4 = [v3 factorWithName:off_10020A108];
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = log;
      v16 = 67109120;
      bOOLeanValue = [v4 BOOLeanValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trial: freezerDisabled set to %d", &v16, 8u);
    }

    self->_freezerDisabled = [v4 BOOLeanValue];
  }

  else if (v6)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load freezerDisabled", &v16, 2u);
  }

  v8 = [v3 factorWithName:off_10020A110];
  v9 = self->_log;
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = v9;
      bOOLeanValue2 = [v8 BOOLeanValue];
      v16 = 67109120;
      bOOLeanValue = bOOLeanValue2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Trial: prewarmDisabled set to %d", &v16, 8u);
    }

    self->_prewarmDisabled = [v8 BOOLeanValue];
  }

  else if (v10)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load prewarmDisabled", &v16, 2u);
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    freezerDisabled = self->_freezerDisabled;
    prewarmDisabled = self->_prewarmDisabled;
    v16 = 67109376;
    bOOLeanValue = freezerDisabled;
    v18 = 1024;
    v19 = prewarmDisabled;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Freezer Disabled: %d, Prewarm Disabled: %d", &v16, 0xEu);
  }
}

@end
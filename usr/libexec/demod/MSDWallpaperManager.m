@interface MSDWallpaperManager
+ (id)sharedInstance;
- (MSDWallpaperManager)init;
- (void)_handleWallpaperConfigChange;
- (void)_resetWallpaperSettingsToFactoryDefault;
- (void)_startPosterConfigChangeMonitor;
- (void)restoreWallpaperSettingsIfNeeded;
- (void)stashWallpaperSettingsIfNeeded;
@end

@implementation MSDWallpaperManager

+ (id)sharedInstance
{
  if (qword_1001A5748 != -1)
  {
    sub_1000D1810();
  }

  v3 = qword_1001A5750;

  return v3;
}

- (MSDWallpaperManager)init
{
  v5.receiver = self;
  v5.super_class = MSDWallpaperManager;
  v2 = [(MSDWallpaperManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDWallpaperManager *)v2 setWallpaperSettingsFilePath:@"/var/mobile/Library/Application Support/ScreenSaverManager/.savedWallpaperSettings.plist"];
    [(MSDWallpaperManager *)v3 setJustBootUp:1];
    [(MSDWallpaperManager *)v3 setUseFactoryDefault:0];
  }

  return v3;
}

- (void)stashWallpaperSettingsIfNeeded
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [NSDictionary alloc];
    v7 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
    v8 = [NSURL fileURLWithPath:v7];
    v24 = 0;
    v9 = [v6 initWithContentsOfURL:v8 error:&v24];
    v10 = v24;

    v11 = sub_100063A54();
    v12 = v11;
    if (!v9)
    {
      sub_1000D196C(v11, v10);
      goto LABEL_13;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Persistent wallpaper settings loaded: %{public}@", buf, 0xCu);
    }

    v13 = [v9 objectForKey:@"UseFactoryDefault"];
    [(MSDWallpaperManager *)self setUseFactoryDefault:[v13 BOOLValue]];
  }

  else
  {
    v14 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
    v15 = [v14 stringByDeletingLastPathComponent];
    v23 = 0;
    v16 = [v3 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v23];
    v10 = v23;

    if ((v16 & 1) == 0)
    {
      sub_1000D1824(v10);
      v9 = &off_10017BFE0;
      goto LABEL_13;
    }

    v17 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
    v18 = [NSURL fileURLWithPath:v17];
    v22 = v10;
    v19 = [&off_10017BFE0 writeToURL:v18 error:&v22];
    v20 = v22;

    v21 = sub_100063A54();
    v13 = v21;
    if ((v19 & 1) == 0)
    {
      sub_1000D18CC(v21, v20);
      v9 = &off_10017BFE0;
      v10 = v20;
      goto LABEL_13;
    }

    v9 = &off_10017BFE0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = &off_10017BFE0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Persistent wallpaper settings saved: %{public}@", buf, 0xCu);
    }

    v10 = v20;
  }

  if (![(MSDWallpaperManager *)self useFactoryDefault])
  {
    [(MSDWallpaperManager *)self _startPosterConfigChangeMonitor];
  }

LABEL_13:
}

- (void)restoreWallpaperSettingsIfNeeded
{
  if ([(MSDWallpaperManager *)self useFactoryDefault])
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wallpaper settings have changed. Resetting wallpaper settings to factory default!", v4, 2u);
    }

    [(MSDWallpaperManager *)self _resetWallpaperSettingsToFactoryDefault];
  }
}

- (void)_startPosterConfigChangeMonitor
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up poster config change observer...", buf, 2u);
  }

  v4 = objc_alloc_init(PRSWallpaperLocationStateObserver);
  [v4 setLocations:12];
  [v4 setNeedsSandboxExtensions:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004396C;
  v9[3] = &unk_10016AC78;
  v9[4] = self;
  [v4 setHandler:v9];
  v5 = objc_alloc_init(PRSWallpaperObserverConfiguration);
  v6 = dispatch_get_global_queue(21, 0);
  [v5 setQueue:v6];

  [v5 setLocationStateObserver:v4];
  v7 = [[PRSWallpaperObserver alloc] initWithExplanation:@"Store Demo Mode"];
  [(MSDWallpaperManager *)self setPosterObserver:v7];

  v8 = [(MSDWallpaperManager *)self posterObserver];
  [v8 activateWithConfiguration:v5];
}

- (void)_handleWallpaperConfigChange
{
  if ([(MSDWallpaperManager *)self justBootUp])
  {
    v3 = sub_100063A54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignore first poster config change call after observer is first registered.", buf, 2u);
    }

    [(MSDWallpaperManager *)self setJustBootUp:0];
  }

  else if (![(MSDWallpaperManager *)self useFactoryDefault])
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will reset wallpaper settings to factory default next time.", v11, 2u);
    }

    v5 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
    v6 = [NSURL fileURLWithPath:v5];
    v10 = 0;
    v7 = [&off_10017C008 writeToURL:v6 error:&v10];
    v8 = v10;

    if (v7)
    {
      [(MSDWallpaperManager *)self setUseFactoryDefault:1];
      v9 = [(MSDWallpaperManager *)self posterObserver];
      [v9 invalidate];

      [(MSDWallpaperManager *)self setPosterObserver:0];
    }

    else
    {
      sub_1000D1A0C(v8);
    }
  }
}

- (void)_resetWallpaperSettingsToFactoryDefault
{
  v2 = objc_alloc_init(PRSService);
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_time(0, 3000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100043CC8;
  v7[3] = &unk_10016ACA0;
  v5 = v3;
  v8 = v5;
  [v2 deleteDataStoreWithCompletion:v7];
  if (dispatch_semaphore_wait(v5, v4))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1AB4(v6);
    }
  }
}

@end
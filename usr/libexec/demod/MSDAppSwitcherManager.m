@interface MSDAppSwitcherManager
+ (id)sharedInstance;
- (BOOL)createSwitcherModelAtPath:(id)a3;
- (BOOL)loadStashedSwitcherModelFromPath:(id)a3;
- (BOOL)stashSwitcherModelToPath:(id)a3 overwrite:(BOOL)a4;
- (MSDAppSwitcherManager)init;
- (void)dealloc;
- (void)initializeClearAppSwitcherStateForDemoMode;
@end

@implementation MSDAppSwitcherManager

+ (id)sharedInstance
{
  if (qword_1001A5718 != -1)
  {
    sub_1000CF904();
  }

  v3 = qword_1001A5720;

  return v3;
}

- (MSDAppSwitcherManager)init
{
  v6.receiver = self;
  v6.super_class = MSDAppSwitcherManager;
  v2 = [(MSDAppSwitcherManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    [(MSDAppSwitcherManager *)v2 setFileManager:v3];

    v4 = objc_alloc_init(SBSTestAutomationService);
    [(MSDAppSwitcherManager *)v2 setSbAppSwitcher:v4];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(MSDAppSwitcherManager *)self sbAppSwitcher];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = MSDAppSwitcherManager;
  [(MSDAppSwitcherManager *)&v4 dealloc];
}

- (void)initializeClearAppSwitcherStateForDemoMode
{
  v3 = [(MSDAppSwitcherManager *)self fileManager];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/Application Support/ScreenSaverManager/demoModeAppSwitcher.plist"];

  if (v4)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[MSDAppSwitcherManager initializeClearAppSwitcherStateForDemoMode]";
      v8 = 2114;
      v9 = @"/var/mobile/Library/Application Support/ScreenSaverManager/demoModeAppSwitcher.plist";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - AppSwitcher model file already exists at path %{public}@", &v6, 0x16u);
    }
  }

  else
  {

    [(MSDAppSwitcherManager *)self createSwitcherModelAtPath:@"/var/mobile/Library/Application Support/ScreenSaverManager/demoModeAppSwitcher.plist"];
  }
}

- (BOOL)loadStashedSwitcherModelFromPath:(id)a3
{
  v4 = a3;
  v5 = [(MSDAppSwitcherManager *)self fileManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [(MSDAppSwitcherManager *)self sbAppSwitcher];
    [v7 loadStashedSwitcherModelFromPath:v4];
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF918();
    }
  }

  return v6;
}

- (BOOL)stashSwitcherModelToPath:(id)a3 overwrite:(BOOL)a4
{
  v6 = a3;
  v18 = 0;
  v7 = [v6 stringByDeletingLastPathComponent];
  if (!a4)
  {
    v8 = [(MSDAppSwitcherManager *)self fileManager];
    v9 = [v8 fileExistsAtPath:v6];

    if (v9)
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[MSDAppSwitcherManager stashSwitcherModelToPath:overwrite:]";
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - AppSwitcher model file already exists at path %{public}@", buf, 0x16u);
      }

LABEL_13:

      v16 = 0;
      goto LABEL_14;
    }
  }

  v11 = [(MSDAppSwitcherManager *)self fileManager];
  v12 = [v11 fileExistsAtPath:v7 isDirectory:&v18];
  v13 = v18;

  if (!v12 || (v13 & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF990();
    }

    goto LABEL_13;
  }

  v14 = [(MSDAppSwitcherManager *)self sbAppSwitcher];
  [v14 stashSwitcherModelToPath:v6];

  v15 = [(MSDAppSwitcherManager *)self fileManager];
  LOBYTE(v14) = [v15 fileExistsAtPath:v6];

  if ((v14 & 1) == 0)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFA08();
    }

    goto LABEL_13;
  }

  v16 = 1;
LABEL_14:

  return v16;
}

- (BOOL)createSwitcherModelAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSArray array];
  v5 = [NSURL fileURLWithPath:v3];
  v11 = 0;
  v6 = [v4 writeToURL:v5 error:&v11];
  v7 = v11;

  v8 = sub_100063A54();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[MSDAppSwitcherManager createSwitcherModelAtPath:]";
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - Writing empty app switcher model to path %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000CFA80(v3, v7, v9);
  }

  return v6;
}

@end
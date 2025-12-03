@interface MSDAppSwitcherManager
+ (id)sharedInstance;
- (BOOL)createSwitcherModelAtPath:(id)path;
- (BOOL)loadStashedSwitcherModelFromPath:(id)path;
- (BOOL)stashSwitcherModelToPath:(id)path overwrite:(BOOL)overwrite;
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
  sbAppSwitcher = [(MSDAppSwitcherManager *)self sbAppSwitcher];
  [sbAppSwitcher invalidate];

  v4.receiver = self;
  v4.super_class = MSDAppSwitcherManager;
  [(MSDAppSwitcherManager *)&v4 dealloc];
}

- (void)initializeClearAppSwitcherStateForDemoMode
{
  fileManager = [(MSDAppSwitcherManager *)self fileManager];
  v4 = [fileManager fileExistsAtPath:@"/var/mobile/Library/Application Support/ScreenSaverManager/demoModeAppSwitcher.plist"];

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

- (BOOL)loadStashedSwitcherModelFromPath:(id)path
{
  pathCopy = path;
  fileManager = [(MSDAppSwitcherManager *)self fileManager];
  v6 = [fileManager fileExistsAtPath:pathCopy];

  if (v6)
  {
    sbAppSwitcher = [(MSDAppSwitcherManager *)self sbAppSwitcher];
    [sbAppSwitcher loadStashedSwitcherModelFromPath:pathCopy];
  }

  else
  {
    sbAppSwitcher = sub_100063A54();
    if (os_log_type_enabled(sbAppSwitcher, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF918();
    }
  }

  return v6;
}

- (BOOL)stashSwitcherModelToPath:(id)path overwrite:(BOOL)overwrite
{
  pathCopy = path;
  v18 = 0;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  if (!overwrite)
  {
    fileManager = [(MSDAppSwitcherManager *)self fileManager];
    v9 = [fileManager fileExistsAtPath:pathCopy];

    if (v9)
    {
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[MSDAppSwitcherManager stashSwitcherModelToPath:overwrite:]";
        v21 = 2114;
        v22 = pathCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - AppSwitcher model file already exists at path %{public}@", buf, 0x16u);
      }

LABEL_13:

      v16 = 0;
      goto LABEL_14;
    }
  }

  fileManager2 = [(MSDAppSwitcherManager *)self fileManager];
  v12 = [fileManager2 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v18];
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

  sbAppSwitcher = [(MSDAppSwitcherManager *)self sbAppSwitcher];
  [sbAppSwitcher stashSwitcherModelToPath:pathCopy];

  fileManager3 = [(MSDAppSwitcherManager *)self fileManager];
  LOBYTE(sbAppSwitcher) = [fileManager3 fileExistsAtPath:pathCopy];

  if ((sbAppSwitcher & 1) == 0)
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

- (BOOL)createSwitcherModelAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSArray array];
  v5 = [NSURL fileURLWithPath:pathCopy];
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
      v15 = pathCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - Writing empty app switcher model to path %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000CFA80(pathCopy, v7, v9);
  }

  return v6;
}

@end
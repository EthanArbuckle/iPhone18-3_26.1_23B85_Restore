@interface NRRepeatingAlertEngineItemInternalTapToRadar
- (id)nanoRegistryWatchMigrationTapToRadarQueryItems;
- (id)tapToRadarLaunchURL;
- (void)defaultButtonWasPressed;
@end

@implementation NRRepeatingAlertEngineItemInternalTapToRadar

- (id)tapToRadarLaunchURL
{
  v3 = objc_alloc_init(NSURLComponents);
  [v3 setScheme:@"tap-to-radar"];
  [v3 setHost:@"new"];
  v4 = [(NRRepeatingAlertEngineItemInternalTapToRadar *)self nanoRegistryWatchMigrationTapToRadarQueryItems];
  [v3 setQueryItems:v4];

  v5 = [v3 URL];

  return v5;
}

- (id)nanoRegistryWatchMigrationTapToRadarQueryItems
{
  v3 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"NanoRegistry"];
  v4 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:{@"watchOS", v3}];
  v14[1] = v4;
  v5 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"573726"];
  v14[2] = v5;
  v6 = [NSURLQueryItem alloc];
  v7 = [(NRRepeatingAlertEngineItemInternalTapToRadar *)self radarTitle];
  v8 = [v6 initWithName:@"Title" value:v7];
  v14[3] = v8;
  v9 = [NSURLQueryItem alloc];
  v10 = [(NRRepeatingAlertEngineItemInternalTapToRadar *)self radarDescription];
  v11 = [v9 initWithName:@"Description" value:v10];
  v14[4] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:5];

  return v12;
}

- (void)defaultButtonWasPressed
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Internal Migration Failed Alert default button pressed", v10, 2u);
    }
  }

  v6 = +[NRRepeatingAlertEngine sharedInstance];
  v7 = [(NRRepeatingAlertEngineItemInternalTapToRadar *)self alertName];
  [v6 resetStateForAlertWithName:v7];

  v8 = [(NRRepeatingAlertEngineItemInternalTapToRadar *)self tapToRadarLaunchURL];
  v9 = +[LSApplicationWorkspace defaultWorkspace];
  [v9 openURL:v8 configuration:0 completionHandler:&stru_100179728];
}

@end
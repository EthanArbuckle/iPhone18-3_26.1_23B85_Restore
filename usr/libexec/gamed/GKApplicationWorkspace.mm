@interface GKApplicationWorkspace
- (BOOL)applicationIsInstalled:(id)a3;
- (BOOL)openMoltresAppIfInstalled;
- (id)availableGameIdentifiers;
- (id)availableGamesAndIdentifiers;
- (void)openSettings;
- (void)openURL:(id)a3;
@end

@implementation GKApplicationWorkspace

- (BOOL)applicationIsInstalled:(id)a3
{
  v3 = a3;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v4 applicationIsInstalled:v3];

  return v5;
}

- (id)availableGameIdentifiers
{
  v2 = +[NSMutableArray array];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A68C4;
  v6[3] = &unk_100364360;
  v4 = v2;
  v7 = v4;
  [v3 enumerateBundlesOfType:0 block:v6];

  return v4;
}

- (id)availableGamesAndIdentifiers
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A6B1C;
  v6[3] = &unk_100364360;
  v4 = v2;
  v7 = v4;
  [v3 enumerateBundlesOfType:4 block:v6];

  return v4;
}

- (BOOL)openMoltresAppIfInstalled
{
  v2 = +[GKApplicationWorkspace defaultWorkspace];
  if ([v2 applicationIsInstalled:GKMoltresIdentifier])
  {

LABEL_4:
    v5 = +[GKApplicationWorkspace defaultWorkspace];
    v6 = [NSURL URLWithString:@"https://games.apple.com"];
    [v5 openURL:v6];

    return 1;
  }

  v3 = +[GKApplicationWorkspace defaultWorkspace];
  v4 = [v3 applicationIsInstalled:GKGamesAppIdentifier];

  if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

- (void)openSettings
{
  v3 = [NSURL URLWithString:@"prefs:root=GAMECENTER"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)openURL:(id)a3
{
  v3 = a3;
  v10 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v11 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v9 = 0;
  [v5 openSensitiveURL:v3 withOptions:v4 error:&v9];
  v6 = v9;

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028B970(v3, v6, v8);
    }
  }
}

@end
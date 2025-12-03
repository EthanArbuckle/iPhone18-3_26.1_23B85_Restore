@interface GKDaemonPreferencesSupport
- (BOOL)localPlayerIsUnderage;
- (NSString)localPlayerID;
- (id)localPlayerInternal;
- (int)localPlayerAgeCategory;
@end

@implementation GKDaemonPreferencesSupport

- (id)localPlayerInternal
{
  v2 = objc_alloc_init(GKPlayerInternalProvider);
  localPlayer = [(GKPlayerInternalProvider *)v2 localPlayer];

  return localPlayer;
}

- (NSString)localPlayerID
{
  localPlayerInternal = [(GKDaemonPreferencesSupport *)self localPlayerInternal];
  playerID = [localPlayerInternal playerID];

  return playerID;
}

- (BOOL)localPlayerIsUnderage
{
  localPlayerInternal = [(GKDaemonPreferencesSupport *)self localPlayerInternal];
  isUnderage = [localPlayerInternal isUnderage];

  return isUnderage;
}

- (int)localPlayerAgeCategory
{
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10028DB58(v2);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v4 = +[GKClientProxy gameCenterClient];
  v5 = [(GKService *)GKAccountServicePrivate serviceWithTransport:0 forClient:v4 localPlayer:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000FCEAC;
  v18[3] = &unk_100366AD8;
  v18[4] = &v23;
  v18[5] = &v19;
  [v5 localPlayerAgeCategoryWithCompletion:v18];
  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [NSNumber numberWithBool:*(v20 + 24)];
    v10 = [NSNumber numberWithInt:*(v24 + 6)];
    sub_10028DB9C(v9, v10, buf, v8);
  }

  if ((v20[3] & 1) == 0)
  {
    v11 = [NSString stringWithFormat:@"Assertion failed"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKPreferencesSupport+GKDaemonAdditions.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = lastPathComponent;
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (gotCallback)\n[%s (%s:%d)]", v11, "-[GKDaemonPreferencesSupport localPlayerAgeCategory]", [lastPathComponent UTF8String], 49);

    [NSException raise:@"GameKit Exception" format:@"%@", v15];
  }

  v16 = *(v24 + 6);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v16;
}

@end
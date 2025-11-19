@interface GKMatchmakerBulletin
+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4;
- (void)executeBulletinWithBulletinController:(id)a3;
@end

@implementation GKMatchmakerBulletin

+ (void)loadBulletinsForPushNotification:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKMatchmakerBulletin loadBulletinsForPushNotification: withHandler:", &v17, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "didReceiveMatchmakingPush: %@", &v17, 0xCu);
  }

  v11 = +[GKReporter reporter];
  [v11 reportEvent:GKReporterDomainPushCount type:GKReporterPushCountMatchmaking];

  v12 = [[NSMutableArray alloc] initWithCapacity:1];
  v13 = [v5 objectForKey:GKMatchmakerMatchRID];
  if (v13)
  {
    v14 = objc_alloc_init(GKMatchmakerBulletin);
    [(GKMatchmakerBulletin *)v14 setMatchID:v13];
    [(GKBulletin *)v14 setBulletinType:1200];
    [v12 addObject:v14];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKMatchmakerBulletin - matchmaking push missing match-rid, did not create bulletin.", &v17, 2u);
    }
  }

  if (v6)
  {
    v6[2](v6, v12);
  }
}

- (void)executeBulletinWithBulletinController:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKMatchmakerBulletin executeBulletinWithBulletinController:", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100181AD4;
  v10[3] = &unk_1003611C0;
  v10[4] = self;
  v10[5] = buf;
  [GKClientProxy enumerateClientsUsingBlock:v10];
  if ((v12[24] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(GKMatchmakerBulletin *)self matchID];
      *v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "matchmaking push:%@ for unknown rid", v15, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
}

@end
@interface GKBadgeController
+ (id)sharedController;
- (BOOL)isBadgingEnabledForBundleID:(id)a3;
- (GKBadgeController)init;
- (id)_badgeCountURL;
- (id)_dictionaryForBadgeType:(unint64_t)a3;
- (unint64_t)_badgeCountForBundleID:(id)a3 badgeType:(unint64_t)a4;
- (unint64_t)_totalBadgeCountForBundleID:(id)a3;
- (unint64_t)badgeCountForBundleID:(id)a3 badgeType:(unint64_t)a4;
- (void)badgeAllApplications;
- (void)badgeApplicationWithBundleID:(id)a3 badgeCount:(unint64_t)a4;
- (void)badgeBundleID:(id)a3 badgeCount:(unint64_t)a4;
- (void)registerBadgePermissionForBundleID:(id)a3 completionHandler:(id)a4;
- (void)setBadgeCount:(unint64_t)a3 forBundleID:(id)a4 badgeType:(unint64_t)a5;
- (void)synchronize;
- (void)unbadgeAllApplications;
@end

@implementation GKBadgeController

+ (id)sharedController
{
  if (qword_1003B9238 != -1)
  {
    sub_10028F7D0();
  }

  v3 = qword_1003B9230;

  return v3;
}

- (id)_badgeCountURL
{
  v2 = GKInsecureCacheRoot();
  v3 = [v2 stringByAppendingPathComponent:GKGameCenterIdentifier];
  v4 = [v3 stringByAppendingPathExtension:@"badgeCounts"];

  v5 = [NSURL fileURLWithPath:v4];

  return v5;
}

- (GKBadgeController)init
{
  v6.receiver = self;
  v6.super_class = GKBadgeController;
  v2 = [(GKBadgeController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.badgecontroller.syncqueue", 0);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v3;

    [(GKBadgeController *)v2 synchronize];
  }

  return v2;
}

- (void)synchronize
{
  if (self->_dirty)
  {
    v3 = ++qword_1003B9240;
    v4 = dispatch_time(0, 5000000000);
    syncQueue = self->_syncQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011EC88;
    block[3] = &unk_1003676D8;
    block[4] = self;
    block[5] = v3;
    dispatch_after(v4, syncQueue, block);
  }

  else
  {
    v6 = self->_syncQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10011EE5C;
    v7[3] = &unk_100361770;
    v7[4] = self;
    dispatch_async(v6, v7);
  }
}

- (BOOL)isBadgingEnabledForBundleID:(id)a3
{
  v3 = a3;
  v4 = +[GKPreferences shared];
  if ([v4 notificationBadgesEnabled])
  {
    v5 = [NSBundle _gkBundleWithIdentifier:v3];
    v6 = [v5 _gkIsBadgingEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)badgeApplicationWithBundleID:(id)a3 badgeCount:(unint64_t)a4
{
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "GKBadgeController: badgeApplicationWithBundleID", buf, 2u);
  }

  if ([(GKBadgeController *)self isBadgingEnabledForBundleID:v6])
  {
    [(GKBadgeController *)self badgeBundleID:v6 badgeCount:a4];
  }

  else
  {
    v9 = [NSBundle _gkBundleWithIdentifier:v6];
    v10 = [v9 _gkIsBadgingEnabled];

    if (v10)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10011F2A4;
      v16[3] = &unk_100367700;
      v16[4] = self;
      v17 = v6;
      v18 = a4;
      [(GKBadgeController *)self registerBadgePermissionForBundleID:v17 completionHandler:v16];
    }
  }

  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F358;
  block[3] = &unk_1003610B8;
  v14 = v6;
  v15 = self;
  v12 = v6;
  dispatch_async(syncQueue, block);
}

- (void)badgeBundleID:(id)a3 badgeCount:(unint64_t)a4
{
  v6 = a3;
  v7 = +[GKPreferences shared];
  v8 = [v7 notificationBadgesEnabled];

  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKBadgeController: badgeApplicationWithBundleID - Badging enabled", buf, 2u);
    }

    bzero(buf, 0x400uLL);
    if ([(GKBadgeController *)self isBadgingEnabledForBundleID:v6]&& CFStringGetCString(v6, buf, 1024, 0x8000100u))
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = [NSNumber numberWithUnsignedInteger:a4];
        v17 = 138412546;
        v18 = v6;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Setting badge count for bundleID: %@ count: %@", &v17, 0x16u);
      }

      v15 = [[UISApplicationState alloc] initWithBundleIdentifier:v6];
      v16 = [NSNumber numberWithUnsignedInteger:a4];
      [v15 setBadgeValue:v16];
    }
  }
}

- (id)_dictionaryForBadgeType:(unint64_t)a3
{
  v5 = dispatch_get_current_queue();
  v6 = v5;
  syncQueue = self->_syncQueue;
  if (v5 != syncQueue)
  {
    label = dispatch_queue_get_label(v5);
    v9 = dispatch_queue_get_label(syncQueue);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKBadgeController _dictionaryForBadgeType:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKBadgeController.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", v11, "-[GKBadgeController _dictionaryForBadgeType:]", [v13 UTF8String], 207);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = self->_badgeDictionaries[a3];

  return v15;
}

- (unint64_t)_badgeCountForBundleID:(id)a3 badgeType:(unint64_t)a4
{
  v6 = a3;
  v7 = dispatch_get_current_queue();
  v8 = v7;
  syncQueue = self->_syncQueue;
  if (v7 != syncQueue)
  {
    label = dispatch_queue_get_label(v7);
    v11 = dispatch_queue_get_label(syncQueue);
    v12 = +[NSThread callStackSymbols];
    v13 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKBadgeController _badgeCountForBundleID:badgeType:]", label, v11, v12];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKBadgeController.m"];
    v15 = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", v13, "-[GKBadgeController _badgeCountForBundleID:badgeType:]", [v15 UTF8String], 213);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  v17 = [(GKBadgeController *)self _dictionaryForBadgeType:a4];
  v18 = [v17 objectForKeyedSubscript:v6];
  v19 = [v18 unsignedIntegerValue];

  return v19;
}

- (unint64_t)badgeCountForBundleID:(id)a3 badgeType:(unint64_t)a4
{
  v6 = a3;
  v7 = dispatch_get_current_queue();
  syncQueue = self->_syncQueue;

  if (v7 == syncQueue)
  {
    label = dispatch_queue_get_label(self->_syncQueue);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the same queue(%s), would deadlock at %@", "[GKBadgeController badgeCountForBundleID:badgeType:]", label, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKBadgeController.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != _syncQueue)\n[%s (%s:%d)]", v11, "-[GKBadgeController badgeCountForBundleID:badgeType:]", [v13 UTF8String], 219);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (!v6)
  {
    v6 = GKGameCenterIdentifier;
  }

  v15 = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011FB28;
  block[3] = &unk_100367728;
  block[4] = self;
  v20 = v6;
  v21 = &v23;
  v22 = a4;
  v16 = v6;
  dispatch_sync(v15, block);
  v17 = v24[3];

  _Block_object_dispose(&v23, 8);
  return v17;
}

- (unint64_t)_totalBadgeCountForBundleID:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  v6 = v5;
  syncQueue = self->_syncQueue;
  if (v5 != syncQueue)
  {
    label = dispatch_queue_get_label(v5);
    v9 = dispatch_queue_get_label(syncQueue);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKBadgeController _totalBadgeCountForBundleID:]", label, v9, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKBadgeController.m"];
    v13 = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", v11, "-[GKBadgeController _totalBadgeCountForBundleID:]", [v13 UTF8String], 232);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = 0;
  v16 = 0;
  badgeDictionaries = self->_badgeDictionaries;
  do
  {
    v18 = [(NSMutableDictionary *)badgeDictionaries[v15] objectForKeyedSubscript:v4];
    v16 += [v18 unsignedIntegerValue];

    ++v15;
  }

  while (v15 != 4);

  return v16;
}

- (void)setBadgeCount:(unint64_t)a3 forBundleID:(id)a4 badgeType:(unint64_t)a5
{
  v8 = a4;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKBadgeController: setBadgeCount", buf, 2u);
  }

  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 2 && (+[GKPreferences shared](GKPreferences, "shared"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 multiplayerAllowedPlayerType], v11, !v12))
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "setBadgeCount: Ignoring TB and sessions badge count, multiplayer is restricted", buf, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "ignoring turn-based and sessions badge count update for %@ as multiplayer is restricted", buf, 0xCu);
    }
  }

  else
  {
    if (!v8)
    {
      v8 = GKGameCenterIdentifier;
    }

    syncQueue = self->_syncQueue;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10011FF4C;
    v21 = &unk_100367750;
    v22 = self;
    v24 = a5;
    v8 = v8;
    v23 = v8;
    v25 = a3;
    dispatch_async(syncQueue, &v18);
    [(GKBadgeController *)self synchronize:v18];
  }
}

- (void)badgeAllApplications
{
  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120068;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)unbadgeAllApplications
{
  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001202CC;
  block[3] = &unk_100361770;
  block[4] = self;
  dispatch_async(syncQueue, block);
  [(GKBadgeController *)self synchronize];
}

- (void)registerBadgePermissionForBundleID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKBadgeController: registerBadgePermissionForBundleID:", buf, 2u);
  }

  if (v6 && ([v6 isEqualToString:GKGameCenterIdentifier] & 1) == 0)
  {
    v10 = +[GKApplicationWorkspace defaultWorkspace];
    v11 = [v10 applicationProxyForBundleID:v6];
    if ([v11 isInstalled] && (objc_msgSend(v11, "isRestricted") & 1) == 0)
    {
      syncQueue = self->_syncQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001205F0;
      block[3] = &unk_100360FC8;
      block[4] = self;
      v14 = v6;
      v15 = v7;
      dispatch_async(syncQueue, block);
    }
  }
}

@end
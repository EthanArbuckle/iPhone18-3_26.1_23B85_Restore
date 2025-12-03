@interface GKBadgeController
+ (id)sharedController;
- (BOOL)isBadgingEnabledForBundleID:(id)d;
- (GKBadgeController)init;
- (id)_badgeCountURL;
- (id)_dictionaryForBadgeType:(unint64_t)type;
- (unint64_t)_badgeCountForBundleID:(id)d badgeType:(unint64_t)type;
- (unint64_t)_totalBadgeCountForBundleID:(id)d;
- (unint64_t)badgeCountForBundleID:(id)d badgeType:(unint64_t)type;
- (void)badgeAllApplications;
- (void)badgeApplicationWithBundleID:(id)d badgeCount:(unint64_t)count;
- (void)badgeBundleID:(id)d badgeCount:(unint64_t)count;
- (void)registerBadgePermissionForBundleID:(id)d completionHandler:(id)handler;
- (void)setBadgeCount:(unint64_t)count forBundleID:(id)d badgeType:(unint64_t)type;
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

- (BOOL)isBadgingEnabledForBundleID:(id)d
{
  dCopy = d;
  v4 = +[GKPreferences shared];
  if ([v4 notificationBadgesEnabled])
  {
    v5 = [NSBundle _gkBundleWithIdentifier:dCopy];
    _gkIsBadgingEnabled = [v5 _gkIsBadgingEnabled];
  }

  else
  {
    _gkIsBadgingEnabled = 0;
  }

  return _gkIsBadgingEnabled;
}

- (void)badgeApplicationWithBundleID:(id)d badgeCount:(unint64_t)count
{
  dCopy = d;
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

  if ([(GKBadgeController *)self isBadgingEnabledForBundleID:dCopy])
  {
    [(GKBadgeController *)self badgeBundleID:dCopy badgeCount:count];
  }

  else
  {
    v9 = [NSBundle _gkBundleWithIdentifier:dCopy];
    _gkIsBadgingEnabled = [v9 _gkIsBadgingEnabled];

    if (_gkIsBadgingEnabled)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10011F2A4;
      v16[3] = &unk_100367700;
      v16[4] = self;
      v17 = dCopy;
      countCopy = count;
      [(GKBadgeController *)self registerBadgePermissionForBundleID:v17 completionHandler:v16];
    }
  }

  syncQueue = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F358;
  block[3] = &unk_1003610B8;
  v14 = dCopy;
  selfCopy = self;
  v12 = dCopy;
  dispatch_async(syncQueue, block);
}

- (void)badgeBundleID:(id)d badgeCount:(unint64_t)count
{
  dCopy = d;
  v7 = +[GKPreferences shared];
  notificationBadgesEnabled = [v7 notificationBadgesEnabled];

  if (notificationBadgesEnabled)
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
    if ([(GKBadgeController *)self isBadgingEnabledForBundleID:dCopy]&& CFStringGetCString(dCopy, buf, 1024, 0x8000100u))
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = [NSNumber numberWithUnsignedInteger:count];
        v17 = 138412546;
        v18 = dCopy;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Setting badge count for bundleID: %@ count: %@", &v17, 0x16u);
      }

      v15 = [[UISApplicationState alloc] initWithBundleIdentifier:dCopy];
      v16 = [NSNumber numberWithUnsignedInteger:count];
      [v15 setBadgeValue:v16];
    }
  }
}

- (id)_dictionaryForBadgeType:(unint64_t)type
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
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", v11, "-[GKBadgeController _dictionaryForBadgeType:]", [lastPathComponent UTF8String], 207);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = self->_badgeDictionaries[type];

  return v15;
}

- (unint64_t)_badgeCountForBundleID:(id)d badgeType:(unint64_t)type
{
  dCopy = d;
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
    lastPathComponent = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", v13, "-[GKBadgeController _badgeCountForBundleID:badgeType:]", [lastPathComponent UTF8String], 213);

    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  v17 = [(GKBadgeController *)self _dictionaryForBadgeType:type];
  v18 = [v17 objectForKeyedSubscript:dCopy];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)badgeCountForBundleID:(id)d badgeType:(unint64_t)type
{
  dCopy = d;
  v7 = dispatch_get_current_queue();
  syncQueue = self->_syncQueue;

  if (v7 == syncQueue)
  {
    label = dispatch_queue_get_label(self->_syncQueue);
    v10 = +[NSThread callStackSymbols];
    v11 = [NSString stringWithFormat:@"%s invoked on the same queue(%s), would deadlock at %@", "[GKBadgeController badgeCountForBundleID:badgeType:]", label, v10];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKBadgeController.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != _syncQueue)\n[%s (%s:%d)]", v11, "-[GKBadgeController badgeCountForBundleID:badgeType:]", [lastPathComponent UTF8String], 219);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (!dCopy)
  {
    dCopy = GKGameCenterIdentifier;
  }

  v15 = self->_syncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011FB28;
  block[3] = &unk_100367728;
  block[4] = self;
  v20 = dCopy;
  v21 = &v23;
  typeCopy = type;
  v16 = dCopy;
  dispatch_sync(v15, block);
  v17 = v24[3];

  _Block_object_dispose(&v23, 8);
  return v17;
}

- (unint64_t)_totalBadgeCountForBundleID:(id)d
{
  dCopy = d;
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
    lastPathComponent = [v12 lastPathComponent];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", v11, "-[GKBadgeController _totalBadgeCountForBundleID:]", [lastPathComponent UTF8String], 232);

    [NSException raise:@"GameKit Exception" format:@"%@", v14];
  }

  v15 = 0;
  v16 = 0;
  badgeDictionaries = self->_badgeDictionaries;
  do
  {
    v18 = [(NSMutableDictionary *)badgeDictionaries[v15] objectForKeyedSubscript:dCopy];
    v16 += [v18 unsignedIntegerValue];

    ++v15;
  }

  while (v15 != 4);

  return v16;
}

- (void)setBadgeCount:(unint64_t)count forBundleID:(id)d badgeType:(unint64_t)type
{
  dCopy = d;
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

  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2 && (+[GKPreferences shared](GKPreferences, "shared"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 multiplayerAllowedPlayerType], v11, !v12))
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
      v27 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "ignoring turn-based and sessions badge count update for %@ as multiplayer is restricted", buf, 0xCu);
    }
  }

  else
  {
    if (!dCopy)
    {
      dCopy = GKGameCenterIdentifier;
    }

    syncQueue = self->_syncQueue;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10011FF4C;
    v21 = &unk_100367750;
    selfCopy = self;
    typeCopy = type;
    dCopy = dCopy;
    v23 = dCopy;
    countCopy = count;
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

- (void)registerBadgePermissionForBundleID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
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

  if (dCopy && ([dCopy isEqualToString:GKGameCenterIdentifier] & 1) == 0)
  {
    v10 = +[GKApplicationWorkspace defaultWorkspace];
    v11 = [v10 applicationProxyForBundleID:dCopy];
    if ([v11 isInstalled] && (objc_msgSend(v11, "isRestricted") & 1) == 0)
    {
      syncQueue = self->_syncQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001205F0;
      block[3] = &unk_100360FC8;
      block[4] = self;
      v14 = dCopy;
      v15 = handlerCopy;
      dispatch_async(syncQueue, block);
    }
  }
}

@end
@interface GKOnDeviceMultiplayerGameListEntryCacheObject
- (id)internalRepresentation;
- (void)updateWithServerRepresentation:(id)a3;
@end

@implementation GKOnDeviceMultiplayerGameListEntryCacheObject

- (id)internalRepresentation
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKOnDeviceMultiplayerGameListEntryCacheObject internalRepresentation]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[GKOnDeviceMultiplayerGameListEntryCacheObject internalRepresentation]", [v7 UTF8String], 3594);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  return [(GKOnDeviceMultiplayerGameListEntryCacheObject *)self bundleID];
}

- (void)updateWithServerRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v5, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v6 = +[NSThread callStackSymbols];
    v7 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKOnDeviceMultiplayerGameListEntryCacheObject updateWithServerRepresentation:]", v6];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v9 = [v8 lastPathComponent];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v7, "-[GKOnDeviceMultiplayerGameListEntryCacheObject updateWithServerRepresentation:]", [v9 UTF8String], 3605);

    [NSException raise:@"GameKit Exception" format:@"%@", v10];
  }

  v16.receiver = self;
  v16.super_class = GKOnDeviceMultiplayerGameListEntryCacheObject;
  [(GKCacheObject *)&v16 updateWithServerRepresentation:v4];
  if (v4)
  {
    v11 = [v4 objectForKeyedSubscript:@"bundle-id"];
    [(GKOnDeviceMultiplayerGameListEntryCacheObject *)self setBundleID:v11];

    v12 = [v4 objectForKeyedSubscript:@"supports-multi-player"];
    -[GKOnDeviceMultiplayerGameListEntryCacheObject setSupportsMultiplayer:](self, "setSupportsMultiplayer:", [v12 BOOLValue]);

    v13 = [v4 objectForKeyedSubscript:@"supports-turn-based-multi-player"];
    -[GKOnDeviceMultiplayerGameListEntryCacheObject setSupportsTurnBasedMultiplayer:](self, "setSupportsTurnBasedMultiplayer:", [v13 BOOLValue]);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "failed to updateWithServerRepresentation for GKOnDeviceMultiplayerGameListEntryCacheObject. serverRep: %@", buf, 0xCu);
    }
  }
}

@end
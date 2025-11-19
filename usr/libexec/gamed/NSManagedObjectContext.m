@interface NSManagedObjectContext
- (BOOL)_gkSaveIfDirty;
- (unint64_t)_gkCountObjectsFromRequest:(id)a3;
- (void)_gkClearAllEntriesOfEntity:(id)a3;
- (void)_gkDeleteObjects:(id)a3;
- (void)_gkHandleFetchError:(id)a3;
- (void)_gkSafeSave;
@end

@implementation NSManagedObjectContext

- (void)_gkDeleteObjects:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(NSManagedObjectContext *)self deleteObject:*(*(&v10 + 1) + 8 * v9), v10];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }

    else
    {
      [NSException raise:@"GKInvalidParameter" format:@"objects parameter must be of kind NSSet, NSOrderedSet or NSArray"];
    }
  }
}

- (BOOL)_gkSaveIfDirty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100169DF0;
  v4[3] = &unk_100364898;
  v4[4] = self;
  v4[5] = &v5;
  [(NSManagedObjectContext *)self performBlockAndWait:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_gkSafeSave
{
  v3 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v3, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v4 = +[NSThread callStackSymbols];
    v5 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[NSManagedObjectContext(GKAdditions) _gkSafeSave]", v4];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/NSManagedObjectContext+GKAdditions.m"];
    v7 = [v6 lastPathComponent];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v5, "-[NSManagedObjectContext(GKAdditions) _gkSafeSave]", [v7 UTF8String], 46);

    [NSException raise:@"GameKit Exception" format:@"%@", v8];
  }

  v15[0] = 0;
  v9 = [(NSManagedObjectContext *)self save:v15];
  v10 = v15[0];
  v11 = os_log_GKGeneral;
  if (v9)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100293784(self, v13);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
      v11 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10029370C();
    }

    [(NSManagedObjectContext *)self rollback];
  }
}

- (void)_gkClearAllEntriesOfEntity:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:v4];

  v6 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v5];
  v13 = 0;
  v7 = [(NSManagedObjectContext *)self executeRequest:v6 error:&v13];
  v8 = v13;
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002937FC(v10);
    }

    v11 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
      v11 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Clear entries error: %@", buf, 0xCu);
    }
  }
}

- (unint64_t)_gkCountObjectsFromRequest:(id)a3
{
  v10 = 0;
  v3 = [(NSManagedObjectContext *)self countForFetchRequest:a3 error:&v10];
  v4 = v10;
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293840(v6);
    }

    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Count for objects: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (void)_gkHandleFetchError:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
  {
    sub_100293884();
  }

  if ([v4 isSQLiteFatalFileError])
  {
    [GKClientProxy removeManagedObjectContext:self];
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Triggered removal of doomed MOC: %@", &v8, 0xCu);
    }
  }
}

@end
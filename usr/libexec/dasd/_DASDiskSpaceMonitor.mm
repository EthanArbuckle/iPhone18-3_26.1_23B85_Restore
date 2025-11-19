@interface _DASDiskSpaceMonitor
+ (id)sharedMonitorWithDaemon:(id)a3;
- (BOOL)isDiskSpaceAvailableForActivity:(id)a3;
- (_DASDiskSpaceMonitor)initWithDaemon:(id)a3;
- (void)fetchPurgeableSpaceInfoForVolume:(id)a3;
- (void)handleCacheDeletePurgeableSpaceNotification;
- (void)registerForCacheDeletePurgeableSpaceNotifications;
- (void)registerForDiskVolumeMonitoring:(id)a3;
- (void)registerForPurgeableSpaceWithActivity:(id)a3;
- (void)unregisterForDiskVolumeMonitoring:(id)a3;
- (void)unregisterForPurgeableSpaceWithActivity:(id)a3;
@end

@implementation _DASDiskSpaceMonitor

- (void)handleCacheDeletePurgeableSpaceNotification
{
  diskVolumes = self->_diskVolumes;
  if (diskVolumes)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = diskVolumes;
    v5 = [(NSCountedSet *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(_DASDiskSpaceMonitor *)self fetchPurgeableSpaceInfoForVolume:*(*(&v24 + 1) + 8 * i)];
        }

        v6 = [(NSCountedSet *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v6);
    }

    v9 = +[NSMutableSet set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [(_DASDiskSpaceMonitor *)self pendingActivities];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * j);
          if ([(_DASDiskSpaceMonitor *)self isDiskSpaceAvailableForActivity:v15])
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Available disk space changed, re-evaluating activities: %@", buf, 0xCu);
      }

      v17 = dispatch_get_global_queue(0, 0);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000FDA0C;
      v18[3] = &unk_1001B56E0;
      v18[4] = self;
      v19 = v9;
      dispatch_async(v17, v18);
    }
  }
}

- (_DASDiskSpaceMonitor)initWithDaemon:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DASDiskSpaceMonitor;
  v6 = [(_DASDiskSpaceMonitor *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemon, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.duetactivityscheduler.diskspacemonitor", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = os_log_create("com.apple.duetactivityscheduler", "DiskSpaceMonitor");
    log = v7->_log;
    v7->_log = v11;

    v7->_purgeableSpaceMapLock = 0;
    [(_DASDiskSpaceMonitor *)v7 registerForCacheDeletePurgeableSpaceNotifications];
  }

  return v7;
}

+ (id)sharedMonitorWithDaemon:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FD31C;
  v9[3] = &unk_1001B6250;
  v10 = a3;
  v11 = a1;
  v4 = qword_10020B838;
  v5 = v10;
  if (v4 != -1)
  {
    dispatch_once(&qword_10020B838, v9);
  }

  v6 = qword_10020B840;
  v7 = qword_10020B840;

  return v6;
}

- (void)registerForPurgeableSpaceWithActivity:(id)a3
{
  v4 = a3;
  v5 = +[_DASDiskSpacePolicy policyInstance];
  v6 = [v5 appliesToActivity:v4];

  if (v6)
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FD460;
    v10[3] = &unk_1001B56E0;
    v10[4] = self;
    v8 = v4;
    v11 = v8;
    dispatch_sync(queue, v10);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012C8BC(v8, log);
    }
  }
}

- (void)unregisterForPurgeableSpaceWithActivity:(id)a3
{
  v4 = a3;
  v5 = +[_DASDiskSpacePolicy policyInstance];
  v6 = [v5 appliesToActivity:v4];

  if (v6)
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FD5F4;
    v10[3] = &unk_1001B56E0;
    v10[4] = self;
    v8 = v4;
    v11 = v8;
    dispatch_sync(queue, v10);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10012C934(v8, log);
    }
  }
}

- (void)registerForDiskVolumeMonitoring:(id)a3
{
  v8 = a3;
  v4 = [(_DASDiskSpaceMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  diskVolumes = self->_diskVolumes;
  if (!diskVolumes)
  {
    v6 = +[NSCountedSet set];
    v7 = self->_diskVolumes;
    self->_diskVolumes = v6;

    diskVolumes = self->_diskVolumes;
  }

  [(NSCountedSet *)diskVolumes addObject:v8];
  if ([(NSCountedSet *)self->_diskVolumes countForObject:v8]== 1)
  {
    [(_DASDiskSpaceMonitor *)self fetchPurgeableSpaceInfoForVolume:v8];
  }
}

- (void)unregisterForDiskVolumeMonitoring:(id)a3
{
  v6 = a3;
  v4 = [(_DASDiskSpaceMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  diskVolumes = self->_diskVolumes;
  if (diskVolumes)
  {
    [(NSCountedSet *)diskVolumes removeObject:v6];
    if (([(NSCountedSet *)self->_diskVolumes containsObject:v6]& 1) == 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      [(NSMutableDictionary *)self->_purgeableSpaceMap removeObjectForKey:v6];
      os_unfair_recursive_lock_unlock();
    }
  }
}

- (BOOL)isDiskSpaceAvailableForActivity:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_purgeableSpaceMap)
  {
    v5 = [(_DASDiskSpaceMonitor *)self purgeableSpaceMap];
    v6 = [v4 diskVolume];
    v7 = [v5 objectForKey:v6];
    v8 = [v7 unsignedLongLongValue];

    if (v8)
    {
      LOBYTE(v8) = v8 >= [v4 downloadSize] << 10;
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      sub_10012C9AC(log);
    }

    LOBYTE(v8) = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v8;
}

- (void)fetchPurgeableSpaceInfoForVolume:(id)a3
{
  v4 = a3;
  v5 = [(_DASDiskSpaceMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v13[0] = @"CACHE_DELETE_VOLUME";
  v13[1] = @"CACHE_DELETE_URGENCY";
  v14[0] = v4;
  v14[1] = &off_1001CA528;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v7 = CacheDeleteCopyPurgeableSpaceWithInfo();
  v8 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];

  if (v8)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10012C9F0(log, v7);
    }
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    if (!self->_purgeableSpaceMap)
    {
      v10 = +[NSMutableDictionary dictionary];
      purgeableSpaceMap = self->_purgeableSpaceMap;
      self->_purgeableSpaceMap = v10;
    }

    v12 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    [(NSMutableDictionary *)self->_purgeableSpaceMap setObject:v12 forKeyedSubscript:v4];

    os_unfair_recursive_lock_unlock();
  }
}

- (void)registerForCacheDeletePurgeableSpaceNotifications
{
  out_token = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A0C8;
  v5[3] = &unk_1001B5B78;
  v5[4] = self;
  if (notify_register_dispatch("CACHE_DELETE_PURGEABLE_UPDATED", &out_token, queue, v5))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10012CAA0(log);
    }
  }
}

@end
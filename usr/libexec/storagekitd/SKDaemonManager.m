@interface SKDaemonManager
+ (id)sharedManager;
- (BOOL)addAppearedDisk:(id)a3;
- (BOOL)diskHasMutated:(id)a3 rawIOContent:(id)a4 diskDesc:(id)a5 mediaUUID:(id)a6;
- (SKDaemonManager)init;
- (id)_apfsStoreDiskWithUUID:(id)a3;
- (id)_cachedDiskWithDADisk:(id)a3;
- (id)_cachedDiskWithDiskIdentifier:(id)a3;
- (id)_diskOperationIdentifierWithDADisk:(id)a3;
- (id)_diskWithDADisk:(id)a3;
- (id)_filesystemForDMFilesystemType:(id)a3 isEncrypted:(BOOL)a4;
- (id)_filesystemForIOContent:(id)a3;
- (id)_filesystemForUnlocalizedName:(id)a3 dmPersonality:(id)a4;
- (id)_firstFilesystemForMajorType:(id)a3;
- (id)_fullRecacheWithDisks:(id)a3 options:(unint64_t)a4;
- (id)_processAppearedOrChangedWithDisk:(id)a3 operation:(id)a4;
- (id)_processDiskNotificationsForMap:(id)a3 isCompleteDiskList:(BOOL)a4;
- (id)_recacheSyncDisk:(id)a3;
- (id)allDisks;
- (id)copyExtendedDiskInfoWithDiskIdentifier:(id)a3;
- (id)copyUpdatedDADiskForDisk:(id)a3;
- (id)eraseWithEraser:(id)a3 completionBlock:(id)a4;
- (id)formatableFileSystems;
- (id)knownDiskForDictionary:(id)a3;
- (id)resize:(id)a3 toSize:(unint64_t)a4 completionBlock:(id)a5;
- (id)rootWholeDisk;
- (id)wholeDiskForDisk:(id)a3;
- (unint64_t)nextDiskObjectID;
- (void)_addToExtendedDiskInfoCacheWithDictionary:(id)a3;
- (void)_advanceOperationQueue;
- (void)_advanceOperationQueueOnWorkQueue;
- (void)_diskEjectThread;
- (void)_diskQueueHeartbeat;
- (void)_diskQueueWatchdog;
- (void)_disksAppeared:(id)a3;
- (void)_disksChanged:(id)a3;
- (void)_disksDisappeared:(id)a3;
- (void)_fastRecacheWithDisks:(id)a3 options:(unint64_t)a4;
- (void)_handleDANotificationWithDisk:(id)a3 operation:(id)a4;
- (void)_idleCallback;
- (void)_invalidateExtendedDiskInfoCache;
- (void)_notifyLockedDisksNotificationsWaitersWithDisk:(id)a3;
- (void)_performDiskStateUpdateSelector:(SEL)a3 onListener:(id)a4 withDisks:(id)a5;
- (void)_processNotificationWithDiskOperation:(id)a3;
- (void)_processNotificationsWithDiskOperations:(id)a3;
- (void)_scheduleGenericOperationWithCompletionBlock:(id)a3;
- (void)_scheduleOperation:(id)a3;
- (void)_workerThread;
- (void)addChangedDisk:(id)a3;
- (void)addDisappearedDisk:(id)a3;
- (void)addListener:(id)a3;
- (void)addMissingDisappearedDisks;
- (void)childDisksForWholeDisk:(id)a3 withCallbackBlock:(id)a4;
- (void)createDASession;
- (void)dispatchBoostedToWorkThread:(id)a3;
- (void)dispatchSyncToEjectThread:(id)a3;
- (void)dispatchSyncToWorkThread:(id)a3;
- (void)dispatchToEjectThread:(id)a3;
- (void)dispatchToWorkThread:(id)a3;
- (void)dmAsyncFinishedForDisk:(__DADisk *)a3 mainError:(int)a4 detailError:(int)a5 dictionary:(id)a6;
- (void)dmAsyncMessageForDisk:(__DADisk *)a3 string:(id)a4 dictionary:(id)a5;
- (void)dmAsyncStartedForDisk:(__DADisk *)a3;
- (void)ejectDisk:(id)a3 withCompletionBlock:(id)a4;
- (void)filesystemsWithCallbackBlock:(id)a3;
- (void)isBusy:(id)a3;
- (void)performVMDiskResizeWithSize:(unint64_t)a3;
- (void)physicalStoresForAPFSVolume:(id)a3 completionBlock:(id)a4;
- (void)postProcessWithDisk:(id)a3;
- (void)recacheDisk:(id)a3 options:(unint64_t)a4 callbackBlock:(id)a5;
- (void)registerDiskArbCallbacks;
- (void)removeLIFSAPFSContainers;
- (void)removeListener:(id)a3;
- (void)removePostProcessWithCachedDisk:(id)a3;
- (void)renameDisk:(id)a3 to:(id)a4 withCompletionBlock:(id)a5;
- (void)syncAllDisksWithCompletionBlock:(id)a3;
- (void)unmountDisk:(id)a3 options:(id)a4 withCompletionBlock:(id)a5;
- (void)updatePhysicalStoresWithContainer:(id)a3;
- (void)updatePhysicalStoresWithDisks:(id)a3;
- (void)volumesForAPFSPS:(id)a3 completionBlock:(id)a4;
- (void)wholeDiskForDisk:(id)a3 withCallbackBlock:(id)a4;
@end

@implementation SKDaemonManager

+ (id)sharedManager
{
  if (qword_100059390 != -1)
  {
    sub_10002E538();
  }

  v3 = qword_100059388;

  return v3;
}

- (void)createDASession
{
  while (1)
  {
    v3 = DASessionCreate(0);
    self->daSession = v3;
    if (v3)
    {
      break;
    }

    v9 = sub_10000BFD0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[SKDaemonManager createDASession]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: DASessionCreate failed, retrying", buf, 0xCu);
    }

LABEL_9:
    sleep(1u);
  }

  DASessionSetDispatchQueue(v3, self->_diskArbCallbacksQueue);
  daSession = self->daSession;
  diskArbCallbacksQueue = self->_diskArbCallbacksQueue;
  v6 = DASessionKeepAlive();
  if (v6)
  {
    v7 = v6;
    v8 = sub_10000BFD0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[SKDaemonManager createDASession]";
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: DASessionKeepAlive failed with code %d, retrying", buf, 0x12u);
    }

    DASessionSetDispatchQueue(self->daSession, 0);
    CFRelease(self->daSession);
    goto LABEL_9;
  }
}

- (SKDaemonManager)init
{
  v42.receiver = self;
  v42.super_class = SKDaemonManager;
  v2 = [(SKDaemonManager *)&v42 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:10];
    allDisks = v2->allDisks;
    v2->allDisks = v3;

    v5 = objc_opt_new();
    diskOperationMap = v2->_diskOperationMap;
    v2->_diskOperationMap = v5;

    v7 = objc_opt_new();
    preIdleOperationMap = v2->_preIdleOperationMap;
    v2->_preIdleOperationMap = v7;

    v9 = objc_alloc_init(NSMutableArray);
    pendingOperations = v2->pendingOperations;
    v2->pendingOperations = v9;

    v11 = [[NSMutableSet alloc] initWithCapacity:1];
    listeners = v2->_listeners;
    v2->_listeners = v11;

    v13 = objc_alloc_init(NSMutableArray);
    syncAllDisksSemaphores = v2->_syncAllDisksSemaphores;
    v2->_syncAllDisksSemaphores = v13;

    v15 = +[NSMutableDictionary dictionary];
    extendedDiskInfoCache = v2->_extendedDiskInfoCache;
    v2->_extendedDiskInfoCache = v15;

    v17 = objc_opt_new();
    lastDiskObjectIDLock = v2->_lastDiskObjectIDLock;
    v2->_lastDiskObjectIDLock = v17;

    v19 = objc_opt_new();
    disksNotificationsWaiters = v2->_disksNotificationsWaiters;
    v2->_disksNotificationsWaiters = v19;

    v21 = dispatch_queue_create("com.apple.StorageKit.notification", 0);
    diskNotificationQueue = v2->diskNotificationQueue;
    v2->diskNotificationQueue = v21;

    v23 = [[NSThread alloc] initWithTarget:v2 selector:"_workerThread" object:0];
    diskWorkThread = v2->diskWorkThread;
    v2->diskWorkThread = v23;

    v25 = [[NSThread alloc] initWithTarget:v2 selector:"_diskEjectThread" object:0];
    diskEjectThread = v2->diskEjectThread;
    v2->diskEjectThread = v25;

    v2->runHeartbeatThread = 0;
    [(NSThread *)v2->diskWorkThread start];
    [(NSThread *)v2->diskEjectThread start];
    v27 = dispatch_queue_create("com.apple.StorageKit.watchdog", 0);
    diskWorkQueueWatchDog = v2->diskWorkQueueWatchDog;
    v2->diskWorkQueueWatchDog = v27;

    v29 = dispatch_queue_create("com.apple.StorageKit.heartbeat", 0);
    heartbeatSynchronizationQueue = v2->_heartbeatSynchronizationQueue;
    v2->_heartbeatSynchronizationQueue = v29;

    v31 = [[SKMultiSerialQueue alloc] initWithName:@"com.apple.StorageKit.notifications.processing"];
    notificationsProcessingQueue = v2->_notificationsProcessingQueue;
    v2->_notificationsProcessingQueue = v31;

    v33 = dispatch_queue_create("com.apple.StorageKit.initial.populate", 0);
    waitForCompletionQueue = v2->_waitForCompletionQueue;
    v2->_waitForCompletionQueue = v33;

    v35 = [[SKMultiSerialQueue alloc] initWithName:@"com.apple.StorageKit.booster"];
    boosterQueue = v2->_boosterQueue;
    v2->_boosterQueue = v35;

    sub_100010088(v2->diskNotificationQueue, "kDiskNotificationQueueTag");
    v37 = dispatch_queue_create("com.apple.StorageKit.notifications.sync", 0);
    notificationsSyncQueue = v2->_notificationsSyncQueue;
    v2->_notificationsSyncQueue = v37;

    v39 = dispatch_queue_create("com.apple.StorageKit.DiskArbCallbacks", 0);
    diskArbCallbacksQueue = v2->_diskArbCallbacksQueue;
    v2->_diskArbCallbacksQueue = v39;

    [(SKDaemonManager *)v2 createDASession];
    IOEngineInitialize();
    [(SKDaemonManager *)v2 registerDiskArbCallbacks];
  }

  return v2;
}

- (void)_workerThread
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSRunLoop currentRunLoop];
  v4 = +[NSPort port];
  v5 = +[NSThread currentThread];
  [v5 setName:@"Storage Kit Work Thread"];

  if (v4)
  {
    [v3 addPort:v4 forMode:NSRunLoopCommonModes];
  }

  [v3 run];

  objc_autoreleasePoolPop(v2);
}

- (void)_diskEjectThread
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSRunLoop currentRunLoop];
  v4 = +[NSPort port];
  v5 = +[NSThread currentThread];
  [v5 setName:@"Storage Kit Disk Eject Thread"];

  if (v4)
  {
    [v3 addPort:v4 forMode:NSRunLoopCommonModes];
  }

  [v3 run];

  objc_autoreleasePoolPop(v2);
}

- (void)dispatchToWorkThread:(id)a3
{
  diskWorkThread = self->diskWorkThread;
  v5 = objc_retainBlock(a3);
  [(SKDaemonManager *)self performSelector:"_doBlockOnWorkThread:" onThread:diskWorkThread withObject:v5 waitUntilDone:0];
}

- (void)dispatchSyncToWorkThread:(id)a3
{
  diskWorkThread = self->diskWorkThread;
  v5 = objc_retainBlock(a3);
  [(SKDaemonManager *)self performSelector:"_doBlockOnWorkThread:" onThread:diskWorkThread withObject:v5 waitUntilDone:1];
}

- (void)dispatchToEjectThread:(id)a3
{
  diskEjectThread = self->diskEjectThread;
  v5 = objc_retainBlock(a3);
  [(SKDaemonManager *)self performSelector:"_doBlockOnEjectThread:" onThread:diskEjectThread withObject:v5 waitUntilDone:0];
}

- (void)dispatchSyncToEjectThread:(id)a3
{
  diskEjectThread = self->diskEjectThread;
  v5 = objc_retainBlock(a3);
  [(SKDaemonManager *)self performSelector:"_doBlockOnEjectThread:" onThread:diskEjectThread withObject:v5 waitUntilDone:1];
}

- (void)dispatchBoostedToWorkThread:(id)a3
{
  v4 = a3;
  v5 = [(SKDaemonManager *)self boosterQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019EF0;
  v7[3] = &unk_1000493B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dispatchWithBlock:v7];
}

- (void)registerDiskArbCallbacks
{
  DARegisterDiskDisappearedCallback(self->daSession, 0, sub_10001A0C4, self);
  DARegisterDiskDescriptionChangedCallback(self->daSession, 0, 0, sub_10001A1A0, self);
  daSession = self->daSession;
  DARegisterDiskListCompleteCallback();
  DARegisterDiskAppearedCallback(self->daSession, 0, sub_10001A344, self);
  v4 = self->daSession;

  DARegisterIdleCallback();
}

- (void)addListener:(id)a3
{
  v6 = a3;
  v4 = [(SKDaemonManager *)self allDisks];
  v5 = self->_listeners;
  objc_sync_enter(v5);
  [(NSMutableSet *)self->_listeners addObject:v6];
  if ([v4 count])
  {
    [(SKDaemonManager *)self _performDiskStateUpdateSelector:"disksAppeared:" onListener:v6 withDisks:v4];
  }

  objc_sync_exit(v5);
}

- (void)removeListener:(id)a3
{
  v5 = a3;
  v4 = self->_listeners;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_listeners removeObject:v5];
  objc_sync_exit(v4);
}

- (id)allDisks
{
  v3 = self->allDisks;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->allDisks copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)knownDiskForDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"diskIdentifier"];
  v6 = [v4 objectForKey:@"type"];
  if (![v6 isEqualToString:kSKDiskTypeAPFSLV])
  {
    if ([v6 isEqualToString:kSKDiskTypeAPFSContainer])
    {
      v12 = v5 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      if ([v5 hasPrefix:kSKDiskIdentifierLiveFSAPFSPrefix])
      {
        v11 = [(SKDaemonManager *)self _cachedDiskWithDiskIdentifier:v5];
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_9:
    if (!v5)
    {
      v11 = 0;
      goto LABEL_15;
    }

LABEL_13:
    v8 = DADiskCreateFromBSDName(0, self->daSession, [v5 UTF8String]);
    v11 = [(SKDaemonManager *)self _diskWithDADisk:v8];
    goto LABEL_14;
  }

  v7 = [v4 objectForKeyedSubscript:@"mountPoint"];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [[NSURL alloc] initFileURLWithPath:v7];
  v10 = DADiskCreateFromVolumePath(0, self->daSession, v9);
  v11 = [(SKDaemonManager *)self _diskWithDADisk:v10];

LABEL_14:
LABEL_15:

  return v11;
}

- (id)rootWholeDisk
{
  v3 = self->allDisks;
  objc_sync_enter(v3);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->allDisks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 mountPoint];
        v10 = [v9 isEqualToString:@"/"];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  objc_sync_exit(v3);
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 container];
    v13 = [v12 designatedPhysicalStore];
    v14 = [(SKDaemonManager *)self wholeDiskForDisk:v13];
    if (!v14)
    {
      v15 = sub_10000BFD0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "[SKDaemonManager rootWholeDisk]";
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Couldn't find root disk. container: %@, PS: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = sub_10000BFD0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Root volume must be APFS - found: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (void)performVMDiskResizeWithSize:(unint64_t)a3
{
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested to resize the VM's internal disk to %lld bytes", buf, 0xCu);
  }

  v6 = sub_10000BFD0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SKDaemonManager performVMDiskResizeWithSize:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Root disk (the system's snapshot) might appear after first DA idle, waiting a bit", buf, 0xCu);
  }

  sleep(1u);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AC34;
  v7[3] = &unk_100049400;
  v7[4] = self;
  v7[5] = a3;
  [(SKDaemonManager *)self syncAllDisksWithCompletionBlock:v7];
}

- (void)_diskQueueHeartbeat
{
  if (self->runHeartbeatThread)
  {
    block[5] = v5;
    block[6] = v4;
    block[9] = v2;
    block[10] = v3;
    heartbeatSynchronizationQueue = self->_heartbeatSynchronizationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B02C;
    block[3] = &unk_100048BB0;
    block[4] = self;
    dispatch_sync(heartbeatSynchronizationQueue, block);
    v8 = dispatch_time(0, 5000000000);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001B080;
    v9[3] = &unk_100048BB0;
    v9[4] = self;
    dispatch_after(v8, &_dispatch_main_q, v9);
  }
}

- (void)_diskQueueWatchdog
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (self->runHeartbeatThread)
  {
    heartbeatSynchronizationQueue = self->_heartbeatSynchronizationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B4E0;
    block[3] = &unk_100049428;
    block[4] = self;
    block[5] = &v28;
    dispatch_sync(heartbeatSynchronizationQueue, block);
    if (v29[3] <= 10.0)
    {
      if (self->diskQueueStuck)
      {
        self->diskQueueStuck = 0;
        v6 = self->_listeners;
        objc_sync_enter(v6);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = self->_listeners;
        v12 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
        if (v12)
        {
          v13 = *v20;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v7);
              }

              v15 = *(*(&v19 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v15 managerResumed];
              }
            }

            v12 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
          }

          while (v12);
        }

        goto LABEL_26;
      }
    }

    else if (!self->diskQueueStuck)
    {
      self->diskQueueStuck = 1;
      v4 = sub_10000BFD0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(SKDaemonManager *)self lastOperationName];
        *buf = 138412290;
        v35 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disk queue stuck, last operation: %@", buf, 0xCu);
      }

      v6 = self->_listeners;
      objc_sync_enter(v6);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = self->_listeners;
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v8)
      {
        v9 = *v24;
        do
        {
          for (j = 0; j != v8; j = j + 1)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v23 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v11 managerStalled];
            }
          }

          v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v8);
      }

LABEL_26:

      objc_sync_exit(v6);
    }

    v16 = dispatch_time(0, 5000000000);
    diskWorkQueueWatchDog = self->diskWorkQueueWatchDog;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001B524;
    v18[3] = &unk_100048BB0;
    v18[4] = self;
    dispatch_after(v16, diskWorkQueueWatchDog, v18);
  }

  _Block_object_dispose(&v28, 8);
}

- (id)_cachedDiskWithDiskIdentifier:(id)a3
{
  v4 = a3;
  if (sub_1000101BC(v4))
  {
    v5 = self->allDisks;
    objc_sync_enter(v5);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->allDisks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 diskIdentifier];
          v12 = [v4 isEqual:v11];

          if (v12)
          {
            v7 = v10;
            goto LABEL_13;
          }
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_cachedDiskWithDADisk:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->allDisks;
    objc_sync_enter(v5);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->allDisks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 daDisk];
          if (v11)
          {
            v12 = [v10 daDisk];
            v13 = [v4 isEqual:v12];

            if (v13)
            {
              v7 = v10;
              goto LABEL_14;
            }
          }
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_diskWithDADisk:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SKDaemonManager *)self _cachedDiskWithDADisk:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = sub_10001BACC;
      v20 = sub_10001BADC;
      v21 = 0;
      v8 = [(SKDaemonManager *)self _diskOperationIdentifierWithDADisk:v4];
      v24 = v8;
      v22[0] = off_1000592F8;
      v22[1] = off_1000592C0;
      v23[0] = v4;
      v23[1] = off_1000592E8;
      v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      v25 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001BAE4;
      v13[3] = &unk_100049450;
      v15 = &v16;
      v13[4] = self;
      v11 = v10;
      v14 = v11;
      [(SKDaemonManager *)self dispatchSyncToEjectThread:v13];
      v7 = v17[5];

      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)renameDisk:(id)a3 to:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[SKRenameOperation alloc] initWithDisk:v10 name:v8 withCompletionBlock:v9];

  if (v11)
  {
    v12 = +[SKDaemonManager sharedManager];
    [v12 _scheduleOperation:v11];
  }

  else
  {
    v13 = sub_10000BFD0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not rename disk %@ to %@", &v14, 0x16u);
    }

    v12 = [SKError errorWithCode:102 userInfo:0];
    v9[2](v9, v12);
  }
}

- (id)_apfsStoreDiskWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->allDisks;
    objc_sync_enter(v5);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->allDisks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 apfsUUID];
            v12 = [v11 isEqualToString:v4];

            if (v12)
            {
              v7 = v10;
              goto LABEL_14;
            }
          }
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_invalidateExtendedDiskInfoCache
{
  obj = self->_extendedDiskInfoCache;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_extendedDiskInfoCache removeAllObjects];
  objc_sync_exit(obj);
}

- (void)_addToExtendedDiskInfoCacheWithDictionary:(id)a3
{
  v4 = a3;
  obj = self->_extendedDiskInfoCache;
  objc_sync_enter(obj);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_extendedDiskInfoCache objectForKeyedSubscript:v9];

        if (v10)
        {
          v11 = [(NSMutableDictionary *)self->_extendedDiskInfoCache objectForKeyedSubscript:v9];
          v12 = [v4 objectForKeyedSubscript:v9];
          [v11 addEntriesFromDictionary:v12];
        }

        else
        {
          v11 = [v4 objectForKeyedSubscript:v9];
          v12 = [NSMutableDictionary dictionaryWithDictionary:v11];
          [(NSMutableDictionary *)self->_extendedDiskInfoCache setObject:v12 forKeyedSubscript:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
}

- (id)copyExtendedDiskInfoWithDiskIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_extendedDiskInfoCache;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_extendedDiskInfoCache objectForKeyedSubscript:v4];
  v7 = [v6 copy];

  objc_sync_exit(v5);
  return v7;
}

- (id)copyUpdatedDADiskForDisk:(id)a3
{
  v4 = a3;
  if ([v4 isIOMediaDisk])
  {
    daSession = self->daSession;
    v6 = [v4 diskIdentifier];
    v7 = DADiskCreateFromBSDName(0, daSession, [v6 UTF8String]);
  }

  else
  {
    v8 = [v4 mountPoint];

    if (!v8)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = [v4 mountPoint];
    v6 = [NSURL fileURLWithPath:v9];

    v7 = DADiskCreateFromVolumePath(0, self->daSession, v6);
  }

  v10 = v7;

LABEL_6:
  return v10;
}

- (void)_fastRecacheWithDisks:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v15 = self;
  [(SKDaemonManager *)self _invalidateExtendedDiskInfoCache];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 _supportsRecaching])
        {
          v14 = sub_10000BFD0();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v21 = "[SKDaemonManager _fastRecacheWithDisks:options:]";
            v22 = 2112;
            v23 = v13;
            v24 = 1024;
            v25 = v4;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@ options=0x%x", buf, 0x1Cu);
          }

          [v13 _cacheSpacesWithPurgeable:(v4 & 4) == 0];
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v10);
  }

  [(SKDaemonManager *)v15 _disksChanged:v7];
}

- (id)_fullRecacheWithDisks:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v24 = objc_alloc_init(NSMutableDictionary);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10001BACC;
  v36 = sub_10001BADC;
  v37 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v7)
  {
    v9 = *v29;
    *&v8 = 136315394;
    v22 = v8;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if ([v11 _supportsRecaching])
        {
          v12 = [(SKDaemonManager *)self copyUpdatedDADiskForDisk:v11];
          v13 = v12;
          if (v12)
          {
            v42[0] = off_1000592F8;
            v42[1] = off_1000592C0;
            v43[0] = v12;
            v43[1] = off_1000592E0;
            v42[2] = off_1000592F0;
            v14 = [NSNumber numberWithUnsignedInteger:a4];
            v43[2] = v14;
            v15 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
            v16 = [v11 diskIdentifier];
            [v24 setObject:v15 forKeyedSubscript:v16];

            v17 = sub_10000BFD0();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v39 = "[SKDaemonManager _fullRecacheWithDisks:options:]";
              v40 = 2112;
              v41 = v11;
              v18 = v17;
              v19 = "%s: Recaching %@";
              goto LABEL_12;
            }
          }

          else
          {
            v17 = sub_10000BFD0();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v39 = "[SKDaemonManager _fullRecacheWithDisks:options:]";
              v40 = 2112;
              v41 = v11;
              v18 = v17;
              v19 = "%s: Failed to create an updated DADiskRef for %@";
LABEL_12:
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
            }
          }

          continue;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v7);
  }

  if ([v24 count])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001C824;
    v25[3] = &unk_100049450;
    v27 = &v32;
    v25[4] = self;
    v26 = v24;
    [(SKDaemonManager *)self dispatchSyncToEjectThread:v25];
  }

  v20 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v20;
}

- (void)recacheDisk:(id)a3 options:(unint64_t)a4 callbackBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8 && ([v8 diskIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [NSMutableArray arrayWithObject:v8];
    if (a4)
    {
      v12 = [v8 children];
      if (v12)
      {
        [v11 addObjectsFromArray:v12];
      }
    }

    if ((a4 & 2) != 0)
    {
      [(SKDaemonManager *)self _fastRecacheWithDisks:v11 options:a4];
      if (v9)
      {
        v9[2](v9);
      }
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001C9EC;
      v13[3] = &unk_100049478;
      v13[4] = self;
      v14 = v11;
      v16 = a4;
      v15 = v9;
      [(SKDaemonManager *)self dispatchBoostedToWorkThread:v13];
    }
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

- (id)_recacheSyncDisk:(id)a3
{
  if (a3)
  {
    v8 = a3;
    v4 = a3;
    v5 = [NSArray arrayWithObjects:&v8 count:1];

    v6 = [(SKDaemonManager *)self _fullRecacheWithDisks:v5 options:0, v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_scheduleOperation:(id)a3
{
  v4 = a3;
  v5 = [(SKDaemonManager *)self boosterQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CBCC;
  v7[3] = &unk_100048F38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dispatchWithBlock:v7];
}

- (void)_advanceOperationQueue
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001CF94;
  v2[3] = &unk_100048BB0;
  v2[4] = self;
  [(SKDaemonManager *)self dispatchToWorkThread:v2];
}

- (void)_advanceOperationQueueOnWorkQueue
{
  if (self->currentOperation)
  {
    v3 = sub_10000BFD0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      currentOperation = self->currentOperation;
      v12 = 138412290;
      v13 = currentOperation;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished operation: %@", &v12, 0xCu);
    }
  }

  if ([(NSMutableArray *)self->pendingOperations count])
  {
    v5 = [(NSMutableArray *)self->pendingOperations objectAtIndexedSubscript:0];
    v6 = self->currentOperation;
    self->currentOperation = v5;

    [(NSMutableArray *)self->pendingOperations removeObjectAtIndex:0];
    v7 = [(SKManagerOperation *)self->currentOperation description];
    [(SKDaemonManager *)self setLastOperationName:v7];

    v8 = sub_10000BFD0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->currentOperation;
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Running operation: %@", &v12, 0xCu);
    }

    [(SKManagerOperation *)self->currentOperation run];
  }

  else
  {
    self->runHeartbeatThread = 0;
    [(SKDaemonManager *)self setLastOperationName:0];
    v10 = self->currentOperation;
    self->currentOperation = 0;

    v11 = sub_10000BFD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SKDaemonManager _advanceOperationQueueOnWorkQueue]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Operation queue is empty", &v12, 0xCu);
    }
  }
}

- (void)_scheduleGenericOperationWithCompletionBlock:(id)a3
{
  v5 = a3;
  v4 = objc_opt_new();
  [v4 setCompletionBlock:v5];
  if (v4)
  {
    [(SKDaemonManager *)self _scheduleOperation:v4];
  }

  else
  {
    v5[2]();
  }
}

- (void)_disksChanged:(id)a3
{
  v4 = a3;
  v17 = 112;
  obj = self->_listeners;
  objc_sync_enter(obj);
  v5 = [(SKDaemonManager *)self allDisks];
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v5 containsObject:{v11, v17}])
        {
          [v6 addObject:v11];
        }

        else
        {
          v12 = sub_10000BFD0();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v29 = "[SKDaemonManager _disksChanged:]";
            v30 = 2112;
            v31 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %@ disappeared, skipping changed notification", buf, 0x16u);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v8);
  }

  sub_10000C17C(OS_LOG_TYPE_DEFAULT, "DAEMON - Disks changed:", v6);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = *&self->SKBaseManager_opaque[v17];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [(SKDaemonManager *)self _performDiskStateUpdateSelector:"disksChanged:" onListener:*(*(&v19 + 1) + 8 * j) withDisks:v6, v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  objc_sync_exit(obj);
}

- (void)_disksAppeared:(id)a3
{
  v4 = a3;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  sub_10000C17C(OS_LOG_TYPE_DEFAULT, "DAEMON - Disks appeared:", v4);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = self->_listeners;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(SKDaemonManager *)self _performDiskStateUpdateSelector:"disksAppeared:" onListener:*(*(&v10 + 1) + 8 * i) withDisks:v4, v10];
      }

      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)_disksDisappeared:(id)a3
{
  v4 = a3;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  sub_10000C17C(OS_LOG_TYPE_DEFAULT, "DAEMON - Disks disappeared:", v4);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = self->_listeners;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(SKDaemonManager *)self _performDiskStateUpdateSelector:"disksDisappeared:" onListener:*(*(&v10 + 1) + 8 * i) withDisks:v4, v10];
      }

      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)_performDiskStateUpdateSelector:(SEL)a3 onListener:(id)a4 withDisks:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v22 + 1) + 8 * v14) dictionaryRepresentation];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  if (objc_opt_respondsToSelector())
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 visibleDiskRoles], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001DA50;
      v20[3] = &unk_1000494A0;
      v17 = v7;
      v21 = v17;
      v18 = [NSPredicate predicateWithBlock:v20];
      v19 = [v9 filteredArrayUsingPredicate:v18];
      [v17 performSelector:a3 withObject:v19];
    }

    else
    {
      [v7 performSelector:a3 withObject:v9];
    }
  }
}

- (unint64_t)nextDiskObjectID
{
  v3 = [(SKDaemonManager *)self lastDiskObjectIDLock];
  objc_sync_enter(v3);
  v4 = self->_lastDiskObjectID + 1;
  self->_lastDiskObjectID = v4;
  objc_sync_exit(v3);

  return v4;
}

- (void)_idleCallback
{
  v3 = sub_10000BFD0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SKDaemonManager _idleCallback]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: DA idle received", buf, 0xCu);
  }

  v4 = [(SKDaemonManager *)self diskListCompleteReceived];
  [(SKDaemonManager *)self setDiskListCompleteReceived:0];
  v5 = self->_diskOperationMap;
  objc_sync_enter(v5);
  diskOperationMap = self->_diskOperationMap;
  v7 = [(SKDaemonManager *)self preIdleOperationMap];
  [(NSMutableDictionary *)diskOperationMap addEntriesFromDictionary:v7];

  objc_sync_exit(v5);
  v8 = [(SKDaemonManager *)self preIdleOperationMap];
  [v8 removeAllObjects];

  v9 = [(SKDaemonManager *)self notificationsSyncQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DCDC;
  v10[3] = &unk_1000494C8;
  v10[4] = self;
  v11 = v4;
  dispatch_async(v9, v10);
}

- (id)_diskOperationIdentifierWithDADisk:(id)a3
{
  v3 = a3;
  BSDName = DADiskGetBSDName(v3);
  if (BSDName)
  {
    v5 = [NSString stringWithUTF8String:BSDName];
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = DADiskCopyDescription(v3);
    v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:kDADiskDescriptionVolumeLifsURLKey];
    if (v9)
    {
      v10 = [(__CFDictionary *)v8 objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];
      v11 = [v10 path];
      v5 = [NSString stringWithFormat:@"%@_%@", v9, v11];
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_4;
    }
  }

  v6 = +[NSUUID UUID];
  v5 = [v6 UUIDString];

LABEL_4:

  return v5;
}

- (void)_handleDANotificationWithDisk:(id)a3 operation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(SKDaemonManager *)self _diskOperationIdentifierWithDADisk:v6];
    v14[0] = off_1000592F8;
    v14[1] = off_1000592C0;
    v15[0] = v6;
    v15[1] = v7;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v10 = [(SKDaemonManager *)self preIdleOperationMap];
    [v10 setObject:v9 forKeyedSubscript:v8];

    v11 = [(SKDaemonManager *)self disksNotificationsWaiters];
    objc_sync_enter(v11);
    v12 = [(SKDaemonManager *)self disksNotificationsWaiters];
    v13 = [v12 count] == 0;

    if (!v13)
    {
      [(SKDaemonManager *)self _notifyLockedDisksNotificationsWaitersWithDisk:v6];
    }

    objc_sync_exit(v11);
  }
}

- (void)_notifyLockedDisksNotificationsWaitersWithDisk:(id)a3
{
  v4 = DADiskCopyDescription(a3);
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:kDADiskDescriptionMediaBSDNameKey];
  if (!v5)
  {
    v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:kDADiskDescriptionVolumeLifsURLKey];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = [[NSURL alloc] initWithString:v6];
    v9 = [v8 host];
    v5 = [NSString stringWithFormat:@"apfs://%@", v9];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(SKDaemonManager *)self disksNotificationsWaiters];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 expectedDiskIdentifier];
        v17 = [v16 isEqual:v5];

        if (v17)
        {
          v18 = [v15 semaphore];
          dispatch_semaphore_signal(v18);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

LABEL_14:
}

- (void)dmAsyncStartedForDisk:(__DADisk *)a3
{
  currentOperation = self->currentOperation;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->currentOperation;

    [(SKManagerOperation *)v6 dmAsyncStartedForDisk:a3];
  }
}

- (void)dmAsyncMessageForDisk:(__DADisk *)a3 string:(id)a4 dictionary:(id)a5
{
  v10 = a4;
  v8 = a5;
  currentOperation = self->currentOperation;
  if (objc_opt_respondsToSelector())
  {
    [(SKManagerOperation *)self->currentOperation dmAsyncMessageForDisk:a3 string:v10 dictionary:v8];
  }
}

- (void)dmAsyncFinishedForDisk:(__DADisk *)a3 mainError:(int)a4 detailError:(int)a5 dictionary:(id)a6
{
  v10 = a6;
  if (a3)
  {
    CFRetain(a3);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E76C;
  v12[3] = &unk_100049518;
  v13 = v10;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v12[4] = self;
  v11 = v10;
  [(SKDaemonManager *)self dispatchToWorkThread:v12];
}

- (void)syncAllDisksWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(SKDaemonManager *)self waitForCompletionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E898;
  v7[3] = &unk_1000493B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)wholeDiskForDisk:(id)a3
{
  v4 = a3;
  if ([v4 isWholeDisk])
  {
    v5 = v4;
  }

  else
  {
    v6 = [v4 daDisk];

    if (v6)
    {
      v7 = [v4 daDisk];
      v8 = DADiskCopyWholeDisk(v7);

      if (v8)
      {
        v5 = [(SKDaemonManager *)self _diskWithDADisk:v8];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)wholeDiskForDisk:(id)a3 withCallbackBlock:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001ECC4;
  v7[3] = &unk_100049540;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(SKDaemonManager *)v8 dispatchBoostedToWorkThread:v7];
}

- (void)childDisksForWholeDisk:(id)a3 withCallbackBlock:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001EDE8;
  v9[3] = &unk_100049568;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v12;
  v8 = v6;
  [(SKDaemonManager *)self dispatchBoostedToWorkThread:v9];
}

- (void)isBusy:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EFCC;
  v4[3] = &unk_100049390;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SKDaemonManager *)v5 dispatchBoostedToWorkThread:v4];
}

- (id)formatableFileSystems
{
  v2 = +[SKFilesystem buildFilesystems];
  v3 = [NSPredicate predicateWithBlock:&stru_100049588];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)filesystemsWithCallbackBlock:(id)a3
{
  v3 = a3;
  v4 = +[SKFilesystem buildFilesystems];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v3)
  {
    v3[2](v3, v5);
  }
}

- (id)_filesystemForDMFilesystemType:(id)a3 isEncrypted:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  +[SKFilesystem buildFilesystems];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 dmPersonality];
        if ([v12 isEqualToString:v5])
        {
          v13 = [v11 isEncrypted];

          if (v13 == v4)
          {
            v14 = v11;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)_filesystemForIOContent:(id)a3
{
  v3 = a3;
  +[SKFilesystem buildFilesystems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 contentMask];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_firstFilesystemForMajorType:(id)a3
{
  v3 = a3;
  +[SKFilesystem buildFilesystems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 majorType];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_filesystemForUnlocalizedName:(id)a3 dmPersonality:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SKFilesystem buildFilesystems];
  v8 = v7;
  if (v5)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      v27 = v8;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [v14 unlocalizedName];
          if ([v5 isEqualToString:v15])
          {

            goto LABEL_24;
          }

          v16 = [v14 unlocalizedEncryptedName];
          v17 = [v5 isEqualToString:v16];

          if (v17)
          {
            goto LABEL_24;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        v18 = 0;
        v8 = v27;
        if (v11)
        {
          continue;
        }

        goto LABEL_25;
      }
    }

LABEL_22:
    v18 = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      v27 = v8;
      while (2)
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v14 = *(*(&v28 + 1) + 8 * j);
          v24 = [v14 dmPersonality];
          v25 = [v6 isEqualToString:v24];

          if (v25)
          {
LABEL_24:
            v18 = v14;
            v8 = v27;
            goto LABEL_25;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
        v18 = 0;
        v8 = v27;
        if (v21)
        {
          continue;
        }

        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

  v18 = 0;
LABEL_26:

  return v18;
}

- (void)physicalStoresForAPFSVolume:(id)a3 completionBlock:(id)a4
{
  v26 = a3;
  v6 = a4;
  if (v26 && ([v26 daDisk], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [SKIOMedia alloc];
    v9 = [v26 daDisk];
    v10 = [(SKIOMedia *)v8 initWithDADisk:v9];

    v11 = [(SKIOObject *)v10 ioObjectWithClassName:@"AppleAPFSContainer" iterateParents:1];
    v12 = [v11 copyParent];
    v13 = v12;
    if (v12)
    {
      v24 = v11;
      v25 = v10;
      v23 = v12;
      v14 = [v12 newIteratorWithOptions:2];
      v15 = +[NSMutableArray array];
      v16 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v14];
      if (v16)
      {
        v17 = v16;
        do
        {
          if ([v14 invalidated])
          {
            [v15 removeAllObjects];
          }

          if (IOObjectConformsTo([(SKIOObject *)v17 ioObj], "IOMedia"))
          {
            daSession = self->daSession;
            v19 = [(SKIOMedia *)v17 BSDName];
            v20 = DADiskCreateFromBSDName(0, daSession, [v19 fileSystemRepresentation]);

            if (v20)
            {
              v21 = [(SKDaemonManager *)self _diskWithDADisk:v20];
              if (v21)
              {
                [v15 addObject:v21];
              }
            }
          }

          v22 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v14];

          v17 = v22;
        }

        while (v22);
      }

      v6[2](v6, v15);

      v11 = v24;
      v10 = v25;
      v13 = v23;
    }

    else
    {
      v6[2](v6, &__NSArray0__struct);
    }
  }

  else
  {
    v6[2](v6, &__NSArray0__struct);
  }
}

- (void)volumesForAPFSPS:(id)a3 completionBlock:(id)a4
{
  v35 = a3;
  v5 = a4;
  if (v35 && ([v35 daDisk], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    p_superclass = &OBJC_METACLASS___SKTaskExecuter.superclass;
    v8 = [SKIOMedia alloc];
    v9 = [v35 daDisk];
    v10 = [(SKIOMedia *)v8 initWithDADisk:v9];

    v11 = [(SKIOObject *)v10 ioObjectWithClassName:@"AppleAPFSContainer" iterateParents:0];
    if (v11)
    {
      v31 = v5;
      v33 = v10;
      v12 = +[NSMutableArray array];
      v32 = v11;
      v13 = [v11 newIteratorWithOptions:0];
      v14 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v13];
      if (v14)
      {
        v15 = v14;
        v16 = &CacheDeleteCopyPurgeableSpaceWithInfo_ptr;
        v17 = @"Content";
        v18 = @"41504653-0000-11AA-AA11-00306543ECAC";
        do
        {
          if ([v13 invalidated])
          {
            [v12 removeAllObjects];
          }

          if (IOObjectConformsTo([(SKIOObject *)v15 ioObj], "AppleAPFSVolume"))
          {
            v19 = v16[321];
            v20 = [(SKIOObject *)v15 copyPropertyWithClass:objc_opt_class() key:v17];
            v21 = v20;
            if (v20 && [v20 isEqualToString:v18])
            {
              v22 = v18;
              v23 = p_superclass;
              v24 = v17;
              v25 = v16;
              daSession = self->daSession;
              v27 = [(SKIOMedia *)v15 BSDName];
              v28 = DADiskCreateFromBSDName(0, daSession, [v27 fileSystemRepresentation]);

              if (v28)
              {
                v29 = [(SKDaemonManager *)self _diskWithDADisk:v28];
                if (v29)
                {
                  [v12 addObject:v29];
                }
              }

              v16 = v25;
              v17 = v24;
              p_superclass = v23;
              v18 = v22;
            }
          }

          v30 = [objc_alloc((p_superclass + 179)) initWithIteratorNext:v13];

          v15 = v30;
        }

        while (v30);
      }

      v5 = v31;
      v31[2](v31, v12);

      v11 = v32;
      v10 = v33;
    }

    else
    {
      v5[2](v5, &__NSArray0__struct);
    }
  }

  else
  {
    v5[2](v5, &__NSArray0__struct);
  }
}

- (void)unmountDisk:(id)a3 options:(id)a4 withCompletionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[SKUnmountOperation alloc] initWithDisk:v7 options:v9 withCompletionBlock:v8];

  if (v10)
  {
    v11 = +[SKDaemonManager sharedManager];
    [v11 _scheduleOperation:v10];
  }

  else
  {
    v12 = sub_10000BFD0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not unmount disk %@", &v13, 0xCu);
    }

    v11 = [SKError errorWithCode:102 userInfo:0];
    v8[2](v8, v11);
  }
}

- (void)ejectDisk:(id)a3 withCompletionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[SKEjectOperation alloc] initWithDisk:v5 withCompletionBlock:v6];
  if (v7)
  {
    v8 = +[SKDaemonManager sharedManager];
    [v8 _scheduleOperation:v7];
  }

  else
  {
    v9 = sub_10000BFD0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not eject disk %@", &v10, 0xCu);
    }

    v8 = [SKError errorWithCode:102 userInfo:0];
    v6[2](v6, v8);
  }
}

- (id)eraseWithEraser:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SKEraseOperation alloc] initWithEraser:v6 withCompletionBlock:v5];

  v8 = +[SKDaemonManager sharedManager];
  [v8 _scheduleOperation:v7];

  v9 = [v6 progress];

  return v9;
}

- (id)resize:(id)a3 toSize:(unint64_t)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 daDisk];

  if (v9)
  {
    v10 = [[SKResizeOperation alloc] initWithDisk:v7 toSize:a4 withCompletionBlock:v8];
    if (v10)
    {
      v11 = +[SKDaemonManager sharedManager];
      [v11 _scheduleOperation:v10];

      v12 = [(SKManagerOperation *)v10 skProgress];
      goto LABEL_11;
    }

    v14 = sub_10000BFD0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not resize disk %@", &v17, 0xCu);
    }

    v15 = [SKError errorWithCode:102 userInfo:0];
    v8[2](v8, v15);
  }

  else
  {
    v13 = sub_10000BFD0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Tried to resize a disk with no DADiskRef!", &v17, 2u);
    }

    v10 = [SKError errorWithCode:117 userInfo:0];
    v8[2](v8, v10);
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)addAppearedDisk:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SKDaemonManager(DiskNotifications) addAppearedDisk:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
    }

    v6 = self->allDisks;
    objc_sync_enter(v6);
    [(NSMutableArray *)self->allDisks addObject:v4];
    v7 = [(SKDaemonManager *)self notificationsCache];
    v8 = [v7 appearedDisks];
    [v8 addObject:v4];

    objc_sync_exit(v6);
  }

  return v4 != 0;
}

- (void)addChangedDisk:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SKDaemonManager(DiskNotifications) addChangedDisk:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
    }

    v6 = [(SKDaemonManager *)self notificationsCache];
    v7 = [v6 changedDisks];

    objc_sync_enter(v7);
    v8 = [(SKDaemonManager *)self notificationsCache];
    v9 = [v8 changedDisks];
    [v9 addObject:v4];

    objc_sync_exit(v7);
  }
}

- (void)addDisappearedDisk:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[SKDaemonManager(DiskNotifications) addDisappearedDisk:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
    }

    v6 = self->allDisks;
    objc_sync_enter(v6);
    [(NSMutableArray *)self->allDisks removeObject:v4];
    v7 = [(SKDaemonManager *)self notificationsCache];
    v8 = [v7 disappearedDisks];
    [v8 addObject:v4];

    objc_sync_exit(v6);
  }
}

- (void)addMissingDisappearedDisks
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(SKDaemonManager *)self allDisks];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 136315650;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 _supportsRecaching])
        {
          v10 = [(SKDaemonManager *)self copyUpdatedDADiskForDisk:v9];
          v11 = v10;
          if (!v10 || (v12 = DADiskCopyDescription(v10)) == 0)
          {
            v13 = sub_10000BFD0();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v14;
              v20 = "[SKDaemonManager(DiskNotifications) addMissingDisappearedDisks]";
              v21 = 2112;
              v22 = v9;
              v23 = 2112;
              v24 = v11;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@ (%@) disappeared while DA daemon was down", buf, 0x20u);
            }

            [(SKDaemonManager *)self addDisappearedDisk:v9];
            v12 = 0;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)_processNotificationsWithDiskOperations:(id)a3
{
  v4 = a3;
  v5 = [v4 wholeDiskOperation];
  [(SKDaemonManager *)self _processNotificationWithDiskOperation:v5];

  v6 = [v4 childrenOperations];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v4 childrenOperations];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [(SKDaemonManager *)self notificationsProcessingQueue];
        v12 = [(SKDaemonManager *)self notificationsCache];
        v13 = [v12 processingGroup];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002A0BC;
        v17[3] = &unk_1000499A0;
        v17[4] = self;
        v14 = v4;
        v18 = v14;
        v19 = v10;
        [v11 dispatchWithGroup:v13 block:v17];

        ++v10;
        v15 = [v14 childrenOperations];
        v16 = [v15 count];
      }

      while (v10 < v16);
    }
  }
}

- (id)_processDiskNotificationsForMap:(id)a3 isCompleteDiskList:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[SKNotificationsCache alloc] initWithDiskOperationMap:v6];
  [(SKDaemonManager *)self setNotificationsCache:v7];

  v8 = [(SKDaemonManager *)self notificationsCache];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = [(SKDaemonManager *)self notificationsCache];
  v11 = [v10 disksToProcess];
  v12 = [v11 count];

  if (v12)
  {
    [(SKDaemonManager *)self _invalidateExtendedDiskInfoCache];
    if (v4)
    {
      [(SKDaemonManager *)self addMissingDisappearedDisks];
    }

    v13 = [(SKDaemonManager *)self notificationsCache];
    v14 = [v13 disksToProcess];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = [(SKDaemonManager *)self notificationsProcessingQueue];
        v18 = [(SKDaemonManager *)self notificationsCache];
        v19 = [v18 processingGroup];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10002A4DC;
        v46[3] = &unk_100049400;
        v46[4] = self;
        v46[5] = v16;
        [v17 dispatchWithGroup:v19 block:v46];

        ++v16;
        v20 = [(SKDaemonManager *)self notificationsCache];
        v21 = [v20 disksToProcess];
        v22 = [v21 count];
      }

      while (v16 < v22);
    }

    v23 = [(SKDaemonManager *)self notificationsCache];
    v24 = [v23 processingGroup];
    dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);

    [(SKDaemonManager *)self updateRAIDDisks];
    [(SKDaemonManager *)self removeLIFSAPFSContainers];
    v25 = [(SKDaemonManager *)self notificationsCache];
    v26 = [v25 appearedDisks];
    v27 = [v26 copy];
    [(SKDaemonManager *)self updatePhysicalStoresWithDisks:v27];

    v28 = [(SKDaemonManager *)self notificationsCache];
    v29 = [v28 disappearedDisks];
    v30 = [v29 count];

    if (v30)
    {
      v31 = [(SKDaemonManager *)self notificationsCache];
      v32 = [v31 disappearedDisks];
      [(SKDaemonManager *)self _disksDisappeared:v32];
    }

    v33 = [(SKDaemonManager *)self notificationsCache];
    v34 = [v33 appearedDisks];
    v35 = [v34 count];

    if (v35)
    {
      v36 = [(SKDaemonManager *)self notificationsCache];
      v37 = [v36 appearedDisks];
      [(SKDaemonManager *)self _disksAppeared:v37];
    }

    v38 = [(SKDaemonManager *)self notificationsCache];
    v39 = [v38 changedDisks];
    v40 = [v39 count];

    if (v40)
    {
      v41 = [(SKDaemonManager *)self notificationsCache];
      v42 = [v41 changedDisks];
      [(SKDaemonManager *)self _disksChanged:v42];
    }

    v43 = [(SKDaemonManager *)self notificationsCache];
    v44 = [v43 processedDisk];
  }

  else
  {
LABEL_15:
    v44 = 0;
  }

  return v44;
}

- (void)removePostProcessWithCachedDisk:(id)a3
{
  v4 = a3;
  [(SKDaemonManager *)self addDisappearedDisk:v4];
  [(SKDaemonManager *)self postProcessWithDisk:v4];
}

- (id)_processAppearedOrChangedWithDisk:(id)a3 operation:(id)a4
{
  v5 = a3;
  v6 = DADiskCopyDescription(v5);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = [SKAPFSSnapshotDisk isiOSRootSnapshotWithDiskDescription:v6];
  if ((v7 & 1) != 0 || [SKAPFSDisk isLIFSAPFSWithDiskDescription:v6])
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v17 = [[SKIOMedia alloc] initWithDADisk:v5];
  if (!v17)
  {
LABEL_21:
    v15 = 0;
    goto LABEL_38;
  }

  v18 = v17;
  v9 = [(SKIOObject *)v17 copyPropertyWithClass:objc_opt_class() key:@"Content"];
  v8 = [(SKIOObject *)v18 copyPropertyWithClass:objc_opt_class() key:@"UUID"];

LABEL_5:
  v10 = [(SKDaemonManager *)self _cachedDiskWithDADisk:v5];
  v11 = v10;
  if (v10)
  {
    [v10 setDaDisk:v5];
    if (![(SKDaemonManager *)self diskHasMutated:v11 rawIOContent:v9 diskDesc:v6 mediaUUID:v8])
    {
      if ([v11 _cacheInfo])
      {
        [(SKDaemonManager *)self addChangedDisk:v11];
        v15 = v11;
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    v12 = sub_10000BFD0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[SKDaemonManager(DiskNotifications) _processAppearedOrChangedWithDisk:operation:]";
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Disk %@ mutated", &v22, 0x16u);
    }

    [(SKDaemonManager *)self removePostProcessWithCachedDisk:v11];
  }

  if ([SKAPFSDisk isLIFSAPFSWithDiskDescription:v6])
  {
    v13 = SKAPFSDisk;
    goto LABEL_12;
  }

  if (![SKAPFSStoreDisk isIOMediaStoreWithDisk:v5])
  {
    if ([SKAPFSStoreDisk isLiveFSStoreWithRawIOContent:v9 diskDesc:v6])
    {
      v15 = [[SKAPFSStoreDisk alloc] initWithDADisk:v5 isLiveFSContainer:1];
      if (v15)
      {
        v19 = [[SKAPFSContainerDisk alloc] initWithPhysicalStoreDisk:v5];
        if (v19)
        {
          v14 = v19;
          [(SKDaemonManager *)self addAppearedDisk:v15];
          [(SKDaemonManager *)self addAppearedDisk:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      v14 = v15;
LABEL_30:

      goto LABEL_31;
    }

    if ([v9 isEqualToString:@"EF57347C-0000-11AA-AA11-00306543ECAC"])
    {
      if ([(SKDaemonManager *)self delayedAPFSDiskNotificationWithDisk:v5 wholeDisk:v5])
      {
        goto LABEL_28;
      }

      v13 = SKAPFSContainerDisk;
LABEL_12:
      v14 = [[v13 alloc] initWithDADisk:v5];
      v15 = v14;
      if ([(SKDaemonManager *)self addAppearedDisk:v14])
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if ((v7 & 1) != 0 || [SKAPFSSnapshotDisk diskIsSnapshot:v5])
    {
      v13 = SKAPFSSnapshotDisk;
      goto LABEL_12;
    }

    if (![v9 isEqualToString:@"41504653-0000-11AA-AA11-00306543ECAC"])
    {
LABEL_31:
      v14 = [[SKDisk alloc] initWithDADisk:v5];
      if ([(SKDaemonManager *)self addAppearedDisk:v14])
      {
        v15 = v14;
      }

      else
      {
        v20 = sub_10000BFD0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = "[SKDaemonManager(DiskNotifications) _processAppearedOrChangedWithDisk:operation:]";
          v24 = 2112;
          v25 = v5;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Failed to initialize SKDisk of any kind for %@", &v22, 0x16u);
        }

        v15 = 0;
      }

      goto LABEL_36;
    }

    v14 = DADiskCopyWholeDisk(v5);
    if (![(SKDaemonManager *)self delayedAPFSDiskNotificationWithDisk:v5 wholeDisk:v14])
    {
      v15 = [[SKAPFSDisk alloc] initWithDADisk:v5];
      if ([(SKDaemonManager *)self addAppearedDisk:v15])
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

LABEL_28:
    v15 = 0;
    goto LABEL_37;
  }

  v16 = [[SKAPFSStoreDisk alloc] initWithDADisk:v5 isLiveFSContainer:0];
  if (!v16)
  {
    goto LABEL_31;
  }

  v15 = v16;
  [(SKDaemonManager *)self addAppearedDisk:v16];
LABEL_37:

LABEL_38:

  return v15;
}

- (void)postProcessWithDisk:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 apfsVolumeGroupUUID];

    if (v5)
    {
      v6 = [v4 container];
      if (v6)
      {
        v25 = v3;
        v7 = sub_10000BFD0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v4 diskIdentifier];
          v9 = [v4 apfsVolumeGroupUUID];
          *buf = 136315650;
          v33 = "[SKDaemonManager(DiskNotifications) postProcessWithDisk:]";
          v34 = 2114;
          v35 = v8;
          v36 = 2114;
          v37 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: volume %{public}@ changed or disappeared, looking for other volumes in group %{public}@", buf, 0x20u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v24 = v6;
        v10 = [v6 volumes];
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [v15 apfsVolumeGroupUUID];
              if (v16)
              {
                v17 = v16;
                v18 = [v4 apfsVolumeGroupUUID];
                v19 = [v15 apfsVolumeGroupUUID];
                if ([v18 isEqualToString:v19])
                {
                  v20 = [v4 isEqual:v15];

                  if ((v20 & 1) == 0)
                  {
                    v21 = sub_10000BFD0();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      v22 = [v15 diskIdentifier];
                      v23 = [v15 apfsVolumeGroupUUID];
                      *buf = 136315650;
                      v33 = "[SKDaemonManager(DiskNotifications) postProcessWithDisk:]";
                      v34 = 2114;
                      v35 = v22;
                      v36 = 2114;
                      v37 = v23;
                      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ is also a member of %{public}@ group, re-caching it", buf, 0x20u);
                    }

                    if ([v15 _cacheInfo])
                    {
                      [(SKDaemonManager *)self addChangedDisk:v15];
                    }
                  }
                }

                else
                {
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v12);
        }

        v6 = v24;
        v3 = v25;
      }
    }
  }
}

- (void)_processNotificationWithDiskOperation:(id)a3
{
  v4 = a3;
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to process: %{public}@", &v15, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:off_1000592C0];
  v7 = [v4 objectForKeyedSubscript:off_1000592F8];
  if ([v6 isEqualToString:off_1000592D8])
  {
    v8 = [(SKDaemonManager *)self _cachedDiskWithDADisk:v7];
    [(SKDaemonManager *)self addDisappearedDisk:v8];
  }

  else
  {
    v9 = [(SKDaemonManager *)self _processAppearedOrChangedWithDisk:v7 operation:v4];
    v10 = [(SKDaemonManager *)self notificationsCache];
    objc_sync_enter(v10);
    v11 = [(SKDaemonManager *)self notificationsCache];
    v12 = [v11 processedDisk];
    v13 = v12 == 0;

    if (v13)
    {
      v14 = [(SKDaemonManager *)self notificationsCache];
      [v14 setProcessedDisk:v9];
    }

    objc_sync_exit(v10);

    if ([v6 isEqualToString:off_1000592D0])
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v8)
  {
    [(SKDaemonManager *)self postProcessWithDisk:v8];
  }
}

- (void)updatePhysicalStoresWithContainer:(id)a3
{
  v22 = a3;
  v24 = [v22 copyPhysicalStoresUUIDs];
  v4 = +[NSMutableArray array];
  obj = self->allDisks;
  objc_sync_enter(obj);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->allDisks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if ([v9 isMemberOfClass:objc_opt_class()])
        {
          v10 = [v9 mediaUUID];
          v11 = [v24 containsObject:v10];

          if (v11)
          {
            [v4 addObject:v9];
          }
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        v17 = sub_10000BFD0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 diskIdentifier];
          *buf = 136315394;
          v34 = "[SKDaemonManager(DiskNotifications) updatePhysicalStoresWithContainer:]";
          v35 = 2114;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Re-creating APFS physical store %{public}@", buf, 0x16u);
        }

        v19 = [SKAPFSStoreDisk alloc];
        v20 = [v16 daDisk];
        v21 = [v19 initWithDADisk:v20 isLiveFSContainer:0];

        if (v21)
        {
          [(SKDaemonManager *)self addDisappearedDisk:v16];
          [(SKDaemonManager *)self addAppearedDisk:v21];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v13);
  }
}

- (void)updatePhysicalStoresWithDisks:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 isLiveFSAPFSDisk] & 1) == 0)
        {
          [(SKDaemonManager *)self updatePhysicalStoresWithContainer:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)diskHasMutated:(id)a3 rawIOContent:(id)a4 diskDesc:(id)a5 mediaUUID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 isIOMediaDisk])
  {
    v13 = [v9 daDisk];
    if ([SKAPFSStoreDisk isIOMediaStoreWithDisk:v13])
    {
      v14 = 1;
    }

    else
    {
      v14 = [SKAPFSStoreDisk isLiveFSStoreWithRawIOContent:v10 diskDesc:v11];
    }

    v16 = [v10 isEqualToString:@"EF57347C-0000-11AA-AA11-00306543ECAC"];
    v17 = [v10 isEqualToString:@"41504653-0000-11AA-AA11-00306543ECAC"];
    v18 = [v9 isMemberOfClass:objc_opt_class()];
    if (v14)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v18)
    {
      goto LABEL_16;
    }

    v19 = [v9 isMemberOfClass:objc_opt_class()];
    if (v16)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (v17)
      {
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (isKindOfClass)
      {
        goto LABEL_16;
      }

      v22 = [v9 mediaUUID];
      v23 = v12;
      v24 = v23;
      if ((v23 != 0) != (v22 != 0) || v23 && ([v22 isEqualToString:v23] & 1) == 0)
      {
        v25 = sub_10000BFD0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v9 diskIdentifier];
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = 136316162;
          v30 = "[SKDaemonManager(DiskNotifications) diskHasMutated:rawIOContent:diskDesc:mediaUUID:]";
          v31 = 2114;
          v32 = v26;
          v33 = 2114;
          v34 = v28;
          v35 = 2114;
          v36 = v22;
          v37 = 2114;
          v38 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: UUID of %{public}@ (%{public}@) changed from %{public}@ to %{public}@", &v29, 0x34u);
        }

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_17;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    v15 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (void)removeLIFSAPFSContainers
{
  v3 = objc_alloc_init(NSMutableSet);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(SKDaemonManager *)self notificationsCache];
  v5 = [v4 disappearedDisks];

  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 privateCache];
          v13 = [v12 isLiveFSContainer];

          if (v13)
          {
            v14 = [v11 container];
            v15 = v14;
            if (v14)
            {
              v16 = [v14 designatedPhysicalStore];
              if (!v16)
              {
                [v3 addObject:v15];
              }
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SKDaemonManager *)self addDisappearedDisk:*(*(&v22 + 1) + 8 * j), v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

@end
@interface SKDaemonManager
+ (id)sharedManager;
- (BOOL)addAppearedDisk:(id)disk;
- (BOOL)diskHasMutated:(id)mutated rawIOContent:(id)content diskDesc:(id)desc mediaUUID:(id)d;
- (SKDaemonManager)init;
- (id)_apfsStoreDiskWithUUID:(id)d;
- (id)_cachedDiskWithDADisk:(id)disk;
- (id)_cachedDiskWithDiskIdentifier:(id)identifier;
- (id)_diskOperationIdentifierWithDADisk:(id)disk;
- (id)_diskWithDADisk:(id)disk;
- (id)_filesystemForDMFilesystemType:(id)type isEncrypted:(BOOL)encrypted;
- (id)_filesystemForIOContent:(id)content;
- (id)_filesystemForUnlocalizedName:(id)name dmPersonality:(id)personality;
- (id)_firstFilesystemForMajorType:(id)type;
- (id)_fullRecacheWithDisks:(id)disks options:(unint64_t)options;
- (id)_processAppearedOrChangedWithDisk:(id)disk operation:(id)operation;
- (id)_processDiskNotificationsForMap:(id)map isCompleteDiskList:(BOOL)list;
- (id)_recacheSyncDisk:(id)disk;
- (id)allDisks;
- (id)copyExtendedDiskInfoWithDiskIdentifier:(id)identifier;
- (id)copyUpdatedDADiskForDisk:(id)disk;
- (id)eraseWithEraser:(id)eraser completionBlock:(id)block;
- (id)formatableFileSystems;
- (id)knownDiskForDictionary:(id)dictionary;
- (id)resize:(id)resize toSize:(unint64_t)size completionBlock:(id)block;
- (id)rootWholeDisk;
- (id)wholeDiskForDisk:(id)disk;
- (unint64_t)nextDiskObjectID;
- (void)_addToExtendedDiskInfoCacheWithDictionary:(id)dictionary;
- (void)_advanceOperationQueue;
- (void)_advanceOperationQueueOnWorkQueue;
- (void)_diskEjectThread;
- (void)_diskQueueHeartbeat;
- (void)_diskQueueWatchdog;
- (void)_disksAppeared:(id)appeared;
- (void)_disksChanged:(id)changed;
- (void)_disksDisappeared:(id)disappeared;
- (void)_fastRecacheWithDisks:(id)disks options:(unint64_t)options;
- (void)_handleDANotificationWithDisk:(id)disk operation:(id)operation;
- (void)_idleCallback;
- (void)_invalidateExtendedDiskInfoCache;
- (void)_notifyLockedDisksNotificationsWaitersWithDisk:(id)disk;
- (void)_performDiskStateUpdateSelector:(SEL)selector onListener:(id)listener withDisks:(id)disks;
- (void)_processNotificationWithDiskOperation:(id)operation;
- (void)_processNotificationsWithDiskOperations:(id)operations;
- (void)_scheduleGenericOperationWithCompletionBlock:(id)block;
- (void)_scheduleOperation:(id)operation;
- (void)_workerThread;
- (void)addChangedDisk:(id)disk;
- (void)addDisappearedDisk:(id)disk;
- (void)addListener:(id)listener;
- (void)addMissingDisappearedDisks;
- (void)childDisksForWholeDisk:(id)disk withCallbackBlock:(id)block;
- (void)createDASession;
- (void)dispatchBoostedToWorkThread:(id)thread;
- (void)dispatchSyncToEjectThread:(id)thread;
- (void)dispatchSyncToWorkThread:(id)thread;
- (void)dispatchToEjectThread:(id)thread;
- (void)dispatchToWorkThread:(id)thread;
- (void)dmAsyncFinishedForDisk:(__DADisk *)disk mainError:(int)error detailError:(int)detailError dictionary:(id)dictionary;
- (void)dmAsyncMessageForDisk:(__DADisk *)disk string:(id)string dictionary:(id)dictionary;
- (void)dmAsyncStartedForDisk:(__DADisk *)disk;
- (void)ejectDisk:(id)disk withCompletionBlock:(id)block;
- (void)filesystemsWithCallbackBlock:(id)block;
- (void)isBusy:(id)busy;
- (void)performVMDiskResizeWithSize:(unint64_t)size;
- (void)physicalStoresForAPFSVolume:(id)volume completionBlock:(id)block;
- (void)postProcessWithDisk:(id)disk;
- (void)recacheDisk:(id)disk options:(unint64_t)options callbackBlock:(id)block;
- (void)registerDiskArbCallbacks;
- (void)removeLIFSAPFSContainers;
- (void)removeListener:(id)listener;
- (void)removePostProcessWithCachedDisk:(id)disk;
- (void)renameDisk:(id)disk to:(id)to withCompletionBlock:(id)block;
- (void)syncAllDisksWithCompletionBlock:(id)block;
- (void)unmountDisk:(id)disk options:(id)options withCompletionBlock:(id)block;
- (void)updatePhysicalStoresWithContainer:(id)container;
- (void)updatePhysicalStoresWithDisks:(id)disks;
- (void)volumesForAPFSPS:(id)s completionBlock:(id)block;
- (void)wholeDiskForDisk:(id)disk withCallbackBlock:(id)block;
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

- (void)dispatchToWorkThread:(id)thread
{
  diskWorkThread = self->diskWorkThread;
  v5 = objc_retainBlock(thread);
  [(SKDaemonManager *)self performSelector:"_doBlockOnWorkThread:" onThread:diskWorkThread withObject:v5 waitUntilDone:0];
}

- (void)dispatchSyncToWorkThread:(id)thread
{
  diskWorkThread = self->diskWorkThread;
  v5 = objc_retainBlock(thread);
  [(SKDaemonManager *)self performSelector:"_doBlockOnWorkThread:" onThread:diskWorkThread withObject:v5 waitUntilDone:1];
}

- (void)dispatchToEjectThread:(id)thread
{
  diskEjectThread = self->diskEjectThread;
  v5 = objc_retainBlock(thread);
  [(SKDaemonManager *)self performSelector:"_doBlockOnEjectThread:" onThread:diskEjectThread withObject:v5 waitUntilDone:0];
}

- (void)dispatchSyncToEjectThread:(id)thread
{
  diskEjectThread = self->diskEjectThread;
  v5 = objc_retainBlock(thread);
  [(SKDaemonManager *)self performSelector:"_doBlockOnEjectThread:" onThread:diskEjectThread withObject:v5 waitUntilDone:1];
}

- (void)dispatchBoostedToWorkThread:(id)thread
{
  threadCopy = thread;
  boosterQueue = [(SKDaemonManager *)self boosterQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019EF0;
  v7[3] = &unk_1000493B8;
  v7[4] = self;
  v8 = threadCopy;
  v6 = threadCopy;
  [boosterQueue dispatchWithBlock:v7];
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

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  allDisks = [(SKDaemonManager *)self allDisks];
  v5 = self->_listeners;
  objc_sync_enter(v5);
  [(NSMutableSet *)self->_listeners addObject:listenerCopy];
  if ([allDisks count])
  {
    [(SKDaemonManager *)self _performDiskStateUpdateSelector:"disksAppeared:" onListener:listenerCopy withDisks:allDisks];
  }

  objc_sync_exit(v5);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_listeners;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_listeners removeObject:listenerCopy];
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

- (id)knownDiskForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"diskIdentifier"];
  v6 = [dictionaryCopy objectForKey:@"type"];
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

  v7 = [dictionaryCopy objectForKeyedSubscript:@"mountPoint"];
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
        mountPoint = [v8 mountPoint];
        v10 = [mountPoint isEqualToString:@"/"];

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
    container = [v11 container];
    designatedPhysicalStore = [container designatedPhysicalStore];
    v14 = [(SKDaemonManager *)self wholeDiskForDisk:designatedPhysicalStore];
    if (!v14)
    {
      v15 = sub_10000BFD0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "[SKDaemonManager rootWholeDisk]";
        v23 = 2112;
        v24 = container;
        v25 = 2112;
        v26 = designatedPhysicalStore;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Couldn't find root disk. container: %@, PS: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    container = sub_10000BFD0();
    if (os_log_type_enabled(container, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, container, OS_LOG_TYPE_ERROR, "Root volume must be APFS - found: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (void)performVMDiskResizeWithSize:(unint64_t)size
{
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    sizeCopy = size;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested to resize the VM's internal disk to %lld bytes", buf, 0xCu);
  }

  v6 = sub_10000BFD0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    sizeCopy = "[SKDaemonManager performVMDiskResizeWithSize:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Root disk (the system's snapshot) might appear after first DA idle, waiting a bit", buf, 0xCu);
  }

  sleep(1u);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AC34;
  v7[3] = &unk_100049400;
  v7[4] = self;
  v7[5] = size;
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
        lastOperationName = [(SKDaemonManager *)self lastOperationName];
        *buf = 138412290;
        v35 = lastOperationName;
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

- (id)_cachedDiskWithDiskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (sub_1000101BC(identifierCopy))
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
          diskIdentifier = [v10 diskIdentifier];
          v12 = [identifierCopy isEqual:diskIdentifier];

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

- (id)_cachedDiskWithDADisk:(id)disk
{
  diskCopy = disk;
  if (diskCopy)
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
          daDisk = [v10 daDisk];
          if (daDisk)
          {
            daDisk2 = [v10 daDisk];
            v13 = [diskCopy isEqual:daDisk2];

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

- (id)_diskWithDADisk:(id)disk
{
  diskCopy = disk;
  if (diskCopy)
  {
    v5 = [(SKDaemonManager *)self _cachedDiskWithDADisk:diskCopy];
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
      v8 = [(SKDaemonManager *)self _diskOperationIdentifierWithDADisk:diskCopy];
      v24 = v8;
      v22[0] = off_1000592F8;
      v22[1] = off_1000592C0;
      v23[0] = diskCopy;
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

- (void)renameDisk:(id)disk to:(id)to withCompletionBlock:(id)block
{
  toCopy = to;
  blockCopy = block;
  diskCopy = disk;
  v11 = [[SKRenameOperation alloc] initWithDisk:diskCopy name:toCopy withCompletionBlock:blockCopy];

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
      selfCopy = self;
      v16 = 2112;
      v17 = toCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not rename disk %@ to %@", &v14, 0x16u);
    }

    v12 = [SKError errorWithCode:102 userInfo:0];
    blockCopy[2](blockCopy, v12);
  }
}

- (id)_apfsStoreDiskWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
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
            apfsUUID = [v10 apfsUUID];
            v12 = [apfsUUID isEqualToString:dCopy];

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

- (void)_addToExtendedDiskInfoCacheWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  obj = self->_extendedDiskInfoCache;
  objc_sync_enter(obj);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_extendedDiskInfoCache objectForKeyedSubscript:v9];

        if (v10)
        {
          v11 = [(NSMutableDictionary *)self->_extendedDiskInfoCache objectForKeyedSubscript:v9];
          v12 = [dictionaryCopy objectForKeyedSubscript:v9];
          [v11 addEntriesFromDictionary:v12];
        }

        else
        {
          v11 = [dictionaryCopy objectForKeyedSubscript:v9];
          v12 = [NSMutableDictionary dictionaryWithDictionary:v11];
          [(NSMutableDictionary *)self->_extendedDiskInfoCache setObject:v12 forKeyedSubscript:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
}

- (id)copyExtendedDiskInfoWithDiskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_extendedDiskInfoCache;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_extendedDiskInfoCache objectForKeyedSubscript:identifierCopy];
  v7 = [v6 copy];

  objc_sync_exit(v5);
  return v7;
}

- (id)copyUpdatedDADiskForDisk:(id)disk
{
  diskCopy = disk;
  if ([diskCopy isIOMediaDisk])
  {
    daSession = self->daSession;
    diskIdentifier = [diskCopy diskIdentifier];
    v7 = DADiskCreateFromBSDName(0, daSession, [diskIdentifier UTF8String]);
  }

  else
  {
    mountPoint = [diskCopy mountPoint];

    if (!mountPoint)
    {
      v10 = 0;
      goto LABEL_6;
    }

    mountPoint2 = [diskCopy mountPoint];
    diskIdentifier = [NSURL fileURLWithPath:mountPoint2];

    v7 = DADiskCreateFromVolumePath(0, self->daSession, diskIdentifier);
  }

  v10 = v7;

LABEL_6:
  return v10;
}

- (void)_fastRecacheWithDisks:(id)disks options:(unint64_t)options
{
  optionsCopy = options;
  disksCopy = disks;
  selfCopy = self;
  [(SKDaemonManager *)self _invalidateExtendedDiskInfoCache];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(disksCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = disksCopy;
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
            v25 = optionsCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@ options=0x%x", buf, 0x1Cu);
          }

          [v13 _cacheSpacesWithPurgeable:(optionsCopy & 4) == 0];
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v10);
  }

  [(SKDaemonManager *)selfCopy _disksChanged:v7];
}

- (id)_fullRecacheWithDisks:(id)disks options:(unint64_t)options
{
  disksCopy = disks;
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
  v6 = disksCopy;
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
            v14 = [NSNumber numberWithUnsignedInteger:options];
            v43[2] = v14;
            v15 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
            diskIdentifier = [v11 diskIdentifier];
            [v24 setObject:v15 forKeyedSubscript:diskIdentifier];

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

- (void)recacheDisk:(id)disk options:(unint64_t)options callbackBlock:(id)block
{
  diskCopy = disk;
  blockCopy = block;
  if (diskCopy && ([diskCopy diskIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [NSMutableArray arrayWithObject:diskCopy];
    if (options)
    {
      children = [diskCopy children];
      if (children)
      {
        [v11 addObjectsFromArray:children];
      }
    }

    if ((options & 2) != 0)
    {
      [(SKDaemonManager *)self _fastRecacheWithDisks:v11 options:options];
      if (blockCopy)
      {
        blockCopy[2](blockCopy);
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
      optionsCopy = options;
      v15 = blockCopy;
      [(SKDaemonManager *)self dispatchBoostedToWorkThread:v13];
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (id)_recacheSyncDisk:(id)disk
{
  if (disk)
  {
    diskCopy = disk;
    diskCopy2 = disk;
    v5 = [NSArray arrayWithObjects:&diskCopy count:1];

    diskCopy = [(SKDaemonManager *)self _fullRecacheWithDisks:v5 options:0, diskCopy];
  }

  else
  {
    diskCopy = 0;
  }

  return diskCopy;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  boosterQueue = [(SKDaemonManager *)self boosterQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CBCC;
  v7[3] = &unk_100048F38;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  [boosterQueue dispatchWithBlock:v7];
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

- (void)_scheduleGenericOperationWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 setCompletionBlock:blockCopy];
  if (v4)
  {
    [(SKDaemonManager *)self _scheduleOperation:v4];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)_disksChanged:(id)changed
{
  changedCopy = changed;
  v17 = 112;
  obj = self->_listeners;
  objc_sync_enter(obj);
  allDisks = [(SKDaemonManager *)self allDisks];
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(changedCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = changedCopy;
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
        if ([allDisks containsObject:{v11, v17}])
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

- (void)_disksAppeared:(id)appeared
{
  appearedCopy = appeared;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  sub_10000C17C(OS_LOG_TYPE_DEFAULT, "DAEMON - Disks appeared:", appearedCopy);
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

        [(SKDaemonManager *)self _performDiskStateUpdateSelector:"disksAppeared:" onListener:*(*(&v10 + 1) + 8 * i) withDisks:appearedCopy, v10];
      }

      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)_disksDisappeared:(id)disappeared
{
  disappearedCopy = disappeared;
  v5 = self->_listeners;
  objc_sync_enter(v5);
  sub_10000C17C(OS_LOG_TYPE_DEFAULT, "DAEMON - Disks disappeared:", disappearedCopy);
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

        [(SKDaemonManager *)self _performDiskStateUpdateSelector:"disksDisappeared:" onListener:*(*(&v10 + 1) + 8 * i) withDisks:disappearedCopy, v10];
      }

      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)_performDiskStateUpdateSelector:(SEL)selector onListener:(id)listener withDisks:(id)disks
{
  listenerCopy = listener;
  disksCopy = disks;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [disksCopy count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = disksCopy;
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

        dictionaryRepresentation = [*(*(&v22 + 1) + 8 * v14) dictionaryRepresentation];
        [v9 addObject:dictionaryRepresentation];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  if (objc_opt_respondsToSelector())
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([listenerCopy visibleDiskRoles], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001DA50;
      v20[3] = &unk_1000494A0;
      v17 = listenerCopy;
      v21 = v17;
      v18 = [NSPredicate predicateWithBlock:v20];
      v19 = [v9 filteredArrayUsingPredicate:v18];
      [v17 performSelector:selector withObject:v19];
    }

    else
    {
      [listenerCopy performSelector:selector withObject:v9];
    }
  }
}

- (unint64_t)nextDiskObjectID
{
  lastDiskObjectIDLock = [(SKDaemonManager *)self lastDiskObjectIDLock];
  objc_sync_enter(lastDiskObjectIDLock);
  v4 = self->_lastDiskObjectID + 1;
  self->_lastDiskObjectID = v4;
  objc_sync_exit(lastDiskObjectIDLock);

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

  diskListCompleteReceived = [(SKDaemonManager *)self diskListCompleteReceived];
  [(SKDaemonManager *)self setDiskListCompleteReceived:0];
  v5 = self->_diskOperationMap;
  objc_sync_enter(v5);
  diskOperationMap = self->_diskOperationMap;
  preIdleOperationMap = [(SKDaemonManager *)self preIdleOperationMap];
  [(NSMutableDictionary *)diskOperationMap addEntriesFromDictionary:preIdleOperationMap];

  objc_sync_exit(v5);
  preIdleOperationMap2 = [(SKDaemonManager *)self preIdleOperationMap];
  [preIdleOperationMap2 removeAllObjects];

  notificationsSyncQueue = [(SKDaemonManager *)self notificationsSyncQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DCDC;
  v10[3] = &unk_1000494C8;
  v10[4] = self;
  v11 = diskListCompleteReceived;
  dispatch_async(notificationsSyncQueue, v10);
}

- (id)_diskOperationIdentifierWithDADisk:(id)disk
{
  diskCopy = disk;
  BSDName = DADiskGetBSDName(diskCopy);
  if (BSDName)
  {
    uUIDString = [NSString stringWithUTF8String:BSDName];
    if (uUIDString)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = DADiskCopyDescription(diskCopy);
    v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:kDADiskDescriptionVolumeLifsURLKey];
    if (v9)
    {
      v10 = [(__CFDictionary *)v8 objectForKeyedSubscript:kDADiskDescriptionVolumePathKey];
      path = [v10 path];
      uUIDString = [NSString stringWithFormat:@"%@_%@", v9, path];
    }

    else
    {
      uUIDString = 0;
    }

    if (uUIDString)
    {
      goto LABEL_4;
    }
  }

  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

LABEL_4:

  return uUIDString;
}

- (void)_handleDANotificationWithDisk:(id)disk operation:(id)operation
{
  diskCopy = disk;
  operationCopy = operation;
  if (diskCopy)
  {
    v8 = [(SKDaemonManager *)self _diskOperationIdentifierWithDADisk:diskCopy];
    v14[0] = off_1000592F8;
    v14[1] = off_1000592C0;
    v15[0] = diskCopy;
    v15[1] = operationCopy;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    preIdleOperationMap = [(SKDaemonManager *)self preIdleOperationMap];
    [preIdleOperationMap setObject:v9 forKeyedSubscript:v8];

    disksNotificationsWaiters = [(SKDaemonManager *)self disksNotificationsWaiters];
    objc_sync_enter(disksNotificationsWaiters);
    disksNotificationsWaiters2 = [(SKDaemonManager *)self disksNotificationsWaiters];
    v13 = [disksNotificationsWaiters2 count] == 0;

    if (!v13)
    {
      [(SKDaemonManager *)self _notifyLockedDisksNotificationsWaitersWithDisk:diskCopy];
    }

    objc_sync_exit(disksNotificationsWaiters);
  }
}

- (void)_notifyLockedDisksNotificationsWaitersWithDisk:(id)disk
{
  v4 = DADiskCopyDescription(disk);
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
    host = [v8 host];
    v5 = [NSString stringWithFormat:@"apfs://%@", host];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  disksNotificationsWaiters = [(SKDaemonManager *)self disksNotificationsWaiters];
  v11 = [disksNotificationsWaiters countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(disksNotificationsWaiters);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        expectedDiskIdentifier = [v15 expectedDiskIdentifier];
        v17 = [expectedDiskIdentifier isEqual:v5];

        if (v17)
        {
          semaphore = [v15 semaphore];
          dispatch_semaphore_signal(semaphore);
        }
      }

      v12 = [disksNotificationsWaiters countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

LABEL_14:
}

- (void)dmAsyncStartedForDisk:(__DADisk *)disk
{
  currentOperation = self->currentOperation;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->currentOperation;

    [(SKManagerOperation *)v6 dmAsyncStartedForDisk:disk];
  }
}

- (void)dmAsyncMessageForDisk:(__DADisk *)disk string:(id)string dictionary:(id)dictionary
{
  stringCopy = string;
  dictionaryCopy = dictionary;
  currentOperation = self->currentOperation;
  if (objc_opt_respondsToSelector())
  {
    [(SKManagerOperation *)self->currentOperation dmAsyncMessageForDisk:disk string:stringCopy dictionary:dictionaryCopy];
  }
}

- (void)dmAsyncFinishedForDisk:(__DADisk *)disk mainError:(int)error detailError:(int)detailError dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (disk)
  {
    CFRetain(disk);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E76C;
  v12[3] = &unk_100049518;
  v13 = dictionaryCopy;
  diskCopy = disk;
  errorCopy = error;
  detailErrorCopy = detailError;
  v12[4] = self;
  v11 = dictionaryCopy;
  [(SKDaemonManager *)self dispatchToWorkThread:v12];
}

- (void)syncAllDisksWithCompletionBlock:(id)block
{
  blockCopy = block;
  waitForCompletionQueue = [(SKDaemonManager *)self waitForCompletionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E898;
  v7[3] = &unk_1000493B8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(waitForCompletionQueue, v7);
}

- (id)wholeDiskForDisk:(id)disk
{
  diskCopy = disk;
  if ([diskCopy isWholeDisk])
  {
    v5 = diskCopy;
  }

  else
  {
    daDisk = [diskCopy daDisk];

    if (daDisk)
    {
      daDisk2 = [diskCopy daDisk];
      v8 = DADiskCopyWholeDisk(daDisk2);

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

- (void)wholeDiskForDisk:(id)disk withCallbackBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001ECC4;
  v7[3] = &unk_100049540;
  selfCopy = self;
  diskCopy = disk;
  blockCopy = block;
  v5 = blockCopy;
  v6 = diskCopy;
  [(SKDaemonManager *)selfCopy dispatchBoostedToWorkThread:v7];
}

- (void)childDisksForWholeDisk:(id)disk withCallbackBlock:(id)block
{
  diskCopy = disk;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001EDE8;
  v9[3] = &unk_100049568;
  selfCopy = self;
  blockCopy = block;
  v10 = diskCopy;
  v7 = blockCopy;
  v8 = diskCopy;
  [(SKDaemonManager *)self dispatchBoostedToWorkThread:v9];
}

- (void)isBusy:(id)busy
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EFCC;
  v4[3] = &unk_100049390;
  selfCopy = self;
  busyCopy = busy;
  v3 = busyCopy;
  [(SKDaemonManager *)selfCopy dispatchBoostedToWorkThread:v4];
}

- (id)formatableFileSystems
{
  v2 = +[SKFilesystem buildFilesystems];
  v3 = [NSPredicate predicateWithBlock:&stru_100049588];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)filesystemsWithCallbackBlock:(id)block
{
  blockCopy = block;
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

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:dictionaryRepresentation];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v5);
  }
}

- (id)_filesystemForDMFilesystemType:(id)type isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  typeCopy = type;
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
        dmPersonality = [v11 dmPersonality];
        if ([dmPersonality isEqualToString:typeCopy])
        {
          isEncrypted = [v11 isEncrypted];

          if (isEncrypted == encryptedCopy)
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

- (id)_filesystemForIOContent:(id)content
{
  contentCopy = content;
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
        contentMask = [v8 contentMask];
        v10 = [contentMask isEqualToString:contentCopy];

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

- (id)_firstFilesystemForMajorType:(id)type
{
  typeCopy = type;
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
        majorType = [v8 majorType];
        v10 = [majorType isEqualToString:typeCopy];

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

- (id)_filesystemForUnlocalizedName:(id)name dmPersonality:(id)personality
{
  nameCopy = name;
  personalityCopy = personality;
  v7 = +[SKFilesystem buildFilesystems];
  v8 = v7;
  if (nameCopy)
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
          unlocalizedName = [v14 unlocalizedName];
          if ([nameCopy isEqualToString:unlocalizedName])
          {

            goto LABEL_24;
          }

          unlocalizedEncryptedName = [v14 unlocalizedEncryptedName];
          v17 = [nameCopy isEqualToString:unlocalizedEncryptedName];

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

  if (personalityCopy)
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
          dmPersonality = [v14 dmPersonality];
          v25 = [personalityCopy isEqualToString:dmPersonality];

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

- (void)physicalStoresForAPFSVolume:(id)volume completionBlock:(id)block
{
  volumeCopy = volume;
  blockCopy = block;
  if (volumeCopy && ([volumeCopy daDisk], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [SKIOMedia alloc];
    daDisk = [volumeCopy daDisk];
    v10 = [(SKIOMedia *)v8 initWithDADisk:daDisk];

    v11 = [(SKIOObject *)v10 ioObjectWithClassName:@"AppleAPFSContainer" iterateParents:1];
    copyParent = [v11 copyParent];
    v13 = copyParent;
    if (copyParent)
    {
      v24 = v11;
      v25 = v10;
      v23 = copyParent;
      v14 = [copyParent newIteratorWithOptions:2];
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
            bSDName = [(SKIOMedia *)v17 BSDName];
            v20 = DADiskCreateFromBSDName(0, daSession, [bSDName fileSystemRepresentation]);

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

      blockCopy[2](blockCopy, v15);

      v11 = v24;
      v10 = v25;
      v13 = v23;
    }

    else
    {
      blockCopy[2](blockCopy, &__NSArray0__struct);
    }
  }

  else
  {
    blockCopy[2](blockCopy, &__NSArray0__struct);
  }
}

- (void)volumesForAPFSPS:(id)s completionBlock:(id)block
{
  sCopy = s;
  blockCopy = block;
  if (sCopy && ([sCopy daDisk], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    p_superclass = &OBJC_METACLASS___SKTaskExecuter.superclass;
    v8 = [SKIOMedia alloc];
    daDisk = [sCopy daDisk];
    v10 = [(SKIOMedia *)v8 initWithDADisk:daDisk];

    v11 = [(SKIOObject *)v10 ioObjectWithClassName:@"AppleAPFSContainer" iterateParents:0];
    if (v11)
    {
      v31 = blockCopy;
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
              bSDName = [(SKIOMedia *)v15 BSDName];
              v28 = DADiskCreateFromBSDName(0, daSession, [bSDName fileSystemRepresentation]);

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

      blockCopy = v31;
      v31[2](v31, v12);

      v11 = v32;
      v10 = v33;
    }

    else
    {
      blockCopy[2](blockCopy, &__NSArray0__struct);
    }
  }

  else
  {
    blockCopy[2](blockCopy, &__NSArray0__struct);
  }
}

- (void)unmountDisk:(id)disk options:(id)options withCompletionBlock:(id)block
{
  diskCopy = disk;
  blockCopy = block;
  optionsCopy = options;
  v10 = [[SKUnmountOperation alloc] initWithDisk:diskCopy options:optionsCopy withCompletionBlock:blockCopy];

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
      v14 = diskCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not unmount disk %@", &v13, 0xCu);
    }

    v11 = [SKError errorWithCode:102 userInfo:0];
    blockCopy[2](blockCopy, v11);
  }
}

- (void)ejectDisk:(id)disk withCompletionBlock:(id)block
{
  diskCopy = disk;
  blockCopy = block;
  v7 = [[SKEjectOperation alloc] initWithDisk:diskCopy withCompletionBlock:blockCopy];
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
      v11 = diskCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not eject disk %@", &v10, 0xCu);
    }

    v8 = [SKError errorWithCode:102 userInfo:0];
    blockCopy[2](blockCopy, v8);
  }
}

- (id)eraseWithEraser:(id)eraser completionBlock:(id)block
{
  blockCopy = block;
  eraserCopy = eraser;
  v7 = [[SKEraseOperation alloc] initWithEraser:eraserCopy withCompletionBlock:blockCopy];

  v8 = +[SKDaemonManager sharedManager];
  [v8 _scheduleOperation:v7];

  progress = [eraserCopy progress];

  return progress;
}

- (id)resize:(id)resize toSize:(unint64_t)size completionBlock:(id)block
{
  resizeCopy = resize;
  blockCopy = block;
  daDisk = [resizeCopy daDisk];

  if (daDisk)
  {
    v10 = [[SKResizeOperation alloc] initWithDisk:resizeCopy toSize:size withCompletionBlock:blockCopy];
    if (v10)
    {
      v11 = +[SKDaemonManager sharedManager];
      [v11 _scheduleOperation:v10];

      skProgress = [(SKManagerOperation *)v10 skProgress];
      goto LABEL_11;
    }

    v14 = sub_10000BFD0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = resizeCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not resize disk %@", &v17, 0xCu);
    }

    v15 = [SKError errorWithCode:102 userInfo:0];
    blockCopy[2](blockCopy, v15);
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
    blockCopy[2](blockCopy, v10);
  }

  skProgress = 0;
LABEL_11:

  return skProgress;
}

- (BOOL)addAppearedDisk:(id)disk
{
  diskCopy = disk;
  if (diskCopy)
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SKDaemonManager(DiskNotifications) addAppearedDisk:]";
      v12 = 2112;
      v13 = diskCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
    }

    v6 = self->allDisks;
    objc_sync_enter(v6);
    [(NSMutableArray *)self->allDisks addObject:diskCopy];
    notificationsCache = [(SKDaemonManager *)self notificationsCache];
    appearedDisks = [notificationsCache appearedDisks];
    [appearedDisks addObject:diskCopy];

    objc_sync_exit(v6);
  }

  return diskCopy != 0;
}

- (void)addChangedDisk:(id)disk
{
  diskCopy = disk;
  if (diskCopy)
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SKDaemonManager(DiskNotifications) addChangedDisk:]";
      v12 = 2112;
      v13 = diskCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
    }

    notificationsCache = [(SKDaemonManager *)self notificationsCache];
    changedDisks = [notificationsCache changedDisks];

    objc_sync_enter(changedDisks);
    notificationsCache2 = [(SKDaemonManager *)self notificationsCache];
    changedDisks2 = [notificationsCache2 changedDisks];
    [changedDisks2 addObject:diskCopy];

    objc_sync_exit(changedDisks);
  }
}

- (void)addDisappearedDisk:(id)disk
{
  diskCopy = disk;
  if (diskCopy)
  {
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[SKDaemonManager(DiskNotifications) addDisappearedDisk:]";
      v11 = 2112;
      v12 = diskCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
    }

    v6 = self->allDisks;
    objc_sync_enter(v6);
    [(NSMutableArray *)self->allDisks removeObject:diskCopy];
    notificationsCache = [(SKDaemonManager *)self notificationsCache];
    disappearedDisks = [notificationsCache disappearedDisks];
    [disappearedDisks addObject:diskCopy];

    objc_sync_exit(v6);
  }
}

- (void)addMissingDisappearedDisks
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allDisks = [(SKDaemonManager *)self allDisks];
  v4 = [allDisks countByEnumeratingWithState:&v15 objects:v25 count:16];
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
          objc_enumerationMutation(allDisks);
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

      v6 = [allDisks countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)_processNotificationsWithDiskOperations:(id)operations
{
  operationsCopy = operations;
  wholeDiskOperation = [operationsCopy wholeDiskOperation];
  [(SKDaemonManager *)self _processNotificationWithDiskOperation:wholeDiskOperation];

  childrenOperations = [operationsCopy childrenOperations];
  v7 = [childrenOperations count];

  if (v7)
  {
    childrenOperations2 = [operationsCopy childrenOperations];
    v9 = [childrenOperations2 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        notificationsProcessingQueue = [(SKDaemonManager *)self notificationsProcessingQueue];
        notificationsCache = [(SKDaemonManager *)self notificationsCache];
        processingGroup = [notificationsCache processingGroup];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002A0BC;
        v17[3] = &unk_1000499A0;
        v17[4] = self;
        v14 = operationsCopy;
        v18 = v14;
        v19 = v10;
        [notificationsProcessingQueue dispatchWithGroup:processingGroup block:v17];

        ++v10;
        childrenOperations3 = [v14 childrenOperations];
        v16 = [childrenOperations3 count];
      }

      while (v10 < v16);
    }
  }
}

- (id)_processDiskNotificationsForMap:(id)map isCompleteDiskList:(BOOL)list
{
  listCopy = list;
  mapCopy = map;
  v7 = [[SKNotificationsCache alloc] initWithDiskOperationMap:mapCopy];
  [(SKDaemonManager *)self setNotificationsCache:v7];

  notificationsCache = [(SKDaemonManager *)self notificationsCache];
  if (!notificationsCache)
  {
    goto LABEL_15;
  }

  v9 = notificationsCache;
  notificationsCache2 = [(SKDaemonManager *)self notificationsCache];
  disksToProcess = [notificationsCache2 disksToProcess];
  v12 = [disksToProcess count];

  if (v12)
  {
    [(SKDaemonManager *)self _invalidateExtendedDiskInfoCache];
    if (listCopy)
    {
      [(SKDaemonManager *)self addMissingDisappearedDisks];
    }

    notificationsCache3 = [(SKDaemonManager *)self notificationsCache];
    disksToProcess2 = [notificationsCache3 disksToProcess];
    v15 = [disksToProcess2 count];

    if (v15)
    {
      v16 = 0;
      do
      {
        notificationsProcessingQueue = [(SKDaemonManager *)self notificationsProcessingQueue];
        notificationsCache4 = [(SKDaemonManager *)self notificationsCache];
        processingGroup = [notificationsCache4 processingGroup];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10002A4DC;
        v46[3] = &unk_100049400;
        v46[4] = self;
        v46[5] = v16;
        [notificationsProcessingQueue dispatchWithGroup:processingGroup block:v46];

        ++v16;
        notificationsCache5 = [(SKDaemonManager *)self notificationsCache];
        disksToProcess3 = [notificationsCache5 disksToProcess];
        v22 = [disksToProcess3 count];
      }

      while (v16 < v22);
    }

    notificationsCache6 = [(SKDaemonManager *)self notificationsCache];
    processingGroup2 = [notificationsCache6 processingGroup];
    dispatch_group_wait(processingGroup2, 0xFFFFFFFFFFFFFFFFLL);

    [(SKDaemonManager *)self updateRAIDDisks];
    [(SKDaemonManager *)self removeLIFSAPFSContainers];
    notificationsCache7 = [(SKDaemonManager *)self notificationsCache];
    appearedDisks = [notificationsCache7 appearedDisks];
    v27 = [appearedDisks copy];
    [(SKDaemonManager *)self updatePhysicalStoresWithDisks:v27];

    notificationsCache8 = [(SKDaemonManager *)self notificationsCache];
    disappearedDisks = [notificationsCache8 disappearedDisks];
    v30 = [disappearedDisks count];

    if (v30)
    {
      notificationsCache9 = [(SKDaemonManager *)self notificationsCache];
      disappearedDisks2 = [notificationsCache9 disappearedDisks];
      [(SKDaemonManager *)self _disksDisappeared:disappearedDisks2];
    }

    notificationsCache10 = [(SKDaemonManager *)self notificationsCache];
    appearedDisks2 = [notificationsCache10 appearedDisks];
    v35 = [appearedDisks2 count];

    if (v35)
    {
      notificationsCache11 = [(SKDaemonManager *)self notificationsCache];
      appearedDisks3 = [notificationsCache11 appearedDisks];
      [(SKDaemonManager *)self _disksAppeared:appearedDisks3];
    }

    notificationsCache12 = [(SKDaemonManager *)self notificationsCache];
    changedDisks = [notificationsCache12 changedDisks];
    v40 = [changedDisks count];

    if (v40)
    {
      notificationsCache13 = [(SKDaemonManager *)self notificationsCache];
      changedDisks2 = [notificationsCache13 changedDisks];
      [(SKDaemonManager *)self _disksChanged:changedDisks2];
    }

    notificationsCache14 = [(SKDaemonManager *)self notificationsCache];
    processedDisk = [notificationsCache14 processedDisk];
  }

  else
  {
LABEL_15:
    processedDisk = 0;
  }

  return processedDisk;
}

- (void)removePostProcessWithCachedDisk:(id)disk
{
  diskCopy = disk;
  [(SKDaemonManager *)self addDisappearedDisk:diskCopy];
  [(SKDaemonManager *)self postProcessWithDisk:diskCopy];
}

- (id)_processAppearedOrChangedWithDisk:(id)disk operation:(id)operation
{
  diskCopy = disk;
  v6 = DADiskCopyDescription(diskCopy);
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

  v17 = [[SKIOMedia alloc] initWithDADisk:diskCopy];
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
  v10 = [(SKDaemonManager *)self _cachedDiskWithDADisk:diskCopy];
  v11 = v10;
  if (v10)
  {
    [v10 setDaDisk:diskCopy];
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
      v25 = diskCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Disk %@ mutated", &v22, 0x16u);
    }

    [(SKDaemonManager *)self removePostProcessWithCachedDisk:v11];
  }

  if ([SKAPFSDisk isLIFSAPFSWithDiskDescription:v6])
  {
    v13 = SKAPFSDisk;
    goto LABEL_12;
  }

  if (![SKAPFSStoreDisk isIOMediaStoreWithDisk:diskCopy])
  {
    if ([SKAPFSStoreDisk isLiveFSStoreWithRawIOContent:v9 diskDesc:v6])
    {
      v15 = [[SKAPFSStoreDisk alloc] initWithDADisk:diskCopy isLiveFSContainer:1];
      if (v15)
      {
        v19 = [[SKAPFSContainerDisk alloc] initWithPhysicalStoreDisk:diskCopy];
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
      if ([(SKDaemonManager *)self delayedAPFSDiskNotificationWithDisk:diskCopy wholeDisk:diskCopy])
      {
        goto LABEL_28;
      }

      v13 = SKAPFSContainerDisk;
LABEL_12:
      v14 = [[v13 alloc] initWithDADisk:diskCopy];
      v15 = v14;
      if ([(SKDaemonManager *)self addAppearedDisk:v14])
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if ((v7 & 1) != 0 || [SKAPFSSnapshotDisk diskIsSnapshot:diskCopy])
    {
      v13 = SKAPFSSnapshotDisk;
      goto LABEL_12;
    }

    if (![v9 isEqualToString:@"41504653-0000-11AA-AA11-00306543ECAC"])
    {
LABEL_31:
      v14 = [[SKDisk alloc] initWithDADisk:diskCopy];
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
          v25 = diskCopy;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Failed to initialize SKDisk of any kind for %@", &v22, 0x16u);
        }

        v15 = 0;
      }

      goto LABEL_36;
    }

    v14 = DADiskCopyWholeDisk(diskCopy);
    if (![(SKDaemonManager *)self delayedAPFSDiskNotificationWithDisk:diskCopy wholeDisk:v14])
    {
      v15 = [[SKAPFSDisk alloc] initWithDADisk:diskCopy];
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

  v16 = [[SKAPFSStoreDisk alloc] initWithDADisk:diskCopy isLiveFSContainer:0];
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

- (void)postProcessWithDisk:(id)disk
{
  diskCopy = disk;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = diskCopy;
    apfsVolumeGroupUUID = [v4 apfsVolumeGroupUUID];

    if (apfsVolumeGroupUUID)
    {
      container = [v4 container];
      if (container)
      {
        v25 = diskCopy;
        v7 = sub_10000BFD0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          diskIdentifier = [v4 diskIdentifier];
          apfsVolumeGroupUUID2 = [v4 apfsVolumeGroupUUID];
          *buf = 136315650;
          v33 = "[SKDaemonManager(DiskNotifications) postProcessWithDisk:]";
          v34 = 2114;
          v35 = diskIdentifier;
          v36 = 2114;
          v37 = apfsVolumeGroupUUID2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: volume %{public}@ changed or disappeared, looking for other volumes in group %{public}@", buf, 0x20u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v24 = container;
        volumes = [container volumes];
        v11 = [volumes countByEnumeratingWithState:&v27 objects:v31 count:16];
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
                objc_enumerationMutation(volumes);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              apfsVolumeGroupUUID3 = [v15 apfsVolumeGroupUUID];
              if (apfsVolumeGroupUUID3)
              {
                v17 = apfsVolumeGroupUUID3;
                apfsVolumeGroupUUID4 = [v4 apfsVolumeGroupUUID];
                apfsVolumeGroupUUID5 = [v15 apfsVolumeGroupUUID];
                if ([apfsVolumeGroupUUID4 isEqualToString:apfsVolumeGroupUUID5])
                {
                  v20 = [v4 isEqual:v15];

                  if ((v20 & 1) == 0)
                  {
                    v21 = sub_10000BFD0();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      diskIdentifier2 = [v15 diskIdentifier];
                      apfsVolumeGroupUUID6 = [v15 apfsVolumeGroupUUID];
                      *buf = 136315650;
                      v33 = "[SKDaemonManager(DiskNotifications) postProcessWithDisk:]";
                      v34 = 2114;
                      v35 = diskIdentifier2;
                      v36 = 2114;
                      v37 = apfsVolumeGroupUUID6;
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

            v12 = [volumes countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v12);
        }

        container = v24;
        diskCopy = v25;
      }
    }
  }
}

- (void)_processNotificationWithDiskOperation:(id)operation
{
  operationCopy = operation;
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = operationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to process: %{public}@", &v15, 0xCu);
  }

  v6 = [operationCopy objectForKeyedSubscript:off_1000592C0];
  v7 = [operationCopy objectForKeyedSubscript:off_1000592F8];
  if ([v6 isEqualToString:off_1000592D8])
  {
    v8 = [(SKDaemonManager *)self _cachedDiskWithDADisk:v7];
    [(SKDaemonManager *)self addDisappearedDisk:v8];
  }

  else
  {
    v9 = [(SKDaemonManager *)self _processAppearedOrChangedWithDisk:v7 operation:operationCopy];
    notificationsCache = [(SKDaemonManager *)self notificationsCache];
    objc_sync_enter(notificationsCache);
    notificationsCache2 = [(SKDaemonManager *)self notificationsCache];
    processedDisk = [notificationsCache2 processedDisk];
    v13 = processedDisk == 0;

    if (v13)
    {
      notificationsCache3 = [(SKDaemonManager *)self notificationsCache];
      [notificationsCache3 setProcessedDisk:v9];
    }

    objc_sync_exit(notificationsCache);

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

- (void)updatePhysicalStoresWithContainer:(id)container
{
  containerCopy = container;
  copyPhysicalStoresUUIDs = [containerCopy copyPhysicalStoresUUIDs];
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
          mediaUUID = [v9 mediaUUID];
          v11 = [copyPhysicalStoresUUIDs containsObject:mediaUUID];

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
          diskIdentifier = [v16 diskIdentifier];
          *buf = 136315394;
          v34 = "[SKDaemonManager(DiskNotifications) updatePhysicalStoresWithContainer:]";
          v35 = 2114;
          v36 = diskIdentifier;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Re-creating APFS physical store %{public}@", buf, 0x16u);
        }

        v19 = [SKAPFSStoreDisk alloc];
        daDisk = [v16 daDisk];
        v21 = [v19 initWithDADisk:daDisk isLiveFSContainer:0];

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

- (void)updatePhysicalStoresWithDisks:(id)disks
{
  disksCopy = disks;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [disksCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(disksCopy);
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
      v6 = [disksCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)diskHasMutated:(id)mutated rawIOContent:(id)content diskDesc:(id)desc mediaUUID:(id)d
{
  mutatedCopy = mutated;
  contentCopy = content;
  descCopy = desc;
  dCopy = d;
  if ([mutatedCopy isIOMediaDisk])
  {
    daDisk = [mutatedCopy daDisk];
    if ([SKAPFSStoreDisk isIOMediaStoreWithDisk:daDisk])
    {
      v14 = 1;
    }

    else
    {
      v14 = [SKAPFSStoreDisk isLiveFSStoreWithRawIOContent:contentCopy diskDesc:descCopy];
    }

    v16 = [contentCopy isEqualToString:@"EF57347C-0000-11AA-AA11-00306543ECAC"];
    v17 = [contentCopy isEqualToString:@"41504653-0000-11AA-AA11-00306543ECAC"];
    v18 = [mutatedCopy isMemberOfClass:objc_opt_class()];
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

    v19 = [mutatedCopy isMemberOfClass:objc_opt_class()];
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

      mediaUUID = [mutatedCopy mediaUUID];
      v23 = dCopy;
      v24 = v23;
      if ((v23 != 0) != (mediaUUID != 0) || v23 && ([mediaUUID isEqualToString:v23] & 1) == 0)
      {
        v25 = sub_10000BFD0();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          diskIdentifier = [mutatedCopy diskIdentifier];
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = 136316162;
          v30 = "[SKDaemonManager(DiskNotifications) diskHasMutated:rawIOContent:diskDesc:mediaUUID:]";
          v31 = 2114;
          v32 = diskIdentifier;
          v33 = 2114;
          v34 = v28;
          v35 = 2114;
          v36 = mediaUUID;
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
  notificationsCache = [(SKDaemonManager *)self notificationsCache];
  disappearedDisks = [notificationsCache disappearedDisks];

  v6 = [disappearedDisks countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(disappearedDisks);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          privateCache = [v11 privateCache];
          isLiveFSContainer = [privateCache isLiveFSContainer];

          if (isLiveFSContainer)
          {
            container = [v11 container];
            v15 = container;
            if (container)
            {
              designatedPhysicalStore = [container designatedPhysicalStore];
              if (!designatedPhysicalStore)
              {
                [v3 addObject:v15];
              }
            }
          }
        }
      }

      v7 = [disappearedDisks countByEnumeratingWithState:&v26 objects:v31 count:16];
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
@interface NRKeychainSyncStatusManager
+ (id)newService:(id)service;
- (BOOL)enabled;
- (BOOL)enabledFlag;
- (BOOL)outstandingRequest;
- (BOOL)queryInProgress;
- (BOOL)skipNotificationOnLaunch;
- (NRKeychainSyncStatusManager)initWithQueue:(id)queue;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)setEnabledFlag:(BOOL)flag;
- (void)setOutstandingRequest:(BOOL)request;
- (void)setQueryInProgress:(BOOL)progress;
- (void)setSkipNotificationOnLaunch:(BOOL)launch;
@end

@implementation NRKeychainSyncStatusManager

+ (id)newService:(id)service
{
  serviceCopy = service;
  v5 = [self alloc];
  queue = [serviceCopy queue];

  v7 = [v5 initWithQueue:queue];
  return v7;
}

- (BOOL)queryInProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4024;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setQueryInProgress:(BOOL)progress
{
  propertyQueue = self->_propertyQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F40B0;
  v4[3] = &unk_100176198;
  v4[4] = self;
  progressCopy = progress;
  dispatch_async(propertyQueue, v4);
}

- (BOOL)skipNotificationOnLaunch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F416C;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setSkipNotificationOnLaunch:(BOOL)launch
{
  propertyQueue = self->_propertyQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F41F8;
  v4[3] = &unk_100176198;
  v4[4] = self;
  launchCopy = launch;
  dispatch_async(propertyQueue, v4);
}

- (BOOL)enabledFlag
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F42B4;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setEnabledFlag:(BOOL)flag
{
  propertyQueue = self->_propertyQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F4340;
  v4[3] = &unk_100176198;
  v4[4] = self;
  flagCopy = flag;
  dispatch_async(propertyQueue, v4);
}

- (BOOL)outstandingRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F43FC;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setOutstandingRequest:(BOOL)request
{
  propertyQueue = self->_propertyQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F4488;
  v4[3] = &unk_100176198;
  v4[4] = self;
  requestCopy = request;
  dispatch_async(propertyQueue, v4);
}

- (NRKeychainSyncStatusManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = NRKeychainSyncStatusManager;
  v6 = [(NRKeychainSyncStatusManager *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[NSMutableArray array];
    updateBlocks = v7->_updateBlocks;
    v7->_updateBlocks = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.nanoregistry.keychainqueue", v10);
    keychainQueue = v7->_keychainQueue;
    v7->_keychainQueue = v11;

    v13 = dispatch_queue_create("com.apple.nanoregistry.keychainpropertyqueue", v10);
    propertyQueue = v7->_propertyQueue;
    v7->_propertyQueue = v13;

    v15 = +[NSHashTable weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v15;

    v7->_keychainViewNotificationToken = -1;
    sub_1000F4608(v7);
    v17 = v7->_propertyQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F474C;
    block[3] = &unk_100175660;
    v20 = v7;
    dispatch_async(v17, block);
  }

  return v7;
}

- (void)dealloc
{
  sub_100106498(self);
  v3.receiver = self;
  v3.super_class = NRKeychainSyncStatusManager;
  [(NRKeychainSyncStatusManager *)&v3 dealloc];
}

- (BOOL)enabled
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  propertyQueue = self->_propertyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4A58;
  block[3] = &unk_1001796A8;
  block[4] = self;
  v14 = &v15;
  v5 = v3;
  v13 = v5;
  dispatch_sync(propertyQueue, block);
  if (*(v16 + 24) == 1)
  {
    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v9 = nr_daemon_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = nr_daemon_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100106878(v11);
        }
      }

      sub_100106534(self, 0);
    }
  }

  enabledFlag = [(NRKeychainSyncStatusManager *)self enabledFlag];

  _Block_object_dispose(&v15, 8);
  return enabledFlag;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(NSHashTable *)self->_observers addObject:?];
  if ([(NRKeychainSyncStatusManager *)self skipNotificationOnLaunch])
  {
    [observerCopy keychainSyncStatusDidChange:{-[NRKeychainSyncStatusManager enabled](self, "enabled")}];
  }
}

@end
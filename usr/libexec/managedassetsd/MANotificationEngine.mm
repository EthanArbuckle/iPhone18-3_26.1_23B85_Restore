@interface MANotificationEngine
+ (id)sharedInstance;
- (MANotificationEngine)init;
- (id)getAllObserversPIDs;
- (void)notifyAssetChangeWith:(unint64_t)with handles:(id)handles;
- (void)notifyDaemonLaunched;
- (void)notifyFileEventWith:(unint64_t)with fileNames:(id)names profile:(id)profile sharingGroup:(id)group;
- (void)notifyKVStoreEventWith:(unint64_t)with kvStores:(id)stores profile:(id)profile sharingGroup:(id)group;
- (void)notifyProfileChangeWith:(unint64_t)with profile:(id)profile type:(unint64_t)type;
- (void)registerObserverEventWith:(id)with observerType:(unint64_t)type resourceNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events;
- (void)registerRemoteObserver:(id)observer;
- (void)unregisterObserverWith:(id)with;
@end

@implementation MANotificationEngine

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001DF8;
  block[3] = &unk_100115D08;
  block[4] = self;
  if (qword_100129368 != -1)
  {
    dispatch_once(&qword_100129368, block);
  }

  v2 = qword_100129370;

  return v2;
}

- (MANotificationEngine)init
{
  v26.receiver = self;
  v26.super_class = MANotificationEngine;
  v2 = [(MANotificationEngine *)&v26 init];
  if (v2)
  {
    v2->_darwinCenter = CFNotificationCenterGetDistributedCenter();
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.managedassetsd.xpc.observer.darwin", v3);
    darwinNotifyQueue = v2->_darwinNotifyQueue;
    v2->_darwinNotifyQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.managedassetsd.xpc.observer.fileEvent", v6);
    fileEventNotifyQueue = v2->_fileEventNotifyQueue;
    v2->_fileEventNotifyQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.managedassetsd.xpc.observer.kvstoreEvent", v9);
    kvStoreEventNotifyQueue = v2->_kvStoreEventNotifyQueue;
    v2->_kvStoreEventNotifyQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.managedassetsd.xpc.observer.copresenceEvent", v12);
    copresenceNotifyQueue = v2->_copresenceNotifyQueue;
    v2->_copresenceNotifyQueue = v13;

    v15 = +[NSMapTable strongToStrongObjectsMapTable];
    observerConfigsForFileEvent = v2->_observerConfigsForFileEvent;
    v2->_observerConfigsForFileEvent = v15;

    v17 = +[NSMapTable strongToStrongObjectsMapTable];
    observerConfigsForKVStoreEvent = v2->_observerConfigsForKVStoreEvent;
    v2->_observerConfigsForKVStoreEvent = v17;

    v19 = +[NSMapTable strongToStrongObjectsMapTable];
    observerCacheForFileEvent = v2->_observerCacheForFileEvent;
    v2->_observerCacheForFileEvent = v19;

    v21 = +[NSMapTable strongToStrongObjectsMapTable];
    observerCacheForKVStore = v2->_observerCacheForKVStore;
    v2->_observerCacheForKVStore = v21;

    v23 = +[NSMutableArray array];
    observerCacheForCopresence = v2->_observerCacheForCopresence;
    v2->_observerCacheForCopresence = v23;
  }

  return v2;
}

- (void)notifyAssetChangeWith:(unint64_t)with handles:(id)handles
{
  handlesCopy = handles;
  darwinNotifyQueue = self->_darwinNotifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000020D0;
  block[3] = &unk_100115D30;
  selfCopy = self;
  withCopy = with;
  v10 = handlesCopy;
  v8 = handlesCopy;
  dispatch_async(darwinNotifyQueue, block);
}

- (void)notifyProfileChangeWith:(unint64_t)with profile:(id)profile type:(unint64_t)type
{
  profileCopy = profile;
  darwinNotifyQueue = self->_darwinNotifyQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000022A4;
  v11[3] = &unk_100115D58;
  v11[4] = self;
  v12 = profileCopy;
  withCopy = with;
  typeCopy = type;
  v10 = profileCopy;
  dispatch_async(darwinNotifyQueue, v11);
}

- (void)notifyFileEventWith:(unint64_t)with fileNames:(id)names profile:(id)profile sharingGroup:(id)group
{
  namesCopy = names;
  profileCopy = profile;
  groupCopy = group;
  fileEventNotifyQueue = self->_fileEventNotifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000024D8;
  block[3] = &unk_100115DA8;
  v18 = namesCopy;
  v19 = groupCopy;
  selfCopy = self;
  withCopy = with;
  v20 = profileCopy;
  v14 = profileCopy;
  v15 = groupCopy;
  v16 = namesCopy;
  dispatch_async(fileEventNotifyQueue, block);
}

- (void)notifyKVStoreEventWith:(unint64_t)with kvStores:(id)stores profile:(id)profile sharingGroup:(id)group
{
  storesCopy = stores;
  profileCopy = profile;
  groupCopy = group;
  kvStoreEventNotifyQueue = self->_kvStoreEventNotifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A04;
  block[3] = &unk_100115DA8;
  v18 = storesCopy;
  v19 = groupCopy;
  selfCopy = self;
  withCopy = with;
  v20 = profileCopy;
  v14 = profileCopy;
  v15 = groupCopy;
  v16 = storesCopy;
  dispatch_async(kvStoreEventNotifyQueue, block);
}

- (void)registerObserverEventWith:(id)with observerType:(unint64_t)type resourceNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events
{
  withCopy = with;
  namesCopy = names;
  groupCopy = group;
  profileCopy = profile;
  if (!type)
  {
    v18 = 24;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v18 = 32;
LABEL_5:
    v19 = *(&self->super.isa + v18);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002F7C;
    block[3] = &unk_100115DF8;
    v21 = groupCopy;
    typeCopy = type;
    v22 = profileCopy;
    selfCopy = self;
    v24 = withCopy;
    eventsCopy = events;
    v25 = namesCopy;
    dispatch_sync(v19, block);
  }
}

- (void)registerRemoteObserver:(id)observer
{
  observerCopy = observer;
  copresenceNotifyQueue = self->_copresenceNotifyQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003284;
  v7[3] = &unk_100115E20;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(copresenceNotifyQueue, v7);
}

- (void)unregisterObserverWith:(id)with
{
  withCopy = with;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MASDNotificationObserver];
  [withCopy setRemoteObjectInterface:v5];

  remoteObjectProxy = [withCopy remoteObjectProxy];
  if (os_log_type_enabled(off_100127B70, OS_LOG_TYPE_DEBUG))
  {
    sub_1000042CC();
  }

  fileEventNotifyQueue = self->_fileEventNotifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003570;
  block[3] = &unk_100115E20;
  block[4] = self;
  v8 = withCopy;
  v18 = v8;
  dispatch_sync(fileEventNotifyQueue, block);
  kvStoreEventNotifyQueue = self->_kvStoreEventNotifyQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000036D0;
  v15[3] = &unk_100115E20;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  dispatch_sync(kvStoreEventNotifyQueue, v15);
  copresenceNotifyQueue = self->_copresenceNotifyQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003830;
  v13[3] = &unk_100115E20;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_sync(copresenceNotifyQueue, v13);
}

- (id)getAllObserversPIDs
{
  v3 = +[NSMutableDictionary dictionary];
  fileEventNotifyQueue = self->_fileEventNotifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000039B8;
  block[3] = &unk_100115E20;
  block[4] = self;
  v5 = v3;
  v18 = v5;
  dispatch_sync(fileEventNotifyQueue, block);
  kvStoreEventNotifyQueue = self->_kvStoreEventNotifyQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003BC4;
  v15[3] = &unk_100115E20;
  v15[4] = self;
  v7 = v5;
  v16 = v7;
  dispatch_sync(kvStoreEventNotifyQueue, v15);
  copresenceNotifyQueue = self->_copresenceNotifyQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003DD0;
  v13[3] = &unk_100115E20;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  dispatch_sync(copresenceNotifyQueue, v13);
  v10 = v14;
  v11 = v9;

  return v9;
}

- (void)notifyDaemonLaunched
{
  darwinNotifyQueue = self->_darwinNotifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FA0;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_async(darwinNotifyQueue, block);
}

@end
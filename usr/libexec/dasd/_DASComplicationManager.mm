@interface _DASComplicationManager
+ (BOOL)watchIsPaired;
+ (_DASComplicationManager)sharedInstance;
+ (id)obtainActiveComplications;
- (BOOL)isActiveComplication:(id)a3;
- (BOOL)isAnyActiveComplication:(id)a3;
- (BOOL)isRecentlyAddedComplication:(id)a3;
- (_DASComplicationManager)init;
- (void)registerForComplicationChangeNotifications;
@end

@implementation _DASComplicationManager

- (_DASComplicationManager)init
{
  v8.receiver = self;
  v8.super_class = _DASComplicationManager;
  v2 = [(_DASComplicationManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.complicationsChangedQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    [(_DASComplicationManager *)v2 registerForComplicationChangeNotifications];
  }

  return v2;
}

+ (_DASComplicationManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077560;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B4D8 != -1)
  {
    dispatch_once(&qword_10020B4D8, block);
  }

  v2 = qword_10020B4E0;

  return v2;
}

+ (id)obtainActiveComplications
{
  v2 = os_transaction_create();
  v3 = _CDDCurrentActiveComplications();
  v4 = [NSSet setWithArray:v3];

  return v4;
}

+ (BOOL)watchIsPaired
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getPairedDevices];

  LOBYTE(v2) = [v3 count] != 0;
  return v2;
}

- (void)registerForComplicationChangeNotifications
{
  if ([objc_opt_class() watchIsPaired])
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.complicationsChangedQueue", v4);
    queue = self->_queue;
    self->_queue = v5;

    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v7;

    v9 = self->_timer;
    dispatch_set_qos_class_fallback();
    v10 = self->_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100077898;
    handler[3] = &unk_1001B5668;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self->_timer);
    out_token = 0;
    v11 = _CDDComplicationChangeOverCloudNotificationString();
    v12 = [v11 UTF8String];
    v13 = self->_queue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100077A8C;
    v21[3] = &unk_1001B5B78;
    v21[4] = self;
    notify_register_dispatch(v12, &out_token, v13, v21);

    v20 = 0;
    v14 = _CDDComplicationChangeNotificationString();
    v15 = [v14 UTF8String];
    v16 = self->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100077AE4;
    v19[3] = &unk_1001B5B78;
    v19[4] = self;
    notify_register_dispatch(v15, &v20, v16, v19);

    v17 = self->_queue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100077B3C;
    v18[3] = &unk_1001B5668;
    v18[4] = self;
    dispatch_sync(v17, v18);
  }
}

- (BOOL)isActiveComplication:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077CE4;
  block[3] = &unk_1001B5D98;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)isAnyActiveComplication:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077DE8;
  block[3] = &unk_1001B5AB8;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return queue;
}

- (BOOL)isRecentlyAddedComplication:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077FC8;
  block[3] = &unk_1001B69E0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

@end
@interface NRQueue
+ (id)assetDownloadQueue;
+ (id)delayPairingRequestQueue;
+ (id)firstUnlockQueue;
+ (id)globalQueueWithIdentifier:(int64_t)a3;
+ (id)mainQueue;
+ (id)nearbyWatchBulletinQueue;
+ (id)newQueueWithLabel:(id)a3 withTargetQueue:(id)a4 withAttributes:(id)a5;
+ (id)registryDaemonQueue;
+ (id)serialQueueWithLabel:(id)a3;
+ (id)serialQueueWithLabel:(id)a3 withTargetQueue:(id)a4;
+ (id)switchCompletionBlockQueue;
+ (id)xpcPairingQueue;
- (NRQueue)initWithDispatchQueue:(id)a3;
- (NSString)label;
- (void)dealloc;
- (void)dispatchAfter:(double)a3 withBlock:(id)a4;
- (void)dispatchAsync:(id)a3;
- (void)dispatchSync:(id)a3;
@end

@implementation NRQueue

+ (id)xpcPairingQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D80D4;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3AE0 != -1)
  {
    dispatch_once(&qword_1001B3AE0, block);
  }

  v2 = qword_1001B3AD8;

  return v2;
}

+ (id)registryDaemonQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D805C;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3AD0 != -1)
  {
    dispatch_once(&qword_1001B3AD0, block);
  }

  v2 = qword_1001B3AC8;

  return v2;
}

- (NRQueue)initWithDispatchQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NRQueue;
  v6 = [(NRQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NRQueueTable sharedTable];
  [v3 removeQueue:self->_queue];

  v4.receiver = self;
  v4.super_class = NRQueue;
  [(NRQueue *)&v4 dealloc];
}

+ (id)mainQueue
{
  v2 = +[NRQueueTable sharedTable];
  v3 = [v2 queueWithDispatchQueue:&_dispatch_main_q];

  return v3;
}

+ (id)globalQueueWithIdentifier:(int64_t)a3
{
  v3 = dispatch_get_global_queue(a3, 0);
  v4 = +[NRQueueTable sharedTable];
  v5 = [v4 queueWithDispatchQueue:v3];

  return v5;
}

+ (id)serialQueueWithLabel:(id)a3
{
  v3 = [a1 newQueueWithLabel:a3 withTargetQueue:0 withAttributes:0];

  return v3;
}

+ (id)serialQueueWithLabel:(id)a3 withTargetQueue:(id)a4
{
  v4 = [a1 newQueueWithLabel:a3 withTargetQueue:a4 withAttributes:0];

  return v4;
}

+ (id)newQueueWithLabel:(id)a3 withTargetQueue:(id)a4 withAttributes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = [v7 UTF8String];
  v12 = [v8 queue];
  v13 = dispatch_queue_create_with_target_V2(v11, v10, v12);

  v14 = +[NRQueueTable sharedTable];
  v15 = [v14 queueWithDispatchQueue:v13];

  v16 = nr_daemon_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = nr_daemon_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413058;
      v21 = v7;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "newQueueWithLabel:@%@ withTargetQueue:%p withAttributes:0x%ld == %p", &v20, 0x2Au);
    }
  }

  return v15;
}

+ (id)nearbyWatchBulletinQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8210;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3AF0 != -1)
  {
    dispatch_once(&qword_1001B3AF0, block);
  }

  v2 = qword_1001B3AE8;

  return v2;
}

+ (id)switchCompletionBlockQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D835C;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3B00 != -1)
  {
    dispatch_once(&qword_1001B3B00, block);
  }

  v2 = qword_1001B3AF8;

  return v2;
}

+ (id)firstUnlockQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8474;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3B10 != -1)
  {
    dispatch_once(&qword_1001B3B10, block);
  }

  v2 = qword_1001B3B08;

  return v2;
}

+ (id)delayPairingRequestQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D85A8;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3B20 != -1)
  {
    dispatch_once(&qword_1001B3B20, block);
  }

  v2 = qword_1001B3B18;

  return v2;
}

+ (id)assetDownloadQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D86DC;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3B30 != -1)
  {
    dispatch_once(&qword_1001B3B30, block);
  }

  v2 = qword_1001B3B28;

  return v2;
}

- (NSString)label
{
  label = dispatch_queue_get_label(self->_queue);

  return [NSString stringWithUTF8String:label];
}

- (void)dispatchAsync:(id)a3
{
  if (a3)
  {
    dispatch_async(self->_queue, a3);
  }
}

- (void)dispatchSync:(id)a3
{
  block = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  v4 = block;
  if (block)
  {
    dispatch_sync(self->_queue, block);
    v4 = block;
  }
}

- (void)dispatchAfter:(double)a3 withBlock:(id)a4
{
  if (a4)
  {
    v5 = (a3 * 1000000000.0);
    block = a4;
    v6 = dispatch_time(0, v5);
    dispatch_after(v6, self->_queue, block);
  }
}

@end
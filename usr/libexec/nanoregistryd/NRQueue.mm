@interface NRQueue
+ (id)assetDownloadQueue;
+ (id)delayPairingRequestQueue;
+ (id)firstUnlockQueue;
+ (id)globalQueueWithIdentifier:(int64_t)identifier;
+ (id)mainQueue;
+ (id)nearbyWatchBulletinQueue;
+ (id)newQueueWithLabel:(id)label withTargetQueue:(id)queue withAttributes:(id)attributes;
+ (id)registryDaemonQueue;
+ (id)serialQueueWithLabel:(id)label;
+ (id)serialQueueWithLabel:(id)label withTargetQueue:(id)queue;
+ (id)switchCompletionBlockQueue;
+ (id)xpcPairingQueue;
- (NRQueue)initWithDispatchQueue:(id)queue;
- (NSString)label;
- (void)dealloc;
- (void)dispatchAfter:(double)after withBlock:(id)block;
- (void)dispatchAsync:(id)async;
- (void)dispatchSync:(id)sync;
@end

@implementation NRQueue

+ (id)xpcPairingQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D80D4;
  block[3] = &unk_1001756A8;
  block[4] = self;
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
  block[4] = self;
  if (qword_1001B3AD0 != -1)
  {
    dispatch_once(&qword_1001B3AD0, block);
  }

  v2 = qword_1001B3AC8;

  return v2;
}

- (NRQueue)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = NRQueue;
  v6 = [(NRQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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

+ (id)globalQueueWithIdentifier:(int64_t)identifier
{
  v3 = dispatch_get_global_queue(identifier, 0);
  v4 = +[NRQueueTable sharedTable];
  v5 = [v4 queueWithDispatchQueue:v3];

  return v5;
}

+ (id)serialQueueWithLabel:(id)label
{
  v3 = [self newQueueWithLabel:label withTargetQueue:0 withAttributes:0];

  return v3;
}

+ (id)serialQueueWithLabel:(id)label withTargetQueue:(id)queue
{
  v4 = [self newQueueWithLabel:label withTargetQueue:queue withAttributes:0];

  return v4;
}

+ (id)newQueueWithLabel:(id)label withTargetQueue:(id)queue withAttributes:(id)attributes
{
  labelCopy = label;
  queueCopy = queue;
  attributesCopy = attributes;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(attributesCopy, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  uTF8String = [labelCopy UTF8String];
  queue = [queueCopy queue];
  v13 = dispatch_queue_create_with_target_V2(uTF8String, v10, queue);

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
      v21 = labelCopy;
      v22 = 2048;
      v23 = queueCopy;
      v24 = 2048;
      v25 = attributesCopy;
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
  block[4] = self;
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
  block[4] = self;
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
  block[4] = self;
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
  block[4] = self;
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
  block[4] = self;
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

- (void)dispatchAsync:(id)async
{
  if (async)
  {
    dispatch_async(self->_queue, async);
  }
}

- (void)dispatchSync:(id)sync
{
  block = sync;
  dispatch_assert_queue_not_V2(self->_queue);
  v4 = block;
  if (block)
  {
    dispatch_sync(self->_queue, block);
    v4 = block;
  }
}

- (void)dispatchAfter:(double)after withBlock:(id)block
{
  if (block)
  {
    v5 = (after * 1000000000.0);
    block = block;
    v6 = dispatch_time(0, v5);
    dispatch_after(v6, self->_queue, block);
  }
}

@end
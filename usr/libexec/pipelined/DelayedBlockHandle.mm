@interface DelayedBlockHandle
+ (id)dispatch_after:(duration<long)long block:()std:(1000000000>>)std :(id)a4 ratio<1;
+ (id)dispatch_after:(duration<long)long block:()std:(1000000000>>)std :(id)a4 ratio<1 onQueue:(id)queue;
- (id)init:(id)init;
- (void)setCancelled:(BOOL)cancelled;
@end

@implementation DelayedBlockHandle

+ (id)dispatch_after:(duration<long)long block:()std:(1000000000>>)std :(id)a4 ratio<1
{
  v4 = [self dispatch_after:std.__rep_ block:a4 onQueue:&_dispatch_main_q];

  return v4;
}

+ (id)dispatch_after:(duration<long)long block:()std:(1000000000>>)std :(id)a4 ratio<1 onQueue:(id)queue
{
  v7 = a4;
  queueCopy = queue;
  v9 = [[DelayedBlockHandle alloc] init:v7];
  v10 = dispatch_time(0, std.__rep_);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100230544;
  block[3] = &unk_100432828;
  v11 = v9;
  v14 = v11;
  dispatch_after(v10, queueCopy, block);

  return v11;
}

- (id)init:(id)init
{
  initCopy = init;
  v10.receiver = self;
  v10.super_class = DelayedBlockHandle;
  v5 = [(DelayedBlockHandle *)&v10 init];
  if (v5)
  {
    v6 = objc_retainBlock(initCopy);
    cb = v5->_cb;
    v5->_cb = v6;

    v8 = v5;
  }

  return v5;
}

- (void)setCancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    cb = self->_cb;
    self->_cb = 0;
  }
}

@end
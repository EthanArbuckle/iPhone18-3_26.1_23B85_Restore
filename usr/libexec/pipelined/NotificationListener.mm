@interface NotificationListener
- (NotificationListener)initWithCallback:(id)callback onQueue:(id)queue;
- (void)notify;
@end

@implementation NotificationListener

- (NotificationListener)initWithCallback:(id)callback onQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = NotificationListener;
  v8 = [(NotificationListener *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(NotificationListener *)v8 setQ:queueCopy];
    [(NotificationListener *)v9 setCb:callbackCopy];
    v10 = v9;
  }

  return v9;
}

- (void)notify
{
  queue = [(NotificationListener *)self q];
  v3 = [(NotificationListener *)self cb];
  dispatch_async(queue, v3);
}

@end
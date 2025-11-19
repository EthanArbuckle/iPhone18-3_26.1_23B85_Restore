@interface NotificationListener
- (NotificationListener)initWithCallback:(id)a3 onQueue:(id)a4;
- (void)notify;
@end

@implementation NotificationListener

- (NotificationListener)initWithCallback:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NotificationListener;
  v8 = [(NotificationListener *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(NotificationListener *)v8 setQ:v7];
    [(NotificationListener *)v9 setCb:v6];
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
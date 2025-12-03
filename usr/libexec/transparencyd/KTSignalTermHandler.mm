@interface KTSignalTermHandler
+ (BOOL)terminated;
+ (void)reset;
+ (void)setTryExit:(id)exit;
+ (void)setup;
+ (void)signalEventHandler;
- (KTSignalTermHandler)initWithSIGTERMNotification:(id)notification;
- (void)dealloc;
- (void)unregister;
@end

@implementation KTSignalTermHandler

+ (void)reset
{
  os_unfair_lock_lock(&unk_10039C988);
  source = qword_10039C990;
  v2 = qword_10039C990;
  qword_10039C990 = 0;

  v3 = qword_10039C998;
  qword_10039C998 = &stru_1003276E0;

  os_unfair_lock_unlock(&unk_10039C988);
  v4 = source;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = source;
  }
}

+ (void)setTryExit:(id)exit
{
  if (exit)
  {
    v4 = objc_retainBlock(exit);
    v3 = vars8;
  }

  else
  {
    v4 = &stru_1003276E0;
  }

  qword_10039C998 = v4;

  _objc_release_x1();
}

+ (void)signalEventHandler
{
  (*(qword_10039C998 + 16))(qword_10039C998, a2);
  os_unfair_lock_lock(&unk_10039C988);
  v2 = qword_10039C9A0;
  v3 = qword_10039C9A0;
  qword_10039C9A0 = 0;

  os_unfair_lock_unlock(&unk_10039C988);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2;
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

        complete = [*(*(&v10 + 1) + 8 * v8) complete];
        complete[2]();

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (BOOL)terminated
{
  os_unfair_lock_lock(&unk_10039C988);
  v2 = qword_10039C9A0 == 0;
  os_unfair_lock_unlock(&unk_10039C988);
  return v2;
}

+ (void)setup
{
  os_unfair_lock_lock(&unk_10039C988);
  if (!qword_10039C990)
  {
    signal(15, 1);
    if (!qword_10039C998)
    {
      qword_10039C998 = &stru_1003276E0;
    }

    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = qword_10039C9A0;
    qword_10039C9A0 = v3;

    v5 = dispatch_queue_create("KTSignalTermHandler", 0);
    v6 = qword_10039C9A8;
    qword_10039C9A8 = v5;

    v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_10039C9A8);
    v8 = qword_10039C990;
    qword_10039C990 = v7;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001CE35C;
    handler[3] = &unk_100327700;
    handler[4] = self;
    dispatch_source_set_event_handler(qword_10039C990, handler);
    dispatch_activate(qword_10039C990);
  }

  os_unfair_lock_unlock(&unk_10039C988);
}

- (KTSignalTermHandler)initWithSIGTERMNotification:(id)notification
{
  notificationCopy = notification;
  v11.receiver = self;
  v11.super_class = KTSignalTermHandler;
  v5 = [(KTSignalTermHandler *)&v11 init];
  if (v5)
  {
    [objc_opt_class() setup];
    [(KTSignalTermHandler *)v5 setComplete:notificationCopy];
    os_unfair_lock_lock(&unk_10039C988);
    if (qword_10039C9A0)
    {
      [qword_10039C9A0 addObject:v5];
      os_unfair_lock_unlock(&unk_10039C988);
    }

    else
    {
      os_unfair_lock_unlock(&unk_10039C988);
      v6 = qword_10039C9A8;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001CE4F4;
      block[3] = &unk_10031BCC0;
      v10 = notificationCopy;
      dispatch_async(v6, block);
    }

    v7 = v5;
  }

  return v5;
}

- (void)unregister
{
  os_unfair_lock_lock(&unk_10039C988);
  [qword_10039C9A0 removeObject:self];

  os_unfair_lock_unlock(&unk_10039C988);
}

- (void)dealloc
{
  [(KTSignalTermHandler *)self unregister];
  v3.receiver = self;
  v3.super_class = KTSignalTermHandler;
  [(KTSignalTermHandler *)&v3 dealloc];
}

@end
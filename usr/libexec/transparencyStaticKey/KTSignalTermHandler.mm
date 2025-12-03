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
  os_unfair_lock_lock(&unk_1000AECD8);
  source = qword_1000AECE0;
  v2 = qword_1000AECE0;
  qword_1000AECE0 = 0;

  v3 = qword_1000AECE8;
  qword_1000AECE8 = &stru_100095610;

  os_unfair_lock_unlock(&unk_1000AECD8);
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
    v4 = &stru_100095610;
  }

  qword_1000AECE8 = v4;

  _objc_release_x1();
}

+ (void)signalEventHandler
{
  (*(qword_1000AECE8 + 16))(qword_1000AECE8, a2);
  os_unfair_lock_lock(&unk_1000AECD8);
  v2 = qword_1000AECF0;
  v3 = qword_1000AECF0;
  qword_1000AECF0 = 0;

  os_unfair_lock_unlock(&unk_1000AECD8);
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
  os_unfair_lock_lock(&unk_1000AECD8);
  v2 = qword_1000AECF0 == 0;
  os_unfair_lock_unlock(&unk_1000AECD8);
  return v2;
}

+ (void)setup
{
  os_unfair_lock_lock(&unk_1000AECD8);
  if (!qword_1000AECE0)
  {
    signal(15, 1);
    if (!qword_1000AECE8)
    {
      qword_1000AECE8 = &stru_100095610;
    }

    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = qword_1000AECF0;
    qword_1000AECF0 = v3;

    v5 = dispatch_queue_create("KTSignalTermHandler", 0);
    v6 = qword_1000AECF8;
    qword_1000AECF8 = v5;

    v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_1000AECF8);
    v8 = qword_1000AECE0;
    qword_1000AECE0 = v7;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100016360;
    handler[3] = &unk_1000953C0;
    handler[4] = self;
    dispatch_source_set_event_handler(qword_1000AECE0, handler);
    dispatch_activate(qword_1000AECE0);
  }

  os_unfair_lock_unlock(&unk_1000AECD8);
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
    os_unfair_lock_lock(&unk_1000AECD8);
    if (qword_1000AECF0)
    {
      [qword_1000AECF0 addObject:v5];
      os_unfair_lock_unlock(&unk_1000AECD8);
    }

    else
    {
      os_unfair_lock_unlock(&unk_1000AECD8);
      v6 = qword_1000AECF8;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000164F8;
      block[3] = &unk_100095638;
      v10 = notificationCopy;
      dispatch_async(v6, block);
    }

    v7 = v5;
  }

  return v5;
}

- (void)unregister
{
  os_unfair_lock_lock(&unk_1000AECD8);
  [qword_1000AECF0 removeObject:self];

  os_unfair_lock_unlock(&unk_1000AECD8);
}

- (void)dealloc
{
  [(KTSignalTermHandler *)self unregister];
  v3.receiver = self;
  v3.super_class = KTSignalTermHandler;
  [(KTSignalTermHandler *)&v3 dealloc];
}

@end
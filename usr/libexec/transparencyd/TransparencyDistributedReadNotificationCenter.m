@interface TransparencyDistributedReadNotificationCenter
+ (id)defaultCenter;
- (TransparencyDistributedReadNotificationCenter)init;
- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5;
- (void)notificationProxyMethod:(id)a3;
- (void)removeObserver:(id)a3 name:(id)a4;
@end

@implementation TransparencyDistributedReadNotificationCenter

+ (id)defaultCenter
{
  os_unfair_lock_lock(&unk_10039CCB0);
  v3 = qword_10039CCA8;
  if (!v3)
  {
    os_unfair_lock_unlock(&unk_10039CCB0);
    v4 = objc_alloc_init(a1);
    os_unfair_lock_lock(&unk_10039CCB0);
    if (qword_10039CCA8)
    {
      v3 = qword_10039CCA8;
    }

    else
    {
      v3 = v4;
      v4 = qword_10039CCA8;
      qword_10039CCA8 = v3;
    }
  }

  os_unfair_lock_unlock(&unk_10039CCB0);

  return v3;
}

- (TransparencyDistributedReadNotificationCenter)init
{
  v8.receiver = self;
  v8.super_class = TransparencyDistributedReadNotificationCenter;
  v2 = [(TransparencyDistributedReadNotificationCenter *)&v8 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [(TransparencyDistributedReadNotificationCenter *)v2 setNsDNC:v3];

    v4 = objc_alloc_init(NSNotificationCenter);
    [(TransparencyDistributedReadNotificationCenter *)v2 setLocalNC:v4];

    v5 = +[NSMutableSet set];
    [(TransparencyDistributedReadNotificationCenter *)v2 setCachedNotification:v5];

    v6 = v2;
  }

  return v2;
}

- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v15 = v8;
    v9 = a3;
    os_unfair_lock_lock(&unk_10039CCB0);
    v10 = [(TransparencyDistributedReadNotificationCenter *)self cachedNotification];
    v11 = [v10 containsObject:v15];

    if (v11)
    {
      os_unfair_lock_unlock(&unk_10039CCB0);
    }

    else
    {
      v12 = [(TransparencyDistributedReadNotificationCenter *)self cachedNotification];
      [v12 addObject:v15];

      os_unfair_lock_unlock(&unk_10039CCB0);
      v13 = [(TransparencyDistributedReadNotificationCenter *)self nsDNC];
      [v13 addObserver:self selector:"notificationProxyMethod:" name:v15 object:0];
    }

    v14 = [(TransparencyDistributedReadNotificationCenter *)self localNC];
    [v14 addObserver:v9 selector:a4 name:v15 object:0];

    v8 = v15;
  }
}

- (void)notificationProxyMethod:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyDistributedReadNotificationCenter *)self localNC];
  [v5 postNotification:v4];
}

- (void)removeObserver:(id)a3 name:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(TransparencyDistributedReadNotificationCenter *)self localNC];
    [v8 removeObserver:v7 name:v6 object:0];
  }
}

@end
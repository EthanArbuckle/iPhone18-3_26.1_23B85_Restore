@interface TransparencyDistributedReadNotificationCenter
+ (id)defaultCenter;
- (TransparencyDistributedReadNotificationCenter)init;
- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name;
- (void)notificationProxyMethod:(id)method;
- (void)removeObserver:(id)observer name:(id)name;
@end

@implementation TransparencyDistributedReadNotificationCenter

+ (id)defaultCenter
{
  os_unfair_lock_lock(&unk_10039CCB0);
  v3 = qword_10039CCA8;
  if (!v3)
  {
    os_unfair_lock_unlock(&unk_10039CCB0);
    v4 = objc_alloc_init(self);
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

- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v15 = nameCopy;
    observerCopy = observer;
    os_unfair_lock_lock(&unk_10039CCB0);
    cachedNotification = [(TransparencyDistributedReadNotificationCenter *)self cachedNotification];
    v11 = [cachedNotification containsObject:v15];

    if (v11)
    {
      os_unfair_lock_unlock(&unk_10039CCB0);
    }

    else
    {
      cachedNotification2 = [(TransparencyDistributedReadNotificationCenter *)self cachedNotification];
      [cachedNotification2 addObject:v15];

      os_unfair_lock_unlock(&unk_10039CCB0);
      nsDNC = [(TransparencyDistributedReadNotificationCenter *)self nsDNC];
      [nsDNC addObserver:self selector:"notificationProxyMethod:" name:v15 object:0];
    }

    localNC = [(TransparencyDistributedReadNotificationCenter *)self localNC];
    [localNC addObserver:observerCopy selector:selector name:v15 object:0];

    nameCopy = v15;
  }
}

- (void)notificationProxyMethod:(id)method
{
  methodCopy = method;
  localNC = [(TransparencyDistributedReadNotificationCenter *)self localNC];
  [localNC postNotification:methodCopy];
}

- (void)removeObserver:(id)observer name:(id)name
{
  if (name)
  {
    nameCopy = name;
    observerCopy = observer;
    localNC = [(TransparencyDistributedReadNotificationCenter *)self localNC];
    [localNC removeObserver:observerCopy name:nameCopy object:0];
  }
}

@end
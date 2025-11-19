@interface APCacheableSynchronizedObject
- (APCacheableSynchronizedObject)initWithCoder:(id)a3;
- (APCacheableSynchronizedObject)initWithIdentifier:(id)a3;
- (void)lockObject;
- (void)unlockObject;
@end

@implementation APCacheableSynchronizedObject

- (APCacheableSynchronizedObject)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = APCacheableSynchronizedObject;
  v3 = [(APCacheableBaseObject *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = objc_alloc_init(APUnfairRecursiveLock);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

- (APCacheableSynchronizedObject)initWithIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = APCacheableSynchronizedObject;
  v3 = [(APCacheableBaseObject *)&v7 initWithIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(APUnfairRecursiveLock);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

- (void)lockObject
{
  v2 = [(APCacheableSynchronizedObject *)self lock];
  [v2 lock];
}

- (void)unlockObject
{
  v2 = [(APCacheableSynchronizedObject *)self lock];
  [v2 unlock];
}

@end
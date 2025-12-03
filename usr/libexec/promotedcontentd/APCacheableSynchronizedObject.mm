@interface APCacheableSynchronizedObject
- (APCacheableSynchronizedObject)initWithCoder:(id)coder;
- (APCacheableSynchronizedObject)initWithIdentifier:(id)identifier;
- (void)lockObject;
- (void)unlockObject;
@end

@implementation APCacheableSynchronizedObject

- (APCacheableSynchronizedObject)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = APCacheableSynchronizedObject;
  v3 = [(APCacheableBaseObject *)&v7 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_alloc_init(APUnfairRecursiveLock);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

- (APCacheableSynchronizedObject)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = APCacheableSynchronizedObject;
  v3 = [(APCacheableBaseObject *)&v7 initWithIdentifier:identifier];
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
  lock = [(APCacheableSynchronizedObject *)self lock];
  [lock lock];
}

- (void)unlockObject
{
  lock = [(APCacheableSynchronizedObject *)self lock];
  [lock unlock];
}

@end
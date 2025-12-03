@interface APSequentialProcessor
- (void)_next:(BOOL)_next;
@end

@implementation APSequentialProcessor

- (void)_next:(BOOL)_next
{
  _nextCopy = _next;
  lock = [(APSequentialProcessor *)self lock];
  [lock lock];
  if (_nextCopy)
  {
    [(APSequentialProcessor *)self setIsRunning:0];
    [(APSequentialProcessor *)self setCollection:0];
    [lock unlock];
  }

  else
  {
    collectionProviderLock = [(APSequentialProcessor *)self collectionProviderLock];
    [collectionProviderLock lock];
    collectionProvider = [(APSequentialProcessor *)self collectionProvider];
    [(APSequentialProcessor *)self setCollectionProvider:0];
    [collectionProviderLock unlock];
    if (collectionProvider)
    {
      v8 = collectionProvider[2](collectionProvider);
      [(APSequentialProcessor *)self setCollection:v8];
    }

    collection = [(APSequentialProcessor *)self collection];
    nextObject = [collection nextObject];

    if (nextObject)
    {
      workBlock = [(APSequentialProcessor *)self workBlock];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100337038;
      v12[3] = &unk_100464180;
      v12[4] = self;
      (workBlock)[2](workBlock, nextObject, v12);
    }

    else
    {
      [(APSequentialProcessor *)self setCollection:0];
      [(APSequentialProcessor *)self setIsRunning:0];
    }

    [lock unlock];
  }
}

@end
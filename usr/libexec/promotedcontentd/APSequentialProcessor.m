@interface APSequentialProcessor
- (void)_next:(BOOL)a3;
@end

@implementation APSequentialProcessor

- (void)_next:(BOOL)a3
{
  v3 = a3;
  v5 = [(APSequentialProcessor *)self lock];
  [v5 lock];
  if (v3)
  {
    [(APSequentialProcessor *)self setIsRunning:0];
    [(APSequentialProcessor *)self setCollection:0];
    [v5 unlock];
  }

  else
  {
    v6 = [(APSequentialProcessor *)self collectionProviderLock];
    [v6 lock];
    v7 = [(APSequentialProcessor *)self collectionProvider];
    [(APSequentialProcessor *)self setCollectionProvider:0];
    [v6 unlock];
    if (v7)
    {
      v8 = v7[2](v7);
      [(APSequentialProcessor *)self setCollection:v8];
    }

    v9 = [(APSequentialProcessor *)self collection];
    v10 = [v9 nextObject];

    if (v10)
    {
      v11 = [(APSequentialProcessor *)self workBlock];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100337038;
      v12[3] = &unk_100464180;
      v12[4] = self;
      (v11)[2](v11, v10, v12);
    }

    else
    {
      [(APSequentialProcessor *)self setCollection:0];
      [(APSequentialProcessor *)self setIsRunning:0];
    }

    [v5 unlock];
  }
}

@end
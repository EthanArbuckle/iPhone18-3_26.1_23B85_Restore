@interface APCacheStoreCleanupOperation
- (APCacheStoreCleanupOperation)initWithFilesEnumerator:(id)a3 expirationDate:(id)a4;
- (void)main;
@end

@implementation APCacheStoreCleanupOperation

- (APCacheStoreCleanupOperation)initWithFilesEnumerator:(id)a3 expirationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [NSString stringWithFormat:@"%@ filesEnumerator cannot be nil", objc_opt_class()];
    APSimulateCrash();

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [NSString stringWithFormat:@"%@ expirationDate cannot be nil", objc_opt_class()];
  APSimulateCrash();

LABEL_3:
  v10 = [(APCacheStoreCleanupOperation *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_filesEnumerator, a3);
    [v9 timeIntervalSince1970];
    v11->_expirationDate = v12;
    v11->_maxObjectLifetime = 864000.0;
    v13 = +[NSDate now];
    now = v11->_now;
    v11->_now = v13;
  }

  return v11;
}

- (void)main
{
  v3 = +[NSDate now];
  [v3 timeIntervalSince1970];
  v5 = v4;

  do
  {
    if (([(APCacheStoreCleanupOperation *)self isCancelled]& 1) != 0)
    {
      break;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = sub_1003953BC(self);
    objc_autoreleasePoolPop(v6);
    v8 = +[NSDate now];
    [v8 timeIntervalSince1970];
    v10 = v9;

    if (!v7)
    {
      break;
    }
  }

  while (v10 - v5 <= 600.0);
  v12 = +[NSDate now];
  [v12 timeIntervalSince1970];
  [(APCacheStoreCleanupOperation *)self setDuration:v11 - v5];
}

@end
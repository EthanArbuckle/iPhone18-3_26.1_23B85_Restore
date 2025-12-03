@interface ServiceProvider
- (void)_teardown;
- (void)start;
@end

@implementation ServiceProvider

- (void)start
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(ServiceProvider *)self fm_logID];
    account = [(ServiceProvider *)self account];
    uniqueId = [account uniqueId];
    *buf = 138412546;
    v17 = fm_logID;
    v18 = 2112;
    v19 = uniqueId;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ Starting service provider for account %@", buf, 0x16u);
  }

  account2 = [(ServiceProvider *)self account];

  if (account2)
  {
    v9 = +[NSOperationQueue mainQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100006140;
    v15[3] = &unk_10005D288;
    v15[4] = self;
    v10 = [v3 addObserverForName:@"AccountDidDeactivateNotificationKey" object:0 queue:v9 usingBlock:v15];
    [(ServiceProvider *)self setDidDeactivateToken:v10];

    v11 = +[NSOperationQueue mainQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000061D0;
    v14[3] = &unk_10005D288;
    v14[4] = self;
    v12 = [v3 addObserverForName:@"AccountDidUpdateNotification" object:0 queue:v11 usingBlock:v14];
    [(ServiceProvider *)self setDidUpdateToken:v12];
  }

  else
  {
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000367B0(self, v13);
    }
  }
}

- (void)_teardown
{
  v7 = +[NSNotificationCenter defaultCenter];
  didDeactivateToken = [(ServiceProvider *)self didDeactivateToken];

  if (didDeactivateToken)
  {
    didDeactivateToken2 = [(ServiceProvider *)self didDeactivateToken];
    [v7 removeObserver:didDeactivateToken2];

    [(ServiceProvider *)self setDidDeactivateToken:0];
  }

  didUpdateToken = [(ServiceProvider *)self didUpdateToken];

  if (didUpdateToken)
  {
    didUpdateToken2 = [(ServiceProvider *)self didUpdateToken];
    [v7 removeObserver:didUpdateToken2];

    [(ServiceProvider *)self setDidUpdateToken:0];
  }

  [(ServiceProvider *)self deinitializeProvider];
}

@end
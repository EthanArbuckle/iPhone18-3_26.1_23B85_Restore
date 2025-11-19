@interface GKFireworksPseudonymManager
- (GKFireworksPseudonymManager)initWithService:(id)a3;
- (void)provisionPseudonymIfNeeded:(id)a3;
- (void)revokePseudonym:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation GKFireworksPseudonymManager

- (GKFireworksPseudonymManager)initWithService:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_10028E244(a2, self);
  }

  v13.receiver = self;
  v13.super_class = GKFireworksPseudonymManager;
  v7 = [(GKFireworksPseudonymManager *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_service, a3);
    v8->_inFlightProvision = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.gamekit.pseudonymQueue", v9);
    queue = v8->_queue;
    v8->_queue = v10;
  }

  return v8;
}

- (void)provisionPseudonymIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(GKFireworksPseudonymManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100117DBC;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)revokePseudonym:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKFireworksPseudonymManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001184A0;
  block[3] = &unk_100360FC8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end
@interface GKFireworksPseudonymManager
- (GKFireworksPseudonymManager)initWithService:(id)service;
- (void)provisionPseudonymIfNeeded:(id)needed;
- (void)revokePseudonym:(id)pseudonym withCompletionHandler:(id)handler;
@end

@implementation GKFireworksPseudonymManager

- (GKFireworksPseudonymManager)initWithService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    sub_10028E244(a2, self);
  }

  v13.receiver = self;
  v13.super_class = GKFireworksPseudonymManager;
  v7 = [(GKFireworksPseudonymManager *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_service, service);
    v8->_inFlightProvision = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.gamekit.pseudonymQueue", v9);
    queue = v8->_queue;
    v8->_queue = v10;
  }

  return v8;
}

- (void)provisionPseudonymIfNeeded:(id)needed
{
  neededCopy = needed;
  queue = [(GKFireworksPseudonymManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100117DBC;
  v7[3] = &unk_100361270;
  v7[4] = self;
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_async(queue, v7);
}

- (void)revokePseudonym:(id)pseudonym withCompletionHandler:(id)handler
{
  pseudonymCopy = pseudonym;
  handlerCopy = handler;
  queue = [(GKFireworksPseudonymManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001184A0;
  block[3] = &unk_100360FC8;
  v12 = pseudonymCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = pseudonymCopy;
  dispatch_async(queue, block);
}

@end
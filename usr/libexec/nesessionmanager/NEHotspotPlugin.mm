@interface NEHotspotPlugin
- (void)handleHotspotProviderError:(id)error;
- (void)handleHotspotProviderStopped;
@end

@implementation NEHotspotPlugin

- (void)handleHotspotProviderStopped
{
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018594;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)handleHotspotProviderError:(id)error
{
  errorCopy = error;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001869C;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(delegateQueue, v7);
}

@end
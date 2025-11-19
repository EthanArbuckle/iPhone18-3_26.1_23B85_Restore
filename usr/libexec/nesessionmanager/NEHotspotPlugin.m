@interface NEHotspotPlugin
- (void)handleHotspotProviderError:(id)a3;
- (void)handleHotspotProviderStopped;
@end

@implementation NEHotspotPlugin

- (void)handleHotspotProviderStopped
{
  v3 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018594;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleHotspotProviderError:(id)a3
{
  v4 = a3;
  v5 = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001869C;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end
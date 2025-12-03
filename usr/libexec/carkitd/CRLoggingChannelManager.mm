@interface CRLoggingChannelManager
- (CRLoggingChannelManager)initWithSessionStatus:(id)status;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CRLoggingChannelManager

- (CRLoggingChannelManager)initWithSessionStatus:(id)status
{
  statusCopy = status;
  v7.receiver = self;
  v7.super_class = CRLoggingChannelManager;
  v5 = [(CRLoggingChannelManager *)&v7 init];
  if (v5)
  {
    [statusCopy addSessionObserver:v5];
  }

  return v5;
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041910;
  block[3] = &unk_1000DD8E8;
  objc_copyWeak(&v8, &location);
  v7 = connectCopy;
  v5 = connectCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100041A78;
  v3[3] = &unk_1000DDA60;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

@end
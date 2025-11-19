@interface PRWirelessProximityAdapter
- (PRWirelessProximityAdapter)initWithQueue:(id)a3;
- (void)enableSPMIMessagingWithHandler:(id)a3;
- (void)querySPMIMessagingStatusWithHandler:(id)a3;
- (void)rangingDidUpdateState:(id)a3;
@end

@implementation PRWirelessProximityAdapter

- (PRWirelessProximityAdapter)initWithQueue:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_1004C111C(a2, self);
  }

  v12.receiver = self;
  v12.super_class = PRWirelessProximityAdapter;
  v7 = [(PRWirelessProximityAdapter *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_queue, a3);
    v9 = [[WPRanging alloc] initWithDelegate:v8 queue:v8->_queue];
    wpRanging = v8->_wpRanging;
    v8->_wpRanging = v9;
  }

  return v8;
}

- (void)enableSPMIMessagingWithHandler:(id)a3
{
  v4 = a3;
  wpRanging = self->_wpRanging;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033A470;
  v7[3] = &unk_1009A59E8;
  v8 = v4;
  v6 = v4;
  [(WPRanging *)wpRanging enableRanging:1 reply:v7];
}

- (void)querySPMIMessagingStatusWithHandler:(id)a3
{
  v4 = a3;
  wpRanging = self->_wpRanging;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033A520;
  v7[3] = &unk_1009A5A10;
  v8 = v4;
  v6 = v4;
  [(WPRanging *)wpRanging isRangingEnabledReply:v7];
}

- (void)rangingDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_wiproxStateHandler)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10033A5E4;
    v7[3] = &unk_1009A5A38;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

@end
@interface W5IOPowerManagement
- (W5IOPowerManagement)init;
- (void)dealloc;
- (void)setUpdatedPowerManagementCallback:(id)a3;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation W5IOPowerManagement

- (W5IOPowerManagement)init
{
  v5.receiver = self;
  v5.super_class = W5IOPowerManagement;
  v2 = [(W5IOPowerManagement *)&v5 init];
  if (v2 && (v3 = dispatch_queue_create("com.apple.wifivelocityd.iopm", 0), (v2->_queue = v3) != 0))
  {
    dispatch_queue_set_specific(v3, &v2->_queue, 1, 0);
  }

  else
  {

    return 0;
  }

  return v2;
}

- (void)setUpdatedPowerManagementCallback:(id)a3
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedPowerManagementCallback = [a3 copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100081424;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(queue, v6);
  }
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = W5IOPowerManagement;
  [(W5IOPowerManagement *)&v4 dealloc];
}

- (void)startEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081548;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopEventMonitoring
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081804;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end
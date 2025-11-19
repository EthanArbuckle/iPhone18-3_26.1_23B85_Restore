@interface SESAppletLockStateMonitor
- (void)onEvent:(id)a3 eventPayload:(id)a4;
@end

@implementation SESAppletLockStateMonitor

- (void)onEvent:(id)a3 eventPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038428;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

@end
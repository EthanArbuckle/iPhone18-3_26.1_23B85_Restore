@interface SESAppletLockStateMonitor
- (void)onEvent:(id)event eventPayload:(id)payload;
@end

@implementation SESAppletLockStateMonitor

- (void)onEvent:(id)event eventPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038428;
  block[3] = &unk_1004C24A8;
  v12 = eventCopy;
  v13 = payloadCopy;
  selfCopy = self;
  v9 = payloadCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

@end
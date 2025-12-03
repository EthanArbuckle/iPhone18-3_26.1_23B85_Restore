@interface GKContactsIntegrationTimer
- (void)cancel;
- (void)startWithStartTime:(unint64_t)time updateInterval:(unint64_t)interval queue:(id)queue updateBlock:(id)block cancelBlock:(id)cancelBlock;
@end

@implementation GKContactsIntegrationTimer

- (void)startWithStartTime:(unint64_t)time updateInterval:(unint64_t)interval queue:(id)queue updateBlock:(id)block cancelBlock:(id)cancelBlock
{
  queueCopy = queue;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
  v17 = self->_timer;
  self->_timer = v16;

  dispatch_source_set_timer(self->_timer, time, interval, 0x3B9ACA00uLL);
  v18 = self->_timer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10017ACD8;
  handler[3] = &unk_100360FA0;
  v25 = blockCopy;
  v19 = blockCopy;
  dispatch_source_set_event_handler(v18, handler);
  v20 = self->_timer;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10017ACE8;
  v22[3] = &unk_100360FA0;
  v23 = cancelBlockCopy;
  v21 = cancelBlockCopy;
  dispatch_source_set_cancel_handler(v20, v22);
  dispatch_resume(self->_timer);
}

- (void)cancel
{
  timer = [(GKContactsIntegrationTimer *)self timer];

  if (timer)
  {
    timer2 = [(GKContactsIntegrationTimer *)self timer];
    dispatch_source_cancel(timer2);
  }
}

@end
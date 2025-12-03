@interface IOHIDDisplayStateMonitor
- (IOHIDDisplayStateMonitor)initWithTargetQueue:(id)queue;
- (id)monitorDisplayOnStateForReason:(id)reason handler:(id)handler;
@end

@implementation IOHIDDisplayStateMonitor

- (IOHIDDisplayStateMonitor)initWithTargetQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = IOHIDDisplayStateMonitor;
  result = [(IOHIDDisplayStateMonitor *)&v5 init];
  if (result)
  {
    result->_targetQueue = queue;
  }

  return result;
}

- (id)monitorDisplayOnStateForReason:(id)reason handler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000266B4;
  v5[3] = &unk_100085C78;
  v5[4] = handler;
  return [DarwinNotificationWatcher monitorNotificationKey:@"com.apple.iokit.hid.displayStatus" forReason:reason queue:[(IOHIDDisplayStateMonitor *)self targetQueue] handler:v5];
}

@end
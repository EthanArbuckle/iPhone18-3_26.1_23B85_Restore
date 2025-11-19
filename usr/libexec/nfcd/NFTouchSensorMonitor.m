@interface NFTouchSensorMonitor
- (void)dealloc;
@end

@implementation NFTouchSensorMonitor

- (void)dealloc
{
  if (self && self->_started)
  {
    [(HIDEventSystemClient *)self->_eventMonitorClient cancel];
  }

  v3.receiver = self;
  v3.super_class = NFTouchSensorMonitor;
  [(NFTouchSensorMonitor *)&v3 dealloc];
}

@end
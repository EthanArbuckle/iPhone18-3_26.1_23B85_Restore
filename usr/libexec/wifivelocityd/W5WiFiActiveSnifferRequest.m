@interface W5WiFiActiveSnifferRequest
- (void)dealloc;
@end

@implementation W5WiFiActiveSnifferRequest

- (void)dealloc
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_release(timeoutTimer);
  }

  v4.receiver = self;
  v4.super_class = W5WiFiActiveSnifferRequest;
  [(W5WiFiActiveSnifferRequest *)&v4 dealloc];
}

@end
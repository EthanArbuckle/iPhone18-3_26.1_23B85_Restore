@interface NFBasebandMonitor
- (NFBasebandMonitor)init;
- (void)dealloc;
@end

@implementation NFBasebandMonitor

- (NFBasebandMonitor)init
{
  v5.receiver = self;
  v5.super_class = NFBasebandMonitor;
  v2 = [(NFBasebandMonitor *)&v5 init];
  v3 = v2;
  if (&_TelephonyBasebandCreateController && v2)
  {
    v2->_bbRef = TelephonyBasebandCreateController();
  }

  return v3;
}

- (void)dealloc
{
  bbRef = self->_bbRef;
  if (bbRef)
  {
    CFRelease(bbRef);
  }

  v4.receiver = self;
  v4.super_class = NFBasebandMonitor;
  [(NFBasebandMonitor *)&v4 dealloc];
}

@end
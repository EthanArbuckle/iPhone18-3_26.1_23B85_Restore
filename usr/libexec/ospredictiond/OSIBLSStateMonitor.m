@interface OSIBLSStateMonitor
- (BOOL)aodOffOrSuppressed;
@end

@implementation OSIBLSStateMonitor

- (BOOL)aodOffOrSuppressed
{
  v2 = +[BLSBacklight sharedBacklight];
  v3 = [v2 backlightState] == 0;

  return v3;
}

@end
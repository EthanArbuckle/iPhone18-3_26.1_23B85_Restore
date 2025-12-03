@interface DIPDeviceInfo.DIPNFHardwareMonitor
- (_TtCC8coreidvd13DIPDeviceInfo20DIPNFHardwareMonitor)init;
- (void)hardwareStateDidChange;
@end

@implementation DIPDeviceInfo.DIPNFHardwareMonitor

- (void)hardwareStateDidChange
{
  selfCopy = self;
  sub_100595D3C();
}

- (_TtCC8coreidvd13DIPDeviceInfo20DIPNFHardwareMonitor)init
{
  v3 = OBJC_IVAR____TtCC8coreidvd13DIPDeviceInfo20DIPNFHardwareMonitor_notified;
  *(&self->super.isa + v3) = dispatch_semaphore_create(0);
  v5.receiver = self;
  v5.super_class = type metadata accessor for DIPDeviceInfo.DIPNFHardwareMonitor();
  return [(DIPDeviceInfo.DIPNFHardwareMonitor *)&v5 init];
}

@end
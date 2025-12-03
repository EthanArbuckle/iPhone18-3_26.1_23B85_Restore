@interface DeviceMonitor
- (_TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor)init;
- (void)deviceIsAsleepDidChange:(id)change isAsleep:(BOOL)asleep;
- (void)deviceIsClassCConnectedDidChange:(id)change isClassCConnected:(BOOL)connected;
- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected;
- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby;
- (void)devicePluggedInStateDidChange:(id)change pluggedIn:(BOOL)in;
@end

@implementation DeviceMonitor

- (_TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor)init
{
  v2 = self + OBJC_IVAR____TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor_nearby;
  *v2 = &_swiftEmptyArrayStorage;
  v2[8] = 1;
  v3 = self + OBJC_IVAR____TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor_connected;
  *v3 = &_swiftEmptyArrayStorage;
  v3[8] = 1;
  v4 = self + OBJC_IVAR____TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor_asleep;
  *v4 = &_swiftEmptyArrayStorage;
  v4[8] = 1;
  v5 = self + OBJC_IVAR____TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor_classCConnected;
  *v5 = &_swiftEmptyArrayStorage;
  v5[8] = 1;
  v6 = self + OBJC_IVAR____TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor_pluggedIn;
  *v6 = &_swiftEmptyArrayStorage;
  v6[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DeviceMonitor();
  return [(DeviceMonitor *)&v8 init];
}

- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby
{
  changeCopy = change;
  selfCopy = self;
  sub_100087348(nearby);
}

- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected
{
  changeCopy = change;
  selfCopy = self;
  sub_100087568(connected);
}

- (void)deviceIsAsleepDidChange:(id)change isAsleep:(BOOL)asleep
{
  changeCopy = change;
  selfCopy = self;
  sub_100087788(asleep);
}

- (void)deviceIsClassCConnectedDidChange:(id)change isClassCConnected:(BOOL)connected
{
  changeCopy = change;
  selfCopy = self;
  sub_1000879A8(connected);
}

- (void)devicePluggedInStateDidChange:(id)change pluggedIn:(BOOL)in
{
  changeCopy = change;
  selfCopy = self;
  sub_100087BC8(in);
}

@end
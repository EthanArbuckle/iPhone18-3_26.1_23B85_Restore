@interface DeviceMonitor
- (_TtC11photosfacedP33_8C086EDF4440DE29CC98029F05504C4213DeviceMonitor)init;
- (void)deviceIsAsleepDidChange:(id)a3 isAsleep:(BOOL)a4;
- (void)deviceIsClassCConnectedDidChange:(id)a3 isClassCConnected:(BOOL)a4;
- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4;
- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4;
- (void)devicePluggedInStateDidChange:(id)a3 pluggedIn:(BOOL)a4;
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

- (void)deviceIsNearbyDidChange:(id)a3 isNearby:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100087348(a4);
}

- (void)deviceIsConnectedDidChange:(id)a3 isConnected:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100087568(a4);
}

- (void)deviceIsAsleepDidChange:(id)a3 isAsleep:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100087788(a4);
}

- (void)deviceIsClassCConnectedDidChange:(id)a3 isClassCConnected:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000879A8(a4);
}

- (void)devicePluggedInStateDidChange:(id)a3 pluggedIn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100087BC8(a4);
}

@end
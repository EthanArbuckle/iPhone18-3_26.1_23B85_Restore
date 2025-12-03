@interface CurrentLocationMonitor
- (_TtC12searchpartyd22CurrentLocationMonitor)init;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation CurrentLocationMonitor

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_100010440(status);
}

- (_TtC12searchpartyd22CurrentLocationMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_100506710(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  static os_log_type_t.error.getter();
  if (qword_1016947B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v6 = errorCopy;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  os_log(_:dso:log:_:_:)();
}

@end
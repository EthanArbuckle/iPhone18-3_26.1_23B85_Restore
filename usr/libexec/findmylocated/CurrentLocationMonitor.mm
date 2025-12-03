@interface CurrentLocationMonitor
- (_TtC13findmylocated22CurrentLocationMonitor)init;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation CurrentLocationMonitor

- (_TtC13findmylocated22CurrentLocationMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_1001338EC(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  static os_log_type_t.error.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C1900;
  v6 = errorCopy;
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000588B8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  os_log(_:dso:log:_:_:)();
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_100133EBC(status);
}

@end
@interface CurrentLocationMonitor
- (_TtC13findmylocated22CurrentLocationMonitor)init;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation CurrentLocationMonitor

- (_TtC13findmylocated22CurrentLocationMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1001338EC(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  static os_log_type_t.error.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C1900;
  v6 = v4;
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000588B8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  os_log(_:dso:log:_:_:)();
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_100133EBC(a4);
}

@end
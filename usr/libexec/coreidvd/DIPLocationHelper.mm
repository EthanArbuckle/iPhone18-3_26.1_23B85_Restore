@interface DIPLocationHelper
- (_TtC8coreidvd17DIPLocationHelper)init;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation DIPLocationHelper

- (_TtC8coreidvd17DIPLocationHelper)init
{
  v2 = objc_allocWithZone(type metadata accessor for DIPLocationHelper());
  v3 = sub_100598D70(0, 0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_10001F8D4(0, &qword_100848A38, CLLocation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10059A714(v7, v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10059AFF4(v6);
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_10059B1CC(a4);
}

@end
@interface DIPLocationHelper
- (_TtC8coreidvd17DIPLocationHelper)init;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
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

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_10001F8D4(0, &qword_100848A38, CLLocation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_10059A714(managerCopy, v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_10059AFF4(managerCopy);
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_10059B1CC(status);
}

@end
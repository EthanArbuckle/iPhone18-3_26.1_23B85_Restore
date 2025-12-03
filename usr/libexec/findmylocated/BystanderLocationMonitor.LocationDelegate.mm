@interface BystanderLocationMonitor.LocationDelegate
- (_TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate)init;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
@end

@implementation BystanderLocationMonitor.LocationDelegate

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = v5;
  selfCopy = self;
  static Transaction.asyncTask(name:block:)();
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  managerCopy = manager;
  visitCopy = visit;
  selfCopy = self;
  sub_1003AE1F4(visitCopy);
}

- (_TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
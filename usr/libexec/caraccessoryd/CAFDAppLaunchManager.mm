@interface CAFDAppLaunchManager
- (_TtC13caraccessoryd20CAFDAppLaunchManager)init;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)historicalNotificationService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)historicalNotificationService:(id)service didUpdateTimestamp:(id)timestamp;
@end

@implementation CAFDAppLaunchManager

- (_TtC13caraccessoryd20CAFDAppLaunchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  specialized CAFDAppLaunchManager.carManager(_:didUpdateCurrentCar:)(car);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  CAFDAppLaunchManager.carDidUpdateAccessories(_:)(accessoriesCopy);
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  swift_beginAccess();
  assertionCopy = assertion;
  selfCopy = self;
  v8 = specialized Set._Variant.remove(_:)(assertionCopy);
  swift_endAccess();
}

- (void)historicalNotificationService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFDAppLaunchManager.requestLaunch(app:for:)(serviceCopy);
}

- (void)historicalNotificationService:(id)service didUpdateTimestamp:(id)timestamp
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v9 - v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUnitDuration, NSUnitDuration_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
}

@end
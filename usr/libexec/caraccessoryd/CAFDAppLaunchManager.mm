@interface CAFDAppLaunchManager
- (_TtC13caraccessoryd20CAFDAppLaunchManager)init;
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)historicalNotificationService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)historicalNotificationService:(id)a3 didUpdateTimestamp:(id)a4;
@end

@implementation CAFDAppLaunchManager

- (_TtC13caraccessoryd20CAFDAppLaunchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFDAppLaunchManager.carManager(_:didUpdateCurrentCar:)(a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDAppLaunchManager.carDidUpdateAccessories(_:)(v4);
}

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  swift_beginAccess();
  v6 = a3;
  v7 = self;
  v8 = specialized Set._Variant.remove(_:)(v6);
  swift_endAccess();
}

- (void)historicalNotificationService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFDAppLaunchManager.requestLaunch(app:for:)(v5);
}

- (void)historicalNotificationService:(id)a3 didUpdateTimestamp:(id)a4
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
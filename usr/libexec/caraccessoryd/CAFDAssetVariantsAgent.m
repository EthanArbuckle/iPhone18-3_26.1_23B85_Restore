@interface CAFDAssetVariantsAgent
- (NSString)domain;
- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)init;
- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)vehicleResourcesManager;
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)clusterThemeManager:(id)a3 didUpdateExtraAssetsURL:(id)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)setVehicleResourcesManager:(id)a3;
@end

@implementation CAFDAssetVariantsAgent

- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)vehicleResourcesManager
{
  v3 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVehicleResourcesManager:(id)a3
{
  v5 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  CAFDAssetVariantsAgent.vehicleResourcesManager.didset();
}

- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)init
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
  specialized CAFDAssetVariantsAgent.carManager(_:didUpdateCurrentCar:)(a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDAssetVariantsAgent.carDidUpdateAccessories(_:)(v4);
}

- (void)clusterThemeManager:(id)a3 didUpdateExtraAssetsURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFDAssetVariantsAgent.clusterThemeManager(_:didUpdateExtraAssetsURL:)(a4);
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  specialized CAFDAssetVariantsAgent.accessoryDidUpdate(_:receivedAllValues:)();
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  specialized CAFDAssetVariantsAgent.listener(_:didReceive:withContext:)(v8);

  swift_unknownObjectRelease();
}

- (NSString)domain
{
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.domain.getter();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end
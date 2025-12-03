@interface CAFDAssetVariantsAgent
- (NSString)domain;
- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)init;
- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)vehicleResourcesManager;
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)clusterThemeManager:(id)manager didUpdateExtraAssetsURL:(id)l;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setVehicleResourcesManager:(id)manager;
@end

@implementation CAFDAssetVariantsAgent

- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)vehicleResourcesManager
{
  v3 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVehicleResourcesManager:(id)manager
{
  v5 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = manager;
  managerCopy = manager;
  selfCopy = self;

  CAFDAssetVariantsAgent.vehicleResourcesManager.didset();
}

- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)init
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
  specialized CAFDAssetVariantsAgent.carManager(_:didUpdateCurrentCar:)(car);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  CAFDAssetVariantsAgent.carDidUpdateAccessories(_:)(accessoriesCopy);
}

- (void)clusterThemeManager:(id)manager didUpdateExtraAssetsURL:(id)l
{
  managerCopy = manager;
  lCopy = l;
  selfCopy = self;
  specialized CAFDAssetVariantsAgent.clusterThemeManager(_:didUpdateExtraAssetsURL:)(l);
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  specialized CAFDAssetVariantsAgent.accessoryDidUpdate(_:receivedAllValues:)();
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized CAFDAssetVariantsAgent.listener(_:didReceive:withContext:)(connectionCopy);

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
@interface CAFDVehicleResourcesManager
- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)assetVariantsAgent;
- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)init;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)setAssetVariantsAgent:(id)agent;
@end

@implementation CAFDVehicleResourcesManager

- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)assetVariantsAgent
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAssetVariantsAgent:(id)agent
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  agentCopy = agent;
  selfCopy = self;
  CAFDVehicleResourcesManager.assetVariantsAgent.didset();
}

- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)init
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
  specialized CAFDVehicleResourcesManager.carManager(_:didUpdateCurrentCar:)(car);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  CAFDVehicleResourcesManager.carDidUpdateAccessories(_:)(accessoriesCopy);
}

@end
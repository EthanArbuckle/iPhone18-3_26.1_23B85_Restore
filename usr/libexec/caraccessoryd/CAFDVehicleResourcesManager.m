@interface CAFDVehicleResourcesManager
- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)assetVariantsAgent;
- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)init;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)setAssetVariantsAgent:(id)a3;
@end

@implementation CAFDVehicleResourcesManager

- (_TtC13caraccessoryd22CAFDAssetVariantsAgent)assetVariantsAgent
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAssetVariantsAgent:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = a3;
  v6 = self;
  CAFDVehicleResourcesManager.assetVariantsAgent.didset();
}

- (_TtC13caraccessoryd27CAFDVehicleResourcesManager)init
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
  specialized CAFDVehicleResourcesManager.carManager(_:didUpdateCurrentCar:)(a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDVehicleResourcesManager.carDidUpdateAccessories(_:)(v4);
}

@end
@interface CAFDAppLinksAgent
- (_TtC13caraccessoryd17CAFDAppLinksAgent)initWithCarManager:(id)manager;
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info;
- (void)automakerSettingService:(id)service didUpdateSymbolName:(id)name;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
@end

@implementation CAFDAppLinksAgent

- (_TtC13caraccessoryd17CAFDAppLinksAgent)initWithCarManager:(id)manager
{
  managerCopy = manager;
  v4 = specialized CAFDAppLinksAgent.init(carManager:)(managerCopy);

  return v4;
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  CAFDAppLinksAgent.carDidUpdateAccessories(_:)(accessoriesCopy);
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  if (values)
  {
    updateCopy = update;
    selfCopy = self;
    v6 = [updateCopy car];
    if (v6)
    {
      v7 = v6;
      [(CAFDAppLinksAgent *)selfCopy carDidUpdateAccessories:v6];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)automakerSettingService:(id)service didUpdateProminenceInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  selfCopy = self;
  CAFDAppLinksAgent.automakerSettingService(_:didUpdateProminenceInfo:)(serviceCopy, info);
}

- (void)automakerSettingService:(id)service didUpdateSymbolName:(id)name
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  CAFDAppLinksAgent.automakerSettingService(_:didUpdateSymbolName:)(serviceCopy, v6, v8);
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  specialized CAFDAppLinksAgent.carManager(_:didUpdateCurrentCar:)(car);
}

@end
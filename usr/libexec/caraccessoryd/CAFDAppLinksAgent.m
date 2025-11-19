@interface CAFDAppLinksAgent
- (_TtC13caraccessoryd17CAFDAppLinksAgent)initWithCarManager:(id)a3;
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4;
- (void)automakerSettingService:(id)a3 didUpdateSymbolName:(id)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
@end

@implementation CAFDAppLinksAgent

- (_TtC13caraccessoryd17CAFDAppLinksAgent)initWithCarManager:(id)a3
{
  v3 = a3;
  v4 = specialized CAFDAppLinksAgent.init(carManager:)(v3);

  return v4;
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDAppLinksAgent.carDidUpdateAccessories(_:)(v4);
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    v8 = self;
    v6 = [v5 car];
    if (v6)
    {
      v7 = v6;
      [(CAFDAppLinksAgent *)v8 carDidUpdateAccessories:v6];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)automakerSettingService:(id)a3 didUpdateProminenceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFDAppLinksAgent.automakerSettingService(_:didUpdateProminenceInfo:)(v6, a4);
}

- (void)automakerSettingService:(id)a3 didUpdateSymbolName:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  CAFDAppLinksAgent.automakerSettingService(_:didUpdateSymbolName:)(v9, v6, v8);
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized CAFDAppLinksAgent.carManager(_:didUpdateCurrentCar:)(a4);
}

@end
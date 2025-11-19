@interface GKGameLibraryBiome
- (id)appInFocusDataFor:(id)a3;
@end

@implementation GKGameLibraryBiome

- (id)appInFocusDataFor:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = GameLibraryBiome.appInFocusData(for:)(v4);

  if (v6)
  {
    type metadata accessor for Date();
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end
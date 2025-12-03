@interface GKGameLibraryBiome
- (id)appInFocusDataFor:(id)for;
@end

@implementation GKGameLibraryBiome

- (id)appInFocusDataFor:(id)for
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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
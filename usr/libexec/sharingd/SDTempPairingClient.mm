@interface SDTempPairingClient
- (_TtC16DaemoniOSLibrary19SDTempPairingClient)init;
- (void)handleDiscoverableModeChanged;
- (void)handleRapportIdentitiesChanged;
- (void)proximityDeviceDidTrigger:(id)trigger;
@end

@implementation SDTempPairingClient

- (void)handleRapportIdentitiesChanged
{
  selfCopy = self;
  sub_100410888();
}

- (void)handleDiscoverableModeChanged
{
  selfCopy = self;
  sub_100410A6C();
}

- (_TtC16DaemoniOSLibrary19SDTempPairingClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proximityDeviceDidTrigger:(id)trigger
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100412D0C();

  (*(v5 + 8))(v8, v4);
}

@end
@interface SDAirDropBLEController
+ (_TtC16DaemoniOSLibrary22SDAirDropBLEController)shared;
- (void)startScanningWithIdentifier:(id)a3 deviceUpdatesHandler:(id)a4;
- (void)stopScanningWithIdentifier:(id)a3;
@end

@implementation SDAirDropBLEController

+ (_TtC16DaemoniOSLibrary22SDAirDropBLEController)shared
{
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A0CA0;

  return v3;
}

- (void)startScanningWithIdentifier:(id)a3 deviceUpdatesHandler:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_1005C442C(v10, sub_1005C6CE0, v12, &unk_1008E8EC8, sub_1005C6CFC, &unk_1008E8EE0);

  (*(v7 + 8))(v10, v6);
}

- (void)stopScanningWithIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1005C1F94(v8, &unk_1008E8E50, sub_1005C56E0, &unk_1008E8E68);

  (*(v5 + 8))(v8, v4);
}

@end
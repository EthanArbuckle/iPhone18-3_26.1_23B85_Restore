@interface SoundPlaybackManager
- (_TtC12searchpartyd20SoundPlaybackManager)init;
- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error;
@end

@implementation SoundPlaybackManager

- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  deviceCopy = device;
  if (stats)
  {
    statsCopy = stats;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100016590(v15, v16);
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 8))(v12, v8);
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  if (device)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
}

- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
}

- (_TtC12searchpartyd20SoundPlaybackManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface TagCommandManager
- (_TtC12searchpartyd17TagCommandManager)init;
- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats forDevice:(id)device withError:(id)error;
- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error;
@end

@implementation TagCommandManager

- (_TtC12searchpartyd17TagCommandManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  managerCopy = manager;
  deviceCopy = device;
  errorCopy = error;
  selfCopy = self;
  if (stats)
  {
    statsCopy = stats;
    stats = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0xF000000000000000;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1008A67BC(stats, v22, v15, error, self);
  sub_100006654(stats, v22);

  (*(v12 + 8))(v15, v11);
}

- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats forDevice:(id)device withError:(id)error
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  statsCopy = stats;
  selfCopy = self;
  errorCopy = error;
  sub_1008A703C(statsCopy, v14, error, selfCopy);

  (*(v11 + 8))(v14, v10);
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  if (device)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_1008A7700(errorCopy, v12);

  sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
}

- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_1008A7D8C(v10, selfCopy);

  (*(v7 + 8))(v10, v6);
}

@end
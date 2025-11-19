@interface SDAirDropBonjourBrowser
- (_TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser)init;
- (void)wirelessBluetoothStateChangedWithNotification:(id)a3;
@end

@implementation SDAirDropBonjourBrowser

- (void)wirelessBluetoothStateChangedWithNotification:(id)a3
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = qword_1009735E0;
  v15 = self;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v17 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v15;

  sub_1002B3098(0, 0, v7, &unk_100806EE8, v18);

  (*(v9 + 8))(v12, v8);
}

- (_TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
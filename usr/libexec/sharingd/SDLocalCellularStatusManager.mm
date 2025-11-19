@interface SDLocalCellularStatusManager
- (BOOL)getCellularSlicingStateForDevice:(id)a3;
- (id)statusUpdated;
- (void)publishCellularSlicingEnabledAs:(BOOL)a3;
- (void)setStatusUpdated:(id)a3;
- (void)subscribeForCellularSlicingAvailability;
@end

@implementation SDLocalCellularStatusManager

- (id)statusUpdated
{
  if (*(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated))
  {
    v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated + 8);
    v5[4] = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1005C8BF8;
    v5[3] = &unk_1008E93B8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStatusUpdated:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1005CBE20;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated);
  v8 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated);
  v9 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_100015D04(v8);
}

- (void)publishCellularSlicingEnabledAs:(BOOL)a3
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SFPlatform();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = self;
  static SFPlatform.iOS.getter();
  v15 = static SFPlatform.isPlatform(_:)();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v14;
    *(v17 + 40) = a3;
    sub_1002B3098(0, 0, v8, &unk_10080C7C8, v17);
  }

  else
  {
  }
}

- (void)subscribeForCellularSlicingAvailability
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for SFPlatform();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = self;
  static SFPlatform.visionOS.getter();
  v13 = static SFPlatform.isPlatform(_:)();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    sub_1002B3098(0, 0, v6, &unk_10080C7A0, v15);
  }

  else
  {
  }
}

- (BOOL)getCellularSlicingStateForDevice:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_1005CB4D4(v4, v6);

  return v8 & 1;
}

@end
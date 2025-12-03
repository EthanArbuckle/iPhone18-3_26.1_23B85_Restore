@interface SDShareSheetAirDropController
- (BOOL)hasActiveNearbySharingInteraction;
- (NSArray)availableNodes;
- (SDShareSheetAirDropController)init;
- (SDShareSheetAirDropControllerDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (id)availableNodesChangedHandler;
- (id)transferUpdateChangedHandler;
- (void)activateWithBundleID:(id)d;
- (void)cancelCurrentSend;
- (void)invalidate;
- (void)send:(id)send to:(id)to itemPreviewData:(id)data requestSource:(id)source;
- (void)setAvailableNodes:(id)nodes;
- (void)setAvailableNodesChangedHandler:(id)handler;
- (void)setTransferUpdateChangedHandler:(id)handler;
- (void)showAirDropUnavailableAlert;
@end

@implementation SDShareSheetAirDropController

- (SDXPCHelperConnection)helperConnection
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SDShareSheetAirDropControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)transferUpdateChangedHandler
{
  if (*(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler))
  {
    v2 = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);
    v5[4] = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100035F9C;
    v5[3] = &unk_1008EA1E0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTransferUpdateChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1003CCB40;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
  v8 = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
  v9 = *(self + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100015D04(v8);
}

- (id)availableNodesChangedHandler
{
  if (*(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler))
  {
    v2 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler + 8);
    v5[4] = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1005DBE28;
    v5[3] = &unk_1008EA190;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAvailableNodesChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1005E73EC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
  v8 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
  v9 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100015D04(v8);
}

- (NSArray)availableNodes
{
  v2 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodes);

  sub_10028088C(&qword_100986248, &qword_10080D420);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setAvailableNodes:(id)nodes
{
  sub_10028088C(&qword_100986248, &qword_10080D420);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodes);
  *(self + OBJC_IVAR___SDShareSheetAirDropController_availableNodes) = v4;
}

- (BOOL)hasActiveNearbySharingInteraction
{
  v3 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(self + v7, v6, &unk_100975F60, &unk_1007F91B0);
  v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  LOBYTE(self) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_100005508(v6, &unk_100975F60, &unk_1007F91B0);
  return self;
}

- (void)activateWithBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_1005DC514(v4, v6);
}

- (void)invalidate
{
  selfCopy = self;
  sub_1005DDDD8();
}

- (void)send:(id)send to:(id)to itemPreviewData:(id)data requestSource:(id)source
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  type metadata accessor for URL();
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (!data)
  {
    sourceCopy = source;
    selfCopy = self;
    v46 = 0xF000000000000000;
    v47 = 0;
    selfCopy4 = self;
    if (source)
    {
      goto LABEL_3;
    }

LABEL_5:
    v43 = 0;
    v44 = 0;
    goto LABEL_6;
  }

  sourceCopy2 = source;
  selfCopy3 = self;
  dataCopy = data;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v23;
  v47 = v22;

  selfCopy4 = self;
  if (!source)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v25;
  v44 = v24;

LABEL_6:
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v29 = v48;
  (*(v14 + 16))(v48, v18, v13);
  v30 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v31 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = v18;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v12;
  v35 = selfCopy4;
  *(v33 + 4) = selfCopy4;
  (*(v14 + 32))(&v33[v30], v29, v13);
  v36 = v46;
  *&v33[v31] = v45;
  v37 = &v33[v32];
  v38 = v47;
  *v37 = v47;
  v37[1] = v36;
  v39 = &v33[(v32 + 23) & 0xFFFFFFFFFFFFFFF8];
  v40 = v43;
  *v39 = v44;
  v39[1] = v40;
  v41 = v35;
  sub_1002A9924(v38, v36);
  sub_1002B3098(0, 0, v34, &unk_10080D3B0, v33);

  sub_10028BCC0(v38, v36);
  (*(v14 + 8))(v42, v13);
}

- (void)cancelCurrentSend
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_1002B281C(0, 0, v6, &unk_10080D398, v8);
}

- (void)showAirDropUnavailableAlert
{
  _sSo11SFUserAlertC16DaemoniOSLibraryE03mdmB0AByFZ_0();
  v3 = v2;
  [v2 present];
}

- (SDShareSheetAirDropController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
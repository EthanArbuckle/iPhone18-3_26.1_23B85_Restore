@interface RDXPCDebugPerformer
- (_TtC7remindd19RDXPCDebugPerformer)init;
- (void)addGeofenceWithLatitude:(double)a3 longitude:(double)a4 radius:(double)a5 uuid:(id)a6 completion:(id)a7;
- (void)crashDaemonWithMessage:(id)a3;
- (void)daemonPid:(id)a3;
- (void)daemonVersion:(id)a3;
- (void)dataAccessStatusReports:(id)a3;
- (void)destroyIsolatedStoreContainerWithToken:(id)a3 completion:(id)a4;
- (void)downloadContainerWithAccountID:(id)a3 completion:(id)a4;
- (void)fetchAllManualSortHintsWithDetails:(BOOL)a3 completion:(id)a4;
- (void)fetchContactsMatching:(id)a3 completion:(id)a4;
- (void)fetchGeofencesWithCompletion:(id)a3;
- (void)fireDebugNotificationWithText:(id)a3 identifier:(id)a4 categoryIdentifier:(id)a5 reference:(id)a6 isRemove:(BOOL)a7 completion:(id)a8;
- (void)handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:(double)a3;
- (void)handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:(double)a3;
- (void)handleIncompleteTemplateOperationQueueItemsImmediately;
- (void)immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)initDummyAutoCategorizationWithCategoryByTitle:(id)a3;
- (void)lowLevelMarkForDeletionWithObjectID:(id)a3 shouldSetDirtyFlags:(BOOL)a4 shouldRemoveFromParent:(BOOL)a5 completion:(id)a6;
- (void)purgeCKRecordWithRecordType:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)purgeDeletedObjectsWithCompletionHandler:(id)a3;
- (void)refreshHashtagLabelsImmediately;
- (void)registerBabysitterWith:(id)a3 completion:(id)a4;
- (void)removeFromUbKVSForKey:(id)a3 completion:(id)a4;
- (void)removeGeofenceWithUUID:(id)a3 completion:(id)a4;
- (void)resetAllManualSortHintsWithCompletion:(id)a3;
- (void)resetBabysitterWithRestrictedAccountID:(id)a3 completion:(id)a4;
- (void)resetManualSortHintBeforeLastAccessed:(id)a3 completion:(id)a4;
- (void)resetManualSortHintWithIdentifier:(id)a3 completion:(id)a4;
- (void)setupManualHashtagLabelUpdater;
- (void)simulateCoreLocationEnterRegionWithIdentifier:(id)a3 completion:(id)a4;
- (void)simulateCoreLocationExitRegionWithIdentifier:(id)a3 completion:(id)a4;
- (void)synchronous_revertImageAttachmentsToUnDeduped:(id)a3 completion:(id)a4;
- (void)updateManualSortHintWithIdentifier:(id)a3 lastAccessed:(id)a4 completion:(id)a5;
- (void)updateMinimumSupportedVersionWithObjectID:(id)a3 minimumSupportedVersion:(int64_t)a4 completion:(id)a5;
- (void)writeUbKVSWithKey:(id)a3 dateValue:(id)a4 completion:(id)a5;
- (void)writeUbKVSWithKey:(id)a3 stringValue:(id)a4 completion:(id)a5;
@end

@implementation RDXPCDebugPerformer

- (_TtC7remindd19RDXPCDebugPerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)daemonVersion:(id)a3
{
  v3 = _Block_copy(a3);
  Double.description.getter();
  v4 = String._bridgeToObjectiveC()();

  v3[2](v3, v4);

  _Block_release(v3);
}

- (void)daemonPid:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = [objc_opt_self() processInfo];
  [v4 processIdentifier];

  dispatch thunk of CustomStringConvertible.description.getter();
  v5 = String._bridgeToObjectiveC()();

  v3[2](v3, v5);

  _Block_release(v3);
}

- (void)writeUbKVSWithKey:(id)a3 stringValue:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4 && (v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12))
  {
    *(&v15 + 1) = &type metadata for String;
    *&v14 = v11;
    *(&v14 + 1) = v12;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  _Block_copy(v7);
  v13 = self;
  sub_10017D808(v8, v10, &v14, v7);

  _Block_release(v7);
  _Block_release(v7);
  sub_1000050A4(&v14, &qword_100939ED0, &qword_100791B10);
}

- (void)writeUbKVSWithKey:(id)a3 dateValue:(id)a4 completion:(id)a5
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = _Block_copy(a5);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (a4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  }

  sub_100010364(v14, v12, &unk_100938850, qword_100795AE0);
  type metadata accessor for Date();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    _Block_copy(v15);
    v21 = self;
    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v25 + 1) = v19;
    v22 = sub_1000103CC(&v24);
    (*(v20 + 32))(v22, v12, v19);
    _Block_copy(v15);
    v23 = self;
  }

  _Block_copy(v15);
  sub_10017D808(v16, v18, &v24, v15);
  _Block_release(v15);

  _Block_release(v15);
  _Block_release(v15);
  sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
  sub_1000050A4(&v24, &qword_100939ED0, &qword_100791B10);
}

- (void)removeFromUbKVSForKey:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_10017DA8C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)fireDebugNotificationWithText:(id)a3 identifier:(id)a4 categoryIdentifier:(id)a5 reference:(id)a6 isRemove:(BOOL)a7 completion:(id)a8
{
  v12 = _Block_copy(a8);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a4)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v16;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (a6)
  {
LABEL_4:
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  v22 = self;
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  sub_1001649E4(v24, v14, v15, a4, v17, v19, v20, a6, a7, sub_10003FE60, v23);
}

- (void)fetchGeofencesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100165098(sub_1001898E8, v5);
}

- (void)removeGeofenceWithUUID:(id)a3 completion:(id)a4
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
  sub_10016555C(v10, sub_10018ADB4, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)addGeofenceWithLatitude:(double)a3 longitude:(double)a4 radius:(double)a5 uuid:(id)a6 completion:(id)a7
{
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v22 - v15;
  v17 = _Block_copy(a7);
  if (a6)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = self;
  sub_100165AD8(v16, sub_10018ADB4, v20, a3, a4, a5);

  sub_1000050A4(v16, &unk_100939D90, "8\n\r");
}

- (void)simulateCoreLocationEnterRegionWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100166628(v6, v8, sub_10018ADB4, v9, &unk_1008E7818, sub_100189790, &unk_1008E7830);
}

- (void)simulateCoreLocationExitRegionWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100166628(v6, v8, sub_100189728, v9, &unk_1008E77A0, sub_100189730, &unk_1008E77B8);
}

- (void)purgeDeletedObjectsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v9[4] = sub_10003FE60;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100042968;
  v9[3] = &unk_1008E7740;
  v7 = _Block_copy(v9);
  v8 = self;

  [v6 purgeDeletedObjectsWithCompletionHandler:v7];

  _Block_release(v7);
}

- (void)lowLevelMarkForDeletionWithObjectID:(id)a3 shouldSetDirtyFlags:(BOOL)a4 shouldRemoveFromParent:(BOOL)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = self;
  sub_100180324(v11, a4, a5, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)crashDaemonWithMessage:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  sub_1001F67C8(inited);

  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("RDXPCDebugPerformer called crash {message: %@}", 46, 2);
  __break(1u);
}

- (void)fetchContactsMatching:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_1001810A8(v7, a3, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)destroyIsolatedStoreContainerWithToken:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100168548(v8, sub_10003FE60, v7);
}

- (void)dataAccessStatusReports:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100181710(sub_1001894AC, v5);
}

- (void)registerBabysitterWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100181A0C(v6, v8, sub_10003FE60, v9, &unk_1008E7480, sub_1001894A0, &unk_1008E7498);
}

- (void)resetBabysitterWithRestrictedAccountID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100181A0C(v6, v8, sub_10003FE60, v9, &unk_1008E7408, sub_10018944C, &unk_1008E7420);
}

- (void)downloadContainerWithAccountID:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_100181D10(v7, a3, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)purgeCKRecordWithRecordType:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v16 = self;
  sub_100182624(v13, v15, v11, v16, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)fetchAllManualSortHintsWithDetails:(BOOL)a3 completion:(id)a4
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v8 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v11);
  v12 = self;
  sub_100182D34(0xD000000000000021, 0x80000001007EDE10, a3, v10, v12, v11);
  _Block_release(v11);

  _Block_release(v11);
  sub_100188054(v10, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
}

- (void)resetAllManualSortHintsWithCompletion:(id)a3
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v6 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a3);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v9);
  v10 = self;
  sub_100183890(0xD000000000000017, 0x80000001007EDDD0, v8, v10, v9);
  _Block_release(v9);

  _Block_release(v9);
  sub_100188054(v8, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
}

- (void)resetManualSortHintWithIdentifier:(id)a3 completion:(id)a4
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v7 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v11 + 16))(v9, v14, v10);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v15);
  v16 = self;
  sub_100183890(0xD000000000000021, 0x80000001007EDDA0, v9, v16, v15);
  _Block_release(v15);

  _Block_release(v15);
  sub_100188054(v9, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  (*(v11 + 8))(v14, v10);
}

- (void)resetManualSortHintBeforeLastAccessed:(id)a3 completion:(id)a4
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v7 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v11 + 16))(v9, v14, v10);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v15);
  v16 = self;
  sub_100183890(0xD000000000000029, 0x80000001007EDD10, v9, v16, v15);
  _Block_release(v15);

  _Block_release(v15);
  sub_100188054(v9, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  (*(v11 + 8))(v14, v10);
}

- (void)updateManualSortHintWithIdentifier:(id)a3 lastAccessed:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v17);
  v18 = self;
  sub_100183D28(v16, v11, v18, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)setupManualHashtagLabelUpdater
{
  v2 = self;
  sub_10016BD98();
}

- (void)refreshHashtagLabelsImmediately
{
  v2 = self;
  sub_10016C150();
}

- (void)handleIncompleteTemplateOperationQueueItemsImmediately
{
  v2 = self;
  sub_10016C4C0();
}

- (void)handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:(double)a3
{
  v4 = self;
  sub_10016C860(a3);
}

- (void)handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:(double)a3
{
  v4 = self;
  sub_10016CF50(a3);
}

- (void)initDummyAutoCategorizationWithCategoryByTitle:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_100183F38(v4);
}

- (void)immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100184040(v9, v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)synchronous_revertImageAttachmentsToUnDeduped:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_10018427C(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updateMinimumSupportedVersionWithObjectID:(id)a3 minimumSupportedVersion:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_100187548(v9, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end
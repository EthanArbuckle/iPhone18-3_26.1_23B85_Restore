@interface RDXPCDebugPerformer
- (_TtC7remindd19RDXPCDebugPerformer)init;
- (void)addGeofenceWithLatitude:(double)latitude longitude:(double)longitude radius:(double)radius uuid:(id)uuid completion:(id)completion;
- (void)crashDaemonWithMessage:(id)message;
- (void)daemonPid:(id)pid;
- (void)daemonVersion:(id)version;
- (void)dataAccessStatusReports:(id)reports;
- (void)destroyIsolatedStoreContainerWithToken:(id)token completion:(id)completion;
- (void)downloadContainerWithAccountID:(id)d completion:(id)completion;
- (void)fetchAllManualSortHintsWithDetails:(BOOL)details completion:(id)completion;
- (void)fetchContactsMatching:(id)matching completion:(id)completion;
- (void)fetchGeofencesWithCompletion:(id)completion;
- (void)fireDebugNotificationWithText:(id)text identifier:(id)identifier categoryIdentifier:(id)categoryIdentifier reference:(id)reference isRemove:(BOOL)remove completion:(id)completion;
- (void)handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:(double)timeout;
- (void)handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:(double)timeout;
- (void)handleIncompleteTemplateOperationQueueItemsImmediately;
- (void)immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID:(id)d configuration:(id)configuration completion:(id)completion;
- (void)initDummyAutoCategorizationWithCategoryByTitle:(id)title;
- (void)lowLevelMarkForDeletionWithObjectID:(id)d shouldSetDirtyFlags:(BOOL)flags shouldRemoveFromParent:(BOOL)parent completion:(id)completion;
- (void)purgeCKRecordWithRecordType:(id)type identifier:(id)identifier completion:(id)completion;
- (void)purgeDeletedObjectsWithCompletionHandler:(id)handler;
- (void)refreshHashtagLabelsImmediately;
- (void)registerBabysitterWith:(id)with completion:(id)completion;
- (void)removeFromUbKVSForKey:(id)key completion:(id)completion;
- (void)removeGeofenceWithUUID:(id)d completion:(id)completion;
- (void)resetAllManualSortHintsWithCompletion:(id)completion;
- (void)resetBabysitterWithRestrictedAccountID:(id)d completion:(id)completion;
- (void)resetManualSortHintBeforeLastAccessed:(id)accessed completion:(id)completion;
- (void)resetManualSortHintWithIdentifier:(id)identifier completion:(id)completion;
- (void)setupManualHashtagLabelUpdater;
- (void)simulateCoreLocationEnterRegionWithIdentifier:(id)identifier completion:(id)completion;
- (void)simulateCoreLocationExitRegionWithIdentifier:(id)identifier completion:(id)completion;
- (void)synchronous_revertImageAttachmentsToUnDeduped:(id)deduped completion:(id)completion;
- (void)updateManualSortHintWithIdentifier:(id)identifier lastAccessed:(id)accessed completion:(id)completion;
- (void)updateMinimumSupportedVersionWithObjectID:(id)d minimumSupportedVersion:(int64_t)version completion:(id)completion;
- (void)writeUbKVSWithKey:(id)key dateValue:(id)value completion:(id)completion;
- (void)writeUbKVSWithKey:(id)key stringValue:(id)value completion:(id)completion;
@end

@implementation RDXPCDebugPerformer

- (_TtC7remindd19RDXPCDebugPerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)daemonVersion:(id)version
{
  v3 = _Block_copy(version);
  Double.description.getter();
  v4 = String._bridgeToObjectiveC()();

  v3[2](v3, v4);

  _Block_release(v3);
}

- (void)daemonPid:(id)pid
{
  v3 = _Block_copy(pid);
  processInfo = [objc_opt_self() processInfo];
  [processInfo processIdentifier];

  dispatch thunk of CustomStringConvertible.description.getter();
  v5 = String._bridgeToObjectiveC()();

  v3[2](v3, v5);

  _Block_release(v3);
}

- (void)writeUbKVSWithKey:(id)key stringValue:(id)value completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (value && (v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12))
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
  selfCopy = self;
  sub_10017D808(v8, v10, &v14, v7);

  _Block_release(v7);
  _Block_release(v7);
  sub_1000050A4(&v14, &qword_100939ED0, &qword_100791B10);
}

- (void)writeUbKVSWithKey:(id)key dateValue:(id)value completion:(id)completion
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (value)
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
    selfCopy = self;
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
    selfCopy2 = self;
  }

  _Block_copy(v15);
  sub_10017D808(v16, v18, &v24, v15);
  _Block_release(v15);

  _Block_release(v15);
  _Block_release(v15);
  sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
  sub_1000050A4(&v24, &qword_100939ED0, &qword_100791B10);
}

- (void)removeFromUbKVSForKey:(id)key completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_10017DA8C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)fireDebugNotificationWithText:(id)text identifier:(id)identifier categoryIdentifier:(id)categoryIdentifier reference:(id)reference isRemove:(BOOL)remove completion:(id)completion
{
  v12 = _Block_copy(completion);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (identifier)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = v16;
    if (categoryIdentifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (reference)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 0;
  if (!categoryIdentifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (reference)
  {
LABEL_4:
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    reference = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  selfCopy = self;
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  sub_1001649E4(v24, v14, v15, identifier, v17, v19, v20, reference, remove, sub_10003FE60, v23);
}

- (void)fetchGeofencesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100165098(sub_1001898E8, v5);
}

- (void)removeGeofenceWithUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_10016555C(v10, sub_10018ADB4, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)addGeofenceWithLatitude:(double)latitude longitude:(double)longitude radius:(double)radius uuid:(id)uuid completion:(id)completion
{
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v22 - v15;
  v17 = _Block_copy(completion);
  if (uuid)
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
  selfCopy = self;
  sub_100165AD8(v16, sub_10018ADB4, v20, latitude, longitude, radius);

  sub_1000050A4(v16, &unk_100939D90, "8\n\r");
}

- (void)simulateCoreLocationEnterRegionWithIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100166628(v6, v8, sub_10018ADB4, v9, &unk_1008E7818, sub_100189790, &unk_1008E7830);
}

- (void)simulateCoreLocationExitRegionWithIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100166628(v6, v8, sub_100189728, v9, &unk_1008E77A0, sub_100189730, &unk_1008E77B8);
}

- (void)purgeDeletedObjectsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;

  [v6 purgeDeletedObjectsWithCompletionHandler:v7];

  _Block_release(v7);
}

- (void)lowLevelMarkForDeletionWithObjectID:(id)d shouldSetDirtyFlags:(BOOL)flags shouldRemoveFromParent:(BOOL)parent completion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  dCopy = d;
  selfCopy = self;
  sub_100180324(dCopy, flags, parent, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)crashDaemonWithMessage:(id)message
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

- (void)fetchContactsMatching:(id)matching completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (matching)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    matching = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_1001810A8(v7, matching, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)destroyIsolatedStoreContainerWithToken:(id)token completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  tokenCopy = token;
  selfCopy = self;
  sub_100168548(tokenCopy, sub_10003FE60, v7);
}

- (void)dataAccessStatusReports:(id)reports
{
  v4 = _Block_copy(reports);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100181710(sub_1001894AC, v5);
}

- (void)registerBabysitterWith:(id)with completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100181A0C(v6, v8, sub_10003FE60, v9, &unk_1008E7480, sub_1001894A0, &unk_1008E7498);
}

- (void)resetBabysitterWithRestrictedAccountID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100181A0C(v6, v8, sub_10003FE60, v9, &unk_1008E7408, sub_10018944C, &unk_1008E7420);
}

- (void)downloadContainerWithAccountID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (d)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_100181D10(v7, d, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)purgeCKRecordWithRecordType:(id)type identifier:(id)identifier completion:(id)completion
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  selfCopy = self;
  sub_100182624(v13, v15, v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)fetchAllManualSortHintsWithDetails:(BOOL)details completion:(id)completion
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v8 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v11);
  selfCopy = self;
  sub_100182D34(0xD000000000000021, 0x80000001007EDE10, details, v10, selfCopy, v11);
  _Block_release(v11);

  _Block_release(v11);
  sub_100188054(v10, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
}

- (void)resetAllManualSortHintsWithCompletion:(id)completion
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v6 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v9);
  selfCopy = self;
  sub_100183890(0xD000000000000017, 0x80000001007EDDD0, v8, selfCopy, v9);
  _Block_release(v9);

  _Block_release(v9);
  sub_100188054(v8, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
}

- (void)resetManualSortHintWithIdentifier:(id)identifier completion:(id)completion
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
  v15 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v11 + 16))(v9, v14, v10);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v15);
  selfCopy = self;
  sub_100183890(0xD000000000000021, 0x80000001007EDDA0, v9, selfCopy, v15);
  _Block_release(v15);

  _Block_release(v15);
  sub_100188054(v9, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  (*(v11 + 8))(v14, v10);
}

- (void)resetManualSortHintBeforeLastAccessed:(id)accessed completion:(id)completion
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
  v15 = _Block_copy(completion);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v11 + 16))(v9, v14, v10);
  swift_storeEnumTagMultiPayload();
  _Block_copy(v15);
  selfCopy = self;
  sub_100183890(0xD000000000000029, 0x80000001007EDD10, v9, selfCopy, v15);
  _Block_release(v15);

  _Block_release(v15);
  sub_100188054(v9, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  (*(v11 + 8))(v14, v10);
}

- (void)updateManualSortHintWithIdentifier:(id)identifier lastAccessed:(id)accessed completion:(id)completion
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
  v17 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v17);
  selfCopy = self;
  sub_100183D28(v16, v11, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)setupManualHashtagLabelUpdater
{
  selfCopy = self;
  sub_10016BD98();
}

- (void)refreshHashtagLabelsImmediately
{
  selfCopy = self;
  sub_10016C150();
}

- (void)handleIncompleteTemplateOperationQueueItemsImmediately
{
  selfCopy = self;
  sub_10016C4C0();
}

- (void)handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:(double)timeout
{
  selfCopy = self;
  sub_10016C860(timeout);
}

- (void)handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:(double)timeout
{
  selfCopy = self;
  sub_10016CF50(timeout);
}

- (void)initDummyAutoCategorizationWithCategoryByTitle:(id)title
{
  if (title)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_100183F38(v4);
}

- (void)immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID:(id)d configuration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  dCopy = d;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100184040(dCopy, configurationCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)synchronous_revertImageAttachmentsToUnDeduped:(id)deduped completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10018427C(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updateMinimumSupportedVersionWithObjectID:(id)d minimumSupportedVersion:(int64_t)version completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  dCopy = d;
  selfCopy = self;
  sub_100187548(dCopy, version, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end
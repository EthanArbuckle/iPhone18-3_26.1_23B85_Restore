@interface RDXPCStorePerformer
- (_TtC7remindd19RDXPCStorePerformer)init;
- (void)MCIsManagedAccountWithObjectID:(id)a3 completion:(id)a4;
- (void)anchoredBubbleEnabledWithCompletion:(id)a3;
- (void)batchDeleteExpiredRemindersWith:(id)a3 completion:(id)a4;
- (void)createShareForObjectWithID:(id)a3 appIconData:(id)a4 completion:(id)a5;
- (void)downloadPublicTemplateWithPublicLinkURLUUID:(id)a3 completion:(id)a4;
- (void)fetchAutoCategorizationSuggestedSectionsForListName:(id)a3 reminderTitles:(id)a4 existingSections:(id)a5 completion:(id)a6;
- (void)fetchIntelligentFeaturesMinimumSupportedVersionWith:(int64_t)a3 isInternalInstall:(BOOL)a4 completion:(id)a5;
- (void)fetchMinimumSearchTermLengthByBaseLanguageWithCompletion:(id)a3;
- (void)fetchReplicaManagersForAccountID:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)fetchShouldSuggestConvertToGroceryWithObjectID:(id)a3 usingGroceryClassifierWithGroceryLocaleID:(id)a4 completion:(id)a5;
- (void)fetchSuggestedRemindersFromExtractionInput:(id)a3 completion:(id)a4;
- (void)fetchSuggestedSectionsForRemindersWithReminderTitles:(id)a3 fromGroceryClassifierWithGroceryLocaleIDs:(id)a4 maxSuggestionsCountPerReminderTitle:(id)a5 confidenceScoreThreshold:(id)a6 shouldUseGlobalCorrections:(BOOL)a7 completion:(id)a8;
- (void)notifyOfInteractionWithPeople:(id)a3 completion:(id)a4;
- (void)performSwiftInvocation:(id)a3 withParametersData:(id)a4 storages:(id)a5 completion:(id)a6;
- (void)permanentlyHideRemindersWith:(id)a3 accountID:(id)a4 completion:(id)a5;
- (void)requestDownloadGroceryModelAssetsFromTrial;
- (void)requestShouldSuggestConvertToGroceryWithObjectID:(id)a3;
- (void)requestToDeleteSyncDataWithAccountIdentifier:(id)a3 completion:(id)a4;
- (void)requestToUpdateClientConnectionsWithShouldKeepAlive:(BOOL)a3;
- (void)saveAccountStorages:(id)a3 listStorages:(id)a4 listSectionStorages:(id)a5 smartListStorages:(id)a6 smartListSectionStorages:(id)a7 templateStorages:(id)a8 templateSectionStorages:(id)a9 reminderStorages:(id)a10 changedKeys:(id)a11 replicaManagers:(id)a12 author:(id)a13 mode:(unint64_t)a14 synchronously:(BOOL)a15 syncToCloudKit:(BOOL)a16 completion:(id)aBlock;
- (void)setOverridingGroceryCategorizationSecondaryGroceryLocales:(id)a3 completion:(id)a4;
- (void)uncachedSuggestedAttributesPerformerWithReason:(id)a3 completion:(id)a4;
- (void)updateAccountWithACAccountID:(id)a3 restartDA:(BOOL)a4 completion:(id)a5;
- (void)validatePhantomObjectsWith:(id)a3 shouldRepair:(BOOL)a4 completion:(id)a5;
@end

@implementation RDXPCStorePerformer

- (void)performSwiftInvocation:(id)a3 withParametersData:(id)a4 storages:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v18 = a3;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v13)
  {
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = 0;
  }

  _Block_copy(v10);
  sub_10000CE78(v18, v14, v16, v17, v12, v12, v10, sub_10000F378);
  _Block_release(v10);

  _Block_release(v10);
  sub_10001BBA0(v14, v16);
}

- (void)requestToUpdateClientConnectionsWithShouldKeepAlive:(BOOL)a3
{
  v3 = a3;
  v4 = [objc_opt_self() defaultCenter];
  if (v3)
  {
    if (qword_1009362C8 != -1)
    {
      swift_once();
    }

    v5 = &qword_100974EC0;
  }

  else
  {
    if (qword_1009362D0 != -1)
    {
      swift_once();
    }

    v5 = &qword_100974EC8;
  }

  v6 = *v5;
  [v4 postNotificationName:v6 object:0];
}

- (void)requestDownloadGroceryModelAssetsFromTrial
{
  v2 = self;
  sub_100014FE8();
}

- (_TtC7remindd19RDXPCStorePerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fetchReplicaManagersForAccountID:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_10057879C(a3, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)fetchMinimumSearchTermLengthByBaseLanguageWithCompletion:(id)a3
{
  v5 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1007B1F90;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1007B1F98;
  v13[5] = v12;
  v14 = self;
  sub_100577454(0, 0, v8, &unk_1007B1FA0, v13);
}

- (void)saveAccountStorages:(id)a3 listStorages:(id)a4 listSectionStorages:(id)a5 smartListStorages:(id)a6 smartListSectionStorages:(id)a7 templateStorages:(id)a8 templateSectionStorages:(id)a9 reminderStorages:(id)a10 changedKeys:(id)a11 replicaManagers:(id)a12 author:(id)a13 mode:(unint64_t)a14 synchronously:(BOOL)a15 syncToCloudKit:(BOOL)a16 completion:(id)aBlock
{
  v17 = _Block_copy(aBlock);
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_100939BD0, REMListSectionStorage_ptr);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_1009405A0, REMSmartListSectionStorage_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_1009429C8, REMTemplateSectionStorage_ptr);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_1000F5104(&unk_100945240, &qword_1007A0A70);
  sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_100939208, REMReplicaManagerSerializedData_ptr);
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a13)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = self;
  _Block_copy(v17);
  sub_100578DAC(v32, v30, v29, v28, v27, v26, v25, v24, v18, v19, v20, v22, a14, a15, a16, v23, v17);
  _Block_release(v17);
  _Block_release(v17);
}

- (void)createShareForObjectWithID:(id)a3 appIconData:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;
  v9 = self;
  if (a4)
  {
    v10 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  _Block_copy(v7);
  sub_10057AAE8(a3, a4, v12, self, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_100031A14(a4, v12);
}

- (void)downloadPublicTemplateWithPublicLinkURLUUID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  sub_10057CC4C(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)fetchSuggestedSectionsForRemindersWithReminderTitles:(id)a3 fromGroceryClassifierWithGroceryLocaleIDs:(id)a4 maxSuggestionsCountPerReminderTitle:(id)a5 confidenceScoreThreshold:(id)a6 shouldUseGlobalCorrections:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  v12 = _Block_copy(a8);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v15 = a5;
  v16 = a6;
  v17 = self;
  sub_10057D364(v13, v14, a5, a6, v8, v17, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (void)fetchShouldSuggestConvertToGroceryWithObjectID:(id)a3 usingGroceryClassifierWithGroceryLocaleID:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  v9 = self;
  sub_10057D960(v8, v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)requestShouldSuggestConvertToGroceryWithObjectID:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10056FD08(v4);
}

- (void)setOverridingGroceryCategorizationSecondaryGroceryLocales:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    type metadata accessor for Locale();
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v6);
  v7 = self;
  sub_10057DB94(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)fetchAutoCategorizationSuggestedSectionsForListName:(id)a3 reminderTitles:(id)a4 existingSections:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v13 = self;
  sub_10057DE54(v8, v10, v11, v12, v13, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)fetchIntelligentFeaturesMinimumSupportedVersionWith:(int64_t)a3 isInternalInstall:(BOOL)a4 completion:(id)a5
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1007B1CF8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1007B1D08;
  v17[5] = v16;
  v18 = self;
  sub_100577454(0, 0, v12, &unk_1007B1D18, v17);
}

- (void)fetchSuggestedRemindersFromExtractionInput:(id)a3 completion:(id)a4
{
  v6 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = sub_10000A878;
  v13[6] = v11;
  v14 = a3;
  sub_1001955C4(0, 0, v9, &unk_1007B1CE8, v13);
}

- (void)notifyOfInteractionWithPeople:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1000060C8(0, &qword_10094C988, INPerson_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_10057E2BC(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updateAccountWithACAccountID:(id)a3 restartDA:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_10057EC0C(v8, v10, a4, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)requestToDeleteSyncDataWithAccountIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
  sub_10057E844();
  v7 = [objc_opt_self() daemonUserDefaults];
  [v7 setAcAccountIdentifierToMergeLocalDataIntoSyncData:0];

  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)uncachedSuggestedAttributesPerformerWithReason:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = self;
  sub_10057F488(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)anchoredBubbleEnabledWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10057F6B8(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)MCIsManagedAccountWithObjectID:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10057F8D4(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)validatePhantomObjectsWith:(id)a3 shouldRepair:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_1005729E4(v8, a4, sub_1005805BC, v9);
}

- (void)batchDeleteExpiredRemindersWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100580078(a3, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)permanentlyHideRemindersWith:(id)a3 accountID:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  type metadata accessor for Date();
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
  sub_100580290(v8, v9, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end
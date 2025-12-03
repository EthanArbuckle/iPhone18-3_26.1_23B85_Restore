@interface RDXPCStorePerformer
- (_TtC7remindd19RDXPCStorePerformer)init;
- (void)MCIsManagedAccountWithObjectID:(id)d completion:(id)completion;
- (void)anchoredBubbleEnabledWithCompletion:(id)completion;
- (void)batchDeleteExpiredRemindersWith:(id)with completion:(id)completion;
- (void)createShareForObjectWithID:(id)d appIconData:(id)data completion:(id)completion;
- (void)downloadPublicTemplateWithPublicLinkURLUUID:(id)d completion:(id)completion;
- (void)fetchAutoCategorizationSuggestedSectionsForListName:(id)name reminderTitles:(id)titles existingSections:(id)sections completion:(id)completion;
- (void)fetchIntelligentFeaturesMinimumSupportedVersionWith:(int64_t)with isInternalInstall:(BOOL)install completion:(id)completion;
- (void)fetchMinimumSearchTermLengthByBaseLanguageWithCompletion:(id)completion;
- (void)fetchReplicaManagersForAccountID:(id)d bundleID:(id)iD completion:(id)completion;
- (void)fetchShouldSuggestConvertToGroceryWithObjectID:(id)d usingGroceryClassifierWithGroceryLocaleID:(id)iD completion:(id)completion;
- (void)fetchSuggestedRemindersFromExtractionInput:(id)input completion:(id)completion;
- (void)fetchSuggestedSectionsForRemindersWithReminderTitles:(id)titles fromGroceryClassifierWithGroceryLocaleIDs:(id)ds maxSuggestionsCountPerReminderTitle:(id)title confidenceScoreThreshold:(id)threshold shouldUseGlobalCorrections:(BOOL)corrections completion:(id)completion;
- (void)notifyOfInteractionWithPeople:(id)people completion:(id)completion;
- (void)performSwiftInvocation:(id)invocation withParametersData:(id)data storages:(id)storages completion:(id)completion;
- (void)permanentlyHideRemindersWith:(id)with accountID:(id)d completion:(id)completion;
- (void)requestDownloadGroceryModelAssetsFromTrial;
- (void)requestShouldSuggestConvertToGroceryWithObjectID:(id)d;
- (void)requestToDeleteSyncDataWithAccountIdentifier:(id)identifier completion:(id)completion;
- (void)requestToUpdateClientConnectionsWithShouldKeepAlive:(BOOL)alive;
- (void)saveAccountStorages:(id)storages listStorages:(id)listStorages listSectionStorages:(id)sectionStorages smartListStorages:(id)smartListStorages smartListSectionStorages:(id)listSectionStorages templateStorages:(id)templateStorages templateSectionStorages:(id)templateSectionStorages reminderStorages:(id)self0 changedKeys:(id)self1 replicaManagers:(id)self2 author:(id)self3 mode:(unint64_t)self4 synchronously:(BOOL)self5 syncToCloudKit:(BOOL)self6 completion:(id)aBlock;
- (void)setOverridingGroceryCategorizationSecondaryGroceryLocales:(id)locales completion:(id)completion;
- (void)uncachedSuggestedAttributesPerformerWithReason:(id)reason completion:(id)completion;
- (void)updateAccountWithACAccountID:(id)d restartDA:(BOOL)a completion:(id)completion;
- (void)validatePhantomObjectsWith:(id)with shouldRepair:(BOOL)repair completion:(id)completion;
@end

@implementation RDXPCStorePerformer

- (void)performSwiftInvocation:(id)invocation withParametersData:(id)data storages:(id)storages completion:(id)completion
{
  v10 = _Block_copy(completion);
  invocationCopy = invocation;
  dataCopy = data;
  selfCopy = self;
  storagesCopy = storages;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (storagesCopy)
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
  sub_10000CE78(invocationCopy, v14, v16, v17, selfCopy, selfCopy, v10, sub_10000F378);
  _Block_release(v10);

  _Block_release(v10);
  sub_10001BBA0(v14, v16);
}

- (void)requestToUpdateClientConnectionsWithShouldKeepAlive:(BOOL)alive
{
  aliveCopy = alive;
  defaultCenter = [objc_opt_self() defaultCenter];
  if (aliveCopy)
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
  [defaultCenter postNotificationName:v6 object:0];
}

- (void)requestDownloadGroceryModelAssetsFromTrial
{
  selfCopy = self;
  sub_100014FE8();
}

- (_TtC7remindd19RDXPCStorePerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fetchReplicaManagersForAccountID:(id)d bundleID:(id)iD completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (iD)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v8);
  dCopy = d;
  selfCopy = self;
  sub_10057879C(d, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)fetchMinimumSearchTermLengthByBaseLanguageWithCompletion:(id)completion
{
  v5 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
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
  selfCopy = self;
  sub_100577454(0, 0, v8, &unk_1007B1FA0, v13);
}

- (void)saveAccountStorages:(id)storages listStorages:(id)listStorages listSectionStorages:(id)sectionStorages smartListStorages:(id)smartListStorages smartListSectionStorages:(id)listSectionStorages templateStorages:(id)templateStorages templateSectionStorages:(id)templateSectionStorages reminderStorages:(id)self0 changedKeys:(id)self1 replicaManagers:(id)self2 author:(id)self3 mode:(unint64_t)self4 synchronously:(BOOL)self5 syncToCloudKit:(BOOL)self6 completion:(id)aBlock
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
  if (author)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  selfCopy = self;
  _Block_copy(v17);
  sub_100578DAC(v32, v30, v29, v28, v27, v26, v25, v24, v18, v19, v20, v22, mode, synchronously, kit, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);
}

- (void)createShareForObjectWithID:(id)d appIconData:(id)data completion:(id)completion
{
  v7 = _Block_copy(completion);
  dCopy = d;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  _Block_copy(v7);
  sub_10057AAE8(d, data, v12, self, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_100031A14(data, v12);
}

- (void)downloadPublicTemplateWithPublicLinkURLUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  sub_10057CC4C(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)fetchSuggestedSectionsForRemindersWithReminderTitles:(id)titles fromGroceryClassifierWithGroceryLocaleIDs:(id)ds maxSuggestionsCountPerReminderTitle:(id)title confidenceScoreThreshold:(id)threshold shouldUseGlobalCorrections:(BOOL)corrections completion:(id)completion
{
  correctionsCopy = corrections;
  v12 = _Block_copy(completion);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  titleCopy = title;
  thresholdCopy = threshold;
  selfCopy = self;
  sub_10057D364(v13, v14, title, threshold, correctionsCopy, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (void)fetchShouldSuggestConvertToGroceryWithObjectID:(id)d usingGroceryClassifierWithGroceryLocaleID:(id)iD completion:(id)completion
{
  v7 = _Block_copy(completion);
  _Block_copy(v7);
  dCopy = d;
  selfCopy = self;
  sub_10057D960(dCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)requestShouldSuggestConvertToGroceryWithObjectID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_10056FD08(dCopy);
}

- (void)setOverridingGroceryCategorizationSecondaryGroceryLocales:(id)locales completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (locales)
  {
    type metadata accessor for Locale();
    locales = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_10057DB94(locales, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)fetchAutoCategorizationSuggestedSectionsForListName:(id)name reminderTitles:(id)titles existingSections:(id)sections completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  selfCopy = self;
  sub_10057DE54(v8, v10, v11, v12, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)fetchIntelligentFeaturesMinimumSupportedVersionWith:(int64_t)with isInternalInstall:(BOOL)install completion:(id)completion
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = with;
  *(v14 + 24) = install;
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
  selfCopy = self;
  sub_100577454(0, 0, v12, &unk_1007B1D18, v17);
}

- (void)fetchSuggestedRemindersFromExtractionInput:(id)input completion:(id)completion
{
  v6 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = input;
  v13[5] = sub_10000A878;
  v13[6] = v11;
  inputCopy = input;
  sub_1001955C4(0, 0, v9, &unk_1007B1CE8, v13);
}

- (void)notifyOfInteractionWithPeople:(id)people completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1000060C8(0, &qword_10094C988, INPerson_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10057E2BC(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)updateAccountWithACAccountID:(id)d restartDA:(BOOL)a completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_10057EC0C(v8, v10, a, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)requestToDeleteSyncDataWithAccountIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  selfCopy = self;
  sub_10057E844();
  daemonUserDefaults = [objc_opt_self() daemonUserDefaults];
  [daemonUserDefaults setAcAccountIdentifierToMergeLocalDataIntoSyncData:0];

  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)uncachedSuggestedAttributesPerformerWithReason:(id)reason completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  selfCopy = self;
  sub_10057F488(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)anchoredBubbleEnabledWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10057F6B8(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)MCIsManagedAccountWithObjectID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  dCopy = d;
  selfCopy = self;
  sub_10057F8D4(dCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)validatePhantomObjectsWith:(id)with shouldRepair:(BOOL)repair completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_1005729E4(v8, repair, sub_1005805BC, v9);
}

- (void)batchDeleteExpiredRemindersWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  withCopy = with;
  selfCopy = self;
  sub_100580078(with, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)permanentlyHideRemindersWith:(id)with accountID:(id)d completion:(id)completion
{
  v7 = _Block_copy(completion);
  type metadata accessor for Date();
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  dCopy = d;
  selfCopy = self;
  sub_100580290(v8, dCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end
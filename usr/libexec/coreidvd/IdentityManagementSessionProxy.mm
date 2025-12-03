@interface IdentityManagementSessionProxy
- (void)clearDataAfterTerminalProofingStateWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)deleteBoundACLWithCompletionHandler:(id)handler;
- (void)fetchAnalyticsSessionIDWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)fetchBioBindingDetailsWithCompletionHandler:(id)handler;
- (void)fetchBiomeFedStatsUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchExtendedReviewDisplayInfoWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)fetchImageQualitySettingsWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchLivenessConsentOptinUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchTermsAndConditionsWithCompletionHandler:(id)handler;
- (void)getLivenessConfigWithCompletionHandler:(id)handler;
- (void)getPendingCommandsStatusWithCompletionHandler:(id)handler;
- (void)getPendingCommandsWithResponseAPDUs:(_TtC13CoreIDVShared18NFCPendingCommands *)us completionHandler:(id)handler;
- (void)globalAuthACLInfoWithCompletionHandler:(id)handler;
- (void)initiatePartialProofingWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler;
- (void)isWatchPairedWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)prepareForProofingDisplayWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)prepareForProofingIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler;
- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration authCode:(NSString *)code proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingOptions:(unint64_t)options shouldScheduleUploads:(BOOL)uploads totalUploadAssetsFileSizeInBytes:(int64_t)bytes completionHandler:(id)handler;
- (void)proofingCancelledWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler;
- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler;
- (void)provisionIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration sessionLookupIdentifier:(NSString *)identifier proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)retrieveBioBindingUnboundACLWithCompletionHandler:(id)handler;
- (void)retrieveBoundACLWithCompletionHandler:(id)handler;
- (void)retrievePasscodeBindingUnboundACLWithCompletionHandler:(id)handler;
- (void)saveIdentityProofingDataSharingUserConsentWithDocumentType:(int64_t)type axSettings:(NSArray *)settings consent:(BOOL)consent consentType:(int64_t)consentType proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)setGlobalBoundACLWithData:(NSData *)data type:(int64_t)type completionHandler:(id)handler;
- (void)setModifiedGlobalBoundACLWithData:(NSData *)data externalizedLAContext:(NSData *)context completionHandler:(id)handler;
- (void)triggerAssetsUploadWithProofingOptions:(unint64_t)options canUploadOnExpensiveNetwork:(BOOL)network completionHandler:(id)handler;
- (void)uploadLivenessVideoWithLivenessVideoURL:(_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL *)l shouldScheduleUploads:(BOOL)uploads completionHandler:(id)handler;
- (void)watchIdentityPassesCountWithCompletionHandler:(id)handler;
@end

@implementation IdentityManagementSessionProxy

- (void)triggerAssetsUploadWithProofingOptions:(unint64_t)options canUploadOnExpensiveNetwork:(BOOL)network completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = options;
  *(v14 + 24) = network;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5EB8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5EC0;
  v17[5] = v16;

  sub_100500D54(0, 0, v12, &unk_1006E5EC8, v17);
}

- (void)prepareForProofingDisplayWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5E98;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5EA0;
  v17[5] = v16;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v12, &unk_1006E5EA8, v17);
}

- (void)prepareForProofingIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = documents;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5E70;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1006E5E78;
  v19[5] = v18;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;

  sub_100500D54(0, 0, v14, &unk_1006E5E80, v19);
}

- (void)fetchImageQualitySettingsWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5E50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5E58;
  v15[5] = v14;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v10, &unk_1006E5E60, v15);
}

- (void)fetchExtendedReviewDisplayInfoWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5E28;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5E30;
  v17[5] = v16;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v12, &unk_1006E5E38, v17);
}

- (void)provisionIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration sessionLookupIdentifier:(NSString *)identifier proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = identifier;
  v16[4] = options;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5E08;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1006E5E10;
  v19[5] = v18;
  configurationCopy = configuration;
  identifierCopy = identifier;

  sub_100500D54(0, 0, v14, &unk_1006E5E18, v19);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingOptions:(unint64_t)options shouldScheduleUploads:(BOOL)uploads totalUploadAssetsFileSizeInBytes:(int64_t)bytes completionHandler:(id)handler
{
  v15 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = configuration;
  *(v20 + 24) = documents;
  *(v20 + 32) = options;
  *(v20 + 40) = uploads;
  *(v20 + 48) = bytes;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1006E5DE8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1006E5DF0;
  v23[5] = v22;
  configurationCopy = configuration;
  documentsCopy = documents;

  sub_100500D54(0, 0, v18, &unk_1006E5DF8, v23);
}

- (void)initiatePartialProofingWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = documents;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5DC8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1006E5DD0;
  v19[5] = v18;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;

  sub_100500D54(0, 0, v14, &unk_1006E5DD8, v19);
}

- (void)getPendingCommandsStatusWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5DA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5DB0;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5DB8, v13);
}

- (void)getPendingCommandsWithResponseAPDUs:(_TtC13CoreIDVShared18NFCPendingCommands *)us completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = us;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5D88;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5D90;
  v15[5] = v14;
  usCopy = us;

  sub_100500D54(0, 0, v10, &unk_1006E5D98, v15);
}

- (void)fetchTermsAndConditionsWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5D68;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5D70;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5D78, v13);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration authCode:(NSString *)code proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = code;
  v16[4] = options;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5D48;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1006E5D50;
  v19[5] = v18;
  configurationCopy = configuration;
  codeCopy = code;

  sub_100500D54(0, 0, v14, &unk_1006E5D58, v19);
}

- (void)proofingCancelledWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5D20;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5D28;
  v17[5] = v16;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v12, &unk_1006E5D30, v17);
}

- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = for;
  v14[3] = country;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5D00;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5D08;
  v17[5] = v16;
  forCopy = for;
  countryCopy = country;

  sub_100500D54(0, 0, v12, &unk_1006E5D10, v17);
}

- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5CE0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5CE8;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5CF0, v13);
}

- (void)isWatchPairedWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5CC0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5CC8;
  v15[5] = v14;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v10, &unk_1006E5CD0, v15);
}

- (void)watchIdentityPassesCountWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5CA0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5CA8;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5CB0, v13);
}

- (void)setGlobalBoundACLWithData:(NSData *)data type:(int64_t)type completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = data;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5C80;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5C88;
  v17[5] = v16;
  dataCopy = data;

  sub_100500D54(0, 0, v12, &unk_1006E5C90, v17);
}

- (void)setModifiedGlobalBoundACLWithData:(NSData *)data externalizedLAContext:(NSData *)context completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = data;
  v14[3] = context;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5C60;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5C68;
  v17[5] = v16;
  dataCopy = data;
  contextCopy = context;

  sub_100500D54(0, 0, v12, &unk_1006E5C70, v17);
}

- (void)retrieveBioBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5C40;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5C48;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5C50, v13);
}

- (void)retrievePasscodeBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5C20;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5C28;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5C30, v13);
}

- (void)retrieveBoundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5C00;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5C08;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5C10, v13);
}

- (void)deleteBoundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5BE0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5BE8;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5BF0, v13);
}

- (void)fetchBioBindingDetailsWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5BC0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5BC8;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5BD0, v13);
}

- (void)getLivenessConfigWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5BA0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5BA8;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5BB0, v13);
}

- (void)uploadLivenessVideoWithLivenessVideoURL:(_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL *)l shouldScheduleUploads:(BOOL)uploads completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = l;
  *(v14 + 24) = uploads;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5B80;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5B88;
  v17[5] = v16;
  lCopy = l;

  sub_100500D54(0, 0, v12, &unk_1006E5B90, v17);
}

- (void)saveIdentityProofingDataSharingUserConsentWithDocumentType:(int64_t)type axSettings:(NSArray *)settings consent:(BOOL)consent consentType:(int64_t)consentType proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v15 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v25 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = type;
  *(v20 + 24) = settings;
  *(v20 + 32) = consent;
  *(v20 + 40) = consentType;
  *(v20 + 48) = options;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1006E5B58;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1006E5B60;
  v23[5] = v22;
  settingsCopy = settings;

  sub_100500D54(0, 0, v18, &unk_1006E5B68, v23);
}

- (void)fetchBiomeFedStatsUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5B38;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5B40;
  v15[5] = v14;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v10, &unk_1006E5B48, v15);
}

- (void)fetchLivenessConsentOptinUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5B10;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5B18;
  v15[5] = v14;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v10, &unk_1006E5B20, v15);
}

- (void)clearDataAfterTerminalProofingStateWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5AF0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5AF8;
  v17[5] = v16;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v12, &unk_1006E5B00, v17);
}

- (void)globalAuthACLInfoWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5AD0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5AD8;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E5AE0, v13);
}

- (void)fetchAnalyticsSessionIDWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5AC0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006D9180;
  v17[5] = v16;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v12, &unk_1006E13D0, v17);
}

@end
@interface CredentialStoreSessionProxy
- (_TtC7idcredd27CredentialStoreSessionProxy)init;
- (void)activeRegionsInPartitions:(NSArray *)partitions docTypes:(NSSet *)types completion:(id)completion;
- (void)allElementsOfCredential:(NSString *)credential authData:(NSData *)data completion:(id)completion;
- (void)associateExternalPresentmentKeyWithCredential:(NSString *)credential publicKeyIdentifier:(NSData *)identifier completion:(id)completion;
- (void)authorizeDeviceKeySigningKeyOfCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)authorizeRemoteKeySigningKeyWithCredential:(NSString *)credential remoteKey:(NSData *)key completion:(id)completion;
- (void)checkCompletenessOfCredential:(NSString *)credential completion:(id)completion;
- (void)clearPresentmentKeyUsageForCredential:(NSString *)credential completion:(id)completion;
- (void)configureWithPartitions:(id)partitions completion:(id)completion;
- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)createCredentialInPartition:(NSString *)partition options:(DCCredentialOptions *)options completion:(id)completion;
- (void)credentialIdentifiersForPublicKeyIdentifier:(NSData *)identifier completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(NSArray *)partitions completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(NSArray *)partitions docType:(NSString *)type completion:(id)completion;
- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)deleteCredential:(NSString *)credential completion:(id)completion;
- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion;
- (void)elementsOfCredential:(NSString *)credential elementIdentifiers:(NSDictionary *)identifiers authData:(NSData *)data completion:(id)completion;
- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion;
- (void)generateAccountKeyAuthorizationForCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)generateDeviceEncryptionKeyForCredential:(NSString *)credential keyType:(unint64_t)type completion:(id)completion;
- (void)generateKeySigningKeyForCredential:(NSString *)credential completion:(id)completion;
- (void)generatePresentmentKeyForCredential:(NSString *)credential completion:(id)completion;
- (void)generatePresentmentKeysForCredential:(NSString *)credential numKeys:(int64_t)keys completion:(id)completion;
- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)isPIITokenAvailableForIdentifier:(NSString *)identifier completion:(id)completion;
- (void)keyInfoForCredential:(NSString *)credential completion:(id)completion;
- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion;
- (void)payloadAuthACLForCredential:(NSString *)credential completion:(id)completion;
- (void)payloadsOfCredential:(NSString *)credential completion:(id)completion;
- (void)propertiesOfCredential:(NSString *)credential completion:(id)completion;
- (void)replacePayloadOfCredential:(NSString *)credential withPayload:(NSData *)payload format:(unint64_t)format completion:(id)completion;
- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier completion:(id)completion;
- (void)setStateOfCredential:(NSString *)credential to:(unint64_t)to completion:(id)completion;
- (void)storePIIHashInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data keystoreType:(unint64_t)type completion:(id)completion;
- (void)storePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion;
- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier attributesToUpdate:(NSDictionary *)update credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion;
@end

@implementation CredentialStoreSessionProxy

- (void)configureWithPartitions:(id)partitions completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10008BC10(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)createCredentialInPartition:(NSString *)partition options:(DCCredentialOptions *)options completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = partition;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC9D8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC9E0;
  v17[5] = v16;
  partitionCopy = partition;
  optionsCopy = options;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC9E8, v17);
}

- (void)generateKeySigningKeyForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC9B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC9C0;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC9C8, v15);
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC998;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC9A0;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC9A8, v15);
}

- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC978;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC980;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC988, v15);
}

- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC958;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC960;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC968, v15);
}

- (void)generateAccountKeyAuthorizationForCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = identifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC938;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC940;
  v17[5] = v16;
  credentialCopy = credential;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC948, v17);
}

- (void)generateDeviceEncryptionKeyForCredential:(NSString *)credential keyType:(unint64_t)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC918;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC920;
  v17[5] = v16;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC928, v17);
}

- (void)generatePresentmentKeyForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC8F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC900;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC908, v15);
}

- (void)generatePresentmentKeysForCredential:(NSString *)credential numKeys:(int64_t)keys completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = keys;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC8D8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC8E0;
  v17[5] = v16;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC8E8, v17);
}

- (void)authorizeDeviceKeySigningKeyOfCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = identifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC8B8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC8C0;
  v17[5] = v16;
  credentialCopy = credential;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC8C8, v17);
}

- (void)authorizeRemoteKeySigningKeyWithCredential:(NSString *)credential remoteKey:(NSData *)key completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = key;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC898;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC8A0;
  v17[5] = v16;
  credentialCopy = credential;
  keyCopy = key;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC8A8, v17);
}

- (void)associateExternalPresentmentKeyWithCredential:(NSString *)credential publicKeyIdentifier:(NSData *)identifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = identifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC878;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC880;
  v17[5] = v16;
  credentialCopy = credential;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC888, v17);
}

- (void)credentialIdentifiersForPublicKeyIdentifier:(NSData *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC858;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC860;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC868, v15);
}

- (void)replacePayloadOfCredential:(NSString *)credential withPayload:(NSData *)payload format:(unint64_t)format completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = credential;
  v16[3] = payload;
  v16[4] = format;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC838;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001AC840;
  v19[5] = v18;
  credentialCopy = credential;
  payloadCopy = payload;
  selfCopy = self;
  sub_100093C54(0, 0, v14, &unk_1001AC848, v19);
}

- (void)credentialIdentifiersInPartitions:(NSArray *)partitions completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = partitions;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC818;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC820;
  v15[5] = v14;
  partitionsCopy = partitions;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC828, v15);
}

- (void)credentialIdentifiersInPartitions:(NSArray *)partitions docType:(NSString *)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = partitions;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC7F8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC800;
  v17[5] = v16;
  partitionsCopy = partitions;
  typeCopy = type;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC808, v17);
}

- (void)activeRegionsInPartitions:(NSArray *)partitions docTypes:(NSSet *)types completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = partitions;
  v14[3] = types;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC7D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC7D8;
  v17[5] = v16;
  partitionsCopy = partitions;
  typesCopy = types;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC7E0, v17);
}

- (void)deleteCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC7B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC7B8;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC7C0, v15);
}

- (void)propertiesOfCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC790;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC3D0;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC7A0, v15);
}

- (void)setStateOfCredential:(NSString *)credential to:(unint64_t)to completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = to;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC770;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC3B0;
  v17[5] = v16;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC780, v17);
}

- (void)payloadAuthACLForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC750;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC390;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC760, v15);
}

- (void)elementsOfCredential:(NSString *)credential elementIdentifiers:(NSDictionary *)identifiers authData:(NSData *)data completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = credential;
  v16[3] = identifiers;
  v16[4] = data;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC738;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001AC370;
  v19[5] = v18;
  credentialCopy = credential;
  identifiersCopy = identifiers;
  dataCopy = data;
  selfCopy = self;
  sub_100093C54(0, 0, v14, &unk_1001AC378, v19);
}

- (void)checkCompletenessOfCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC728;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC350;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC358, v15);
}

- (void)payloadsOfCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC718;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC330;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC338, v15);
}

- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC708;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC310;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC318, v15);
}

- (void)allElementsOfCredential:(NSString *)credential authData:(NSData *)data completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = credential;
  v14[3] = data;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC6E0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC2F0;
  v17[5] = v16;
  credentialCopy = credential;
  dataCopy = data;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC6F0, v17);
}

- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
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
  v12[4] = &unk_1001AC6C0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC2D0;
  v13[5] = v12;
  selfCopy = self;
  sub_100093C54(0, 0, v8, &unk_1001AC6D0, v13);
}

- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = slot;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC6A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC2B0;
  v15[5] = v14;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC6B0, v15);
}

- (void)clearPresentmentKeyUsageForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC680;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC290;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC690, v15);
}

- (void)keyInfoForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC660;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC270;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC670, v15);
}

- (void)storePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = identifier;
  v16[3] = data;
  v16[4] = credentialIdentifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC640;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001AC250;
  v19[5] = v18;
  identifierCopy = identifier;
  dataCopy = data;
  credentialIdentifierCopy = credentialIdentifier;
  selfCopy = self;
  sub_100093C54(0, 0, v14, &unk_1001AC650, v19);
}

- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC620;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC230;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC630, v15);
}

- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = identifier;
  v14[3] = credentialIdentifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC600;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC210;
  v17[5] = v16;
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC610, v17);
}

- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier attributesToUpdate:(NSDictionary *)update credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = identifier;
  v16[3] = update;
  v16[4] = credentialIdentifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC5E0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001AC1F0;
  v19[5] = v18;
  identifierCopy = identifier;
  updateCopy = update;
  credentialIdentifierCopy = credentialIdentifier;
  selfCopy = self;
  sub_100093C54(0, 0, v14, &unk_1001AC5F0, v19);
}

- (void)isPIITokenAvailableForIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC5C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC1D0;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v10, &unk_1001AC5D0, v15);
}

- (void)storePIIHashInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data keystoreType:(unint64_t)type completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = identifier;
  v16[3] = data;
  v16[4] = type;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC5A0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001AC1B0;
  v19[5] = v18;
  identifierCopy = identifier;
  dataCopy = data;
  selfCopy = self;
  sub_100093C54(0, 0, v14, &unk_1001AC5B0, v19);
}

- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = identifier;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC580;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC190;
  v17[5] = v16;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC590, v17);
}

- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = identifier;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC560;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC130;
  v17[5] = v16;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v12, &unk_1001AC570, v17);
}

- (_TtC7idcredd27CredentialStoreSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
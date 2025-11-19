@interface CredentialStoreSessionProxy
- (_TtC7idcredd27CredentialStoreSessionProxy)init;
- (void)activeRegionsInPartitions:(NSArray *)a3 docTypes:(NSSet *)a4 completion:(id)a5;
- (void)allElementsOfCredential:(NSString *)a3 authData:(NSData *)a4 completion:(id)a5;
- (void)associateExternalPresentmentKeyWithCredential:(NSString *)a3 publicKeyIdentifier:(NSData *)a4 completion:(id)a5;
- (void)authorizeDeviceKeySigningKeyOfCredential:(NSString *)a3 accountKeyIdentifier:(NSString *)a4 completion:(id)a5;
- (void)authorizeRemoteKeySigningKeyWithCredential:(NSString *)a3 remoteKey:(NSData *)a4 completion:(id)a5;
- (void)checkCompletenessOfCredential:(NSString *)a3 completion:(id)a4;
- (void)clearPresentmentKeyUsageForCredential:(NSString *)a3 completion:(id)a4;
- (void)configureWithPartitions:(id)a3 completion:(id)a4;
- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4;
- (void)createCredentialInPartition:(NSString *)a3 options:(DCCredentialOptions *)a4 completion:(id)a5;
- (void)credentialIdentifiersForPublicKeyIdentifier:(NSData *)a3 completion:(id)a4;
- (void)credentialIdentifiersInPartitions:(NSArray *)a3 completion:(id)a4;
- (void)credentialIdentifiersInPartitions:(NSArray *)a3 docType:(NSString *)a4 completion:(id)a5;
- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4;
- (void)deleteCredential:(NSString *)a3 completion:(id)a4;
- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)a3 keystoreType:(unint64_t)a4 completion:(id)a5;
- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)a3 credentialIdentifier:(NSString *)a4 completion:(id)a5;
- (void)elementsOfCredential:(NSString *)a3 elementIdentifiers:(NSDictionary *)a4 authData:(NSData *)a5 completion:(id)a6;
- (void)eraseLegacySEKeySlot:(int64_t)a3 completion:(id)a4;
- (void)generateAccountKeyAuthorizationForCredential:(NSString *)a3 accountKeyIdentifier:(NSString *)a4 completion:(id)a5;
- (void)generateDeviceEncryptionKeyForCredential:(NSString *)a3 keyType:(unint64_t)a4 completion:(id)a5;
- (void)generateKeySigningKeyForCredential:(NSString *)a3 completion:(id)a4;
- (void)generatePresentmentKeyForCredential:(NSString *)a3 completion:(id)a4;
- (void)generatePresentmentKeysForCredential:(NSString *)a3 numKeys:(int64_t)a4 completion:(id)a5;
- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4;
- (void)isPIITokenAvailableForIdentifier:(NSString *)a3 completion:(id)a4;
- (void)keyInfoForCredential:(NSString *)a3 completion:(id)a4;
- (void)occupiedLegacySEKeySlotsWithCompletion:(id)a3;
- (void)payloadAuthACLForCredential:(NSString *)a3 completion:(id)a4;
- (void)payloadsOfCredential:(NSString *)a3 completion:(id)a4;
- (void)propertiesOfCredential:(NSString *)a3 completion:(id)a4;
- (void)replacePayloadOfCredential:(NSString *)a3 withPayload:(NSData *)a4 format:(unint64_t)a5 completion:(id)a6;
- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4;
- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)a3 keystoreType:(unint64_t)a4 completion:(id)a5;
- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)a3 completion:(id)a4;
- (void)setStateOfCredential:(NSString *)a3 to:(unint64_t)a4 completion:(id)a5;
- (void)storePIIHashInSyncableKeyStoreForIdentifier:(NSString *)a3 data:(NSData *)a4 keystoreType:(unint64_t)a5 completion:(id)a6;
- (void)storePIITokenInSyncableKeyStoreForIdentifier:(NSString *)a3 data:(NSData *)a4 credentialIdentifier:(NSString *)a5 completion:(id)a6;
- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(NSString *)a3 attributesToUpdate:(NSDictionary *)a4 credentialIdentifier:(NSString *)a5 completion:(id)a6;
@end

@implementation CredentialStoreSessionProxy

- (void)configureWithPartitions:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_10008BC10(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)createCredentialInPartition:(NSString *)a3 options:(DCCredentialOptions *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC9E8, v17);
}

- (void)generateKeySigningKeyForCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC9C8, v15);
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC9A8, v15);
}

- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC988, v15);
}

- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC968, v15);
}

- (void)generateAccountKeyAuthorizationForCredential:(NSString *)a3 accountKeyIdentifier:(NSString *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC948, v17);
}

- (void)generateDeviceEncryptionKeyForCredential:(NSString *)a3 keyType:(unint64_t)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC928, v17);
}

- (void)generatePresentmentKeyForCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC908, v15);
}

- (void)generatePresentmentKeysForCredential:(NSString *)a3 numKeys:(int64_t)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC8E8, v17);
}

- (void)authorizeDeviceKeySigningKeyOfCredential:(NSString *)a3 accountKeyIdentifier:(NSString *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC8C8, v17);
}

- (void)authorizeRemoteKeySigningKeyWithCredential:(NSString *)a3 remoteKey:(NSData *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC8A8, v17);
}

- (void)associateExternalPresentmentKeyWithCredential:(NSString *)a3 publicKeyIdentifier:(NSData *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC888, v17);
}

- (void)credentialIdentifiersForPublicKeyIdentifier:(NSData *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC868, v15);
}

- (void)replacePayloadOfCredential:(NSString *)a3 withPayload:(NSData *)a4 format:(unint64_t)a5 completion:(id)a6
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_100093C54(0, 0, v14, &unk_1001AC848, v19);
}

- (void)credentialIdentifiersInPartitions:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC828, v15);
}

- (void)credentialIdentifiersInPartitions:(NSArray *)a3 docType:(NSString *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC808, v17);
}

- (void)activeRegionsInPartitions:(NSArray *)a3 docTypes:(NSSet *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC7E0, v17);
}

- (void)deleteCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC7C0, v15);
}

- (void)propertiesOfCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC7A0, v15);
}

- (void)setStateOfCredential:(NSString *)a3 to:(unint64_t)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC780, v17);
}

- (void)payloadAuthACLForCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC760, v15);
}

- (void)elementsOfCredential:(NSString *)a3 elementIdentifiers:(NSDictionary *)a4 authData:(NSData *)a5 completion:(id)a6
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_100093C54(0, 0, v14, &unk_1001AC378, v19);
}

- (void)checkCompletenessOfCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC358, v15);
}

- (void)payloadsOfCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC338, v15);
}

- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC318, v15);
}

- (void)allElementsOfCredential:(NSString *)a3 authData:(NSData *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC6F0, v17);
}

- (void)occupiedLegacySEKeySlotsWithCompletion:(id)a3
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
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
  v12[4] = &unk_1001AC6C0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC2D0;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC6D0, v13);
}

- (void)eraseLegacySEKeySlot:(int64_t)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC6B0, v15);
}

- (void)clearPresentmentKeyUsageForCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC690, v15);
}

- (void)keyInfoForCredential:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC670, v15);
}

- (void)storePIITokenInSyncableKeyStoreForIdentifier:(NSString *)a3 data:(NSData *)a4 credentialIdentifier:(NSString *)a5 completion:(id)a6
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_100093C54(0, 0, v14, &unk_1001AC650, v19);
}

- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC630, v15);
}

- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)a3 credentialIdentifier:(NSString *)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC610, v17);
}

- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(NSString *)a3 attributesToUpdate:(NSDictionary *)a4 credentialIdentifier:(NSString *)a5 completion:(id)a6
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_100093C54(0, 0, v14, &unk_1001AC5F0, v19);
}

- (void)isPIITokenAvailableForIdentifier:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC5D0, v15);
}

- (void)storePIIHashInSyncableKeyStoreForIdentifier:(NSString *)a3 data:(NSData *)a4 keystoreType:(unint64_t)a5 completion:(id)a6
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_100093C54(0, 0, v14, &unk_1001AC5B0, v19);
}

- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)a3 keystoreType:(unint64_t)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC590, v17);
}

- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)a3 keystoreType:(unint64_t)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC570, v17);
}

- (_TtC7idcredd27CredentialStoreSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
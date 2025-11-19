@interface BiometricStoreSessionProxy
- (_TtC7idcredd26BiometricStoreSessionProxy)init;
- (void)bioBindingUnboundACL:(id)a3;
- (void)boundAppletPresentmentACL:(id)a3;
- (void)clearProgenitorKeyDesignationsWithCompletion:(id)a3;
- (void)credentialAuthenticationTokenStatus:(id)a3;
- (void)deleteGlobalAuthACLWithCompletion:(id)a3;
- (void)establishPrearmTrustV2:(DCCredentialTrust *)a3 completion:(id)a4;
- (void)generatePhoneTokenWithNonce:(DCCredentialNonce *)a3 keyBlob:(NSData *)a4 pairingID:(NSString *)a5 completion:(id)a6;
- (void)generatePrearmTrustCertificateFromKeyBlob:(NSData *)a3 nonce:(NSData *)a4 pairingID:(NSString *)a5 completion:(id)a6;
- (void)generatePrearmTrustCertificateWithNonce:(NSData *)a3 pairingID:(NSString *)a4 completion:(id)a5;
- (void)getCASDCertificate:(id)a3;
- (void)getGlobalProgenitorKeyAttestation:(id)a3;
- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)a3;
- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)a3;
- (void)globalAuthACLWithCompletion:(id)a3;
- (void)migratePrearmTrustBlob:(NSData *)a3 completion:(id)a4;
- (void)nonceForAuthorizationTokenWithCompletion:(id)a3;
- (void)passcodeBindingUnboundACL:(id)a3;
- (void)prearmCredentialWithAuthorizationToken:(DCCredentialAuthorizationToken *)a3 completion:(id)a4;
- (void)refreshProgenitorKeyDesignationsWithSessionHandoffToken:(NSData *)a3 onlyIfNeeded:(BOOL)a4 completion:(id)a5;
- (void)revokeCredentialAuthorizationToken:(id)a3;
- (void)setGlobalAuthACL:(NSData *)a3 ofType:(unint64_t)a4 completion:(id)a5;
- (void)setModifiedGlobalAuthACL:(NSData *)a3 externalizedLAContext:(NSData *)a4 completion:(id)a5;
@end

@implementation BiometricStoreSessionProxy

- (void)bioBindingUnboundACL:(id)a3
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
  v12[4] = &unk_1001AC3C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC3D0;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC7A0, v13);
}

- (void)passcodeBindingUnboundACL:(id)a3
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
  v12[4] = &unk_1001AC3A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC3B0;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC780, v13);
}

- (void)setGlobalAuthACL:(NSData *)a3 ofType:(unint64_t)a4 completion:(id)a5
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
  v16[4] = &unk_1001AC388;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC390;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC760, v17);
}

- (void)setModifiedGlobalAuthACL:(NSData *)a3 externalizedLAContext:(NSData *)a4 completion:(id)a5
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
  v16[4] = &unk_1001AC368;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC370;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC378, v17);
}

- (void)globalAuthACLWithCompletion:(id)a3
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
  v12[4] = &unk_1001AC348;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC350;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC358, v13);
}

- (void)deleteGlobalAuthACLWithCompletion:(id)a3
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
  v12[4] = &unk_1001AC328;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC330;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC338, v13);
}

- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)a3
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
  v12[4] = &unk_1001AC308;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC310;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC318, v13);
}

- (void)generatePrearmTrustCertificateWithNonce:(NSData *)a3 pairingID:(NSString *)a4 completion:(id)a5
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
  v16[4] = &unk_1001AC2E8;
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

- (void)generatePrearmTrustCertificateFromKeyBlob:(NSData *)a3 nonce:(NSData *)a4 pairingID:(NSString *)a5 completion:(id)a6
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
  v18[4] = &unk_1001AC2C8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001AC2D0;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_100093C54(0, 0, v14, &unk_1001AC6D0, v19);
}

- (void)migratePrearmTrustBlob:(NSData *)a3 completion:(id)a4
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
  v14[4] = &unk_1001AC2A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC2B0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC6B0, v15);
}

- (void)generatePhoneTokenWithNonce:(DCCredentialNonce *)a3 keyBlob:(NSData *)a4 pairingID:(NSString *)a5 completion:(id)a6
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
  v18[4] = &unk_1001AC288;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001AC290;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_100093C54(0, 0, v14, &unk_1001AC690, v19);
}

- (void)establishPrearmTrustV2:(DCCredentialTrust *)a3 completion:(id)a4
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
  v14[4] = &unk_1001AC268;
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

- (void)nonceForAuthorizationTokenWithCompletion:(id)a3
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
  v12[4] = &unk_1001AC248;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC250;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC650, v13);
}

- (void)revokeCredentialAuthorizationToken:(id)a3
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
  v12[4] = &unk_1001AC228;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC230;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC630, v13);
}

- (void)prearmCredentialWithAuthorizationToken:(DCCredentialAuthorizationToken *)a3 completion:(id)a4
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
  v14[4] = &unk_1001AC208;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC210;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100093C54(0, 0, v10, &unk_1001AC610, v15);
}

- (void)credentialAuthenticationTokenStatus:(id)a3
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
  v12[4] = &unk_1001AC1E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC1F0;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC5F0, v13);
}

- (void)getCASDCertificate:(id)a3
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
  v12[4] = &unk_1001AC1C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC1D0;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC5D0, v13);
}

- (void)getGlobalProgenitorKeyAttestation:(id)a3
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
  v12[4] = &unk_1001AC1A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC1B0;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC5B0, v13);
}

- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)a3
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
  v12[4] = &unk_1001AC188;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC190;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC590, v13);
}

- (void)boundAppletPresentmentACL:(id)a3
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
  v12[4] = &unk_1001AC168;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC170;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC178, v13);
}

- (void)refreshProgenitorKeyDesignationsWithSessionHandoffToken:(NSData *)a3 onlyIfNeeded:(BOOL)a4 completion:(id)a5
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
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
  v16[4] = &unk_1001AC148;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC150;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_100093C54(0, 0, v12, &unk_1001AC158, v17);
}

- (void)clearProgenitorKeyDesignationsWithCompletion:(id)a3
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
  v12[4] = &unk_1001AC128;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC130;
  v13[5] = v12;
  v14 = self;
  sub_100093C54(0, 0, v8, &unk_1001AC570, v13);
}

- (_TtC7idcredd26BiometricStoreSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
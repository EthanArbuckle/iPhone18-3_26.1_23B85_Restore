@interface MobileDocumentReaderSessionProxy
- (_TtC8coreidvd32MobileDocumentReaderSessionProxy)init;
- (void)cachedIssuerRootsWithCompletionHandler:(id)handler;
- (void)canRequestDocument:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)document completionHandler:(id)handler;
- (void)cancelReadWithCompletionHandler:(id)handler;
- (void)certificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler;
- (void)clearCachedIssuerRootsWithCompletionHandler:(id)handler;
- (void)deleteCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler;
- (void)deleteIdentityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler;
- (void)identityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler;
- (void)loadIssuerRootsWithCompletionHandler:(id)handler;
- (void)merchantFor:(NSString *)for completionHandler:(id)handler;
- (void)prepareWith:(_TtC7CoreIDV36XPCMobileDocumentReaderConfiguration *)with completionHandler:(id)handler;
- (void)readDocumentWith:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)with engagementType:(_TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType *)type completionHandler:(id)handler;
- (void)readerInstanceIdentifierWithCompletionHandler:(id)handler;
- (void)registerAuditToken:(_TtC7CoreIDV13XPCAuditToken *)token completionHandler:(id)handler;
- (void)storeCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate certificateDER:(NSString *)r externalData:(NSData *)data completionHandler:(id)handler;
@end

@implementation MobileDocumentReaderSessionProxy

- (void)registerAuditToken:(_TtC7CoreIDV13XPCAuditToken *)token completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = token;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E69F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E69F8;
  v15[5] = v14;
  tokenCopy = token;

  sub_100500D54(0, 0, v10, &unk_1006E6A00, v15);
}

- (void)readerInstanceIdentifierWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1006E69D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E69D8;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E69E0, v13);
}

- (void)prepareWith:(_TtC7CoreIDV36XPCMobileDocumentReaderConfiguration *)with completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E69B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E69B8;
  v15[5] = v14;
  withCopy = with;

  sub_100500D54(0, 0, v10, &unk_1006E69C0, v15);
}

- (void)merchantFor:(NSString *)for completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E69A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E28D8;
  v15[5] = v14;
  forCopy = for;

  sub_100500D54(0, 0, v10, &unk_1006E28E0, v15);
}

- (void)canRequestDocument:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)document completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = document;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6990;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E28B8;
  v15[5] = v14;
  documentCopy = document;

  sub_100500D54(0, 0, v10, &unk_1006E28C0, v15);
}

- (void)readDocumentWith:(_TtC7CoreIDV30XPCMobileDocumentReaderRequest *)with engagementType:(_TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType *)type completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = with;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E6970;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E6978;
  v17[5] = v16;
  withCopy = with;
  typeCopy = type;

  sub_100500D54(0, 0, v12, &unk_1006E6980, v17);
}

- (void)cancelReadWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1006E6950;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6958;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E6960, v13);
}

- (void)identityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6930;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6938;
  v15[5] = v14;
  keyCopy = key;

  sub_100500D54(0, 0, v10, &unk_1006E6940, v15);
}

- (void)deleteIdentityKey:(_TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest *)key completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6910;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6918;
  v15[5] = v14;
  keyCopy = key;

  sub_100500D54(0, 0, v10, &unk_1006E6920, v15);
}

- (void)certificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = certificate;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E68F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E68F8;
  v15[5] = v14;
  certificateCopy = certificate;

  sub_100500D54(0, 0, v10, &unk_1006E6900, v15);
}

- (void)storeCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate certificateDER:(NSString *)r externalData:(NSData *)data completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = certificate;
  v16[3] = r;
  v16[4] = data;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E68D0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1006E68D8;
  v19[5] = v18;
  certificateCopy = certificate;
  rCopy = r;
  dataCopy = data;

  sub_100500D54(0, 0, v14, &unk_1006E68E0, v19);
}

- (void)deleteCertificate:(_TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest *)certificate completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = certificate;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E68B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E68B8;
  v15[5] = v14;
  certificateCopy = certificate;

  sub_100500D54(0, 0, v10, &unk_1006E68C0, v15);
}

- (void)cachedIssuerRootsWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1006E6890;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6898;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E68A0, v13);
}

- (void)clearCachedIssuerRootsWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1006E6870;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6878;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E6880, v13);
}

- (void)loadIssuerRootsWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1006E6860;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006D9180;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E13D0, v13);
}

- (_TtC8coreidvd32MobileDocumentReaderSessionProxy)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface MobileDocumentProviderRegistrationSessionProxy
- (_TtC8coreidvd46MobileDocumentProviderRegistrationSessionProxy)init;
- (void)allApplicationsWithCompletionHandler:(id)a3;
- (void)authorizationStatusWithCompletionHandler:(id)a3;
- (void)notifyEnablementUpdateTo:(BOOL)a3 for:(NSString *)a4 completionHandler:(id)a5;
- (void)registerWithRequest:(_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest *)a3 applicationIdentifierOverride:(NSString *)a4 completionHandler:(id)a5;
- (void)registrationsWithApplicationIdentifierOverride:(NSString *)a3 completionHandler:(id)a4;
- (void)unregisterWithRequest:(_TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest *)a3 applicationIdentifierOverride:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation MobileDocumentProviderRegistrationSessionProxy

- (void)authorizationStatusWithCompletionHandler:(id)a3
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E66A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E66B0;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E66B8, v13);
}

- (void)registerWithRequest:(_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest *)a3 applicationIdentifierOverride:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
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
  v16[4] = &unk_1006E6688;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E6690;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_100500D54(0, 0, v12, &unk_1006E6698, v17);
}

- (void)unregisterWithRequest:(_TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest *)a3 applicationIdentifierOverride:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
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
  v16[4] = &unk_1006E6668;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E6670;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_100500D54(0, 0, v12, &unk_1006E6678, v17);
}

- (void)registrationsWithApplicationIdentifierOverride:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
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
  v14[4] = &unk_1006E6648;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6650;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E6658, v15);
}

- (void)allApplicationsWithCompletionHandler:(id)a3
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E6628;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E6630;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E6638, v13);
}

- (void)notifyEnablementUpdateTo:(BOOL)a3 for:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
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
  v16[4] = &unk_1006E6618;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006D9180;
  v17[5] = v16;
  v18 = a4;

  sub_100500D54(0, 0, v12, &unk_1006E13D0, v17);
}

- (_TtC8coreidvd46MobileDocumentProviderRegistrationSessionProxy)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
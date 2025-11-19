@interface MobileDocumentProviderUIConnectionManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC8coreidvd41MobileDocumentProviderUIConnectionManager)init;
- (void)didAuthorizeRequestWithResponse:(_TtC13CoreIDVShared44XPCMobileDocumentProviderPresentmentResponse *)a3 completionHandler:(id)a4;
- (void)didSelectEnableBluetoothWithCompletionHandler:(id)a3;
- (void)didSelectScannableCodeWithCompletionHandler:(id)a3;
- (void)releaseRequestWithCompletionHandler:(id)a3;
- (void)remoteViewDidAppearWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)a3 completionHandler:(id)a4;
- (void)remoteViewDidCancelWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)a3 completionHandler:(id)a4;
- (void)selectionViewDidSelect:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)a3 completionHandler:(id)a4;
- (void)selectionViewUserDidTapSelection:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)a3 completionHandler:(id)a4;
- (void)viewServiceDidBecomeActive:(id)a3;
- (void)viewServiceWillTerminateWithCompletionHandler:(id)a3;
@end

@implementation MobileDocumentProviderUIConnectionManager

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;

  v7 = sub_1004345C8(v6);

  return v7 & 1;
}

- (void)viewServiceDidBecomeActive:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_1004347C8(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)selectionViewUserDidTapSelection:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_1006E28D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E28D8;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E28E0, v15);
}

- (void)selectionViewDidSelect:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_1006E28B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E28B8;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E28C0, v15);
}

- (void)didAuthorizeRequestWithResponse:(_TtC13CoreIDVShared44XPCMobileDocumentProviderPresentmentResponse *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_1006E2890;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E2898;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E28A0, v15);
}

- (void)viewServiceWillTerminateWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1006E2870;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E2878;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E2880, v13);
}

- (void)didSelectScannableCodeWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1006E2850;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E2858;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E2860, v13);
}

- (void)didSelectEnableBluetoothWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1006E2830;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E2838;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E2840, v13);
}

- (void)remoteViewDidAppearWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_1006E2810;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E2818;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E2820, v15);
}

- (void)remoteViewDidCancelWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_1006E27F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E27F8;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E2800, v15);
}

- (void)releaseRequestWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1006E27E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006D9180;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E13D0, v13);
}

- (_TtC8coreidvd41MobileDocumentProviderUIConnectionManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
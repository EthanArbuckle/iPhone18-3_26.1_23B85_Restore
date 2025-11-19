@interface RemoteMobileDocumentProviderUIConnectionManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (uint64_t)remoteAlertHandleDidActivate:;
- (void)didAuthorizeRequestWithResponse:(_TtC13CoreIDVShared44XPCMobileDocumentProviderPresentmentResponse *)a3 completionHandler:(id)a4;
- (void)didSelectEnableBluetoothWithCompletionHandler:(id)a3;
- (void)didSelectScannableCodeWithCompletionHandler:(id)a3;
- (void)releaseRequestWithCompletionHandler:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)remoteViewDidAppearWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)a3 completionHandler:(id)a4;
- (void)remoteViewDidCancelWithViewIdentifier:(_TtC13CoreIDVShared46XPCMobileDocumentProviderViewServiceIdentifier *)a3 completionHandler:(id)a4;
- (void)selectionViewDidSelect:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)a3 completionHandler:(id)a4;
- (void)selectionViewUserDidTapSelection:(_TtC13CoreIDVShared38XPCMobileDocumentProviderUserSelection *)a3 completionHandler:(id)a4;
- (void)viewServiceDidBecomeActive:(id)a3;
- (void)viewServiceWillTerminateWithCompletionHandler:(id)a3;
@end

@implementation RemoteMobileDocumentProviderUIConnectionManager

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;

  v7 = sub_1003FBC50(v6);

  return v7 & 1;
}

- (void)viewServiceDidBecomeActive:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_1003FBF14(v4, v3);
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
  v14[4] = &unk_1006E14C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E14C8;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E14D0, v15);
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
  v14[4] = &unk_1006E14A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E14A8;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E14B0, v15);
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
  v14[4] = &unk_1006E1480;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E1488;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E1490, v15);
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
  v12[4] = &unk_1006E1460;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E1468;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E1470, v13);
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
  v12[4] = &unk_1006E1440;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E1448;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E1450, v13);
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
  v12[4] = &unk_1006E1420;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E1428;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E1430, v13);
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
  v14[4] = &unk_1006E1400;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E1408;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E1410, v15);
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
  v14[4] = &unk_1006E13E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E13E8;
  v15[5] = v14;
  v16 = a3;

  sub_100500D54(0, 0, v10, &unk_1006E13F0, v15);
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
  v12[4] = &unk_1006E13C0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006D9180;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E13D0, v13);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v3 = a3;

  sub_1003FC4F4();
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;

  v6 = a4;
  sub_1003FC778(a4);
}

- (uint64_t)remoteAlertHandleDidActivate:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100141FE4(0xD000000000000020, 0x80000001007155C0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "RemoteMobileDocumentProviderUIConnectionManager %{public}s", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

@end
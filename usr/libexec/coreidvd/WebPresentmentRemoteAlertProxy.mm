@interface WebPresentmentRemoteAlertProxy
- (void)cancelRemoteRequestWithCompletionHandler:(id)handler;
- (void)handleScannableCode:(NSURL *)code completionHandler:(id)handler;
- (void)performRemoteRequest:(_TtC13CoreIDVShared24XPCWebPresentmentRequest *)request completionHandler:(id)handler;
@end

@implementation WebPresentmentRemoteAlertProxy

- (void)handleScannableCode:(NSURL *)code completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = code;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6C08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6690;
  v15[5] = v14;
  codeCopy = code;

  sub_100500D54(0, 0, v10, &unk_1006E6698, v15);
}

- (void)performRemoteRequest:(_TtC13CoreIDVShared24XPCWebPresentmentRequest *)request completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E6BF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E6670;
  v15[5] = v14;
  requestCopy = request;

  sub_100500D54(0, 0, v10, &unk_1006E6678, v15);
}

- (void)cancelRemoteRequestWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1006E6BE8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006D9180;
  v13[5] = v12;

  sub_100500D54(0, 0, v8, &unk_1006E13D0, v13);
}

@end
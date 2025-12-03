@interface DaemonSwiftBridge
+ (void)cacheCommandWithPayload:(id)payload completionHandler:(id)handler;
+ (void)intentCallerCommandWithPayload:(id)payload completionHandler:(id)handler;
- (_TtC16promotedcontentd17DaemonSwiftBridge)init;
@end

@implementation DaemonSwiftBridge

- (_TtC16promotedcontentd17DaemonSwiftBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DaemonSwiftBridge();
  return [(DaemonSwiftBridge *)&v3 init];
}

+ (void)intentCallerCommandWithPayload:(id)payload completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_100399198();
  _Block_copy(v4);
  sub_1001F301C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

+ (void)cacheCommandWithPayload:(id)payload completionHandler:(id)handler
{
  v5 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = sub_100399198();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = sub_100399268();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;
  v12[5] = sub_1001F2AA8;
  v12[6] = v10;
  sub_1001F0F40(0, 0, v7, &unk_1003C98A8, v12);
}

@end
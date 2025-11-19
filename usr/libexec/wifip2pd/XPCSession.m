@interface XPCSession
- (NSString)description;
- (_TtC12wifip2pdCore10XPCSession)init;
- (void)createPairingStore:(id)a3;
- (void)createXPCResponderWithType:(unint64_t)a3 completionHandler:(id)a4;
- (void)dump:(id)a3 to:(id)a4 maximumDepth:(int64_t)a5 completionHandler:(id)a6;
- (void)queryCurrentDeviceCapabilities:(id)a3;
- (void)queryPerformanceReportFor:(unsigned __int8)a3 datapathType:(int64_t)a4 peerMacAddress:(id)a5 completion:(id)a6;
- (void)startCountryCodeMonitoringWithCompletionHandler:(id)a3;
- (void)startMonitoringAWDLStateWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)updateAWDLLTERestrictedChannels:(id)a3 completionHandler:(id)a4;
@end

@implementation XPCSession

- (NSString)description
{
  v2 = self;
  sub_10000B924();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)queryCurrentDeviceCapabilities:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100019684(sub_100303F18, v5, &off_100572FD0, &off_100572FF8, 3, &unk_1005758D8);
}

- (_TtC12wifip2pdCore10XPCSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)createXPCResponderWithType:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_100302598(a3, sub_1000114BC, v7);
}

- (void)createPairingStore:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100019684(sub_1000114BC, v5, &off_100573020, &off_100573048, 4, &unk_100575838);
}

- (void)queryPerformanceReportFor:(unsigned __int8)a3 datapathType:(int64_t)a4 peerMacAddress:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a5;
  v13 = self;
  sub_100302858(a3, a4, v12, sub_100303F18, v11);
}

- (void)startMonitoringAWDLStateWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v12[0] = a3;
  v12[1] = sub_1000114BC;
  v12[2] = v7;
  v12[3] = 0;
  v12[4] = 0;
  v13 = 7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v8 = *&self->requestHandler[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  v10 = a3;
  v11 = self;

  v9(v12, v11);
}

- (void)updateAWDLLTERestrictedChannels:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100018AB4(0, &unk_100595DA0, WiFiChannel_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_100302F84(v6, sub_1000114BC, v7);
}

- (void)startCountryCodeMonitoringWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v9[0] = sub_1000114BC;
  v9[1] = v5;
  memset(&v9[2], 0, 24);
  v10 = 17;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v6 = *&self->requestHandler[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  v8 = self;

  v7(v9, v8);
}

- (void)dump:(id)a3 to:(id)a4 maximumDepth:(int64_t)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a4;
  v13 = self;
  sub_100303668(v10, v12, a5, sub_1000104E4, v11);
}

@end
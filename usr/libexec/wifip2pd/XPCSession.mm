@interface XPCSession
- (NSString)description;
- (_TtC12wifip2pdCore10XPCSession)init;
- (void)createPairingStore:(id)store;
- (void)createXPCResponderWithType:(unint64_t)type completionHandler:(id)handler;
- (void)dump:(id)dump to:(id)to maximumDepth:(int64_t)depth completionHandler:(id)handler;
- (void)queryCurrentDeviceCapabilities:(id)capabilities;
- (void)queryPerformanceReportFor:(unsigned __int8)for datapathType:(int64_t)type peerMacAddress:(id)address completion:(id)completion;
- (void)startCountryCodeMonitoringWithCompletionHandler:(id)handler;
- (void)startMonitoringAWDLStateWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)updateAWDLLTERestrictedChannels:(id)channels completionHandler:(id)handler;
@end

@implementation XPCSession

- (NSString)description
{
  selfCopy = self;
  sub_10000B924();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)queryCurrentDeviceCapabilities:(id)capabilities
{
  v4 = _Block_copy(capabilities);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100019684(sub_100303F18, v5, &off_100572FD0, &off_100572FF8, 3, &unk_1005758D8);
}

- (_TtC12wifip2pdCore10XPCSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)createXPCResponderWithType:(unint64_t)type completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_100302598(type, sub_1000114BC, v7);
}

- (void)createPairingStore:(id)store
{
  v4 = _Block_copy(store);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100019684(sub_1000114BC, v5, &off_100573020, &off_100573048, 4, &unk_100575838);
}

- (void)queryPerformanceReportFor:(unsigned __int8)for datapathType:(int64_t)type peerMacAddress:(id)address completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  addressCopy = address;
  selfCopy = self;
  sub_100302858(for, type, addressCopy, sub_100303F18, v11);
}

- (void)startMonitoringAWDLStateWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v12[0] = configuration;
  v12[1] = sub_1000114BC;
  v12[2] = v7;
  v12[3] = 0;
  v12[4] = 0;
  v13 = 7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v8 = *&self->requestHandler[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  configurationCopy = configuration;
  selfCopy = self;

  v9(v12, selfCopy);
}

- (void)updateAWDLLTERestrictedChannels:(id)channels completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_100018AB4(0, &unk_100595DA0, WiFiChannel_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_100302F84(v6, sub_1000114BC, v7);
}

- (void)startCountryCodeMonitoringWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v9[0] = sub_1000114BC;
  v9[1] = v5;
  memset(&v9[2], 0, 24);
  v10 = 17;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v6 = *&self->requestHandler[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  selfCopy = self;

  v7(v9, selfCopy);
}

- (void)dump:(id)dump to:(id)to maximumDepth:(int64_t)depth completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  toCopy = to;
  selfCopy = self;
  sub_100303668(v10, toCopy, depth, sub_1000104E4, v11);
}

@end
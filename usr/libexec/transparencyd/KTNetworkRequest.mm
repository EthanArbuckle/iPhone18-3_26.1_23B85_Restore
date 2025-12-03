@interface KTNetworkRequest
- (_TtC13transparencyd16KTNetworkRequest)init;
- (_TtC13transparencyd16KTNetworkRequest)initWithLogClient:(id)client;
- (_TtC13transparencyd16KTNetworkRequest)requestWithIdsURI:(id)i application:(id)application traceUUID:(id)d timeout:(double)timeout complete:(id)complete;
@end

@implementation KTNetworkRequest

- (_TtC13transparencyd16KTNetworkRequest)initWithLogClient:(id)client
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_logClient) = client;
  clientCopy = client;
  Logger.init(subsystem:category:)();
  (*(v6 + 32))(self + OBJC_IVAR____TtC13transparencyd16KTNetworkRequest_log, v9, v5);
  v11 = type metadata accessor for KTNetworkRequest();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(KTNetworkRequest *)&v14 init];

  return v12;
}

- (_TtC13transparencyd16KTNetworkRequest)requestWithIdsURI:(id)i application:(id)application traceUUID:(id)d timeout:(double)timeout complete:(id)complete
{
  v10 = _Block_copy(complete);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (d)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v18;
  }

  else
  {
    v17 = 0;
  }

  _Block_copy(v10);
  selfCopy = self;
  sub_10009A494(v11, v13, v14, v16, v17, d, selfCopy, v10, timeout);
  _Block_release(v10);
  _Block_release(v10);
}

- (_TtC13transparencyd16KTNetworkRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
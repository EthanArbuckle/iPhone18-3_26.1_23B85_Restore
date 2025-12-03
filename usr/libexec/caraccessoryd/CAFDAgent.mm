@interface CAFDAgent
- (NSString)domain;
- (_TtC13caraccessoryd9CAFDAgent)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation CAFDAgent

- (_TtC13caraccessoryd9CAFDAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized CAFDAgent.listener(_:didReceive:withContext:)(connectionCopy);

  swift_unknownObjectRelease();
}

- (NSString)domain
{
  v2 = self + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration;
  v3 = &v2[*(type metadata accessor for CAFDAgent.Configuration(0) + 36)];
  v4 = *v3;
  v5 = *(v3 + 1);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

@end
@interface CAFDAgent
- (NSString)domain;
- (_TtC13caraccessoryd9CAFDAgent)init;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation CAFDAgent

- (_TtC13caraccessoryd9CAFDAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  specialized CAFDAgent.listener(_:didReceive:withContext:)(v8);

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
@interface CAFDSessionBoostServiceAgent
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC13caraccessoryd28CAFDSessionBoostServiceAgent)init;
@end

@implementation CAFDSessionBoostServiceAgent

- (_TtC13caraccessoryd28CAFDSessionBoostServiceAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

@end
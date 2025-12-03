@interface PingPong
- (_TtC9securityd8PingPong)init;
- (_TtC9securityd8PingPong)initWithPing:(id)ping pong:(id)pong;
- (void)printPingPong;
@end

@implementation PingPong

- (_TtC9securityd8PingPong)init
{
  v2 = (self + OBJC_IVAR____TtC9securityd8PingPong_ping);
  *v2 = 1735289200;
  v2[1] = 0xE400000000000000;
  v3 = (self + OBJC_IVAR____TtC9securityd8PingPong_pong);
  *v3 = 1735290736;
  v3[1] = 0xE400000000000000;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PingPong();
  return [(PingPong *)&v5 init];
}

- (_TtC9securityd8PingPong)initWithPing:(id)ping pong:(id)pong
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = (self + OBJC_IVAR____TtC9securityd8PingPong_ping);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR____TtC9securityd8PingPong_pong);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PingPong();
  return [(PingPong *)&v13 init];
}

- (void)printPingPong
{
  selfCopy = self;
  sub_10002D04C();
}

@end
@interface KCSharingPingPong
- (_TtC9securityd17KCSharingPingPong)init;
- (_TtC9securityd17KCSharingPingPong)initWithPing:(id)a3 pong:(id)a4;
- (void)printPingPong;
@end

@implementation KCSharingPingPong

- (_TtC9securityd17KCSharingPingPong)init
{
  v2 = (self + OBJC_IVAR____TtC9securityd17KCSharingPingPong_ping);
  *v2 = 1735289200;
  v2[1] = 0xE400000000000000;
  v3 = (self + OBJC_IVAR____TtC9securityd17KCSharingPingPong_pong);
  *v3 = 1735290736;
  v3[1] = 0xE400000000000000;
  v5.receiver = self;
  v5.super_class = type metadata accessor for KCSharingPingPong();
  return [(KCSharingPingPong *)&v5 init];
}

- (_TtC9securityd17KCSharingPingPong)initWithPing:(id)a3 pong:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = (self + OBJC_IVAR____TtC9securityd17KCSharingPingPong_ping);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR____TtC9securityd17KCSharingPingPong_pong);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for KCSharingPingPong();
  return [(KCSharingPingPong *)&v13 init];
}

- (void)printPingPong
{
  v2 = self;
  sub_10002CC8C();
}

@end
@interface RangingProxy
- (NSString)description;
- (_TtC17proximitycontrold12RangingProxy)init;
- (void)dealloc;
- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5;
- (void)session:(id)a3 didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a4;
- (void)session:(id)a3 didUpdateLocalMotionState:(int64_t)a4;
- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)sessionDidStartRunning:(id)a3;
- (void)sessionSuspensionEnded:(id)a3;
@end

@implementation RangingProxy

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10000C088(a4);
}

- (void)dealloc
{
  v2 = self;
  sub_1001A5108();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for RangingProxy();
  [(RangingProxy *)&v3 dealloc];
}

- (_TtC17proximitycontrold12RangingProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_1001A727C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001AA628(v7);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1001AA9C8();
}

- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5
{
  sub_100003118(0, &unk_10034A320, NINearbyObject_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = self;
  sub_1001AAC90(v8, a5);
}

- (void)sessionDidStartRunning:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001AAD98();
}

- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4
{
  sub_100003118(0, &unk_10034A320, NINearbyObject_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1001AAEB4(v6);
}

- (void)session:(id)a3 didUpdateHomeDeviceUWBRangingAvailability:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1001AAFB4(a4);
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1001AB1A4(v11, a5, a6);
}

- (void)sessionSuspensionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001ABB7C();
}

- (void)session:(id)a3 didUpdateLocalMotionState:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1001A8458(v5);
}

@end
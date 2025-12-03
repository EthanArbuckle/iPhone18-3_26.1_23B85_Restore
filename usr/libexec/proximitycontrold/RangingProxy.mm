@interface RangingProxy
- (NSString)description;
- (_TtC17proximitycontrold12RangingProxy)init;
- (void)dealloc;
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason;
- (void)session:(id)session didUpdateHomeDeviceUWBRangingAvailability:(BOOL)availability;
- (void)session:(id)session didUpdateLocalMotionState:(int64_t)state;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)sessionDidStartRunning:(id)running;
- (void)sessionSuspensionEnded:(id)ended;
@end

@implementation RangingProxy

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_10000C088(reason);
}

- (void)dealloc
{
  selfCopy = self;
  sub_1001A5108();
  v3.receiver = selfCopy;
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
  selfCopy = self;
  sub_1001A727C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  sessionCopy = session;
  objectCopy = object;
  selfCopy = self;
  sub_1001AA628(objectCopy);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_1001AA9C8();
}

- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason
{
  sub_100003118(0, &unk_10034A320, NINearbyObject_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  sub_1001AAC90(v8, reason);
}

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  selfCopy = self;
  sub_1001AAD98();
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  sub_100003118(0, &unk_10034A320, NINearbyObject_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  sub_1001AAEB4(v6);
}

- (void)session:(id)session didUpdateHomeDeviceUWBRangingAvailability:(BOOL)availability
{
  sessionCopy = session;
  selfCopy = self;
  sub_1001AAFB4(availability);
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  selfCopy = self;
  sub_1001AB1A4(objectCopy, region, previousRegion);
}

- (void)sessionSuspensionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_1001ABB7C();
}

- (void)session:(id)session didUpdateLocalMotionState:(int64_t)state
{
  sessionCopy = session;
  selfCopy = self;
  sub_1001A8458(sessionCopy);
}

@end
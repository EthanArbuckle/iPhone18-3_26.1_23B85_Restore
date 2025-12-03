@interface UnknownDiscoveryTrampoline
- (_TtC12searchpartyd26UnknownDiscoveryTrampoline)init;
- (void)fetchEncryptedPayloadForUnknownBeacon:(id)beacon completion:(id)completion;
- (void)startDiscoveryWithScanRate:(int64_t)rate timeout:(double)timeout completion:(id)completion;
@end

@implementation UnknownDiscoveryTrampoline

- (void)startDiscoveryWithScanRate:(int64_t)rate timeout:(double)timeout completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd26UnknownDiscoveryTrampoline_implementation);
  selfCopy = self;
  sub_10046EB28(sub_10026AE30, v7);
}

- (void)fetchEncryptedPayloadForUnknownBeacon:(id)beacon completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd26UnknownDiscoveryTrampoline_implementation);
  beaconCopy = beacon;
  selfCopy = self;
  sub_10046FB0C(beaconCopy, sub_1007BF38C, v7);
}

- (_TtC12searchpartyd26UnknownDiscoveryTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
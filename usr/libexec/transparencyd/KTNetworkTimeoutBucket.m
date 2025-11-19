@interface KTNetworkTimeoutBucket
- (NSString)sysdiagnose;
- (id)networkTimeoutOperation;
- (id)onQueueNetworkTimeoutOperation;
- (void)networkWithFeedback:(int64_t)a3;
@end

@implementation KTNetworkTimeoutBucket

- (NSString)sysdiagnose
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue);
  v3 = self;
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (id)networkTimeoutOperation
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13transparencyd22KTNetworkTimeoutBucket_queue);
  v3 = self;
  sub_100095820(&qword_100385420, &qword_1002D7C10);
  OS_dispatch_queue.sync<A>(execute:)();

  return v5;
}

- (id)onQueueNetworkTimeoutOperation
{
  v2 = self;
  v3 = KTNetworkTimeoutBucket.onQueueNetworkTimeoutOperation()();

  return v3;
}

- (void)networkWithFeedback:(int64_t)a3
{
  v4 = self;
  KTNetworkTimeoutBucket.network(feedback:)(a3);
}

@end
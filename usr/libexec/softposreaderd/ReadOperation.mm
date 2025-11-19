@interface ReadOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_TtC14softposreaderd13ReadOperation)init;
- (void)cancel;
- (void)handleSessionReachedTimeLimit;
- (void)readerSession:(id)a3 didDetectTags:(id)a4;
- (void)readerSession:(id)a3 didReceiveThermalIndication:(BOOL)a4;
- (void)readerSession:(id)a3 receivedData:(id)a4 fromApplet:(id)a5;
- (void)secureElementReaderSessionDidEndUnexpectedly:(id)a3;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation ReadOperation

- (BOOL)isExecuting
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lockedState);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4;
}

- (void)setExecuting:(BOOL)a3
{
  v4 = self;
  v5 = String._bridgeToObjectiveC()();
  [(ReadOperation *)v4 willChangeValueForKey:v5];

  v6 = *(&v4->super.super.isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lockedState);
  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = a3;
  os_unfair_lock_unlock((v6 + 20));
  v7 = String._bridgeToObjectiveC()();
  [(ReadOperation *)v4 didChangeValueForKey:v7];
}

- (BOOL)isFinished
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lockedState);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 17);
  os_unfair_lock_unlock((v2 + 20));

  return v4;
}

- (void)setFinished:(BOOL)a3
{
  v4 = self;
  v5 = String._bridgeToObjectiveC()();
  [(ReadOperation *)v4 willChangeValueForKey:v5];

  v6 = *(&v4->super.super.isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lockedState);
  os_unfair_lock_lock((v6 + 20));
  *(v6 + 17) = a3;
  os_unfair_lock_unlock((v6 + 20));
  v7 = String._bridgeToObjectiveC()();
  [(ReadOperation *)v4 didChangeValueForKey:v7];
}

- (void)cancel
{
  v2 = self;
  sub_100127198();
}

- (void)start
{
  v2 = self;
  sub_100128D24();
}

- (void)handleSessionReachedTimeLimit
{
  v2 = self;
  sub_10012B414();
}

- (void)readerSession:(id)a3 didReceiveThermalIndication:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10012B738(v6, a4);
}

- (void)secureElementReaderSessionDidEndUnexpectedly:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10012BD2C();
}

- (void)readerSession:(id)a3 didDetectTags:(id)a4
{
  sub_10000411C(0, &unk_1003A3C50, NFTag_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10012C2E8(v7, v6);
}

- (void)readerSession:(id)a3 receivedData:(id)a4 fromApplet:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_1001318D8(v8, v11, v13, v14, v16);

  sub_100009548(v11, v13);
}

- (_TtC14softposreaderd13ReadOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end